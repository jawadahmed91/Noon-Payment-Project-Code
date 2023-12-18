<?php

namespace App\Http\Controllers;

use Akaunting\Module\Facade as Module;
use App\Order;
use Carbon\Carbon;
use Cart;
use Illuminate\Http\Request;




class PaymentController extends Controller
{
    
    public function chargenoon(Request $request)
    {
        $payment_url = env('NOON_URL');
        $apiKey= env('NOON_KEY');
        $tr_ref = hexdec(uniqid()); 
        //Str::random(6) . '-' . rand(1, 1000);

        $redirectUrl = url('noon-successful');

        $pUrl=$payment_url."order";
        $orderDate = array(
            "apiOperation" => "INITIATE",
            "order" => array(
                "reference" => $tr_ref,
                "amount" => $request->totalamount,
                "currency" => "SAR",
                "name" => $request->customer_name,
                "channel" => "web",
                "category" => "pay"
            ),
            "configuration" => array(
                "tokenizeCc" => "true",
                "returnUrl" => $redirectUrl,
                "locale" => "ar"
            )
        );

        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => $pUrl,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "POST",
            CURLOPT_POSTFIELDS => json_encode($orderDate),
            CURLOPT_HTTPHEADER => array(
                "authorization: ".$apiKey,
                "cache-control: no-cache",
                "content-type: application/json",
            ),
        ));
        $response = curl_exec($curl);
        $err = curl_error($curl);
        curl_close($curl);
        if ($err) {
            echo "cURL Error #:" . $err;
        } else {
            $obj = json_decode($response, true);

            // echo "<pre>"; print_r($obj); die;
            $resultCode=@$obj['resultCode'];
            $msg=@$obj['message'];
           
            if($resultCode==0){
                $result=$obj['result'];
                $requestReferenceId=$result['order']['id'];
                $statusMsg=$result['order']['status'];
                $checkoutUrl=$result['checkoutData']['postUrl'];
            
            $order                      = new Order;
            $order->srtipe_payment_id   = $requestReferenceId;
            $order->restorant_id        = $request->restaurant_id;
            $order->client_name         = $request->customer_name;
            $order->order_price         = $request->totalamount;
            $order->payment_method      = 'Online';
            $order->payment_status      = 'unpaid';
            $order->comment             = $request->comment;
            $order->table_id            = $request->table_id;
            $deliveryOption             = 0;
            if($request->to == 'dinein')
            {
                $deliveryOption = 3;
            }else if($request->to == 'takeaway')
            {
                $deliveryOption = 4;
                $order->phone   = $request->phone;
            }
            $order->delivery_method   = $deliveryOption;
            $order->created_at        = Carbon::now();
            $order->updated_at        = Carbon::now();
            $order->save();
        
            return $checkoutUrl; 
            // redirect($checkoutUrl);
            // redirect('nooniframe')->with('postURL' => $checkoutUrl);
            }else{
                 return $msg;
            }
        }
    }
    
    public function nooniframe(Request $request)
    {
        ddd($request);
        // return view('plans.home-noon-payment-status', compact('result'));
    }
    
    public function noonsSuccessful(Request $request)
    {
        if($request->orderId != null && $request->merchantReference != null && $request->paymentType)
        {
           
            Order::where(['srtipe_payment_id'=> $request->orderId])->update(['payment_status' => 'paid']);
            $getUID = Order::where(['srtipe_payment_id'=> $request->orderId])->get()->first();
            $orderUID = $getUID->id;
            // var_dump($orderUID);
            
            $payment_url = env('NOON_URL');
            $apiKey= env('NOON_KEY');
            $pUrl=$payment_url."order/".$request->orderId;
            $orderDate = array(
                "apiOperation" => "SALE",
                "order" => array(
                    "id" => $request->orderId
                ),
            );
            
            $curl = curl_init();
            curl_setopt_array($curl, array(
                CURLOPT_URL => $pUrl,
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => "",
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 30,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => "POST",
                CURLOPT_POSTFIELDS => json_encode($orderDate),
                CURLOPT_HTTPHEADER => array(
                    "authorization: ".$apiKey,
                    "cache-control: no-cache",
                    "content-type: application/json",
                ),
            ));
            $response = curl_exec($curl);
            
            $err = curl_error($curl);
            curl_close($curl);
            
             return redirect()->route('order.success', ['order' => $orderUID,'redirectToPayment'=>true]);
            
        //     return "<center>
        //     <h2>Payment Successfull!</h2>
        // </center>";
        }else{
            Order::where(['srtipe_payment_id'=> $request->orderId])->forceDelete();
            return redirect('/cart-checkout');
        //     return "<center>
        //     <h2>Payment Failed!</h2>
        // </center>";
        }
    }
    
    public function view(Request $request)
    {
        $total = Money(Cart::getSubTotal(), config('settings.cashier_currency'), config('settings.do_convertion'))->format();

        //Clear cart
        Cart::clear();

        return view('payment.payment', [
            'total' => $total,
        ]);
    }

    public function handleOrderPaymentStripe(Request $request,Order $order){
        if($request->success.""=="true"){
            $order->payment_status = 'paid';
            $order->update();
            return redirect()->route('order.success', ['order' => $order]);
        }else{
            return redirect()->route('vendor',$order->restorant->subdomain)->withMesswithErrorage($request->message)->withInput();
        }
    }

    public function selectPaymentGateway(Order $order){
        $paymentMethods=[];

        $vendor=$order->restorant;

            //Payment methods
            foreach (Module::all() as $key => $module) {
                if($module->get('isPaymentModule')){
                    if($vendor->getConfig($module->get('alias')."_enable","false")=="true"){
                        $vendorHasOwnPayment=$module->get('alias');
                        $paymentMethods[$module->get('alias')]=ucfirst($module->get('alias'));
                    }
                }
            }
        return view('orders.multypay', 
        [
            'paymentMethods'=>$paymentMethods,
            'order' => $order,
            'showWhatsApp'=>false,
            'whatsappurl'=>''
        ]);
    }

    public function selectedPaymentGateway(Order $order,$paymentMethod){
        $order->payment_method=$paymentMethod;
        $className = '\Modules\\'.ucfirst($paymentMethod).'\Http\Controllers\App';
        $ref = new \ReflectionClass($className);
        $ref->newInstanceArgs(array($order,$order->restorant))->execute();
        return redirect()->route('order.success', ['order' => $order,'redirectToPayment'=>true]);
    }

    
}
