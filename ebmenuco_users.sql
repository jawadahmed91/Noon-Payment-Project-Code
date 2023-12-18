-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 18, 2022 at 05:26 PM
-- Server version: 5.7.36-cll-lve
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebmenuco_users`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `apartment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intercom` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '0 - Vendor, 1 - Blog',
  `vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `page_id` bigint(20) UNSIGNED DEFAULT NULL,
  `active_from` date NOT NULL,
  `active_to` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_storage`
--

CREATE TABLE `cart_storage` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vendor_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type` int(11) NOT NULL,
  `receipt_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restorant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_index` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `restorant_id`, `created_at`, `updated_at`, `order_index`, `active`, `deleted_at`) VALUES
(1, '{\"ar\":\"Salads\"}', 1, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 0, 1, NULL),
(2, '{\"ar\":\"Pizza\"}', 1, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 0, 1, NULL),
(3, '{\"ar\":\"Fresh Pasta and Risotto\"}', 1, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 0, 1, NULL),
(4, '{\"ar\":\"Lasagna\"}', 1, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 0, 1, NULL),
(5, '{\"ar\":\"Burgers\"}', 2, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 0, 1, NULL),
(6, '{\"ar\":\"Garnish\"}', 2, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 0, 1, NULL),
(7, '{\"ar\":\"Salads\"}', 2, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 0, 1, NULL),
(8, '{\"ar\":\"Starters\"}', 2, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 0, 1, NULL),
(9, '{\"ar\":\"Drinks\"}', 2, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 0, 1, NULL),
(10, '{\"ar\":\"Burrito\"}', 3, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 0, 1, NULL),
(11, '{\"ar\":\"Quesadilla\"}', 3, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 0, 1, NULL),
(12, '{\"ar\":\"Taco\"}', 3, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 0, 1, NULL),
(13, '{\"ar\":\"Burrito In A Bowl\"}', 3, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 0, 1, NULL),
(14, '{\"ar\":\"Salads\"}', 4, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 0, 1, NULL),
(15, '{\"ar\":\"Pizza\"}', 4, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 0, 1, NULL),
(16, '{\"ar\":\"Burrito\"}', 4, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 0, 1, NULL),
(17, '{\"ar\":\"Drinks\"}', 4, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 0, 1, NULL),
(18, '{\"ar\":\"Pizza\"}', 5, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 0, 1, NULL),
(19, '{\"ar\":\"Fresh Pasta and Risotto\"}', 5, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 0, 1, NULL),
(20, '{\"ar\":\"Salads\"}', 5, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 0, 1, NULL),
(21, '{\"ar\":\"Lasagna\"}', 5, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 0, 1, NULL),
(22, '{\"ar\":\"Quesadilla\"}', 6, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 0, 1, NULL),
(23, '{\"ar\":\"Burrito\"}', 6, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 0, 1, NULL),
(24, '{\"ar\":\"Burrito In A Bowl\"}', 6, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 0, 1, NULL),
(25, '{\"ar\":\"Taco\"}', 6, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 0, 1, NULL),
(26, '{\"ar\":\"Drinks\"}', 7, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 0, 1, NULL),
(27, '{\"ar\":\"Salads\"}', 7, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 0, 1, NULL),
(28, '{\"ar\":\"Starters\"}', 7, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 0, 1, NULL),
(29, '{\"ar\":\"Garnish\"}', 7, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 0, 1, NULL),
(30, '{\"ar\":\"Burgers\"}', 7, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 0, 1, NULL),
(31, '{\"ar\":\"Pizza\"}', 8, '2021-12-30 22:33:46', '2021-12-31 02:37:41', 0, 1, NULL),
(32, '{\"ar\":\"Burrito\"}', 8, '2021-12-30 22:33:46', '2021-12-31 02:37:41', 0, 1, NULL),
(33, '{\"ar\":\"Drinks\"}', 8, '2021-12-30 22:33:46', '2021-12-31 02:37:41', 0, 1, NULL),
(34, '{\"ar\":\"Salads\"}', 8, '2021-12-30 22:33:46', '2021-12-31 02:37:41', 0, 1, NULL),
(35, '{\"ar\":\"Fresh Pasta and Risotto\"}', 9, '2021-12-30 22:33:46', '2021-12-31 02:37:41', 0, 1, NULL),
(36, '{\"ar\":\"Lasagna\"}', 9, '2021-12-30 22:33:46', '2021-12-31 02:37:41', 0, 1, NULL),
(37, '{\"ar\":\"Pizza\"}', 9, '2021-12-30 22:33:46', '2021-12-31 02:37:41', 0, 1, NULL),
(38, '{\"ar\":\"Salads\"}', 9, '2021-12-30 22:33:46', '2021-12-31 02:37:41', 0, 1, NULL),
(39, '{\"ar\":\"Taco\"}', 10, '2021-12-30 22:33:46', '2021-12-31 02:37:41', 0, 1, NULL),
(40, '{\"ar\":\"Quesadilla\"}', 10, '2021-12-30 22:33:46', '2021-12-31 02:37:41', 0, 1, NULL),
(41, '{\"ar\":\"Burrito\"}', 10, '2021-12-30 22:33:46', '2021-12-31 02:37:41', 0, 1, NULL),
(42, '{\"ar\":\"Burrito In A Bowl\"}', 10, '2021-12-30 22:33:46', '2021-12-31 02:37:41', 0, 1, NULL),
(43, '{\"ar\":\"Salads\"}', 11, '2021-12-30 22:33:47', '2021-12-31 02:37:41', 0, 1, NULL),
(44, '{\"ar\":\"Drinks\"}', 11, '2021-12-30 22:33:47', '2021-12-31 02:37:41', 0, 1, NULL),
(45, '{\"ar\":\"Starters\"}', 11, '2021-12-30 22:33:47', '2021-12-31 02:37:41', 0, 1, NULL),
(46, '{\"ar\":\"Garnish\"}', 11, '2021-12-30 22:33:47', '2021-12-31 02:37:41', 0, 1, NULL),
(47, '{\"ar\":\"Burgers\"}', 11, '2021-12-30 22:33:47', '2021-12-31 02:37:41', 0, 1, NULL),
(48, '{\"ar\":\"Drinks\"}', 12, '2021-12-30 22:33:47', '2021-12-31 02:37:41', 0, 1, NULL),
(49, '{\"ar\":\"Burrito\"}', 12, '2021-12-30 22:33:47', '2021-12-31 02:37:41', 0, 1, NULL),
(50, '{\"ar\":\"Salads\"}', 12, '2021-12-30 22:33:47', '2021-12-31 02:37:41', 0, 1, NULL),
(51, '{\"ar\":\"Pizza\"}', 12, '2021-12-30 22:33:47', '2021-12-31 02:37:41', 0, 1, NULL),
(52, '{\"ar\":\"Fresh Pasta and Risotto\"}', 13, '2021-12-30 22:33:47', '2021-12-31 02:37:41', 0, 1, NULL),
(53, '{\"ar\":\"Lasagna\"}', 13, '2021-12-30 22:33:47', '2021-12-31 02:37:41', 0, 1, NULL),
(54, '{\"ar\":\"Salads\"}', 13, '2021-12-30 22:33:47', '2021-12-31 02:37:41', 0, 1, NULL),
(55, '{\"ar\":\"Pizza\"}', 13, '2021-12-30 22:33:47', '2021-12-31 02:37:41', 0, 1, NULL),
(56, '{\"ar\":\"Taco\"}', 14, '2021-12-30 22:33:47', '2021-12-31 02:37:41', 0, 1, NULL),
(57, '{\"ar\":\"Quesadilla\"}', 14, '2021-12-30 22:33:47', '2021-12-31 02:37:41', 0, 1, NULL),
(58, '{\"ar\":\"Burrito In A Bowl\"}', 14, '2021-12-30 22:33:47', '2021-12-31 02:37:41', 0, 1, NULL),
(59, '{\"ar\":\"Burrito\"}', 14, '2021-12-30 22:33:47', '2021-12-31 02:37:41', 0, 1, NULL),
(60, '{\"ar\":\"Salads\"}', 15, '2021-12-30 22:33:48', '2021-12-31 02:37:41', 0, 1, NULL),
(61, '{\"ar\":\"Starters\"}', 15, '2021-12-30 22:33:48', '2021-12-31 02:37:41', 0, 1, NULL),
(62, '{\"ar\":\"Garnish\"}', 15, '2021-12-30 22:33:48', '2021-12-31 02:37:41', 0, 1, NULL),
(63, '{\"ar\":\"Drinks\"}', 15, '2021-12-30 22:33:48', '2021-12-31 02:37:41', 0, 1, NULL),
(64, '{\"ar\":\"Burgers\"}', 15, '2021-12-30 22:33:48', '2021-12-31 02:37:41', 0, 1, NULL),
(65, '{\"ar\":\"Salads\"}', 16, '2021-12-30 22:33:48', '2021-12-31 02:37:41', 0, 1, NULL),
(66, '{\"ar\":\"Drinks\"}', 16, '2021-12-30 22:33:48', '2021-12-31 02:37:41', 0, 1, NULL),
(67, '{\"ar\":\"Burrito\"}', 16, '2021-12-30 22:33:48', '2021-12-31 02:37:41', 0, 1, NULL),
(68, '{\"ar\":\"Pizza\"}', 16, '2021-12-30 22:33:48', '2021-12-31 02:37:41', 0, 1, NULL),
(69, 'منتجات', 17, '2021-12-31 02:32:39', '2022-01-06 16:29:52', 1, 1, NULL),
(70, 'عصيرات', 26, '2022-01-11 23:59:48', '2022-01-11 23:59:48', 1, 1, NULL),
(71, 'المشروبات الساخنة', 18, '2022-01-12 07:49:57', '2022-01-12 07:49:57', 1, 1, NULL),
(72, 'المشروبات الباردة', 18, '2022-01-12 07:56:46', '2022-01-12 07:56:46', 2, 1, NULL),
(73, 'الشاي والزهور', 18, '2022-01-12 08:04:01', '2022-01-12 08:04:01', 3, 1, NULL),
(74, 'موهيتــــــو', 18, '2022-01-12 08:11:05', '2022-01-12 08:11:05', 4, 1, NULL),
(75, 'القهوة السوداء', 18, '2022-01-12 08:13:16', '2022-01-12 08:13:16', 5, 1, NULL),
(76, 'نايتـــرو', 18, '2022-01-12 08:16:23', '2022-01-12 08:16:23', 6, 1, NULL),
(77, 'الـحـــــلا', 18, '2022-01-12 08:19:46', '2022-01-12 08:19:46', 7, 1, NULL),
(78, 'اضـافـات', 18, '2022-01-12 08:23:14', '2022-01-12 08:23:14', 8, 1, NULL),
(79, 'جـمعـتـكـم أحـلـى', 18, '2022-01-12 08:25:11', '2022-01-12 08:25:11', 9, 1, NULL),
(80, 'المشروبات الحارة', 21, '2022-01-16 16:03:42', '2022-02-23 17:59:17', 1, 1, NULL),
(81, 'المشروبات الباردة', 21, '2022-01-16 17:40:28', '2022-02-23 17:59:17', 2, 1, NULL),
(82, 'الحلويات', 21, '2022-01-16 17:40:39', '2022-01-17 16:26:38', 7, 1, NULL),
(83, 'الفطور', 21, '2022-01-16 17:40:45', '2022-01-17 16:26:20', 8, 1, NULL),
(84, 'القهوة المقطرة', 21, '2022-01-16 17:40:59', '2022-01-16 17:41:18', 3, 1, NULL),
(85, 'العصيرات', 21, '2022-01-17 16:11:16', '2022-01-17 16:11:27', 4, 1, NULL),
(86, 'شاي', 21, '2022-01-17 16:22:37', '2022-01-17 16:22:50', 5, 1, NULL),
(87, 'أخرى', 21, '2022-01-17 16:26:14', '2022-01-17 16:26:38', 6, 1, NULL),
(88, 'تجربة', 27, '2022-02-03 11:27:17', '2022-02-03 11:27:17', 1, 1, NULL),
(89, 'تجربة', 30, '2022-02-08 18:04:42', '2022-02-08 18:04:42', 1, 1, NULL),
(90, 'product', 29, '2022-02-10 16:12:45', '2022-02-10 16:12:45', 1, 1, NULL),
(91, 'المشروبات الحارة', 33, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 1, NULL),
(92, 'المشروبات الباردة', 33, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 2, 1, NULL),
(93, 'القهوة المقطرة', 33, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 3, 1, NULL),
(94, 'العصيرات', 33, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 4, 1, NULL),
(95, 'شاي', 33, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 5, 1, NULL),
(96, 'أخرى', 33, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 6, 1, NULL),
(97, 'الحلويات', 33, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 7, 1, NULL),
(98, 'الفطور', 33, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 8, 1, NULL),
(99, 'Test Category', 38, '2022-03-08 13:26:24', '2022-03-08 13:26:24', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `created_at`, `updated_at`, `name`, `alias`, `image`, `header_title`, `header_subtitle`, `deleted_at`) VALUES
(1, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 'Bronx', 'bx', 'https://foodtiger.mobidonia.com/uploads/settings/177686e2-8597-46e0-bf70-daa8d5ff0085_large.jpg', 'Food Delivery from<br /><strong>Bronx</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(2, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 'Brooklyn', 'br', 'https://foodtiger.mobidonia.com/uploads/settings/6d001b6c-2ba1-499e-9f57-09b7dc46ace3_large.jpg', 'Food Delivery from<br /><strong>Brooklyn</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(3, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 'Queens', 'qe', 'https://foodtiger.mobidonia.com/uploads/settings/492b78df-1756-4c30-910a-d3923b66aa97_large.jpg', 'Food Delivery from<br /><strong>Queens</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(4, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 'Manhattn', 'mh', 'https://foodtiger.mobidonia.com/uploads/settings/01f41f56-1acf-44f0-8e8d-fedceb5267cf_large.jpg', 'Food Delivery from<br /><strong>Manhattn</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(5, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 'Richmond', 'ri', 'https://foodtiger.mobidonia.com/uploads/settings/fe6c500b-3410-41ff-9734-94c58351ba60_large.jpg', 'Food Delivery from<br /><strong>Richmond</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(6, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 'Buffalo', 'bf', 'https://foodtiger.mobidonia.com/uploads/settings/0c3c8fb0-c252-4758-9699-6851b15796ef_large.jpg', 'Food Delivery from<br /><strong>Buffalo</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(7, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 'Rochester', 'rh', 'https://foodtiger.mobidonia.com/uploads/settings/c7f21267-7149-4311-9fd9-4a08904f67a3_large.jpg', 'Food Delivery from<br /><strong>Rochester</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(8, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 'Yonkers', 'yo', 'https://foodtiger.mobidonia.com/uploads/settings/8c65269a-3bbc-4899-be13-75d1bc35e9cd_large.jpg', 'Food Delivery from<br /><strong>Yonkers</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(9, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 'Syracuse', 'sy', 'https://foodtiger.mobidonia.com/uploads/settings/1e5fcde5-5dc0-4c29-8f49-314658836fb8_large.jpg', 'Food Delivery from<br /><strong>Syracuse</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(10, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 'Albany', 'al', 'https://foodtiger.mobidonia.com/uploads/settings/b521e77f-1d3e-4695-b871-bac8262c85dc_large.jpg', 'Food Delivery from<br /><strong>Albany</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(11, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 'New Rochelle', 'nr', 'https://foodtiger.mobidonia.com/uploads/settings/8b3ebb83-2e2e-43dd-8747-4f9c6f451199_large.jpg', 'Food Delivery from<br /><strong>New Rochelle</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(12, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 'Mount Vernon', 'mv', 'https://foodtiger.mobidonia.com/uploads/settings/daecfb93-677f-43a9-9e7e-4cf109194399_large.jpg', 'Food Delivery from<br /><strong>Mount Vernon</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(13, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 'Schenectady', 'sc', 'https://foodtiger.mobidonia.com/uploads/settings/177686e2-8597-46e0-bf70-daa8d5ff0085_large.jpg', 'Food Delivery from<br /><strong>Schenectady</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(14, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 'Utica', 'ut', 'https://foodtiger.mobidonia.com/uploads/settings/507847c5-1896-4ecf-bfe8-9c5f198ce41e_large.jpg', 'Food Delivery from<br /><strong>Utica</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(15, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 'White Plains', 'wp', 'https://foodtiger.mobidonia.com/uploads/settings/a8e96a74-dc3a-403c-8fd0-b4528838e98c_large.jpg', 'Food Delivery from<br /><strong>White Plains</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(16, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 'Niagara Falls', 'nf', 'https://foodtiger.mobidonia.com/uploads/settings/99d5b4c3-0bb4-428a-96cf-0e510bc3ab57_large.jpg', 'Food Delivery from<br /><strong>Niagara Falls</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subdomain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cover` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimum` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fee` double(8,2) NOT NULL DEFAULT '0.00',
  `static_fee` double(8,2) NOT NULL DEFAULT '0.00',
  `radius` varchar(800) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `city_id` int(11) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `can_pickup` int(11) NOT NULL DEFAULT '1',
  `can_deliver` int(11) NOT NULL DEFAULT '1',
  `self_deliver` int(11) NOT NULL DEFAULT '0',
  `free_deliver` int(11) NOT NULL DEFAULT '0',
  `whatsapp_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_covertion` int(11) NOT NULL DEFAULT '1',
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_info` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mollie_payment_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `created_at`, `updated_at`, `name`, `subdomain`, `logo`, `cover`, `active`, `user_id`, `lat`, `lng`, `address`, `phone`, `minimum`, `description`, `fee`, `static_fee`, `radius`, `is_featured`, `city_id`, `views`, `can_pickup`, `can_deliver`, `self_deliver`, `free_deliver`, `whatsapp_phone`, `fb_username`, `do_covertion`, `currency`, `payment_info`, `mollie_payment_key`, `deleted_at`) VALUES
(1, '2021-12-30 22:33:44', '2021-12-31 00:49:56', 'Leuka Pizza', 'leukapizza', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', '', 1, 2, '40.654509', '-73.948990', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'italian, pasta, pizza', 0.00, 0.00, '[{\"lat\": 40.61811135844185, \"lng\": -74.04154967363282}, {\"lat\": 40.593088644275994, \"lng\": -74.00447081621094}, {\"lat\": 40.57483700944677, \"lng\": -74.01271056230469}, {\"lat\": 40.57222922648421, \"lng\": -73.94816588457032}, {\"lat\": 40.58318123192112, \"lng\": -73.87812804277344}, {\"lat\": 40.620196161732025, \"lng\": -73.89117430742188}, {\"lat\": 40.64520872605633, \"lng\": -73.85340880449219}, {\"lat\": 40.71862893820799, \"lng\": -73.96327208574219}, {\"lat\": 40.680627151592745, \"lng\": -74.01957701738282}, {\"lat\": 40.66552453494284, \"lng\": -74.00447081621094}]', 0, 2, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', '2021-12-31 00:49:56'),
(2, '2021-12-30 22:33:44', '2021-12-31 00:49:56', 'Oasis Burgers', 'oasisburgers', 'https://foodtiger.mobidonia.com/uploads/restorants/c8d27bcc-54da-4c18-b8e6-f1414c71612c', '', 1, 2, '40.588894', '-73.939175', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'burgers, drinks, best chicken', 0.00, 0.00, '[{\"lat\": 40.61811135844185, \"lng\": -74.04154967363282}, {\"lat\": 40.593088644275994, \"lng\": -74.00447081621094}, {\"lat\": 40.57483700944677, \"lng\": -74.01271056230469}, {\"lat\": 40.57222922648421, \"lng\": -73.94816588457032}, {\"lat\": 40.58318123192112, \"lng\": -73.87812804277344}, {\"lat\": 40.620196161732025, \"lng\": -73.89117430742188}, {\"lat\": 40.64520872605633, \"lng\": -73.85340880449219}, {\"lat\": 40.71862893820799, \"lng\": -73.96327208574219}, {\"lat\": 40.680627151592745, \"lng\": -74.01957701738282}, {\"lat\": 40.66552453494284, \"lng\": -74.00447081621094}]', 0, 2, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', '2021-12-31 00:49:56'),
(3, '2021-12-30 22:33:44', '2021-12-31 00:49:56', 'Brooklyn Taco', 'brooklyntaco', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', '', 1, 2, '40.607402', '-73.987272', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'yummy taco, wraps, fast food', 0.00, 0.00, '[{\"lat\": 40.61811135844185, \"lng\": -74.04154967363282}, {\"lat\": 40.593088644275994, \"lng\": -74.00447081621094}, {\"lat\": 40.57483700944677, \"lng\": -74.01271056230469}, {\"lat\": 40.57222922648421, \"lng\": -73.94816588457032}, {\"lat\": 40.58318123192112, \"lng\": -73.87812804277344}, {\"lat\": 40.620196161732025, \"lng\": -73.89117430742188}, {\"lat\": 40.64520872605633, \"lng\": -73.85340880449219}, {\"lat\": 40.71862893820799, \"lng\": -73.96327208574219}, {\"lat\": 40.680627151592745, \"lng\": -74.01957701738282}, {\"lat\": 40.66552453494284, \"lng\": -74.00447081621094}]', 0, 2, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', '2021-12-31 00:49:56'),
(4, '2021-12-30 22:33:44', '2021-12-31 00:49:56', 'The Brooklyn tree', 'thebrooklyntree', 'https://foodtiger.mobidonia.com/uploads/restorants/6fa5233f-00f3-4f52-950c-5a1705583dfc', '', 1, 2, '40.621997', '-73.938831', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, lunch, bbq', 0.00, 0.00, '[{\"lat\": 40.61811135844185, \"lng\": -74.04154967363282}, {\"lat\": 40.593088644275994, \"lng\": -74.00447081621094}, {\"lat\": 40.57483700944677, \"lng\": -74.01271056230469}, {\"lat\": 40.57222922648421, \"lng\": -73.94816588457032}, {\"lat\": 40.58318123192112, \"lng\": -73.87812804277344}, {\"lat\": 40.620196161732025, \"lng\": -73.89117430742188}, {\"lat\": 40.64520872605633, \"lng\": -73.85340880449219}, {\"lat\": 40.71862893820799, \"lng\": -73.96327208574219}, {\"lat\": 40.680627151592745, \"lng\": -74.01957701738282}, {\"lat\": 40.66552453494284, \"lng\": -74.00447081621094}]', 0, 2, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', '2021-12-31 00:49:56'),
(5, '2021-12-30 22:33:45', '2021-12-31 00:49:56', 'Awang Italian Restorant', 'awangitalianrestorant', 'https://foodtiger.mobidonia.com/uploads/restorants/4a2067cb-f39c-4b26-83ef-9097512d3328', '', 1, 2, '40.716729', '-73.793035', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'italian, pasta, pizza', 0.00, 0.00, '[{\"lat\": 40.72538611607021, \"lng\": -73.96387365315225}, {\"lat\": 40.65093145404635, \"lng\": -73.85195043537881}, {\"lat\": 40.62175171970407, \"lng\": -73.76680639241006}, {\"lat\": 40.64051158441822, \"lng\": -73.71462133381631}, {\"lat\": 40.670724724281335, \"lng\": -73.67891576741006}, {\"lat\": 40.76388243617103, \"lng\": -73.74758031819131}, {\"lat\": 40.79351981360113, \"lng\": -73.84851720783975}, {\"lat\": 40.78728146460242, \"lng\": -73.91100194905069}]', 0, 3, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', '2021-12-31 00:49:56'),
(6, '2021-12-30 22:33:45', '2021-12-31 00:49:56', 'Wendy Taco', 'wendytaco', 'https://foodtiger.mobidonia.com/uploads/restorants/6f9e8892-4a28-4c99-ab24-57179a1424b9', '', 1, 2, '40.751418', '-73.809531', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'yummy taco, wraps, fast food', 0.00, 0.00, '[{\"lat\": 40.72538611607021, \"lng\": -73.96387365315225}, {\"lat\": 40.65093145404635, \"lng\": -73.85195043537881}, {\"lat\": 40.62175171970407, \"lng\": -73.76680639241006}, {\"lat\": 40.64051158441822, \"lng\": -73.71462133381631}, {\"lat\": 40.670724724281335, \"lng\": -73.67891576741006}, {\"lat\": 40.76388243617103, \"lng\": -73.74758031819131}, {\"lat\": 40.79351981360113, \"lng\": -73.84851720783975}, {\"lat\": 40.78728146460242, \"lng\": -73.91100194905069}]', 0, 3, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', '2021-12-31 00:49:56'),
(7, '2021-12-30 22:33:45', '2021-12-31 00:49:56', 'Burger 2Go', 'burger2go', 'https://foodtiger.mobidonia.com/uploads/restorants/80a49037-07e9-4e28-b23e-66fd641c1c77', '', 1, 2, '40.753759', '-73.799224', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'burgers, drinks, best chicken', 0.00, 0.00, '[{\"lat\": 40.72538611607021, \"lng\": -73.96387365315225}, {\"lat\": 40.65093145404635, \"lng\": -73.85195043537881}, {\"lat\": 40.62175171970407, \"lng\": -73.76680639241006}, {\"lat\": 40.64051158441822, \"lng\": -73.71462133381631}, {\"lat\": 40.670724724281335, \"lng\": -73.67891576741006}, {\"lat\": 40.76388243617103, \"lng\": -73.74758031819131}, {\"lat\": 40.79351981360113, \"lng\": -73.84851720783975}, {\"lat\": 40.78728146460242, \"lng\": -73.91100194905069}]', 0, 3, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', '2021-12-31 00:49:56'),
(8, '2021-12-30 22:33:45', '2021-12-31 00:49:56', 'Titan Foods', 'titanfoods', 'https://foodtiger.mobidonia.com/uploads/restorants/56e90ea7-5321-4cfd-8b2c-918ccd3c3f77', '', 1, 2, '40.749078', '-73.812623', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, lunch, bbq', 0.00, 0.00, '[{\"lat\": 40.72538611607021, \"lng\": -73.96387365315225}, {\"lat\": 40.65093145404635, \"lng\": -73.85195043537881}, {\"lat\": 40.62175171970407, \"lng\": -73.76680639241006}, {\"lat\": 40.64051158441822, \"lng\": -73.71462133381631}, {\"lat\": 40.670724724281335, \"lng\": -73.67891576741006}, {\"lat\": 40.76388243617103, \"lng\": -73.74758031819131}, {\"lat\": 40.79351981360113, \"lng\": -73.84851720783975}, {\"lat\": 40.78728146460242, \"lng\": -73.91100194905069}]', 0, 3, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', '2021-12-31 00:49:56'),
(9, '2021-12-30 22:33:46', '2021-12-31 00:49:56', 'Pizza Manhattn', 'pizzamanhattn', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', '', 1, 2, '40.726358', '-73.996879', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'italian, international, pasta', 0.00, 0.00, '[{\"lat\": 40.70279189834177, \"lng\": -74.01818193403926}, {\"lat\": 40.711640621663136, \"lng\": -73.97972978560176}, {\"lat\": 40.798503799354734, \"lng\": -73.91381181685176}, {\"lat\": 40.83487975446948, \"lng\": -73.94745744673457}, {\"lat\": 40.750665070026194, \"lng\": -74.01200212446895}]', 0, 4, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', '2021-12-31 00:49:56'),
(10, '2021-12-30 22:33:46', '2021-12-31 00:49:56', 'il Buco', 'ilbuco', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', '', 1, 2, '40.724883', '-74.001985', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'tacos, wraps, Quesadilla', 0.00, 0.00, '[{\"lat\": 40.70279189834177, \"lng\": -74.01818193403926}, {\"lat\": 40.711640621663136, \"lng\": -73.97972978560176}, {\"lat\": 40.798503799354734, \"lng\": -73.91381181685176}, {\"lat\": 40.83487975446948, \"lng\": -73.94745744673457}, {\"lat\": 40.750665070026194, \"lng\": -74.01200212446895}]', 0, 4, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', '2021-12-31 00:49:56'),
(11, '2021-12-30 22:33:46', '2021-12-31 00:49:56', 'Vandal Burgers', 'vandalburgers', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', '', 1, 2, '40.724102', '-73.999064', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, beef burgers', 0.00, 0.00, '[{\"lat\": 40.70279189834177, \"lng\": -74.01818193403926}, {\"lat\": 40.711640621663136, \"lng\": -73.97972978560176}, {\"lat\": 40.798503799354734, \"lng\": -73.91381181685176}, {\"lat\": 40.83487975446948, \"lng\": -73.94745744673457}, {\"lat\": 40.750665070026194, \"lng\": -74.01200212446895}]', 0, 4, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', '2021-12-31 00:49:56'),
(12, '2021-12-30 22:33:47', '2021-12-31 00:49:56', 'Malibu Diner', 'malibudiner', 'https://foodtiger.mobidonia.com/uploads/restorants/a2b5b612-9fec-4e28-bb7d-88a06d97bda6', '', 1, 2, '40.717857', '-74.004561', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, lunch, bbq', 0.00, 0.00, '[{\"lat\": 40.70279189834177, \"lng\": -74.01818193403926}, {\"lat\": 40.711640621663136, \"lng\": -73.97972978560176}, {\"lat\": 40.798503799354734, \"lng\": -73.91381181685176}, {\"lat\": 40.83487975446948, \"lng\": -73.94745744673457}, {\"lat\": 40.750665070026194, \"lng\": -74.01200212446895}]', 0, 4, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', '2021-12-31 00:49:56'),
(13, '2021-12-30 22:33:47', '2021-12-31 00:49:56', 'Pizza Relham', 'pizzarelham', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', '', 1, 2, '40.842930', '-73.866629', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'italian, international, pasta', 0.00, 0.00, '[{\"lat\": 40.79717207195068, \"lng\": -73.91185629950473}, {\"lat\": 40.83822431229653, \"lng\": -73.94893515692661}, {\"lat\": 40.90572332325597, \"lng\": -73.9097963629813}, {\"lat\": 40.89793848793209, \"lng\": -73.83426535712192}, {\"lat\": 40.886519072020896, \"lng\": -73.78139365302036}, {\"lat\": 40.81900047658591, \"lng\": -73.79169333563755}]', 0, 1, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', '2021-12-31 00:49:56'),
(14, '2021-12-30 22:33:47', '2021-12-31 00:49:56', 'NorWood Burito', 'norwoodburito', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', '', 1, 2, '40.850218', '-73.887522', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'tacos, wraps, Quesadilla', 0.00, 0.00, '[{\"lat\": 40.79717207195068, \"lng\": -73.91185629950473}, {\"lat\": 40.83822431229653, \"lng\": -73.94893515692661}, {\"lat\": 40.90572332325597, \"lng\": -73.9097963629813}, {\"lat\": 40.89793848793209, \"lng\": -73.83426535712192}, {\"lat\": 40.886519072020896, \"lng\": -73.78139365302036}, {\"lat\": 40.81900047658591, \"lng\": -73.79169333563755}]', 0, 1, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', '2021-12-31 00:49:56'),
(15, '2021-12-30 22:33:47', '2021-12-31 00:49:56', 'Morris Park Burger', 'morrisparkburger', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', '', 1, 2, '40.842427', '-73.866908', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, beef burgers', 0.00, 0.00, '[{\"lat\": 40.79717207195068, \"lng\": -73.91185629950473}, {\"lat\": 40.83822431229653, \"lng\": -73.94893515692661}, {\"lat\": 40.90572332325597, \"lng\": -73.9097963629813}, {\"lat\": 40.89793848793209, \"lng\": -73.83426535712192}, {\"lat\": 40.886519072020896, \"lng\": -73.78139365302036}, {\"lat\": 40.81900047658591, \"lng\": -73.79169333563755}]', 0, 1, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', '2021-12-31 00:49:56'),
(16, '2021-12-30 22:33:48', '2021-12-31 00:49:56', 'Bronx VanNest Restorant', 'bronxvannestrestorant', 'https://foodtiger.mobidonia.com/uploads/restorants/a2b5b612-9fec-4e28-bb7d-88a06d97bda6', '', 1, 2, '40.832557', '-73.889583', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, lunch, bbq', 0.00, 0.00, '[{\"lat\": 40.79717207195068, \"lng\": -73.91185629950473}, {\"lat\": 40.83822431229653, \"lng\": -73.94893515692661}, {\"lat\": 40.90572332325597, \"lng\": -73.9097963629813}, {\"lat\": 40.89793848793209, \"lng\": -73.83426535712192}, {\"lat\": 40.886519072020896, \"lng\": -73.78139365302036}, {\"lat\": 40.81900047658591, \"lng\": -73.79169333563755}]', 0, 1, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', '2021-12-31 00:49:56'),
(17, '2021-12-31 01:31:05', '2022-01-11 22:57:07', 'ASEEL AYTAH', 'aseelaytah', '', '', 1, 35, '24.479524221026885', '39.59256857642679', 'med', '0590689303', '0', 'aseel', 0.00, 0.00, '{}', 0, NULL, 152, 1, 1, 0, 0, NULL, NULL, 1, 'SAR', '', '', '2022-01-11 22:57:07'),
(18, '2022-01-11 21:11:55', '2022-04-17 22:39:57', 'karta', 'karta', '0f727586-5963-4e7e-85d0-de4dddcd2db0', 'd24d8728-207b-438c-8acd-f5d94b613ced', 1, 36, '24.450321358751104', '39.69210684299469', 'كارتا كافيه (قهوة مختصة)، المدينة المنورة', '0552552749', '1', 'قهوة مختصة', 0.00, 0.00, '{}', 0, NULL, 826, 1, 0, 0, 0, '0552552749', NULL, 1, 'SAR', '', '', NULL),
(19, '2022-01-11 22:28:06', '2022-01-11 22:38:06', 'تحربة', 'thrb', '', '', 1, 37, '0', '0', '', '590689303', '0', '', 0.00, 0.00, '{}', 0, NULL, 0, 1, 1, 0, 0, NULL, NULL, 1, '', '', '', '2022-01-11 22:38:06'),
(20, '2022-01-11 22:28:41', '2022-01-11 22:37:56', 'hag', 'hag', '', '', 1, 38, '0', '0', '', '590689303', '0', '', 0.00, 0.00, '{}', 0, NULL, 0, 1, 1, 0, 0, NULL, NULL, 1, '', '', '', '2022-01-11 22:37:56'),
(21, '2022-01-11 22:31:18', '2022-04-17 22:45:04', 'aletta cafe', 'alettacafe', '13f1e716-e2c1-4e35-80e1-3a631c55a9bc', 'da52fa21-7d5b-4329-b97c-60f3f4f8f829', 1, 39, '24.42187513786714', '39.6352681517601', 'Aletta Cafe - اليتا كافيه, King Abdullah Road, Medina', '0555054254', '1', 'قهوة مختصة', 0.00, 0.00, '{}', 0, NULL, 1887, 0, 0, 0, 0, '50000000000', NULL, 1, 'SAR', '', '', NULL),
(22, '2022-01-11 22:32:47', '2022-01-11 22:37:45', 'alettacafe', NULL, '', '', 0, 40, '0', '0', '', '0555054254', '0', '', 0.00, 0.00, '{}', 0, NULL, 0, 1, 1, 0, 0, NULL, NULL, 1, '', '', '', '2022-01-11 22:37:45'),
(23, '2022-01-11 22:57:33', '2022-01-11 23:05:37', 'aseel', 'aseel', '', '', 1, 41, '0', '0', '', '590689303', '0', '', 0.00, 0.00, '{}', 0, NULL, 0, 1, 1, 0, 0, NULL, NULL, 1, '', '', '', '2022-01-11 23:05:37'),
(24, '2022-01-11 23:06:14', '2022-01-11 23:13:30', 'ajdb', 'ajdb', '', '', 1, 42, '0', '0', '', '590689303', '0', '', 0.00, 0.00, '{}', 0, NULL, 0, 1, 1, 0, 0, NULL, NULL, 1, '', '', '', '2022-01-11 23:13:30'),
(25, '2022-01-11 23:13:46', '2022-01-11 23:18:54', 'havs', 'havs', '', '', 1, 43, '0', '0', '', '590689303', '0', '', 0.00, 0.00, '{}', 0, NULL, 0, 1, 1, 0, 0, NULL, NULL, 1, '', '', '', '2022-01-11 23:18:54'),
(26, '2022-01-11 23:57:57', '2022-01-15 23:18:12', 'Tst', 'tst', '02ca9a45-40b4-41a9-a7fa-0a84a20cccb2', '2ce88c9c-56dc-4193-98dc-ac8b59a3e0ff', 1, 44, '24.479607599343634', '39.59257768043894', 'fdf', '0590689303', '0', 'gfj', 0.00, 0.00, '{}', 0, NULL, 44, 0, 0, 0, 0, NULL, NULL, 1, 'SAR', '', '', '2022-01-15 23:18:12'),
(27, '2022-02-03 11:26:19', '2022-04-18 13:36:23', 'تجربة', 'tgrb', '', '', 1, 45, '24.41330914366966', '39.632565780395495', 'تجربة', '+9665736381649', '0', 'تجربة', 7.00, 1.00, '{}', 1, NULL, 493, 1, 1, 0, 0, NULL, NULL, 1, 'SAR', '', '', NULL),
(28, '2022-02-08 12:50:34', '2022-02-14 23:15:31', 'test', 'test', '', '', 1, 46, '0', '0', '', '+911234567890', '0', '', 0.00, 0.00, '{}', 0, NULL, 7, 1, 1, 0, 0, NULL, NULL, 1, '', '', '', '2022-02-14 23:15:31'),
(29, '2022-02-08 13:04:14', '2022-04-11 11:34:22', 'EBMenu Test Zain', 'ebmenutestzain', '', '', 1, 47, '24.47952524998001', '39.5927459552837', 'test', '+966542391545', '0', 'test', 0.00, 0.00, '{}', 1, NULL, 32, 1, 1, 0, 0, NULL, NULL, 1, 'SAR', '', '', NULL),
(30, '2022-02-08 18:04:37', '2022-02-08 18:07:48', 'تجربة فرع', 'tgrbfraa', '', '', 1, 48, '0', '0', '', '+966567890987', '0', '', 0.00, 0.00, '{}', 0, NULL, 1, 1, 1, 0, 0, NULL, NULL, 1, '', '', '', '2022-02-08 18:07:48'),
(31, '2022-02-10 20:22:22', '2022-02-17 14:22:27', 'eee', 'eee', '', '', 0, 49, '24.4355036', '39.6334779', '', '+9661234567890', '0', '', 0.00, 0.00, '{}', 0, NULL, 8, 1, 1, 0, 0, NULL, NULL, 1, '', '', '', NULL),
(32, '2022-02-11 21:14:22', '2022-02-11 23:49:03', 'Shuqran', 'shuqran', '', '', 1, 50, '0', '0', '', '+966500266565', '0', '', 0.00, 0.00, '{}', 0, NULL, 0, 1, 1, 0, 0, NULL, NULL, 1, '', '', '', '2022-02-11 23:49:03'),
(33, '2022-02-12 00:06:49', '2022-04-16 05:51:58', 'aletta drive thru', 'alettadrivethru', '13f1e716-e2c1-4e35-80e1-3a631c55a9bc', 'da52fa21-7d5b-4329-b97c-60f3f4f8f829', 1, 51, '24.42187513786714', '39.6352681517601', 'Aletta drive-thru', '+966555054254', '1', 'قهوة مختصة', 0.00, 0.00, '{}', 0, NULL, 81, 0, 0, 0, 0, '50000000000', NULL, 1, 'SAR', '', '', NULL),
(34, '2022-02-14 23:17:01', '2022-02-14 23:27:04', 'Aytah aseel ayman', 'aytahaseelayman', '', '', 1, 52, '24.471369235863943', '39.607601165771484', '', '+966558032037', '0', '', 0.00, 0.00, '{}', 0, NULL, 2, 1, 1, 0, 0, NULL, NULL, 1, '', '', '', '2022-02-14 23:27:04'),
(35, '2022-02-17 02:14:45', '2022-02-17 04:06:42', 'kjdkjf', 'kjdkjf', '', '', 1, 53, '0', '0', '', '+966567894875', '0', '', 0.00, 0.00, '{}', 0, NULL, 0, 1, 1, 0, 0, NULL, NULL, 1, '', '', '', '2022-02-17 04:06:42'),
(36, '2022-02-25 00:03:47', '2022-03-02 12:45:30', 'ASEEL AYTAHaa', 'aseelaytahaa', '', '', 1, 54, '24.479386717245298', '39.59296195105466', 'gf', '+966558032037', '0', 'ta', 0.00, 0.00, '{}', 1, NULL, 2, 1, 1, 0, 0, NULL, NULL, 1, 'SAR', '', '', '2022-03-02 12:45:30'),
(37, '2022-03-06 13:22:30', '2022-04-16 05:52:00', 'done', 'done', '', '', 1, 55, '24.479589610885174', '39.59277670872507', '', '+923452793691', '0', '', 0.00, 0.00, '{}', 0, NULL, 36, 1, 1, 0, 0, NULL, NULL, 1, '', '', '', NULL),
(38, '2022-03-08 13:25:10', '2022-04-15 21:24:47', 'G', 'g', '', '', 1, 56, '24.479605069119124', '39.59260137894545', 'g', '+966542391545', '0', 'g', 0.00, 0.00, '{}', 1, NULL, 66, 1, 1, 0, 0, NULL, NULL, 1, 'SAR', '', '', NULL),
(39, '2022-03-22 11:34:33', '2022-04-12 00:49:11', 'partners', 'fddff', '', '', 1, 57, '28.3432297', '36.5823944', 'partners', '+2340987654435', '0', 'partners', 0.00, 0.00, '{}', 1, NULL, 18, 1, 1, 0, 0, NULL, NULL, 1, 'SAR', '', '', NULL),
(40, '2022-04-12 16:41:05', '2022-04-12 17:30:53', 'ebmenu.com ugrfeiohofidsksmvnjdbvsijf94t9u5t0i4r94ijgrjght9y84r49t64rkowf0ereiuguejdkwdiweofuehdskodjjdgofjsoddggfsidj', 'ebmenucomugrfeiohofidsksmvnjdbvsijf94t9u5t0i4r94ijgrjght9y84r49t64rkowf0ereiuguejdkwdiweofuehdskodjjdgofjsoddggfsidj', '', '', 1, 59, '24.47951422730472', '39.59292460481035', '', '86866481966', '0', '', 0.00, 0.00, '{}', 0, NULL, 1, 1, 1, 0, 0, NULL, NULL, 1, '', '', '', '2022-04-12 17:30:53');

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE `configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `configs`
--

INSERT INTO `configs` (`id`, `value`, `key`, `model_type`, `model_id`, `created_at`, `updated_at`) VALUES
(1, '0', 'disable_callwaiter', 'App\\Restorant', 17, '2021-12-31 01:31:05', '2021-12-31 01:31:05'),
(2, '0', 'disable_ordering', 'App\\Restorant', 17, '2021-12-31 01:31:05', '2022-01-11 20:22:54'),
(3, '0', 'disable_continues_ordering', 'App\\Restorant', 17, '2021-12-31 02:31:43', '2022-01-11 20:22:54'),
(4, '120', 'time_to_prepare_order_in_minutes', 'App\\Restorant', 17, '2021-12-31 02:36:12', '2021-12-31 02:36:12'),
(5, '30', 'delivery_interval_in_minutes', 'App\\Restorant', 17, '2021-12-31 02:36:12', '2021-12-31 02:36:12'),
(6, '1b1e3fc0-9aea-4f6f-891c-404f445ee1c4', 'resto_wide_logo', 'App\\Restorant', 17, '2022-01-06 16:37:18', '2022-01-06 16:37:18'),
(7, 'e5d3af57-b1d5-471e-a0d3-214d1435ef00', 'resto_wide_logo_dark', 'App\\Restorant', 17, '2022-01-06 16:37:18', '2022-01-06 16:37:18'),
(8, '1', 'disable_callwaiter', 'App\\Restorant', 18, '2022-01-11 21:11:55', '2022-02-16 21:38:03'),
(9, '1', 'disable_ordering', 'App\\Restorant', 18, '2022-01-11 21:11:55', '2022-02-17 04:19:59'),
(10, '1', 'disable_continues_ordering', 'App\\Restorant', 18, '2022-01-11 21:11:55', '2022-02-16 22:12:06'),
(11, '0', 'disable_callwaiter', 'App\\Restorant', 19, '2022-01-11 22:28:06', '2022-01-11 22:28:06'),
(12, '0', 'disable_ordering', 'App\\Restorant', 19, '2022-01-11 22:28:06', '2022-01-11 22:28:06'),
(13, '0', 'disable_callwaiter', 'App\\Restorant', 20, '2022-01-11 22:28:41', '2022-01-11 22:28:41'),
(14, '0', 'disable_ordering', 'App\\Restorant', 20, '2022-01-11 22:28:41', '2022-01-11 22:28:41'),
(15, '1', 'disable_callwaiter', 'App\\Restorant', 21, '2022-01-11 22:31:18', '2022-01-24 16:37:34'),
(16, '1', 'disable_ordering', 'App\\Restorant', 21, '2022-01-11 22:31:18', '2022-01-23 21:22:44'),
(17, '0', 'disable_callwaiter', 'App\\Restorant', 22, '2022-01-11 22:32:47', '2022-01-11 22:32:47'),
(18, '0', 'disable_ordering', 'App\\Restorant', 22, '2022-01-11 22:32:47', '2022-01-11 22:32:47'),
(19, '1', 'disable_continues_ordering', 'App\\Restorant', 21, '2022-01-11 22:40:54', '2022-02-23 17:58:58'),
(20, '0', 'disable_callwaiter', 'App\\Restorant', 23, '2022-01-11 22:57:33', '2022-01-11 22:57:33'),
(21, '0', 'disable_ordering', 'App\\Restorant', 23, '2022-01-11 22:57:33', '2022-01-11 22:57:33'),
(22, '0', 'disable_callwaiter', 'App\\Restorant', 24, '2022-01-11 23:06:14', '2022-01-11 23:06:14'),
(23, '0', 'disable_ordering', 'App\\Restorant', 24, '2022-01-11 23:06:14', '2022-01-11 23:06:14'),
(24, '0', 'disable_callwaiter', 'App\\Restorant', 25, '2022-01-11 23:13:46', '2022-01-11 23:13:46'),
(25, '0', 'disable_ordering', 'App\\Restorant', 25, '2022-01-11 23:13:46', '2022-01-11 23:13:46'),
(26, 'e1028dbc-cf58-47a0-9c95-c956df7e0d7f', 'resto_wide_logo', 'App\\Restorant', 21, '2022-01-11 23:23:18', '2022-01-11 23:26:56'),
(27, 'e55939bd-eeed-4fe6-9c2e-4bfc706c34b0', 'resto_wide_logo_dark', 'App\\Restorant', 21, '2022-01-11 23:26:56', '2022-01-11 23:26:56'),
(28, '0', 'disable_callwaiter', 'App\\Restorant', 26, '2022-01-11 23:57:57', '2022-01-11 23:57:57'),
(29, '0', 'disable_ordering', 'App\\Restorant', 26, '2022-01-11 23:57:57', '2022-01-12 01:19:12'),
(30, '0', 'disable_continues_ordering', 'App\\Restorant', 26, '2022-01-12 00:09:59', '2022-01-12 01:19:12'),
(31, '0', 'time_to_prepare_order_in_minutes', 'App\\Restorant', 26, '2022-01-12 00:09:59', '2022-01-12 00:09:59'),
(32, '30', 'delivery_interval_in_minutes', 'App\\Restorant', 26, '2022-01-12 00:09:59', '2022-01-12 00:09:59'),
(33, 'false', 'paypal_enable', 'App\\Restorant', 26, '2022-01-12 01:19:54', '2022-01-12 01:28:35'),
(34, NULL, 'paypal_client_id', 'App\\Restorant', 26, '2022-01-12 01:19:54', '2022-01-12 01:28:35'),
(35, NULL, 'paypal_secret', 'App\\Restorant', 26, '2022-01-12 01:19:54', '2022-01-12 01:28:35'),
(36, 'sandbox', 'paypal_mode', 'App\\Restorant', 26, '2022-01-12 01:19:54', '2022-01-12 01:19:54'),
(37, 'c137de6d-134a-4fda-a32a-332d32f3b8c0', 'resto_wide_logo', 'App\\Restorant', 18, '2022-01-12 08:29:52', '2022-01-15 23:20:04'),
(38, '5', 'time_to_prepare_order_in_minutes', 'App\\Restorant', 18, '2022-01-12 08:29:52', '2022-01-12 08:29:52'),
(39, '30', 'delivery_interval_in_minutes', 'App\\Restorant', 18, '2022-01-12 08:29:52', '2022-01-12 08:29:52'),
(40, 'd0560d1a-3146-4789-ac98-1c58d62e470d', 'resto_wide_logo', 'App\\Restorant', 26, '2022-01-15 23:17:50', '2022-01-15 23:17:50'),
(41, '2763e473-4823-4439-9a44-752e8119499d', 'resto_wide_logo_dark', 'App\\Restorant', 26, '2022-01-15 23:17:50', '2022-01-15 23:17:50'),
(42, '2ea2c163-8dad-4a1c-9517-865f58a259a4', 'resto_wide_logo_dark', 'App\\Restorant', 18, '2022-01-15 23:18:32', '2022-01-15 23:20:04'),
(43, '0', 'time_to_prepare_order_in_minutes', 'App\\Restorant', 21, '2022-01-17 21:52:12', '2022-01-17 21:52:12'),
(44, '30', 'delivery_interval_in_minutes', 'App\\Restorant', 21, '2022-01-17 21:52:12', '2022-01-17 21:52:12'),
(45, 'Impressum', 'impressum_title', 'App\\Restorant', 21, '2022-01-19 02:15:12', '2022-01-19 02:15:12'),
(46, NULL, 'impressum_value', 'App\\Restorant', 21, '2022-01-19 02:15:12', '2022-01-19 02:15:12'),
(47, NULL, 'impressum_title', 'App\\Restorant', 18, '2022-01-25 01:05:03', '2022-01-25 01:05:03'),
(48, NULL, 'impressum_value', 'App\\Restorant', 18, '2022-01-25 01:05:03', '2022-01-25 01:05:03'),
(49, '1', 'disable_callwaiter', 'App\\Restorant', 27, '2022-02-03 11:26:19', '2022-02-17 03:59:48'),
(50, '0', 'disable_ordering', 'App\\Restorant', 27, '2022-02-03 11:26:19', '2022-03-05 22:49:47'),
(51, '1', 'disable_continues_ordering', 'App\\Restorant', 27, '2022-02-03 11:26:19', '2022-02-26 16:50:01'),
(52, '0', 'disable_callwaiter', 'App\\Restorant', 28, '2022-02-08 12:50:34', '2022-02-08 12:50:34'),
(53, '0', 'disable_ordering', 'App\\Restorant', 28, '2022-02-08 12:50:34', '2022-02-08 12:50:34'),
(54, '0', 'disable_callwaiter', 'App\\Restorant', 29, '2022-02-08 13:04:14', '2022-02-08 13:04:14'),
(55, '0', 'disable_ordering', 'App\\Restorant', 29, '2022-02-08 13:04:14', '2022-02-08 13:04:14'),
(56, '0', 'disable_callwaiter', 'App\\Restorant', 30, '2022-02-08 18:04:37', '2022-02-08 18:04:37'),
(57, '0', 'disable_ordering', 'App\\Restorant', 30, '2022-02-08 18:04:37', '2022-02-08 18:04:37'),
(58, '0', 'disable_continues_ordering', 'App\\Restorant', 30, '2022-02-08 18:04:37', '2022-02-08 18:04:37'),
(59, '0', 'disable_callwaiter', 'App\\Restorant', 31, '2022-02-10 20:22:22', '2022-02-10 20:22:22'),
(60, '0', 'disable_ordering', 'App\\Restorant', 31, '2022-02-10 20:22:22', '2022-02-10 20:22:22'),
(61, '0', 'disable_callwaiter', 'App\\Restorant', 32, '2022-02-11 21:14:22', '2022-02-11 21:14:22'),
(62, '0', 'disable_ordering', 'App\\Restorant', 32, '2022-02-11 21:14:22', '2022-02-11 21:14:22'),
(63, '1', 'disable_callwaiter', 'App\\Restorant', 33, '2022-02-12 00:06:49', '2022-02-12 00:06:57'),
(64, '1', 'disable_ordering', 'App\\Restorant', 33, '2022-02-12 00:06:49', '2022-02-17 02:14:27'),
(65, '1', 'disable_continues_ordering', 'App\\Restorant', 33, '2022-02-12 00:06:49', '2022-02-12 00:06:57'),
(66, 'e1028dbc-cf58-47a0-9c95-c956df7e0d7f', 'resto_wide_logo', 'App\\Restorant', 33, '2022-02-12 00:06:57', '2022-02-12 00:06:57'),
(67, 'e55939bd-eeed-4fe6-9c2e-4bfc706c34b0', 'resto_wide_logo_dark', 'App\\Restorant', 33, '2022-02-12 00:06:57', '2022-02-12 00:06:57'),
(68, '0', 'time_to_prepare_order_in_minutes', 'App\\Restorant', 33, '2022-02-12 00:06:57', '2022-02-12 00:06:57'),
(69, '30', 'delivery_interval_in_minutes', 'App\\Restorant', 33, '2022-02-12 00:06:57', '2022-02-12 00:06:57'),
(70, 'Impressum', 'impressum_title', 'App\\Restorant', 33, '2022-02-12 00:06:57', '2022-02-12 00:06:57'),
(71, NULL, 'impressum_value', 'App\\Restorant', 33, '2022-02-12 00:06:57', '2022-02-12 00:06:57'),
(72, '0', 'disable_callwaiter', 'App\\Restorant', 34, '2022-02-14 23:17:01', '2022-02-14 23:17:01'),
(73, '0', 'disable_ordering', 'App\\Restorant', 34, '2022-02-14 23:17:01', '2022-02-14 23:17:01'),
(74, '0', 'disable_continues_ordering', 'App\\Restorant', 34, '2022-02-14 23:17:01', '2022-02-14 23:17:01'),
(75, '0', 'disable_callwaiter', 'App\\Restorant', 35, '2022-02-17 02:14:45', '2022-02-17 02:14:45'),
(76, '0', 'disable_ordering', 'App\\Restorant', 35, '2022-02-17 02:14:45', '2022-02-17 02:14:45'),
(77, '0', 'disable_continues_ordering', 'App\\Restorant', 35, '2022-02-17 02:14:45', '2022-02-17 02:14:45'),
(78, '0', 'time_to_prepare_order_in_minutes', 'App\\Restorant', 27, '2022-02-17 03:55:34', '2022-02-17 03:55:34'),
(79, '30', 'delivery_interval_in_minutes', 'App\\Restorant', 27, '2022-02-17 03:55:34', '2022-02-17 03:55:34'),
(80, '+966590689303', 'customer_phone_number', 'App\\Order', 627, '2022-02-21 03:01:34', '2022-02-21 03:01:34'),
(81, 'ASEEL AYTAH', 'customer_name', 'App\\Order', 627, '2022-02-21 03:01:34', '2022-02-21 03:01:34'),
(82, NULL, 'customer_name', 'App\\Order', 628, '2022-02-21 03:15:32', '2022-02-21 03:15:32'),
(83, NULL, 'customer_name', 'App\\Order', 629, '2022-02-22 03:02:39', '2022-02-22 03:02:39'),
(84, '0', 'disable_callwaiter', 'App\\Restorant', 36, '2022-02-25 00:03:47', '2022-02-25 00:03:47'),
(85, '0', 'disable_ordering', 'App\\Restorant', 36, '2022-02-25 00:03:47', '2022-02-25 00:03:47'),
(86, NULL, 'customer_name', 'App\\Order', 630, '2022-02-26 12:09:38', '2022-02-26 12:09:38'),
(87, NULL, 'customer_name', 'App\\Order', 631, '2022-02-27 20:04:17', '2022-02-27 20:04:17'),
(88, '0', 'disable_continues_ordering', 'App\\Restorant', 36, '2022-02-27 20:18:52', '2022-02-27 20:18:52'),
(89, '0', 'time_to_prepare_order_in_minutes', 'App\\Restorant', 36, '2022-02-27 20:18:52', '2022-02-27 20:18:52'),
(90, '30', 'delivery_interval_in_minutes', 'App\\Restorant', 36, '2022-02-27 20:18:52', '2022-02-27 20:18:52'),
(91, '0', 'disable_continues_ordering', 'App\\Restorant', 29, '2022-02-27 20:19:57', '2022-02-27 20:19:57'),
(92, '0', 'time_to_prepare_order_in_minutes', 'App\\Restorant', 29, '2022-02-27 20:19:57', '2022-02-27 20:19:57'),
(93, '30', 'delivery_interval_in_minutes', 'App\\Restorant', 29, '2022-02-27 20:19:57', '2022-02-27 20:19:57'),
(94, NULL, 'customer_name', 'App\\Order', 632, '2022-02-27 20:26:40', '2022-02-27 20:26:40'),
(95, NULL, 'customer_name', 'App\\Order', 633, '2022-03-01 13:11:26', '2022-03-01 13:11:26'),
(96, NULL, 'customer_name', 'App\\Order', 634, '2022-03-04 17:07:14', '2022-03-04 17:07:14'),
(97, NULL, 'customer_name', 'App\\Order', 635, '2022-03-04 17:08:05', '2022-03-04 17:08:05'),
(98, NULL, 'customer_name', 'App\\Order', 636, '2022-03-04 17:10:50', '2022-03-04 17:10:50'),
(99, NULL, 'customer_name', 'App\\Order', 637, '2022-03-06 01:15:03', '2022-03-06 01:15:03'),
(100, NULL, 'customer_name', 'App\\Order', 638, '2022-03-06 09:20:18', '2022-03-06 09:20:18'),
(101, '0', 'disable_callwaiter', 'App\\Restorant', 37, '2022-03-06 13:22:30', '2022-03-06 13:22:30'),
(102, '0', 'disable_ordering', 'App\\Restorant', 37, '2022-03-06 13:22:30', '2022-03-06 13:22:30'),
(103, NULL, 'customer_name', 'App\\Order', 639, '2022-03-06 17:55:34', '2022-03-06 17:55:34'),
(104, NULL, 'customer_name', 'App\\Order', 640, '2022-03-06 17:56:27', '2022-03-06 17:56:27'),
(105, NULL, 'customer_name', 'App\\Order', 641, '2022-03-08 01:56:23', '2022-03-08 01:56:23'),
(106, '0', 'disable_callwaiter', 'App\\Restorant', 38, '2022-03-08 13:25:10', '2022-03-08 13:25:10'),
(107, '0', 'disable_ordering', 'App\\Restorant', 38, '2022-03-08 13:25:10', '2022-03-08 13:25:10'),
(108, '1', 'disable_continues_ordering', 'App\\Restorant', 38, '2022-03-08 13:25:10', '2022-03-08 14:35:16'),
(109, NULL, 'customer_name', 'App\\Order', 642, '2022-03-08 14:32:50', '2022-03-08 14:32:50'),
(110, '0', 'time_to_prepare_order_in_minutes', 'App\\Restorant', 38, '2022-03-08 14:35:16', '2022-03-08 14:35:16'),
(111, '30', 'delivery_interval_in_minutes', 'App\\Restorant', 38, '2022-03-08 14:35:16', '2022-03-08 14:35:16'),
(112, '1', 'customer_name', 'App\\Order', 643, '2022-03-16 11:22:05', '2022-03-16 11:22:05'),
(113, NULL, 'customer_name', 'App\\Order', 644, '2022-03-19 14:32:11', '2022-03-19 14:32:11'),
(114, NULL, 'customer_name', 'App\\Order', 645, '2022-03-19 14:35:42', '2022-03-19 14:35:42'),
(115, 'Its me', 'customer_name', 'App\\Order', 646, '2022-03-19 22:26:57', '2022-03-19 22:26:57'),
(116, 'Its me', 'customer_name', 'App\\Order', 647, '2022-03-22 01:08:21', '2022-03-22 01:08:21'),
(117, '0', 'disable_callwaiter', 'App\\Restorant', 39, '2022-03-22 11:34:33', '2022-03-22 11:34:33'),
(118, '0', 'disable_ordering', 'App\\Restorant', 39, '2022-03-22 11:34:33', '2022-03-22 11:34:33'),
(119, 'Its me', 'customer_name', 'App\\Order', 648, '2022-03-27 22:57:39', '2022-03-27 22:57:39'),
(120, NULL, 'customer_name', 'App\\Order', 649, '2022-03-30 01:36:30', '2022-03-30 01:36:30'),
(121, NULL, 'customer_name', 'App\\Order', 650, '2022-03-30 01:37:43', '2022-03-30 01:37:43'),
(122, '0', 'disable_continues_ordering', 'App\\Restorant', 39, '2022-04-06 01:06:19', '2022-04-06 01:06:19'),
(123, '0', 'time_to_prepare_order_in_minutes', 'App\\Restorant', 39, '2022-04-06 01:06:19', '2022-04-06 01:06:19'),
(124, '30', 'delivery_interval_in_minutes', 'App\\Restorant', 39, '2022-04-06 01:06:19', '2022-04-06 01:06:19'),
(125, NULL, 'customer_name', 'App\\Order', 651, '2022-04-08 16:55:13', '2022-04-08 16:55:13'),
(126, NULL, 'customer_name', 'App\\Order', 652, '2022-04-08 16:55:13', '2022-04-08 16:55:13'),
(127, NULL, 'customer_name', 'App\\Order', 653, '2022-04-08 16:55:14', '2022-04-08 16:55:14'),
(128, NULL, 'customer_name', 'App\\Order', 654, '2022-04-08 16:55:14', '2022-04-08 16:55:14'),
(129, NULL, 'customer_name', 'App\\Order', 655, '2022-04-08 16:55:14', '2022-04-08 16:55:14'),
(130, NULL, 'customer_name', 'App\\Order', 656, '2022-04-08 16:55:15', '2022-04-08 16:55:15'),
(131, 'Zain', 'customer_name', 'App\\Order', 657, '2022-04-10 22:06:27', '2022-04-10 22:06:27'),
(132, NULL, 'customer_name', 'App\\Order', 658, '2022-04-11 09:13:31', '2022-04-11 09:13:31'),
(133, 'jawad', 'customer_name', 'App\\Order', 659, '2022-04-11 11:46:04', '2022-04-11 11:46:04'),
(134, 'zain', 'customer_name', 'App\\Order', 660, '2022-04-11 11:56:06', '2022-04-11 11:56:06'),
(135, 'zain', 'customer_name', 'App\\Order', 661, '2022-04-11 11:56:41', '2022-04-11 11:56:41'),
(136, NULL, 'customer_name', 'App\\Order', 662, '2022-04-12 00:46:04', '2022-04-12 00:46:04'),
(137, '0', 'disable_callwaiter', 'App\\Restorant', 40, '2022-04-12 16:41:05', '2022-04-12 16:41:05'),
(138, '0', 'disable_ordering', 'App\\Restorant', 40, '2022-04-12 16:41:05', '2022-04-12 16:41:05'),
(139, 'asdas', 'customer_name', 'App\\Order', 663, '2022-04-13 12:37:12', '2022-04-13 12:37:12');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '0 - Fixed, 1 - Percentage',
  `price` double(8,2) NOT NULL,
  `active_from` date NOT NULL,
  `active_to` date NOT NULL,
  `limit_to_num_uses` int(11) NOT NULL,
  `used_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `restaurant_id`, `type`, `price`, `active_from`, `active_to`, `limit_to_num_uses`, `used_count`, `created_at`, `updated_at`) VALUES
(1, 'تجربة', '12', 27, 1, 10.00, '2022-03-01', '2022-03-31', 100, 0, '2022-03-06 01:11:32', '2022-03-06 01:14:28');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `expenses_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `expenses_vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `date`, `reference`, `description`, `amount`, `restaurant_id`, `expenses_category_id`, `expenses_vendor_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2021-11-06', 'EXP0', '', 29.00, 1, 2, 3, '2021-12-30 22:33:49', '2021-12-30 22:33:49', NULL),
(2, '2021-12-18', 'EXP1', '', 48.00, 1, 1, 1, '2021-12-30 22:33:49', '2021-12-30 22:33:49', NULL),
(3, '2021-12-30', 'EXP2', '', 14.00, 1, 2, 3, '2021-12-30 22:33:49', '2021-12-30 22:33:49', NULL),
(4, '2021-11-15', 'EXP3', '', 34.00, 1, 2, 2, '2021-12-30 22:33:49', '2021-12-30 22:33:49', NULL),
(5, '2021-12-02', 'EXP4', '', 26.00, 1, 2, 2, '2021-12-30 22:33:49', '2021-12-30 22:33:49', NULL),
(6, '2021-12-23', 'EXP5', '', 19.00, 1, 2, 1, '2021-12-30 22:33:49', '2021-12-30 22:33:49', NULL),
(7, '2021-12-24', 'EXP6', '', 20.00, 1, 2, 1, '2021-12-30 22:33:49', '2021-12-30 22:33:49', NULL),
(8, '2021-11-01', 'EXP7', '', 44.00, 1, 1, 2, '2021-12-30 22:33:49', '2021-12-30 22:33:49', NULL),
(9, '2021-11-09', 'EXP8', '', 49.00, 1, 2, 2, '2021-12-30 22:33:49', '2021-12-30 22:33:49', NULL),
(10, '2021-11-04', 'EXP9', '', 12.00, 1, 1, 2, '2021-12-30 22:33:49', '2021-12-30 22:33:49', NULL),
(11, '2021-12-23', 'EXP10', '', 37.00, 1, 1, 2, '2021-12-30 22:33:49', '2021-12-30 22:33:49', NULL),
(12, '2021-12-07', 'EXP11', '', 14.00, 1, 1, 2, '2021-12-30 22:33:49', '2021-12-30 22:33:49', NULL),
(13, '2021-12-11', 'EXP12', '', 28.00, 1, 1, 2, '2021-12-30 22:33:49', '2021-12-30 22:33:49', NULL),
(14, '2021-11-15', 'EXP13', '', 41.00, 1, 2, 2, '2021-12-30 22:33:49', '2021-12-30 22:33:49', NULL),
(15, '2021-12-03', 'EXP14', '', 39.00, 1, 1, 3, '2021-12-30 22:33:49', '2021-12-30 22:33:49', NULL),
(16, '2021-12-06', 'EXP15', '', 34.00, 1, 2, 2, '2021-12-30 22:33:49', '2021-12-30 22:33:49', NULL),
(17, '2021-12-29', 'EXP16', '', 32.00, 1, 2, 1, '2021-12-30 22:33:49', '2021-12-30 22:33:49', NULL),
(18, '2021-12-20', 'EXP17', '', 27.00, 1, 2, 2, '2021-12-30 22:33:49', '2021-12-30 22:33:49', NULL),
(19, '2021-12-05', 'EXP18', '', 17.00, 1, 2, 1, '2021-12-30 22:33:49', '2021-12-30 22:33:49', NULL),
(20, '2021-12-16', 'EXP19', '', 13.00, 1, 1, 1, '2021-12-30 22:33:49', '2021-12-30 22:33:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses_category`
--

CREATE TABLE `expenses_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses_category`
--

INSERT INTO `expenses_category` (`id`, `name`, `code`, `restaurant_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Suppliers', 'C1', 1, NULL, NULL, NULL),
(2, 'Utilities', 'C2', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses_vendor`
--

CREATE TABLE `expenses_vendor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses_vendor`
--

INSERT INTO `expenses_vendor` (`id`, `name`, `code`, `restaurant_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Supplier 1', 'S1', 1, NULL, NULL, NULL),
(2, 'Supplier 2', 'S2', 1, NULL, NULL, NULL),
(3, 'Supplier 3', 'S3', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `extras`
--

CREATE TABLE `extras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `extra_for_all_variants` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extras`
--

INSERT INTO `extras` (`id`, `item_id`, `price`, `name`, `created_at`, `updated_at`, `deleted_at`, `extra_for_all_variants`) VALUES
(1, 1, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(2, 1, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(3, 1, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(4, 2, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(5, 2, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(6, 2, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(7, 3, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(8, 3, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(9, 3, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(10, 4, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(11, 4, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(12, 4, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(13, 5, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(14, 5, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(15, 5, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(16, 6, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(17, 6, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(18, 6, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(19, 7, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(20, 7, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(21, 7, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 0),
(22, 7, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 0),
(23, 8, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(24, 8, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(25, 8, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 0),
(26, 8, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 0),
(27, 9, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(28, 9, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(29, 9, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 0),
(30, 9, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 0),
(31, 10, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(32, 10, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(33, 10, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 0),
(34, 10, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 0),
(35, 11, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(36, 11, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(37, 11, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 0),
(38, 11, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 0),
(39, 12, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(40, 12, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(41, 12, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 0),
(42, 12, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 0),
(43, 13, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(44, 13, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(45, 13, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 0),
(46, 13, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 0),
(47, 14, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(48, 14, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(49, 14, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 0),
(50, 14, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 0),
(51, 15, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(52, 15, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(53, 15, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 0),
(54, 15, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 0),
(55, 16, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(56, 16, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(57, 16, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 0),
(58, 16, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 0),
(59, 17, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(60, 17, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 1),
(61, 17, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 0),
(62, 17, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:44', '2021-12-31 02:37:42', NULL, 0),
(63, 61, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(64, 61, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(65, 61, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(66, 62, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(67, 62, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(68, 62, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(69, 63, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(70, 63, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(71, 63, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(72, 64, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(73, 64, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(74, 64, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(75, 65, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(76, 65, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(77, 65, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(78, 66, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(79, 66, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(80, 66, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(81, 67, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(82, 67, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(83, 67, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 0),
(84, 67, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 0),
(85, 68, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(86, 68, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(87, 68, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 0),
(88, 68, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 0),
(89, 69, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(90, 69, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(91, 69, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 0),
(92, 69, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 0),
(93, 70, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(94, 70, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(95, 70, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 0),
(96, 70, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 0),
(97, 71, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(98, 71, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(99, 71, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 0),
(100, 71, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 0),
(101, 72, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(102, 72, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(103, 72, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 0),
(104, 72, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 0),
(105, 73, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(106, 73, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(107, 73, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 0),
(108, 73, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 0),
(109, 74, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(110, 74, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(111, 74, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 0),
(112, 74, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 0),
(113, 75, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(114, 75, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(115, 75, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 0),
(116, 75, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 0),
(117, 76, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(118, 76, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(119, 76, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 0),
(120, 76, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 0),
(121, 77, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(122, 77, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(123, 77, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 0),
(124, 77, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 0),
(125, 86, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(126, 86, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(127, 86, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 0),
(128, 86, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 0),
(129, 87, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(130, 87, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 1),
(131, 87, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:42', NULL, 0),
(132, 87, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 0),
(133, 88, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(134, 88, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(135, 88, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 0),
(136, 88, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 0),
(137, 89, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(138, 89, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(139, 89, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 0),
(140, 89, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 0),
(141, 90, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(142, 90, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(143, 90, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 0),
(144, 90, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 0),
(145, 91, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(146, 91, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(147, 91, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 0),
(148, 91, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 0),
(149, 92, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(150, 92, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(151, 92, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 0),
(152, 92, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 0),
(153, 93, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(154, 93, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(155, 93, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 0),
(156, 93, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 0),
(157, 94, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(158, 94, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(159, 94, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 0),
(160, 94, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 0),
(161, 95, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(162, 95, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(163, 95, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 0),
(164, 95, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 0),
(165, 96, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(166, 96, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(167, 96, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 0),
(168, 96, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 0),
(169, 103, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(170, 103, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(171, 103, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(172, 104, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(173, 104, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(174, 104, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(175, 105, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(176, 105, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(177, 105, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(178, 106, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(179, 106, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(180, 106, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(181, 107, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(182, 107, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(183, 107, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(184, 108, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(185, 108, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(186, 108, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL, 1),
(187, 146, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(188, 146, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(189, 146, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(190, 146, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(191, 147, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(192, 147, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(193, 147, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(194, 147, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(195, 148, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(196, 148, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(197, 148, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(198, 148, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(199, 149, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(200, 149, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(201, 149, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(202, 149, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(203, 150, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(204, 150, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(205, 150, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(206, 150, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(207, 151, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(208, 151, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(209, 151, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(210, 151, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(211, 152, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(212, 152, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(213, 152, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(214, 152, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(215, 153, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(216, 153, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(217, 153, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(218, 153, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(219, 154, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(220, 154, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(221, 154, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(222, 154, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(223, 155, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(224, 155, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(225, 155, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(226, 155, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(227, 156, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(228, 156, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(229, 156, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(230, 156, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(231, 165, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(232, 165, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(233, 165, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(234, 166, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(235, 166, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(236, 166, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(237, 167, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(238, 167, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(239, 167, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(240, 168, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(241, 168, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(242, 168, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(243, 169, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(244, 169, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(245, 169, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(246, 170, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(247, 170, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(248, 170, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(249, 180, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(250, 180, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(251, 180, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(252, 180, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(253, 181, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(254, 181, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(255, 181, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(256, 181, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(257, 182, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(258, 182, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(259, 182, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(260, 182, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(261, 183, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(262, 183, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(263, 183, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(264, 183, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(265, 184, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(266, 184, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(267, 184, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(268, 184, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(269, 185, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(270, 185, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(271, 185, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(272, 185, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(273, 186, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(274, 186, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(275, 186, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(276, 186, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(277, 187, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(278, 187, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(279, 187, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(280, 187, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(281, 188, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(282, 188, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(283, 188, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(284, 188, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(285, 189, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(286, 189, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(287, 189, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(288, 189, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(289, 190, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(290, 190, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(291, 190, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(292, 190, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 0),
(293, 191, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(294, 191, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(295, 191, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(296, 192, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(297, 192, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(298, 192, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(299, 193, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(300, 193, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(301, 193, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(302, 194, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(303, 194, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(304, 194, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(305, 195, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(306, 195, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(307, 195, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(308, 196, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(309, 196, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(310, 196, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL, 1),
(311, 239, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(312, 239, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(313, 239, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(314, 240, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(315, 240, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(316, 240, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(317, 241, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(318, 241, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(319, 241, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(320, 242, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(321, 242, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(322, 242, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(323, 243, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(324, 243, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(325, 243, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(326, 244, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(327, 244, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(328, 244, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(329, 245, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(330, 245, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(331, 245, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(332, 245, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(333, 246, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(334, 246, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(335, 246, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(336, 246, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(337, 247, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(338, 247, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(339, 247, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(340, 247, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(341, 248, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(342, 248, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(343, 248, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(344, 248, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(345, 249, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(346, 249, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(347, 249, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(348, 249, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(349, 250, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(350, 250, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(351, 250, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(352, 250, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(353, 251, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(354, 251, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(355, 251, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(356, 251, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(357, 252, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(358, 252, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(359, 252, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(360, 252, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(361, 253, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(362, 253, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(363, 253, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(364, 253, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(365, 254, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(366, 254, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(367, 254, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(368, 254, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(369, 255, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(370, 255, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(371, 255, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(372, 255, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(373, 265, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(374, 265, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(375, 265, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(376, 266, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(377, 266, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(378, 266, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(379, 267, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(380, 267, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(381, 267, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(382, 268, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(383, 268, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(384, 268, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(385, 269, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(386, 269, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(387, 269, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(388, 270, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(389, 270, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(390, 270, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(391, 271, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(392, 271, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(393, 271, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(394, 271, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(395, 272, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(396, 272, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(397, 272, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(398, 272, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(399, 273, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(400, 273, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(401, 273, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(402, 273, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(403, 274, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(404, 274, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(405, 274, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(406, 274, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(407, 275, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(408, 275, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(409, 275, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(410, 275, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(411, 276, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(412, 276, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(413, 276, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(414, 276, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(415, 277, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(416, 277, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(417, 277, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(418, 277, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(419, 278, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(420, 278, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(421, 278, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(422, 278, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(423, 279, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(424, 279, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(425, 279, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(426, 279, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(427, 280, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(428, 280, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(429, 280, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(430, 280, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(431, 281, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(432, 281, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 1),
(433, 281, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(434, 281, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL, 0),
(435, 316, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(436, 316, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(437, 316, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(438, 317, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(439, 317, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(440, 317, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(441, 318, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(442, 318, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(443, 318, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(444, 319, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(445, 319, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(446, 319, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(447, 320, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(448, 320, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(449, 320, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(450, 321, 1.20, '{\"ar\":\"Extra cheese\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(451, 321, 0.30, '{\"ar\":\"Extra olives\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(452, 321, 1.50, '{\"ar\":\"Tuna\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(453, 330, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(454, 330, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(455, 330, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 0),
(456, 330, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 0),
(457, 331, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(458, 331, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(459, 331, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 0),
(460, 331, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 0),
(461, 332, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(462, 332, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(463, 332, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 0),
(464, 332, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 0),
(465, 333, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(466, 333, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(467, 333, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 0),
(468, 333, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 0),
(469, 334, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(470, 334, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(471, 334, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 0),
(472, 334, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 0),
(473, 335, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(474, 335, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(475, 335, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 0),
(476, 335, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 0),
(477, 336, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(478, 336, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(479, 336, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 0),
(480, 336, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 0),
(481, 337, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(482, 337, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(483, 337, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 0),
(484, 337, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 0),
(485, 338, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(486, 338, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(487, 338, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 0),
(488, 338, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 0),
(489, 339, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(490, 339, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(491, 339, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 0),
(492, 339, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 0),
(493, 340, 1.00, '{\"ar\":\"Olive\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(494, 340, 0.50, '{\"ar\":\"Mushroom\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 1),
(495, 340, 2.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 0),
(496, 340, 1.00, '{\"ar\":\"Peperoni\"}', '2021-12-30 22:33:48', '2021-12-31 02:37:43', NULL, 0),
(497, 389, 4.00, 'صوص شوكولاتة', '2022-01-16 16:07:14', '2022-01-17 15:18:01', '2022-01-17 15:18:01', 1),
(498, 456, 6.00, 'ماكرون زعفران', '2022-01-17 17:48:10', '2022-01-17 17:48:10', NULL, 1),
(499, 456, 5.00, 'ماكرون توت', '2022-01-17 17:49:34', '2022-01-17 17:49:34', NULL, 1),
(500, 456, 5.00, 'ماكرون قهوة', '2022-01-17 17:50:17', '2022-01-17 17:50:17', NULL, 1),
(501, 456, 5.00, 'ماكرون شوكولاتة', '2022-01-17 17:50:31', '2022-01-17 17:50:31', NULL, 1),
(502, 456, 5.00, 'ماكرون سولتد كراميل', '2022-01-17 17:50:50', '2022-01-17 17:50:50', NULL, 1),
(503, 456, 5.00, 'ماكرون لافندر', '2022-01-17 17:51:08', '2022-01-17 17:51:08', NULL, 1),
(504, 456, 5.00, 'ماكرون مستكه', '2022-01-17 17:51:22', '2022-01-17 17:51:22', NULL, 1),
(505, 456, 5.00, 'ماكرون لوتس', '2022-01-17 17:51:41', '2022-01-17 17:51:41', NULL, 1),
(506, 456, 6.00, 'ماكرون بستاشيو', '2022-01-17 17:54:44', '2022-01-17 17:54:44', NULL, 1),
(507, 456, 6.00, 'ماكرون توت و فول سوداني', '2022-01-17 17:56:27', '2022-01-17 17:56:27', NULL, 1),
(508, 479, 0.00, 'زبادي يوناني سلدة', '2022-01-21 14:12:47', '2022-01-21 14:12:47', NULL, 1),
(509, 479, 0.00, 'زبادي يوناني توت', '2022-01-21 14:13:05', '2022-01-21 14:13:05', NULL, 1),
(510, 407, 0.00, 'كولمبي بابلو', '2022-01-22 23:31:13', '2022-01-22 23:31:34', '2022-01-22 23:31:34', 1),
(511, 558, 6.00, 'ماكرون زعفران', '2022-02-12 00:06:57', '2022-02-12 00:06:57', NULL, 1),
(512, 558, 5.00, 'ماكرون توت', '2022-02-12 00:06:57', '2022-02-12 00:06:57', NULL, 1),
(513, 558, 5.00, 'ماكرون قهوة', '2022-02-12 00:06:57', '2022-02-12 00:06:57', NULL, 1),
(514, 558, 5.00, 'ماكرون شوكولاتة', '2022-02-12 00:06:57', '2022-02-12 00:06:57', NULL, 1),
(515, 558, 5.00, 'ماكرون سولتد كراميل', '2022-02-12 00:06:57', '2022-02-12 00:06:57', NULL, 1),
(516, 558, 5.00, 'ماكرون لافندر', '2022-02-12 00:06:57', '2022-02-12 00:06:57', NULL, 1),
(517, 558, 5.00, 'ماكرون مستكه', '2022-02-12 00:06:57', '2022-02-12 00:06:57', NULL, 1),
(518, 558, 5.00, 'ماكرون لوتس', '2022-02-12 00:06:57', '2022-02-12 00:06:57', NULL, 1),
(519, 558, 6.00, 'ماكرون بستاشيو', '2022-02-12 00:06:57', '2022-02-12 00:06:57', NULL, 1),
(520, 558, 6.00, 'ماكرون توت و فول سوداني', '2022-02-12 00:06:57', '2022-02-12 00:06:57', NULL, 1),
(521, 564, 0.00, 'زبادي يوناني سلدة', '2022-02-12 00:06:57', '2022-02-12 00:06:57', NULL, 1),
(522, 564, 0.00, 'زبادي يوناني توت', '2022-02-12 00:06:57', '2022-02-12 00:06:57', NULL, 1),
(523, 344, 3.00, 'اكسترا شوت', '2022-02-16 21:37:24', '2022-02-16 21:37:24', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hours`
--

CREATE TABLE `hours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `0_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `0_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `1_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `1_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `2_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `2_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `3_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `3_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `4_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `4_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `5_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `5_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `6_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `6_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restorant_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hours`
--

INSERT INTO `hours` (`id`, `created_at`, `updated_at`, `0_from`, `0_to`, `1_from`, `1_to`, `2_from`, `2_to`, `3_from`, `3_to`, `4_from`, `4_to`, `5_from`, `5_to`, `6_from`, `6_to`, `restorant_id`) VALUES
(1, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 1),
(2, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 2),
(3, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 3),
(4, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 4),
(5, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 5),
(6, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 6),
(7, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 7),
(8, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 8),
(9, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 9),
(10, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 10),
(11, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 11),
(12, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 12),
(13, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 13),
(14, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 14),
(15, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 15),
(16, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 16),
(17, '2021-12-31 01:31:05', '2022-01-01 23:05:20', '12:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '1:00 AM', '5:00 AM', 17),
(18, '2022-01-11 21:11:55', '2022-01-31 08:12:10', '12:00 AM', '11:59 PM', '12:00 AM', '11:59 PM', '12:00 AM', '11:59 PM', '12:00 AM', '11:59 PM', '12:00 AM', '11:59 PM', '12:00 AM', '11:59 PM', '12:00 AM', '11:59 PM', 18),
(19, '2022-01-11 22:28:06', '2022-01-11 22:28:06', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', 19),
(20, '2022-01-11 22:28:41', '2022-01-11 22:28:41', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', 20),
(21, '2022-01-11 22:31:18', '2022-03-31 23:24:56', '7:00 AM', '2:00 AM', '7:00 AM', '2:00 AM', '7:00 AM', '2:00 PM', '7:00 AM', '4:00 AM', '7:00 AM', '4:00 AM', '7:00 AM', '2:00 AM', '7:00 AM', '2:00 AM', 21),
(22, '2022-01-11 22:32:47', '2022-01-11 22:32:47', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', 22),
(23, '2022-01-11 22:57:33', '2022-01-11 22:57:33', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', 23),
(24, '2022-01-11 23:06:14', '2022-01-11 23:06:14', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', 24),
(25, '2022-01-11 23:13:46', '2022-01-11 23:13:46', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', 25),
(26, '2022-01-11 23:57:57', '2022-01-12 02:02:40', '1:00 AM', '5:00 AM', '9:00 AM', '9:00 AM', '1:00 AM', '9:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', 26),
(30, '2022-02-03 11:26:19', '2022-04-18 10:27:16', '9:00 AM', '8:59 AM', '9:00 AM', '8:59 AM', '9:00 AM', '8:59 AM', '12:00 AM', '11:59 PM', '9:00 AM', '11:59 PM', '12:00 PM', '11:59 PM', '9:00 AM', '8:59 AM', 27),
(31, '2022-02-08 12:50:34', '2022-02-08 12:50:34', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', 28),
(32, '2022-02-08 13:04:14', '2022-02-08 13:04:14', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', 29),
(33, '2022-02-08 18:04:42', '2022-02-08 18:04:42', '9:00 AM', '11:00 PM', '9:00 AM', '11:00 PM', '9:00 AM', '11:00 PM', '9:00 AM', '11:00 PM', '9:00 AM', '11:00 PM', '1:00 AM', '11:00 PM', '1:00 AM', '11:00 PM', 30),
(34, '2022-02-10 20:22:22', '2022-02-10 20:22:22', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', 31),
(35, '2022-02-11 21:14:22', '2022-02-11 21:14:22', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', 32),
(36, '2022-02-12 00:06:57', '2022-03-16 00:37:14', '6:00 AM', '5:59 AM', '6:00 AM', '5:59 AM', '6:00 AM', '5:59 AM', '6:00 AM', '5:59 AM', '6:00 AM', '5:59 AM', '6:00 AM', '5:59 AM', '6:00 AM', '5:59 AM', 33),
(38, '2022-02-14 23:17:01', '2022-02-14 23:22:26', '09:00', '17:00', '01:00', '17:00', '09:00', '17:00', '09:00', '17:00', '09:00', '17:00', '09:00', '17:00', '09:00', '17:00', 34),
(39, '2022-02-17 02:14:45', '2022-02-17 02:14:45', '09:00', '17:00', '09:00', '17:00', '09:00', '17:00', '09:00', '17:00', '09:00', '17:00', '09:00', '17:00', '09:00', '17:00', 35),
(40, '2022-02-25 00:03:47', '2022-02-25 00:03:47', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', 36),
(41, '2022-03-06 13:22:30', '2022-03-06 13:22:30', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', 37),
(42, '2022-03-08 13:25:10', '2022-04-15 17:54:47', '1:00 AM', '5:00 AM', '12:00 AM', '11:00 PM', '12:00 AM', '11:00 PM', '1:00 AM', '11:59 PM', '12:00 AM', '11:00 PM', '9:00 AM', '5:00 AM', '12:00 AM', '11:08 PM', 38),
(43, '2022-03-22 11:34:33', '2022-04-09 09:22:28', '9:00 AM', '8:55 AM', '9:00 AM', '8:55 AM', '9:00 AM', '8:55 AM', '9:00 AM', '8:55 AM', '9:00 AM', '8:55 AM', '9:00 AM', '8:55 AM', '9:00 AM', '8:55 AM', 39),
(44, '2022-04-12 16:41:05', '2022-04-12 16:41:05', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', 40);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(455) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `available` int(11) NOT NULL DEFAULT '1',
  `has_variants` int(11) NOT NULL DEFAULT '0',
  `vat` double(8,2) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `enable_system_variants` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `image`, `price`, `category_id`, `created_at`, `updated_at`, `available`, `has_variants`, `vat`, `deleted_at`, `enable_system_variants`) VALUES
(1, '{\"ar\":\"Caprese Salad (350gr)\"}', '{\"ar\":\"peeled tomatoes, mozzarella salad, Genovese pesto\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 1, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(2, '{\"ar\":\"Caesar Salad (400g)\"}', '{\"ar\":\"iceberg, bacon, chicken breast, parmesan, Caesar sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 1, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(3, '{\"ar\":\"Salad Napoli (350g)\"}', '{\"ar\":\"iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 1, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(4, '{\"ar\":\"Green tuna salad (400g)\"}', '{\"ar\":\"lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 1, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(5, '{\"ar\":\"Green salad (350g)\"}', '{\"ar\":\"lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 1, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(6, '{\"ar\":\"Greek Salad (500g)\"}', '{\"ar\":\"tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 1, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(7, '{\"ar\":\"Mozzarella Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 2, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(8, '{\"ar\":\"Prosciutto crust pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 2, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(9, '{\"ar\":\"Pepperoni Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 2, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(10, '{\"ar\":\"Carriola Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 2, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(11, '{\"ar\":\"Perugia Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 2, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(12, '{\"ar\":\"Pizza Napoli\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 2, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(13, '{\"ar\":\"Margarita Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella Sabelli, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 2, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(14, '{\"ar\":\"Combo Pizza 50\\/50 (70cm)\"}', '{\"ar\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 2, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(15, '{\"ar\":\"Capricciosa Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 2, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(16, '{\"ar\":\"Quattro Formaggi Pizza\"}', '{\"ar\":\"cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 2, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(17, '{\"ar\":\"Marco Polo Pizza\"}', '{\"ar\":\"tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 2, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(18, '{\"ar\":\"Spaghetti Carbonara (450g)\"}', '{\"ar\":\"fresh pasta, cream (animal), onion, pancakes (smoked bacon), egg, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/b65d5389-4742-4a78-9d94-f31110984db6', 11.99, 3, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(19, '{\"ar\":\"Spaghetti Formaggi (450g)\"}', '{\"ar\":\"fresh pasta, cream (animal), blue cheese, emmental, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4a2067cb-f39c-4b26-83ef-9097512d3328', 11.99, 3, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(20, '{\"ar\":\"Tagliatelle with mushrooms (400g)\"}', '{\"ar\":\"fresh pasta, cream (animal), mushrooms, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0bae6238-dda6-4630-b300-5125fde865d4', 11.99, 3, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(21, '{\"ar\":\"Chicken risotto (450g)\"}', '{\"ar\":\"Arborio rice, chicken breast, onion, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/033c32c1-cdae-495e-910f-66b5fa239297', 11.99, 3, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(22, '{\"ar\":\"Risotto with mushrooms (450g)\"}', '{\"ar\":\"Arborio rice, mushrooms, garlic, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/08d82944-f947-48f4-a197-a3199bb3b6e7', 11.99, 3, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(23, '{\"ar\":\"Tagliatelle with Bolognese Sauce (400g)\"}', '{\"ar\":\"fresh pasta, bolognese sauce, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cc695ba9-8af3-47a4-8e41-dc1706cbf2c3', 11.99, 3, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(24, '{\"ar\":\"Lasagna Classic (450g)\"}', '{\"ar\":\"Bolognese sauce, mozzarella Sabelli\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/94d44523-ec90-4069-bd11-eb9588207c31', 11.99, 4, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(25, '{\"ar\":\"Napoli Lasagna (450g)\"}', '{\"ar\":\"chicken fillet, cream (animal), corn, blue cheese, mozzarella Sabelli\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4c367950-992c-4711-ab56-42bed10de86c', 11.99, 4, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(26, '{\"ar\":\"Lasagna Formagio (450g)\"}', '{\"ar\":\"smoked cheese, blue cheese, emmental, cream (animal), mozzarella Sabelli\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/8bafc3ec-82e7-46f8-964a-77a13e4ddf96', 11.99, 4, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(27, '{\"ar\":\"Wild Wild West\"}', '{\"ar\":\"freshly baked brioche bread, 100% freshly ground beef Limousine, crispy bacon, melted cheddar, brewed in Skapto beer onion rings, homemade BBQ sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/c8d27bcc-54da-4c18-b8e6-f1414c71612c', 8.99, 5, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(28, '{\"ar\":\"Skapto Bulleit Bourbon\"}', '{\"ar\":\"juicy 100% minced beef, crispy bacon, melted cheddar, homemade Bulleit bourbon sauce, homemade marinated red onion, pickles, iceberg\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4c2d9b73-685a-4252-84a3-6ba354f3a59c', 10.99, 5, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(29, '{\"ar\":\"Back to Basics\"}', '{\"ar\":\"juicy 100% minced beef, melted cheddar, pickles, iceberg, homemade Skapto sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/643dd56b-684a-47f9-b72f-0fec59c16cb0', 7.99, 5, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(30, '{\"ar\":\"Cheesus\"}', '{\"ar\":\"juicy 100% minced beef, crispy bacon, melted cheddar, fresh red onion, pickles, tomato, iceberg, lots of Hellman\'s mustard and ketchup\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/1084e812-7aa7-471c-9ae2-96dd5f561935', 9.99, 5, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(31, '{\"ar\":\"Skaptoburger\"}', '{\"ar\":\"juicy 100% freshly ground veal, crispy bacon, melted cheddar, fresh red onion, iceberg, tomato, homemade spicy Skapto sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/7998ea89-e4b6-4021-ad47-6a1aa442e093', 9.99, 5, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(32, '{\"ar\":\"El Pollo Loco\"}', '{\"ar\":\"Breaded until golden chicken fillet, crispy bacon, pickles, tomato, iceberg, mayonnaise and Hellman\'s mustard, barbecue sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', 10.99, 5, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(33, '{\"ar\":\"SA7OSH1\"}', '{\"ar\":\"juicy 100% minced beef, breaded to golden yellow, crispy bacon, melted cheddar, fresh red onion, arugula, homemade Skapto sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5bf2bb33-1b3b-4911-a7f0-618d17719ba2', 12.99, 5, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(34, '{\"ar\":\"Homemade french fries with ranch sauce (150g)\"}', '{\"ar\":\"French fries, homemade ranch dressing, cheddar cheese, fully \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/aa05caca-d1c1-4b27-8615-78e8686b95e3', 2.98, 6, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(35, '{\"ar\":\"Homemade french fries with cheddar and jalapenos (190g)\"}', '{\"ar\":\"Olive oil, cheddar, green mix\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/b3ee655e-29d2-4c35-86df-89b8200c9142', 3.97, 6, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(36, '{\"ar\":\"Homemade french fries (100g)\"}', '{\"ar\":\"100g\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/86289e4c-360c-4e5c-aa02-8d2ba791d954', 1.99, 6, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(37, '{\"ar\":\"Mexellente (350g)\"}', '{\"ar\":\"iceberg, red pepper, tomato, sweet corn, red beans, fresh red onions, parsley, lime juice, sweet chili sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/58d57b7a-8873-4559-94af-cf50501a1bfa', 6.99, 7, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(38, '{\"ar\":\"Homemade Potatoes with Cheddar and Jalapenos (300g)\"}', '{\"ar\":\"Cheddar cheese, butter, russet potatoes, rings, all purpose flour\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/b130e310-c024-49fa-99c2-1f0182b810f6', 6.99, 8, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(39, '{\"ar\":\"Homemade Potatoes with Ranch Sauce (300g)\"}', '{\"ar\":\"Sour cream, ranch dressing, bacon, potatoes, cheddar cheese\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/dd0c87c9-d862-45a6-a933-7060d68c749c', 5.99, 8, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(40, '{\"ar\":\"Cheddar Sticks (250g)\"}', '{\"ar\":\"String cheese, bread crumbs, smoked paprika, egg\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3dfb1358-a853-4d7c-93f1-36eaf06ee2d7', 7.99, 8, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(41, '{\"ar\":\"Schweppes Tonic (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 9, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(42, '{\"ar\":\"Sprite (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 9, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(43, '{\"ar\":\"Orange Fanta (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 9, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(44, '{\"ar\":\"Coca Cola (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 9, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(45, '{\"ar\":\"Burrito with chicken\"}', '{\"ar\":\"chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 10, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(46, '{\"ar\":\"Burrito Veggie\"}', '{\"ar\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 10, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(47, '{\"ar\":\"Burrito with beef roast\"}', '{\"ar\":\"veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 10, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(48, '{\"ar\":\"Burrito with pork\"}', '{\"ar\":\"pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 10, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(49, '{\"ar\":\"Quesadilla with chicken\"}', '{\"ar\":\"Cassadia with chicken - large chicken on a plate, 2 pieces of tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad on desire \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/807afb68-bba2-4a7f-be98-54586047d45b', 6.69, 11, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(50, '{\"ar\":\"Quesadilla with veal\"}', '{\"ar\":\"beef roast or minced meat, 2 pieces of tortilla tortilla, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/ffb24714-946d-43a8-a732-501cd742bd8c', 7.69, 11, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(51, '{\"ar\":\"Vegetarian Quesadilla\"}', '{\"ar\":\"2pcs tortillas, plate peppers, plate onions, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/005c9ff4-61ae-4fa4-a204-3a14db63856f', 6.19, 11, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(52, '{\"ar\":\"Quesadilla with Pork\"}', '{\"ar\":\"pork roast, 2 tortilla tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, olives, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3d0b6a8c-9b56-46d9-bf3c-f69d2e3b30f8', 6.69, 11, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(53, '{\"ar\":\"Chicken Taco (250g)\"}', '{\"ar\":\"tortilla tortilla 16cm, chicken on a plate, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/fcbc8d58-2e69-4b91-8dfe-b8ff8920023c', 3.49, 12, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(54, '{\"ar\":\"Taco with beef roasted meat (250g)\"}', '{\"ar\":\"tortilla tortilla 16cm, veal minced meat, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6681a3c8-17df-42db-a09a-aed0a327e226', 3.99, 12, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(55, '{\"ar\":\"Pork Taco (250g)\"}', '{\"ar\":\"16cm tortilla cake, pork roast, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2a0560e8-b93a-405d-9f44-86fcde00069d', 3.49, 12, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(56, '{\"ar\":\"Tacos Veggie (250g)\"}', '{\"ar\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6f9e8892-4a28-4c99-ab24-57179a1424b9', 2.99, 12, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(57, '{\"ar\":\"Burrito Vegetarian in a Bowl (450g)\"}', '{\"ar\":\"rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/eb8cb594-0317-4f1c-8840-cd70bd6d34c3', 6.99, 13, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(58, '{\"ar\":\"Burrito with chicken in a bowl(450g)\"}', '{\"ar\":\"chicken, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/e9c18f00-8e49-40e0-b723-da78c7e8ce6c', 7.99, 13, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(59, '{\"ar\":\"Burrito with beef in a bowl (450g)\"}', '{\"ar\":\"veal, rice, plate peppers, onion, red beans, spiced corn, tomatoes, iceberg, yellow cheese, cream sauce or mayonnaise sauce, hot salts if desired\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/277179e4-104b-477b-8c7b-9b8b55b9161d', 8.99, 13, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(60, '{\"ar\":\"Burrito with pork in a bowl (450g)\"}', '{\"ar\":\"pork, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2a65093d-b681-4257-916b-77eccaf2c5e6', 7.99, 13, '2021-12-30 22:33:44', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(61, '{\"ar\":\"Caprese Salad (350gr)\"}', '{\"ar\":\"peeled tomatoes, mozzarella salad, Genovese pesto\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 14, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(62, '{\"ar\":\"Caesar Salad (400g)\"}', '{\"ar\":\"iceberg, bacon, chicken breast, parmesan, Caesar sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 14, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(63, '{\"ar\":\"Salad Napoli (350g)\"}', '{\"ar\":\"iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 14, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(64, '{\"ar\":\"Green tuna salad (400g)\"}', '{\"ar\":\"lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 14, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(65, '{\"ar\":\"Green salad (350g)\"}', '{\"ar\":\"lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 14, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(66, '{\"ar\":\"Greek Salad (500g)\"}', '{\"ar\":\"tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 14, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(67, '{\"ar\":\"Mozzarella Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 15, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(68, '{\"ar\":\"Prosciutto crust pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 15, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(69, '{\"ar\":\"Pepperoni Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 15, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(70, '{\"ar\":\"Carriola Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 15, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(71, '{\"ar\":\"Perugia Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 15, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(72, '{\"ar\":\"Pizza Napoli\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 15, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(73, '{\"ar\":\"Margarita Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella Sabelli, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 15, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(74, '{\"ar\":\"Combo Pizza 50\\/50 (70cm)\"}', '{\"ar\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 15, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(75, '{\"ar\":\"Capricciosa Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 15, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(76, '{\"ar\":\"Quattro Formaggi Pizza\"}', '{\"ar\":\"cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 15, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(77, '{\"ar\":\"Marco Polo Pizza\"}', '{\"ar\":\"tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 15, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(78, '{\"ar\":\"Burrito with chicken\"}', '{\"ar\":\"chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 16, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(79, '{\"ar\":\"Burrito Veggie\"}', '{\"ar\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 16, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(80, '{\"ar\":\"Burrito with beef roast\"}', '{\"ar\":\"veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 16, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(81, '{\"ar\":\"Burrito with pork\"}', '{\"ar\":\"pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 16, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(82, '{\"ar\":\"Schweppes Tonic (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 17, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(83, '{\"ar\":\"Sprite (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 17, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(84, '{\"ar\":\"Orange Fanta (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 17, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(85, '{\"ar\":\"Coca Cola (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 17, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(86, '{\"ar\":\"Mozzarella Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 18, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(87, '{\"ar\":\"Prosciutto crust pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 18, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(88, '{\"ar\":\"Pepperoni Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 18, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(89, '{\"ar\":\"Carriola Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 18, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(90, '{\"ar\":\"Perugia Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 18, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(91, '{\"ar\":\"Pizza Napoli\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 18, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(92, '{\"ar\":\"Margarita Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella Sabelli, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 18, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(93, '{\"ar\":\"Combo Pizza 50\\/50 (70cm)\"}', '{\"ar\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 18, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(94, '{\"ar\":\"Capricciosa Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 18, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(95, '{\"ar\":\"Quattro Formaggi Pizza\"}', '{\"ar\":\"cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 18, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(96, '{\"ar\":\"Marco Polo Pizza\"}', '{\"ar\":\"tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 18, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 1, 21.00, NULL, 0),
(97, '{\"ar\":\"Spaghetti Carbonara (450g)\"}', '{\"ar\":\"fresh pasta, cream (animal), onion, pancakes (smoked bacon), egg, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/b65d5389-4742-4a78-9d94-f31110984db6', 11.99, 19, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(98, '{\"ar\":\"Spaghetti Formaggi (450g)\"}', '{\"ar\":\"fresh pasta, cream (animal), blue cheese, emmental, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4a2067cb-f39c-4b26-83ef-9097512d3328', 11.99, 19, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(99, '{\"ar\":\"Tagliatelle with mushrooms (400g)\"}', '{\"ar\":\"fresh pasta, cream (animal), mushrooms, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0bae6238-dda6-4630-b300-5125fde865d4', 11.99, 19, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(100, '{\"ar\":\"Chicken risotto (450g)\"}', '{\"ar\":\"Arborio rice, chicken breast, onion, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/033c32c1-cdae-495e-910f-66b5fa239297', 11.99, 19, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(101, '{\"ar\":\"Risotto with mushrooms (450g)\"}', '{\"ar\":\"Arborio rice, mushrooms, garlic, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/08d82944-f947-48f4-a197-a3199bb3b6e7', 11.99, 19, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(102, '{\"ar\":\"Tagliatelle with Bolognese Sauce (400g)\"}', '{\"ar\":\"fresh pasta, bolognese sauce, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cc695ba9-8af3-47a4-8e41-dc1706cbf2c3', 11.99, 19, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(103, '{\"ar\":\"Caprese Salad (350gr)\"}', '{\"ar\":\"peeled tomatoes, mozzarella salad, Genovese pesto\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 20, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(104, '{\"ar\":\"Caesar Salad (400g)\"}', '{\"ar\":\"iceberg, bacon, chicken breast, parmesan, Caesar sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 20, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(105, '{\"ar\":\"Salad Napoli (350g)\"}', '{\"ar\":\"iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 20, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(106, '{\"ar\":\"Green tuna salad (400g)\"}', '{\"ar\":\"lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 20, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(107, '{\"ar\":\"Green salad (350g)\"}', '{\"ar\":\"lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 20, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(108, '{\"ar\":\"Greek Salad (500g)\"}', '{\"ar\":\"tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 20, '2021-12-30 22:33:45', '2021-12-31 02:37:41', 1, 0, 21.00, NULL, 0),
(109, '{\"ar\":\"Lasagna Classic (450g)\"}', '{\"ar\":\"Bolognese sauce, mozzarella Sabelli\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/94d44523-ec90-4069-bd11-eb9588207c31', 11.99, 21, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(110, '{\"ar\":\"Napoli Lasagna (450g)\"}', '{\"ar\":\"chicken fillet, cream (animal), corn, blue cheese, mozzarella Sabelli\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4c367950-992c-4711-ab56-42bed10de86c', 11.99, 21, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(111, '{\"ar\":\"Lasagna Formagio (450g)\"}', '{\"ar\":\"smoked cheese, blue cheese, emmental, cream (animal), mozzarella Sabelli\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/8bafc3ec-82e7-46f8-964a-77a13e4ddf96', 11.99, 21, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(112, '{\"ar\":\"Quesadilla with chicken\"}', '{\"ar\":\"Cassadia with chicken - large chicken on a plate, 2 pieces of tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad on desire \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/807afb68-bba2-4a7f-be98-54586047d45b', 6.69, 22, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(113, '{\"ar\":\"Quesadilla with veal\"}', '{\"ar\":\"beef roast or minced meat, 2 pieces of tortilla tortilla, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/ffb24714-946d-43a8-a732-501cd742bd8c', 7.69, 22, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(114, '{\"ar\":\"Vegetarian Quesadilla\"}', '{\"ar\":\"2pcs tortillas, plate peppers, plate onions, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/005c9ff4-61ae-4fa4-a204-3a14db63856f', 6.19, 22, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(115, '{\"ar\":\"Quesadilla with Pork\"}', '{\"ar\":\"pork roast, 2 tortilla tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, olives, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3d0b6a8c-9b56-46d9-bf3c-f69d2e3b30f8', 6.69, 22, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(116, '{\"ar\":\"Burrito with chicken\"}', '{\"ar\":\"chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 23, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(117, '{\"ar\":\"Burrito Veggie\"}', '{\"ar\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 23, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(118, '{\"ar\":\"Burrito with beef roast\"}', '{\"ar\":\"veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 23, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(119, '{\"ar\":\"Burrito with pork\"}', '{\"ar\":\"pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 23, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(120, '{\"ar\":\"Burrito Vegetarian in a Bowl (450g)\"}', '{\"ar\":\"rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/eb8cb594-0317-4f1c-8840-cd70bd6d34c3', 6.99, 24, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(121, '{\"ar\":\"Burrito with chicken in a bowl(450g)\"}', '{\"ar\":\"chicken, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/e9c18f00-8e49-40e0-b723-da78c7e8ce6c', 7.99, 24, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(122, '{\"ar\":\"Burrito with beef in a bowl (450g)\"}', '{\"ar\":\"veal, rice, plate peppers, onion, red beans, spiced corn, tomatoes, iceberg, yellow cheese, cream sauce or mayonnaise sauce, hot salts if desired\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/277179e4-104b-477b-8c7b-9b8b55b9161d', 8.99, 24, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(123, '{\"ar\":\"Burrito with pork in a bowl (450g)\"}', '{\"ar\":\"pork, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2a65093d-b681-4257-916b-77eccaf2c5e6', 7.99, 24, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(124, '{\"ar\":\"Chicken Taco (250g)\"}', '{\"ar\":\"tortilla tortilla 16cm, chicken on a plate, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/fcbc8d58-2e69-4b91-8dfe-b8ff8920023c', 3.49, 25, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(125, '{\"ar\":\"Taco with beef roasted meat (250g)\"}', '{\"ar\":\"tortilla tortilla 16cm, veal minced meat, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6681a3c8-17df-42db-a09a-aed0a327e226', 3.99, 25, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(126, '{\"ar\":\"Pork Taco (250g)\"}', '{\"ar\":\"16cm tortilla cake, pork roast, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2a0560e8-b93a-405d-9f44-86fcde00069d', 3.49, 25, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(127, '{\"ar\":\"Tacos Veggie (250g)\"}', '{\"ar\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6f9e8892-4a28-4c99-ab24-57179a1424b9', 2.99, 25, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(128, '{\"ar\":\"Schweppes Tonic (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 26, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(129, '{\"ar\":\"Sprite (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 26, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(130, '{\"ar\":\"Orange Fanta (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 26, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(131, '{\"ar\":\"Coca Cola (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 26, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(132, '{\"ar\":\"Mexellente (350g)\"}', '{\"ar\":\"iceberg, red pepper, tomato, sweet corn, red beans, fresh red onions, parsley, lime juice, sweet chili sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/58d57b7a-8873-4559-94af-cf50501a1bfa', 6.99, 27, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(133, '{\"ar\":\"Homemade Potatoes with Cheddar and Jalapenos (300g)\"}', '{\"ar\":\"Cheddar cheese, butter, russet potatoes, rings, all purpose flour\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/b130e310-c024-49fa-99c2-1f0182b810f6', 6.99, 28, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(134, '{\"ar\":\"Homemade Potatoes with Ranch Sauce (300g)\"}', '{\"ar\":\"Sour cream, ranch dressing, bacon, potatoes, cheddar cheese\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/dd0c87c9-d862-45a6-a933-7060d68c749c', 5.99, 28, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(135, '{\"ar\":\"Cheddar Sticks (250g)\"}', '{\"ar\":\"String cheese, bread crumbs, smoked paprika, egg\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3dfb1358-a853-4d7c-93f1-36eaf06ee2d7', 7.99, 28, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(136, '{\"ar\":\"Homemade french fries with ranch sauce (150g)\"}', '{\"ar\":\"French fries, homemade ranch dressing, cheddar cheese, fully \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/aa05caca-d1c1-4b27-8615-78e8686b95e3', 2.98, 29, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(137, '{\"ar\":\"Homemade french fries with cheddar and jalapenos (190g)\"}', '{\"ar\":\"Olive oil, cheddar, green mix\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/b3ee655e-29d2-4c35-86df-89b8200c9142', 3.97, 29, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(138, '{\"ar\":\"Homemade french fries (100g)\"}', '{\"ar\":\"100g\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/86289e4c-360c-4e5c-aa02-8d2ba791d954', 1.99, 29, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(139, '{\"ar\":\"Wild Wild West\"}', '{\"ar\":\"freshly baked brioche bread, 100% freshly ground beef Limousine, crispy bacon, melted cheddar, brewed in Skapto beer onion rings, homemade BBQ sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/c8d27bcc-54da-4c18-b8e6-f1414c71612c', 8.99, 30, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(140, '{\"ar\":\"Skapto Bulleit Bourbon\"}', '{\"ar\":\"juicy 100% minced beef, crispy bacon, melted cheddar, homemade Bulleit bourbon sauce, homemade marinated red onion, pickles, iceberg\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4c2d9b73-685a-4252-84a3-6ba354f3a59c', 10.99, 30, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(141, '{\"ar\":\"Back to Basics\"}', '{\"ar\":\"juicy 100% minced beef, melted cheddar, pickles, iceberg, homemade Skapto sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/643dd56b-684a-47f9-b72f-0fec59c16cb0', 7.99, 30, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(142, '{\"ar\":\"Cheesus\"}', '{\"ar\":\"juicy 100% minced beef, crispy bacon, melted cheddar, fresh red onion, pickles, tomato, iceberg, lots of Hellman\'s mustard and ketchup\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/1084e812-7aa7-471c-9ae2-96dd5f561935', 9.99, 30, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(143, '{\"ar\":\"Skaptoburger\"}', '{\"ar\":\"juicy 100% freshly ground veal, crispy bacon, melted cheddar, fresh red onion, iceberg, tomato, homemade spicy Skapto sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/7998ea89-e4b6-4021-ad47-6a1aa442e093', 9.99, 30, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(144, '{\"ar\":\"El Pollo Loco\"}', '{\"ar\":\"Breaded until golden chicken fillet, crispy bacon, pickles, tomato, iceberg, mayonnaise and Hellman\'s mustard, barbecue sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', 10.99, 30, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(145, '{\"ar\":\"SA7OSH1\"}', '{\"ar\":\"juicy 100% minced beef, breaded to golden yellow, crispy bacon, melted cheddar, fresh red onion, arugula, homemade Skapto sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5bf2bb33-1b3b-4911-a7f0-618d17719ba2', 12.99, 30, '2021-12-30 22:33:45', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(146, '{\"ar\":\"Mozzarella Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 31, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(147, '{\"ar\":\"Prosciutto crust pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 31, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(148, '{\"ar\":\"Pepperoni Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 31, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(149, '{\"ar\":\"Carriola Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 31, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(150, '{\"ar\":\"Perugia Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 31, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(151, '{\"ar\":\"Pizza Napoli\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 31, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(152, '{\"ar\":\"Margarita Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella Sabelli, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 31, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(153, '{\"ar\":\"Combo Pizza 50\\/50 (70cm)\"}', '{\"ar\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 31, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(154, '{\"ar\":\"Capricciosa Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 31, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(155, '{\"ar\":\"Quattro Formaggi Pizza\"}', '{\"ar\":\"cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 31, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(156, '{\"ar\":\"Marco Polo Pizza\"}', '{\"ar\":\"tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 31, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0);
INSERT INTO `items` (`id`, `name`, `description`, `image`, `price`, `category_id`, `created_at`, `updated_at`, `available`, `has_variants`, `vat`, `deleted_at`, `enable_system_variants`) VALUES
(157, '{\"ar\":\"Burrito with chicken\"}', '{\"ar\":\"chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 32, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(158, '{\"ar\":\"Burrito Veggie\"}', '{\"ar\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 32, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(159, '{\"ar\":\"Burrito with beef roast\"}', '{\"ar\":\"veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 32, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(160, '{\"ar\":\"Burrito with pork\"}', '{\"ar\":\"pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 32, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(161, '{\"ar\":\"Schweppes Tonic (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 33, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(162, '{\"ar\":\"Sprite (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 33, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(163, '{\"ar\":\"Orange Fanta (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 33, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(164, '{\"ar\":\"Coca Cola (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 33, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(165, '{\"ar\":\"Caprese Salad (350gr)\"}', '{\"ar\":\"peeled tomatoes, mozzarella salad, Genovese pesto\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 34, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(166, '{\"ar\":\"Caesar Salad (400g)\"}', '{\"ar\":\"iceberg, bacon, chicken breast, parmesan, Caesar sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 34, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(167, '{\"ar\":\"Salad Napoli (350g)\"}', '{\"ar\":\"iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 34, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(168, '{\"ar\":\"Green tuna salad (400g)\"}', '{\"ar\":\"lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 34, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(169, '{\"ar\":\"Green salad (350g)\"}', '{\"ar\":\"lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 34, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(170, '{\"ar\":\"Greek Salad (500g)\"}', '{\"ar\":\"tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 34, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(171, '{\"ar\":\"Spaghetti Carbonara (450g)\"}', '{\"ar\":\"fresh pasta, cream (animal), onion, pancakes (smoked bacon), egg, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/b65d5389-4742-4a78-9d94-f31110984db6', 11.99, 35, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(172, '{\"ar\":\"Spaghetti Formaggi (450g)\"}', '{\"ar\":\"fresh pasta, cream (animal), blue cheese, emmental, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4a2067cb-f39c-4b26-83ef-9097512d3328', 11.99, 35, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(173, '{\"ar\":\"Tagliatelle with mushrooms (400g)\"}', '{\"ar\":\"fresh pasta, cream (animal), mushrooms, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0bae6238-dda6-4630-b300-5125fde865d4', 11.99, 35, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(174, '{\"ar\":\"Chicken risotto (450g)\"}', '{\"ar\":\"Arborio rice, chicken breast, onion, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/033c32c1-cdae-495e-910f-66b5fa239297', 11.99, 35, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(175, '{\"ar\":\"Risotto with mushrooms (450g)\"}', '{\"ar\":\"Arborio rice, mushrooms, garlic, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/08d82944-f947-48f4-a197-a3199bb3b6e7', 11.99, 35, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(176, '{\"ar\":\"Tagliatelle with Bolognese Sauce (400g)\"}', '{\"ar\":\"fresh pasta, bolognese sauce, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cc695ba9-8af3-47a4-8e41-dc1706cbf2c3', 11.99, 35, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(177, '{\"ar\":\"Lasagna Classic (450g)\"}', '{\"ar\":\"Bolognese sauce, mozzarella Sabelli\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/94d44523-ec90-4069-bd11-eb9588207c31', 11.99, 36, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(178, '{\"ar\":\"Napoli Lasagna (450g)\"}', '{\"ar\":\"chicken fillet, cream (animal), corn, blue cheese, mozzarella Sabelli\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4c367950-992c-4711-ab56-42bed10de86c', 11.99, 36, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(179, '{\"ar\":\"Lasagna Formagio (450g)\"}', '{\"ar\":\"smoked cheese, blue cheese, emmental, cream (animal), mozzarella Sabelli\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/8bafc3ec-82e7-46f8-964a-77a13e4ddf96', 11.99, 36, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(180, '{\"ar\":\"Mozzarella Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 37, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(181, '{\"ar\":\"Prosciutto crust pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 37, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(182, '{\"ar\":\"Pepperoni Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 37, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(183, '{\"ar\":\"Carriola Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 37, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(184, '{\"ar\":\"Perugia Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 37, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(185, '{\"ar\":\"Pizza Napoli\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 37, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(186, '{\"ar\":\"Margarita Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella Sabelli, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 37, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(187, '{\"ar\":\"Combo Pizza 50\\/50 (70cm)\"}', '{\"ar\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 37, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(188, '{\"ar\":\"Capricciosa Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 37, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(189, '{\"ar\":\"Quattro Formaggi Pizza\"}', '{\"ar\":\"cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 37, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(190, '{\"ar\":\"Marco Polo Pizza\"}', '{\"ar\":\"tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 37, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(191, '{\"ar\":\"Caprese Salad (350gr)\"}', '{\"ar\":\"peeled tomatoes, mozzarella salad, Genovese pesto\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 38, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(192, '{\"ar\":\"Caesar Salad (400g)\"}', '{\"ar\":\"iceberg, bacon, chicken breast, parmesan, Caesar sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 38, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(193, '{\"ar\":\"Salad Napoli (350g)\"}', '{\"ar\":\"iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 38, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(194, '{\"ar\":\"Green tuna salad (400g)\"}', '{\"ar\":\"lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 38, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(195, '{\"ar\":\"Green salad (350g)\"}', '{\"ar\":\"lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 38, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(196, '{\"ar\":\"Greek Salad (500g)\"}', '{\"ar\":\"tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 38, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(197, '{\"ar\":\"Chicken Taco (250g)\"}', '{\"ar\":\"tortilla tortilla 16cm, chicken on a plate, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/fcbc8d58-2e69-4b91-8dfe-b8ff8920023c', 3.49, 39, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(198, '{\"ar\":\"Taco with beef roasted meat (250g)\"}', '{\"ar\":\"tortilla tortilla 16cm, veal minced meat, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6681a3c8-17df-42db-a09a-aed0a327e226', 3.99, 39, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(199, '{\"ar\":\"Pork Taco (250g)\"}', '{\"ar\":\"16cm tortilla cake, pork roast, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2a0560e8-b93a-405d-9f44-86fcde00069d', 3.49, 39, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(200, '{\"ar\":\"Tacos Veggie (250g)\"}', '{\"ar\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6f9e8892-4a28-4c99-ab24-57179a1424b9', 2.99, 39, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(201, '{\"ar\":\"Quesadilla with chicken\"}', '{\"ar\":\"Cassadia with chicken - large chicken on a plate, 2 pieces of tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad on desire \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/807afb68-bba2-4a7f-be98-54586047d45b', 6.69, 40, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(202, '{\"ar\":\"Quesadilla with veal\"}', '{\"ar\":\"beef roast or minced meat, 2 pieces of tortilla tortilla, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/ffb24714-946d-43a8-a732-501cd742bd8c', 7.69, 40, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(203, '{\"ar\":\"Vegetarian Quesadilla\"}', '{\"ar\":\"2pcs tortillas, plate peppers, plate onions, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/005c9ff4-61ae-4fa4-a204-3a14db63856f', 6.19, 40, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(204, '{\"ar\":\"Quesadilla with Pork\"}', '{\"ar\":\"pork roast, 2 tortilla tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, olives, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3d0b6a8c-9b56-46d9-bf3c-f69d2e3b30f8', 6.69, 40, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(205, '{\"ar\":\"Burrito with chicken\"}', '{\"ar\":\"chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 41, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(206, '{\"ar\":\"Burrito Veggie\"}', '{\"ar\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 41, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(207, '{\"ar\":\"Burrito with beef roast\"}', '{\"ar\":\"veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 41, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(208, '{\"ar\":\"Burrito with pork\"}', '{\"ar\":\"pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 41, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(209, '{\"ar\":\"Burrito Vegetarian in a Bowl (450g)\"}', '{\"ar\":\"rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/eb8cb594-0317-4f1c-8840-cd70bd6d34c3', 6.99, 42, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(210, '{\"ar\":\"Burrito with chicken in a bowl(450g)\"}', '{\"ar\":\"chicken, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/e9c18f00-8e49-40e0-b723-da78c7e8ce6c', 7.99, 42, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(211, '{\"ar\":\"Burrito with beef in a bowl (450g)\"}', '{\"ar\":\"veal, rice, plate peppers, onion, red beans, spiced corn, tomatoes, iceberg, yellow cheese, cream sauce or mayonnaise sauce, hot salts if desired\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/277179e4-104b-477b-8c7b-9b8b55b9161d', 8.99, 42, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(212, '{\"ar\":\"Burrito with pork in a bowl (450g)\"}', '{\"ar\":\"pork, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2a65093d-b681-4257-916b-77eccaf2c5e6', 7.99, 42, '2021-12-30 22:33:46', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(213, '{\"ar\":\"Mexellente (350g)\"}', '{\"ar\":\"iceberg, red pepper, tomato, sweet corn, red beans, fresh red onions, parsley, lime juice, sweet chili sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/58d57b7a-8873-4559-94af-cf50501a1bfa', 6.99, 43, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(214, '{\"ar\":\"Schweppes Tonic (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 44, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(215, '{\"ar\":\"Sprite (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 44, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(216, '{\"ar\":\"Orange Fanta (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 44, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(217, '{\"ar\":\"Coca Cola (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 44, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(218, '{\"ar\":\"Homemade Potatoes with Cheddar and Jalapenos (300g)\"}', '{\"ar\":\"Cheddar cheese, butter, russet potatoes, rings, all purpose flour\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/b130e310-c024-49fa-99c2-1f0182b810f6', 6.99, 45, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(219, '{\"ar\":\"Homemade Potatoes with Ranch Sauce (300g)\"}', '{\"ar\":\"Sour cream, ranch dressing, bacon, potatoes, cheddar cheese\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/dd0c87c9-d862-45a6-a933-7060d68c749c', 5.99, 45, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(220, '{\"ar\":\"Cheddar Sticks (250g)\"}', '{\"ar\":\"String cheese, bread crumbs, smoked paprika, egg\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3dfb1358-a853-4d7c-93f1-36eaf06ee2d7', 7.99, 45, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(221, '{\"ar\":\"Homemade french fries with ranch sauce (150g)\"}', '{\"ar\":\"French fries, homemade ranch dressing, cheddar cheese, fully \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/aa05caca-d1c1-4b27-8615-78e8686b95e3', 2.98, 46, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(222, '{\"ar\":\"Homemade french fries with cheddar and jalapenos (190g)\"}', '{\"ar\":\"Olive oil, cheddar, green mix\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/b3ee655e-29d2-4c35-86df-89b8200c9142', 3.97, 46, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(223, '{\"ar\":\"Homemade french fries (100g)\"}', '{\"ar\":\"100g\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/86289e4c-360c-4e5c-aa02-8d2ba791d954', 1.99, 46, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(224, '{\"ar\":\"Wild Wild West\"}', '{\"ar\":\"freshly baked brioche bread, 100% freshly ground beef Limousine, crispy bacon, melted cheddar, brewed in Skapto beer onion rings, homemade BBQ sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/c8d27bcc-54da-4c18-b8e6-f1414c71612c', 8.99, 47, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(225, '{\"ar\":\"Skapto Bulleit Bourbon\"}', '{\"ar\":\"juicy 100% minced beef, crispy bacon, melted cheddar, homemade Bulleit bourbon sauce, homemade marinated red onion, pickles, iceberg\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4c2d9b73-685a-4252-84a3-6ba354f3a59c', 10.99, 47, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(226, '{\"ar\":\"Back to Basics\"}', '{\"ar\":\"juicy 100% minced beef, melted cheddar, pickles, iceberg, homemade Skapto sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/643dd56b-684a-47f9-b72f-0fec59c16cb0', 7.99, 47, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(227, '{\"ar\":\"Cheesus\"}', '{\"ar\":\"juicy 100% minced beef, crispy bacon, melted cheddar, fresh red onion, pickles, tomato, iceberg, lots of Hellman\'s mustard and ketchup\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/1084e812-7aa7-471c-9ae2-96dd5f561935', 9.99, 47, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(228, '{\"ar\":\"Skaptoburger\"}', '{\"ar\":\"juicy 100% freshly ground veal, crispy bacon, melted cheddar, fresh red onion, iceberg, tomato, homemade spicy Skapto sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/7998ea89-e4b6-4021-ad47-6a1aa442e093', 9.99, 47, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(229, '{\"ar\":\"El Pollo Loco\"}', '{\"ar\":\"Breaded until golden chicken fillet, crispy bacon, pickles, tomato, iceberg, mayonnaise and Hellman\'s mustard, barbecue sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', 10.99, 47, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(230, '{\"ar\":\"SA7OSH1\"}', '{\"ar\":\"juicy 100% minced beef, breaded to golden yellow, crispy bacon, melted cheddar, fresh red onion, arugula, homemade Skapto sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5bf2bb33-1b3b-4911-a7f0-618d17719ba2', 12.99, 47, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(231, '{\"ar\":\"Schweppes Tonic (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 48, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(232, '{\"ar\":\"Sprite (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 48, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(233, '{\"ar\":\"Orange Fanta (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 48, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(234, '{\"ar\":\"Coca Cola (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 48, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(235, '{\"ar\":\"Burrito with chicken\"}', '{\"ar\":\"chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 49, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(236, '{\"ar\":\"Burrito Veggie\"}', '{\"ar\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 49, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(237, '{\"ar\":\"Burrito with beef roast\"}', '{\"ar\":\"veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 49, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(238, '{\"ar\":\"Burrito with pork\"}', '{\"ar\":\"pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 49, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(239, '{\"ar\":\"Caprese Salad (350gr)\"}', '{\"ar\":\"peeled tomatoes, mozzarella salad, Genovese pesto\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 50, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(240, '{\"ar\":\"Caesar Salad (400g)\"}', '{\"ar\":\"iceberg, bacon, chicken breast, parmesan, Caesar sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 50, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(241, '{\"ar\":\"Salad Napoli (350g)\"}', '{\"ar\":\"iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 50, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(242, '{\"ar\":\"Green tuna salad (400g)\"}', '{\"ar\":\"lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 50, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(243, '{\"ar\":\"Green salad (350g)\"}', '{\"ar\":\"lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 50, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(244, '{\"ar\":\"Greek Salad (500g)\"}', '{\"ar\":\"tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 50, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(245, '{\"ar\":\"Mozzarella Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 51, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(246, '{\"ar\":\"Prosciutto crust pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 51, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(247, '{\"ar\":\"Pepperoni Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 51, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(248, '{\"ar\":\"Carriola Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 51, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(249, '{\"ar\":\"Perugia Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 51, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(250, '{\"ar\":\"Pizza Napoli\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 51, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(251, '{\"ar\":\"Margarita Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella Sabelli, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 51, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(252, '{\"ar\":\"Combo Pizza 50\\/50 (70cm)\"}', '{\"ar\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 51, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(253, '{\"ar\":\"Capricciosa Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 51, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(254, '{\"ar\":\"Quattro Formaggi Pizza\"}', '{\"ar\":\"cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 51, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(255, '{\"ar\":\"Marco Polo Pizza\"}', '{\"ar\":\"tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 51, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(256, '{\"ar\":\"Spaghetti Carbonara (450g)\"}', '{\"ar\":\"fresh pasta, cream (animal), onion, pancakes (smoked bacon), egg, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/b65d5389-4742-4a78-9d94-f31110984db6', 11.99, 52, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(257, '{\"ar\":\"Spaghetti Formaggi (450g)\"}', '{\"ar\":\"fresh pasta, cream (animal), blue cheese, emmental, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4a2067cb-f39c-4b26-83ef-9097512d3328', 11.99, 52, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(258, '{\"ar\":\"Tagliatelle with mushrooms (400g)\"}', '{\"ar\":\"fresh pasta, cream (animal), mushrooms, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0bae6238-dda6-4630-b300-5125fde865d4', 11.99, 52, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(259, '{\"ar\":\"Chicken risotto (450g)\"}', '{\"ar\":\"Arborio rice, chicken breast, onion, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/033c32c1-cdae-495e-910f-66b5fa239297', 11.99, 52, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(260, '{\"ar\":\"Risotto with mushrooms (450g)\"}', '{\"ar\":\"Arborio rice, mushrooms, garlic, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/08d82944-f947-48f4-a197-a3199bb3b6e7', 11.99, 52, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(261, '{\"ar\":\"Tagliatelle with Bolognese Sauce (400g)\"}', '{\"ar\":\"fresh pasta, bolognese sauce, parmesan\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cc695ba9-8af3-47a4-8e41-dc1706cbf2c3', 11.99, 52, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(262, '{\"ar\":\"Lasagna Classic (450g)\"}', '{\"ar\":\"Bolognese sauce, mozzarella Sabelli\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/94d44523-ec90-4069-bd11-eb9588207c31', 11.99, 53, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(263, '{\"ar\":\"Napoli Lasagna (450g)\"}', '{\"ar\":\"chicken fillet, cream (animal), corn, blue cheese, mozzarella Sabelli\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4c367950-992c-4711-ab56-42bed10de86c', 11.99, 53, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(264, '{\"ar\":\"Lasagna Formagio (450g)\"}', '{\"ar\":\"smoked cheese, blue cheese, emmental, cream (animal), mozzarella Sabelli\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/8bafc3ec-82e7-46f8-964a-77a13e4ddf96', 11.99, 53, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(265, '{\"ar\":\"Caprese Salad (350gr)\"}', '{\"ar\":\"peeled tomatoes, mozzarella salad, Genovese pesto\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 54, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(266, '{\"ar\":\"Caesar Salad (400g)\"}', '{\"ar\":\"iceberg, bacon, chicken breast, parmesan, Caesar sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 54, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(267, '{\"ar\":\"Salad Napoli (350g)\"}', '{\"ar\":\"iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 54, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(268, '{\"ar\":\"Green tuna salad (400g)\"}', '{\"ar\":\"lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 54, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(269, '{\"ar\":\"Green salad (350g)\"}', '{\"ar\":\"lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 54, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(270, '{\"ar\":\"Greek Salad (500g)\"}', '{\"ar\":\"tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 54, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(271, '{\"ar\":\"Mozzarella Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 55, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(272, '{\"ar\":\"Prosciutto crust pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 55, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(273, '{\"ar\":\"Pepperoni Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 55, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(274, '{\"ar\":\"Carriola Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 55, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(275, '{\"ar\":\"Perugia Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 55, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(276, '{\"ar\":\"Pizza Napoli\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 55, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(277, '{\"ar\":\"Margarita Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella Sabelli, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 55, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(278, '{\"ar\":\"Combo Pizza 50\\/50 (70cm)\"}', '{\"ar\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 55, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(279, '{\"ar\":\"Capricciosa Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 55, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(280, '{\"ar\":\"Quattro Formaggi Pizza\"}', '{\"ar\":\"cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 55, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(281, '{\"ar\":\"Marco Polo Pizza\"}', '{\"ar\":\"tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 55, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(282, '{\"ar\":\"Chicken Taco (250g)\"}', '{\"ar\":\"tortilla tortilla 16cm, chicken on a plate, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/fcbc8d58-2e69-4b91-8dfe-b8ff8920023c', 3.49, 56, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(283, '{\"ar\":\"Taco with beef roasted meat (250g)\"}', '{\"ar\":\"tortilla tortilla 16cm, veal minced meat, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6681a3c8-17df-42db-a09a-aed0a327e226', 3.99, 56, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(284, '{\"ar\":\"Pork Taco (250g)\"}', '{\"ar\":\"16cm tortilla cake, pork roast, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2a0560e8-b93a-405d-9f44-86fcde00069d', 3.49, 56, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(285, '{\"ar\":\"Tacos Veggie (250g)\"}', '{\"ar\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6f9e8892-4a28-4c99-ab24-57179a1424b9', 2.99, 56, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(286, '{\"ar\":\"Quesadilla with chicken\"}', '{\"ar\":\"Cassadia with chicken - large chicken on a plate, 2 pieces of tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad on desire \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/807afb68-bba2-4a7f-be98-54586047d45b', 6.69, 57, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(287, '{\"ar\":\"Quesadilla with veal\"}', '{\"ar\":\"beef roast or minced meat, 2 pieces of tortilla tortilla, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/ffb24714-946d-43a8-a732-501cd742bd8c', 7.69, 57, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(288, '{\"ar\":\"Vegetarian Quesadilla\"}', '{\"ar\":\"2pcs tortillas, plate peppers, plate onions, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/005c9ff4-61ae-4fa4-a204-3a14db63856f', 6.19, 57, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(289, '{\"ar\":\"Quesadilla with Pork\"}', '{\"ar\":\"pork roast, 2 tortilla tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, olives, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3d0b6a8c-9b56-46d9-bf3c-f69d2e3b30f8', 6.69, 57, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(290, '{\"ar\":\"Burrito Vegetarian in a Bowl (450g)\"}', '{\"ar\":\"rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/eb8cb594-0317-4f1c-8840-cd70bd6d34c3', 6.99, 58, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(291, '{\"ar\":\"Burrito with chicken in a bowl(450g)\"}', '{\"ar\":\"chicken, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/e9c18f00-8e49-40e0-b723-da78c7e8ce6c', 7.99, 58, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(292, '{\"ar\":\"Burrito with beef in a bowl (450g)\"}', '{\"ar\":\"veal, rice, plate peppers, onion, red beans, spiced corn, tomatoes, iceberg, yellow cheese, cream sauce or mayonnaise sauce, hot salts if desired\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/277179e4-104b-477b-8c7b-9b8b55b9161d', 8.99, 58, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(293, '{\"ar\":\"Burrito with pork in a bowl (450g)\"}', '{\"ar\":\"pork, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2a65093d-b681-4257-916b-77eccaf2c5e6', 7.99, 58, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(294, '{\"ar\":\"Burrito with chicken\"}', '{\"ar\":\"chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 59, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(295, '{\"ar\":\"Burrito Veggie\"}', '{\"ar\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 59, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(296, '{\"ar\":\"Burrito with beef roast\"}', '{\"ar\":\"veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 59, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(297, '{\"ar\":\"Burrito with pork\"}', '{\"ar\":\"pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 59, '2021-12-30 22:33:47', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(298, '{\"ar\":\"Mexellente (350g)\"}', '{\"ar\":\"iceberg, red pepper, tomato, sweet corn, red beans, fresh red onions, parsley, lime juice, sweet chili sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/58d57b7a-8873-4559-94af-cf50501a1bfa', 6.99, 60, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(299, '{\"ar\":\"Homemade Potatoes with Cheddar and Jalapenos (300g)\"}', '{\"ar\":\"Cheddar cheese, butter, russet potatoes, rings, all purpose flour\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/b130e310-c024-49fa-99c2-1f0182b810f6', 6.99, 61, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(300, '{\"ar\":\"Homemade Potatoes with Ranch Sauce (300g)\"}', '{\"ar\":\"Sour cream, ranch dressing, bacon, potatoes, cheddar cheese\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/dd0c87c9-d862-45a6-a933-7060d68c749c', 5.99, 61, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(301, '{\"ar\":\"Cheddar Sticks (250g)\"}', '{\"ar\":\"String cheese, bread crumbs, smoked paprika, egg\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3dfb1358-a853-4d7c-93f1-36eaf06ee2d7', 7.99, 61, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(302, '{\"ar\":\"Homemade french fries with ranch sauce (150g)\"}', '{\"ar\":\"French fries, homemade ranch dressing, cheddar cheese, fully \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/aa05caca-d1c1-4b27-8615-78e8686b95e3', 2.98, 62, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(303, '{\"ar\":\"Homemade french fries with cheddar and jalapenos (190g)\"}', '{\"ar\":\"Olive oil, cheddar, green mix\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/b3ee655e-29d2-4c35-86df-89b8200c9142', 3.97, 62, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(304, '{\"ar\":\"Homemade french fries (100g)\"}', '{\"ar\":\"100g\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/86289e4c-360c-4e5c-aa02-8d2ba791d954', 1.99, 62, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(305, '{\"ar\":\"Schweppes Tonic (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 63, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(306, '{\"ar\":\"Sprite (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 63, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(307, '{\"ar\":\"Orange Fanta (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 63, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(308, '{\"ar\":\"Coca Cola (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 63, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(309, '{\"ar\":\"Wild Wild West\"}', '{\"ar\":\"freshly baked brioche bread, 100% freshly ground beef Limousine, crispy bacon, melted cheddar, brewed in Skapto beer onion rings, homemade BBQ sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/c8d27bcc-54da-4c18-b8e6-f1414c71612c', 8.99, 64, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(310, '{\"ar\":\"Skapto Bulleit Bourbon\"}', '{\"ar\":\"juicy 100% minced beef, crispy bacon, melted cheddar, homemade Bulleit bourbon sauce, homemade marinated red onion, pickles, iceberg\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4c2d9b73-685a-4252-84a3-6ba354f3a59c', 10.99, 64, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(311, '{\"ar\":\"Back to Basics\"}', '{\"ar\":\"juicy 100% minced beef, melted cheddar, pickles, iceberg, homemade Skapto sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/643dd56b-684a-47f9-b72f-0fec59c16cb0', 7.99, 64, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(312, '{\"ar\":\"Cheesus\"}', '{\"ar\":\"juicy 100% minced beef, crispy bacon, melted cheddar, fresh red onion, pickles, tomato, iceberg, lots of Hellman\'s mustard and ketchup\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/1084e812-7aa7-471c-9ae2-96dd5f561935', 9.99, 64, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0);
INSERT INTO `items` (`id`, `name`, `description`, `image`, `price`, `category_id`, `created_at`, `updated_at`, `available`, `has_variants`, `vat`, `deleted_at`, `enable_system_variants`) VALUES
(313, '{\"ar\":\"Skaptoburger\"}', '{\"ar\":\"juicy 100% freshly ground veal, crispy bacon, melted cheddar, fresh red onion, iceberg, tomato, homemade spicy Skapto sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/7998ea89-e4b6-4021-ad47-6a1aa442e093', 9.99, 64, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(314, '{\"ar\":\"El Pollo Loco\"}', '{\"ar\":\"Breaded until golden chicken fillet, crispy bacon, pickles, tomato, iceberg, mayonnaise and Hellman\'s mustard, barbecue sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', 10.99, 64, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(315, '{\"ar\":\"SA7OSH1\"}', '{\"ar\":\"juicy 100% minced beef, breaded to golden yellow, crispy bacon, melted cheddar, fresh red onion, arugula, homemade Skapto sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5bf2bb33-1b3b-4911-a7f0-618d17719ba2', 12.99, 64, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(316, '{\"ar\":\"Caprese Salad (350gr)\"}', '{\"ar\":\"peeled tomatoes, mozzarella salad, Genovese pesto\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 65, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(317, '{\"ar\":\"Caesar Salad (400g)\"}', '{\"ar\":\"iceberg, bacon, chicken breast, parmesan, Caesar sauce\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 65, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(318, '{\"ar\":\"Salad Napoli (350g)\"}', '{\"ar\":\"iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 65, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(319, '{\"ar\":\"Green tuna salad (400g)\"}', '{\"ar\":\"lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 65, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(320, '{\"ar\":\"Green salad (350g)\"}', '{\"ar\":\"lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 65, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(321, '{\"ar\":\"Greek Salad (500g)\"}', '{\"ar\":\"tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 65, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(322, '{\"ar\":\"Schweppes Tonic (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 66, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(323, '{\"ar\":\"Sprite (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 66, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(324, '{\"ar\":\"Orange Fanta (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 66, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(325, '{\"ar\":\"Coca Cola (330ml)\"}', '{\"ar\":\"(330ml.)\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 66, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(326, '{\"ar\":\"Burrito with chicken\"}', '{\"ar\":\"chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 67, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(327, '{\"ar\":\"Burrito Veggie\"}', '{\"ar\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 67, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(328, '{\"ar\":\"Burrito with beef roast\"}', '{\"ar\":\"veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will \"}', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 67, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(329, '{\"ar\":\"Burrito with pork\"}', '{\"ar\":\"pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 67, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 0, 21.00, NULL, 0),
(330, '{\"ar\":\"Mozzarella Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 68, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(331, '{\"ar\":\"Prosciutto crust pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 68, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(332, '{\"ar\":\"Pepperoni Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 68, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(333, '{\"ar\":\"Carriola Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 68, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(334, '{\"ar\":\"Perugia Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 68, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(335, '{\"ar\":\"Pizza Napoli\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 68, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(336, '{\"ar\":\"Margarita Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella Sabelli, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 68, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(337, '{\"ar\":\"Combo Pizza 50\\/50 (70cm)\"}', '{\"ar\":\"\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 68, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(338, '{\"ar\":\"Capricciosa Pizza\"}', '{\"ar\":\"tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 68, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(339, '{\"ar\":\"Quattro Formaggi Pizza\"}', '{\"ar\":\"cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 68, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(340, '{\"ar\":\"Marco Polo Pizza\"}', '{\"ar\":\"tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil\"}', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 68, '2021-12-30 22:33:48', '2021-12-31 02:37:42', 1, 1, 21.00, NULL, 0),
(341, 'لاتيه', 'جرب', '3bdb9b4a-9b01-43be-9f93-4ff2827b4f1c', 12.00, 69, '2021-12-31 02:33:22', '2022-01-11 20:19:35', 1, 1, 15.00, NULL, 0),
(342, 'تجربة', 'ماعرف', '57ea1668-6d6d-4162-8fca-22ee33d41a9f', 12.00, 69, '2022-01-06 16:29:37', '2022-01-06 16:40:09', 1, 1, 0.00, NULL, 0),
(343, 'تجربة', 'تجربة', 'd2bf06be-2737-46d3-a3d5-f48196db1555', 10.00, 70, '2022-01-12 00:00:34', '2022-01-12 02:01:41', 1, 1, 0.00, NULL, 1),
(344, 'اسبريسو', 'CAL ( 3)', '', 12.00, 71, '2022-01-12 07:51:40', '2022-02-16 21:37:44', 1, 0, 15.00, NULL, 0),
(345, 'كابوتشينو', 'CAL ( 87 )', '', 15.00, 71, '2022-01-12 07:52:36', '2022-01-31 18:02:07', 1, 0, 0.00, NULL, 0),
(346, 'لاتيه', 'CAL ( 136 )', '', 16.00, 71, '2022-01-12 07:53:18', '2022-01-31 18:09:07', 1, 0, 0.00, NULL, 0),
(347, 'فلات وايت', 'CAL ( 71 )', '1c8728fc-46b3-4134-a19c-6239273bb576', 14.00, 71, '2022-01-12 07:53:48', '2022-02-10 11:18:15', 1, 0, 0.00, NULL, 0),
(348, 'كورتادو', 'CAL ( 65 )', '', 14.00, 71, '2022-01-12 07:54:29', '2022-01-31 18:03:42', 1, 0, 0.00, NULL, 0),
(349, 'سبانش لاتيه', 'CAL ( 225 )', '', 18.00, 71, '2022-01-12 07:55:07', '2022-01-24 09:25:32', 1, 0, 5.00, NULL, 0),
(350, 'تركي', 'CAL ( 5 )', '', 12.00, 71, '2022-01-12 07:55:32', '2022-01-24 09:25:58', 1, 0, 0.00, NULL, 0),
(351, 'موكا', 'CAL ( 190 )', '', 17.00, 71, '2022-01-12 07:55:53', '2022-01-24 09:26:16', 1, 0, 0.00, NULL, 0),
(352, 'شوكولاته', 'CAL ( 252 )', '', 14.00, 71, '2022-01-12 07:56:23', '2022-01-24 09:26:38', 1, 0, 0.00, NULL, 0),
(353, 'آيس لاتيه', 'CAL ( 182 )', '', 14.00, 72, '2022-01-12 07:57:12', '2022-01-24 09:27:49', 1, 0, 0.00, NULL, 0),
(354, 'ايس سبانيش لاتيه', 'CAL ( 225 )', '', 19.00, 72, '2022-01-12 07:57:45', '2022-02-04 21:52:48', 1, 0, 0.00, NULL, 0),
(355, 'بستاشيو لاتيه', 'CAL ( 240 )', 'a3f33a27-dd20-4143-909d-a941883e353e', 20.00, 72, '2022-01-12 07:58:20', '2022-02-08 07:18:41', 1, 0, 0.00, NULL, 0),
(356, 'آيس كراميل', 'CAL ( 286 )', '', 21.00, 71, '2022-01-12 07:59:09', '2022-01-12 07:59:33', 1, 0, 0.00, '2022-01-12 07:59:33', 0),
(357, 'آيس كراميل', 'CAL ( 286 )', '', 21.00, 72, '2022-01-12 08:00:10', '2022-02-04 21:53:35', 1, 0, 0.00, '2022-02-04 21:53:35', 0),
(358, 'آيس كراميل', 'CAL ( 286 )', '', 21.00, 72, '2022-01-12 08:00:17', '2022-01-12 08:00:32', 1, 0, 0.00, '2022-01-12 08:00:32', 0),
(359, 'آيس شيكن', 'CAL ( 198 )', '', 18.00, 72, '2022-01-12 08:01:03', '2022-01-31 07:45:26', 1, 0, 0.00, NULL, 0),
(360, 'اوريو فرابيه', 'CAL ( 308 )', '', 17.00, 72, '2022-01-12 08:01:36', '2022-01-31 07:45:47', 1, 0, 0.00, NULL, 0),
(361, 'كارتا سجنتشر', 'CAL ( 256 )', '', 21.00, 72, '2022-01-12 08:02:09', '2022-01-31 07:46:27', 1, 0, 0.00, NULL, 0),
(362, 'آيس شوكلت', 'CAL ( 307 )', '', 16.00, 72, '2022-01-12 08:02:39', '2022-02-13 21:13:46', 1, 0, 0.00, NULL, 0),
(363, 'عصير برتقال', 'CAL ( 64 )', '', 8.00, 72, '2022-01-12 08:03:08', '2022-01-31 07:47:23', 1, 0, 0.00, NULL, 0),
(364, 'موكا', 'CAL ( 190 )', '', 17.00, 71, '2022-01-12 08:05:28', '2022-02-04 21:48:52', 1, 0, 0.00, '2022-02-04 21:48:52', 0),
(365, 'شاي انجليزي', 'CAL ( 3 )', '', 9.00, 73, '2022-01-12 08:06:34', '2022-01-31 07:47:55', 1, 0, 0.00, NULL, 0),
(366, 'شاي أخضر', 'CAL ( 3 )', '', 9.00, 73, '2022-01-12 08:07:04', '2022-01-31 07:53:40', 1, 0, 0.00, NULL, 0),
(367, 'بابونج', 'CAL ( 3 )', '', 9.00, 73, '2022-01-12 08:07:24', '2022-01-31 07:54:04', 1, 0, 0.00, NULL, 0),
(368, 'بابونج', 'CAL ( 3 )', '', 9.00, 73, '2022-01-12 08:07:30', '2022-01-12 08:08:00', 1, 0, 0.00, '2022-01-12 08:08:00', 0),
(369, 'براد انجليزي', 'CAL ( 6 )', '', 16.00, 73, '2022-01-12 08:08:34', '2022-01-31 07:54:21', 1, 0, 0.00, NULL, 0),
(370, 'براد أخضر', 'CAL ( 6 )', '', 16.00, 73, '2022-01-12 08:09:04', '2022-01-31 07:54:40', 1, 0, 0.00, NULL, 0),
(371, 'رد سي', 'CAL ( 205 )', '', 16.00, 74, '2022-01-12 08:11:32', '2022-01-31 07:55:01', 1, 0, 0.00, NULL, 0),
(372, 'بلو', 'CAL ( 205 )', '', 16.00, 74, '2022-01-12 08:12:07', '2022-01-31 07:55:33', 1, 0, 0.00, NULL, 0),
(373, 'مكس', 'CAL ( 205 )', '', 16.00, 74, '2022-01-12 08:12:24', '2022-01-31 07:55:55', 1, 0, 0.00, NULL, 0),
(374, 'كلاسيك', 'CAL ( 205 )', '', 16.00, 74, '2022-01-12 08:12:38', '2022-01-31 07:56:11', 1, 0, 0.00, NULL, 0),
(375, 'وترميلون', 'CAL ( 205 )', '', 16.00, 74, '2022-01-12 08:12:58', '2022-02-04 22:54:42', 1, 0, 0.00, NULL, 0),
(376, 'امريكانو', 'CAL ( 2 )', '', 13.00, 75, '2022-01-12 08:13:47', '2022-01-31 07:57:59', 1, 0, 0.00, NULL, 0),
(377, 'V60', 'CAL ( 2 )', '', 17.00, 75, '2022-01-12 08:14:19', '2022-01-31 07:58:26', 1, 0, 0.00, NULL, 0),
(378, 'كولد برو', 'CAL ( 2 )', '449090ab-2ea5-4103-ba9c-7db54b43f753', 23.00, 75, '2022-01-12 08:14:54', '2022-02-10 11:20:32', 1, 0, 0.00, NULL, 0),
(379, 'آيس V60', 'CAL ( 2 )', '', 17.00, 75, '2022-01-12 08:15:27', '2022-02-04 23:18:39', 1, 0, 0.00, NULL, 0),
(380, 'آيس امريكانو', 'CAL ( 3 )', '', 14.00, 75, '2022-01-12 08:16:00', '2022-01-31 07:59:45', 1, 0, 0.00, NULL, 0),
(381, 'آيس تي', 'CAL ( 154 )', '', 21.00, 76, '2022-01-12 08:16:53', '2022-01-31 08:00:09', 1, 0, 0.00, NULL, 0),
(382, 'آيس كركديه', 'CAL ( 80 )', '', 15.00, 76, '2022-01-12 08:17:22', '2022-01-31 08:00:34', 1, 0, 0.00, NULL, 0),
(383, 'اكسترا شوت', 'CAL ( 3 )', '', 3.00, 78, '2022-01-12 08:23:42', '2022-01-31 08:00:58', 1, 0, 0.00, NULL, 0),
(384, 'اكسترا صوص', 'CAL ( 3 )', '', 3.00, 78, '2022-01-12 08:24:07', '2022-01-31 08:01:12', 1, 0, 0.00, NULL, 0),
(385, 'حليب نباتي', 'CAL ( 3 )', '', 3.00, 78, '2022-01-12 08:24:29', '2022-01-31 08:01:34', 1, 0, 0.00, NULL, 0),
(386, 'بوكس الموهيتو', '💕', '', 138.00, 79, '2022-01-12 08:26:13', '2022-01-31 08:01:59', 1, 0, 0.00, NULL, 0),
(387, 'بوكس القهوة', '😍', '', 148.00, 79, '2022-01-12 08:26:51', '2022-01-31 08:02:14', 1, 0, 0.00, NULL, 0),
(388, 'بوكس مكس', '😋', '', 146.00, 79, '2022-01-12 08:27:18', '2022-01-31 08:02:30', 1, 0, 0.00, NULL, 0),
(389, 'اسبريسو', 'kcal 3', '6c759546-a3d8-4032-a2e4-8fb55dabe858', 13.00, 80, '2022-01-16 16:06:03', '2022-02-23 03:30:49', 1, 1, 0.00, NULL, 1),
(390, 'ميكاتو', 'kcal 15', '55c0bb85-3869-4b29-9ad2-554cae4d8658', 14.00, 80, '2022-01-17 15:19:03', '2022-02-23 03:34:15', 1, 1, 0.00, NULL, 0),
(391, 'أمريكانو', 'kcal 10', '10712f92-1cb7-4b40-ad9e-8af6c2d60304', 14.00, 80, '2022-01-17 15:19:40', '2022-01-21 14:17:24', 1, 0, 0.00, NULL, 0),
(392, 'قهوة اليوم', 'kcal 3', 'e8967d97-adf3-4dd6-bdac-d321b99b2117', 13.00, 80, '2022-01-17 15:20:10', '2022-01-21 14:17:40', 1, 0, 0.00, NULL, 0),
(393, 'كورتادو', 'kcal 52', '8bdc8d41-4f89-47a6-be22-efacc8d4dd15', 14.00, 80, '2022-01-17 15:21:16', '2022-01-21 14:22:28', 1, 0, 0.00, NULL, 0),
(394, 'فلات وايت', 'kcal 56', 'eb77d580-781c-4508-b950-7ee43d58724e', 15.00, 80, '2022-01-17 15:21:47', '2022-01-21 14:18:13', 1, 0, 0.00, NULL, 0),
(395, 'كابتشينو', 'kcal 150', 'afb98ade-907f-4543-9e8f-00a5c77a53c9', 16.00, 80, '2022-01-17 15:22:22', '2022-01-21 14:18:32', 1, 0, 0.00, NULL, 0),
(396, 'لاتيه', 'kcal 110', '1d51027e-d28a-4a5e-abc8-5b48a624dff8', 16.00, 80, '2022-01-17 15:22:59', '2022-01-21 14:18:48', 1, 0, 0.00, NULL, 0),
(397, 'سبانش لاتيه', 'kcal 200', '1b6502cc-7571-4769-8a79-a61fccd1eb3a', 20.00, 80, '2022-01-17 15:23:35', '2022-01-22 04:11:08', 1, 0, 0.00, NULL, 0),
(398, 'بستاشيو لاتيه', 'kcal 240', '62ca2e4a-3442-456c-bbd1-b8decdbd778f', 21.00, 80, '2022-01-17 15:24:03', '2022-01-22 04:10:45', 1, 0, 0.00, NULL, 0),
(399, 'روز لاتيه', 'kcal 190', '6aa5b3f4-6881-4cd6-8256-0e8746eb902c', 19.00, 80, '2022-01-17 15:24:44', '2022-01-22 03:59:14', 1, 0, 0.00, NULL, 0),
(400, 'قرفة لاتيه', 'kcal 190', '7cd58f65-ab20-44d9-814e-3e715c881792', 19.00, 80, '2022-01-17 15:39:29', '2022-01-21 14:22:03', 1, 0, 0.00, NULL, 0),
(401, 'ايلاتشي لاتيه', 'kcal 107', '18a3ac72-3be2-4919-8bc0-e9dcfd04271d', 21.00, 80, '2022-01-17 15:40:07', '2022-01-21 14:19:32', 1, 0, 0.00, NULL, 0),
(402, 'كراميل ميكاتو', 'kcal 240', 'edcde658-62db-405f-9887-e8225994363b', 19.00, 80, '2022-01-17 15:46:35', '2022-01-22 04:06:52', 1, 0, 0.00, NULL, 0),
(403, 'سولتد كراميل لاتيه', 'kcal 250', '00e2348e-1edc-45eb-aaa6-08f129f4757b', 19.00, 80, '2022-01-17 15:47:20', '2022-01-22 04:07:09', 1, 0, 0.00, NULL, 0),
(404, 'موكا', 'kcal 170', '8cbd542c-8bf3-4cad-bb47-d1c75d4cb248', 16.00, 80, '2022-01-17 15:47:48', '2022-01-22 04:04:46', 1, 0, 0.00, NULL, 0),
(405, 'وايت موكا', 'kcal 320', 'e7ff34d3-8d82-4a22-a25e-2f988c22ef03', 19.00, 80, '2022-01-17 15:48:20', '2022-01-22 04:08:13', 1, 0, 0.00, NULL, 0),
(406, 'هوت تشوكلت', 'kcal 220', 'ec5ad232-37f8-4bb9-b67e-6e3a081e598b', 16.00, 80, '2022-01-17 15:48:48', '2022-01-21 14:24:13', 1, 0, 0.00, NULL, 0),
(407, 'V60', 'kcal 3', 'f27706fe-4786-4a3a-87af-a730ba959c66', 18.00, 84, '2022-01-17 15:49:26', '2022-01-22 23:30:59', 1, 0, 0.00, NULL, 0),
(408, 'كيميكس', 'kcal 3', '5da059f6-fd3b-49e4-9414-0f2e73e780a8', 18.00, 84, '2022-01-17 15:49:48', '2022-01-22 23:32:34', 1, 0, 0.00, NULL, 0),
(409, 'كاليتا', 'kcal 3', '60c5fc16-f883-45d2-91db-8a0ed3116125', 18.00, 84, '2022-01-17 15:50:19', '2022-01-22 23:34:18', 1, 0, 0.00, NULL, 0),
(410, 'ايروبريس', 'kcal 3', '4bd92775-31ac-496b-9581-aff3f3c8b29b', 19.00, 84, '2022-01-17 15:50:50', '2022-01-22 23:38:11', 1, 0, 0.00, NULL, 0),
(411, 'أفوجاتو', 'kcal 277', '', 20.00, 81, '2022-01-17 15:55:49', '2022-01-17 15:55:49', 1, 0, 0.00, NULL, 0),
(412, 'كولد برو', 'kcal 3', '14e3ca76-f8f3-40f7-b11c-73e794114296', 27.00, 81, '2022-01-17 15:56:15', '2022-01-21 14:23:49', 1, 0, 0.00, NULL, 0),
(413, 'ايس أمريكانو', 'kcal 15', '', 17.00, 81, '2022-01-17 15:57:06', '2022-01-17 15:57:06', 1, 0, 0.00, NULL, 0),
(414, 'Ice V60', 'Kcal 3', 'a27637d5-47e6-4966-b3f9-9a5cbd06ead1', 21.00, 84, '2022-01-17 15:57:48', '2022-01-22 23:38:25', 1, 0, 0.00, NULL, 0),
(415, 'ايس قهوة اليوم', 'kcal 3', '', 13.00, 81, '2022-01-17 16:00:06', '2022-01-17 16:00:06', 1, 0, 0.00, NULL, 0),
(416, 'ايس لاتيه', 'kcal 150', '', 18.00, 81, '2022-01-17 16:00:44', '2022-01-17 16:00:44', 1, 0, 0.00, NULL, 0),
(417, 'ايس سبانش لاتيه', 'kcal 220', '', 20.00, 81, '2022-01-17 16:02:00', '2022-01-17 16:02:00', 1, 0, 0.00, NULL, 0),
(418, 'ايس بستاشيو لاتيه', 'kcal 260', '', 22.00, 81, '2022-01-17 16:02:29', '2022-01-17 16:07:11', 1, 0, 0.00, NULL, 0),
(419, 'ايس روز لاتيه', 'Kcal 200', '', 20.00, 81, '2022-01-17 16:04:37', '2022-01-17 16:04:37', 1, 0, 0.00, NULL, 0),
(420, 'ايس قرفة لاتيه', 'kcal 210', '', 19.00, 81, '2022-01-17 16:05:14', '2022-01-17 16:05:14', 1, 0, 0.00, NULL, 0),
(421, 'ايس كراميل ميكاتو', 'kcal 260', '', 22.00, 81, '2022-01-17 16:05:59', '2022-01-17 16:05:59', 1, 0, 0.00, NULL, 0),
(422, 'ايس سولتد كراميل لاتيه', 'kcal 270', '', 20.00, 81, '2022-01-17 16:06:53', '2022-01-17 16:07:25', 1, 0, 0.00, NULL, 0),
(423, 'فرابتشينو كراميل', 'kcal 420', '', 25.00, 81, '2022-01-17 16:07:57', '2022-01-17 16:07:57', 1, 0, 0.00, NULL, 0),
(424, 'ايس ايلاتشي لاتيه', 'kcal 107', '', 21.00, 81, '2022-01-17 16:08:49', '2022-01-17 16:08:49', 1, 0, 0.00, NULL, 0),
(425, 'ايس موكا', 'kcal 220', '', 19.00, 81, '2022-01-17 16:09:33', '2022-01-17 16:09:33', 1, 0, 0.00, NULL, 0),
(426, 'ايس شيكن وايت موكا', 'kcal 370', '', 22.00, 81, '2022-01-17 16:10:05', '2022-01-17 16:10:05', 1, 0, 0.00, NULL, 0),
(427, 'ايس تشوكلت', 'kcal 230', '', 18.00, 81, '2022-01-17 16:10:57', '2022-01-17 16:10:57', 1, 0, 0.00, NULL, 0),
(428, 'ايس تي خوخ', 'kcal 170', 'fc6f3a5b-9971-48e6-928e-9b772e8224a3', 18.00, 85, '2022-01-17 16:12:44', '2022-01-21 14:24:52', 1, 0, 0.00, NULL, 0),
(429, 'ايس تي توت', 'kcal 170', '5b599e45-e9e8-4932-a0f9-4e6fffc13027', 18.00, 85, '2022-01-17 16:13:30', '2022-01-21 14:45:16', 1, 0, 0.00, NULL, 0),
(430, 'ايس تي باشن فروت', 'kcal 179', 'd36e0725-33ff-4588-bd26-b133c8423da3', 18.00, 85, '2022-01-17 16:14:16', '2022-01-21 14:45:43', 1, 0, 0.00, NULL, 0),
(431, 'بلو أوشن', 'kcal 410', '9d9ec190-1ed0-4ed6-8180-7b838f291e09', 18.00, 85, '2022-01-17 16:14:55', '2022-01-22 23:39:52', 0, 0, 0.00, NULL, 0),
(432, 'بينك بيري', 'kcal 340', '07d14426-4aa1-4572-b43b-5e3f701edede', 18.00, 85, '2022-01-17 16:15:25', '2022-01-21 14:26:27', 1, 0, 0.00, NULL, 0),
(433, 'قرين فوريست', 'kcal 203', '6ee70917-bb50-4571-a1d2-ced915e14d9c', 18.00, 85, '2022-01-17 16:15:54', '2022-01-21 14:26:52', 1, 0, 0.00, NULL, 0),
(434, 'برتقال', 'kcal 134', '', 15.00, 85, '2022-01-17 16:21:32', '2022-01-17 16:21:32', 1, 0, 0.00, NULL, 0),
(435, 'ليمون', 'kcal 15', '', 6.00, 85, '2022-01-17 16:22:05', '2022-01-17 16:22:05', 1, 0, 0.00, NULL, 0),
(436, 'شاي انجليزي', 'kcal 7', '', 11.00, 86, '2022-01-17 16:23:21', '2022-01-17 16:23:21', 1, 0, 0.00, NULL, 0),
(437, 'شاي أحمر بالفواكه', 'kcal 11', '', 11.00, 86, '2022-01-17 16:24:02', '2022-01-17 16:24:02', 1, 0, 0.00, NULL, 0),
(438, 'شاي ياباني', 'kcal 8', '', 11.00, 86, '2022-01-17 16:24:35', '2022-01-17 16:24:35', 1, 0, 0.00, NULL, 0),
(439, 'شاي أخضر بالفواكه', 'kcal 5', '', 11.00, 86, '2022-01-17 16:25:05', '2022-01-17 16:25:05', 1, 0, 0.00, NULL, 0),
(440, 'قهوة فرنسي', 'kcal 92', '', 16.00, 87, '2022-01-17 16:27:09', '2022-01-17 16:27:09', 1, 0, 0.00, NULL, 0),
(441, 'قهوة تركي', 'kcal 5', '66bfed8f-46a8-41b9-9c90-eec6b5915045', 14.00, 87, '2022-01-17 16:37:36', '2022-01-21 14:25:35', 1, 0, 0.00, NULL, 0),
(442, 'قهوة تركي بالحليب', 'kcal 52', '03f8e7e4-a24c-4fce-9813-e847f741a7fe', 16.00, 87, '2022-01-17 16:38:10', '2022-01-21 14:27:30', 1, 0, 0.00, NULL, 0),
(443, 'قهوة تركي بالهيل', 'kcal 8', 'bedfec34-f807-4601-8c68-1c22108ad9d3', 15.00, 87, '2022-01-17 16:38:37', '2022-01-22 04:20:08', 1, 0, 0.00, NULL, 0),
(444, 'قهوة تركي بالحليب و الهيل', 'kcal 55', '49ef8879-db24-4d0e-9212-2681e98c3cc0', 18.00, 87, '2022-01-17 16:38:59', '2022-01-22 04:20:23', 1, 0, 0.00, NULL, 0),
(445, 'كوكيز', 'kcal 245', '', 8.00, 82, '2022-01-17 16:41:55', '2022-01-17 16:41:55', 1, 0, 0.00, NULL, 0),
(446, 'تارت رطب', 'kcal 215 - ٣ قطع', '', 17.00, 82, '2022-01-17 16:42:26', '2022-01-17 16:42:26', 1, 0, 0.00, NULL, 0),
(447, 'تارت بيكان مع الايسكريم', 'kcal 503', '26c15a78-7ecd-4cce-a558-0ac220adc922', 28.00, 82, '2022-01-17 16:43:07', '2022-01-21 14:34:12', 1, 0, 0.00, NULL, 0),
(448, 'بانوفي', 'kcal 335', '', 20.00, 82, '2022-01-17 16:43:36', '2022-01-17 16:43:36', 1, 0, 0.00, NULL, 0),
(449, 'تيراميسو قهوة', 'local 337', '', 17.00, 82, '2022-01-17 16:43:59', '2022-01-17 16:43:59', 1, 0, 0.00, NULL, 0),
(450, 'تيراميسو توت و ليمون', 'kcal 307', '53a619f0-5dc1-4250-af9d-b8de5996e7a3', 22.00, 82, '2022-01-17 16:44:30', '2022-01-21 14:34:43', 1, 0, 0.00, NULL, 0),
(451, 'مفن تشوكلت', 'kcal 478', '6435394f-432b-4ab2-b128-14c4b0cdb221', 20.00, 82, '2022-01-17 16:45:19', '2022-01-21 14:37:34', 1, 0, 0.00, NULL, 0),
(452, 'كيكة التمر مع الايسكريم', 'kcal 229', '4025fab8-4c22-4b77-901a-9b4ebfa9a34d', 22.00, 82, '2022-01-17 16:45:58', '2022-01-21 14:37:55', 1, 0, 0.00, NULL, 0),
(453, 'كيكة ماربل', 'kcal 108', '33bedbd6-8105-4416-9007-b95fa62b284d', 5.00, 82, '2022-01-17 17:45:31', '2022-01-21 14:36:46', 1, 0, 0.00, NULL, 0),
(454, 'كيكة موز', 'kcal 119', '93c17de8-50b2-41f4-b047-88b1acdacec8', 6.00, 82, '2022-01-17 17:46:05', '2022-01-21 14:36:02', 1, 0, 0.00, NULL, 0),
(455, 'كيكة برتقال', 'kcal 136', 'bf111e2f-c82b-492b-9c2d-e4e2bf3bcabd', 7.00, 82, '2022-01-17 17:46:41', '2022-01-21 14:36:26', 1, 0, 0.00, NULL, 0),
(456, 'ماكرون', 'kcal 404', '91302a1e-02c9-4302-80fb-5a9e42bc7e93', 3.00, 82, '2022-01-17 17:47:18', '2022-01-21 14:38:14', 1, 0, 0.00, NULL, 0),
(457, 'كيكة القرع', '.', '11883c6d-7bbb-4884-adef-17a14afc14b2', 22.00, 82, '2022-01-21 13:54:36', '2022-01-21 14:44:30', 1, 0, 0.00, NULL, 0),
(458, 'تشيز كيك القهوة العربي و كيكة التمر', '.', '18544b07-9495-4bdf-9437-5292bc6bace8', 24.00, 82, '2022-01-21 13:55:08', '2022-01-21 14:44:04', 1, 0, 0.00, NULL, 0),
(459, 'أبل كرامبل مع الايسكريم', '.', '2476bb1e-c7a0-4bad-9323-0d9987437dff', 22.00, 82, '2022-01-21 13:55:39', '2022-01-21 14:44:52', 1, 0, 0.00, NULL, 0),
(460, 'بريوش بالحلوم و الريحان', 'kcal 148', 'bb25d81f-6bb1-4fe3-88df-5bdf333b072f', 22.00, 83, '2022-01-21 13:56:14', '2022-01-21 15:54:50', 1, 0, 0.00, NULL, 0),
(461, 'بريوش بالتونة و الرمان', 'kcal 202', '982c60c5-7229-420e-bd82-423b7327f654', 22.00, 83, '2022-01-21 13:56:51', '2022-01-21 15:53:35', 1, 0, 0.00, NULL, 0),
(462, 'بريوش بالديك الرومي', 'kcal 198', 'dd11a476-ad04-4cf3-82d5-3dbe022205e9', 24.00, 83, '2022-01-21 13:57:36', '2022-01-21 15:52:11', 1, 0, 0.00, NULL, 0),
(463, 'بريوش بالبيض', '.', '08ff6f94-87f7-4959-9c47-52834d5bd4f8', 19.00, 83, '2022-01-21 13:58:42', '2022-01-21 15:56:40', 1, 0, 0.00, NULL, 0),
(464, 'بريوش بالبيض و الأفوكادو', '.', 'ef34f396-eee1-47ad-8408-ca7ac7aa2fb1', 26.00, 83, '2022-01-21 13:59:13', '2022-01-21 15:53:19', 1, 0, 0.00, NULL, 0),
(465, 'بريوش زعتر و لبنة', '.', '', 17.00, 83, '2022-01-21 13:59:40', '2022-01-21 13:59:40', 1, 0, 0.00, NULL, 0),
(466, 'بريوش نوتيلا', '.', '', 23.00, 83, '2022-01-21 14:00:19', '2022-01-21 14:00:19', 1, 0, 0.00, NULL, 0),
(467, 'كروسون سادة', '.', '', 7.00, 83, '2022-01-21 14:01:05', '2022-01-21 14:01:05', 1, 0, 0.00, NULL, 0),
(468, 'كروسون بالحلوم و الريحان', '.', '', 23.00, 83, '2022-01-21 14:01:22', '2022-01-21 14:01:22', 1, 0, 0.00, NULL, 0),
(469, 'كروسون بالتونة و الرمان', '.', '', 21.00, 83, '2022-01-21 14:01:47', '2022-01-21 14:01:47', 1, 0, 0.00, NULL, 0),
(470, 'كروسون بالديك الرمي', '.', '', 23.00, 83, '2022-01-21 14:02:13', '2022-01-21 14:02:13', 1, 0, 0.00, NULL, 0),
(471, 'كروسون زعتر و لبنة', '.', 'd2d76aa6-5363-4669-9b9a-e3b05c15c137', 18.00, 83, '2022-01-21 14:02:37', '2022-01-21 15:56:15', 1, 0, 0.00, NULL, 0),
(472, 'كروسون أجبان', '.', '4ae106d1-89fd-4073-bf4a-0dadf6356322', 18.00, 83, '2022-01-21 14:03:11', '2022-01-21 15:51:30', 1, 0, 0.00, NULL, 0),
(473, 'كروسون بالنوتيلا', '.', 'bde8ce77-b0c9-40f3-9f08-560b81ed80cb', 22.00, 83, '2022-01-21 14:03:42', '2022-01-21 15:51:04', 1, 0, 0.00, NULL, 0),
(474, 'ساندوش الاجبان المتعددة', '.', '79d4f8e5-7ccc-49a4-8e0c-f0b5b84d2e2d', 20.00, 83, '2022-01-21 14:04:27', '2022-01-21 15:26:38', 1, 0, 0.00, NULL, 0),
(475, 'ساندوتش  BMT', '.', '53f57f10-5e89-4976-9a42-aae94f5fec4c', 19.00, 83, '2022-01-21 14:05:13', '2022-01-21 14:46:27', 1, 0, 0.00, NULL, 0),
(476, 'ماء نوفا', '.', '40757b53-9d15-44bd-adef-8fd8878f169f', 4.00, 87, '2022-01-21 14:05:41', '2022-01-22 04:21:38', 1, 0, 0.00, NULL, 0),
(477, 'فرنش توست', '.', '780d11fd-6fb3-48a1-956b-fa0b781378cb', 26.00, 82, '2022-01-21 14:06:01', '2022-01-21 14:41:23', 1, 0, 0.00, NULL, 0),
(478, 'وافل', '،', '79d97c41-0d35-4799-afa8-03fe447811d1', 9.00, 82, '2022-01-21 14:06:27', '2022-01-21 14:39:58', 1, 0, 0.00, NULL, 0),
(479, 'جرانولا مع الفواكة و الزبادي اليبوناني', ',', '71e923aa-5545-4868-b3fb-72d9980f1463', 21.00, 82, '2022-01-21 14:07:00', '2022-01-21 14:40:42', 1, 0, 0.00, NULL, 0),
(480, 'براوني كيوب', '٥ قطع', '2a2a7b41-589b-4c06-b2a5-dd748a4d1b9a', 15.00, 82, '2022-01-21 15:52:38', '2022-01-21 15:52:57', 1, 0, 0.00, NULL, 0),
(481, 'Test Product', 'Testing Product', '', 1.00, 88, '2022-02-03 11:27:36', '2022-02-22 03:02:03', 1, 0, 15.00, NULL, 0),
(482, 'كود رد', 'CAL ( 152 )', '', 3.00, 78, '2022-02-04 23:03:51', '2022-02-04 23:03:51', 1, 0, 0.00, NULL, 0),
(483, 'كيكة نوتيلا', 'CAL ( 180 )', '', 21.00, 77, '2022-02-04 23:08:38', '2022-02-04 23:15:26', 1, 0, 0.00, NULL, 0),
(484, 'كيكة الزعفران', 'CAL ( 150 )', '4bd44a94-014e-4874-8546-523ed4c2369e', 18.00, 77, '2022-02-04 23:10:06', '2022-02-10 11:14:09', 1, 0, 0.00, NULL, 0),
(485, 'كيكة كراميل', 'CAL ( 170 )', '', 18.00, 77, '2022-02-04 23:11:27', '2022-02-04 23:11:27', 1, 0, 0.00, NULL, 0),
(486, 'كيكة عسل', 'CAL ( 140 )', '', 21.00, 77, '2022-02-04 23:12:49', '2022-02-04 23:12:49', 1, 0, 0.00, NULL, 0),
(487, 'كيكة رد فلفيت', 'CAL ( 155 )', '', 19.00, 77, '2022-02-04 23:13:52', '2022-02-04 23:13:52', 1, 0, 0.00, NULL, 0),
(488, 'بنوفي', 'CAL ( 130 )', '', 21.00, 77, '2022-02-04 23:15:05', '2022-02-04 23:15:05', 1, 0, 0.00, NULL, 0),
(489, 'تجربة ١', '.', '', 1.00, 89, '2022-02-08 18:04:42', '2022-02-08 18:04:42', 1, 0, 0.00, NULL, 0),
(490, 'اسبريسو', 'kcal 3', '6c759546-a3d8-4032-a2e4-8fb55dabe858', 13.00, 91, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(491, 'ميكاتو', 'kcal 15', '55c0bb85-3869-4b29-9ad2-554cae4d8658', 14.00, 91, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(492, 'أمريكانو', 'kcal 10', '10712f92-1cb7-4b40-ad9e-8af6c2d60304', 14.00, 91, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(493, 'قهوة اليوم', 'kcal 3', 'e8967d97-adf3-4dd6-bdac-d321b99b2117', 13.00, 91, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(494, 'كورتادو', 'kcal 52', '8bdc8d41-4f89-47a6-be22-efacc8d4dd15', 14.00, 91, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(495, 'فلات وايت', 'kcal 56', 'eb77d580-781c-4508-b950-7ee43d58724e', 15.00, 91, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(496, 'كابتشينو', 'kcal 150', 'afb98ade-907f-4543-9e8f-00a5c77a53c9', 16.00, 91, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(497, 'لاتيه', 'kcal 110', '1d51027e-d28a-4a5e-abc8-5b48a624dff8', 16.00, 91, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(498, 'سبانش لاتيه', 'kcal 200', '1b6502cc-7571-4769-8a79-a61fccd1eb3a', 20.00, 91, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(499, 'بستاشيو لاتيه', 'kcal 240', '62ca2e4a-3442-456c-bbd1-b8decdbd778f', 21.00, 91, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(500, 'روز لاتيه', 'kcal 190', '6aa5b3f4-6881-4cd6-8256-0e8746eb902c', 19.00, 91, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(501, 'قرفة لاتيه', 'kcal 190', '7cd58f65-ab20-44d9-814e-3e715c881792', 19.00, 91, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(502, 'ايلاتشي لاتيه', 'kcal 107', '18a3ac72-3be2-4919-8bc0-e9dcfd04271d', 21.00, 91, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(503, 'كراميل ميكاتو', 'kcal 240', 'edcde658-62db-405f-9887-e8225994363b', 19.00, 91, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(504, 'سولتد كراميل لاتيه', 'kcal 250', '00e2348e-1edc-45eb-aaa6-08f129f4757b', 19.00, 91, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(505, 'موكا', 'kcal 170', '8cbd542c-8bf3-4cad-bb47-d1c75d4cb248', 16.00, 91, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(506, 'وايت موكا', 'kcal 320', 'e7ff34d3-8d82-4a22-a25e-2f988c22ef03', 19.00, 91, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(507, 'هوت تشوكلت', 'kcal 220', 'ec5ad232-37f8-4bb9-b67e-6e3a081e598b', 16.00, 91, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(508, 'أفوجاتو', 'kcal 277', '', 20.00, 92, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(509, 'كولد برو', 'kcal 3', '14e3ca76-f8f3-40f7-b11c-73e794114296', 27.00, 92, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(510, 'ايس أمريكانو', 'kcal 15', '', 17.00, 92, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(511, 'ايس قهوة اليوم', 'kcal 3', '', 13.00, 92, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(512, 'ايس لاتيه', 'kcal 150', '', 18.00, 92, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(513, 'ايس سبانش لاتيه', 'kcal 220', '', 20.00, 92, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(514, 'ايس بستاشيو لاتيه', 'kcal 260', '', 22.00, 92, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(515, 'ايس روز لاتيه', 'Kcal 200', '', 20.00, 92, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(516, 'ايس قرفة لاتيه', 'kcal 210', '', 19.00, 92, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(517, 'ايس كراميل ميكاتو', 'kcal 260', '', 22.00, 92, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(518, 'ايس سولتد كراميل لاتيه', 'kcal 270', '', 20.00, 92, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(519, 'فرابتشينو كراميل', 'kcal 420', '', 25.00, 92, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(520, 'ايس ايلاتشي لاتيه', 'kcal 107', '', 21.00, 92, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(521, 'ايس موكا', 'kcal 220', '', 19.00, 92, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(522, 'ايس شيكن وايت موكا', 'kcal 370', '', 22.00, 92, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(523, 'ايس تشوكلت', 'kcal 230', '', 18.00, 92, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(524, 'V60', 'kcal 3', 'f27706fe-4786-4a3a-87af-a730ba959c66', 18.00, 93, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(525, 'كيميكس', 'kcal 3', '5da059f6-fd3b-49e4-9414-0f2e73e780a8', 18.00, 93, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(526, 'كاليتا', 'kcal 3', '60c5fc16-f883-45d2-91db-8a0ed3116125', 18.00, 93, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(527, 'ايروبريس', 'kcal 3', '4bd92775-31ac-496b-9581-aff3f3c8b29b', 19.00, 93, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(528, 'Ice V60', 'Kcal 3', 'a27637d5-47e6-4966-b3f9-9a5cbd06ead1', 21.00, 93, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(529, 'ايس تي خوخ', 'kcal 170', 'fc6f3a5b-9971-48e6-928e-9b772e8224a3', 18.00, 94, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(530, 'ايس تي توت', 'kcal 170', '5b599e45-e9e8-4932-a0f9-4e6fffc13027', 18.00, 94, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(531, 'ايس تي باشن فروت', 'kcal 179', 'd36e0725-33ff-4588-bd26-b133c8423da3', 18.00, 94, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(532, 'بلو أوشن', 'kcal 410', '9d9ec190-1ed0-4ed6-8180-7b838f291e09', 18.00, 94, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 0, 0, 0.00, NULL, 0),
(533, 'بينك بيري', 'kcal 340', '07d14426-4aa1-4572-b43b-5e3f701edede', 18.00, 94, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(534, 'قرين فوريست', 'kcal 203', '6ee70917-bb50-4571-a1d2-ced915e14d9c', 18.00, 94, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(535, 'برتقال', 'kcal 134', '', 15.00, 94, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(536, 'ليمون', 'kcal 15', '', 6.00, 94, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(537, 'شاي انجليزي', 'kcal 7', '', 11.00, 95, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(538, 'شاي أحمر بالفواكه', 'kcal 11', '', 11.00, 95, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(539, 'شاي ياباني', 'kcal 8', '', 11.00, 95, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(540, 'شاي أخضر بالفواكه', 'kcal 5', '', 11.00, 95, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(541, 'قهوة فرنسي', 'kcal 92', '', 16.00, 96, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(542, 'قهوة تركي', 'kcal 5', '66bfed8f-46a8-41b9-9c90-eec6b5915045', 14.00, 96, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(543, 'قهوة تركي بالحليب', 'kcal 52', '03f8e7e4-a24c-4fce-9813-e847f741a7fe', 16.00, 96, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(544, 'قهوة تركي بالهيل', 'kcal 8', 'bedfec34-f807-4601-8c68-1c22108ad9d3', 15.00, 96, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(545, 'قهوة تركي بالحليب و الهيل', 'kcal 55', '49ef8879-db24-4d0e-9212-2681e98c3cc0', 18.00, 96, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(546, 'ماء نوفا', '.', '40757b53-9d15-44bd-adef-8fd8878f169f', 4.00, 96, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(547, 'كوكيز', 'kcal 245', '', 8.00, 97, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(548, 'تارت رطب', 'kcal 215 - ٣ قطع', '', 17.00, 97, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(549, 'تارت بيكان مع الايسكريم', 'kcal 503', '26c15a78-7ecd-4cce-a558-0ac220adc922', 28.00, 97, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(550, 'بانوفي', 'kcal 335', '', 20.00, 97, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(551, 'تيراميسو قهوة', 'local 337', '', 17.00, 97, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(552, 'تيراميسو توت و ليمون', 'kcal 307', '53a619f0-5dc1-4250-af9d-b8de5996e7a3', 22.00, 97, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(553, 'مفن تشوكلت', 'kcal 478', '6435394f-432b-4ab2-b128-14c4b0cdb221', 20.00, 97, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(554, 'كيكة التمر مع الايسكريم', 'kcal 229', '4025fab8-4c22-4b77-901a-9b4ebfa9a34d', 22.00, 97, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(555, 'كيكة ماربل', 'kcal 108', '33bedbd6-8105-4416-9007-b95fa62b284d', 5.00, 97, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(556, 'كيكة موز', 'kcal 119', '93c17de8-50b2-41f4-b047-88b1acdacec8', 6.00, 97, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(557, 'كيكة برتقال', 'kcal 136', 'bf111e2f-c82b-492b-9c2d-e4e2bf3bcabd', 7.00, 97, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(558, 'ماكرون', 'kcal 404', '91302a1e-02c9-4302-80fb-5a9e42bc7e93', 3.00, 97, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(559, 'كيكة القرع', '.', '11883c6d-7bbb-4884-adef-17a14afc14b2', 22.00, 97, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(560, 'تشيز كيك القهوة العربي و كيكة التمر', '.', '18544b07-9495-4bdf-9437-5292bc6bace8', 24.00, 97, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(561, 'أبل كرامبل مع الايسكريم', '.', '2476bb1e-c7a0-4bad-9323-0d9987437dff', 22.00, 97, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(562, 'فرنش توست', '.', '780d11fd-6fb3-48a1-956b-fa0b781378cb', 26.00, 97, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(563, 'وافل', '،', '79d97c41-0d35-4799-afa8-03fe447811d1', 9.00, 97, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(564, 'جرانولا مع الفواكة و الزبادي اليبوناني', ',', '71e923aa-5545-4868-b3fb-72d9980f1463', 21.00, 97, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(565, 'براوني كيوب', '٥ قطع', '2a2a7b41-589b-4c06-b2a5-dd748a4d1b9a', 15.00, 97, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(566, 'بريوش بالحلوم و الريحان', 'kcal 148', 'bb25d81f-6bb1-4fe3-88df-5bdf333b072f', 22.00, 98, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(567, 'بريوش بالتونة و الرمان', 'kcal 202', '982c60c5-7229-420e-bd82-423b7327f654', 22.00, 98, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(568, 'بريوش بالديك الرومي', 'kcal 198', 'dd11a476-ad04-4cf3-82d5-3dbe022205e9', 24.00, 98, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(569, 'بريوش بالبيض', '.', '08ff6f94-87f7-4959-9c47-52834d5bd4f8', 19.00, 98, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(570, 'بريوش بالبيض و الأفوكادو', '.', 'ef34f396-eee1-47ad-8408-ca7ac7aa2fb1', 26.00, 98, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(571, 'بريوش زعتر و لبنة', '.', '', 17.00, 98, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(572, 'بريوش نوتيلا', '.', '', 23.00, 98, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(573, 'كروسون سادة', '.', '', 7.00, 98, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(574, 'كروسون بالحلوم و الريحان', '.', '', 23.00, 98, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(575, 'كروسون بالتونة و الرمان', '.', '', 21.00, 98, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(576, 'كروسون بالديك الرمي', '.', '', 23.00, 98, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(577, 'كروسون زعتر و لبنة', '.', 'd2d76aa6-5363-4669-9b9a-e3b05c15c137', 18.00, 98, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(578, 'كروسون أجبان', '.', '4ae106d1-89fd-4073-bf4a-0dadf6356322', 18.00, 98, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(579, 'كروسون بالنوتيلا', '.', 'bde8ce77-b0c9-40f3-9f08-560b81ed80cb', 22.00, 98, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(580, 'ساندوش الاجبان المتعددة', '.', '79d4f8e5-7ccc-49a4-8e0c-f0b5b84d2e2d', 20.00, 98, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(581, 'ساندوتش  BMT', '.', '53f57f10-5e89-4976-9a42-aae94f5fec4c', 19.00, 98, '2022-02-12 00:06:57', '2022-02-12 00:06:57', 1, 0, 0.00, NULL, 0),
(582, 'Test Item', 'test', '9085719b-c30d-46e0-8b37-10d4937c4047', 25.00, 99, '2022-03-08 13:27:03', '2022-03-08 13:27:03', 1, 0, 0.00, NULL, 0),
(583, 'test item', 'test', '', 20.00, 90, '2022-04-11 11:29:52', '2022-04-11 11:29:52', 1, 0, 0.00, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `item_has_allergens`
--

CREATE TABLE `item_has_allergens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `allergen_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `localmenus`
--

CREATE TABLE `localmenus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `languageName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` int(11) NOT NULL DEFAULT '0' COMMENT '0 - No, 1 - Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `localmenus`
--

INSERT INTO `localmenus` (`id`, `created_at`, `updated_at`, `restaurant_id`, `language`, `languageName`, `default`) VALUES
(1, '2021-12-31 02:37:44', '2021-12-31 02:37:44', 17, 'ar', 'Arabic', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_29_200844_create_languages_table', 1),
(4, '2018_08_29_205156_create_translations_table', 1),
(5, '2019_05_03_000001_create_customer_columns', 1),
(6, '2019_05_03_000002_create_subscriptions_table', 1),
(7, '2019_05_03_000003_create_subscription_items_table', 1),
(8, '2020_02_06_010033_create_permission_tables', 1),
(9, '2020_02_06_022212_create_restorants_table', 1),
(10, '2020_02_09_015116_create_status_table', 1),
(11, '2020_02_09_152551_create_categories_table', 1),
(12, '2020_02_09_152656_create_items_table', 1),
(13, '2020_02_11_052117_create_address_table', 1),
(14, '2020_02_11_054259_create_orders_table', 1),
(15, '2020_02_20_094727_create_settings_table', 1),
(16, '2020_03_25_134914_create_pages_table', 1),
(17, '2020_04_03_143518_update_settings_table', 1),
(18, '2020_04_10_202027_create_payments_table', 1),
(19, '2020_04_11_165819_update_table_orders', 1),
(20, '2020_04_22_105556_update_items_table', 1),
(21, '2020_04_23_212320_update_restorants_table', 1),
(22, '2020_04_23_212502_update_orders_table', 1),
(23, '2020_04_28_112519_update_address_table', 1),
(24, '2020_05_07_122727_create_hours_table', 1),
(25, '2020_05_09_012646_update_orders_add_delivery_table', 1),
(26, '2020_05_09_024507_add_options_to_settings_table', 1),
(27, '2020_05_20_232204_create_notifications_table', 1),
(28, '2020_06_03_134258_change_radius_to_delivery_area_restorants_table', 1),
(29, '2020_06_26_131803_create_sms_verifications_table', 1),
(30, '2020_07_12_182829_create_extras_table', 1),
(31, '2020_07_14_155509_create_plan_table', 1),
(32, '2020_07_23_183000_update_restorants_with_featured', 1),
(33, '2020_07_28_131511_update_users_sms_verification', 1),
(34, '2020_07_30_102916_change_json_to_string', 1),
(35, '2020_08_01_014851_create_variants', 1),
(36, '2020_08_14_003718_create_ratings_table', 1),
(37, '2020_08_18_035731_update_table_plans', 1),
(38, '2020_08_18_053012_update_user_add_plan', 1),
(39, '2020_09_02_131604_update_orders_time_to_prepare', 1),
(40, '2020_09_09_080747_create_cities_table', 1),
(41, '2020_09_28_131250_update_item_softdelete', 1),
(42, '2020_10_24_150254_create_tables_table', 1),
(43, '2020_10_25_021321_create_visits_table', 1),
(44, '2020_10_26_004421_update_orders_client_nullable', 1),
(45, '2020_10_26_104351_update_restorant_table', 1),
(46, '2020_10_26_190049_update_plan', 1),
(47, '2020_10_27_180123_create_stripe_payment', 1),
(48, '2020_11_01_190615_update_user_table', 1),
(49, '2020_11_05_081140_create_paths_table', 1),
(50, '2020_11_14_111220_create_phone_in_orders', 1),
(51, '2020_11_17_211252_update_logo_in_settings', 1),
(52, '2020_11_25_182453_create_paypal_payment', 1),
(53, '2020_11_25_225536_update_user_for_paypal_subsc', 1),
(54, '2020_11_27_102829_update_restaurants_for_delivery_pickup', 1),
(55, '2020_11_27_165901_create_coupons_table', 1),
(56, '2020_12_02_192213_update_for_whatsapp_order', 1),
(57, '2020_12_02_195333_update_for_mollie_payment', 1),
(58, '2020_12_07_142304_create_banners_table', 1),
(59, '2020_12_10_155335_wp_address', 1),
(60, '2020_12_14_195627_update_for_paystack_sub', 1),
(61, '2020_12_15_130511_update_paystack_verification', 1),
(62, '2020_12_27_155822_create_restaurant_multilanguage', 1),
(63, '2020_12_27_162902_update_restaurant_with_currency', 1),
(64, '2021_01_16_093708_update_restorant_with_pay_link', 1),
(65, '2021_01_22_142723_create_crud_for_whatsapp_landing', 1),
(66, '2021_02_16_065037_create_configs_table', 2),
(67, '2021_02_18_140330_allow_null_on_config_value', 2),
(68, '2021_02_22_135519_update_settinga_table', 2),
(69, '2021_02_26_113854_order_fee_update', 2),
(70, '2021_03_23_135952_update_config_table', 2),
(71, '2021_04_17_002457_update_restables', 2),
(72, '2021_04_17_231310_update_restablesagain', 2),
(73, '2021_04_22_184249_update_user_with_staff', 2),
(74, '2021_04_26_190410_create_cart_storage_table', 2),
(75, '2021_05_19_032734_update_order_with_employee_id', 2),
(76, '2021_05_19_124342_create_simple_delivery_areas', 2),
(77, '2021_05_28_070715_create_expenses', 2),
(78, '2021_07_01_084847_make_restaurant_soft_delete', 2),
(79, '2021_07_16_170627_make_user_soft_delete', 2),
(80, '2021_07_16_172430_make_user_email_not_unique', 2),
(81, '2021_07_21_153807_rename_to_company', 2),
(82, '2021_07_21_162114_make_pure_saas', 2),
(83, '2021_08_04_073843_add_md_to_orders', 2),
(84, '2021_09_03_131601_update_with_default_variants', 2),
(85, '2021_09_04_091444_cat_sd', 2),
(86, '2021_10_09_162446_update_order_with_coupons', 2),
(87, '2021_11_06_104921_create_item_has_allergens', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2),
(5, 'App\\User', 3),
(5, 'App\\User', 4),
(5, 'App\\User', 5),
(5, 'App\\User', 6),
(5, 'App\\User', 7),
(5, 'App\\User', 8),
(5, 'App\\User', 9),
(5, 'App\\User', 10),
(5, 'App\\User', 11),
(5, 'App\\User', 12),
(5, 'App\\User', 13),
(5, 'App\\User', 14),
(5, 'App\\User', 15),
(5, 'App\\User', 16),
(5, 'App\\User', 17),
(5, 'App\\User', 18),
(5, 'App\\User', 19),
(5, 'App\\User', 20),
(5, 'App\\User', 21),
(5, 'App\\User', 22),
(5, 'App\\User', 23),
(5, 'App\\User', 24),
(5, 'App\\User', 25),
(5, 'App\\User', 26),
(5, 'App\\User', 27),
(5, 'App\\User', 28),
(5, 'App\\User', 29),
(5, 'App\\User', 30),
(5, 'App\\User', 31),
(5, 'App\\User', 32),
(5, 'App\\User', 33),
(5, 'App\\User', 34),
(2, 'App\\User', 35),
(2, 'App\\User', 36),
(2, 'App\\User', 37),
(2, 'App\\User', 38),
(2, 'App\\User', 39),
(2, 'App\\User', 40),
(2, 'App\\User', 41),
(2, 'App\\User', 42),
(2, 'App\\User', 43),
(2, 'App\\User', 44),
(2, 'App\\User', 45),
(2, 'App\\User', 46),
(2, 'App\\User', 47),
(2, 'App\\User', 48),
(2, 'App\\User', 49),
(2, 'App\\User', 50),
(2, 'App\\User', 51),
(2, 'App\\User', 52),
(2, 'App\\User', 53),
(2, 'App\\User', 54),
(2, 'App\\User', 55),
(2, 'App\\User', 56),
(2, 'App\\User', 57),
(3, 'App\\User', 58),
(2, 'App\\User', 59);

-- --------------------------------------------------------

--
-- Table structure for table `noon_paymentlogs`
--

CREATE TABLE `noon_paymentlogs` (
  `id` int(11) NOT NULL,
  `plan_id` varchar(250) DEFAULT NULL,
  `price` varchar(250) DEFAULT NULL,
  `expiry_date` varchar(250) NOT NULL,
  `user_id` int(11) NOT NULL,
  `request_refid` varchar(120) NOT NULL,
  `tr_ref` varchar(50) NOT NULL,
  `status_text` varchar(80) NOT NULL,
  `checkout_url` text NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `noon_paymentlogs`
--

INSERT INTO `noon_paymentlogs` (`id`, `plan_id`, `price`, `expiry_date`, `user_id`, `request_refid`, `tr_ref`, `status_text`, `checkout_url`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '3', '99', '2022-03-10', 46, '201892730112', '5UStzy-262', 'CAPTURED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T201892730112', 1, '2022-02-10 15:11:24', '2022-02-10 15:23:10'),
(2, '2', '49', '2022-03-10', 46, '780922472598', 'AguCY7-974', 'CAPTURED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T780922472598', 1, '2022-02-10 15:31:12', '2022-02-10 15:31:44'),
(3, '3', '99', '2022-02-09', 46, '648552076950', 'prL2Jf-61', 'CAPTURED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T648552076950', 1, '2022-02-10 15:32:37', '2022-02-10 15:33:07'),
(4, '2', '49', '2022-03-10', 46, '216049223709', 'T8dAiX-186', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T216049223709', 0, '2022-02-10 15:57:17', '0000-00-00 00:00:00'),
(5, '3', '99', '2022-03-10', 47, '126357212351', 'pOjbWq-607', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T126357212351', 0, '2022-02-10 18:26:10', '0000-00-00 00:00:00'),
(6, '3', '99', '2022-03-10', 47, '905595197084', 'sHL7yz-485', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T905595197084', 0, '2022-02-10 18:50:41', '0000-00-00 00:00:00'),
(7, '3', '99', '2022-03-10', 47, '869688561203', 'UXKeu8-485', 'CAPTURED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T869688561203', 1, '2022-02-10 19:11:24', '2022-02-10 19:12:07'),
(8, '2', '1', '2022-03-10', 47, '263162839596', 'RuAKnd-474', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T263162839596', 0, '2022-02-10 19:39:29', '0000-00-00 00:00:00'),
(9, '2', '1', '2022-03-10', 47, '216134309145', 'Sg0BPa-917', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T216134309145', 0, '2022-02-10 19:41:26', '0000-00-00 00:00:00'),
(10, '2', '1', '2022-03-10', 45, '278407359803', 'Z8nX2i-787', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T278407359803', 0, '2022-02-10 20:02:31', '0000-00-00 00:00:00'),
(11, '3', '99', '2022-03-10', 45, '486890164157', 'M4bZwo-681', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T486890164157', 0, '2022-02-10 20:05:02', '0000-00-00 00:00:00'),
(12, '2', '1', '2022-03-11', 47, '141355974831', 'OrfSsy-963', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T141355974831', 0, '2022-02-11 00:02:03', '0000-00-00 00:00:00'),
(13, '4', '799', '2023-02-11', 47, '493494135193', 'ZpigPr-777', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T493494135193', 0, '2022-02-11 00:02:22', '0000-00-00 00:00:00'),
(14, '2', '1', '2022-03-11', 47, '273943643838', 'bv7wu5-263', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T273943643838', 0, '2022-02-11 00:02:53', '0000-00-00 00:00:00'),
(15, '3', '99', '2022-03-11', 49, '906250424096', 'HpX5NT-750', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T906250424096', 0, '2022-02-11 05:01:07', '0000-00-00 00:00:00'),
(16, '2', '1', '2022-03-11', 49, '888805102218', '1D804p-384', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T888805102218', 0, '2022-02-11 22:25:54', '0000-00-00 00:00:00'),
(17, '2', '1', '2022-03-12', 49, '749316139781', 'E9LwAO-604', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T749316139781', 0, '2022-02-12 00:09:56', '0000-00-00 00:00:00'),
(18, '2', '1', '2022-03-12', 50, '783456892071', 'hme38h-768', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T783456892071', 0, '2022-02-12 00:26:49', '0000-00-00 00:00:00'),
(19, '3', '99', '2022-03-12', 49, '216823368330', 'WmoS9A-363', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T216823368330', 0, '2022-02-12 00:46:25', '0000-00-00 00:00:00'),
(20, '4', '799', '2023-02-13', 47, '136360624812', 'O3LdKf-68', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T136360624812', 0, '2022-02-13 17:17:05', '0000-00-00 00:00:00'),
(21, '4', '799', '2023-02-14', 47, '923463511720', 'gBDPgL-84', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T923463511720', 0, '2022-02-14 11:52:34', '0000-00-00 00:00:00'),
(22, '5', '399', '2023-02-14', 45, '751076845705', 'yzqjO6-919', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T751076845705', 0, '2022-02-14 23:10:35', '0000-00-00 00:00:00'),
(23, '2', '1', '2022-03-15', 52, '747205447965', 'gmJWpk-630', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T747205447965', 0, '2022-02-15 02:20:03', '0000-00-00 00:00:00'),
(24, '2', '1', '2022-03-15', 52, '592582529820', 'uMe5fK-196', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T592582529820', 0, '2022-02-15 02:20:20', '0000-00-00 00:00:00'),
(25, '2', '1', '2022-03-15', 52, '259079850528', 'ksCJx7-781', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T259079850528', 0, '2022-02-15 02:22:34', '0000-00-00 00:00:00'),
(26, '2', '1', '2022-03-15', 52, '291128764173', '42NqOZ-938', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T291128764173', 0, '2022-02-15 02:23:28', '0000-00-00 00:00:00'),
(27, '2', '1', '2022-03-17', 45, '356372934675', '9YAdIO-464', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T356372934675', 0, '2022-02-17 00:29:06', '0000-00-00 00:00:00'),
(28, '4', '799', '2023-02-17', 49, '643482464389', 'LMpK7j-354', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T643482464389', 0, '2022-02-17 04:30:12', '0000-00-00 00:00:00'),
(29, '5', '399', '2023-02-17', 49, '334922323641', '0YObM3-273', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T334922323641', 0, '2022-02-17 07:15:16', '0000-00-00 00:00:00'),
(30, '4', '799', '2023-02-17', 49, '108657224323', 'qyxPyd-807', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T108657224323', 0, '2022-02-17 17:22:58', '0000-00-00 00:00:00'),
(31, '2', '1', '2022-03-18', 45, '871887663495', 'k0QBKZ-589', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T871887663495', 0, '2022-02-18 17:24:26', '0000-00-00 00:00:00'),
(32, '3', '99', '2022-03-18', 45, '109162864788', '4YFL1W-118', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T109162864788', 0, '2022-02-18 17:36:58', '0000-00-00 00:00:00'),
(33, '2', '1', '2022-03-20', 45, '199392479521', 'n2tvW0-618', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T199392479521', 0, '2022-02-20 00:01:45', '0000-00-00 00:00:00'),
(34, '3', '99', '2022-03-20', 45, '315727981094', 'VGK2F4-12', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T315727981094', 0, '2022-02-20 04:37:38', '0000-00-00 00:00:00'),
(35, '5', '1', '2023-02-21', 45, '322182862644', 'zeeiuT-825', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?data=T322182862644', 0, '2022-02-21 02:02:29', '0000-00-00 00:00:00'),
(36, '3', '99', '2022-03-23', 39, '211774445350', 'mdIrnc-392', 'CAPTURED', 'https://checkout-stg.noonpayments.com/en/default/index?info=KueMVEqT%2F8vH1H22mlZ0fE9TOGUNUqA3wvibhhHjYaIiGnP8la%2BygR%2FNXT6X5Q%3D%3D', 1, '2022-02-23 21:00:16', '2022-02-23 21:01:37'),
(37, '4', '799', '2023-02-23', 39, '471699646876', 'mIS2CD-74', 'CAPTURED', 'https://checkout-stg.noonpayments.com/en/default/index?info=y0L1b86zitfnasBSb%2B%2F9%2FwBKZpo%2BuNqUZ2KKSVfesuX7UACzwtZBl57Y05XhAA%3D%3D', 1, '2022-02-23 21:02:10', '2022-02-23 21:02:26'),
(38, '3', '99', '2022-03-25', 54, '470393000593', 'eooGaa-964', 'CAPTURED', 'https://checkout-stg.noonpayments.com/en/default/index?info=slVOxOYs5L7%2Bz4CwQNjb1iR4Ka2OK3FMvqe1e9KeViCq%2FR7tRYSYVy94%2BlMwoA%3D%3D', 1, '2022-02-25 03:12:20', '2022-02-25 03:12:38'),
(39, '4', '799', '2023-02-25', 54, '886700520833', 'iVUNre-721', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?info=8RvzbPbgTnoD0SbaxnFdaQSsHLxL2CsO1oiOjxDEaudbewg%2FlyGJnzNRT6dUXw%3D%3D', 0, '2022-02-25 06:48:34', '0000-00-00 00:00:00'),
(40, '4', '799', '2023-02-25', 54, '918462993850', '3EBvj8-198', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?info=3JIsNRufA%2F64VGNhLPw6LT9oCJN1HWc%2BjuP1xcGrMudaskPxvCj4BWYqKSQJ8Q%3D%3D', 0, '2022-02-25 06:49:41', '0000-00-00 00:00:00'),
(41, '4', '799', '2023-02-25', 54, '181976845207', 'SLZkom-695', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?info=eUB0StJQACb0EXh9ZVsvYMzCa6I8QJeSkcM9Y8pz9VNfM1WGDK2por0cM%2F1ibg%3D%3D', 0, '2022-02-25 06:50:44', '0000-00-00 00:00:00'),
(42, '5', '1', '2023-03-04', 45, '295389089422', 'W1zww7-324', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?info=S1Vv9qmA9VOvesfywKxjCu5sy4jIkeyfmtuyp2Y16TkN4wJMuLfb31%2BAS9HeXw%3D%3D', 0, '2022-03-04 02:21:43', '0000-00-00 00:00:00'),
(43, '2', '1', '2022-04-04', 47, '356462137128', 'x9LwBN-878', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?info=I6Ov7bK03BZKzPlC%2B6yJrfnMQRK1DKbjepZxxmSt4dJGJkr%2BQAn8SawaZfFbpQ%3D%3D', 0, '2022-03-04 19:52:29', '0000-00-00 00:00:00'),
(44, '5', '399', '2023-03-04', 45, '373590380079', 'CIFVXu-174', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?info=FoZYFf9jQ7X9I54vOydBPNYxnpKnf6uhXEjYHMQH13d8LhzxRgQcW%2BvkBlwoIQ%3D%3D', 0, '2022-03-04 20:30:28', '0000-00-00 00:00:00'),
(45, '2', '59', '2022-04-06', 45, '510493790889', 'HY8v7U-616', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?info=pJfyWnmPE0f4z6IkmZVt7shbgxq8N7nbSPdxMPP1p1sj9IlatuJu8fD%2BZMlaeg%3D%3D', 0, '2022-03-06 03:25:38', '0000-00-00 00:00:00'),
(46, '2', '59', '2022-04-06', 45, '246199274673', 'OfV6x8-830', 'CAPTURED', 'https://checkout-stg.noonpayments.com/en/default/index?info=eekIBbKKjaL15KSO5Zi%2BxvKc5BtqxS9xggKnDkAzApjH32FlGYnT7gr8ZIEVfQ%3D%3D', 1, '2022-03-06 12:21:32', '2022-03-06 12:22:05'),
(47, '6', '499', '2023-03-06', 45, '136357530292', 'PWW0R9-709', 'CAPTURED', 'https://checkout-stg.noonpayments.com/en/default/index?info=MTmksU%2F2U%2FTIh0Fgw6SlLo7cLSVdSlLsD6foe7Tcg8fouYTF%2BwyVnBGHMBa5iQ%3D%3D', 1, '2022-03-06 16:47:59', '2022-03-06 16:48:44'),
(48, '5', '399', '2023-03-06', 45, '493274910857', 'FPJof3-794', 'CAPTURED', 'https://checkout-stg.noonpayments.com/en/default/index?info=ye9l2gJZ19CJvk2VwMYP9OdXHswyy9UzQN3KD3vqvrWV%2Fx55WDiJ3Bmm5umgHw%3D%3D', 1, '2022-03-06 16:49:46', '2022-03-06 16:50:12'),
(49, '2', '59', '2022-04-07', 45, '257120274436', 'BU1xGY-858', 'CAPTURED', 'https://checkout-stg.noonpayments.com/en/default/index?info=pJIxZJXj%2F0ZLKhhiGXRUkzyttZTT38%2FzTwMBu1sBj9zh2Pc%2Ba4csbKxoXMc7Hg%3D%3D', 1, '2022-03-07 02:00:04', '2022-03-07 02:00:36'),
(50, '6', '499', '2023-03-08', 56, '291364389643', 'JePWgx-622', 'CAPTURED', 'https://checkout-stg.noonpayments.com/en/default/index?info=w6RjVymJjKVFkNdSHpEyWDyjrHp0uy07qkUKtjQU0No5KuyRqEOfX%2B%2Fx7%2FtPHg%3D%3D', 1, '2022-03-08 16:25:35', '2022-03-08 16:26:04'),
(51, '6', '499', '2023-03-13', 45, '278965226941', 'BRUDUh-351', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?info=%2FSNRwY42IBLlBkwgJBk%2FzI7w4vUqnldZHSFXCDu2CHgocFHJjdIC%2F4kRBGsdLg%3D%3D', 0, '2022-03-13 11:07:35', '0000-00-00 00:00:00'),
(52, '2', '59', '2022-04-17', 56, '922776769153', '7IOgIp-344', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?info=j3UtWZrhfyh70srdF949TNVbCifKlrljwQpu9zG%2BjsVASmQJCvNAIP2Iowmysg%3D%3D', 0, '2022-03-17 04:46:41', '0000-00-00 00:00:00'),
(53, '3', '99', '2022-04-23', 45, '641760744577', 'DyNDZQ-73', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?info=t90dcznkmOZDT3ELiqlpQP3cPTLNlv3yHuciRi1uGyAaJ6fD%2B32LdlSWBYg7Ow%3D%3D', 0, '2022-03-23 01:16:44', '0000-00-00 00:00:00'),
(54, '6', '499', '2023-03-23', 45, '355887199789', '7QCBiz-687', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?info=MENW1ZwK2PJ5LZVbnndBvydntNroMdjZ0LyrR%2BxwHZsuPOjAGyc7euMljRLb6g%3D%3D', 0, '2022-03-23 01:18:07', '0000-00-00 00:00:00'),
(55, '2', '59', '2022-04-23', 45, '121274828050', 'ip0ePp-392', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?info=sRL3MufE%2BK36smS5zQ12CLfYag6prOWAPbl19MrZDC8PB3TwOzUlQz7bjTpz8g%3D%3D', 0, '2022-03-23 01:19:46', '0000-00-00 00:00:00'),
(56, '2', '59', '2022-04-23', 45, '257170491654', 'x5pL26-668', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?info=EsGxoLs5EzWnDlGbp7z6oiALCqoxsB%2FAixynK08ujs0Sh86B7KUn8u0mQigwsg%3D%3D', 0, '2022-03-23 01:20:45', '0000-00-00 00:00:00'),
(57, '2', '59', '2022-04-23', 47, '766057999502', 'PIFEmL-351', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?info=yfgSmmQ88ogDj%2B3j1QMtsgPis7EoBPax7EjPIUU9uCDosjx5t4EfHqgZRfgpgQ%3D%3D', 0, '2022-03-23 05:34:30', '0000-00-00 00:00:00'),
(58, '5', '399', '2023-03-23', 47, '762337339583', 'xcDjF2-676', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?info=Incm%2FhAUByXeC6oMUK%2FkKzBEmiCCdML00qlEgpXmlZAheIz6g6iU8bpIWxM1SQ%3D%3D', 0, '2022-03-23 05:35:19', '0000-00-00 00:00:00'),
(59, '2', '59', '2022-04-25', 49, '244015025564', 'FkqIE4-852', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?info=kDuzwcVkU%2BhrIYhzofoJ7r5KNmqhK6FGSZgHkWoq%2FyzgTDI0nlPC9kjQQt8LBg%3D%3D', 0, '2022-03-25 01:54:59', '0000-00-00 00:00:00'),
(60, '2', '59', '2022-04-25', 49, '457444256929', 'tpuf4G-702', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?info=31KDNlRxiOdbDJC%2FekvoQJo57AG2Hzr4RomqDrE0UjSdV01Wra6tZK5Azx63NQ%3D%3D', 0, '2022-03-25 23:02:45', '0000-00-00 00:00:00'),
(61, '6', '499', '2023-03-30', 39, '886166008080', 'iAEz1C-467', 'INITIATED', 'https://checkout-stg.noonpayments.com/en/default/index?info=vy5ydhGgwEQgNnyzdRL3z02AaqwuAiElaeTLVo6tDM0mfBAm5ZXRWwthPHoauw%3D%3D', 0, '2022-03-30 04:31:59', '0000-00-00 00:00:00'),
(62, '2', '59', '2022-05-01', 56, '140688173852', 'qYHc5Q-595', 'INITIATED', 'https://checkout-stg.noonpayments.com/ar/default/index?info=YxlDXQAwPTwBoeE4yegb2UVYV13nbIei7e%2BXpOaXdcK1aZ%2FisQD%2BiXIp1Wmykg%3D%3D', 0, '2022-04-01 02:30:56', '0000-00-00 00:00:00'),
(63, '6', '499', '2023-04-04', 56, '334131721128', 'qbOXXw-236', 'INITIATED', 'https://checkout-stg.noonpayments.com/ar/default/index?info=kFiF2RxAa54dKB27bKFuA0RlXPHoO67UqATI8%2FxvRY4JsPfgQ41wp9CZenZfow%3D%3D', 0, '2022-04-04 04:40:38', '0000-00-00 00:00:00'),
(64, '5', '399', '2023-04-04', 56, '231355528095', 'ybvExU-675', 'INITIATED', 'https://checkout-stg.noonpayments.com/ar/default/index?info=0T1soWeiGlwtHVouxi%2FbDAgIBGMjBUoZ7OJdF1sqOkDDpHBqiwwVGHmOIFs2WQ%3D%3D', 0, '2022-04-04 04:41:14', '0000-00-00 00:00:00'),
(65, '3', '99', '2022-05-04', 47, '368571927467', 'VFJAv4-867', 'CAPTURED', 'https://checkout-stg.noonpayments.com/ar/default/index?info=SxSwLcxpLlFFCuHSKUJ5cGrtdE3qW4IJhMj3xd0EPIDyFgCTpXbA2j25czo7YQ%3D%3D', 1, '2022-04-04 14:21:30', '2022-04-04 14:22:21'),
(66, '6', '499', '2023-04-06', 45, '353640191159', 'M1OLu4-339', 'INITIATED', 'https://checkout-stg.noonpayments.com/ar/default/index?info=2n5Si065dj15%2FT1BXvTvtKrQzjBlxVRlgLzjZRAfmGJGEljdbLmVsqkstTOpaQ%3D%3D', 0, '2022-04-06 14:30:04', '0000-00-00 00:00:00'),
(67, '6', '499', '2023-04-11', 45, '241999642901', 'u0QU7B-801', 'CAPTURED', 'https://checkout-stg.noonpayments.com/ar/default/index?info=iI5Vv0wDdzoRC8XrR1rHWG7Vhdjpoykv14iz%2B1Vx%2BdEf30QggTnmVrpTN8QWSA%3D%3D', 1, '2022-04-11 12:16:28', '2022-04-11 12:17:08'),
(68, '2', '59', '2022-05-11', 57, '274212767503', 'Z4PGen-811', 'INITIATED', 'https://checkout-stg.noonpayments.com/ar/default/index?info=pNnf2apy%2BcCMxuzd%2BXu%2FD85W%2Bppe6VMyquALzu3hTq%2F2SmLY%2FgJInY7TCMEEvA%3D%3D', 0, '2022-04-11 21:32:19', '0000-00-00 00:00:00'),
(69, '6', '499', '2023-04-16', 45, '218816360085', '6BO9ks-888', 'INITIATED', 'https://checkout-stg.noonpayments.com/ar/default/index?info=LmGuk0P96fu%2FjVHyitNYa1CbvBQYDoqnzT4fpeC3oWEMbWo8h1ih9FXrnjmM%2Fw%3D%3D', 0, '2022-04-16 00:37:39', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('02c823d7-7fe1-4097-96e9-e7e3813d7af0', 'App\\Notifications\\OrderNotification', 'App\\User', 45, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-03-06 09:20:27', '2022-03-06 09:20:27'),
('083af1f6-6930-460f-a3b3-7ecb32c4d005', 'App\\Notifications\\OrderNotification', 'App\\User', 45, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-04-11 11:46:05', '2022-04-11 11:46:05'),
('0ae1dd64-5846-42b6-bf7e-1e438c4886bd', 'App\\Notifications\\OrderNotification', 'App\\User', 45, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-04-11 11:56:06', '2022-04-11 11:56:06'),
('0de6247c-1e5b-4699-a96b-4f0275812533', 'App\\Notifications\\OrderNotification', 'App\\User', 45, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-02-21 03:15:37', '2022-02-21 03:15:37'),
('0f7d02c8-507a-4da8-9c08-1d1922a471ca', 'App\\Notifications\\OrderNotification', 'App\\User', 44, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-01-12 00:16:40', '2022-01-12 00:16:40'),
('182523e8-a7fe-4c40-9a80-0e2e49121f64', 'App\\Notifications\\OrderNotification', 'App\\User', 45, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-02-12 11:16:31', '2022-02-12 11:16:31'),
('1b5d657c-e1f2-4642-ad46-1846581be77e', 'App\\Notifications\\OrderNotification', 'App\\User', 45, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-04-13 12:37:14', '2022-04-13 12:37:14'),
('30ec38f0-f084-49ad-9b4c-fa58195d6f3a', 'App\\Notifications\\OrderNotification', 'App\\User', 39, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-01-17 22:10:15', '2022-01-17 22:10:15'),
('32cb2dae-d6a9-4384-8bc7-012949162a2a', 'App\\Notifications\\OrderNotification', 'App\\User', 44, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-01-12 00:11:48', '2022-01-12 00:11:48'),
('3e2211a1-38fe-466b-9d2f-a9b8c102991b', 'App\\Notifications\\OrderNotification', 'App\\User', 45, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-02-26 12:09:46', '2022-02-26 12:09:46'),
('3ebc40c2-b617-4650-96e7-8fa3d8eff341', 'App\\Notifications\\OrderNotification', 'App\\User', 44, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-01-12 01:53:47', '2022-01-12 01:53:47'),
('4600ebdb-8bf9-426e-9299-d7e7b0bbdfbb', 'App\\Notifications\\OrderNotification', 'App\\User', 39, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-01-17 22:07:48', '2022-01-17 22:07:48'),
('464bd992-c7ed-4c5c-ac44-d42ac68932cd', 'App\\Notifications\\OrderNotification', 'App\\User', 36, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-02-16 21:39:10', '2022-02-16 21:39:10'),
('4a3fc646-f16a-48d6-ae03-ab57e694b2f6', 'App\\Notifications\\OrderNotification', 'App\\User', 39, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-01-17 22:01:27', '2022-01-17 22:01:27'),
('5360a72e-7c37-4810-92f7-5570a2cfd841', 'App\\Notifications\\OrderNotification', 'App\\User', 44, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-01-12 01:52:29', '2022-01-12 01:52:29'),
('54662a5d-047a-43e7-8b3d-1f72e39a81fb', 'App\\Notifications\\OrderNotification', 'App\\User', 45, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-04-10 22:06:29', '2022-04-10 22:06:29'),
('5de3e197-f8ba-4630-8089-3b275bd74170', 'App\\Notifications\\OrderNotification', 'App\\User', 45, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-04-11 09:13:34', '2022-04-11 09:13:34'),
('5f4794dc-4d55-407b-9467-d38ec6744d63', 'App\\Notifications\\OrderNotification', 'App\\User', 39, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-01-23 21:21:28', '2022-01-23 21:21:28'),
('629633d2-8e98-457f-a6d1-70d22a4a4f0d', 'App\\Notifications\\OrderNotification', 'App\\User', 45, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-02-18 15:52:37', '2022-02-18 15:52:37'),
('6adeb878-3d18-43b6-a30c-5471e88177f1', 'App\\Notifications\\OrderNotification', 'App\\User', 45, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-02-21 03:00:30', '2022-02-21 03:00:30'),
('71b2ef78-2041-4661-b3b7-1541b3291b2b', 'App\\Notifications\\OrderNotification', 'App\\User', 39, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-01-17 21:58:43', '2022-01-17 21:58:43'),
('86804bcd-f39e-4c2d-abee-441c5ea99839', 'App\\Notifications\\OrderNotification', 'App\\User', 39, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-01-17 22:03:20', '2022-01-17 22:03:20'),
('92d71207-7f0b-43a1-819d-2f4810741652', 'App\\Notifications\\OrderNotification', 'App\\User', 56, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-03-30 01:37:48', '2022-03-30 01:37:48'),
('9a43ebc3-58bf-4fc9-a962-910586ca3dbd', 'App\\Notifications\\OrderNotification', 'App\\User', 44, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-01-12 00:19:50', '2022-01-12 00:19:50'),
('9b9ffd2e-47e1-4dfc-97c8-058e23d47848', 'App\\Notifications\\OrderNotification', 'App\\User', 56, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-04-12 00:46:07', '2022-04-12 00:46:07'),
('a7ca9ef9-0d04-4314-8f0c-b86b3fbcc88a', 'App\\Notifications\\OrderNotification', 'App\\User', 45, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-02-12 10:03:14', '2022-02-12 10:03:14'),
('abba39b6-2a95-443e-b459-b7feda180d33', 'App\\Notifications\\OrderNotification', 'App\\User', 39, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-01-22 17:43:05', '2022-01-22 17:43:05'),
('b3553eab-b3af-44ad-93e6-6e12bf16c915', 'App\\Notifications\\OrderNotification', 'App\\User', 44, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-01-12 00:15:23', '2022-01-12 00:15:23'),
('b6f1a509-40b1-48a7-94a7-f2235b5bc9e2', 'App\\Notifications\\OrderNotification', 'App\\User', 45, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-03-06 01:15:10', '2022-03-06 01:15:10'),
('c6f0e35e-c096-4ef4-9b44-876d5dcad8d3', 'App\\Notifications\\OrderNotification', 'App\\User', 45, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-03-01 13:11:32', '2022-03-01 13:11:32'),
('d55caeb6-616c-410d-b01a-29e3d5d063d6', 'App\\Notifications\\OrderNotification', 'App\\User', 45, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-02-12 09:24:01', '2022-02-12 09:24:01'),
('d9ccbb42-b320-46ea-8a64-818547dd5afe', 'App\\Notifications\\OrderNotification', 'App\\User', 45, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-02-27 20:26:49', '2022-02-27 20:26:49'),
('daa079e3-2ff9-4b71-be8c-f5be47c81aca', 'App\\Notifications\\OrderNotification', 'App\\User', 45, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-04-11 11:56:41', '2022-04-11 11:56:41'),
('dac02120-aac5-4edc-ad92-f0c2d132e260', 'App\\Notifications\\OrderNotification', 'App\\User', 45, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-02-12 11:41:37', '2022-02-12 11:41:37'),
('e4a59942-6b61-42d8-b4d9-32bd7bf53f3e', 'App\\Notifications\\OrderNotification', 'App\\User', 44, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-01-12 01:59:58', '2022-01-12 01:59:58'),
('e50296f6-8511-4bd6-8320-540d2d76d87c', 'App\\Notifications\\OrderNotification', 'App\\User', 45, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-02-21 03:01:39', '2022-02-21 03:01:39'),
('ea4578a4-0b27-40b6-afaf-8228c81809de', 'App\\Notifications\\OrderNotification', 'App\\User', 44, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-01-12 01:21:04', '2022-01-12 01:21:04'),
('ec7b4e0a-4675-439a-8e37-aa11b5b1fea5', 'App\\Notifications\\OrderNotification', 'App\\User', 45, '{\"title\":\"\\u0647\\u0646\\u0627\\u0643 \\u0646\\u0638\\u0627\\u0645 \\u062c\\u062f\\u064a\\u062f\",\"body\":\"\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u062a \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0644\\u062a\\u0648\"}', NULL, '2022-02-16 21:31:39', '2022-02-16 21:31:39');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `item_id`, `name`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 7, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:44', '2021-12-31 02:37:43', NULL),
(2, 7, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:44', '2021-12-31 02:37:43', NULL),
(3, 8, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:44', '2021-12-31 02:37:43', NULL),
(4, 8, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:44', '2021-12-31 02:37:43', NULL),
(5, 9, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:44', '2021-12-31 02:37:43', NULL),
(6, 9, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:44', '2021-12-31 02:37:43', NULL),
(7, 10, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:44', '2021-12-31 02:37:43', NULL),
(8, 10, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:44', '2021-12-31 02:37:43', NULL),
(9, 11, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:44', '2021-12-31 02:37:43', NULL),
(10, 11, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:44', '2021-12-31 02:37:43', NULL),
(11, 12, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:44', '2021-12-31 02:37:43', NULL),
(12, 12, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:44', '2021-12-31 02:37:43', NULL),
(13, 13, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:44', '2021-12-31 02:37:43', NULL),
(14, 13, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:44', '2021-12-31 02:37:43', NULL),
(15, 14, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:44', '2021-12-31 02:37:43', NULL),
(16, 14, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:44', '2021-12-31 02:37:43', NULL),
(17, 15, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:44', '2021-12-31 02:37:43', NULL),
(18, 15, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:44', '2021-12-31 02:37:43', NULL),
(19, 16, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:44', '2021-12-31 02:37:43', NULL),
(20, 16, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:44', '2021-12-31 02:37:43', NULL),
(21, 17, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:44', '2021-12-31 02:37:43', NULL),
(22, 17, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:44', '2021-12-31 02:37:43', NULL),
(23, 67, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(24, 67, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(25, 68, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(26, 68, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(27, 69, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(28, 69, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(29, 70, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(30, 70, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(31, 71, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(32, 71, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(33, 72, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(34, 72, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(35, 73, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(36, 73, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(37, 74, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(38, 74, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(39, 75, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(40, 75, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(41, 76, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(42, 76, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(43, 77, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(44, 77, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(45, 86, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(46, 86, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(47, 87, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(48, 87, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(49, 88, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(50, 88, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(51, 89, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(52, 89, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(53, 90, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(54, 90, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(55, 91, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(56, 91, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(57, 92, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(58, 92, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(59, 93, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(60, 93, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(61, 94, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(62, 94, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(63, 95, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(64, 95, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(65, 96, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(66, 96, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:45', '2021-12-31 02:37:43', NULL),
(67, 146, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(68, 146, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(69, 147, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(70, 147, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(71, 148, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(72, 148, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(73, 149, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(74, 149, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(75, 150, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(76, 150, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(77, 151, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(78, 151, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(79, 152, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(80, 152, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(81, 153, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(82, 153, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(83, 154, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(84, 154, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(85, 155, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(86, 155, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(87, 156, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(88, 156, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(89, 180, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(90, 180, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(91, 181, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(92, 181, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(93, 182, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(94, 182, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(95, 183, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(96, 183, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(97, 184, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(98, 184, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(99, 185, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(100, 185, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(101, 186, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(102, 186, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(103, 187, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(104, 187, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(105, 188, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(106, 188, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(107, 189, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(108, 189, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(109, 190, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(110, 190, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:46', '2021-12-31 02:37:43', NULL),
(111, 245, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL),
(112, 245, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL),
(113, 246, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL),
(114, 246, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL),
(115, 247, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL),
(116, 247, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL),
(117, 248, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL),
(118, 248, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL),
(119, 249, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL),
(120, 249, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL),
(121, 250, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL),
(122, 250, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:47', '2021-12-31 02:37:43', NULL),
(123, 251, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(124, 251, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(125, 252, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(126, 252, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(127, 253, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(128, 253, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(129, 254, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(130, 254, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(131, 255, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(132, 255, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(133, 271, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(134, 271, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(135, 272, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(136, 272, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(137, 273, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(138, 273, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(139, 274, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(140, 274, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(141, 275, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(142, 275, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(143, 276, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(144, 276, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(145, 277, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(146, 277, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(147, 278, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(148, 278, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(149, 279, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(150, 279, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(151, 280, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(152, 280, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(153, 281, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(154, 281, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:47', '2021-12-31 02:37:44', NULL),
(155, 330, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:48', '2021-12-31 02:37:44', NULL),
(156, 330, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:48', '2021-12-31 02:37:44', NULL),
(157, 331, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:48', '2021-12-31 02:37:44', NULL),
(158, 331, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:48', '2021-12-31 02:37:44', NULL),
(159, 332, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:48', '2021-12-31 02:37:44', NULL),
(160, 332, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:48', '2021-12-31 02:37:44', NULL),
(161, 333, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:48', '2021-12-31 02:37:44', NULL),
(162, 333, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:48', '2021-12-31 02:37:44', NULL),
(163, 334, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:48', '2021-12-31 02:37:44', NULL),
(164, 334, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:48', '2021-12-31 02:37:44', NULL),
(165, 335, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:48', '2021-12-31 02:37:44', NULL),
(166, 335, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:48', '2021-12-31 02:37:44', NULL),
(167, 336, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:48', '2021-12-31 02:37:44', NULL),
(168, 336, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:48', '2021-12-31 02:37:44', NULL),
(169, 337, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:48', '2021-12-31 02:37:44', NULL),
(170, 337, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:48', '2021-12-31 02:37:44', NULL),
(171, 338, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:48', '2021-12-31 02:37:44', NULL),
(172, 338, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:48', '2021-12-31 02:37:44', NULL),
(173, 339, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:48', '2021-12-31 02:37:44', NULL),
(174, 339, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:48', '2021-12-31 02:37:44', NULL),
(175, 340, '{\"ar\":\"Size\"}', 'Small,Medium,Large,Family', '2021-12-30 22:33:48', '2021-12-31 02:37:44', NULL),
(176, 340, '{\"ar\":\"Crust\"}', 'Hand-Tosset,Thin Crust,Double Decker', '2021-12-30 22:33:48', '2021-12-31 02:37:44', NULL),
(177, 481, 'الحجم', 'صغير', '2022-02-22 02:58:33', '2022-02-22 03:01:18', '2022-02-22 03:01:18'),
(178, 481, 'الحجم', 'كبير', '2022-02-22 02:59:27', '2022-02-22 03:01:16', '2022-02-22 03:01:16'),
(179, 389, 'نوع البن', 'اوغندي,اثيوبي', '2022-02-23 03:28:39', '2022-02-23 03:32:27', NULL),
(180, 389, 'نوع البن', 'سلڤادور', '2022-02-23 03:31:12', '2022-02-23 03:32:16', '2022-02-23 03:32:16'),
(181, 390, 'نوع البن', 'اثيوبي,اوغندي', '2022-04-04 01:33:48', '2022-04-04 01:33:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_name` text COLLATE utf8mb4_unicode_ci,
  `restorant_id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_price` double(8,2) NOT NULL,
  `order_price` double(8,2) NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `srtipe_payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee` double(8,2) NOT NULL DEFAULT '0.00',
  `fee_value` double NOT NULL DEFAULT '0',
  `static_fee` double(8,2) NOT NULL DEFAULT '0.00',
  `delivery_method` int(11) NOT NULL DEFAULT '1' COMMENT '1- Delivery, 2- Pickup',
  `delivery_pickup_interval` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vatvalue` double(8,2) DEFAULT '0.00',
  `payment_processor_fee` double(8,2) NOT NULL DEFAULT '0.00',
  `time_to_prepare` int(11) DEFAULT NULL,
  `table_id` bigint(20) UNSIGNED DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `md` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `coupon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` double(8,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `address_id`, `client_id`, `client_name`, `restorant_id`, `driver_id`, `delivery_price`, `order_price`, `payment_method`, `payment_status`, `comment`, `lat`, `lng`, `srtipe_payment_id`, `fee`, `fee_value`, `static_fee`, `delivery_method`, `delivery_pickup_interval`, `vatvalue`, `payment_processor_fee`, `time_to_prepare`, `table_id`, `phone`, `whatsapp_address`, `payment_link`, `employee_id`, `deleted_at`, `md`, `coupon`, `discount`) VALUES
(1, '2021-05-03 23:52:56', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 36.00, NULL, 'paid', 'Sequi quae totam maiores occaecati qui aut. Quae beatae id maxime ea voluptas commodi nesciunt. Molestias ut dolorum commodi et voluptatum qui consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(2, '2021-07-04 08:46:16', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 88.00, NULL, 'paid', 'Quia vel sapiente qui. Quod suscipit voluptatem qui facere debitis quam ipsum. Et itaque rem iste aut et ut. Nemo sequi voluptatum quisquam non aut maiores perferendis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(3, '2021-11-22 10:33:51', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 33.00, NULL, 'paid', 'Eum aut eveniet sed quam placeat sint. Quas similique voluptate aut aut doloribus quia. Placeat ut enim maiores soluta excepturi aut. Sed rerum voluptas aut sit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(4, '2021-03-16 10:42:23', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 72.00, NULL, 'paid', 'Eum tenetur rem saepe quisquam placeat. Qui suscipit quisquam recusandae velit. Modi maiores ut sunt ea nesciunt. Mollitia dignissimos et corrupti officiis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(5, '2021-10-08 01:51:07', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 86.00, NULL, 'paid', 'Enim ratione sint labore dignissimos. Illo minima odit laborum reprehenderit suscipit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(6, '2021-07-30 23:07:50', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 82.00, NULL, 'paid', 'Aut error consequatur esse aut cupiditate. Tempora autem est ipsa eos. Doloribus ad error facilis cumque nulla minus. Numquam quis assumenda aperiam voluptatum fugit voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(7, '2021-05-19 19:36:05', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 46.00, NULL, 'paid', 'Sint eligendi voluptas dignissimos fuga distinctio velit esse. Corrupti quia qui alias et repellat quidem et doloribus. Eos exercitationem facere quia excepturi ea.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(8, '2021-06-10 04:37:30', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 82.00, NULL, 'paid', 'Sint blanditiis et quia aperiam consequatur repellendus cupiditate dolor. Repellat non recusandae magni beatae. Perspiciatis laboriosam voluptates sed natus nisi sed ut non.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(9, '2021-06-09 00:08:21', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 32.00, NULL, 'paid', 'Aut autem aut minus rerum sapiente aut aut. Nisi beatae blanditiis dolorem possimus quo iure est. Odio maiores beatae laborum repellat esse. Fugit suscipit perferendis est earum voluptatibus omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(10, '2021-12-27 20:50:13', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 46.00, NULL, 'paid', 'Asperiores voluptatum voluptate voluptatem adipisci odit et. Facilis vero exercitationem quia quia. Corporis qui perspiciatis quia neque tenetur qui ipsum. Error ea odit cupiditate.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(11, '2021-09-19 03:36:21', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 86.00, NULL, 'paid', 'Rerum veritatis iusto placeat et ad corrupti. Numquam tenetur quisquam reprehenderit quae. Officiis tenetur maxime consequatur repellat autem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 42, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(12, '2021-07-18 11:45:28', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 49.00, NULL, 'paid', 'Odit magni sed sed nihil. Eaque et culpa neque odio. Culpa ut ex iure architecto. Assumenda non pariatur deserunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(13, '2021-11-03 12:05:22', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 74.00, NULL, 'paid', 'Voluptates assumenda incidunt vitae dolores voluptatibus delectus. Non suscipit aspernatur est possimus possimus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(14, '2021-01-12 20:37:21', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 33.00, NULL, 'paid', 'Architecto voluptate dolor autem aut quo numquam. Impedit fugiat modi veritatis autem sint. Odio placeat reprehenderit et fugit. In dolores ducimus explicabo aut provident molestias soluta.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(15, '2021-08-27 14:39:39', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 60.00, NULL, 'paid', 'Quia qui harum tenetur consequatur sunt quae. In qui voluptates voluptatum tenetur voluptatem quisquam nobis. Enim facilis expedita qui. Assumenda consectetur eius sed ea explicabo eum ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(16, '2021-01-12 22:13:16', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 44.00, NULL, 'paid', 'Cupiditate repellat sint voluptas. Architecto et ut mollitia qui minima. Fugiat vel qui et corrupti.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(17, '2021-02-13 15:19:18', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 89.00, NULL, 'paid', 'Quam voluptatem laboriosam reprehenderit animi corrupti aliquid aliquid. Odit itaque error ea voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(18, '2021-07-11 12:42:47', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 34.00, NULL, 'paid', 'Quis in esse similique sed. Ut sit consectetur et ut. Fugit voluptatem voluptatem ea ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 42, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(19, '2021-04-25 14:27:00', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 96.00, NULL, 'paid', 'Itaque perspiciatis ipsa quis dolor. Blanditiis iusto omnis necessitatibus omnis quis ipsa nam. Qui dignissimos neque neque. Autem explicabo quia ratione aut animi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(20, '2021-05-06 01:03:52', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 48.00, NULL, 'paid', 'Et ducimus ut fuga et. In dolor est quasi et hic ipsam voluptatem. Porro totam ipsum est sit odit ipsam natus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(21, '2021-06-02 23:29:05', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 61.00, NULL, 'paid', 'Voluptatem autem quasi suscipit accusamus. Commodi harum enim cum qui libero sapiente aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(22, '2021-03-29 20:55:37', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 68.00, NULL, 'paid', 'Suscipit id ut et veritatis facilis nesciunt dicta. Saepe incidunt ex repellendus excepturi commodi id ut est. Repellat eaque atque minus voluptatem qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(23, '2021-02-15 11:40:57', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 62.00, NULL, 'paid', 'Corporis vitae qui qui et aut. Et delectus ut voluptatum. Ex magnam excepturi deleniti. Voluptate aliquid saepe quas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(24, '2021-03-22 22:10:31', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 68.00, NULL, 'paid', 'Quia nostrum quis fuga. Voluptates ut ad quia rerum. Nihil eos dolorum ad accusamus laborum voluptatem deleniti.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(25, '2021-03-11 12:20:04', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 30.00, NULL, 'paid', 'Cumque velit quas ipsam consequuntur. Dolores facilis architecto numquam recusandae nesciunt. Ab omnis aut perspiciatis. Voluptatem deserunt est rerum maiores vel quod dolores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(26, '2021-06-10 23:03:21', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 85.00, NULL, 'paid', 'Eligendi distinctio facere id rerum occaecati unde facere quam. Deserunt omnis et dolores ut ducimus. Et ipsa laborum sed ea doloremque. Nostrum et sequi tempora laudantium.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(27, '2021-12-28 04:45:42', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 85.00, NULL, 'paid', 'Iste consequatur asperiores atque alias vitae similique. Ducimus voluptatem vel voluptatem ullam est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(28, '2021-05-11 22:34:44', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 39.00, NULL, 'paid', 'Repellat debitis doloremque suscipit nemo consectetur et. Consequatur sint aut nam et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(29, '2021-12-07 07:43:30', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 92.00, NULL, 'paid', 'Quo placeat ab voluptas debitis. Nobis eos voluptas illum vitae inventore dolores et eum. Autem quibusdam facere dolor molestiae eligendi totam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(30, '2021-03-12 11:44:22', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 47.00, NULL, 'paid', 'Et tenetur inventore ut. Deserunt dolorem qui consequuntur rem voluptatem quasi qui. Repellat voluptatem eius voluptatem quia. Enim quas magnam consectetur inventore dolorum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(31, '2021-12-03 07:27:38', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 70.00, NULL, 'paid', 'Aperiam eum cum harum qui aut quasi temporibus. Ut neque numquam laudantium occaecati doloremque dicta eum eum. Cumque et ut possimus eligendi et tempora. Ab aliquam fugit omnis vel ex praesentium.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(32, '2021-11-08 17:43:04', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 100.00, NULL, 'paid', 'Nihil quis voluptas quos et laudantium enim nam inventore. Asperiores nam cupiditate tempora ex. Nihil est occaecati quam vel ipsa.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(33, '2021-04-28 10:53:23', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 72.00, NULL, 'paid', 'Et quod quidem ab molestias. Nam autem commodi architecto molestias fuga. Voluptas voluptatem qui est sint.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(34, '2021-01-09 17:44:08', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 80.00, NULL, 'paid', 'Aut harum est velit sit. Ab expedita alias explicabo ullam dolores ea. Eius fugiat quia consequuntur nobis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(35, '2021-07-31 18:27:36', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 37.00, NULL, 'paid', 'Ex autem adipisci molestiae ut ex ratione. Ipsum quo dolor itaque ea. Error illum vero adipisci at aperiam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(36, '2021-09-22 05:33:00', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 34.00, NULL, 'paid', 'Nam recusandae voluptates eaque quia ab ea quis. Voluptate vel cumque cupiditate enim inventore nemo numquam. Dolores minus eligendi ut hic nisi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(37, '2021-06-23 12:10:08', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 71.00, NULL, 'paid', 'Sunt aut quos nam enim deserunt odio officiis. Et iure vel quia omnis fugiat in. In velit quia ea totam molestiae odit unde quos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(38, '2021-11-24 18:57:11', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 88.00, NULL, 'paid', 'Nihil maiores totam cupiditate. Architecto eligendi provident ut eos dolorem. Repellendus adipisci autem blanditiis et aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(39, '2021-02-02 18:55:32', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 35.00, NULL, 'paid', 'Eligendi est id aliquam officia et quidem qui non. Accusantium accusantium dolor animi dolore. Quia laboriosam id itaque odio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(40, '2021-12-10 23:00:20', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 93.00, NULL, 'paid', 'Architecto eius velit veniam quis est id. Sequi sunt est aut provident culpa. Facere consequuntur saepe rerum suscipit aut. Pariatur odio autem ratione veniam occaecati eum voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(41, '2021-01-14 13:14:22', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 98.00, NULL, 'paid', 'Quo qui a ut a optio praesentium sit. Sed corporis et at atque rerum voluptate explicabo perferendis. Maxime repudiandae velit commodi nihil eum. Tempora itaque sed voluptatem totam et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(42, '2021-06-12 06:58:50', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 81.00, NULL, 'paid', 'Et aut vel vel sint eligendi enim iure. Consequatur assumenda neque qui qui velit adipisci iure. Nisi corporis et natus voluptatem veritatis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(43, '2021-08-10 06:35:54', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 41.00, NULL, 'paid', 'Velit et non similique consequatur. Est accusamus sint iure perspiciatis dolorem. Omnis sunt et eius veritatis nisi et. Ut velit dolorem consequatur aut odit eum quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(44, '2021-04-16 15:49:37', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 84.00, NULL, 'paid', 'Qui a mollitia rerum rem et repellendus consectetur. Quae exercitationem laborum eaque. Voluptates quaerat dolores minus. Facere porro illo soluta.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(45, '2021-08-04 18:22:48', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 65.00, NULL, 'paid', 'Accusantium et dolorum et consequatur hic eum aut. Laboriosam laboriosam est quo laudantium optio odio quibusdam. Autem aut et ex sint. Laboriosam omnis dicta architecto in illo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(46, '2021-09-23 20:49:25', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 63.00, NULL, 'paid', 'Pariatur amet error non eligendi. Animi laboriosam qui sunt excepturi illum dolorem. Et nesciunt ut ut exercitationem cum quae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(47, '2021-02-28 21:00:28', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 72.00, NULL, 'paid', 'Atque temporibus facere expedita voluptatem. Quibusdam cupiditate reprehenderit eos cupiditate deserunt id. A commodi sint et quos quos aut. Ex commodi quod error libero libero quo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(48, '2021-03-04 21:48:43', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 98.00, NULL, 'paid', 'Et qui et voluptates ut. Ex quas consequuntur quam vero. Et autem aut aperiam dolorem. Voluptatum voluptate et modi. Corrupti porro est autem reiciendis perferendis quia voluptas optio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(49, '2021-11-12 07:48:49', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 41.00, NULL, 'paid', 'Sit reiciendis ut deleniti. Dolor velit qui cum rerum. Alias saepe eveniet quia ut non ipsa ratione.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(50, '2021-01-06 16:34:20', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 87.00, NULL, 'paid', 'Ratione tempora quisquam voluptas ut. Dolor maiores blanditiis dignissimos voluptas. Omnis quasi nihil saepe fugit laudantium iste.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(51, '2021-10-05 09:55:21', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 40.00, NULL, 'paid', 'Eveniet aliquam consequuntur culpa architecto et odio. Facere maiores non totam dolore aliquid. Tenetur et error velit ad alias quia sint.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(52, '2021-01-12 14:44:30', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 47.00, NULL, 'paid', 'Ullam ad incidunt qui necessitatibus consectetur. Ea neque quos consequatur quia temporibus. Quos aut vel quidem fugiat quo et. Doloremque voluptatem sint quia vero ipsa qui ea.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(53, '2021-01-01 21:22:10', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 93.00, NULL, 'paid', 'Dignissimos et eos cumque aspernatur. Aliquam molestiae incidunt alias. Nisi molestiae magni et doloribus rerum esse. At sapiente distinctio veritatis et ad. Officia qui velit quia ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(54, '2021-09-27 04:21:25', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 78.00, NULL, 'paid', 'Soluta et voluptatem occaecati saepe ea perspiciatis quis rerum. Et suscipit et molestiae fuga. Eum autem sequi cum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(55, '2021-04-17 12:56:21', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 56.00, NULL, 'paid', 'Ab atque eius molestiae et ullam aspernatur minima iusto. Voluptatum ea quia dolor ipsum a. Ut ea optio qui autem. Nemo possimus nihil voluptatem velit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(56, '2021-01-11 01:10:18', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 81.00, NULL, 'paid', 'Laborum distinctio consequatur labore qui. In ullam accusamus a recusandae. Aut itaque et quasi optio quia tempore velit facere. In sint qui incidunt ea dolorem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(57, '2021-10-26 08:55:23', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 43.00, NULL, 'paid', 'Deleniti qui autem numquam quas qui temporibus dolor. Aut enim sed laborum repellendus soluta. Rem iure quasi quo quia dolorum numquam. Vel quis eaque beatae provident pariatur in veritatis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(58, '2021-02-07 09:30:04', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 75.00, NULL, 'paid', 'Rerum dolores exercitationem autem rerum at non vitae labore. Voluptatem expedita veritatis ipsa ut. Facilis accusamus repellat natus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(59, '2021-04-20 16:43:46', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 76.00, NULL, 'paid', 'Animi impedit ratione quod eveniet rerum. Quaerat laudantium repudiandae ut eos et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(60, '2021-08-24 06:47:37', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 65.00, NULL, 'paid', 'Atque aut autem facere voluptatem deserunt cupiditate hic. Occaecati quod aspernatur aperiam dolores voluptatem molestias quae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(61, '2021-11-16 15:03:37', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 90.00, NULL, 'paid', 'Nisi eligendi similique magni voluptate commodi eius. Iusto exercitationem molestiae recusandae accusamus ut. Quo nulla dolores ratione assumenda blanditiis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(62, '2021-10-05 20:47:22', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 43.00, NULL, 'paid', 'Et sit et nostrum ut ut necessitatibus et. Eos aliquam cum blanditiis minus et. Debitis culpa modi vel est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(63, '2021-08-07 09:25:12', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 67.00, NULL, 'paid', 'In dolor in veritatis blanditiis nihil. Dolores natus dolore id et voluptatem. Et omnis officiis sint reprehenderit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(64, '2021-12-03 08:47:34', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 80.00, NULL, 'paid', 'Tempora qui rerum voluptatem qui unde praesentium. Harum qui necessitatibus et esse voluptas. Veritatis nemo eveniet sunt qui atque. Cumque aut reiciendis iste.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(65, '2021-06-08 06:37:26', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 41.00, NULL, 'paid', 'Quo aut dicta est nemo nobis doloribus aut. Et omnis sit dolore ullam sit. Dicta fugiat qui ab explicabo. Rerum sunt fugiat non.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(66, '2021-06-17 07:37:01', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 60.00, NULL, 'paid', 'Officia laudantium eius blanditiis laborum modi facilis nemo. Laborum facilis sed est unde maiores saepe. Odio repudiandae sit repudiandae cumque non voluptatem quo minima.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(67, '2021-02-28 05:17:06', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 40.00, NULL, 'paid', 'Molestias inventore tempore sunt corporis earum repudiandae neque. Placeat totam et culpa nostrum qui fugit aperiam. Dignissimos esse ipsam fugiat aut dicta quis magnam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(68, '2021-09-11 08:49:38', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 77.00, NULL, 'paid', 'Odio porro quasi voluptatum nobis et assumenda. Quos perspiciatis blanditiis deleniti facilis natus est officiis. Sit provident qui non quis laudantium. Autem commodi quo ut quisquam mollitia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(69, '2021-09-25 13:44:56', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 98.00, NULL, 'paid', 'Laudantium accusamus quis suscipit blanditiis iusto magnam tempora dolor. Esse accusamus fuga qui suscipit fugit. Voluptates et recusandae molestiae vel.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(70, '2021-07-27 00:06:14', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 59.00, NULL, 'paid', 'Quisquam possimus dolorem ut beatae aut minus eos. Sit nostrum placeat iste dolorem quidem. Provident voluptatem cupiditate modi sapiente hic. Ab in ducimus sunt nemo odit fugit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(71, '2021-06-22 18:17:23', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 93.00, NULL, 'paid', 'Est commodi animi explicabo iure quia. Et odio ea ea sit. Quam aut doloribus tempore officiis et ut omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(72, '2021-02-27 14:54:22', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 95.00, NULL, 'paid', 'Odio harum aut nostrum perferendis. Et cupiditate dolorum qui aut beatae enim. Molestias ipsam ducimus exercitationem. Alias earum autem architecto consectetur quis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(73, '2021-12-07 12:40:59', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 85.00, NULL, 'paid', 'Veniam a et consectetur dolorem. Qui possimus facere tenetur quis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(74, '2021-04-15 07:50:53', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 45.00, NULL, 'paid', 'Alias ullam autem deleniti iusto est quia odio. Nobis nobis animi ab consequuntur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(75, '2021-04-23 17:59:23', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 86.00, NULL, 'paid', 'Autem sit quod voluptates consectetur. Et cupiditate ex debitis vero dolorem rem a rerum. Ea illo eum id omnis labore non in. Aut labore ad earum voluptatum dolores quo a porro.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(76, '2021-09-12 03:44:28', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 64.00, NULL, 'paid', 'Incidunt natus numquam quibusdam aliquid adipisci perferendis. Sit similique id voluptas quo voluptate. Quia alias blanditiis occaecati officia dolore. Illum maiores esse ullam facilis et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(77, '2021-03-04 15:34:45', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 76.00, NULL, 'paid', 'Magnam asperiores similique dolore omnis laudantium aliquam. Quisquam laborum ea ratione consequatur quos dolores. Nam itaque minima quos. Amet voluptas corporis perferendis dolor.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(78, '2021-07-15 23:16:47', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 57.00, NULL, 'paid', 'Numquam a voluptates qui tempore. Aperiam aspernatur assumenda aspernatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(79, '2021-03-23 06:06:27', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 85.00, NULL, 'paid', 'Qui possimus tenetur et libero aspernatur. Laboriosam consequatur aut voluptatum possimus sunt ea blanditiis modi. Impedit dolores tempora reprehenderit deleniti qui iure qui laborum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(80, '2021-10-05 10:10:18', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 78.00, NULL, 'paid', 'Dolores voluptatem architecto ex. At consequatur quis non blanditiis. Quis consectetur non maiores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(81, '2021-12-04 12:46:38', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 58.00, NULL, 'paid', 'Unde natus est cupiditate et reprehenderit nemo. Reprehenderit neque natus sequi temporibus doloremque eaque maxime. Iste atque iste ratione rerum delectus vitae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(82, '2021-11-29 00:13:41', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 99.00, NULL, 'paid', 'Voluptate qui neque dolorem assumenda. Dicta dolor dolorum omnis voluptatem aut. Numquam magni non vero facilis dolorem et ducimus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(83, '2021-01-07 12:33:18', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 57.00, NULL, 'paid', 'Qui culpa dolores praesentium aut provident similique ea. Et aut officia autem quam eos. Quibusdam sequi quam perferendis incidunt aut. Unde quisquam dicta possimus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(84, '2021-02-13 02:58:03', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 67.00, NULL, 'paid', 'Officia quaerat eaque nobis quia. Vel culpa dolor illo et cum est fugiat omnis. Error ut voluptas rem quia. Ab quibusdam quia explicabo rem repellendus qui corporis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(85, '2021-10-12 05:23:29', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 82.00, NULL, 'paid', 'Magni molestiae quo officiis modi voluptatem quasi. Harum aut neque ipsa dolorem recusandae ex. Perferendis dolores eligendi maxime nulla in. Natus facilis ipsum id blanditiis dolorem alias.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(86, '2021-07-29 06:02:18', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 86.00, NULL, 'paid', 'Dolorem quod esse totam quidem necessitatibus. Voluptatem dolor culpa nemo qui aliquam. Et accusamus debitis vero aperiam labore. Ut optio ex perspiciatis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(87, '2021-05-02 17:59:08', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 46.00, NULL, 'paid', 'Dolor voluptatem repellat laboriosam ut eligendi quam ea consequuntur. Assumenda consequatur beatae numquam ipsum nemo rerum. Dolorem excepturi error eos sunt nesciunt est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(88, '2021-11-25 12:24:37', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 80.00, NULL, 'paid', 'Eos repudiandae et nulla ad in nisi libero error. Voluptas doloremque a adipisci ut deserunt. Iure velit minima labore et laborum accusamus totam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(89, '2021-09-11 16:00:49', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 81.00, NULL, 'paid', 'Porro adipisci distinctio et totam molestiae et. Nulla doloribus voluptas architecto rem sit qui assumenda. Accusamus veniam voluptates dolor.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(90, '2021-08-28 14:19:43', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 85.00, NULL, 'paid', 'Qui vero non voluptatem labore. Nihil aliquid excepturi et facilis aut aperiam. Quasi facilis ea eum esse. Numquam ex asperiores voluptas fugiat et placeat officiis. Ut nobis laudantium incidunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(91, '2021-07-20 00:21:01', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 57.00, NULL, 'paid', 'Nesciunt omnis hic quae sunt sunt. Ab provident tempora qui tenetur ea et est. Voluptates et tempora sed reprehenderit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(92, '2021-12-08 12:37:13', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 40.00, NULL, 'paid', 'Iste laboriosam culpa omnis aut. Unde aut sit corporis sint consequuntur sed ipsam rerum. Ut asperiores itaque enim eos. Consequuntur et recusandae consequuntur voluptatem temporibus saepe mollitia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(93, '2021-09-22 16:33:16', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 94.00, NULL, 'paid', 'Nam nobis sapiente magnam architecto et excepturi. Soluta facere omnis facilis qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(94, '2021-04-20 18:43:22', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 83.00, NULL, 'paid', 'Error sit eius qui voluptatem accusantium nihil qui placeat. Explicabo ea iusto aliquid harum ex. Eligendi qui est velit amet. Neque maxime expedita illum neque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(95, '2021-10-07 09:15:03', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 61.00, NULL, 'paid', 'Sint quam ea consequatur deserunt dolore expedita rem aliquid. Qui dicta in eos ut sunt. Nulla minus perferendis omnis quod et eligendi commodi. Laudantium et nemo vero ut voluptatem dolores aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(96, '2021-04-06 08:58:55', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 40.00, NULL, 'paid', 'Temporibus consequatur aut sit quia doloremque enim. Sint dolor velit eum minus molestias voluptatem aut distinctio. Et quod aspernatur eos quasi. Et temporibus accusamus corporis aliquam architecto.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(97, '2021-07-06 20:44:09', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 56.00, NULL, 'paid', 'Magnam iste minus quae qui molestiae. Ex debitis reprehenderit voluptas beatae eius et laudantium.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(98, '2021-08-27 07:59:28', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 48.00, NULL, 'paid', 'Dolor amet rerum quod molestiae numquam voluptas. Consectetur et ut dolor at consequatur qui beatae cumque. Voluptas quod in exercitationem. Porro eaque architecto sit fugiat exercitationem dolorum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(99, '2021-10-04 00:19:05', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 68.00, NULL, 'paid', 'Et repudiandae nobis consequatur illo enim. Magnam rerum asperiores omnis quis. Amet nesciunt voluptate dignissimos ea.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(100, '2021-10-14 22:16:13', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 58.00, NULL, 'paid', 'Ut rerum assumenda pariatur. Sint est omnis rerum et aperiam et. Minima voluptatem et ut officia sed et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(101, '2021-05-21 05:52:59', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 85.00, NULL, 'paid', 'Optio eius quos facere. Corrupti perspiciatis labore et ut consequatur. Deleniti numquam est praesentium voluptatem. Modi accusantium officia distinctio cum dicta aspernatur et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(102, '2021-10-11 04:14:25', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 59.00, NULL, 'paid', 'Aspernatur est quia voluptas sunt nostrum. Maiores quod commodi aut voluptas. Quos at illum est sed numquam aspernatur doloremque. Et voluptatem suscipit error veritatis deserunt eum earum sunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(103, '2021-02-19 17:40:58', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 92.00, NULL, 'paid', 'Qui accusamus nostrum dolores minima corporis iure. Sequi dolores voluptas dolorum natus quaerat aperiam. Aut minima repudiandae reprehenderit ducimus. Tempora labore aut optio cupiditate.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(104, '2021-06-13 16:02:22', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 44.00, NULL, 'paid', 'Iste ipsum doloribus velit et. Ea quisquam vel maxime accusamus. Nobis sit quo minus autem perspiciatis dolores in.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(105, '2021-11-03 09:55:37', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 35.00, NULL, 'paid', 'Iusto temporibus quas culpa earum adipisci dolor ratione. Corrupti cumque modi sapiente et et id qui. Amet quo debitis ipsam vero excepturi. Ipsa numquam aut dolorum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(106, '2021-11-22 08:56:32', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 65.00, NULL, 'paid', 'Minima autem ut odio magnam commodi dolorem. Id autem ut officiis iure qui. Ut delectus inventore et in. Soluta autem eligendi quis enim.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(107, '2021-09-20 09:11:48', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 41.00, NULL, 'paid', 'Optio atque maxime explicabo dolorem occaecati ut. Rerum illo minus eveniet molestias. Aut fugit voluptas pariatur mollitia magni. Impedit magni dicta doloremque doloribus labore sequi impedit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(108, '2021-09-26 10:15:39', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 79.00, NULL, 'paid', 'Ut est quo recusandae deserunt autem vel nobis dignissimos. Est aut et velit aut quasi ab.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(109, '2021-04-19 23:36:37', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 77.00, NULL, 'paid', 'Totam voluptate minus quae eius. Dolorem assumenda quo voluptatem illum delectus sint cumque. Rerum sint est ab animi enim expedita.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 16, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(110, '2021-05-14 18:33:28', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 64.00, NULL, 'paid', 'Assumenda quod eveniet unde voluptas reiciendis quasi laborum cum. Totam voluptas ea laboriosam repellat quidem labore. Rerum accusamus dicta dolorum ut ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(111, '2021-02-27 20:46:37', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 41.00, NULL, 'paid', 'Explicabo autem quibusdam nihil. Sunt perferendis rerum possimus est. Fugiat quidem sit quisquam excepturi itaque veniam maxime. Voluptatum quas dolore sint et sequi consequatur non.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(112, '2021-09-21 15:53:08', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 97.00, NULL, 'paid', 'Debitis dolores temporibus ducimus et. Ipsa et sed sit rerum. Fuga beatae quia qui accusamus voluptatem qui ea in.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(113, '2021-10-31 07:19:43', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 53.00, NULL, 'paid', 'Facilis provident omnis libero velit quaerat. Repellendus nihil tempore sit aut sint odit. Officia voluptas fugiat ut et velit et officia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(114, '2021-08-19 16:55:35', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 87.00, NULL, 'paid', 'Expedita velit in voluptatibus in quam ut id voluptates. Beatae provident et reprehenderit. Aperiam dolor culpa velit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(115, '2021-10-21 21:00:31', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 43.00, NULL, 'paid', 'Enim qui et aut. Cupiditate reprehenderit blanditiis laborum veritatis. Ducimus est at quibusdam et non adipisci nihil.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(116, '2021-12-10 07:45:59', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 31.00, NULL, 'paid', 'Et omnis doloribus eius sit ipsam maiores. Dolorem est natus aliquam fugiat iure nobis iure. Dignissimos nisi eius modi et expedita deserunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(117, '2021-10-25 20:42:31', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 66.00, NULL, 'paid', 'Deserunt natus dolorem maiores mollitia earum. Perspiciatis non aut reprehenderit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(118, '2021-04-18 23:24:50', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 82.00, NULL, 'paid', 'Eligendi adipisci ea iure dicta repudiandae quaerat quo. Ut laudantium voluptates officia voluptatem voluptatem voluptatem. Ratione aut cum amet architecto est. Eveniet harum voluptates enim modi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(119, '2021-03-06 15:49:42', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 94.00, NULL, 'paid', 'Tempora iste modi modi eaque voluptas quasi placeat. Voluptas soluta nobis temporibus aperiam porro. Dolorem recusandae soluta pariatur recusandae. Porro est aliquam aut corporis vel.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(120, '2021-04-03 04:05:51', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 50.00, NULL, 'paid', 'Nisi et quia est quia nobis exercitationem. Eveniet consequatur nihil modi. Culpa delectus harum velit in quam fugiat hic. Dignissimos accusamus sint distinctio quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(121, '2021-07-16 23:30:49', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 42.00, NULL, 'paid', 'Qui blanditiis sit autem ut eos. Molestiae et quisquam occaecati maxime molestias. Reprehenderit dolorem inventore repellat corrupti voluptas ducimus aut. Aut ducimus magni odit sint sit molestias.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(122, '2021-05-27 00:03:20', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 66.00, NULL, 'paid', 'Numquam temporibus itaque perferendis esse cum explicabo tempora. Saepe fugit nihil dolores distinctio molestias ipsam. Sed consequatur et enim et. Perferendis ullam fugiat sit ipsum qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(123, '2021-12-09 12:25:17', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 74.00, NULL, 'paid', 'Ut commodi alias qui veniam quibusdam et voluptatem. Dicta quas itaque ut non culpa. Provident est cum nihil id. Nihil harum repellat ducimus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(124, '2021-07-18 09:39:21', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 41.00, NULL, 'paid', 'Repellat et molestiae id repudiandae ad. Necessitatibus saepe in aut. Quasi et voluptas rem sunt quo veniam. Accusantium dolorem excepturi odio voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(125, '2021-10-26 20:03:58', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 73.00, NULL, 'paid', 'Aliquam perspiciatis aut corporis et. Aliquam autem quo ab deserunt et aut eum. Laborum iusto et et temporibus alias quam et exercitationem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(126, '2021-01-04 14:59:41', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 68.00, NULL, 'paid', 'Id velit consequuntur molestiae quo. Culpa et at molestiae incidunt sint impedit. Praesentium blanditiis qui dicta incidunt. Adipisci aut recusandae maiores illum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(127, '2021-05-05 03:15:40', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 36.00, NULL, 'paid', 'Officia consequuntur corporis dicta nisi. Vitae est sit omnis eius ut. Doloribus eos quaerat et non nihil dignissimos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(128, '2021-07-11 02:07:13', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 48.00, NULL, 'paid', 'Nam dolores atque consequuntur autem atque voluptatem sit. Quidem quia voluptatem provident et numquam nihil tempora. Modi autem vel pariatur aut impedit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(129, '2021-04-13 01:32:22', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 49.00, NULL, 'paid', 'Facere ipsam molestias magnam vitae. Non id est modi veniam. Maiores ut quia ex doloribus. Autem tempora modi officia. At minima aspernatur quo ipsam aut amet est accusantium.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(130, '2021-01-26 07:20:54', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 47.00, NULL, 'paid', 'Aut reiciendis et vel esse vel corrupti error. Autem nisi quo provident et omnis enim. Qui voluptas rerum doloremque harum saepe saepe. Enim explicabo sapiente consectetur in eum quam cupiditate.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(131, '2021-10-10 11:50:41', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 48.00, NULL, 'paid', 'Fugiat quia voluptas et. Magni est laboriosam excepturi. Quos et consequuntur dicta. Ea delectus et corporis qui recusandae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00);
INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `address_id`, `client_id`, `client_name`, `restorant_id`, `driver_id`, `delivery_price`, `order_price`, `payment_method`, `payment_status`, `comment`, `lat`, `lng`, `srtipe_payment_id`, `fee`, `fee_value`, `static_fee`, `delivery_method`, `delivery_pickup_interval`, `vatvalue`, `payment_processor_fee`, `time_to_prepare`, `table_id`, `phone`, `whatsapp_address`, `payment_link`, `employee_id`, `deleted_at`, `md`, `coupon`, `discount`) VALUES
(132, '2021-07-16 06:30:47', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 78.00, NULL, 'paid', 'Repellat minus deleniti quia ullam aut pariatur a laborum. Dicta mollitia in numquam esse. Ad totam quos voluptatem sed. Alias sit sit voluptatem quibusdam rem alias. Aliquam et sapiente debitis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(133, '2021-04-26 21:54:55', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 33.00, NULL, 'paid', 'Eaque eum atque accusamus ut. Quis cumque consequatur animi assumenda sunt architecto pariatur. Temporibus repellendus ullam cum vel illo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(134, '2021-02-02 01:03:54', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 59.00, NULL, 'paid', 'Sequi illum saepe a iure aspernatur aut ad. Molestias id quas nostrum quasi. Sunt voluptatibus sit aliquid in reprehenderit consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(135, '2021-08-22 23:42:42', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 62.00, NULL, 'paid', 'Qui et delectus corporis laudantium. Deserunt iure excepturi non sed ut earum laboriosam. Quis minima eius natus occaecati. Dolorem est dolores nihil iusto.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(136, '2021-01-09 13:27:29', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 36.00, NULL, 'paid', 'Autem reprehenderit maxime recusandae aliquam. Corrupti iusto eos et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(137, '2021-07-22 12:37:34', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 84.00, NULL, 'paid', 'Vero est dolor voluptas similique et est. Quia excepturi sit totam deleniti dignissimos. Ut veritatis veritatis debitis fugit. Ut laudantium in sit praesentium reiciendis facilis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(138, '2021-07-25 03:08:42', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 42.00, NULL, 'paid', 'Impedit pariatur officiis incidunt doloribus aut quia. Fugit sit id dolor et. Veniam est nostrum aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(139, '2021-10-18 23:52:41', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 56.00, NULL, 'paid', 'Voluptatem sit sed tempora nesciunt deleniti id. Recusandae deserunt necessitatibus sed quae aut sed est. Tenetur deserunt est cupiditate a debitis. Voluptas quia sit ipsa quis est inventore sit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(140, '2021-02-06 07:38:45', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 77.00, NULL, 'paid', 'Qui nobis dolor blanditiis nesciunt. Nihil vitae dolorem ut sunt quo distinctio. Animi eos animi cum et. Sit explicabo id neque error vel laborum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(141, '2021-05-04 03:54:30', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 61.00, NULL, 'paid', 'Deleniti dolorum itaque ducimus omnis. Repudiandae laborum aperiam eos est. Ut eum ea deleniti vel nihil.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(142, '2021-12-16 01:06:32', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 72.00, NULL, 'paid', 'Sed repellendus ullam doloremque ea quasi eum. Ipsum aut ut impedit dicta ut. Rerum quos et sint adipisci molestiae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(143, '2021-05-19 23:02:39', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 32.00, NULL, 'paid', 'Omnis ipsa distinctio a eos est. Fuga dolores maiores minus. Amet quis pariatur repudiandae aliquid.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(144, '2021-12-08 12:24:36', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 59.00, NULL, 'paid', 'Iure et hic qui. Rerum odio ut repellendus. Accusamus voluptatem non vel quis impedit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(145, '2021-03-02 04:14:13', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 55.00, NULL, 'paid', 'Sapiente veritatis maxime eos corrupti cum autem autem nulla. Soluta est a quia magni. Officiis dignissimos doloremque consequuntur ipsam voluptas. Laudantium sed est et quia non aspernatur enim.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(146, '2021-06-02 00:04:12', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 82.00, NULL, 'paid', 'Id soluta architecto sint in non soluta. Delectus qui in iste et aut. Laboriosam nam dolorem dicta tempore et. Sed sequi qui soluta iste. In id eum aliquam quaerat voluptas quo atque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(147, '2021-12-21 11:34:18', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 49.00, NULL, 'paid', 'Sint vel quos voluptatem molestiae placeat aspernatur. Voluptatem a amet omnis quasi laudantium. Recusandae sed expedita tenetur officia ullam expedita architecto.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(148, '2021-09-16 03:18:50', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 65.00, NULL, 'paid', 'Molestiae consequuntur ut nam doloribus consequatur laudantium. Eaque error repudiandae omnis et rerum. Qui sunt quis voluptatem aliquid facere voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(149, '2021-05-19 19:14:10', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 52.00, NULL, 'paid', 'Deleniti recusandae perferendis perferendis ut nisi. Dolore perferendis perspiciatis esse maxime sequi assumenda et. Optio nulla deleniti nemo ipsum officia reiciendis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(150, '2021-12-26 23:46:29', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 35.00, NULL, 'paid', 'Ab occaecati eos deserunt hic quia velit consequatur. Ipsa voluptatem quod suscipit est. Voluptate laboriosam ullam itaque aperiam placeat esse amet.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(151, '2021-12-23 11:38:00', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 97.00, NULL, 'paid', 'Expedita illum tempora voluptatem molestiae id nostrum veritatis ab. Enim cum est enim pariatur eos. Omnis fuga repellat qui perferendis non quaerat ea.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(152, '2021-05-24 17:47:09', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 59.00, NULL, 'paid', 'Molestiae et qui et enim quia eaque. Corporis magni alias maxime. Rerum qui saepe natus omnis vitae voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(153, '2021-11-10 14:56:34', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 77.00, NULL, 'paid', 'Et unde et et est corporis nihil optio. Omnis fugiat necessitatibus laboriosam assumenda. Est at sunt ad nobis autem ipsum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(154, '2021-12-05 09:00:26', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 87.00, NULL, 'paid', 'Aut sed commodi repudiandae dolorem facilis. Vel aut enim odio sed eum quis et. Neque voluptas aut et hic.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(155, '2021-01-06 16:12:01', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 83.00, NULL, 'paid', 'Et ex nesciunt dolorum voluptas possimus. Maxime quia vitae incidunt ullam est. Qui hic aut eligendi omnis beatae rerum molestias. Voluptatem sint accusantium culpa numquam rerum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(156, '2021-10-14 11:20:09', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 70.00, NULL, 'paid', 'Earum veniam assumenda aut quasi ipsam ducimus ipsum. Ullam debitis accusamus suscipit et quos. Ipsam sit neque neque in voluptas eligendi distinctio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(157, '2021-08-06 15:35:26', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 72.00, NULL, 'paid', 'Distinctio eos consequatur consectetur voluptas eum. Ipsam culpa incidunt adipisci. Qui quasi saepe sunt minima.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(158, '2021-04-04 20:53:23', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 54.00, NULL, 'paid', 'Autem libero nulla recusandae et sapiente. Perferendis adipisci velit illo consectetur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(159, '2021-11-24 14:38:26', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 60.00, NULL, 'paid', 'Voluptatibus distinctio voluptatum blanditiis autem velit. Ea similique corporis distinctio ut rem rerum. Unde sint hic numquam voluptatem voluptatem. Est vel esse ea.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(160, '2021-05-04 22:08:25', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 40.00, NULL, 'paid', 'Vero a exercitationem quia eum non ipsam. Omnis quos vitae nesciunt facere ea molestiae ratione. Impedit eaque quo hic inventore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(161, '2021-02-26 07:27:41', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 31.00, NULL, 'paid', 'Voluptatem architecto quo esse adipisci. Voluptas eveniet et incidunt et illum eveniet.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(162, '2021-12-26 20:12:13', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 81.00, NULL, 'paid', 'Quia sed nihil totam nemo pariatur voluptatem. Quia sit occaecati expedita est vel non. Ea natus impedit praesentium voluptas laudantium consequatur temporibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(163, '2021-11-30 01:00:26', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 75.00, NULL, 'paid', 'Culpa sunt quidem totam quod doloremque fuga. Aperiam fugit qui eos ut. Pariatur dolorem voluptatem distinctio consequuntur. Et quia excepturi amet dolorum in fugiat. Nesciunt in ad deserunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(164, '2021-02-01 07:39:14', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 91.00, NULL, 'paid', 'Et voluptate nemo sapiente quo porro ducimus fugiat. Ab blanditiis iste aut nesciunt et eum nemo amet. Doloribus facere occaecati numquam cupiditate.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(165, '2021-10-31 05:55:56', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 91.00, NULL, 'paid', 'Sit voluptate corrupti voluptatem cumque eos odio. Nam non mollitia ea asperiores. Omnis optio iusto cum corporis soluta ut molestiae debitis. Et facilis quos quo quidem laboriosam facilis provident.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(166, '2021-02-28 05:18:06', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 35.00, NULL, 'paid', 'Aspernatur qui et a iste dolorem. Sapiente repudiandae porro ea debitis nam. Quo explicabo temporibus magnam qui delectus nisi ut. Voluptatem rerum perspiciatis rem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(167, '2021-01-20 21:15:29', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 30.00, NULL, 'paid', 'Rerum consequuntur quas vero aut nam et. Veritatis atque facere debitis culpa quasi earum quasi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(168, '2021-07-03 12:23:43', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 69.00, NULL, 'paid', 'Laboriosam est necessitatibus voluptatibus deserunt. Facilis voluptatem consequuntur ratione asperiores facilis. Sit itaque doloremque hic commodi. Omnis eveniet ab nemo nisi quis fugiat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(169, '2021-03-20 16:48:11', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 33.00, NULL, 'paid', 'Illum iure aut ex cupiditate. Est vitae rerum alias qui excepturi. Nemo modi officiis voluptas nobis incidunt nobis ut est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(170, '2021-06-25 05:29:23', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 42.00, NULL, 'paid', 'Fugit impedit aut ex neque veritatis. Adipisci dolorem voluptatem ut reprehenderit itaque eius quis. Vel nam tempora molestiae minima. Sit labore distinctio aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(171, '2021-05-06 00:00:05', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 84.00, NULL, 'paid', 'Distinctio quisquam veritatis optio quo harum. Eum accusantium qui perspiciatis temporibus. Iste quas natus voluptate consequuntur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(172, '2021-11-01 22:36:32', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 51.00, NULL, 'paid', 'Id accusamus magnam eaque sint molestiae voluptatum laborum quo. Nisi consequatur adipisci quam ipsa a. Sed deleniti officia incidunt et. Dolore error minus et quae. Minima neque expedita omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(173, '2021-11-12 10:46:03', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 98.00, NULL, 'paid', 'Ea quia dolorem vero quas quia non aut. Et voluptas ut nostrum recusandae rerum ex quia. Modi itaque nostrum sint dolor qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(174, '2021-07-02 23:10:12', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 43.00, NULL, 'paid', 'Libero minima aspernatur minima laboriosam enim dolorem. Cumque soluta dicta quae quis nobis sint doloribus. Maxime est libero assumenda et. Tenetur qui non dolorem eveniet aut ut architecto.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(175, '2021-09-04 23:11:17', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 35.00, NULL, 'paid', 'Odio non voluptatem asperiores maiores consequatur consequatur. Blanditiis aliquid voluptate cumque optio accusamus non quisquam et. Qui officia rerum debitis qui ullam et soluta.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(176, '2021-07-20 14:55:22', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 58.00, NULL, 'paid', 'Sapiente adipisci nesciunt ut distinctio quisquam debitis. Blanditiis blanditiis id et pariatur sit. Sed facilis vel ea error omnis. Deserunt adipisci et itaque eius ea.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(177, '2021-12-04 06:36:39', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 38.00, NULL, 'paid', 'Qui autem odio earum. Totam quia ut ut quisquam. Consequatur quibusdam voluptas eveniet officiis consequuntur dolorem eos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(178, '2021-11-11 11:11:59', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 45.00, NULL, 'paid', 'Qui exercitationem quia voluptas veniam voluptatem facilis. Dignissimos incidunt ea vel quam voluptatem cupiditate dolorem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(179, '2021-07-18 04:19:53', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 45.00, NULL, 'paid', 'Voluptates et porro dolorem a neque. Temporibus voluptatibus at provident occaecati. Cumque blanditiis cum provident consectetur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(180, '2021-06-12 03:01:59', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 32.00, NULL, 'paid', 'Aut quis aspernatur omnis modi. Tempore sit repellat natus ea tempore. Exercitationem deleniti quam perspiciatis et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(181, '2021-12-09 05:29:43', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 97.00, NULL, 'paid', 'Necessitatibus qui nesciunt dolores odio. Nihil ut ipsa laudantium et. Accusantium totam quisquam voluptas quia asperiores. Voluptatem eum blanditiis excepturi aut excepturi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 42, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(182, '2021-04-16 14:30:46', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 47.00, NULL, 'paid', 'Et in laborum repellendus distinctio natus aut. Nihil omnis sunt sed ex fugiat. Omnis quasi soluta enim autem. Tempora aliquid maiores et atque necessitatibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(183, '2021-04-07 23:45:09', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 94.00, NULL, 'paid', 'Maxime sunt quis aliquam quia esse qui laudantium. Eligendi repellat qui delectus incidunt. Id et aut aperiam et commodi. Quia voluptatibus dolorum eum sapiente voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(184, '2021-11-10 16:56:15', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 33.00, NULL, 'paid', 'Blanditiis est eos laudantium a. Eius sed aut et possimus sint aut. Dolorum id nulla quia qui. Fugiat ipsum facere id ut reprehenderit atque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(185, '2021-06-11 13:13:58', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 88.00, NULL, 'paid', 'Alias omnis quos nobis placeat beatae molestiae et. Voluptatibus perferendis repellat tempora eveniet. Quia est similique sequi minima nihil.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(186, '2021-07-20 07:52:22', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 85.00, NULL, 'paid', 'Cumque nihil pariatur omnis eveniet non blanditiis nostrum. Dolore ut voluptates cupiditate quam quidem. Ut hic architecto facere aliquid placeat voluptatem nesciunt voluptate.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(187, '2021-07-09 16:29:18', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 73.00, NULL, 'paid', 'Aut sunt harum ut nam. Doloremque similique voluptatem necessitatibus magnam. Est dicta pariatur praesentium a doloribus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(188, '2021-03-27 08:47:45', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 64.00, NULL, 'paid', 'Dolorum reprehenderit deserunt excepturi omnis sit dolores. Sed modi amet iusto qui totam magnam. Vero dolorem vero quaerat distinctio qui aperiam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(189, '2021-01-01 23:20:39', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 74.00, NULL, 'paid', 'At in impedit eos magni adipisci ut ipsam. Consectetur omnis dignissimos id iste dolor. Dolore sunt placeat dolores voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(190, '2021-01-12 19:15:56', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 98.00, NULL, 'paid', 'Omnis ut repellendus explicabo voluptas. Adipisci nam earum molestiae aliquid amet reprehenderit. Rem et et ut dolor eveniet dolorem a. Illo provident dolores non illo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(191, '2021-03-27 06:49:39', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 90.00, NULL, 'paid', 'Eveniet ducimus harum et repellendus occaecati. Ducimus itaque ab quod amet rerum libero corrupti. Aut velit asperiores suscipit voluptatem. Nobis delectus est voluptatum eius itaque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(192, '2021-05-24 16:51:06', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 70.00, NULL, 'paid', 'Omnis eos ut dolore ipsa eum. Qui nihil voluptate sed. Modi non esse quis ex ipsum est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(193, '2021-09-20 22:50:58', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 96.00, NULL, 'paid', 'Itaque repellat voluptas qui voluptas sapiente quasi. Est ea vitae nemo iste voluptate. Et itaque commodi beatae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(194, '2021-09-23 21:35:45', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 67.00, NULL, 'paid', 'Dolor architecto facilis quidem ut optio laboriosam. Quia corrupti magnam incidunt. Facere odit praesentium et veniam totam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(195, '2021-06-15 17:00:27', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 71.00, NULL, 'paid', 'Vitae dolor et laborum est qui. Nulla quia ut amet nobis. Tempore doloremque sint dolores eaque omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(196, '2021-04-23 04:38:16', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 78.00, NULL, 'paid', 'Neque eos voluptates ratione accusantium. Nam nihil voluptatem ipsum labore distinctio ad porro. Et earum labore iusto impedit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(197, '2021-01-11 08:33:08', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 75.00, NULL, 'paid', 'Totam dolor ut veritatis rerum at dolorem eius. Nemo voluptas nihil tempora et id pariatur in. Dolor incidunt sed odio iusto sapiente. Rem non eos molestiae tempora maiores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(198, '2021-08-26 06:02:32', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 71.00, NULL, 'paid', 'Temporibus et quos impedit aut et. Rerum quo nulla et suscipit veritatis. Libero qui hic ut sunt maiores soluta expedita. Reprehenderit iusto error fuga aut at sed.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(199, '2021-06-29 20:46:26', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 92.00, NULL, 'paid', 'Aut dolore dolorem aliquid omnis asperiores quam est. Vero harum veritatis velit fugit. Dignissimos culpa quae sunt numquam est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(200, '2021-09-14 13:12:07', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 41.00, NULL, 'paid', 'Ipsum asperiores dolor repudiandae quae quia sit aut maxime. Consectetur libero nemo ut fugiat saepe. Eos velit omnis dicta et rem aliquam cumque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(201, '2021-07-12 04:27:49', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 73.00, NULL, 'paid', 'Quam dolor expedita provident libero. Fuga numquam iusto impedit. Repellendus adipisci ipsum et natus reiciendis totam vitae. Nemo ex quod eum eveniet iusto.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(202, '2021-11-20 01:59:41', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 98.00, NULL, 'paid', 'Nihil aperiam esse optio maiores alias. Ab amet voluptatum praesentium sit. Neque dicta eum ab odio quod rem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(203, '2021-08-29 03:55:12', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 70.00, NULL, 'paid', 'Sit aut impedit voluptatem consequatur voluptas. Dolores et debitis et dolore ea expedita. Alias perspiciatis dolor sint dolorum quis quam architecto. Quibusdam qui et sed et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(204, '2021-05-31 09:36:46', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 44.00, NULL, 'paid', 'Aut nesciunt laborum id doloremque. Dicta praesentium aut est cumque quo aut optio quaerat. Perferendis quia in possimus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(205, '2021-11-09 05:33:26', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 33.00, NULL, 'paid', 'Quidem porro quisquam dolores nihil. Dolores debitis deleniti doloribus. Beatae error et deserunt minus delectus quas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 42, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(206, '2021-08-12 14:19:53', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 98.00, NULL, 'paid', 'Excepturi id a reiciendis est nihil et. Non quas est dolores quis. Omnis voluptates natus qui excepturi est architecto qui sequi. Culpa aliquam tempore culpa.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 42, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(207, '2021-05-14 06:19:24', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 71.00, NULL, 'paid', 'Accusantium quia ea assumenda dignissimos voluptatum fugiat. Cupiditate et repudiandae dicta sapiente a fuga deleniti sit. Nostrum rerum id similique aut ea.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(208, '2021-11-03 21:31:09', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 43.00, NULL, 'paid', 'Fugit rerum sunt et fuga. Quis ab id eos repellat distinctio. Dolore non sit deleniti. Neque ut qui repellendus voluptatibus atque culpa cupiditate.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(209, '2021-04-07 17:52:20', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 86.00, NULL, 'paid', 'Illum esse tempore doloribus doloremque. Dolor odit itaque incidunt repudiandae. Illum placeat exercitationem provident eligendi error. Sint nisi sed culpa placeat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(210, '2021-01-04 02:57:32', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 62.00, NULL, 'paid', 'Placeat consectetur similique deleniti eius. Sit vel aut sed nihil iste ut. Distinctio ducimus ad neque iure. Labore excepturi voluptas fugit error maxime.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(211, '2021-11-01 10:49:26', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 92.00, NULL, 'paid', 'Doloribus facilis atque non qui. Cum tempore ea reprehenderit aperiam sunt. Est accusantium temporibus vitae ratione nihil non. Laborum non reprehenderit tempore voluptate iste eum temporibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(212, '2021-09-01 18:32:17', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 50.00, NULL, 'paid', 'Ipsum beatae numquam rerum. Est nam exercitationem enim rerum odio. Excepturi delectus modi quidem nemo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(213, '2021-12-01 15:00:15', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 41.00, NULL, 'paid', 'Consequuntur voluptatibus quos sapiente sed. Nisi sapiente impedit non enim architecto. Veritatis unde ut delectus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(214, '2021-10-10 11:12:36', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 77.00, NULL, 'paid', 'Est sapiente dicta tempore enim. Aut sit porro soluta rerum consequatur est. Doloremque dolores ratione illo in quo dolorem. Voluptas aliquam voluptas sed quidem maxime ea molestiae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(215, '2021-01-02 07:34:55', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 96.00, NULL, 'paid', 'Et laborum alias possimus deserunt explicabo laboriosam deserunt. Veritatis inventore quod ratione. Exercitationem eaque quo a iste aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(216, '2021-11-24 00:04:12', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 65.00, NULL, 'paid', 'Consequatur ab voluptas autem et. Aliquid fuga reiciendis sunt beatae est in aut. Et magnam blanditiis eum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(217, '2021-06-09 14:05:12', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 85.00, NULL, 'paid', 'Ab rem dignissimos molestiae aut. Consequuntur est consequatur error dolorem porro error aut. Eligendi dolore consequatur consequatur aut ipsum. Et velit itaque quibusdam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(218, '2021-04-16 07:48:01', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 35.00, NULL, 'paid', 'Dolor et voluptatibus ullam illo minus illum. Ipsam repellendus qui nam aspernatur quis quisquam. Error sit voluptatem odio id eaque aut quis consequatur. Sed non est amet non dolor deleniti.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(219, '2021-08-27 12:22:51', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 50.00, NULL, 'paid', 'Laborum neque qui dicta. Molestias nobis consectetur tempore autem voluptates et consequuntur. Officia sit ab nihil magnam non tempora sunt. Voluptas dolore consequatur unde iure.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(220, '2021-04-03 23:28:51', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 35.00, NULL, 'paid', 'Voluptate consectetur dicta rerum ut est. Neque temporibus adipisci dicta sunt corporis tempore. Consequatur qui harum explicabo rerum expedita rerum. Placeat fugiat doloribus quaerat aut velit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(221, '2021-09-21 07:23:02', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 46.00, NULL, 'paid', 'Sint a odit aliquam modi. Molestias ad perferendis reiciendis eligendi suscipit excepturi quia quisquam. Error in vel rerum et sed beatae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 16, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(222, '2021-11-26 11:15:31', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 35.00, NULL, 'paid', 'At eos sint ut et et quidem consequuntur. Unde et perferendis debitis corporis accusantium assumenda. Quo doloribus et repudiandae voluptas eos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 16, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(223, '2021-05-03 10:59:27', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 31.00, NULL, 'paid', 'Et alias rem rem eos corporis. Itaque et vel laboriosam id autem dolor sed. Quia nihil ad tenetur est molestiae et illo dolores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(224, '2021-10-22 21:23:48', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 65.00, NULL, 'paid', 'Sed quia quidem incidunt quis magnam nihil. Ea ut officiis quis quo provident illum fugiat. Cupiditate quis culpa expedita nam aut eos in.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(225, '2021-06-14 12:10:36', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 56.00, NULL, 'paid', 'Tempora et doloribus ut laudantium veritatis recusandae. Repellendus consequatur quam fuga aspernatur saepe. Est qui magni ut nihil. Eaque qui quibusdam illo inventore adipisci qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(226, '2021-09-21 10:16:31', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 88.00, NULL, 'paid', 'Animi est quis maxime repellendus a tempora. Soluta aliquid laudantium consectetur reiciendis facere. Eveniet quos qui deleniti debitis minima reiciendis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(227, '2021-12-15 09:41:43', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 90.00, NULL, 'paid', 'Dolorem expedita sit aperiam ut illo et. Ullam debitis impedit saepe. Aut dignissimos nam voluptates ut. Est suscipit rem ab et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(228, '2021-01-31 00:40:37', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 88.00, NULL, 'paid', 'Sunt expedita rerum dolore asperiores. Est architecto quia aliquam incidunt similique. Architecto eveniet nam eius dolorum veritatis voluptas. Id iure consequatur nobis voluptate.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(229, '2021-10-27 06:51:38', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 91.00, NULL, 'paid', 'Est enim vitae expedita iste aut sit. Est occaecati iusto molestiae et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(230, '2021-12-21 18:41:15', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 81.00, NULL, 'paid', 'Tenetur vitae perferendis rerum et maiores non itaque exercitationem. Voluptatem autem quisquam tenetur repudiandae vitae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(231, '2021-06-18 15:10:14', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 39.00, NULL, 'paid', 'Vel eum ex dolorem ut. Qui facilis libero accusantium a commodi eligendi. Laborum aliquid rerum maxime illum suscipit iste neque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(232, '2021-07-10 10:43:10', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 63.00, NULL, 'paid', 'Voluptatibus corrupti deleniti iste modi et commodi. Sequi voluptatem sapiente nostrum dolores minima velit et. Quidem quas omnis molestiae expedita ducimus sed autem. Inventore modi consequatur eos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(233, '2021-07-20 00:56:54', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 81.00, NULL, 'paid', 'Voluptatum architecto id minus autem. Tempora error et voluptatibus quaerat. Deleniti quasi fugit necessitatibus quisquam in.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(234, '2021-06-28 12:00:27', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 98.00, NULL, 'paid', 'Minima et exercitationem officia. Et architecto alias quia labore. Nemo et in sit numquam reiciendis quis. Aut ut et itaque aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(235, '2021-11-14 23:24:48', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 79.00, NULL, 'paid', 'Aspernatur porro explicabo ipsum minima itaque quia. Quo dolore et id eos consequatur sit. Voluptas reprehenderit sit modi et recusandae quas. Mollitia et explicabo unde magnam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(236, '2021-06-13 02:03:20', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 98.00, NULL, 'paid', 'At adipisci illo explicabo incidunt. Nam sit et ut fugit eum illo ut. Veniam expedita non ut qui culpa omnis. Qui in earum sed ut repellendus. Sint corrupti in non.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(237, '2021-08-04 00:45:33', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 97.00, NULL, 'paid', 'Iste commodi non qui ad et in. Suscipit voluptas eaque quo eligendi. Accusantium sit laborum sequi saepe vel.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(238, '2021-09-06 10:11:20', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 81.00, NULL, 'paid', 'In alias modi tempore aliquid amet. Est maxime rerum repellendus voluptatibus commodi. Quasi dolor molestiae voluptatem quaerat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(239, '2021-11-08 16:22:30', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 57.00, NULL, 'paid', 'Iste odio ex est adipisci. Non id vero vero fugit. Aut facilis debitis velit deleniti placeat consequatur maiores dolorem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(240, '2021-09-28 23:11:07', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 47.00, NULL, 'paid', 'Dolor minus autem quia. Nulla nobis et doloremque molestias autem. Expedita dignissimos esse sapiente quia inventore quas nostrum consectetur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(241, '2021-12-03 21:40:21', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 50.00, NULL, 'paid', 'Qui pariatur deleniti eos et velit laborum. Placeat minima voluptas nihil excepturi vero illo dolor. Numquam nam ipsam est porro quibusdam tempore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(242, '2021-03-28 06:41:26', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 58.00, NULL, 'paid', 'Sit consectetur sit a omnis. Eos nam numquam magnam in quia sed voluptatibus corrupti. Asperiores aliquam vel nesciunt perspiciatis maxime alias veniam ratione.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(243, '2021-02-19 10:30:53', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 98.00, NULL, 'paid', 'Minima officiis veniam velit nesciunt ipsum numquam unde. Voluptas quisquam reiciendis nihil est. Enim ut magni nobis labore. Voluptas praesentium nam voluptates sit fugit quo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(244, '2021-07-18 13:48:40', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 75.00, NULL, 'paid', 'Tempore vel consequuntur unde quia in. Est natus id quas quae ipsum. Vero blanditiis est quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 42, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(245, '2021-10-02 10:54:12', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 91.00, NULL, 'paid', 'Dolorem quasi velit qui eius. In placeat distinctio officiis dolore libero. Repellat commodi omnis dolor.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(246, '2021-12-11 21:45:54', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 97.00, NULL, 'paid', 'Voluptate explicabo quia eligendi fuga et ipsa. Consequatur asperiores fugiat quia quasi deserunt sed quod. Magni nobis ut nesciunt ad. Quis repellendus velit in reiciendis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(247, '2021-10-07 22:27:30', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 43.00, NULL, 'paid', 'Magnam dolorem consequatur voluptatem autem non. Velit beatae rerum qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(248, '2021-10-09 05:51:15', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 85.00, NULL, 'paid', 'Ut eum in accusantium ad quibusdam voluptates. Id aut assumenda eos enim sunt. Ducimus dignissimos quasi illo at ut eius maiores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(249, '2021-02-04 17:30:14', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 84.00, NULL, 'paid', 'Expedita nihil ex cumque sed. Laboriosam et non qui eum voluptas. Sint qui ad temporibus nostrum suscipit qui necessitatibus. Id recusandae est quo cupiditate iusto sed pariatur dicta.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(250, '2021-04-16 11:10:14', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 71.00, NULL, 'paid', 'Et aliquid quae voluptatem sunt assumenda aliquam. Hic amet veritatis architecto ut pariatur ut vel. Laudantium eaque iure alias.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(251, '2021-08-08 01:53:32', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 93.00, NULL, 'paid', 'Aut sed nesciunt deserunt provident. Eligendi dolorum iusto placeat inventore facere quod. Sint ad inventore neque molestias consequuntur est perspiciatis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(252, '2021-11-26 04:11:46', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 70.00, NULL, 'paid', 'Aut quia aut repellendus consequatur ut ad. Nemo sequi est pariatur repudiandae reiciendis porro qui itaque. Expedita quidem ullam quibusdam consequuntur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(253, '2021-12-18 05:46:53', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 72.00, NULL, 'paid', 'Repellat quo ad delectus possimus occaecati. Quisquam soluta sint cum iste nesciunt assumenda. Aliquam quasi est rerum odio amet aspernatur. Et et et et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(254, '2021-01-09 09:46:42', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 40.00, NULL, 'paid', 'Illum quidem sequi dignissimos quis ut non dolor. Minima iure natus saepe enim ducimus deserunt libero. Qui molestiae porro vitae sed.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(255, '2021-04-22 12:05:29', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 47.00, NULL, 'paid', 'Culpa facilis maxime quisquam ut ut ratione hic. Sequi minus doloribus natus at animi excepturi. Eveniet laboriosam qui facilis est rerum veniam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(256, '2021-08-11 23:37:26', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 80.00, NULL, 'paid', 'Sed numquam maxime voluptatum quod quaerat at est. Quae molestiae nesciunt ratione fuga vero. Dignissimos tempore impedit voluptatem sunt sunt a. Doloribus error quasi eius tempora.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(257, '2021-08-03 04:57:53', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 56.00, NULL, 'paid', 'Non voluptates quis non. Quo repellendus quasi harum enim ducimus. Explicabo sequi quidem voluptatem voluptatum. Aut ut et corrupti eos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(258, '2021-11-14 11:28:03', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 99.00, NULL, 'paid', 'Et est voluptatem eaque iure voluptas. Qui velit illum itaque. Est odio quia neque iste incidunt ut. Autem recusandae maiores distinctio iusto voluptate. Quasi rem facere impedit vel eos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(259, '2021-11-09 04:47:05', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 96.00, NULL, 'paid', 'Eum dolores asperiores dolorem qui. Praesentium nisi inventore deserunt. Ut beatae vel dicta delectus et quos aliquid. Rem doloremque consequuntur at qui iusto.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(260, '2021-07-19 19:20:04', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 46.00, NULL, 'paid', 'Omnis minima qui sed accusantium id vitae dignissimos. Sapiente laudantium magni id veritatis. Mollitia dignissimos corporis magnam labore repellendus. Quam iste voluptatem quos nihil.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(261, '2021-12-03 17:28:38', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 38.00, NULL, 'paid', 'Ad ipsum ut est dignissimos voluptas aut sit. Possimus illo sunt illum aliquid dicta.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(262, '2021-10-09 16:50:15', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 79.00, NULL, 'paid', 'Amet blanditiis eos harum. Quo dolores non iste. Sint consequuntur culpa eum qui repellendus id. Consequatur sed unde vitae quos tenetur nihil harum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(263, '2021-10-31 16:28:18', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 72.00, NULL, 'paid', 'Vitae expedita maiores in rerum ab alias nulla. Laudantium aperiam iure officiis suscipit nam. Autem laborum aut non adipisci.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00);
INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `address_id`, `client_id`, `client_name`, `restorant_id`, `driver_id`, `delivery_price`, `order_price`, `payment_method`, `payment_status`, `comment`, `lat`, `lng`, `srtipe_payment_id`, `fee`, `fee_value`, `static_fee`, `delivery_method`, `delivery_pickup_interval`, `vatvalue`, `payment_processor_fee`, `time_to_prepare`, `table_id`, `phone`, `whatsapp_address`, `payment_link`, `employee_id`, `deleted_at`, `md`, `coupon`, `discount`) VALUES
(264, '2021-08-10 07:48:24', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 77.00, NULL, 'paid', 'Eos nostrum aperiam reiciendis aut explicabo. Unde cupiditate quis corporis nobis dolores dicta veniam. Ex architecto hic possimus minima exercitationem iure. Porro minima et molestiae ad nesciunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(265, '2021-02-06 15:04:43', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 55.00, NULL, 'paid', 'Cumque saepe eaque labore repellat et quo. Cupiditate ipsum est maiores. Quia qui voluptatem dicta sed at vitae maxime facilis. Sed sed aut nesciunt quasi ipsum ex.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 42, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(266, '2021-07-21 05:27:30', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 70.00, NULL, 'paid', 'Commodi aspernatur aut eos sint ut. At est iure voluptatem non exercitationem. Accusantium aut esse sed voluptatem ratione delectus non. Saepe itaque soluta aliquid itaque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(267, '2021-11-22 02:43:17', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 79.00, NULL, 'paid', 'Mollitia rerum et cupiditate autem. Dicta necessitatibus aut eos illum. Provident commodi deleniti deleniti non quod quidem ipsam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(268, '2021-11-19 04:43:37', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 86.00, NULL, 'paid', 'Suscipit consequatur quia ex nemo et aut et quas. Est voluptas officiis occaecati placeat iusto. Praesentium et est quis. Ea inventore sequi rerum dolores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(269, '2021-07-02 00:36:54', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 66.00, NULL, 'paid', 'Sit est illum consequatur tempora laborum. Reprehenderit in dolorem ut error. Est cum totam rerum consequatur quas eos harum. Aperiam similique sint nobis nemo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(270, '2021-12-20 23:44:42', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 65.00, NULL, 'paid', 'Natus ut totam quia magnam et qui a. Architecto neque deleniti quia nihil totam. Quis aut et corrupti est voluptatibus dicta.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(271, '2021-03-17 15:56:37', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 62.00, NULL, 'paid', 'Possimus sequi at qui voluptatem voluptatem sit voluptas. Fugiat harum eveniet quia quis at. Atque dolores consequatur repellat et modi porro.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(272, '2021-01-10 02:31:59', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 85.00, NULL, 'paid', 'Provident voluptatum doloribus placeat qui. Possimus sit amet magnam et illo. Nulla debitis iste sit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(273, '2021-05-25 00:24:37', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 80.00, NULL, 'paid', 'Libero voluptatem tempora aliquam veritatis aperiam eum quia. Et asperiores nobis aut nostrum. Ratione ullam natus error et tenetur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(274, '2021-03-18 18:01:18', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 98.00, NULL, 'paid', 'Eum dolores perferendis vitae velit quo aut hic natus. Quisquam officia quo dolores autem. Aut ea saepe sequi laborum accusantium tenetur sint temporibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(275, '2021-05-19 03:28:27', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 85.00, NULL, 'paid', 'Iusto vitae saepe assumenda voluptatem quia at assumenda. Dolorum et ea ut. Fugiat quaerat iste repellat consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(276, '2021-09-09 03:24:27', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 32.00, NULL, 'paid', 'Est et minima ea aliquid. Dolores quia minima est consequatur aperiam velit delectus. Quia ut est perferendis blanditiis autem iusto suscipit. At eum et eum magnam suscipit doloribus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(277, '2021-12-27 21:42:19', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 95.00, NULL, 'paid', 'Enim ducimus ullam dolores nihil. Est velit dolorum fugiat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(278, '2021-08-06 16:49:03', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 97.00, NULL, 'paid', 'Modi officiis sit perspiciatis ab fuga autem. Nisi animi sed blanditiis veritatis delectus corporis iste. Et exercitationem autem et adipisci.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(279, '2021-11-21 11:48:34', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 50.00, NULL, 'paid', 'Labore dolor sint eum doloremque quas dolore et ab. Nisi aliquam aut consequatur aliquid ducimus molestias nam perspiciatis. Omnis a odit ab id.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(280, '2021-01-23 23:29:47', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 72.00, NULL, 'paid', 'Nostrum sed suscipit eos autem quis. Est tenetur et aut quia ut sed. Aliquam consequatur sed natus amet consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(281, '2021-10-05 07:36:46', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 63.00, NULL, 'paid', 'Et molestiae ut odio ea. Sint sit assumenda architecto. Quae qui qui quae. Facere voluptate adipisci dicta reiciendis suscipit sunt aspernatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(282, '2021-02-12 06:07:05', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 96.00, NULL, 'paid', 'Ducimus occaecati perspiciatis ullam pariatur. Et omnis assumenda aut laudantium repellat. Doloremque quasi dolorum voluptas aperiam natus officiis inventore. Rem fugit sit facilis atque ab.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(283, '2021-01-27 16:29:34', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 76.00, NULL, 'paid', 'Asperiores est accusamus ipsam nemo voluptatibus. Deleniti mollitia nesciunt labore dignissimos repellendus facilis tenetur voluptatem. In dolores magnam et architecto velit voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(284, '2021-06-09 16:36:35', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 45.00, NULL, 'paid', 'Itaque optio qui rem iure modi qui sint. Fugit ea qui quae dicta quo. Quidem quas excepturi aliquid veniam delectus suscipit. Repellendus ut sed omnis. Qui dolores similique et at.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(285, '2021-05-28 21:41:14', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 88.00, NULL, 'paid', 'Velit dolore aliquid assumenda nostrum perferendis iusto. Dicta soluta sit iure debitis possimus et molestiae. Voluptas dolorum totam enim aut quidem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(286, '2021-07-10 08:50:24', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 37.00, NULL, 'paid', 'Qui aut repudiandae et labore. Et culpa est impedit minima. Velit sit odio consequatur laboriosam fugiat molestiae tempore. Inventore possimus et labore natus consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(287, '2021-10-24 18:53:08', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 90.00, NULL, 'paid', 'Odio fuga blanditiis et maiores quae reprehenderit. Quo reprehenderit recusandae eligendi sunt aut neque eaque deserunt. Et exercitationem quod nemo qui deleniti.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(288, '2021-04-04 11:34:02', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 62.00, NULL, 'paid', 'Sed consequatur vero omnis nobis voluptate dolor in. Laudantium laborum velit non eveniet facilis. Quo nobis non aliquam qui quis explicabo praesentium et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(289, '2021-04-18 12:06:02', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 52.00, NULL, 'paid', 'Est dolorem earum est. Eligendi nihil est minus autem architecto voluptatem necessitatibus. Enim dolorum eligendi earum occaecati neque deserunt dolores porro.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(290, '2021-10-14 10:39:42', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 60.00, NULL, 'paid', 'Odio id delectus quae architecto. Corporis expedita debitis aut ut nesciunt quasi vel. Ut cumque fugit mollitia enim similique. Asperiores eum veritatis aut omnis quia accusamus sapiente.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(291, '2021-11-01 01:15:37', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 77.00, NULL, 'paid', 'Recusandae neque voluptates minus ut veritatis. Sunt ex ut cumque. Sit accusantium et incidunt autem veritatis. Ea dignissimos et ad sunt eaque est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(292, '2021-03-02 12:13:42', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 73.00, NULL, 'paid', 'Quasi quas ut soluta iste vel et. Voluptatem dicta illum dicta voluptas alias. Esse eum in dolores. Laborum sit labore explicabo dolorem asperiores excepturi et praesentium.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(293, '2021-12-18 09:35:09', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 72.00, NULL, 'paid', 'Laudantium similique consequatur ullam eos. Voluptates incidunt et est enim qui minima inventore. Expedita qui nemo ipsam quod voluptatem non. Deserunt ut ut officia iusto ut distinctio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(294, '2021-01-09 05:47:06', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 71.00, NULL, 'paid', 'Vel quia omnis in est debitis. Unde quia aliquid nesciunt odio nulla sunt sed et. Qui nisi doloribus eveniet veritatis et aut ipsam vitae. Fugiat est reiciendis vero natus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(295, '2021-07-03 06:58:42', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 49.00, NULL, 'paid', 'A dolore qui id quos eos eos. Et et ut cum autem non magni quaerat. Dolor a assumenda ad in soluta et. Dignissimos ipsam quo omnis deleniti et. Blanditiis nihil ad et accusamus distinctio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(296, '2021-06-13 00:40:39', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 97.00, NULL, 'paid', 'Sed dolorem atque est dolor omnis aut. Reprehenderit provident nesciunt quia. Minima ut odio non nihil velit est. Eos voluptates suscipit rerum labore cupiditate sit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(297, '2021-03-15 09:13:25', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 73.00, NULL, 'paid', 'Dolorum rerum vel dolorem sequi. Est at quibusdam est et illo ut itaque. Voluptatem ratione et vitae sunt a libero.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(298, '2021-07-20 19:11:01', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 76.00, NULL, 'paid', 'Consectetur et autem est ea ipsa ipsam eligendi. Occaecati magni et architecto perspiciatis. Accusantium recusandae necessitatibus voluptas. Delectus sunt qui cupiditate.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(299, '2021-06-28 05:19:03', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 37.00, NULL, 'paid', 'Odit temporibus minus harum nobis architecto. Qui ipsa nihil exercitationem aliquid. Ratione adipisci et dolor. Amet accusantium fuga autem. Eligendi aut est est nobis unde.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(300, '2021-03-22 18:50:40', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 76.00, NULL, 'paid', 'Enim et aliquid et tenetur. Deserunt qui omnis voluptas aut praesentium est. Dolores sit soluta quae sint enim.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(301, '2021-12-28 09:11:01', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 70.00, NULL, 'paid', 'Vel est aut temporibus non voluptatum magnam excepturi. Et qui quidem rem est. Culpa nisi aliquam et dolores expedita ipsa. Quia error iste aut sunt voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(302, '2021-03-23 04:17:34', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 52.00, NULL, 'paid', 'Exercitationem culpa recusandae officiis amet sed at libero. Ratione commodi sit voluptas amet. Tenetur est itaque quasi enim quibusdam. Esse fuga cumque perspiciatis ipsum itaque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(303, '2021-11-19 17:24:16', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 51.00, NULL, 'paid', 'Et sint iusto molestiae possimus itaque repellendus aut ipsam. Est eius dignissimos et qui. Et cumque dicta qui esse laboriosam iste maxime minus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(304, '2021-11-05 14:58:18', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 74.00, NULL, 'paid', 'Nulla veritatis cum et id ullam repudiandae mollitia. Eos distinctio sunt repellat inventore. Beatae et quia sunt labore voluptatum ipsam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(305, '2021-12-26 11:25:17', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 51.00, NULL, 'paid', 'Iure voluptate id rerum ut error est ea voluptatem. Laudantium officiis eum magni odio. Tempore est aliquam amet sed accusantium.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(306, '2021-06-19 08:21:19', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 80.00, NULL, 'paid', 'Quos ad deleniti eligendi necessitatibus est blanditiis commodi quis. Aut qui sit repellat quo. Nesciunt molestiae ratione cupiditate expedita. Officiis ea ab molestiae optio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(307, '2021-09-05 23:13:01', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 97.00, NULL, 'paid', 'Qui repellat commodi repellendus sit. Autem non quia rerum iure aliquam nulla. Labore ut sint enim nobis velit dicta doloremque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(308, '2021-02-28 00:09:53', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 92.00, NULL, 'paid', 'Minima quaerat illum rerum aspernatur omnis hic architecto doloribus. Modi rerum harum saepe ut occaecati. Dolorem iure exercitationem quo autem. Sequi porro odio ut quia dicta.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(309, '2021-02-27 16:05:30', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 33.00, NULL, 'paid', 'Illo quas vitae ullam et. Numquam et officia cum porro. Consequuntur qui reprehenderit temporibus dolores non et. Et iste quae est suscipit aut et voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(310, '2021-02-26 00:05:24', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 43.00, NULL, 'paid', 'Sint dolore qui corporis. Eaque odio ad molestiae amet est eum. Est enim iste iure id.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(311, '2021-05-01 10:56:54', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 34.00, NULL, 'paid', 'Commodi quisquam dolor exercitationem et. Molestiae quos sunt saepe velit illo. Expedita id temporibus occaecati ex quisquam rerum. Qui iure aspernatur sed quod sed omnis ut ab.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(312, '2021-08-08 09:14:23', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 90.00, NULL, 'paid', 'Qui velit neque sint enim. Quo voluptate perspiciatis sequi sunt facere. Commodi non unde non ducimus nulla ab. Id aut alias doloribus quisquam atque. Vel dolorem doloribus ipsa quod.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(313, '2021-04-08 17:46:48', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 97.00, NULL, 'paid', 'Non expedita eum tempore ea sit. Voluptas voluptatem in tempore in modi ut fugit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(314, '2021-01-01 09:24:37', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 47.00, NULL, 'paid', 'Omnis occaecati sint nesciunt reprehenderit corporis vero animi. Velit et officiis sed ab nemo unde. Placeat quidem ipsa eos dolorem. Odit ut neque ipsam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(315, '2021-08-23 13:21:00', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 43.00, NULL, 'paid', 'Adipisci nulla quaerat a enim. Qui deserunt ab iusto voluptas. Fugit quas harum distinctio aut eaque beatae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(316, '2021-12-04 08:10:40', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 37.00, NULL, 'paid', 'Omnis et voluptate assumenda tenetur id quis. Eaque dolores in dolorum sit. Sed in sit nemo dolor voluptates maxime. Omnis asperiores fuga unde sit voluptatem ad.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(317, '2021-10-29 07:01:11', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 34.00, NULL, 'paid', 'Qui harum fugiat cum esse non et. Aliquam dolore exercitationem eum ut. Molestiae velit ex eligendi nobis ad hic. Aut ut quaerat necessitatibus nobis earum minima.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(318, '2021-12-19 10:39:40', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 100.00, NULL, 'paid', 'Autem dolor quis sed. Nesciunt aspernatur iste molestiae illo sit dolores. Maxime vero asperiores sed mollitia. Eum voluptas ab voluptas hic sed. Quia ea nihil non et tempore distinctio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(319, '2021-10-06 23:18:35', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 60.00, NULL, 'paid', 'Excepturi est sunt sed consectetur delectus. Nobis autem non enim ut enim dolorem odit. Eum harum eligendi quidem atque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(320, '2021-05-15 22:13:03', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 91.00, NULL, 'paid', 'Illo atque in et voluptate consectetur quasi rerum ipsum. Ut harum quasi velit expedita rerum distinctio est. In qui id vitae facilis qui et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(321, '2021-08-10 04:01:09', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 63.00, NULL, 'paid', 'Rem aut eligendi repellendus dolor sequi. Nulla aliquam iusto laboriosam ullam ipsam distinctio. Et harum ut quaerat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(322, '2021-07-09 21:24:13', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 44.00, NULL, 'paid', 'Officiis cum rerum ut earum dolorum quo qui. Fuga aperiam commodi nam magni numquam molestiae. Quasi sit iste repellendus in et id recusandae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(323, '2021-05-19 00:40:56', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 82.00, NULL, 'paid', 'Qui ea quidem consequuntur et. Omnis voluptas quas similique omnis voluptas nisi quasi. Consequatur quis laboriosam autem incidunt. Dolorem dolor voluptas rerum porro voluptatem deleniti alias.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(324, '2021-07-08 23:51:07', '2021-12-31 00:49:55', NULL, NULL, '', 1, NULL, 0.00, 48.00, NULL, 'paid', 'Ratione repudiandae quibusdam nulla voluptatibus sed voluptas soluta. Quidem sunt esse quod vero deleniti et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, '', NULL, '2021-12-31 00:49:55', '', NULL, 0.00),
(325, '2021-12-19 02:13:32', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 43.00, NULL, 'paid', 'Hic tenetur aliquid inventore odio voluptas dolor ex. Labore deleniti unde modi sint. Beatae velit id rerum aut rerum placeat. Laboriosam impedit temporibus quae velit aliquam ad sunt expedita.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(326, '2021-03-10 16:12:38', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 83.00, NULL, 'paid', 'Sed et vitae autem animi eaque excepturi. Nobis fuga accusantium quos aut sequi. Molestias a quia rem. Ut quis veritatis illo omnis amet recusandae quidem magni.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(327, '2021-10-06 06:51:59', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 34.00, NULL, 'paid', 'Eius consectetur autem et eos. Dicta voluptates quisquam aut hic officia. Aut assumenda deleniti occaecati vel commodi ratione eveniet. Ducimus dicta consectetur natus sequi deserunt id ut earum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(328, '2021-12-04 10:39:58', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 33.00, NULL, 'paid', 'Provident libero deserunt error saepe commodi aut quod. Quisquam dolorum omnis nobis provident amet esse et. Ut quia et delectus voluptatem et debitis beatae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(329, '2021-11-08 11:53:33', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 77.00, NULL, 'paid', 'Voluptas aspernatur eos et tenetur sapiente et. Sed sint reiciendis totam velit tempora mollitia. Ratione quae delectus qui quae sit quam asperiores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(330, '2021-08-31 23:06:17', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 66.00, NULL, 'paid', 'Fugiat ut voluptatem aut consequatur. Ipsum aut exercitationem rerum veniam consequuntur atque. Nulla voluptas vitae maiores quia ratione placeat. Commodi et tempore architecto magnam iusto.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(331, '2021-01-07 08:33:11', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 41.00, NULL, 'paid', 'Nulla ex in animi cumque ullam est. Delectus accusamus ad quae sint. Quisquam qui ipsum corporis repellat quia enim laborum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(332, '2021-04-03 13:27:39', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 64.00, NULL, 'paid', 'Est repellendus iusto a inventore id magni. Est cumque quis suscipit nemo ipsum. Distinctio ea quia pariatur quisquam id.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(333, '2021-10-02 21:52:37', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 53.00, NULL, 'paid', 'Perferendis culpa ut dolores. Laborum ut est reprehenderit et laudantium ea aliquid. In qui ea minus eveniet aut et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(334, '2021-06-23 01:06:21', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 85.00, NULL, 'paid', 'Qui eveniet aut voluptatem aut. Laudantium repellat rerum qui temporibus quisquam veniam. Rerum ratione porro velit consequatur nostrum temporibus quasi. Temporibus vero alias atque minus unde eum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(335, '2021-06-13 04:38:17', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 94.00, NULL, 'paid', 'Dolorum inventore totam et eos dolores consequatur. Velit id nesciunt deserunt delectus laborum soluta qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(336, '2021-03-30 22:42:48', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 74.00, NULL, 'paid', 'Quod debitis officiis eligendi quas enim quo quo. Odio voluptas facere aliquid molestias et quo harum. Quia aut libero facere. Quisquam esse facere possimus a ut quo occaecati.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(337, '2021-11-14 22:34:22', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 52.00, NULL, 'paid', 'Magnam aut possimus dolorum dicta non qui laudantium. Et fuga laudantium quidem ipsam. Eos recusandae voluptatem ipsam sed a quo veritatis id. Ratione quidem a voluptate vel harum excepturi porro.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(338, '2021-04-17 10:53:05', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 34.00, NULL, 'paid', 'Rerum aut reiciendis repellat omnis. Et aut quidem quae maxime est autem. Error tempora voluptates eos est accusantium temporibus labore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(339, '2021-03-20 06:14:27', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 78.00, NULL, 'paid', 'Eos quod tenetur rerum consequatur porro libero. Saepe molestiae illo quam quidem. Libero voluptates ut aut enim expedita enim sit. Voluptatum qui incidunt impedit vero minus odio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(340, '2021-03-03 01:57:23', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 77.00, NULL, 'paid', 'Aspernatur placeat sed consequatur nobis temporibus enim ut. Quae quisquam iure quia aliquid. Fugit quo velit animi deleniti repellendus sequi quis. Velit culpa eligendi est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(341, '2021-05-27 03:09:30', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 39.00, NULL, 'paid', 'Incidunt omnis fugiat accusantium sit ut corrupti. Voluptates assumenda mollitia corporis natus fugiat placeat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(342, '2021-10-25 12:08:24', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 62.00, NULL, 'paid', 'Aut corporis rerum debitis quia corporis dignissimos saepe omnis. Rem impedit commodi provident sit quam dolores quis. Sint dolorem quia architecto cupiditate.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(343, '2021-12-02 06:02:36', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 45.00, NULL, 'paid', 'Consectetur sed dolorem et enim. Exercitationem eos illum est eum quisquam rerum. Vel et nostrum asperiores debitis laudantium ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(344, '2021-10-10 10:25:43', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 37.00, NULL, 'paid', 'Et omnis error veniam reiciendis eius. Ullam voluptatem qui qui est est dolorem aut. Vel veritatis excepturi omnis et libero.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(345, '2021-07-12 14:50:04', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 52.00, NULL, 'paid', 'Eligendi perspiciatis et magni et iste. Aut dolorum asperiores id. Harum est ut a tenetur quo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(346, '2021-04-09 16:58:35', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 43.00, NULL, 'paid', 'Aut modi sit asperiores omnis id aut et harum. Omnis in ratione alias. Occaecati amet vero ducimus ut consectetur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(347, '2021-07-06 14:39:27', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 31.00, NULL, 'paid', 'Corporis sit rerum sed. Beatae aut esse quis quibusdam optio laudantium quae. Aspernatur quae voluptate nisi totam. Fugiat omnis voluptatem porro non rem error quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(348, '2021-02-21 12:02:53', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 35.00, NULL, 'paid', 'Cumque architecto maiores vitae sint culpa. Facere eius laborum quis maxime omnis. Dolores quam placeat porro.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(349, '2021-03-30 16:48:15', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 53.00, NULL, 'paid', 'Nihil consequatur et pariatur deleniti sit omnis. Et corrupti sapiente veniam inventore iste. Nulla earum est et sunt totam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(350, '2021-04-25 06:14:06', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 87.00, NULL, 'paid', 'Ut praesentium beatae eligendi autem iusto. Illum corrupti quia est quia quia. Amet rerum commodi quo dolorem. Similique unde eaque voluptas consequatur perferendis est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(351, '2021-01-26 11:51:11', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 86.00, NULL, 'paid', 'Dolor nisi quis dolor excepturi eaque beatae aut harum. Nihil nam explicabo rem ab numquam magni quis dolores. Quibusdam officiis est rem nam earum cumque. Commodi nulla ea voluptas animi laboriosam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 16, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(352, '2021-07-26 13:04:38', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 35.00, NULL, 'paid', 'Nisi fugit sint beatae corporis soluta incidunt et. Et debitis molestiae quibusdam quibusdam. Aut molestias dignissimos autem omnis ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(353, '2021-07-27 10:41:06', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 85.00, NULL, 'paid', 'Dolores eos eveniet rem. Aut omnis dolorem eligendi molestiae sunt est aut. Ad illo ipsum vitae eum velit ex dolor.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(354, '2021-05-23 16:31:23', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 68.00, NULL, 'paid', 'Asperiores enim error quo aut. Est totam et sint iste ad. Qui nihil quia odio quia aspernatur omnis. Sint earum ut ad veniam qui et ullam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(355, '2021-09-10 21:42:46', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 83.00, NULL, 'paid', 'Eligendi qui dolorum quo nostrum. Qui veniam provident debitis natus voluptates mollitia. Excepturi occaecati reprehenderit et ex aliquid perferendis. Qui est aut natus soluta porro recusandae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(356, '2021-03-16 17:22:25', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 93.00, NULL, 'paid', 'Accusamus optio deserunt qui temporibus quisquam ea. Maiores vero est quas dolor itaque. Adipisci voluptatem possimus itaque vel doloribus fugit tenetur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(357, '2021-12-04 00:16:35', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 81.00, NULL, 'paid', 'Numquam id et eligendi exercitationem. Non quis voluptatem est quo minima repellendus aut recusandae. Voluptatem totam accusantium vero reiciendis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(358, '2021-08-10 21:54:22', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 88.00, NULL, 'paid', 'Aut cumque eos excepturi dolores. Provident possimus sit culpa est mollitia qui ducimus. Aut praesentium voluptatem autem ipsam repudiandae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(359, '2021-11-10 03:15:16', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 95.00, NULL, 'paid', 'Et esse et tenetur voluptas neque molestiae quia. Ex maiores aliquid possimus nobis. Maiores ut in voluptatem blanditiis veniam rerum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(360, '2021-03-19 08:54:31', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 78.00, NULL, 'paid', 'Sit corrupti nihil sequi reprehenderit perspiciatis enim alias consequatur. Suscipit delectus maxime qui eum. Sunt asperiores iure quod voluptatem neque ipsam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(361, '2021-09-16 09:24:26', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 40.00, NULL, 'paid', 'Inventore totam et ipsa similique quae corrupti. Iusto dolore itaque blanditiis sapiente ratione provident. Quia repudiandae natus et itaque et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(362, '2021-03-27 11:35:43', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 46.00, NULL, 'paid', 'Error dolores suscipit occaecati est voluptates totam alias. Cumque dolores nulla commodi aut. Aut aut et cupiditate. Iure aliquid non praesentium eos sed et eveniet velit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(363, '2021-03-09 23:18:10', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 77.00, NULL, 'paid', 'Quia repellat non dolorum minima voluptatem. Ipsam deserunt ut omnis minus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(364, '2021-08-02 05:47:51', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 44.00, NULL, 'paid', 'Aliquam eligendi sapiente doloremque debitis quia. Et incidunt fuga tempore reprehenderit vel. Illo laboriosam omnis rerum quis excepturi corrupti officiis. Blanditiis repellat qui modi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(365, '2021-01-30 15:50:29', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 42.00, NULL, 'paid', 'Molestiae quas hic quis consectetur doloribus quidem. Qui maiores explicabo reprehenderit aliquam rerum officiis. Dicta asperiores vero in debitis quia. Error rerum hic rerum saepe.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(366, '2021-05-26 14:34:06', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 98.00, NULL, 'paid', 'Non consequatur quasi et perferendis nisi maxime. Unde quia consequatur nisi quos. Maiores accusamus beatae dolores minima pariatur perferendis. In qui et voluptatem rerum odio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(367, '2021-12-05 01:10:43', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 87.00, NULL, 'paid', 'Ut voluptates qui ut eum ullam doloribus. Incidunt ducimus sint enim cumque ut beatae. Maiores unde aut ab excepturi est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(368, '2021-06-05 15:03:44', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 50.00, NULL, 'paid', 'Quo a voluptas recusandae et sint ab. Et ut autem beatae minus rem voluptatem. Atque facere enim et aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(369, '2021-10-21 00:24:19', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 72.00, NULL, 'paid', 'Aliquid ad id iure doloribus dolor saepe. Debitis excepturi harum incidunt nesciunt voluptatem. Sint dolor recusandae accusantium nostrum qui natus. Ut soluta facilis illo voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(370, '2021-05-09 22:23:18', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 50.00, NULL, 'paid', 'Amet quis veniam consectetur distinctio porro distinctio ea voluptatibus. Aut nisi accusamus tenetur illo rerum. Deleniti consequatur iusto tenetur est qui aut maiores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(371, '2021-06-08 23:31:08', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 92.00, NULL, 'paid', 'Est enim voluptatum placeat id enim et sit. Qui et illo dicta consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(372, '2021-08-12 19:51:25', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 35.00, NULL, 'paid', 'Et autem autem accusamus. Enim quam est et atque esse illo iste. Sit eligendi qui veniam officiis commodi explicabo omnis ipsam. Distinctio itaque fuga eius officia quia laboriosam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(373, '2021-03-19 14:56:55', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 33.00, NULL, 'paid', 'Iure veritatis est iste impedit enim sapiente voluptates quia. Neque aliquid ipsam id voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(374, '2021-05-02 17:49:52', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 83.00, NULL, 'paid', 'Quibusdam amet accusamus officia. Iste qui aspernatur et explicabo nostrum. Voluptas natus rem et et. Et doloribus iusto similique sunt inventore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(375, '2021-06-22 17:14:04', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 94.00, NULL, 'paid', 'Sequi cum rerum cumque ut voluptatem in deserunt. Veniam magni aut suscipit molestiae molestiae consequatur. Perspiciatis quis tempore modi corporis porro laborum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(376, '2021-06-11 06:39:33', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 42.00, NULL, 'paid', 'Ut occaecati occaecati modi et deserunt. Sit repellat deleniti quia nesciunt. Dignissimos aliquam explicabo sapiente sapiente facilis laborum temporibus. Explicabo ex beatae saepe eos asperiores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(377, '2021-08-05 16:24:36', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 88.00, NULL, 'paid', 'Architecto et veritatis qui. Molestiae assumenda voluptas in consequatur autem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(378, '2021-02-24 00:10:09', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 52.00, NULL, 'paid', 'Non sint reiciendis quis temporibus et. Ratione voluptas distinctio qui et. Blanditiis minus ipsa quam eos ut quia aspernatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(379, '2021-08-12 03:00:17', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 71.00, NULL, 'paid', 'Sapiente unde voluptas repellendus ullam optio veniam et. Dignissimos quas id provident porro maxime. Earum aut qui eius iusto nobis quasi. Non commodi molestias soluta qui ut autem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(380, '2021-07-13 03:01:10', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 35.00, NULL, 'paid', 'Saepe autem beatae minus ab dicta. Exercitationem officiis et quis commodi molestiae vero exercitationem. Eligendi quos saepe fugit culpa hic quam. Repellendus cupiditate qui in voluptatem nulla.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(381, '2021-01-04 09:12:37', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 59.00, NULL, 'paid', 'Eius atque earum quia. Minima accusantium dolorum aperiam minus est et delectus sit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(382, '2021-02-02 20:18:33', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 57.00, NULL, 'paid', 'Blanditiis ea fugit blanditiis dolor omnis. Sunt assumenda aperiam omnis non minima nemo exercitationem. Debitis perspiciatis magnam magni aliquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(383, '2021-08-11 14:39:34', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 43.00, NULL, 'paid', 'Aut aut voluptatibus quos quisquam. Est aut ut sunt impedit aut ut. Molestiae impedit rerum assumenda voluptatem earum commodi enim.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(384, '2021-04-03 05:02:04', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 78.00, NULL, 'paid', 'Sequi voluptatem commodi nihil deserunt. Quo omnis eos provident et. Nobis sint dolor sit reprehenderit consequatur officiis possimus. Nihil quod architecto illum accusantium est necessitatibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(385, '2021-08-30 01:27:12', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 39.00, NULL, 'paid', 'Voluptatibus distinctio ut ullam cum. Ex explicabo consequuntur voluptas fugiat eos. Dolorem in ipsam voluptas et rerum laborum ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(386, '2021-12-11 15:53:35', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 84.00, NULL, 'paid', 'Iusto commodi voluptatem aut. Nemo ut dolor ut voluptatem. Est assumenda ratione et corrupti.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(387, '2021-02-13 06:28:14', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 88.00, NULL, 'paid', 'Labore ab ullam cupiditate velit voluptatem vitae. Aliquid praesentium deserunt earum deleniti quasi. Modi blanditiis dolores dolorum sapiente enim. Nobis velit quo asperiores ut reiciendis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(388, '2021-06-27 16:25:50', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 33.00, NULL, 'paid', 'Culpa voluptates quibusdam maxime. Non debitis eius laboriosam in cum ab est. Qui qui numquam sit. Qui qui et qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(389, '2021-07-27 13:57:39', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 37.00, NULL, 'paid', 'Fugit ratione aut debitis harum in. Laudantium quia sint ut itaque optio placeat necessitatibus. Quod et odio aut. Ut nihil facere qui nisi ut molestiae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(390, '2021-10-30 00:07:18', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 65.00, NULL, 'paid', 'Ab qui totam maiores quas consectetur. Et facilis quis voluptas et aut. Labore dolorum nostrum et quos omnis tenetur eum debitis. Harum modi reiciendis blanditiis dicta molestiae ut praesentium.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(391, '2021-02-08 16:25:27', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 43.00, NULL, 'paid', 'Est ducimus rerum cumque ut. Corporis et possimus necessitatibus recusandae minus. Fugit aut sunt dolore dolor.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(392, '2021-04-20 19:09:33', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 78.00, NULL, 'paid', 'Nihil vero sunt alias eos error. Tempora quia officiis corporis maiores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(393, '2021-04-19 14:45:51', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 65.00, NULL, 'paid', 'In ut quas itaque velit commodi fugiat et. Odio quae eaque sint voluptatum et labore natus repudiandae. Dignissimos temporibus tempora non eius magnam molestiae soluta.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00);
INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `address_id`, `client_id`, `client_name`, `restorant_id`, `driver_id`, `delivery_price`, `order_price`, `payment_method`, `payment_status`, `comment`, `lat`, `lng`, `srtipe_payment_id`, `fee`, `fee_value`, `static_fee`, `delivery_method`, `delivery_pickup_interval`, `vatvalue`, `payment_processor_fee`, `time_to_prepare`, `table_id`, `phone`, `whatsapp_address`, `payment_link`, `employee_id`, `deleted_at`, `md`, `coupon`, `discount`) VALUES
(394, '2021-09-12 16:10:39', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 84.00, NULL, 'paid', 'Qui molestiae ratione unde rerum ad est corrupti. Nisi at nihil quia id veritatis est. Vitae blanditiis eos voluptatem illo a.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(395, '2021-06-11 03:02:35', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 45.00, NULL, 'paid', 'Similique qui temporibus sit qui. Et sint consequuntur sed velit natus expedita. Et assumenda qui sit velit voluptas quia nesciunt tempora. Enim officia magni aut porro delectus autem praesentium.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(396, '2021-02-02 12:40:49', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 54.00, NULL, 'paid', 'Molestiae qui incidunt minus doloribus quae est sequi. Ipsam omnis et provident a corporis ad. Necessitatibus velit aliquam qui rem voluptate dolorem ut. Libero quia dolorem quaerat adipisci unde ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(397, '2021-09-30 16:50:14', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 55.00, NULL, 'paid', 'Quaerat hic harum eius voluptatem qui maxime rem. Mollitia omnis aut ut aut nulla ea voluptatem sed. Eligendi omnis et labore aliquid. Beatae quisquam rerum aut minus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(398, '2021-09-13 16:30:59', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 90.00, NULL, 'paid', 'Nobis perspiciatis qui est hic quia sint. Dolorum est qui neque est et voluptas odit velit. Voluptatem autem quia sed corrupti.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(399, '2021-08-17 01:36:14', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 93.00, NULL, 'paid', 'Alias ex enim maxime numquam rerum aut et. Sint amet occaecati natus recusandae dolores tempore voluptates.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(400, '2021-05-10 22:42:20', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 82.00, NULL, 'paid', 'Sit assumenda dolor ab quibusdam aspernatur iste nobis. Officiis dolorem omnis dolor voluptatibus et. Officia mollitia nihil soluta dolores quas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(401, '2021-06-06 13:02:13', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 64.00, NULL, 'paid', 'Consequatur molestias qui voluptatem dignissimos cum. Eos quidem eum molestiae. Atque voluptatem ipsum ducimus qui impedit qui harum. Modi et consectetur aut labore id rerum est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(402, '2021-06-14 06:34:04', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 34.00, NULL, 'paid', 'Veritatis possimus voluptatem quisquam ducimus. Ea molestias voluptates eos iure dolor reprehenderit voluptatem. Rerum inventore eius doloremque. Sit exercitationem earum maxime ut deserunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(403, '2021-07-24 10:49:48', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 64.00, NULL, 'paid', 'Dolore dignissimos qui dolorem officia. Sed repellat quia quia minus. Ipsam alias eum fugit dicta maiores iusto repellendus aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(404, '2021-04-19 16:35:14', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 56.00, NULL, 'paid', 'Recusandae dolores corporis consequatur voluptas possimus cumque at. Maiores eaque vero perspiciatis fugiat vitae ducimus. Quia quidem est reprehenderit. Est accusantium molestias iure dolores optio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(405, '2021-07-13 09:58:14', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 93.00, NULL, 'paid', 'Excepturi ut suscipit commodi beatae et numquam eos. Dolores omnis ullam quos cumque in. Quo voluptatibus voluptas autem nostrum possimus hic.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(406, '2021-09-21 03:04:07', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 67.00, NULL, 'paid', 'Ut rerum iusto repudiandae vero. Voluptates inventore facere voluptatem doloremque eligendi sint nulla. Neque asperiores rerum iste. Quam voluptates alias voluptas officia est qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(407, '2021-05-29 06:34:47', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 77.00, NULL, 'paid', 'Doloribus quas voluptatem aut reprehenderit inventore qui pariatur. Quisquam porro dolores omnis magni reiciendis adipisci dolores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(408, '2021-05-10 04:56:26', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 30.00, NULL, 'paid', 'Repellendus sapiente ut et ut. Qui sunt laborum ipsum. Consequatur velit consequatur voluptate repudiandae eum vitae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(409, '2021-01-18 10:44:11', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 96.00, NULL, 'paid', 'Enim eos accusantium ea sint. Nobis dolorem iusto quo expedita molestiae. Id blanditiis harum deleniti pariatur aperiam sed aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(410, '2021-07-20 05:48:18', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 85.00, NULL, 'paid', 'Velit ex facere cumque id. Fugiat eveniet dolores qui eos in. Qui odio qui officiis ducimus et facilis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(411, '2021-05-22 09:45:47', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 66.00, NULL, 'paid', 'Necessitatibus accusamus et facere et ea reprehenderit provident. Et iusto voluptatem doloribus officia. Ex possimus eligendi consequatur dolore esse. Debitis et pariatur corporis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(412, '2021-03-27 15:51:15', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 37.00, NULL, 'paid', 'Sunt ex laudantium iusto iure ut. Eveniet accusantium odit corporis voluptatum est laudantium sint explicabo. Totam vitae dolorem aut rerum expedita omnis quasi. Animi ipsam consequatur in facilis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(413, '2021-03-01 12:15:45', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 41.00, NULL, 'paid', 'Qui aliquam quis consequatur voluptas eum. Cum ipsum omnis delectus voluptas asperiores neque fugiat. In vel ut omnis. In eligendi nemo est ipsam quia minus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(414, '2021-09-20 18:14:29', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 91.00, NULL, 'paid', 'Est sequi sapiente eaque. Velit sunt ea illum fugit rerum. Debitis dolorem nobis qui veritatis. Aliquid adipisci suscipit sed. Cupiditate aut ut dolores sapiente dignissimos qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 16, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(415, '2021-02-23 11:46:59', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 43.00, NULL, 'paid', 'Consequuntur sit quia placeat sit sint dolor est. Repudiandae nesciunt veritatis quod consequatur. Facilis voluptatem commodi quae est eaque vitae harum aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(416, '2021-09-17 11:38:04', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 35.00, NULL, 'paid', 'Aspernatur voluptatum perferendis qui voluptas. Omnis tempora mollitia dolor minus nesciunt. Eum cum velit placeat dolor dicta deleniti aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(417, '2021-12-04 21:20:04', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 35.00, NULL, 'paid', 'Omnis natus libero dolores nulla facere. Nostrum in qui et. Soluta molestiae dolorum eum enim. Fugiat et et nemo quidem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(418, '2021-09-22 02:02:49', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 40.00, NULL, 'paid', 'Id odit impedit aut ut. Distinctio cum expedita quia molestiae ut error dolor et. Sunt deserunt vero quasi eius ducimus nisi ad et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(419, '2021-07-24 10:27:32', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 73.00, NULL, 'paid', 'Accusamus sunt soluta omnis quam ut est harum. Eos laudantium tempora magni libero eum optio magni autem. Fugiat et distinctio repellendus aut est. Sequi veritatis qui praesentium rem eum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(420, '2021-12-15 19:01:23', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 46.00, NULL, 'paid', 'Ut harum ut deleniti doloremque ut tempore. Commodi quo omnis aut rerum eaque. Et accusamus porro illum. Numquam optio est corrupti. Itaque libero ex neque qui a voluptates qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(421, '2021-07-16 10:04:47', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 61.00, NULL, 'paid', 'Sed dicta omnis nihil. Qui explicabo et voluptatem quis iste. Consectetur laborum sint consequatur unde dignissimos et. Quo corporis eaque commodi omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 42, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(422, '2021-06-19 19:52:38', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 73.00, NULL, 'paid', 'Sit laudantium ut pariatur qui praesentium voluptatem voluptas rerum. Vitae adipisci eos velit similique saepe rerum. Totam quaerat sequi hic tempora fuga esse.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(423, '2021-01-07 09:37:53', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 39.00, NULL, 'paid', 'Ut dignissimos autem quas dolorum. Libero aspernatur vel commodi omnis distinctio eos nobis dolor.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(424, '2021-09-19 01:13:17', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 53.00, NULL, 'paid', 'Quia labore et est. Voluptatem ut et cumque incidunt ducimus. Quia molestiae odio sed. Ut laboriosam ea nam harum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(425, '2021-04-13 01:59:27', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 41.00, NULL, 'paid', 'Aut sunt quibusdam sed quo quaerat eius cum. Aut ipsam dolor quod et nihil et eum. Est veniam maiores quod possimus voluptatem qui praesentium. Ad omnis et ut. Ipsam aut sint exercitationem et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(426, '2021-11-29 15:31:50', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 69.00, NULL, 'paid', 'Consequatur perspiciatis quas cum temporibus. Quis occaecati sunt sed et. Ipsa quidem aut deserunt non atque asperiores vel. Maxime consequatur rerum consequatur iure saepe.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 42, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(427, '2021-11-10 00:44:44', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 75.00, NULL, 'paid', 'Et autem sit laudantium itaque quia dicta temporibus. Voluptas dicta illum et sed quo quisquam et. Impedit iure non culpa reiciendis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(428, '2021-09-30 10:22:55', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 89.00, NULL, 'paid', 'Delectus eligendi earum eius repellat. Autem nemo soluta perspiciatis dolorem. Rerum sed dolores occaecati debitis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(429, '2021-06-25 05:45:34', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 73.00, NULL, 'paid', 'Quidem alias vel aut repellendus voluptatem harum repellat nam. Occaecati praesentium animi quo aut perferendis. Dignissimos vero dicta sit. Ipsa cumque possimus inventore voluptatibus maiores qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(430, '2021-09-30 13:28:51', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 87.00, NULL, 'paid', 'Incidunt omnis ipsam ullam dolorem. Quo placeat omnis corrupti. Labore molestiae architecto non et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(431, '2021-01-30 14:52:27', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 37.00, NULL, 'paid', 'Delectus fuga non similique error. Dolor ut quia eum distinctio. Molestias atque et voluptas et optio quia cum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(432, '2021-12-23 00:08:42', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 50.00, NULL, 'paid', 'Est expedita quos ut nihil provident nihil hic. Esse eveniet distinctio molestiae odit omnis eum qui. Enim voluptatem quo maiores est inventore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 42, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(433, '2021-07-02 14:23:37', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 59.00, NULL, 'paid', 'Aut harum laudantium adipisci eaque vitae sunt accusantium. Quam culpa esse illum cum nam consequatur numquam molestiae. Harum voluptatum iure error illo nesciunt voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(434, '2021-03-26 08:17:04', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 96.00, NULL, 'paid', 'Corporis repellat veniam facere et iusto et. Praesentium alias consequatur et laboriosam nemo. Accusamus accusantium distinctio quia et vitae nam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(435, '2021-09-24 13:41:01', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 100.00, NULL, 'paid', 'Occaecati cum quas qui cupiditate. At et aut est reprehenderit voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(436, '2021-12-13 14:39:42', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 48.00, NULL, 'paid', 'Nisi vitae praesentium consequuntur eaque veniam ipsa natus ut. Ut at voluptas est reprehenderit autem ex. Omnis omnis animi voluptatem et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(437, '2021-03-21 02:02:57', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 69.00, NULL, 'paid', 'Id dolorem voluptatem est dolores. Praesentium sit veniam at voluptates. Eum dolores sint cum dolor.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(438, '2021-06-19 15:03:49', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 44.00, NULL, 'paid', 'Voluptates sint sit ipsa ex odit ipsam ut. Molestiae similique numquam saepe culpa perferendis explicabo sed. A possimus nam doloribus quam cum omnis. Atque aut rerum architecto quis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(439, '2021-02-17 03:08:28', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 44.00, NULL, 'paid', 'Laborum voluptatum aut facere vitae. Eligendi adipisci aut tempora fugiat nam libero qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(440, '2021-10-22 05:43:05', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 97.00, NULL, 'paid', 'Sequi provident vero inventore ea rerum accusamus. Molestias quisquam quo alias. Dignissimos nemo ducimus esse cum nihil.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(441, '2021-04-02 03:34:47', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 42.00, NULL, 'paid', 'Ab facilis non repudiandae vero quibusdam inventore. Rerum voluptatem et doloribus delectus minima ea. Minus odio cupiditate culpa provident libero et. Debitis velit fugit vel accusamus impedit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(442, '2021-11-05 11:39:54', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 47.00, NULL, 'paid', 'Iusto earum aut ullam et molestiae molestiae ea. Consequuntur alias est sapiente fuga. Vitae qui impedit laudantium odit non tempora aut. Non quibusdam ut quia nisi doloremque magni vel.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(443, '2021-03-15 17:02:10', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 51.00, NULL, 'paid', 'Sed voluptate provident et minima architecto doloribus provident. Doloribus quia maxime debitis cum eos neque qui. Qui molestiae distinctio et quia qui. Voluptate fuga ut minus voluptate.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(444, '2021-01-09 06:45:24', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 44.00, NULL, 'paid', 'Vero ut qui quam aspernatur reiciendis. Ducimus voluptatem ut qui praesentium sequi. Quae sunt itaque deserunt quis animi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(445, '2021-08-13 21:33:16', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 63.00, NULL, 'paid', 'Fuga et impedit aspernatur ducimus maxime nihil odit omnis. Sunt laboriosam debitis ut enim sint. Illo veritatis beatae ea et alias. Nesciunt esse voluptas culpa voluptas sit non.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(446, '2021-06-02 09:30:57', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 52.00, NULL, 'paid', 'Ratione dolorem beatae laudantium tempore. Architecto beatae doloremque et. Earum non aut dolores modi harum odit praesentium. Repudiandae blanditiis eveniet harum quia delectus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(447, '2021-02-12 04:00:26', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 76.00, NULL, 'paid', 'Sequi eos ratione illum eveniet laudantium. Quidem fuga qui quo at sit voluptatibus quod. Animi nesciunt inventore nemo impedit ut nostrum in.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(448, '2021-08-09 21:48:45', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 39.00, NULL, 'paid', 'Amet qui adipisci placeat itaque vel. Dolorum aut fuga iusto fuga perspiciatis porro aut. Magni nobis nihil aperiam rerum excepturi sed vel vero. Illum et magni ratione.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(449, '2021-10-14 16:16:23', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 37.00, NULL, 'paid', 'Deleniti non et autem fugit. Sed in amet aut vel accusamus voluptate ad. Tempora necessitatibus fugiat dolorum voluptate perspiciatis amet reprehenderit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(450, '2021-09-07 08:56:05', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 100.00, NULL, 'paid', 'Consequatur libero qui voluptate. Qui et aut veniam ipsum repellendus accusantium et. Voluptatum ut beatae quia error voluptatem et saepe.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(451, '2021-09-08 02:39:30', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 88.00, NULL, 'paid', 'Inventore autem aut excepturi et. Nobis sequi sint non reiciendis et ea et harum. Aspernatur natus ut error ut asperiores autem eius. Aut odit aliquam enim. Qui sunt qui saepe aut quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(452, '2021-07-13 22:20:51', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 39.00, NULL, 'paid', 'Voluptatem cupiditate consequatur in blanditiis et distinctio pariatur. Adipisci aliquam necessitatibus suscipit voluptas beatae ipsam architecto.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(453, '2021-04-08 20:07:05', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 89.00, NULL, 'paid', 'Occaecati quia sit itaque aut rerum. Sint suscipit eum maiores commodi. Molestiae dolorem quod est sint.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(454, '2021-01-19 03:23:45', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 32.00, NULL, 'paid', 'Ea in et dignissimos laborum maiores. Qui error rem architecto eveniet. Vero ad debitis blanditiis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(455, '2021-11-08 17:12:42', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 53.00, NULL, 'paid', 'Dolorum fugiat sint dolorum eum odio. Quaerat consectetur et non error sunt et. Tenetur tenetur temporibus dolorem repellat quos minima. Dolores omnis ipsam nesciunt ipsum architecto quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(456, '2021-12-18 13:23:01', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 92.00, NULL, 'paid', 'Autem earum cupiditate id qui ut et. Eos quo et error tenetur qui molestiae. Et dolores quisquam adipisci. Vitae ipsam rerum quo et modi maiores aut. Qui quis ut vitae est magni.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(457, '2021-09-25 09:29:06', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 46.00, NULL, 'paid', 'Nihil molestias quia laboriosam illum quidem. Aspernatur nisi minima vel placeat placeat nobis voluptas. Velit corrupti consequatur necessitatibus quas consequatur quam. Quo voluptas placeat ad quo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(458, '2021-09-12 23:57:51', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 76.00, NULL, 'paid', 'Dignissimos quia tempore et recusandae. Qui iusto quis occaecati aut quia. Est tempore blanditiis aliquid eaque ea eum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(459, '2021-02-09 20:19:37', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 87.00, NULL, 'paid', 'Dolorum eos iusto voluptate accusantium occaecati ut ut. Nulla in et aliquam aut. Sint velit vel quod iste est. Alias occaecati accusamus molestias iste quia qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(460, '2021-01-05 04:16:45', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 72.00, NULL, 'paid', 'Nulla assumenda laboriosam laudantium. Eaque temporibus laborum est omnis. In molestiae voluptates cumque labore ipsum assumenda. Dolores perferendis molestias dolores modi libero voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(461, '2021-12-20 20:12:58', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 30.00, NULL, 'paid', 'Labore quibusdam ducimus quasi recusandae sit. Cum accusamus optio suscipit fugit. Cum quibusdam nemo et et natus consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(462, '2021-09-13 18:37:41', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 71.00, NULL, 'paid', 'Natus delectus facere accusamus non vero. Placeat autem minima distinctio quia officia aliquam soluta. Nam placeat consequatur fugiat ea fugit officia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(463, '2021-09-14 18:20:31', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 30.00, NULL, 'paid', 'Dolor qui maiores aut modi saepe modi. Neque voluptas dicta excepturi aliquid rerum aut dolorum. Aut nam et expedita sed quia qui neque praesentium.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(464, '2021-06-10 19:40:53', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 62.00, NULL, 'paid', 'Velit mollitia quod ratione ea qui voluptatem suscipit. Enim voluptatum in repellendus. Nesciunt sit dignissimos quo perspiciatis et. Fugit odit voluptatem qui error molestiae dolores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(465, '2021-06-06 02:30:31', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 51.00, NULL, 'paid', 'Accusantium nisi esse omnis et. Dolorem dolor dolorem ad ut officia consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(466, '2021-08-04 08:24:38', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 100.00, NULL, 'paid', 'Et veritatis illo expedita ab corporis. Magni molestiae voluptas ea consequuntur ab excepturi. Autem molestiae molestiae id ut expedita inventore assumenda.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(467, '2021-12-22 01:18:14', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 91.00, NULL, 'paid', 'Hic rerum ea aperiam consectetur. Laudantium laudantium et corrupti eum error. Sed aspernatur reprehenderit nesciunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(468, '2021-10-18 23:09:55', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 61.00, NULL, 'paid', 'Ratione quaerat facere est similique vel. Dolor enim omnis nam qui ipsa consequuntur. Aut pariatur veritatis blanditiis error quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(469, '2021-03-11 19:53:21', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 42.00, NULL, 'paid', 'Temporibus et qui mollitia et praesentium voluptas et omnis. Rem velit dolores aut unde sit corrupti. Voluptates debitis expedita veritatis fugit reiciendis quibusdam quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(470, '2021-08-21 10:20:49', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 66.00, NULL, 'paid', 'Eum enim et culpa voluptatem itaque ut voluptatem. Aut eveniet quaerat ducimus excepturi ex nesciunt nihil. Et nesciunt est officia ipsa ea in.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(471, '2021-03-26 13:28:16', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 62.00, NULL, 'paid', 'Eos molestiae velit at libero placeat est. Dolorem aut rerum architecto sequi in dolorem facere. Sit vero aspernatur asperiores culpa doloremque. Sequi rem doloremque reprehenderit et magni.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(472, '2021-11-19 10:25:54', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 86.00, NULL, 'paid', 'Voluptas quas in qui sint voluptatem et est. Voluptates possimus qui molestiae sed sit reprehenderit repellat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(473, '2021-09-19 09:23:51', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 41.00, NULL, 'paid', 'Odit sed consequuntur reprehenderit ut odio esse ea. Ut magni ex doloribus temporibus unde. In in consectetur eos officia voluptate.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(474, '2021-10-23 21:02:05', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 36.00, NULL, 'paid', 'Iure deleniti dolor quo. Nisi velit quo minima cum voluptatem sapiente. Blanditiis voluptates ab placeat iusto eum laboriosam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(475, '2021-10-15 15:47:26', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 31.00, NULL, 'paid', 'Natus omnis eligendi officiis ut reiciendis debitis harum fugit. Tenetur ad quia voluptate excepturi molestias et et. Rerum vitae quo cum odit numquam deserunt. Consequatur totam et accusamus neque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(476, '2021-04-18 21:24:58', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 56.00, NULL, 'paid', 'Sed recusandae molestiae incidunt id dolor eligendi. Ipsam mollitia tenetur incidunt. Ipsum sed dolorum nisi maxime.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(477, '2021-04-04 00:05:05', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 71.00, NULL, 'paid', 'Laboriosam reiciendis perspiciatis minus possimus rerum consequatur aut iusto. Libero non voluptatem quia similique et consequatur. Rerum eligendi ullam nihil optio optio tempora.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(478, '2021-10-10 20:01:32', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 83.00, NULL, 'paid', 'Maxime voluptatem aut pariatur illum temporibus. Aut sunt et eos laborum labore. Ut vel est vero molestiae expedita corporis. Nesciunt est enim quo autem quae voluptatum nulla.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(479, '2021-06-05 19:44:23', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 80.00, NULL, 'paid', 'Rerum officia aspernatur dolor quasi. Quis modi quis sunt error eligendi pariatur dolorem. Deleniti quidem deserunt inventore ducimus. Mollitia ducimus fuga eos odio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(480, '2021-07-10 12:36:26', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 56.00, NULL, 'paid', 'Architecto ea cum autem vitae possimus quis. Totam odio illum debitis molestias dicta. Et facilis natus in accusamus quo est. Vitae officia et nemo aut neque aperiam neque debitis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(481, '2020-12-31 19:54:29', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 87.00, NULL, 'paid', 'Est dicta corrupti rerum voluptate et. Maxime voluptate ut sunt saepe. Ad minima dolores dolor molestiae reiciendis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(482, '2021-06-28 15:39:26', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 30.00, NULL, 'paid', 'Ab fugiat est praesentium similique consequatur et ea. Voluptas numquam autem sit qui nesciunt quidem asperiores. Labore voluptatem eius eius ab inventore consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(483, '2021-10-19 05:04:16', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 94.00, NULL, 'paid', 'Aut explicabo a aut odio. Distinctio perferendis eaque sed consequatur natus deserunt. Voluptates repellendus dolores possimus nobis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(484, '2021-09-28 01:00:01', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 92.00, NULL, 'paid', 'Repellendus molestias consequuntur officia quo non harum. Aspernatur doloremque cumque quis mollitia ipsa. Ea aliquid eius dolor et. Rerum aut nobis eaque voluptatum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(485, '2021-02-20 03:00:55', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 61.00, NULL, 'paid', 'Dolores deleniti unde ut. Quod rerum velit consequuntur libero non possimus atque. Ipsam iste sapiente pariatur ut maiores odit ratione. Alias sed ut architecto excepturi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(486, '2021-09-29 03:17:17', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 36.00, NULL, 'paid', 'Eos sed magnam porro eum ut. Magnam rem qui sed explicabo. Sunt saepe error est suscipit aspernatur ipsam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(487, '2021-01-30 23:58:55', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 72.00, NULL, 'paid', 'Natus ut deleniti quo atque corrupti. Perspiciatis quis eos nulla dolore numquam. Veritatis ipsam ut in modi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(488, '2021-12-19 06:14:30', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 54.00, NULL, 'paid', 'Nihil aspernatur odit cupiditate maxime eum deserunt. Voluptatem fugit repellendus dolore voluptatibus rerum at culpa. Unde voluptatum ab assumenda quisquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 42, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(489, '2021-11-06 22:28:21', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 64.00, NULL, 'paid', 'Dolores quia occaecati et magni est possimus. Atque laborum delectus repudiandae deleniti dolorem quod est. Laboriosam quas quasi aut odit dolores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(490, '2021-05-27 04:18:31', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 70.00, NULL, 'paid', 'Id ipsam recusandae vero nihil voluptas alias ducimus. Reprehenderit qui eos sit dolorem eius ab. Recusandae libero ullam aut aliquid hic odit temporibus. Assumenda unde iure ut officia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(491, '2021-04-10 06:16:15', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 75.00, NULL, 'paid', 'Nostrum sunt minus velit architecto alias. Sit in impedit similique corporis ut laudantium. Facilis veniam veniam placeat quod.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(492, '2021-08-18 09:29:53', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 98.00, NULL, 'paid', 'Quasi sapiente culpa quia tempore. Ullam sed fugiat qui nihil dolor adipisci. Debitis nulla sapiente veritatis fugiat. Aperiam et commodi vel iure reprehenderit a. Et dolore aut quod quisquam qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(493, '2021-09-13 12:32:33', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 50.00, NULL, 'paid', 'Omnis cum magni molestiae maxime iste quo aut. Delectus quasi aut nihil autem laudantium itaque. Quos commodi ea voluptas voluptate voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 16, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(494, '2021-07-01 07:19:41', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 62.00, NULL, 'paid', 'Quidem vero veritatis alias maiores unde molestias. Aut voluptas ratione molestiae ex quia voluptas omnis occaecati. Consequatur velit in sunt aut nihil.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(495, '2021-05-28 08:11:42', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 81.00, NULL, 'paid', 'Velit dolorem qui rerum vero fuga. Ut saepe dolores non. Similique non natus tempora neque quam totam. Facilis inventore unde est et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(496, '2021-12-16 20:13:18', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 71.00, NULL, 'paid', 'Nihil sunt corporis qui. Accusamus earum totam nihil est ducimus sit. Libero cum veniam dolor deleniti at recusandae officia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(497, '2021-12-10 06:41:44', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 61.00, NULL, 'paid', 'Et expedita explicabo rerum cupiditate itaque tempore aut eos. Rerum animi dignissimos totam doloremque consequuntur nihil et. Nisi et asperiores omnis totam est ab quas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(498, '2021-04-03 23:20:37', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 84.00, NULL, 'paid', 'Corporis repudiandae enim ea voluptas debitis earum error magnam. Voluptatem autem quod non.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(499, '2021-04-22 15:31:02', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 78.00, NULL, 'paid', 'Sit corporis aliquid saepe ipsum libero mollitia ducimus. Excepturi nobis autem animi voluptatem ipsa qui accusantium. Necessitatibus vero eos est aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(500, '2021-06-15 07:46:26', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 32.00, NULL, 'paid', 'Nesciunt quo eos sapiente non aspernatur tempora praesentium. Doloribus architecto eum vel. Repellendus sint ea praesentium quas vel et cupiditate reprehenderit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(501, '2021-12-30 01:13:17', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 39.00, NULL, 'paid', 'Exercitationem totam voluptatibus id. Odio harum asperiores repellat voluptatem sunt quidem tenetur. Cupiditate vero iste aut voluptas aut est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(502, '2021-12-30 21:21:47', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 67.00, NULL, 'paid', 'Et ullam et sapiente et quisquam aut in libero. Incidunt accusamus similique est qui esse fugiat tempora sed. At vero iusto quidem consectetur delectus. Nam non eius iusto quos rerum voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(503, '2021-12-30 07:35:03', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 48.00, NULL, 'paid', 'Voluptatibus omnis qui qui qui voluptate nihil. Doloremque sit vitae sit. Provident et asperiores atque ullam ullam molestias incidunt. Quia dolorem eius doloribus totam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(504, '2021-12-30 14:20:12', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 51.00, NULL, 'paid', 'Id excepturi praesentium minus ea ut. Minus libero unde dolorem blanditiis est voluptatibus velit. Sed alias voluptatibus sed sunt ut rerum et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(505, '2021-12-30 13:00:11', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 82.00, NULL, 'paid', 'Illum autem dolorem reiciendis quia aut. Illo aliquam excepturi quasi beatae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(506, '2021-12-30 14:51:09', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 85.00, NULL, 'paid', 'Quas aliquid ea quis et minus. Reiciendis nobis et ut velit non deleniti. Amet voluptatum quia voluptatem velit ducimus quibusdam repudiandae. Tenetur est cum ea animi quo. Est minus nemo iure sed.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(507, '2021-12-30 16:06:03', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 60.00, NULL, 'paid', 'Eos ex tempore rerum non. Explicabo architecto ut qui sed atque ipsam earum. Ut cumque iste ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(508, '2021-12-29 22:49:18', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 35.00, NULL, 'paid', 'Repudiandae ipsam et ex quis. Dicta sit aut et dolor. Eaque fugiat iure voluptatem rerum est nam et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(509, '2021-12-30 03:05:06', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 49.00, NULL, 'paid', 'Et et omnis voluptas amet aspernatur commodi voluptatem. Nam sequi porro veritatis impedit. Quisquam alias esse ut sed blanditiis et quaerat. Error quia neque rerum facere occaecati.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(510, '2021-12-30 18:15:38', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 64.00, NULL, 'paid', 'Voluptatibus libero earum quod assumenda. Sint facere quidem ut. Occaecati autem ipsam accusantium dicta tenetur qui commodi placeat. Optio nam at neque minus vel impedit consequatur blanditiis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(511, '2021-12-30 05:44:34', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 45.00, NULL, 'paid', 'Sed laborum consequatur assumenda quod consequatur minima quo. Enim tempore omnis omnis facilis magni enim ab. Sequi quo quia sunt ex qui. Aspernatur assumenda voluptas quos explicabo non fugit sunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(512, '2021-12-30 05:24:46', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 38.00, NULL, 'paid', 'Dignissimos labore voluptatum aut recusandae libero. Ex vitae cumque natus est. Dignissimos similique aperiam dicta hic. Rerum aspernatur unde inventore laboriosam qui ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(513, '2021-12-30 08:10:24', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 91.00, NULL, 'paid', 'Tempore qui officia voluptatibus alias dolores. Consequatur ut alias sed commodi. Illum necessitatibus ut deserunt magni dolorem dolorem. Repellat sunt sunt quae et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(514, '2021-12-30 22:31:23', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 61.00, NULL, 'paid', 'Culpa expedita illo non consectetur minima velit saepe a. Odio voluptatem sit impedit ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 16, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(515, '2021-12-30 19:38:44', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 81.00, NULL, 'paid', 'Aut et cumque rerum necessitatibus. Assumenda nam laboriosam deleniti quasi deserunt. Qui sunt et suscipit nam minima. Itaque modi earum consequatur necessitatibus quis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(516, '2021-12-30 09:00:34', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 71.00, NULL, 'paid', 'Id consectetur omnis necessitatibus neque atque laudantium. Asperiores laudantium sit facere error quia possimus natus. Molestiae excepturi ut nostrum ducimus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(517, '2021-12-29 23:29:26', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 48.00, NULL, 'paid', 'Est consectetur dolorem quia aut id esse. Provident illo et tempora ut qui sed doloribus. Modi totam facilis sit debitis. Ut maxime alias dolore dolore aut optio. Tempore tenetur maiores sed.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(518, '2021-12-30 18:46:33', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 71.00, NULL, 'paid', 'Ea occaecati aut vero impedit. Asperiores debitis exercitationem quis odio incidunt. Eius deleniti beatae fugit. Odio rerum ut non atque sint nihil.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(519, '2021-12-30 11:22:22', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 76.00, NULL, 'paid', 'Sapiente omnis ut quod non consectetur qui doloremque. Accusamus consequatur consequatur ut saepe dolorum. Perspiciatis animi quo et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(520, '2021-12-30 08:13:07', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 53.00, NULL, 'paid', 'Qui recusandae fugiat eum ut. Est voluptas sit in. Maxime sed ipsa qui qui. Odit omnis sed ut quia aut quo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 42, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(521, '2021-12-30 12:00:13', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 34.00, NULL, 'paid', 'Ut adipisci laboriosam dolor aut quis. Occaecati minima facere ea ullam. Eum saepe illo cupiditate qui fugit et. Dignissimos ullam sit maxime fugiat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(522, '2021-12-30 17:55:07', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 97.00, NULL, 'paid', 'Excepturi reiciendis nam eius soluta. Quam ex nihil veniam nemo debitis sit. Quia ut amet deserunt corrupti voluptate. Est et incidunt quaerat eum quia ex.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(523, '2021-12-30 08:26:54', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 63.00, NULL, 'paid', 'Aperiam libero voluptas earum et voluptas. Et eligendi est quidem cumque deserunt. Nihil sapiente porro id sequi. Totam occaecati dolor aliquid animi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00);
INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `address_id`, `client_id`, `client_name`, `restorant_id`, `driver_id`, `delivery_price`, `order_price`, `payment_method`, `payment_status`, `comment`, `lat`, `lng`, `srtipe_payment_id`, `fee`, `fee_value`, `static_fee`, `delivery_method`, `delivery_pickup_interval`, `vatvalue`, `payment_processor_fee`, `time_to_prepare`, `table_id`, `phone`, `whatsapp_address`, `payment_link`, `employee_id`, `deleted_at`, `md`, `coupon`, `discount`) VALUES
(524, '2021-12-30 08:04:25', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 48.00, NULL, 'paid', 'Eum omnis omnis deleniti. Id error eos sapiente accusamus. Asperiores vero dignissimos officia neque ipsum nobis qui. Eos cum in est magni asperiores ad enim.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(525, '2021-12-30 01:16:38', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 82.00, NULL, 'paid', 'Cumque id voluptates ab. Cum dolores possimus voluptas dolor ab est iste. Dolor et error et tempora minus molestiae voluptas voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(526, '2021-12-30 13:04:59', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 50.00, NULL, 'paid', 'Nesciunt quisquam minima illo dolores. Porro minus quia nemo delectus rem cumque natus. Dolorum odit quo est velit mollitia ut occaecati. Inventore reprehenderit ad omnis et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(527, '2021-12-30 19:10:23', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 98.00, NULL, 'paid', 'Modi labore ut asperiores quis modi. Autem repellendus voluptatem voluptatem quia alias soluta beatae. At ullam sint recusandae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(528, '2021-12-30 11:55:45', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 99.00, NULL, 'paid', 'Pariatur vel ratione dolorem omnis sequi id. Doloremque cupiditate nemo error quidem ut sed assumenda. Totam maiores repellendus possimus excepturi mollitia ea aliquid aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(529, '2021-12-30 16:27:15', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 71.00, NULL, 'paid', 'Possimus perspiciatis sed aut et omnis tempore sed. Aliquam nisi magni ut distinctio nesciunt ullam quae. Iste ut iure excepturi alias deserunt deserunt eius.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(530, '2021-12-29 23:14:06', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 76.00, NULL, 'paid', 'Impedit molestias dignissimos sunt quae exercitationem sit id. Illo quidem ipsum debitis sunt. Sint et tempore veniam nam voluptas assumenda aut. Laudantium veritatis ad nam et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(531, '2021-12-30 06:26:35', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 91.00, NULL, 'paid', 'Velit odit amet asperiores soluta explicabo aliquam. Quia quas alias in alias fugiat quis. Alias ut velit illum et. Ut suscipit nisi voluptate numquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(532, '2021-12-30 19:54:10', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 79.00, NULL, 'paid', 'Autem nostrum excepturi architecto atque dolorem dolorem. Et consequatur id ut ab et nostrum. Consequatur nam dicta blanditiis tempore pariatur quae rem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(533, '2021-12-30 18:12:42', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 41.00, NULL, 'paid', 'Ratione et deserunt commodi consequatur. Alias tenetur eligendi optio. Itaque amet nihil sed et. Accusamus nisi laborum nihil.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(534, '2021-12-30 13:26:14', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 39.00, NULL, 'paid', 'Laboriosam odio ut ipsa quis esse. Laboriosam consectetur est voluptatem voluptas. Accusamus magnam nam illum deleniti recusandae voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(535, '2021-12-30 12:51:54', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 92.00, NULL, 'paid', 'Facilis ducimus enim eos repellat ut nihil. Esse laborum et cum consectetur necessitatibus quae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(536, '2021-12-30 19:59:48', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 35.00, NULL, 'paid', 'Expedita dolores laborum magni in error consequatur qui. At recusandae dicta vero pariatur itaque corporis ut vitae. Cumque laborum rerum dolorem rem qui tenetur sunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(537, '2021-12-30 18:52:40', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 37.00, NULL, 'paid', 'Placeat sunt molestiae dignissimos natus incidunt. Distinctio qui aperiam aut velit non mollitia rerum. At aperiam incidunt quia quis earum nulla minus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(538, '2021-12-30 05:22:23', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 65.00, NULL, 'paid', 'Magni eum omnis repellat adipisci temporibus. Nulla aut voluptatem aut expedita aspernatur ad. Qui sunt autem voluptatibus non quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(539, '2021-12-30 10:32:05', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 39.00, NULL, 'paid', 'Atque ullam labore est laudantium enim. Dignissimos nisi aut non neque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(540, '2021-12-30 14:05:34', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 89.00, NULL, 'paid', 'Incidunt qui beatae repellendus dignissimos. Earum repudiandae possimus rerum enim dolore autem aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(541, '2021-12-30 00:02:55', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 68.00, NULL, 'paid', 'Ipsa fugiat non quibusdam suscipit odio iste corporis. Tempora consequatur ipsam harum repellendus hic ut. Fuga aspernatur ea voluptatum sit aliquam sunt ab.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(542, '2021-12-30 10:51:42', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 95.00, NULL, 'paid', 'Impedit quae autem voluptas ut aut est. Sit accusamus quo omnis quaerat a sint amet. Dolores cumque non commodi dolores aperiam. Consequuntur aut tempore ullam ab qui ipsum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(543, '2021-12-30 00:56:29', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 88.00, NULL, 'paid', 'Fugit nisi distinctio asperiores. Quia autem laudantium quia ratione nostrum maxime necessitatibus. Odio occaecati accusantium fugit quae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(544, '2021-12-30 10:08:19', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 59.00, NULL, 'paid', 'Mollitia voluptatum itaque corporis molestias sit magnam totam quam. Iure non veniam odio rerum. Ut corporis nobis quibusdam inventore. Velit sit quidem rerum dolor perferendis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(545, '2021-12-30 19:08:38', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 74.00, NULL, 'paid', 'Ducimus consequatur sequi odit maxime dolores. Earum consequatur fugit voluptas corporis atque. Necessitatibus et quasi maxime magnam aut. Eos cum et aut eum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(546, '2021-12-30 10:44:49', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 95.00, NULL, 'paid', 'Unde voluptate ut velit ex voluptatum. Dolor pariatur nihil illum beatae quas cumque voluptas ex. Voluptas rerum ratione corporis ratione alias eos officia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(547, '2021-12-30 07:03:56', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 38.00, NULL, 'paid', 'Dolores minus autem et dolor repellendus. Ut debitis officia dolore error. Quisquam quas minus rem ut velit aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(548, '2021-12-30 02:02:01', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 39.00, NULL, 'paid', 'Accusamus est dolorum fugiat temporibus tenetur soluta. Aperiam voluptatem cum veritatis ab. Sint placeat accusamus deserunt nisi accusantium. Aut quidem labore rem consectetur sint delectus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(549, '2021-12-30 04:02:09', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 42.00, NULL, 'paid', 'Corporis officia qui non quas voluptatem quis. Voluptatem eos accusamus quia ea. Incidunt molestiae eos commodi voluptate explicabo laudantium. Velit sunt rerum ut omnis quod error placeat ex.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(550, '2021-12-30 00:40:13', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 49.00, NULL, 'paid', 'Asperiores aliquid itaque pariatur. A iste cupiditate repellat eos quis. Eligendi qui dolor delectus voluptas ut est rerum sint. Aspernatur tempore optio officiis natus est aut repudiandae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 16, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(551, '2021-12-30 11:52:36', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 41.00, NULL, 'paid', 'Non nobis harum itaque velit nam quibusdam. Laborum aut optio culpa a voluptatum velit totam. Laboriosam est exercitationem recusandae accusamus et unde ad.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(552, '2021-12-30 18:49:48', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 82.00, NULL, 'paid', 'Quas omnis et consequatur animi aliquam. Et cumque consequatur voluptates id doloribus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(553, '2021-12-30 17:50:14', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 99.00, NULL, 'paid', 'Quos dolores ut numquam omnis doloremque. Molestiae placeat nam eius nihil blanditiis. Aspernatur voluptate illo similique. Mollitia quasi minus nam rerum impedit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(554, '2021-12-30 07:42:39', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 33.00, NULL, 'paid', 'Consequatur qui quibusdam ut perspiciatis suscipit. Aut et in hic et quis possimus et. Debitis temporibus culpa fugit dolores. Quae voluptas optio omnis sed. Et ipsum voluptas provident iusto.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(555, '2021-12-30 08:58:00', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 87.00, NULL, 'paid', 'Aut temporibus temporibus et sed. Soluta sequi non magnam et laborum dolor. Adipisci eaque commodi a iusto ipsa dolore in.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(556, '2021-12-30 02:04:02', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 44.00, NULL, 'paid', 'Accusamus rem reiciendis rerum aut non impedit. Soluta vero aut fugiat at voluptates error. Ea nihil eligendi ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(557, '2021-12-30 05:17:33', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 36.00, NULL, 'paid', 'Voluptate eius officiis ut in similique. Nostrum velit unde iure eveniet praesentium id. Molestias non optio quaerat et est inventore et. Illum numquam quod temporibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(558, '2021-12-30 07:19:56', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 33.00, NULL, 'paid', 'Quis eos ipsum ipsum. Dolor quam praesentium molestiae ex quisquam quis. Dolore dignissimos facilis et quas et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(559, '2021-12-30 13:58:43', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 88.00, NULL, 'paid', 'Quod et voluptates iste est expedita. Ab voluptate quia vel aliquid rem aspernatur. Qui voluptate sunt modi. Iste fuga quia pariatur nihil.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(560, '2021-12-30 00:36:56', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 60.00, NULL, 'paid', 'Ex ut qui repudiandae aut. Et beatae id autem est itaque ut repudiandae. Ratione omnis sit et nostrum deleniti. Sit et et ab dignissimos et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(561, '2021-12-30 18:57:38', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 94.00, NULL, 'paid', 'Veniam quibusdam nihil qui ad. Dicta expedita odio repellendus quia voluptate. Reiciendis maiores dolor sint qui quaerat. Omnis quasi placeat rem eum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(562, '2021-12-30 17:47:54', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 30.00, NULL, 'paid', 'Autem recusandae saepe vitae quia eveniet mollitia libero. Eum quidem consequatur quia qui et. Qui delectus non molestiae voluptas quod sunt consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(563, '2021-12-30 15:59:53', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 85.00, NULL, 'paid', 'Nam cupiditate suscipit similique autem nemo. Placeat dolorem ipsam mollitia. Nostrum quasi repellat et dolores facilis consequatur sed. Vel nesciunt assumenda deserunt quos eveniet molestias.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(564, '2021-12-30 12:13:14', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 100.00, NULL, 'paid', 'Voluptas odio laborum quis est a dolore. Sed non nostrum doloribus alias quam dolores quia facere. Cupiditate ex eius consequuntur et et ullam temporibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(565, '2021-12-30 01:32:10', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 83.00, NULL, 'paid', 'Blanditiis repudiandae illo vel sequi minima sint. Et ut perferendis et vero aut. Aspernatur quia non doloremque non veniam enim.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(566, '2021-12-30 21:50:59', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 88.00, NULL, 'paid', 'Dolorem nesciunt qui autem in neque vel. Molestiae eius iure ab aliquam est eum asperiores. Inventore iste nihil omnis fuga rerum voluptas molestiae. Qui et sed sint molestias.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(567, '2021-12-30 14:51:19', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 95.00, NULL, 'paid', 'Eligendi earum reprehenderit impedit eius magni magnam. Eligendi culpa officiis repudiandae laboriosam aperiam dolorum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(568, '2021-12-30 19:29:03', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 97.00, NULL, 'paid', 'Officiis unde modi dolorum molestias et sit ut tempora. Reprehenderit natus dolorem et nam iure. Provident vero inventore dicta quia et qui. Eaque illo eum et est repellendus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(569, '2021-12-30 18:58:42', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 68.00, NULL, 'paid', 'Omnis perferendis ut eos asperiores repellat. Occaecati aperiam consequatur rerum eveniet et. Iure laudantium nobis harum non nihil optio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(570, '2021-12-30 01:22:00', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 60.00, NULL, 'paid', 'Et aliquam minima quidem. At maxime quaerat dolores praesentium consequatur. Sit nobis sint quisquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(571, '2021-12-30 22:23:51', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 83.00, NULL, 'paid', 'Optio velit et eum qui qui. Sint rerum totam temporibus dolorum. Non ut corporis magni dolorem nobis a.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(572, '2021-12-29 22:48:36', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 44.00, NULL, 'paid', 'Est excepturi non laboriosam inventore rerum ut aut. Vitae et perspiciatis autem ratione sed. Vel illum nihil accusamus qui in temporibus. Aspernatur dolores sit necessitatibus illum perspiciatis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(573, '2021-12-30 07:13:54', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 32.00, NULL, 'paid', 'Quia quidem nisi accusamus tempore quisquam delectus placeat. Inventore odit sit praesentium cupiditate non eveniet doloremque. Nihil aliquid animi eligendi doloribus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(574, '2021-12-30 16:59:39', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 63.00, NULL, 'paid', 'Sunt delectus omnis quibusdam culpa quam natus. Asperiores sapiente incidunt velit accusantium.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(575, '2021-12-30 10:20:10', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 80.00, NULL, 'paid', 'Rem eos ex inventore soluta. Ipsum adipisci autem corporis quo. Illum ad earum voluptate tenetur in distinctio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(576, '2021-12-30 03:30:45', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 36.00, NULL, 'paid', 'Voluptate saepe illum reiciendis natus necessitatibus laudantium delectus reiciendis. Est nulla est distinctio quaerat nostrum. Architecto quia fugit voluptatem aut pariatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(577, '2021-12-30 13:15:41', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 32.00, NULL, 'paid', 'Praesentium ut voluptates rem cumque deserunt numquam. Minima necessitatibus odio laudantium sapiente non ut. Eius itaque porro neque repellendus qui ut. Vel sapiente excepturi quaerat aperiam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(578, '2021-12-30 03:21:57', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 50.00, NULL, 'paid', 'Id dolor et vero aliquid. Est corporis quo aspernatur facere et accusantium ea. Molestiae eligendi ex odio saepe sed. Aut ut dolore ratione reprehenderit sint.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(579, '2021-12-30 14:43:54', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 45.00, NULL, 'paid', 'Eligendi aut dolor omnis. Sit velit officia aliquid tempore aut expedita. Ad consectetur et quia ut vero.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(580, '2021-12-30 02:34:33', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 99.00, NULL, 'paid', 'Quibusdam non non asperiores ducimus voluptatibus earum alias. Voluptatem quia sed ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(581, '2021-12-30 19:48:32', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 49.00, NULL, 'paid', 'Tempore commodi adipisci ut debitis nobis facilis. Ipsa alias fugit eum atque nihil atque. Sit et totam cumque ipsam. Sed vero ducimus ut doloribus. Dolor fugit temporibus adipisci magni omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(582, '2021-12-30 02:24:14', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 85.00, NULL, 'paid', 'Quia quas ducimus recusandae qui. Illum aut praesentium non sunt possimus rerum. Quia atque ea iure quaerat. Sed ad eos ullam assumenda dolor. Ipsa et est accusamus occaecati quae autem fugiat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(583, '2021-12-30 13:35:43', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 39.00, NULL, 'paid', 'Earum ipsam temporibus architecto consectetur dolores. Ut modi numquam quaerat quam impedit a enim. Accusantium aliquid ipsam accusantium facilis. Ut et sint omnis quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(584, '2021-12-30 03:55:40', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 34.00, NULL, 'paid', 'Iste et quis sed quis. Voluptas facere nihil et quam sit. Dolorum aspernatur laudantium iure eius illo dolor recusandae. Libero aspernatur vel excepturi voluptatem nulla incidunt quasi facere.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(585, '2021-12-30 20:29:20', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 78.00, NULL, 'paid', 'Quo voluptatibus ipsam id exercitationem. Ipsa recusandae expedita dolorem aut. Quia est provident consequatur necessitatibus error non quos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(586, '2021-12-30 15:00:27', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 90.00, NULL, 'paid', 'Aut porro tempora in rerum nemo. Odit voluptates cum nihil at et laborum qui. Laudantium sed magnam non illo et ut voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(587, '2021-12-30 08:51:59', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 84.00, NULL, 'paid', 'Voluptas natus natus non in nulla est excepturi. Ea officiis eum officiis. Autem quo sint in facere enim pariatur vitae. Natus tempora nobis voluptatem neque fugiat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(588, '2021-12-30 03:03:45', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 84.00, NULL, 'paid', 'Est consectetur sed repellendus minus quibusdam impedit consequatur perspiciatis. Sint quis iusto molestiae temporibus. Cumque voluptatem nostrum placeat assumenda consequatur ut itaque ratione.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(589, '2021-12-30 13:19:09', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 51.00, NULL, 'paid', 'Sequi amet fuga nam consectetur assumenda quae nihil. Blanditiis nobis et vitae quam. Blanditiis sit in doloremque et. Quis qui et autem molestiae eaque impedit sed.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(590, '2021-12-30 21:10:46', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 87.00, NULL, 'paid', 'Perspiciatis reiciendis sunt id est at quis. Non consequatur ipsa qui repellat nihil consequuntur. Amet saepe consequuntur maiores sit tempore aliquid vel.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(591, '2021-12-29 23:30:30', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 31.00, NULL, 'paid', 'Nobis et voluptate quae excepturi vero hic. Dicta et facilis dolor facilis praesentium adipisci at. Fuga id assumenda enim sed voluptas. Harum maxime sit laudantium quasi facilis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(592, '2021-12-30 21:34:25', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 99.00, NULL, 'paid', 'Voluptatum repudiandae quo tenetur. Aliquam harum doloribus enim tenetur quia minima et. Odio non doloremque ut est at quasi. Sunt sit est voluptatem aspernatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(593, '2021-12-30 14:30:45', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 73.00, NULL, 'paid', 'Quia velit asperiores et aut ratione libero. Doloribus iste quas ea sunt. Nostrum libero deserunt id harum ullam ea quis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(594, '2021-12-30 18:23:38', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 75.00, NULL, 'paid', 'Consequuntur aliquam nesciunt a qui. Earum doloremque qui quo illo. Aut voluptas ut totam voluptatum ducimus dolorem. Vel quisquam quia quisquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(595, '2021-12-30 00:00:37', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 42.00, NULL, 'paid', 'Voluptatem sit ut distinctio explicabo error. Iste delectus reiciendis sunt mollitia. Qui aut reiciendis officiis quod. Reprehenderit ut molestiae voluptatem vitae esse minus magnam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(596, '2021-12-30 02:54:16', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 30.00, NULL, 'paid', 'Et et corrupti error ut. Assumenda rerum sapiente ipsa architecto nesciunt. Doloremque veniam dolores sit suscipit provident iure maxime excepturi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(597, '2021-12-30 20:15:49', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 74.00, NULL, 'paid', 'Est eius et est dignissimos. Omnis architecto molestias deserunt accusantium quia reprehenderit. Eveniet qui eveniet autem aut voluptatem dolorem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(598, '2021-12-30 18:30:31', '2021-12-31 00:49:56', NULL, NULL, '', 3, NULL, 0.00, 93.00, NULL, 'paid', 'Tenetur modi aut omnis sed minima et. Itaque est provident hic hic autem saepe. Tempora dicta rem enim corporis esse placeat. Est earum nihil officiis nemo dolorem illum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(599, '2021-12-30 20:36:44', '2021-12-31 00:49:56', NULL, NULL, '', 2, NULL, 0.00, 68.00, NULL, 'paid', 'Ut excepturi pariatur ipsa molestias et. Sunt quod reiciendis ducimus assumenda numquam dolorem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(600, '2021-12-30 21:32:33', '2021-12-31 00:49:56', NULL, NULL, '', 1, NULL, 0.00, 57.00, NULL, 'paid', 'In ratione eligendi pariatur quia rerum recusandae. Voluptatem et at tempora explicabo voluptatem culpa nostrum. Cupiditate occaecati veritatis tenetur a.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, '', NULL, '2021-12-31 00:49:56', '', NULL, 0.00),
(602, '2022-01-11 20:24:09', '2022-01-11 22:57:07', NULL, 35, '', 17, NULL, 0.00, 60.00, 'cod', 'unpaid', ' تجربة تجربة ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 7.20, 0.00, NULL, 241, NULL, NULL, '', NULL, '2022-01-11 22:57:07', 'c3992e9a68c5ae12bd18488bc579b30d', NULL, 0.00),
(603, '2022-01-12 00:11:43', '2022-01-15 23:18:12', NULL, 1, '', 26, NULL, 0.00, 10.00, 'cod', 'paid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 242, NULL, NULL, '', NULL, '2022-01-15 23:18:12', 'd86ea612dec96096c5e0fcc8dd42ab6d', NULL, 0.00),
(604, '2022-01-12 00:15:18', '2022-01-15 23:18:12', NULL, 1, '', 26, NULL, 0.00, 10.00, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 2, '270_300', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, '2022-01-15 23:18:12', '9cf81d8026a9018052c429cc4e56739b', NULL, 0.00),
(605, '2022-01-12 00:16:35', '2022-01-15 23:18:12', NULL, 44, '', 26, NULL, 0.00, 10.00, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 242, NULL, NULL, '', NULL, '2022-01-15 23:18:12', 'c361bc7b2c033a83d663b8d9fb4be56e', NULL, 0.00),
(606, '2022-01-12 00:19:45', '2022-01-15 23:18:12', NULL, 44, '', 26, NULL, 0.00, 10.00, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 242, NULL, NULL, '', NULL, '2022-01-15 23:18:12', '44c4c17332cace2124a1a836d9fc4b6f', NULL, 0.00),
(607, '2022-01-12 01:20:08', '2022-01-12 01:20:10', NULL, 1, '', 26, NULL, 0.00, 10.00, 'paypal', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 242, NULL, NULL, '', NULL, '2022-01-12 01:20:10', 'dc82d632c9fcecb0778afbc7924494a6', NULL, 0.00),
(608, '2022-01-12 01:20:56', '2022-01-15 23:18:12', NULL, 1, '', 26, NULL, 0.00, 10.00, 'paypal', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 242, NULL, NULL, 'https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_express-checkout&token=EC-5AK29535C91637749', NULL, '2022-01-15 23:18:12', '996a7fa078cc36c46d02f9af3bef918b', NULL, 0.00),
(609, '2022-01-12 01:23:08', '2022-01-12 01:23:09', NULL, 1, '', 26, NULL, 0.00, 10.00, 'paypal', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 242, NULL, NULL, '', NULL, '2022-01-12 01:23:09', 'd7a728a67d909e714c0774e22cb806f2', NULL, 0.00),
(610, '2022-01-12 01:52:21', '2022-01-15 23:18:12', NULL, 1, '', 26, NULL, 0.00, 10.00, 'cod', 'unpaid', '  ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 242, NULL, NULL, '', NULL, '2022-01-15 23:18:12', '00ac8ed3b4327bdd4ebbebcb2ba10a00', NULL, 0.00),
(611, '2022-01-12 01:59:53', '2022-01-15 23:18:12', NULL, 1, '', 26, NULL, 0.00, 10.00, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 242, NULL, NULL, '', NULL, '2022-01-15 23:18:12', '8ebda540cbcc4d7336496819a46a1b68', NULL, 0.00),
(612, '2022-01-17 21:58:36', '2022-01-17 21:58:36', NULL, 39, '', 21, NULL, 0.00, 13.00, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 273, NULL, NULL, '', NULL, NULL, 'f76a89f0cb91bc419542ce9fa43902dc', NULL, 0.00),
(613, '2022-01-17 22:01:22', '2022-01-17 22:01:22', NULL, 39, '', 21, NULL, 0.00, 14.00, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 273, NULL, NULL, '', NULL, NULL, 'f29c21d4897f78948b91f03172341b7b', NULL, 0.00),
(614, '2022-01-17 22:03:15', '2022-01-17 22:03:15', NULL, 39, '', 21, NULL, 0.00, 14.00, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 2, '90_120', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, '851ddf5058cf22df63d3344ad89919cf', NULL, 0.00),
(615, '2022-01-17 22:07:43', '2022-01-17 22:07:43', NULL, 39, '', 21, NULL, 0.00, 14.00, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 2, '90_120', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, '58d4d1e7b1e97b258c9ed0b37e02d087', NULL, 0.00),
(616, '2022-01-17 22:10:10', '2022-01-17 22:10:10', NULL, 39, '', 21, NULL, 0.00, 16.00, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 2, '90_120', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, '7750ca3559e5b8e1f44210283368fc16', NULL, 0.00),
(617, '2022-01-22 17:42:53', '2022-01-22 17:42:53', NULL, NULL, '', 21, NULL, 0.00, 13.00, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 273, NULL, NULL, '', NULL, NULL, '5d44ee6f2c3f71b73125876103c8f6c4', NULL, 0.00),
(618, '2022-01-23 21:21:20', '2022-01-23 21:21:21', NULL, NULL, '', 21, NULL, 0.00, 13.00, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 273, NULL, NULL, '', NULL, NULL, 'eb6fdc36b281b7d5eabf33396c2683a2', NULL, 0.00),
(619, '2022-02-08 17:29:18', '2022-02-08 17:29:18', NULL, 1, '', 27, NULL, 0.00, 1.00, 'stripe', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 2, '1230_1260', 0.00, 0.00, NULL, NULL, '966', NULL, '', NULL, NULL, 'cdc0d6e63aa8e41c89689f54970bb35f', NULL, 0.00),
(620, '2022-02-09 03:15:15', '2022-02-09 03:16:35', NULL, 45, '', 27, NULL, 0.00, 1.00, 'stripe', 'paid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 2, '390_420', 0.00, 0.00, NULL, NULL, '96657686958759', NULL, '', NULL, NULL, 'b73dfe25b4b8714c029b37a6ad3006fa', NULL, 0.00),
(621, '2022-02-10 08:17:25', '2022-02-10 08:17:25', NULL, 45, '', 27, NULL, 0.00, 1.00, 'stripe', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '85fc37b18c57097425b52fc7afbb6969', NULL, 0.00),
(622, '2022-02-12 09:23:51', '2022-02-21 03:00:23', NULL, NULL, '', 27, NULL, 0.00, 10.00, 'cod', 'unpaid', '  exstra ice  ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '3871bd64012152bfb53fdf04b401193f', NULL, 0.00),
(623, '2022-02-12 10:03:08', '2022-02-12 10:03:08', NULL, NULL, '', 27, NULL, 0.00, 1.00, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 2, '810_840', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, 'a733fa9b25f33689e2adbe72199f0e62', NULL, 0.00),
(624, '2022-02-12 11:16:25', '2022-02-12 11:16:25', NULL, NULL, '', 27, NULL, 0.00, 1.00, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 2, '870_900', 0.00, 0.00, NULL, NULL, '92', NULL, '', NULL, NULL, '48ab2f9b45957ab574cf005eb8a76760', NULL, 0.00),
(625, '2022-02-12 11:41:30', '2022-02-12 11:41:30', NULL, NULL, '', 27, NULL, 0.00, 1.00, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 2, '900_930', 0.00, 0.00, NULL, NULL, '92', NULL, '', NULL, NULL, '233509073ed3432027d48b1a83f5fbd2', NULL, 0.00),
(626, '2022-02-16 21:39:05', '2022-02-16 21:42:35', NULL, 36, '', 18, NULL, 0.00, 15.00, 'cod', 'paid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 2.25, 0.00, NULL, 243, NULL, NULL, '', NULL, NULL, '45645a27c4f1adc8a7a835976064a86d', NULL, 0.00),
(627, '2022-02-21 03:01:34', '2022-02-21 03:01:34', NULL, 1, '', 27, NULL, 0.00, 1.00, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 2, '510_540', 0.00, 0.00, NULL, NULL, '966+966590689303', NULL, '', NULL, NULL, '185c29dc24325934ee377cfda20e414c', NULL, 0.00),
(628, '2022-02-21 03:15:32', '2022-02-21 03:15:32', NULL, 1, '', 27, NULL, 0.00, 2.00, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '42e77b63637ab381e8be5f8318cc28a2', NULL, 0.00),
(629, '2022-02-22 03:02:39', '2022-02-22 03:02:39', NULL, 45, '', 27, NULL, 0.00, 0.00, 'cod', 'unpaid', '', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, '051e4e127b92f5d98d3c79b195f2b291', NULL, 0.00),
(630, '2022-02-26 12:09:38', '2022-02-26 12:09:38', NULL, 45, '', 27, NULL, 0.00, 1.00, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 7.00, 0, 1.00, 3, '', 0.15, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '9cc138f8dc04cbf16240daa92d8d50e2', NULL, 0.00),
(631, '2022-02-27 20:04:17', '2022-02-27 20:04:17', NULL, NULL, '', 27, NULL, 0.00, 1.00, 'stripe', 'unpaid', ' ', NULL, NULL, NULL, 7.00, 0, 1.00, 3, '', 0.15, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, 'b7bb35b9c6ca2aee2df08cf09d7016c2', NULL, 0.00),
(632, '2022-02-27 20:26:40', '2022-02-27 20:27:17', NULL, 45, '', 27, NULL, 0.00, 2.00, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 7.00, 0, 1.00, 3, '', 0.00, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, 'abd815286ba1007abfbb8415b83ae2cf', NULL, 0.00),
(633, '2022-03-01 13:11:26', '2022-03-01 13:11:26', NULL, 1, '', 27, NULL, 0.00, 1.00, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 7.00, 0, 1.00, 3, '', 0.15, 0.00, NULL, 275, NULL, NULL, '', NULL, NULL, '26dd0dbc6e3f4c8043749885523d6a25', NULL, 0.00),
(634, '2022-03-04 17:07:14', '2022-03-04 17:07:14', NULL, 1, '', 27, NULL, 0.00, 2.00, 'paypal', 'unpaid', ' ', NULL, NULL, NULL, 7.00, 0.07, 1.00, 3, '', 0.30, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '6766aa2750c19aad2fa1b32f36ed4aee', NULL, 0.00),
(635, '2022-03-04 17:08:05', '2022-03-06 00:23:49', NULL, 1, '', 27, NULL, 0.00, 2.00, 'paypal', 'unpaid', ' ', NULL, NULL, NULL, 7.00, 0.07, 1.00, 3, '', 0.15, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '6a10bbd480e4c5573d8f3af73ae0454b', NULL, 0.00),
(636, '2022-03-04 17:10:50', '2022-03-04 17:10:50', NULL, NULL, '', 27, NULL, 0.00, 1.00, 'paypal', 'unpaid', ' ', NULL, NULL, NULL, 7.00, 0, 1.00, 3, '', 0.15, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, 'c5ab0bc60ac7929182aadd08703f1ec6', NULL, 0.00),
(637, '2022-03-06 01:15:03', '2022-03-06 01:34:24', NULL, 45, '', 27, NULL, 0.00, 1.00, 'cod', 'paid', ' ', NULL, NULL, NULL, 7.00, 0, 1.00, 3, '', 0.15, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, 'a532400ed62e772b9dc0b86f46e583ff', NULL, 0.00),
(638, '2022-03-06 09:20:18', '2022-03-06 09:25:25', NULL, NULL, '', 27, NULL, 0.00, 1.00, 'cod', 'paid', ' ', NULL, NULL, NULL, 7.00, 0, 1.00, 3, '', 0.15, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '4c27cea8526af8cfee3be5e183ac9605', NULL, 0.00),
(639, '2022-03-06 17:55:34', '2022-03-06 17:55:34', NULL, NULL, '', 27, NULL, 0.00, 1.00, 'stripe', 'unpaid', ' ', NULL, NULL, NULL, 7.00, 0, 1.00, 3, '', 0.15, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '0f96613235062963ccde717b18f97592', NULL, 0.00),
(640, '2022-03-06 17:56:27', '2022-03-06 17:56:27', NULL, NULL, '', 27, NULL, 0.00, 1.00, 'stripe', 'unpaid', ' ', NULL, NULL, NULL, 7.00, 0, 1.00, 3, '', 0.15, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '4ffce04d92a4d6cb21c1494cdfcd6dc1', NULL, 0.00),
(641, '2022-03-08 01:56:23', '2022-03-08 01:56:23', NULL, 1, '', 27, NULL, 0.00, 1.00, 'stripe', 'unpaid', ' ', NULL, NULL, NULL, 7.00, 0, 1.00, 3, '', 0.15, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '67e103b0761e60683e83c559be18d40c', NULL, 0.00),
(642, '2022-03-08 14:32:50', '2022-03-08 14:32:50', NULL, 1, '', 38, NULL, 0.00, 25.00, 'stripe', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 2, '1080_1110', 0.00, 0.00, NULL, NULL, '9665555555555', NULL, '', NULL, NULL, '291597a100aadd814d197af4f4bab3a7', NULL, 0.00),
(643, '2022-03-16 11:22:05', '2022-03-16 11:22:05', NULL, NULL, '', 27, NULL, 0.00, 1.00, 'stripe', 'unpaid', ' ', NULL, NULL, NULL, 7.00, 0, 1.00, 3, '', 0.15, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '9b698eb3105bd82528f23d0c92dedfc0', NULL, 0.00),
(644, '2022-03-19 14:32:11', '2022-03-19 14:32:11', NULL, 56, '', 38, NULL, 0.00, 25.00, 'stripe', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 2, '1050_1080', 0.00, 0.00, NULL, NULL, '966123456789', NULL, '', NULL, NULL, '8c7bbbba95c1025975e548cee86dfadc', NULL, 0.00),
(645, '2022-03-19 14:35:42', '2022-03-19 14:35:42', NULL, 56, '', 38, NULL, 0.00, 25.00, 'stripe', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 2, '1080_1110', 0.00, 0.00, NULL, NULL, '96612345567888', NULL, '', NULL, NULL, '5e9f92a01c986bafcabbafd145520b13', NULL, 0.00),
(646, '2022-03-19 22:26:57', '2022-03-19 22:26:57', NULL, NULL, '', 38, NULL, 0.00, 25.00, 'stripe', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 2, '90_120', 0.00, 0.00, NULL, NULL, '31123321123', NULL, '', NULL, NULL, '0ff39bbbf981ac0151d340c9aa40e63e', NULL, 0.00),
(647, '2022-03-22 01:08:21', '2022-03-22 01:08:21', NULL, 1, '', 38, NULL, 0.00, 25.00, 'stripe', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 2, '270_300', 0.00, 0.00, NULL, NULL, '9661234', NULL, '', NULL, NULL, '303ed4c69846ab36c2904d3ba8573050', NULL, 0.00),
(648, '2022-03-27 22:57:39', '2022-03-27 22:57:39', NULL, 1, '', 38, NULL, 0.00, 25.00, 'stripe', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 2, '120_150', 0.00, 0.00, NULL, NULL, '96612312312', NULL, '', NULL, NULL, '443cb001c138b2561a0d90720d6ce111', NULL, 0.00),
(649, '2022-03-30 01:36:30', '2022-03-30 01:36:30', NULL, 56, '', 38, NULL, 0.00, 25.00, 'stripe', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 2, '300_330', 0.00, 0.00, NULL, NULL, '9662222222222', NULL, '', NULL, NULL, '55b37c5c270e5d84c793e486d798c01d', NULL, 0.00),
(650, '2022-03-30 01:37:43', '2022-03-30 01:37:44', NULL, 56, '', 38, NULL, 0.00, 25.00, 'stripe', 'paid', ' ', NULL, NULL, 'pi_3KiqTjBzo5SkQsBo1ew4yqiD', 0.00, 0, 0.00, 2, '300_330', 0.00, 0.95, NULL, NULL, '966111111', NULL, '', NULL, NULL, '884d247c6f65a96a7da4d1105d584ddd', NULL, 0.00),
(651, '2022-04-08 16:55:13', '2022-04-08 16:55:13', NULL, 1, '', 27, NULL, 0.00, 1.00, 'stripe', 'unpaid', ' ', NULL, NULL, NULL, 7.00, 0, 1.00, 3, '', 0.15, 0.00, NULL, 275, NULL, NULL, '', NULL, NULL, '55743cc0393b1cb4b8b37d09ae48d097', NULL, 0.00),
(652, '2022-04-08 16:55:13', '2022-04-08 16:55:13', NULL, 1, '', 27, NULL, 0.00, 1.00, 'stripe', 'unpaid', ' ', NULL, NULL, NULL, 7.00, 0, 1.00, 3, '', 0.15, 0.00, NULL, 275, NULL, NULL, '', NULL, NULL, '30ef30b64204a3088a26bc2e6ecf7602', NULL, 0.00),
(653, '2022-04-08 16:55:14', '2022-04-08 16:55:14', NULL, 1, '', 27, NULL, 0.00, 1.00, 'stripe', 'unpaid', ' ', NULL, NULL, NULL, 7.00, 0, 1.00, 3, '', 0.15, 0.00, NULL, 275, NULL, NULL, '', NULL, NULL, 'eaae339c4d89fc102edd9dbdb6a28915', NULL, 0.00),
(654, '2022-04-08 16:55:14', '2022-04-08 16:55:14', NULL, 1, '', 27, NULL, 0.00, 1.00, 'stripe', 'unpaid', ' ', NULL, NULL, NULL, 7.00, 0, 1.00, 3, '', 0.15, 0.00, NULL, 275, NULL, NULL, '', NULL, NULL, 'ab233b682ec355648e7891e66c54191b', NULL, 0.00),
(655, '2022-04-08 16:55:14', '2022-04-08 16:55:14', NULL, 1, '', 27, NULL, 0.00, 1.00, 'stripe', 'unpaid', ' ', NULL, NULL, NULL, 7.00, 0, 1.00, 3, '', 0.15, 0.00, NULL, 275, NULL, NULL, '', NULL, NULL, '3d2d8ccb37df977cb6d9da15b76c3f3a', NULL, 0.00),
(656, '2022-04-08 16:55:15', '2022-04-08 16:55:15', NULL, 1, '', 27, NULL, 0.00, 1.00, 'stripe', 'unpaid', ' ', NULL, NULL, NULL, 7.00, 0, 1.00, 3, '', 0.15, 0.00, NULL, 275, NULL, NULL, '', NULL, NULL, '26408ffa703a72e8ac0117e74ad46f33', NULL, 0.00),
(657, '2022-04-10 22:06:27', '2022-04-10 22:06:27', NULL, NULL, '', 27, NULL, 0.00, 2.00, 'cod', 'unpaid', ' Test', NULL, NULL, NULL, 7.00, 0.07, 1.00, 3, '', 0.30, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, 'b4288d9c0ec0a1841b3b3728321e7088', NULL, 0.00),
(658, '2022-04-11 09:13:31', '2022-04-11 09:13:31', NULL, 45, '', 27, NULL, 0.00, 1.00, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 7.00, 0, 1.00, 3, '', 0.15, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '2f37d10131f2a483a8dd005b3d14b0d9', NULL, 0.00),
(659, '2022-04-11 11:46:04', '2022-04-11 11:48:18', NULL, NULL, '', 27, NULL, 0.00, 1.00, 'Online', 'paid', 'Zain Test', NULL, NULL, NULL, 7.00, 0, 1.00, 3, '', 0.15, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '0ff8033cf9437c213ee13937b1c4c455', NULL, 0.00),
(660, '2022-04-11 11:56:06', '2022-04-11 11:56:06', NULL, 45, '', 27, NULL, 0.00, 1.00, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 7.00, 0, 1.00, 3, '', 0.15, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '68264bdb65b97eeae6788aa3348e553c', NULL, 0.00),
(661, '2022-04-11 11:56:41', '2022-04-11 11:56:41', NULL, 45, '', 27, NULL, 0.00, 1.00, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 7.00, 0, 1.00, 3, '', 0.15, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '3a066bda8c96b9478bb0512f0a43028c', NULL, 0.00),
(662, '2022-04-12 00:46:04', '2022-04-12 00:46:04', NULL, 1, '', 38, NULL, 0.00, 25.00, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 2, '240_270', 0.00, 0.00, NULL, NULL, '966555511110', NULL, '', NULL, NULL, 'be3159ad04564bfb90db9e32851ebf9c', NULL, 0.00),
(663, '2022-04-13 12:37:12', '2022-04-13 12:37:12', NULL, NULL, '', 27, NULL, 0.00, 1.00, 'cod', 'unpaid', ' asdasd', NULL, NULL, NULL, 7.00, 0, 1.00, 3, '', 0.15, 0.00, NULL, 275, NULL, NULL, '', NULL, NULL, '8757150decbd89b0f5442ca3db4d0e0e', NULL, 0.00),
(666, '2022-04-14 01:14:12', '2022-04-14 01:14:12', NULL, NULL, '', 27, NULL, 0.00, 1.00, 'Online', 'unpaid', 'hjghjgj', NULL, NULL, '785171445283', 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 274, '92', NULL, '', NULL, NULL, '', NULL, 0.00),
(667, '2022-04-14 01:26:45', '2022-04-14 01:26:45', NULL, NULL, '', 27, NULL, 0.00, 1.00, 'Online', 'unpaid', 'hjghjgj', NULL, NULL, '489503241255', 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 274, '92', NULL, '', NULL, NULL, '', NULL, 0.00),
(668, '2022-04-14 01:27:05', '2022-04-14 01:27:46', NULL, NULL, '', 27, NULL, 0.00, 1.00, 'Online', 'paid', 'hjghjgj', NULL, NULL, '136404041738', 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 274, '92', NULL, '', NULL, NULL, '', NULL, 0.00),
(671, '2022-04-14 14:35:10', '2022-04-14 14:36:18', NULL, NULL, '', 27, NULL, 0.00, 1.00, 'Online', 'paid', 'asdasd', NULL, NULL, '140682882111', 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '', NULL, 0.00),
(672, '2022-04-14 14:41:35', '2022-04-14 14:42:18', NULL, NULL, 'Jaq', 27, NULL, 0.00, 1.00, 'Online', 'paid', 'testing', NULL, NULL, '241597843219', 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '', NULL, 0.00),
(673, '2022-04-14 17:27:03', '2022-04-14 17:27:03', NULL, NULL, '', 27, NULL, 0.00, 1.00, 'Online', 'unpaid', 'Test', NULL, NULL, '903497960125', 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '', NULL, 0.00),
(676, '2022-04-14 18:01:02', '2022-04-14 18:01:02', NULL, NULL, '', 27, NULL, 0.00, 4.00, 'Online', 'unpaid', 'Testing 1', NULL, NULL, '730241611446', 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '', NULL, 0.00),
(677, '2022-04-14 18:01:05', '2022-04-14 18:01:05', NULL, NULL, '', 27, NULL, 0.00, 4.00, 'Online', 'unpaid', 'Testing 1', NULL, NULL, '630586903978', 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '', NULL, 0.00),
(678, '2022-04-14 18:01:20', '2022-04-14 18:01:56', NULL, NULL, '', 27, NULL, 0.00, 4.00, 'Online', 'paid', 'Testing 1', NULL, NULL, '901900760873', 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '', NULL, 0.00),
(679, '2022-04-14 18:03:49', '2022-04-14 18:03:49', NULL, NULL, '', 27, NULL, 0.00, 3.00, 'Online', 'unpaid', 'Testing 2', NULL, NULL, '493581398707', 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '', NULL, 0.00),
(680, '2022-04-15 14:58:12', '2022-04-15 14:59:16', NULL, NULL, '', 27, NULL, 0.00, 2.00, 'Online', 'paid', 'T1', NULL, NULL, '733680899339', 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '', NULL, 0.00),
(681, '2022-04-15 16:53:31', '2022-04-15 16:53:31', NULL, NULL, 'Jawad ahmed', 27, NULL, 0.00, 1.00, 'Online', 'unpaid', 'tsting', NULL, NULL, '179530509362', 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '', NULL, 0.00),
(682, '2022-04-15 16:55:39', '2022-04-15 16:56:37', NULL, NULL, 'Jawad ahmed', 27, NULL, 0.00, 1.00, 'Online', 'paid', 'Jtsting', NULL, NULL, '641341204661', 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '', NULL, 0.00),
(683, '2022-04-15 17:18:33', '2022-04-15 17:19:21', NULL, NULL, 'Jawad ahmed', 27, NULL, 0.00, 1.00, 'Online', 'paid', 'Jtsting', NULL, NULL, '614087948161', 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '', NULL, 0.00),
(684, '2022-04-15 17:21:55', '2022-04-15 17:22:30', NULL, NULL, 'JWad Amd', 27, NULL, 0.00, 1.00, 'Online', 'paid', 'asj', NULL, NULL, '212481149324', 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '', NULL, 0.00),
(685, '2022-04-15 17:47:20', '2022-04-15 17:47:20', NULL, NULL, 'Azlan 1', 27, NULL, 0.00, 2.00, 'Online', 'unpaid', 'Test 1', NULL, NULL, '256985720214', 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '', NULL, 0.00),
(686, '2022-04-15 17:47:36', '2022-04-15 17:48:53', NULL, NULL, 'Azlan 1', 27, NULL, 0.00, 2.00, 'Online', 'paid', 'Test 1', NULL, NULL, '920447079715', 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '', NULL, 0.00);
INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `address_id`, `client_id`, `client_name`, `restorant_id`, `driver_id`, `delivery_price`, `order_price`, `payment_method`, `payment_status`, `comment`, `lat`, `lng`, `srtipe_payment_id`, `fee`, `fee_value`, `static_fee`, `delivery_method`, `delivery_pickup_interval`, `vatvalue`, `payment_processor_fee`, `time_to_prepare`, `table_id`, `phone`, `whatsapp_address`, `payment_link`, `employee_id`, `deleted_at`, `md`, `coupon`, `discount`) VALUES
(687, '2022-04-15 18:01:44', '2022-04-15 18:01:44', NULL, NULL, 'Test', 27, NULL, 0.00, 2.00, 'Online', 'unpaid', '1', NULL, NULL, '765971892879', 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '', NULL, 0.00),
(688, '2022-04-16 10:03:23', '2022-04-16 10:03:23', NULL, NULL, '1', 27, NULL, 0.00, 1.00, 'Online', 'unpaid', '11', NULL, NULL, '141506103730', 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '', NULL, 0.00),
(689, '2022-04-17 18:14:22', '2022-04-17 18:14:22', NULL, NULL, 'T', 27, NULL, 0.00, 1.00, 'Online', 'unpaid', 'T', NULL, NULL, '211804432928', 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '', NULL, 0.00),
(690, '2022-04-18 10:27:46', '2022-04-18 10:27:46', NULL, NULL, '1', 27, NULL, 0.00, 1.00, 'Online', 'unpaid', '2', NULL, NULL, '184413744941', 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '', NULL, 0.00),
(693, '2022-04-18 12:58:39', '2022-04-18 13:00:36', NULL, NULL, 'jawad', 27, NULL, 0.00, 2.00, 'Online', 'paid', NULL, NULL, NULL, '182549539982', 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '', NULL, 0.00),
(694, '2022-04-18 13:02:16', '2022-04-18 13:02:54', NULL, NULL, 'asdasd', 27, NULL, 0.00, 1.00, 'Online', 'paid', NULL, NULL, NULL, '332187488044', 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 275, NULL, NULL, '', NULL, NULL, '', NULL, 0.00),
(700, '2022-04-18 13:30:52', '2022-04-18 13:30:52', NULL, NULL, 'zain 1', 27, NULL, 0.00, 1.00, 'Online', 'unpaid', 'test 1', NULL, NULL, '624408949163', 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '', NULL, 0.00),
(701, '2022-04-18 13:30:58', '2022-04-18 13:30:58', NULL, NULL, 'zain 1', 27, NULL, 0.00, 1.00, 'Online', 'unpaid', 'test 1', NULL, NULL, '121305565718', 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '', NULL, 0.00),
(702, '2022-04-18 13:31:06', '2022-04-18 13:31:06', NULL, NULL, 'zain 1', 27, NULL, 0.00, 1.00, 'Online', 'unpaid', 'test 1', NULL, NULL, '866671867295', 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '', NULL, 0.00),
(703, '2022-04-18 13:31:07', '2022-04-18 13:31:07', NULL, NULL, 'zain 1', 27, NULL, 0.00, 1.00, 'Online', 'unpaid', 'test 1', NULL, NULL, '504500907683', 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '', NULL, 0.00),
(704, '2022-04-18 13:31:07', '2022-04-18 13:31:07', NULL, NULL, 'zain 1', 27, NULL, 0.00, 1.00, 'Online', 'unpaid', 'test 1', NULL, NULL, '594498187279', 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '', NULL, 0.00),
(705, '2022-04-18 13:31:11', '2022-04-18 13:31:11', NULL, NULL, 'zain 1', 27, NULL, 0.00, 1.00, 'Online', 'unpaid', 'test 1', NULL, NULL, '761628609458', 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 275, NULL, NULL, '', NULL, NULL, '', NULL, 0.00),
(707, '2022-04-18 13:32:24', '2022-04-18 13:33:07', NULL, NULL, 'zain', 27, NULL, 0.00, 1.00, 'Online', 'paid', NULL, NULL, NULL, '229175201180', 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 274, NULL, NULL, '', NULL, NULL, '', NULL, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `order_has_items`
--

CREATE TABLE `order_has_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '1',
  `extras` varchar(800) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `vat` double(8,2) DEFAULT '0.00',
  `vatvalue` double(8,2) DEFAULT '0.00',
  `variant_price` double(8,2) DEFAULT NULL,
  `variant_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_has_items`
--

INSERT INTO `order_has_items` (`id`, `created_at`, `updated_at`, `order_id`, `item_id`, `qty`, `extras`, `vat`, `vatvalue`, `variant_price`, `variant_name`) VALUES
(11, NULL, NULL, 612, 389, 1, '[]', 0.00, 0.00, 13.00, ''),
(12, NULL, NULL, 613, 391, 1, '[]', 0.00, 0.00, 14.00, ''),
(13, NULL, NULL, 614, 393, 1, '[]', 0.00, 0.00, 14.00, ''),
(14, NULL, NULL, 615, 391, 1, '[]', 0.00, 0.00, 14.00, ''),
(15, NULL, NULL, 616, 395, 1, '[]', 0.00, 0.00, 16.00, ''),
(16, NULL, NULL, 617, 392, 1, '[]', 0.00, 0.00, 13.00, ''),
(17, NULL, NULL, 618, 389, 1, '[]', 0.00, 0.00, 13.00, ''),
(18, NULL, NULL, 619, 481, 1, '[]', 0.00, 0.00, 1.00, ''),
(19, NULL, NULL, 620, 481, 1, '[]', 0.00, 0.00, 1.00, ''),
(20, NULL, NULL, 621, 481, 1, '[]', 0.00, 0.00, 1.00, ''),
(21, NULL, '2022-02-20 03:05:50', 622, 481, 0, '[]', 0.00, NULL, 1.00, ''),
(22, NULL, NULL, 623, 481, 1, '[]', 0.00, 0.00, 1.00, ''),
(23, NULL, NULL, 624, 481, 1, '[]', 0.00, 0.00, 1.00, ''),
(24, NULL, NULL, 625, 481, 1, '[]', 0.00, 0.00, 1.00, ''),
(25, NULL, '2022-02-20 03:06:07', 622, 481, 0, '[]', 0.00, NULL, 1.00, ''),
(26, NULL, NULL, 626, 344, 1, '[\"\\u0627\\u0643\\u0633\\u062a\\u0631\\u0627 \\u0634\\u0648\\u062a + \\u0631.\\u06333.00\"]', 15.00, 2.25, 15.00, ''),
(27, NULL, NULL, 622, 481, 9, '[]', 0.00, 0.00, 1.00, ''),
(28, NULL, NULL, 622, 481, 1, '[]', 0.00, 0.00, 1.00, ''),
(29, NULL, NULL, 627, 481, 1, '[]', 0.00, 0.00, 1.00, ''),
(30, NULL, NULL, 628, 481, 1, '[]', 0.00, 0.00, 1.00, ''),
(31, NULL, NULL, 628, 481, 1, '[]', 0.00, 0.00, 1.00, ''),
(32, NULL, NULL, 629, 481, 1, '[]', 15.00, 0.15, 1.00, ''),
(33, NULL, NULL, 630, 481, 1, '[]', 15.00, 0.15, 1.00, ''),
(34, NULL, NULL, 631, 481, 1, '[]', 15.00, 0.15, 1.00, ''),
(35, NULL, '2022-02-27 20:27:17', 632, 481, 2, '[]', 15.00, NULL, 1.00, ''),
(36, NULL, NULL, 633, 481, 1, '[]', 15.00, 0.15, 1.00, ''),
(37, NULL, NULL, 634, 481, 1, '[]', 15.00, 0.15, 1.00, ''),
(38, NULL, NULL, 634, 481, 1, '[]', 15.00, 0.15, 1.00, ''),
(39, NULL, NULL, 635, 481, 1, '[]', 15.00, 0.15, 1.00, ''),
(40, NULL, '2022-03-06 00:23:49', 635, 481, 1, '[]', 15.00, NULL, 1.00, ''),
(41, NULL, NULL, 636, 481, 1, '[]', 15.00, 0.15, 1.00, ''),
(42, NULL, NULL, 637, 481, 1, '[]', 15.00, 0.15, 1.00, ''),
(43, NULL, NULL, 638, 481, 1, '[]', 15.00, 0.15, 1.00, ''),
(44, NULL, NULL, 639, 481, 1, '[]', 15.00, 0.15, 1.00, ''),
(45, NULL, NULL, 640, 481, 1, '[]', 15.00, 0.15, 1.00, ''),
(46, NULL, NULL, 641, 481, 1, '[]', 15.00, 0.15, 1.00, ''),
(47, NULL, NULL, 642, 582, 1, '[]', 0.00, 0.00, 25.00, ''),
(48, NULL, NULL, 643, 481, 1, '[]', 15.00, 0.15, 1.00, ''),
(49, NULL, NULL, 644, 582, 1, '[]', 0.00, 0.00, 25.00, ''),
(50, NULL, NULL, 645, 582, 1, '[]', 0.00, 0.00, 25.00, ''),
(51, NULL, NULL, 646, 582, 1, '[]', 0.00, 0.00, 25.00, ''),
(52, NULL, NULL, 647, 582, 1, '[]', 0.00, 0.00, 25.00, ''),
(53, NULL, NULL, 648, 582, 1, '[]', 0.00, 0.00, 25.00, ''),
(54, NULL, NULL, 649, 582, 1, '[]', 0.00, 0.00, 25.00, ''),
(55, NULL, NULL, 650, 582, 1, '[]', 0.00, 0.00, 25.00, ''),
(56, NULL, NULL, 651, 481, 1, '[]', 15.00, 0.15, 1.00, ''),
(57, NULL, NULL, 652, 481, 1, '[]', 15.00, 0.15, 1.00, ''),
(58, NULL, NULL, 653, 481, 1, '[]', 15.00, 0.15, 1.00, ''),
(59, NULL, NULL, 654, 481, 1, '[]', 15.00, 0.15, 1.00, ''),
(60, NULL, NULL, 655, 481, 1, '[]', 15.00, 0.15, 1.00, ''),
(61, NULL, NULL, 656, 481, 1, '[]', 15.00, 0.15, 1.00, ''),
(62, NULL, NULL, 657, 481, 1, '[]', 15.00, 0.15, 1.00, ''),
(63, NULL, NULL, 657, 481, 1, '[]', 15.00, 0.15, 1.00, ''),
(64, NULL, NULL, 658, 481, 1, '[]', 15.00, 0.15, 1.00, ''),
(65, NULL, NULL, 659, 481, 1, '[]', 15.00, 0.15, 1.00, ''),
(66, NULL, NULL, 660, 481, 1, '[]', 15.00, 0.15, 1.00, ''),
(67, NULL, NULL, 661, 481, 1, '[]', 15.00, 0.15, 1.00, ''),
(68, NULL, NULL, 662, 582, 1, '[]', 0.00, 0.00, 25.00, ''),
(69, NULL, NULL, 663, 481, 1, '[]', 15.00, 0.15, 1.00, '');

-- --------------------------------------------------------

--
-- Table structure for table `order_has_status`
--

CREATE TABLE `order_has_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_has_status`
--

INSERT INTO `order_has_status` (`id`, `created_at`, `updated_at`, `order_id`, `status_id`, `user_id`, `comment`) VALUES
(19, '2022-01-17 21:58:36', NULL, 612, 1, 39, 'Local order'),
(20, '2022-01-17 22:00:47', NULL, 612, 9, 39, ''),
(21, '2022-01-17 22:01:22', NULL, 613, 1, 39, 'Local order'),
(22, '2022-01-17 22:03:15', NULL, 614, 1, 39, 'Local order'),
(23, '2022-01-17 22:03:48', NULL, 614, 9, 39, ''),
(24, '2022-01-17 22:03:51', NULL, 613, 9, 39, ''),
(25, '2022-01-17 22:07:43', NULL, 615, 1, 39, 'Local order'),
(26, '2022-01-17 22:08:29', NULL, 615, 9, 39, ''),
(27, '2022-01-17 22:10:10', NULL, 616, 1, 39, 'Local order'),
(28, '2022-01-17 22:10:30', NULL, 616, 9, 39, ''),
(29, '2022-01-22 17:42:53', NULL, 617, 1, 39, 'Local order'),
(30, '2022-01-22 17:43:45', NULL, 617, 9, 39, ''),
(31, '2022-01-23 21:21:21', NULL, 618, 1, 39, 'Local order'),
(32, '2022-01-23 21:21:58', NULL, 618, 9, 39, ''),
(33, '2022-01-23 21:22:48', NULL, 618, 9, 39, ''),
(34, '2022-02-09 03:16:09', NULL, 620, 3, 45, ''),
(35, '2022-02-09 03:16:24', NULL, 619, 9, 45, ''),
(36, '2022-02-09 03:16:28', NULL, 620, 5, 45, ''),
(37, '2022-02-09 03:16:33', NULL, 620, 7, 45, ''),
(38, '2022-02-09 03:16:35', NULL, 620, 11, 45, ''),
(39, '2022-02-12 09:23:52', NULL, 622, 1, 45, 'Local order'),
(40, '2022-02-12 10:03:08', NULL, 623, 1, 45, 'Local order'),
(41, '2022-02-12 11:16:25', NULL, 624, 1, 45, 'Local order'),
(42, '2022-02-12 11:41:30', NULL, 625, 1, 45, 'Local order'),
(43, '2022-02-16 21:31:32', NULL, 622, 10, 45, 'Local ordering updated'),
(44, '2022-02-16 21:33:00', NULL, 625, 9, 45, ''),
(45, '2022-02-16 21:39:05', NULL, 626, 1, 36, 'Local order'),
(46, '2022-02-16 21:39:50', NULL, 626, 3, 36, ''),
(47, '2022-02-16 21:40:29', NULL, 626, 5, 36, ''),
(48, '2022-02-16 21:40:42', NULL, 626, 7, 36, ''),
(49, '2022-02-16 21:42:35', NULL, 626, 11, 36, ''),
(50, '2022-02-18 15:52:30', NULL, 622, 10, 45, 'Local ordering updated'),
(51, '2022-02-21 03:00:23', NULL, 622, 10, 45, 'Local ordering updated'),
(52, '2022-02-21 03:01:13', NULL, 622, 9, 45, ''),
(53, '2022-02-21 03:01:34', NULL, 627, 1, 45, 'Local order'),
(54, '2022-02-21 03:15:32', NULL, 628, 1, 45, 'Local order'),
(55, '2022-02-21 03:16:12', NULL, 627, 9, 45, ''),
(56, '2022-02-21 03:16:24', NULL, 628, 9, 45, ''),
(57, '2022-02-26 12:09:38', NULL, 630, 1, 45, 'Local order'),
(58, '2022-02-27 20:26:40', NULL, 632, 1, 45, 'Local order'),
(59, '2022-02-27 20:28:01', NULL, 632, 9, 45, ''),
(60, '2022-02-27 21:52:15', NULL, 630, 9, 45, ''),
(61, '2022-02-27 21:52:19', NULL, 631, 9, 45, ''),
(62, '2022-03-01 13:11:26', NULL, 633, 1, 45, 'Local order'),
(63, '2022-03-01 23:58:10', NULL, 633, 9, 45, ''),
(64, '2022-03-06 01:15:03', NULL, 637, 1, 45, 'Local order'),
(65, '2022-03-06 01:15:47', NULL, 637, 3, 45, ''),
(66, '2022-03-06 01:34:18', NULL, 637, 5, 45, ''),
(67, '2022-03-06 01:34:21', NULL, 637, 7, 45, ''),
(68, '2022-03-06 01:34:24', NULL, 637, 11, 45, ''),
(69, '2022-03-06 01:34:27', NULL, 636, 9, 45, ''),
(70, '2022-03-06 01:34:30', NULL, 635, 9, 45, ''),
(71, '2022-03-06 01:34:32', NULL, 634, 9, 45, ''),
(72, '2022-03-06 09:20:19', NULL, 638, 1, 45, 'Local order'),
(73, '2022-03-06 09:25:17', NULL, 638, 3, 45, ''),
(74, '2022-03-06 09:25:19', NULL, 638, 5, 45, ''),
(75, '2022-03-06 09:25:23', NULL, 638, 7, 45, ''),
(76, '2022-03-06 09:25:25', NULL, 638, 11, 45, ''),
(77, '2022-03-30 01:37:44', NULL, 650, 1, 56, 'Local order'),
(78, '2022-04-10 22:06:27', NULL, 657, 1, 45, 'Local order'),
(79, '2022-04-11 09:13:31', NULL, 658, 1, 45, 'Local order'),
(80, '2022-04-11 11:46:04', NULL, 659, 1, 45, 'Local order'),
(81, '2022-04-11 11:48:07', NULL, 659, 3, 45, ''),
(82, '2022-04-11 11:48:13', NULL, 659, 5, 45, ''),
(83, '2022-04-11 11:48:16', NULL, 659, 7, 45, ''),
(84, '2022-04-11 11:48:18', NULL, 659, 11, 45, ''),
(85, '2022-04-11 11:56:06', NULL, 660, 1, 45, 'Local order'),
(86, '2022-04-11 11:56:41', NULL, 661, 1, 45, 'Local order'),
(87, '2022-04-11 11:59:27', NULL, 661, 3, 45, ''),
(88, '2022-04-12 00:46:04', NULL, 662, 1, 56, 'Local order'),
(89, '2022-04-13 12:37:12', NULL, 663, 1, 45, 'Local order'),
(90, '2022-04-14 14:42:43', NULL, 672, 3, 45, ''),
(91, '2022-04-15 01:54:31', NULL, 650, 9, 56, ''),
(92, '2022-04-15 01:54:34', NULL, 662, 9, 56, ''),
(93, '2022-04-15 01:54:39', NULL, 642, 9, 56, ''),
(94, '2022-04-15 01:54:39', NULL, 644, 9, 56, ''),
(95, '2022-04-15 15:40:50', NULL, 672, 5, 45, '');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `showAsLink` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `created_at`, `updated_at`, `title`, `content`, `showAsLink`) VALUES
(1, '2021-12-30 22:33:44', '2022-03-05 21:27:51', 'الشروط والأحكام', '<h2><strong>شروط استخدام موقع EBMENU</strong></h2>\r\n\r\n<p><strong>تحكم شروط الاستخدام هذه استخدامك لموقع EBMENU ، وما لم يُنص على خلاف ذلك ، على استخدامك لأي موقع ويب أو تطبيق جوال آخر مملوك أو مُدار من قبل مؤسسة إبكار التجارية&nbsp;أو يتم تشغيله نيابة عنا&nbsp;(يشار إليها&nbsp;باسم &quot;المواقع الإلكترونية&quot;). يرجى قراءة شروط الاستخدام هذه بعناية قبل استخدام المواقع الإلكترونية.</strong></p>\r\n\r\n<h3><strong>الموافقة على الشروط</strong></h3>\r\n\r\n<p><strong>باستخدام مواقع الويب ، فإنك توافق على شروط الاستخدام هذه وسياسة الخصوصية العامة عبر الإنترنت لـ EBMENU (للزوار الذين تبلغ أعمارهم ثمانية عشر عامًا أو أكثر) أو سياسة خصوصية الأطفال عبر الإنترنت (للزوار الذين تقل أعمارهم عن ثمانية عشر (18) عامًا العمر) التي تم تضمينها هنا بالإشارة. في كل مرة تستخدم فيها المواقع الإلكترونية ، فإنك تؤكد من جديد موافقتك على شروط الاستخدام السارية في ذلك الوقت. إذا كنت لا ترغب في الالتزام بشروط الاستخدام هذه ، فإن الحل الوحيد لك هو التوقف عن استخدام المواقع الإلكترونية.</strong></p>\r\n\r\n<p><strong>يجوز لـموقع&nbsp;EBMENU&nbsp;تغيير شروط الاستخدام هذه في أي وقت ووفقًا لتقديرها الخاص. تسري شروط الاستخدام المعدلة فور نشرها وأنت توافق على شروط الاستخدام الجديدة المنشورة من خلال الاستمرار في استخدامك للمواقع الإلكترونية. أنت مسؤول عن البقاء على اطلاع بأي تغييرات. إذا كنت لا توافق على شروط الاستخدام المعدلة ، فإن العلاج الوحيد لك هو التوقف عن استخدام المواقع الإلكترونية.</strong></p>\r\n\r\n<h3><strong>حسابات</strong></h3>\r\n\r\n<p><strong>قد يُطلب منك إنشاء حساب وتحديد كلمة مرور لاستخدام ميزات معينة على مواقع الويب. أنت توافق على تقديم معلومات صحيحة ودقيقة وحديثة وكاملة عن نفسك والحفاظ عليها وتحديثها كما هو مطلوب من خلال عمليات التسجيل. لا يجوز لك انتحال شخصية أي شخص أو كيان أو تحريف هويتك أو الانتماء إلى أي شخص أو كيان ، بما في ذلك استخدام اسم المستخدم أو كلمة المرور أو معلومات الحساب الأخرى لشخص آخر.</strong></p>\r\n\r\n<p><strong>أنت مسؤول مسؤولية كاملة عن الحفاظ على سرية كلمة المرور الخاصة بك وحسابك. وأنت مسؤول مسؤولية كاملة عن جميع الأنشطة التي تقوم بها أنت أو أي شخص يستخدم حسابك. أنت توافق على حماية كلمة المرور الخاصة بك من وصول الآخرين. إذا كنت تعتقد أن حسابك قد تعرض للخطر ، فيجب عليك الاتصال بنا على الفور عبر البريد على العنوان التالي: support@ebmenu.com أو إرسال رسالة إلى خدمة الدردشة الحية الخاصة بنا. أنت توافق على تعويض مؤسسة إبكار وإبعاد الضرر عنها عن الخسائر التي تكبدتها مؤسسة إبكار أو طرف آخر بسبب استخدام شخص آخر لحسابك نتيجة لإخفاقك في استخدام العناية المعقولة لحماية كلمة المرور الخاصة بك.</strong></p>\r\n\r\n<h3><strong>الإلغاء</strong></h3>\r\n\r\n<p><strong>لديك الحق في إلغاء طلبك قبل قبوله من قبل المطعم، بعد هذه النقطة ، سيبدأ المطعم في إعداد الطعام وبالتالي لن يكون من الممكن استرداد الأموال. في حالة طلب الدفع نقدًا عند التسليم ، سيتم تسليم طلبك وفقًا للتعليمات ويجب على المندوب&nbsp;تحصيل النقود. في حالة رفض العميل دفع الأموال النقدية للمندوب ، تحتفظ مؤسسة إبكار بالحق في الحد من مدفوعاته النقدية المستقبلية.</strong></p>\r\n\r\n<h3><strong>نشر المحتوى بواسطة مستخدمين آخرين</strong></h3>\r\n\r\n<p><strong>مؤسسة إبكار ليست مسؤولة عن ، ولا تصادق ، على المحتوى في أي منشور يتم نشره بواسطة مستخدمين آخرين على المواقع الإلكترونية. لا تتحمل المؤسسة تحت أي ظرف من الظروف المسؤولية ، بشكل مباشر أو غير مباشر ، عن أي خسارة أو ضرر تسبب فيه أو يُزعم أنه حدث لك فيما يتعلق بأي محتوى تم نشره بواسطة طرف ثالث على المواقع الإلكترونية. إذا علمت بإساءة استخدام المواقع الإلكترونية من قبل أي شخص ، فيرجى الاتصال بـنا عن طريق البريد على: support@ebmenu.com أو إرسال رسالة إلى خدمة الدردشة الحية الخاصة بنا.</strong></p>\r\n\r\n<h3><br />\r\n<strong>الأنشطة المحظورة على المواقع الإلكترونية</strong></h3>\r\n\r\n<p><strong>فيما يلي قائمة جزئية لأنواع السلوك غير القانوني أو المحظور على المواقع الإلكترونية. تحتفظ مؤسسة إبكار بالحق في التحقيق واتخاذ الإجراءات القانونية المناسبة ضد أي شخص ، وفقًا لتقدير مؤسسة إبكار وحده ، يشارك في أي من الأنشطة المحظورة. تشمل الأنشطة المحظورة - على سبيل المثال لا الحصر - ما يلي:</strong></p>\r\n\r\n<p><strong>- استخدام مواقع الويب لأي غرض ينتهك القوانين أو اللوائح المحلية&nbsp;؛<br />\r\n- نشر محتوى ينتهك حقوق الملكية الفكرية أو حقوق الخصوصية أو حقوق الدعاية أو حقوق الأسرار التجارية أو أي حقوق أخرى لأي طرف ؛<br />\r\n- نشر محتوى غير قانوني أو فاحش أو تشهيري أو تهديد أو مضايقة أو مسيئة أو افترائية أو بغيضة أو محرجة لأي شخص أو كيان آخر على النحو الذي تحدده المؤسسة وفقًا لتقديرها وحدها أو وفقًا لمعايير المجتمع المحلي ؛<br />\r\n- نشر المحتوى الذي يشكل تنمرًا عبر الإنترنت ، على النحو الذي تحدده المؤسسة وفقًا لتقديرها الخاص ؛<br />\r\n- نشر محتوى يصور أي سلوك خطير أو يهدد الحياة أو ينطوي على مخاطر ؛<br />\r\n- نشر أرقام الهواتف أو عناوين الشوارع أو أسماء العائلة لأي شخص ؛<br />\r\n- إرسال عناوين URL إلى مواقع ويب خارجية أو أي شكل من أشكال HTML أو كود البرمجة ؛<br />\r\n- نشر أي شيء قد يكون &quot;بريدًا عشوائيًا&quot; حسب ما يقتضيه الأمر</strong></p>', 1),
(2, '2021-12-30 22:33:44', '2022-01-08 19:59:46', 'كيف يعمل؟', '<p>ابحث عن مطعم:</p>\r\n\r\n<p>أدخل عنوانك أو اختر من الخريطة على الصفحة الأولى لتعيين موقعك. قم بإلقاء نظرة على المطاعم التي توصل إلى عنوانك. اختر مطعمًا واغوص في قائمته اللذيذة.</p>\r\n\r\n<p>اختر طبقًا:</p>\r\n\r\n<p>اختر من الأطباق المعروضة. إذا كان هناك خيار لإضافة منتجات أو صلصة ، للبيتزا على سبيل المثال ، فسيُطلب منك اختيارك مباشرة بعد النقر فوق الطبق. سيتم إرسال طلبك على الجانب الأيمن من الصفحة.</p>\r\n\r\n<p>قم بإنهاء طلبك واختر نوع الدفع:</p>\r\n\r\n<p>عند استكمال الطلب بطعام لذيذ ، انقر فوق &quot;شراء&quot;. الآن عليك فقط كتابة عنوانك واختيار نوع الدفع كما تتبع التعليمات الموجودة على الصفحة.</p>\r\n\r\n<p>توصيل:</p>\r\n\r\n<p>ستتلقى رسالة نصية قصيرة لتأكيد طلبك ومعلومات حول وقت التسليم و .....</p>\r\n\r\n<p>هذا كل شئ!</p>\r\n\r\n<p>&nbsp;</p>', 1),
(4, '2022-03-05 21:16:49', '2022-03-05 21:20:26', 'سياسة الخصوصية', '<h3><strong>الخصوصية وبيان سريّة المعلومات</strong></h3>\r\n\r\n<p>نقدر مخاوفكم واهتمامكم بشأن خصوصية بياناتكم على شبكة الإنترنت.</p>\r\n\r\n<p>لقد تم إعداد هذه السياسة لمساعدتكم في تفهم طبيعة البيانات التي نقوم بتجميعها منكم عند زيارتكم لموقعنا على شبكة الانترنت وكيفية تعاملنا مع هذه البيانات الشخصية.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>التصفح</strong></h3>\r\n\r\n<p>لم نقم بتصميم هذا الموقع من أجل تجميع بياناتك الشخصية من جهاز الكمبيوتر الخاص بك أثناء تصفحك لهذا الموقع, وإنما سيتم فقط استخدام البيانات المقدمة من قبلك بمعرفتك ومحض إرادتك.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>عمليات الشراء بالبطاقة</strong></h3>\r\n\r\n<p>إن عمليات الشراء بالبطاقات الائتمانية او بطاقات مدى وغيرها غير ظاهرة وهي محمية حماية عالية من قبل البنك الخاص بك ومن قبل بوابة الدفع الالكترونية المقدمة من البنك ولا يمكن لاحد الاطلاع عليها من موظفينا او اي شخص اخر اياً كان</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>الروابط بالمواقع الأخرى على شبكة الإنترنت</strong></h3>\r\n\r\n<p>لايشمل موقعنا اي روابط طرف ثالث مثل الاعلانات او غيرها</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>إفشاء المعلومات</strong></h3>\r\n\r\n<p>سنحافظ في كافة الأوقات على خصوصية وسرية كافة البيانات الشخصية التي نتحصل عليها. ولن يتم إفشاء هذه المعلومات إلا إذا كان ذلك مطلوباً بموجب أي قانون أو عندما نعتقد بحسن نية أن مثل هذا الإجراء سيكون مطلوباً أو مرغوباً فيه للتمشي مع القانون , أو للدفاع عن أو حماية حقوق الملكية الخاصة بهذا الموقع أو الجهات المستفيدة منه.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>البيانات اللازمة لتنفيذ المعاملات المطلوبة من قبلك</strong></h3>\r\n\r\n<p>عندما نحتاج إلى أية بيانات خاصة بك , فإننا سنطلب منك تقديمها بمحض إرادتك. حيث ستساعدنا هذه المعلومات في الاتصال بك وتنفيذ طلباتك حيثما كان ذلك ممكنناً.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>عند الاتصال بنا</strong></h3>\r\n\r\n<p>سيتم التعامل مع كافة البيانات المقدمة من قبلك على أساس أنها سرية . تتطلب النماذج التي يتم تقديمها مباشرة على الشبكة تقديم البيانات التي ستساعدنا في تحسين موقعنا.سيتم استخدام البيانات التي يتم تقديمها من قبلك في الرد على كافة استفساراتك , ملاحظاتك , أو طلباتك .</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>إفشاء المعلومات لأي طرف ثالث</strong></h3>\r\n\r\n<p>لن نقوم ببيع , المتاجرة , تأجير , أو إفشاء أية معلومات لمصلحة أي طرف ثالث خارج هذا الموقع, أو المواقع التابعة له.وسيتم الكشف عن المعلومات فقط في حالة صدور أمر بذلك من قبل أي سلطة قضائية أو تنظيمية.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>الاتصال بنا</strong></h3>\r\n\r\n<p>يمكنكم الاتصال بنا عند الحاجة من خلال البريد الالكتروني Support@ebmenu.com&nbsp;او الرقم الخاص بنا او عبر منصات التواصل االاجتماعي الظاهر في اسفل الصفحة</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>اخيراً</strong></h3>\r\n\r\n<p>إن مخاوفك واهتمامك بشأن سرية وخصوصية البيانات تعتبر مسألة في غاية الأهمية بالنسبة لنا. نحن نأمل أن يتم تحقيق ذلك من خلال هذه السياسة.</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('kartacafe@hotmail.com', '$2y$10$VVOGKxySlpY7Vr76wwCv4uvXC3y1STY3Luy4l5/UZ9mBmK4NULeAG', '2022-01-11 21:15:10'),
('alettacafe.sa@gmail.com', '$2y$10$1uQlkIerKQGxUdPFJ92N6OcHtBkF6fMjcDfix1D2FlnCkuzBzRCbC', '2022-01-16 14:08:18'),
('aseel-aitah@hotmail.com', '$2y$10$LZV9i/EZNzDkMknGjDV1C.o7/z7nwlVKo78hRZAmXOklA96BmkZjG', '2022-02-20 22:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `paths`
--

CREATE TABLE `paths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage restorants', 'web', '2021-12-30 22:33:43', '2021-12-30 22:33:43'),
(2, 'manage drivers', 'web', '2021-12-30 22:33:43', '2021-12-30 22:33:43'),
(3, 'manage orders', 'web', '2021-12-30 22:33:43', '2021-12-30 22:33:43'),
(4, 'edit settings', 'web', '2021-12-30 22:33:43', '2021-12-30 22:33:43'),
(5, 'view orders', 'web', '2021-12-30 22:33:43', '2021-12-30 22:33:43'),
(6, 'edit restorant', 'web', '2021-12-30 22:33:43', '2021-12-30 22:33:43'),
(7, 'edit orders', 'web', '2021-12-30 22:33:43', '2021-12-30 22:33:43'),
(8, 'access backedn', 'web', '2021-12-30 22:33:43', '2021-12-30 22:33:43');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `limit_items` int(11) NOT NULL DEFAULT '0' COMMENT '0 is unlimited',
  `limit_orders` int(11) NOT NULL DEFAULT '0' COMMENT '0 is unlimited',
  `price` double(8,2) NOT NULL,
  `period` int(11) NOT NULL DEFAULT '1' COMMENT '1 - monthly, 2-anually',
  `paddle_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `description` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `features` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `limit_views` int(11) NOT NULL DEFAULT '0' COMMENT '0 is unlimited',
  `enable_ordering` int(11) NOT NULL DEFAULT '1',
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mollie_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `name`, `limit_items`, `limit_orders`, `price`, `period`, `paddle_id`, `created_at`, `updated_at`, `deleted_at`, `description`, `features`, `limit_views`, `enable_ordering`, `stripe_id`, `paypal_id`, `mollie_id`, `paystack_id`) VALUES
(1, 'تجربة', 10, 0, 0.00, 1, '', '2021-12-30 22:33:49', '2022-01-06 00:28:31', NULL, 'يمكنك تجربة القائمة الرقمية بهذه الخطة', 'الوصول الكامل إلى أداة QR ، والوصول إلى أداة إنشاء القائمة ، وطرق عرض غير محدودة ، و 10 عناصر في القائمة', 0, 2, '', NULL, NULL, NULL),
(2, 'الخطة الفضية شهري', 20, 0, 59.00, 1, '', '2021-12-30 22:33:49', '2022-03-04 17:21:49', NULL, 'للمطاعم الصغيرة والمتوسطة', 'الوصول الكامل إلى أداة QR ، الوصول إلى أداة إنشاء القائمة ، مشاهدات غير محدودة ، 20 عنصر في القائمة ، دعم مخصص', 0, 2, '', NULL, NULL, NULL),
(3, 'الخطة الذهبية شهري', 0, 0, 99.00, 1, '', '2021-12-30 22:33:49', '2022-03-04 17:22:17', NULL, 'للمطاعم المتوسطة والكبيرة', 'قبول الطلبات ، إدارة الطلب ، الوصول الكامل إلى أداة QR ، الوصول إلى أداة إنشاء القائمة ، طرق عرض غير محدودة ، عناصر غير محدودة في القائمة ، دعم مخصص', 0, 2, '', NULL, NULL, NULL),
(4, 'الخطة الذهبية سنوي', 0, 0, 799.00, 2, '', '2022-01-06 00:22:19', '2022-03-04 17:21:07', '2022-03-04 17:21:07', 'للمطاعم المتوسطة والكبيرة', 'قبول الطلبات ، إدارة الطلب ، الوصول الكامل إلى أداة QR ، الوصول إلى أداة إنشاء القائمة ، طرق عرض غير محدودة ، عناصر غير محدودة في القائمة ، أوامر غير محدودة ، دعم مخصص', 0, 1, '', NULL, NULL, NULL),
(5, 'الخطة الفضية سنوي', 20, 0, 399.00, 2, '', '2022-01-06 00:26:01', '2022-03-04 17:22:40', NULL, 'للمطاعم الصغيرة والمتوسطة', 'الوصول الكامل إلى أداة QR ، الوصول إلى أداة إنشاء القائمة ، مشاهدات غير محدودة ، 20 عنصر في القائمة ، دعم مخصص', 0, 2, '', NULL, NULL, NULL),
(6, 'الخطة الذهبية سنوي', 0, 0, 499.00, 2, '', '2022-03-04 17:23:44', '2022-03-04 17:23:44', NULL, 'الخطة الذهبية سنوي', 'قبول الطلبات ، إدارة الطلب ، الوصول الكامل إلى أداة QR ، الوصول إلى أداة إنشاء القائمة ، طرق عرض غير محدودة ، عناصر غير محدودة في القائمة ، دعم مخصص', 0, 2, '', NULL, NULL, NULL),
(7, 'خطة استقبال الطلبات', 0, 0, 0.00, 2, '', '2022-03-04 17:29:22', '2022-03-04 17:29:22', NULL, 'عقد سنوي، للتفعيل يرجى التواصل واتساب على الرقم 0558032037 او على البريد الالكتروني info@ebmenu.com', 'استقبال الطلبات عبر التطبيق، تفعيل طرق الدفع مدى وفيزا وابل باي، اضافة منتجات لا محدودة، كوبونات الخصم، طلبات الاستلام والطلبات المحلية، امكانية تفعيل خيار التوصيل، وغيرها من المميزات', 0, 1, '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `post_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `rateable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rateable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restoareas`
--

CREATE TABLE `restoareas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restoareas`
--

INSERT INTO `restoareas` (`id`, `name`, `restaurant_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Inside', 1, NULL, NULL, NULL),
(2, 'Terrasse', 1, NULL, NULL, NULL),
(3, 'Inside', 2, NULL, NULL, NULL),
(4, 'Terrasse', 2, NULL, NULL, NULL),
(5, 'Inside', 3, NULL, NULL, NULL),
(6, 'Terrasse', 3, NULL, NULL, NULL),
(7, 'Inside', 4, NULL, NULL, NULL),
(8, 'Terrasse', 4, NULL, NULL, NULL),
(9, 'Inside', 5, NULL, NULL, NULL),
(10, 'Terrasse', 5, NULL, NULL, NULL),
(11, 'Inside', 6, NULL, NULL, NULL),
(12, 'Terrasse', 6, NULL, NULL, NULL),
(13, 'Inside', 7, NULL, NULL, NULL),
(14, 'Terrasse', 7, NULL, NULL, NULL),
(15, 'Inside', 8, NULL, NULL, NULL),
(16, 'Terrasse', 8, NULL, NULL, NULL),
(17, 'Inside', 9, NULL, NULL, NULL),
(18, 'Terrasse', 9, NULL, NULL, NULL),
(19, 'Inside', 10, NULL, NULL, NULL),
(20, 'Terrasse', 10, NULL, NULL, NULL),
(21, 'Inside', 11, NULL, NULL, NULL),
(22, 'Terrasse', 11, NULL, NULL, NULL),
(23, 'Inside', 12, NULL, NULL, NULL),
(24, 'Terrasse', 12, NULL, NULL, NULL),
(25, 'Inside', 13, NULL, NULL, NULL),
(26, 'Terrasse', 13, NULL, NULL, NULL),
(27, 'Inside', 14, NULL, NULL, NULL),
(28, 'Terrasse', 14, NULL, NULL, NULL),
(29, 'Inside', 15, NULL, NULL, NULL),
(30, 'Terrasse', 15, NULL, NULL, NULL),
(31, 'Inside', 16, NULL, NULL, NULL),
(32, 'Terrasse', 16, NULL, NULL, NULL),
(33, 'up', 17, '2021-12-31 02:34:20', '2021-12-31 02:34:20', NULL),
(34, 'خارجي', 26, '2022-01-12 00:36:02', '2022-01-12 00:36:02', NULL),
(35, 'الجلسات الداخلية', 18, '2022-01-12 08:43:54', '2022-01-12 08:44:09', NULL),
(36, 'الجلسات الخارجية', 18, '2022-01-12 08:44:21', '2022-01-12 08:44:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2021-12-30 22:33:43', '2021-12-30 22:33:43'),
(2, 'owner', 'web', '2021-12-30 22:33:43', '2021-12-30 22:33:43'),
(3, 'driver', 'web', '2021-12-30 22:33:43', '2021-12-30 22:33:43'),
(4, 'client', 'web', '2021-12-30 22:33:43', '2021-12-30 22:33:43'),
(5, 'staff', 'web', '2021-12-30 22:33:43', '2021-12-30 22:33:43');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 2),
(6, 2),
(8, 2),
(7, 3),
(8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `search` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restorant_details_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `restorant_details_cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `playstore` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `appstore` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `maps_api_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `delivery` double(8,2) NOT NULL DEFAULT '0.00',
  `typeform` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobile_info_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobile_info_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_options` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '{}',
  `site_logo_dark` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_fields` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `created_at`, `updated_at`, `site_name`, `site_logo`, `search`, `restorant_details_image`, `restorant_details_cover_image`, `description`, `header_title`, `header_subtitle`, `currency`, `facebook`, `instagram`, `playstore`, `appstore`, `maps_api_key`, `delivery`, `typeform`, `mobile_info_title`, `mobile_info_subtitle`, `order_options`, `site_logo_dark`, `order_fields`) VALUES
(1, '2021-12-30 22:33:43', '2022-04-15 23:56:43', 'EBMENU', '/default/logo_qrzebra.png', '/default/cover.jpg', 'e4a17590-9be0-44a2-bc52-4b919fd3b216', '/default/cover.jpg', 'electronic food menus', '', '', 'USD', '', 'ebkarest', '', '', 'AIzaSyCZhq0g1x1ttXPa1QB3ylcDQPTAzp_KUgA', 0.00, '', '', '', '{}', '/default/logo_qrzebra_white.png', '[{\r\n       \"title\": \"Customer name\",\r\n        \"key\": \"customer_name\",\r\n        \"ftype\": \"input\",\r\n        \"type\": \"name\",\r\n      \"value\": \"\"\r\n\r\n   \r\n  }\r\n\r\n\r\n]');

-- --------------------------------------------------------

--
-- Table structure for table `simple_delivery_areas`
--

CREATE TABLE `simple_delivery_areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` double(8,2) NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_delivery_areas`
--

INSERT INTO `simple_delivery_areas` (`id`, `name`, `cost`, `restaurant_id`, `created_at`, `updated_at`) VALUES
(1, 'Nearby', 10.00, 1, NULL, NULL),
(2, 'Faraway', 15.00, 1, NULL, NULL),
(3, 'Nearby', 10.00, 2, NULL, NULL),
(4, 'Faraway', 15.00, 2, NULL, NULL),
(5, 'Nearby', 10.00, 3, NULL, NULL),
(6, 'Faraway', 15.00, 3, NULL, NULL),
(7, 'Nearby', 10.00, 4, NULL, NULL),
(8, 'Faraway', 15.00, 4, NULL, NULL),
(9, 'Nearby', 10.00, 5, NULL, NULL),
(10, 'Faraway', 15.00, 5, NULL, NULL),
(11, 'Nearby', 10.00, 6, NULL, NULL),
(12, 'Faraway', 15.00, 6, NULL, NULL),
(13, 'Nearby', 10.00, 7, NULL, NULL),
(14, 'Faraway', 15.00, 7, NULL, NULL),
(15, 'Nearby', 10.00, 8, NULL, NULL),
(16, 'Faraway', 15.00, 8, NULL, NULL),
(17, 'Nearby', 10.00, 9, NULL, NULL),
(18, 'Faraway', 15.00, 9, NULL, NULL),
(19, 'Nearby', 10.00, 10, NULL, NULL),
(20, 'Faraway', 15.00, 10, NULL, NULL),
(21, 'Nearby', 10.00, 11, NULL, NULL),
(22, 'Faraway', 15.00, 11, NULL, NULL),
(23, 'Nearby', 10.00, 12, NULL, NULL),
(24, 'Faraway', 15.00, 12, NULL, NULL),
(25, 'Nearby', 10.00, 13, NULL, NULL),
(26, 'Faraway', 15.00, 13, NULL, NULL),
(27, 'Nearby', 10.00, 14, NULL, NULL),
(28, 'Faraway', 15.00, 14, NULL, NULL),
(29, 'Nearby', 10.00, 15, NULL, NULL),
(30, 'Faraway', 15.00, 15, NULL, NULL),
(31, 'Nearby', 10.00, 16, NULL, NULL),
(32, 'Faraway', 15.00, 16, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sms_verifications`
--

CREATE TABLE `sms_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`, `alias`) VALUES
(1, 'Just created', 'just_created'),
(2, 'Accepted by admin', 'accepted_by_admin'),
(3, 'Accepted by restaurant', 'accepted_by_restaurant'),
(4, 'Assigned to driver', 'assigned_to_driver'),
(5, 'Prepared', 'prepared'),
(6, 'Picked up', 'picked_up'),
(7, 'Delivered', 'delivered'),
(8, 'Rejected by admin', 'rejected_by_admin'),
(9, 'Rejected by restaurant', 'rejected_by_restaurant'),
(10, 'Updated', 'updated'),
(11, 'Closed', 'closed'),
(12, 'Rejected by driver', 'rejected_by_driver'),
(13, 'Accepted by driver', 'accepted_by_driver');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL DEFAULT '4',
  `restoarea_id` bigint(20) UNSIGNED DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `x` double(8,2) DEFAULT NULL,
  `y` double(8,2) DEFAULT NULL,
  `w` double(8,2) DEFAULT NULL,
  `h` double(8,2) DEFAULT NULL,
  `rounded` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `name`, `size`, `restoarea_id`, `restaurant_id`, `created_at`, `updated_at`, `deleted_at`, `x`, `y`, `w`, `h`, `rounded`) VALUES
(1, 'Table 1', 4, 1, 1, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(2, 'Table 2', 4, 1, 1, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(3, 'Table 3', 4, 1, 1, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(4, 'Table 4', 4, 1, 1, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(5, 'Table 5', 4, 1, 1, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(6, 'Table 6', 4, 1, 1, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(7, 'Table 7', 4, 1, 1, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(8, 'Table 8', 4, 1, 1, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(9, 'Table 9', 4, 1, 1, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(10, 'Table 10', 4, 1, 1, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(11, 'Table 1', 4, 2, 1, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(12, 'Table 2', 4, 2, 1, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(13, 'Table 3', 4, 2, 1, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(14, 'Table 4', 4, 2, 1, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(15, 'Table 5', 4, 2, 1, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(16, 'Table 1', 4, 3, 2, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(17, 'Table 2', 4, 3, 2, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(18, 'Table 3', 4, 3, 2, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(19, 'Table 4', 4, 3, 2, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(20, 'Table 5', 4, 3, 2, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(21, 'Table 6', 4, 3, 2, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(22, 'Table 7', 4, 3, 2, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(23, 'Table 8', 4, 3, 2, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(24, 'Table 9', 4, 3, 2, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(25, 'Table 10', 4, 3, 2, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(26, 'Table 1', 4, 4, 2, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(27, 'Table 2', 4, 4, 2, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(28, 'Table 3', 4, 4, 2, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(29, 'Table 4', 4, 4, 2, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(30, 'Table 5', 4, 4, 2, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(31, 'Table 1', 4, 5, 3, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(32, 'Table 2', 4, 5, 3, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(33, 'Table 3', 4, 5, 3, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(34, 'Table 4', 4, 5, 3, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(35, 'Table 5', 4, 5, 3, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(36, 'Table 6', 4, 5, 3, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(37, 'Table 7', 4, 5, 3, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(38, 'Table 8', 4, 5, 3, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(39, 'Table 9', 4, 5, 3, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(40, 'Table 10', 4, 5, 3, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(41, 'Table 1', 4, 6, 3, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(42, 'Table 2', 4, 6, 3, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(43, 'Table 3', 4, 6, 3, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(44, 'Table 4', 4, 6, 3, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(45, 'Table 5', 4, 6, 3, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(46, 'Table 1', 4, 7, 4, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(47, 'Table 2', 4, 7, 4, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(48, 'Table 3', 4, 7, 4, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(49, 'Table 4', 4, 7, 4, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(50, 'Table 5', 4, 7, 4, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(51, 'Table 6', 4, 7, 4, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(52, 'Table 7', 4, 7, 4, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(53, 'Table 8', 4, 7, 4, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(54, 'Table 9', 4, 7, 4, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(55, 'Table 10', 4, 7, 4, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(56, 'Table 1', 4, 8, 4, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(57, 'Table 2', 4, 8, 4, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(58, 'Table 3', 4, 8, 4, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(59, 'Table 4', 4, 8, 4, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(60, 'Table 5', 4, 8, 4, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(61, 'Table 1', 4, 9, 5, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(62, 'Table 2', 4, 9, 5, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(63, 'Table 3', 4, 9, 5, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(64, 'Table 4', 4, 9, 5, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(65, 'Table 5', 4, 9, 5, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(66, 'Table 6', 4, 9, 5, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(67, 'Table 7', 4, 9, 5, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(68, 'Table 8', 4, 9, 5, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(69, 'Table 9', 4, 9, 5, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(70, 'Table 10', 4, 9, 5, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(71, 'Table 1', 4, 10, 5, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(72, 'Table 2', 4, 10, 5, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(73, 'Table 3', 4, 10, 5, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(74, 'Table 4', 4, 10, 5, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(75, 'Table 5', 4, 10, 5, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(76, 'Table 1', 4, 11, 6, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(77, 'Table 2', 4, 11, 6, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(78, 'Table 3', 4, 11, 6, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(79, 'Table 4', 4, 11, 6, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(80, 'Table 5', 4, 11, 6, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(81, 'Table 6', 4, 11, 6, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(82, 'Table 7', 4, 11, 6, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(83, 'Table 8', 4, 11, 6, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(84, 'Table 9', 4, 11, 6, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(85, 'Table 10', 4, 11, 6, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(86, 'Table 1', 4, 12, 6, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(87, 'Table 2', 4, 12, 6, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(88, 'Table 3', 4, 12, 6, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(89, 'Table 4', 4, 12, 6, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(90, 'Table 5', 4, 12, 6, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(91, 'Table 1', 4, 13, 7, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(92, 'Table 2', 4, 13, 7, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(93, 'Table 3', 4, 13, 7, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(94, 'Table 4', 4, 13, 7, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(95, 'Table 5', 4, 13, 7, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(96, 'Table 6', 4, 13, 7, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(97, 'Table 7', 4, 13, 7, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(98, 'Table 8', 4, 13, 7, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(99, 'Table 9', 4, 13, 7, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(100, 'Table 10', 4, 13, 7, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(101, 'Table 1', 4, 14, 7, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(102, 'Table 2', 4, 14, 7, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(103, 'Table 3', 4, 14, 7, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(104, 'Table 4', 4, 14, 7, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(105, 'Table 5', 4, 14, 7, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(106, 'Table 1', 4, 15, 8, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(107, 'Table 2', 4, 15, 8, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(108, 'Table 3', 4, 15, 8, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(109, 'Table 4', 4, 15, 8, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(110, 'Table 5', 4, 15, 8, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(111, 'Table 6', 4, 15, 8, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(112, 'Table 7', 4, 15, 8, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(113, 'Table 8', 4, 15, 8, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(114, 'Table 9', 4, 15, 8, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(115, 'Table 10', 4, 15, 8, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(116, 'Table 1', 4, 16, 8, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(117, 'Table 2', 4, 16, 8, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(118, 'Table 3', 4, 16, 8, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(119, 'Table 4', 4, 16, 8, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(120, 'Table 5', 4, 16, 8, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(121, 'Table 1', 4, 17, 9, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(122, 'Table 2', 4, 17, 9, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(123, 'Table 3', 4, 17, 9, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(124, 'Table 4', 4, 17, 9, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(125, 'Table 5', 4, 17, 9, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(126, 'Table 6', 4, 17, 9, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(127, 'Table 7', 4, 17, 9, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(128, 'Table 8', 4, 17, 9, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(129, 'Table 9', 4, 17, 9, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(130, 'Table 10', 4, 17, 9, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(131, 'Table 1', 4, 18, 9, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(132, 'Table 2', 4, 18, 9, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(133, 'Table 3', 4, 18, 9, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(134, 'Table 4', 4, 18, 9, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(135, 'Table 5', 4, 18, 9, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(136, 'Table 1', 4, 19, 10, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(137, 'Table 2', 4, 19, 10, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(138, 'Table 3', 4, 19, 10, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(139, 'Table 4', 4, 19, 10, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(140, 'Table 5', 4, 19, 10, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(141, 'Table 6', 4, 19, 10, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(142, 'Table 7', 4, 19, 10, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(143, 'Table 8', 4, 19, 10, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(144, 'Table 9', 4, 19, 10, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(145, 'Table 10', 4, 19, 10, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(146, 'Table 1', 4, 20, 10, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(147, 'Table 2', 4, 20, 10, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(148, 'Table 3', 4, 20, 10, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(149, 'Table 4', 4, 20, 10, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(150, 'Table 5', 4, 20, 10, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(151, 'Table 1', 4, 21, 11, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(152, 'Table 2', 4, 21, 11, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(153, 'Table 3', 4, 21, 11, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(154, 'Table 4', 4, 21, 11, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(155, 'Table 5', 4, 21, 11, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(156, 'Table 6', 4, 21, 11, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(157, 'Table 7', 4, 21, 11, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(158, 'Table 8', 4, 21, 11, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(159, 'Table 9', 4, 21, 11, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(160, 'Table 10', 4, 21, 11, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(161, 'Table 1', 4, 22, 11, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(162, 'Table 2', 4, 22, 11, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(163, 'Table 3', 4, 22, 11, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(164, 'Table 4', 4, 22, 11, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(165, 'Table 5', 4, 22, 11, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(166, 'Table 1', 4, 23, 12, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(167, 'Table 2', 4, 23, 12, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(168, 'Table 3', 4, 23, 12, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(169, 'Table 4', 4, 23, 12, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(170, 'Table 5', 4, 23, 12, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(171, 'Table 6', 4, 23, 12, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(172, 'Table 7', 4, 23, 12, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(173, 'Table 8', 4, 23, 12, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(174, 'Table 9', 4, 23, 12, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(175, 'Table 10', 4, 23, 12, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(176, 'Table 1', 4, 24, 12, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(177, 'Table 2', 4, 24, 12, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(178, 'Table 3', 4, 24, 12, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(179, 'Table 4', 4, 24, 12, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(180, 'Table 5', 4, 24, 12, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(181, 'Table 1', 4, 25, 13, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(182, 'Table 2', 4, 25, 13, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(183, 'Table 3', 4, 25, 13, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(184, 'Table 4', 4, 25, 13, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(185, 'Table 5', 4, 25, 13, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(186, 'Table 6', 4, 25, 13, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(187, 'Table 7', 4, 25, 13, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(188, 'Table 8', 4, 25, 13, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(189, 'Table 9', 4, 25, 13, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(190, 'Table 10', 4, 25, 13, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(191, 'Table 1', 4, 26, 13, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(192, 'Table 2', 4, 26, 13, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(193, 'Table 3', 4, 26, 13, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(194, 'Table 4', 4, 26, 13, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(195, 'Table 5', 4, 26, 13, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(196, 'Table 1', 4, 27, 14, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(197, 'Table 2', 4, 27, 14, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(198, 'Table 3', 4, 27, 14, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(199, 'Table 4', 4, 27, 14, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(200, 'Table 5', 4, 27, 14, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(201, 'Table 6', 4, 27, 14, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(202, 'Table 7', 4, 27, 14, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(203, 'Table 8', 4, 27, 14, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(204, 'Table 9', 4, 27, 14, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(205, 'Table 10', 4, 27, 14, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(206, 'Table 1', 4, 28, 14, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(207, 'Table 2', 4, 28, 14, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(208, 'Table 3', 4, 28, 14, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(209, 'Table 4', 4, 28, 14, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(210, 'Table 5', 4, 28, 14, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(211, 'Table 1', 4, 29, 15, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(212, 'Table 2', 4, 29, 15, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(213, 'Table 3', 4, 29, 15, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(214, 'Table 4', 4, 29, 15, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(215, 'Table 5', 4, 29, 15, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(216, 'Table 6', 4, 29, 15, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(217, 'Table 7', 4, 29, 15, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(218, 'Table 8', 4, 29, 15, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(219, 'Table 9', 4, 29, 15, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(220, 'Table 10', 4, 29, 15, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(221, 'Table 1', 4, 30, 15, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(222, 'Table 2', 4, 30, 15, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(223, 'Table 3', 4, 30, 15, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(224, 'Table 4', 4, 30, 15, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(225, 'Table 5', 4, 30, 15, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(226, 'Table 1', 4, 31, 16, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(227, 'Table 2', 4, 31, 16, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(228, 'Table 3', 4, 31, 16, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(229, 'Table 4', 4, 31, 16, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(230, 'Table 5', 4, 31, 16, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(231, 'Table 6', 4, 31, 16, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(232, 'Table 7', 4, 31, 16, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(233, 'Table 8', 4, 31, 16, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(234, 'Table 9', 4, 31, 16, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(235, 'Table 10', 4, 31, 16, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(236, 'Table 1', 4, 32, 16, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(237, 'Table 2', 4, 32, 16, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(238, 'Table 3', 4, 32, 16, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(239, 'Table 4', 4, 32, 16, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(240, 'Table 5', 4, 32, 16, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(241, '1', 4, 33, 17, '2021-12-31 02:34:36', '2021-12-31 02:34:36', NULL, NULL, NULL, NULL, NULL, 'no'),
(242, '1', 5, NULL, 26, '2022-01-12 00:04:32', '2022-01-12 00:04:32', NULL, NULL, NULL, NULL, NULL, 'no'),
(243, 'طاولة 1', 3, 35, 18, '2022-01-16 08:54:52', '2022-01-16 08:54:52', NULL, NULL, NULL, NULL, NULL, 'no'),
(244, 'طاولة 2', 3, 35, 18, '2022-01-16 08:55:11', '2022-01-16 08:59:48', NULL, NULL, NULL, NULL, NULL, 'no'),
(245, 'طاولة 3', 3, 35, 18, '2022-01-16 08:55:25', '2022-01-16 08:55:25', NULL, NULL, NULL, NULL, NULL, 'no'),
(246, 'طاولة 4', 3, 35, 18, '2022-01-16 08:55:39', '2022-01-16 08:55:39', NULL, NULL, NULL, NULL, NULL, 'no'),
(247, 'طاولة 5', 3, 35, 18, '2022-01-16 08:55:57', '2022-01-16 08:55:57', NULL, NULL, NULL, NULL, NULL, 'no'),
(248, 'طاولة 6', 3, 35, 18, '2022-01-16 08:56:10', '2022-01-16 08:56:10', NULL, NULL, NULL, NULL, NULL, 'no'),
(249, 'طاولة 7', 3, 35, 18, '2022-01-16 08:56:24', '2022-01-16 08:56:24', NULL, NULL, NULL, NULL, NULL, 'no'),
(250, 'طاولة 8', 3, 35, 18, '2022-01-16 08:56:46', '2022-01-16 08:57:09', NULL, NULL, NULL, NULL, NULL, 'no'),
(251, 'طاولة 9', 3, 35, 18, '2022-01-16 08:57:00', '2022-01-16 08:57:00', NULL, NULL, NULL, NULL, NULL, 'no'),
(252, 'طاولة 10', 3, 35, 18, '2022-01-16 08:57:26', '2022-01-16 08:57:26', NULL, NULL, NULL, NULL, NULL, 'no'),
(253, 'طاولة 11', 3, 35, 18, '2022-01-16 08:57:38', '2022-01-16 08:57:38', NULL, NULL, NULL, NULL, NULL, 'no'),
(254, 'طاولة 12', 3, 35, 18, '2022-01-16 08:57:52', '2022-01-16 08:57:52', NULL, NULL, NULL, NULL, NULL, 'no'),
(255, 'طاولة 13', 3, 35, 18, '2022-01-16 08:58:09', '2022-01-16 08:58:09', NULL, NULL, NULL, NULL, NULL, 'no'),
(256, 'طاولة 14', 3, 35, 18, '2022-01-16 08:58:19', '2022-01-16 08:58:19', NULL, NULL, NULL, NULL, NULL, 'no'),
(257, 'طاولة 15', 3, 35, 18, '2022-01-16 08:58:29', '2022-01-16 08:58:29', NULL, NULL, NULL, NULL, NULL, 'no'),
(258, 'طاولة 16', 3, 35, 18, '2022-01-16 08:58:48', '2022-01-16 08:58:48', NULL, NULL, NULL, NULL, NULL, 'no'),
(259, 'طاولة 17', 3, 35, 18, '2022-01-16 08:58:58', '2022-01-16 08:58:58', NULL, NULL, NULL, NULL, NULL, 'no'),
(260, 'طاولة 18', 3, 35, 18, '2022-01-16 08:59:30', '2022-01-16 08:59:30', NULL, NULL, NULL, NULL, NULL, 'no'),
(261, 'طاولة 19', 3, 36, 18, '2022-01-16 09:00:41', '2022-01-16 09:00:41', NULL, NULL, NULL, NULL, NULL, 'no'),
(262, 'طاولة 20', 3, 36, 18, '2022-01-16 09:00:55', '2022-01-16 09:00:55', NULL, NULL, NULL, NULL, NULL, 'no'),
(263, 'طاولة 21', 3, 36, 18, '2022-01-16 09:01:09', '2022-01-16 09:01:09', NULL, NULL, NULL, NULL, NULL, 'no'),
(264, 'طاولة 22', 3, 36, 18, '2022-01-16 09:01:26', '2022-01-16 09:01:26', NULL, NULL, NULL, NULL, NULL, 'no'),
(265, 'طاولة 23', 3, 36, 18, '2022-01-16 09:01:44', '2022-01-16 09:01:44', NULL, NULL, NULL, NULL, NULL, 'no'),
(266, 'طاولة 24', 3, 36, 18, '2022-01-16 09:01:59', '2022-01-16 09:01:59', NULL, NULL, NULL, NULL, NULL, 'no'),
(267, 'طاولة 25', 3, 36, 18, '2022-01-16 09:02:40', '2022-01-16 09:02:40', NULL, NULL, NULL, NULL, NULL, 'no'),
(268, 'طاولة 26', 3, 36, 18, '2022-01-16 09:03:04', '2022-01-16 09:03:04', NULL, NULL, NULL, NULL, NULL, 'no'),
(269, 'طاولة 27', 3, 36, 18, '2022-01-16 09:03:41', '2022-01-16 09:03:41', NULL, NULL, NULL, NULL, NULL, 'no'),
(270, 'طاولة 28', 3, 36, 18, '2022-01-16 09:04:29', '2022-01-16 09:04:29', NULL, NULL, NULL, NULL, NULL, 'no'),
(271, 'طاولة 29', 3, 36, 18, '2022-01-16 09:04:45', '2022-01-16 09:04:45', NULL, NULL, NULL, NULL, NULL, 'no'),
(272, 'طاولة 30', 3, 36, 18, '2022-01-16 09:06:36', '2022-01-16 09:06:36', NULL, NULL, NULL, NULL, NULL, 'no'),
(273, '١', 5, NULL, 21, '2022-01-17 21:58:25', '2022-01-17 21:58:25', NULL, NULL, NULL, NULL, NULL, 'no'),
(274, 'ASEEL AYTAH', 0, NULL, 27, '2022-02-09 03:04:01', '2022-02-09 03:04:01', NULL, NULL, NULL, NULL, NULL, 'no'),
(275, '2', 2, NULL, 27, '2022-02-28 20:20:17', '2022-02-28 20:20:17', NULL, NULL, NULL, NULL, NULL, 'no'),
(278, '1', 1, NULL, 29, '2022-03-23 00:32:30', '2022-03-23 00:32:30', NULL, NULL, NULL, NULL, NULL, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `google_id` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_id` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Facility_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `verification_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `plan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `plan_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cancel_url` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `update_url` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checkout_id` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subscription_plan_id` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stripe_account` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `birth_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working` int(11) NOT NULL DEFAULT '1',
  `onorder` int(11) DEFAULT NULL,
  `numorders` int(11) NOT NULL DEFAULT '0',
  `rejectedorders` int(11) NOT NULL,
  `paypal_subscribtion_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mollie_customer_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mollie_mandate_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_percentage` decimal(6,4) NOT NULL DEFAULT '0.0000',
  `extra_billing_information` text COLLATE utf8mb4_unicode_ci,
  `mollie_subscribtion_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_subscribtion_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_trans_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `google_id`, `fb_id`, `name`, `email`, `Facility_type`, `email_verified_at`, `password`, `api_token`, `phone`, `remember_token`, `created_at`, `updated_at`, `active`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `verification_code`, `phone_verified_at`, `plan_id`, `plan_status`, `cancel_url`, `update_url`, `checkout_id`, `subscription_plan_id`, `stripe_account`, `birth_date`, `lat`, `lng`, `working`, `onorder`, `numorders`, `rejectedorders`, `paypal_subscribtion_id`, `mollie_customer_id`, `mollie_mandate_id`, `tax_percentage`, `extra_billing_information`, `mollie_subscribtion_id`, `paystack_subscribtion_id`, `paystack_trans_id`, `restaurant_id`, `deleted_at`) VALUES
(1, NULL, NULL, 'Admin Admin', 'aseel-aitah@hotmail.com', '', '2021-12-30 22:33:43', '$2y$10$JwaOArWkACJlSDrZm3Crh.Ota9Wwy.Z4KhR.D9D9GmfY1HVY0zavu', 'j835IP332hS1c7yxMD45b24HWjo0Fs3ZVqs2UT9oljHCp5UqTgUjrsoXq5G3bESs5Xv7iTGHFVoDJUgn', '', 'zKh9aQ7fFcVNMi1jQlLFm5oWAAa5XY97KBGrImRAIpBbRH6WjZtevwinMqZQ', '2021-12-30 22:33:43', '2022-02-03 12:28:35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, 'staff demo1', 'staff@tst.com', '', '2021-12-30 22:33:44', '$2y$10$WpxtibMhmJ4atO9iuFdT6eso.rpdv/MLqjKDTmfiz6NLyQI4s3smy', '', '', NULL, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, 'Demo Staff 1', 'staff@example.com', '', '2021-12-30 22:33:44', '$2y$10$haiAtqEflDiNrBQjHvyUC.N2qNWczDJ8JXzRHzznOXIpKdhfWHRQa', 'CIkSgccylF3Ga7FGj3eWisfbPubcdxXESB8vgVJb93cY64sLKjWZx68hKpGU4f7KhkQjYlR99dPtAfvF', '', NULL, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 1, NULL),
(4, NULL, NULL, 'Demo Staff 2', 'staff2_1@example.com', '', '2021-12-30 22:33:44', '$2y$10$TuomCehpRz/0hW0dGsb9V.Nl3LbTxJa7Z4qP2AS2RniFydhTAWhku', 'vdgpHMmBECdvcvivedEBqdzpbF7OQq354KDoZ86ra19JLoOcBlNqN4XKaxwC2vEX65jcDbPI2rEMqBDu', '', NULL, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 1, NULL),
(5, NULL, NULL, 'Demo Staff 1', 'staff1_2@example.com', '', '2021-12-30 22:33:44', '$2y$10$ozXr4YdMogmhd5W4WHUjfug1EwYgT9gc846ChyqsY3GsSu3G/n9r.', 'f1a2QMMT2VdcRqnkb8eXcJEmrsyMrnYj0dGNiOWkZNV2gI4W1JshaQUGfLQNR5wIYVtVm2cvXy8nT9sb', '', NULL, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 2, NULL),
(6, NULL, NULL, 'Demo Staff 2', 'staff2_2@example.com', '', '2021-12-30 22:33:44', '$2y$10$GSkzManotE25djzGs8XRD.2jOEvQdJF14PjfH5MdJ5q.DnvNhscCO', 'tReTjJVfqJhlHfXrhjz3LdUFBiUPNphSFeoaM4fNriM7NnIrrRxr9x1awRLPdgAKrx0AGuNzQ7vbKN9p', '', NULL, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 2, NULL),
(7, NULL, NULL, 'Demo Staff 1', 'staff1_3@example.com', '', '2021-12-30 22:33:44', '$2y$10$uCcvnU7ptnxSXMUfrMwJceYHa3jHH7FkiNalX.wPGMZ0kzM3XXDj2', 'cubt6sAql8XjZbUNy1xkbjWm7lUHjh5bbvUy9jFwBFDeSFxGEJDHgoI2PuS8yiZvD3m5yhQra3HwM3Ra', '', NULL, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 3, NULL),
(8, NULL, NULL, 'Demo Staff 2', 'staff2_3@example.com', '', '2021-12-30 22:33:44', '$2y$10$XeOgRp2CqkKthfbqVdPtzunerTEgMspnH.VjRLW.ZXV1vVBy8.6cq', '8i3W8IEnq9X9h9jnoCMaloEqKvQBzmLXIIePazOrC857bRmegTxNaxBhnVsI7I4PpUmDSbiPiV5SIS6r', '', NULL, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 3, NULL),
(9, NULL, NULL, 'Demo Staff 1', 'staff1_4@example.com', '', '2021-12-30 22:33:44', '$2y$10$2ApmZ/s8P7IdVAQsPEksNu6NM.LwbtcmAQ1z0Y18aYf68xPYSi.Hy', '3efHOLbgUb2o4vxT5cDPdfJpA8jv3JnvDiumoVpWL9Xp711cFPxxRghOOGTmojFhPrz79nvtFnIMceO6', '', NULL, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 4, NULL),
(10, NULL, NULL, 'Demo Staff 2', 'staff2_4@example.com', '', '2021-12-30 22:33:44', '$2y$10$6zcBkMUNET3/BYDjNgHVqu5JGk7KpKHj0HbrDzI3OJ.qd7bPMyMM6', 'B2I4PQsOhM4tsYkXu1sDzCrf1sqx1AWeXILFUuwpyV2rxdXGlNYB5c9vJU19DL4Mj7oH8OYYgAucNK3A', '', NULL, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 4, NULL),
(11, NULL, NULL, 'Demo Staff 1', 'staff1_5@example.com', '', '2021-12-30 22:33:45', '$2y$10$juzXwiDWanZsAky/q3P7L.Ah3D0ss9oOUo/Ph1ym3UMOTTvcdT9wS', 'Iq1fg4dndIJWv1Zied1UKfWIcGm5SazPmLuJLSii31V6iEyYd37poy7fRokIQpmhDKo5Q2lVinwaeOZn', '', NULL, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 5, NULL),
(12, NULL, NULL, 'Demo Staff 2', 'staff2_5@example.com', '', '2021-12-30 22:33:45', '$2y$10$LaxdUUyvajeFJnD3ElK1vuMSTaxD1SQ99mFs.CeThuexDku9hr/mq', 'cC3tTyeWIIuV7wF81yuIKVJbCoGHwjO3eTysL6dJOYVwFYTC0xzkwBxFwL6C3T8dbbgDFmwgNBhCVk6Z', '', NULL, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 5, NULL),
(13, NULL, NULL, 'Demo Staff 1', 'staff1_6@example.com', '', '2021-12-30 22:33:45', '$2y$10$pqPe/bOm6l1Uuyn8b6ESy.MHfxvfW2ut4bdsUcLK50x.Xa3MNbUCy', 'YkNU4g1GirubCFOgzNXr9jMx5ohoWpDVpsUeeFbHBMrv0ZvOcer2GHseaFYn2dmgkiYmUC7HWDUvWtQe', '', NULL, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 6, NULL),
(14, NULL, NULL, 'Demo Staff 2', 'staff2_6@example.com', '', '2021-12-30 22:33:45', '$2y$10$Or9jTK9LFphRMMAJ3DRRKOuzD4agmAhzIAyHo.Rcu2kHB8xT8CNp.', 'hCAi2xcWOrQe6PP1OOvRWq8vzfwiITv7cqSyBjPtQ5lS7WM6bUXZwEBZJAFBmF8JThZLD16v2spBbMvZ', '', NULL, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 6, NULL),
(15, NULL, NULL, 'Demo Staff 1', 'staff1_7@example.com', '', '2021-12-30 22:33:45', '$2y$10$rN4RQD8nGhn3EPsllIfXAexKQsiiFRyAyJYbVNb/nK4lxCzwTC0F.', 'mFpq5znxSXNexyMCB4Rccrm1upEb34X0b7W812uRPzIYgctrvXsqboBnfdFCZhkEYcJAccZYBRYsvqRv', '', NULL, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 7, NULL),
(16, NULL, NULL, 'Demo Staff 2', 'staff2_7@example.com', '', '2021-12-30 22:33:45', '$2y$10$T5MBkPZJfJWGlerWttmwj.9nq7DPCG/zlRzWF4Jr0xz79aJiExo42', 'mT9s6ZLnWQVTBLp9eAm236p55nonXImiVdq68FfF7Pq899h4Mru1ipxN7NuAkfH7OZazCB8DPxJHjyYe', '', NULL, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 7, NULL),
(17, NULL, NULL, 'Demo Staff 1', 'staff1_8@example.com', '', '2021-12-30 22:33:45', '$2y$10$Hctdfs/H/U/GXGAG61cvHeuakjT4.iNs6M9nufL6A4QkbNF0BNyqe', '7YJxWlwhabG85sFnvtoXRHtDFNALTw0NdGYXgEdpEaT5Eq3alpEpMiKSvDB9tAMpMvj5xRBOuUqaaZMd', '', NULL, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 8, NULL),
(18, NULL, NULL, 'Demo Staff 2', 'staff2_8@example.com', '', '2021-12-30 22:33:46', '$2y$10$E7JCIfdS7L.y/nsbLCiQdOK/mAk832QR2Gzfb/sYwX9af9gYpKJY.', 'e1J0ThYO9ggENWFvOSZKNFnjkRogLZBviFh6jzbBIdMTbsjNThh0hXW4y6F9CPNVKv9QxktpzUHcEwvZ', '', NULL, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 8, NULL),
(19, NULL, NULL, 'Demo Staff 1', 'staff1_9@example.com', '', '2021-12-30 22:33:46', '$2y$10$EuU5TT1Df33Vd2r8/5rVy.ypT11/vIdRgIUTQD0nrN6gIJQDMGUrm', 'OETzXnCkX7gDhsyGBlyQMQPUcclszfIsDI78qxEmO2atBjQh8XZGx1ox7mkQaC6dPqJSZhtbTyE6Sjci', '', NULL, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 9, NULL),
(20, NULL, NULL, 'Demo Staff 2', 'staff2_9@example.com', '', '2021-12-30 22:33:46', '$2y$10$ozs9O867yfSez6J6tRIkw.JZ9/zHXsYj/Ef.SWm033JKf1Ha1is3.', 'btUmB6XEu60FXpbfTGnruPo7UbyxlIGyhxg2LrtNBvDIpZjvk2dFzKN2ux8Zr0qYyNxUBPqgb0kfztgA', '', NULL, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 9, NULL),
(21, NULL, NULL, 'Demo Staff 1', 'staff1_10@example.com', '', '2021-12-30 22:33:46', '$2y$10$pI/3MzgZ56rrOtD2fGdMBeqZfJHp3eX2a420hE5CAmw1HoBsWcd16', '0SJiNTDlUCL0BXYVpXxlcvXLPaOh9wrAraHEkh2RpCxdWv2PTl5zvQBFMDR1ycUky8HFTAlWT5xak4to', '', NULL, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 10, NULL),
(22, NULL, NULL, 'Demo Staff 2', 'staff2_10@example.com', '', '2021-12-30 22:33:46', '$2y$10$MG1/AP17UheHD4tAMWQhnO9tuFalNEgrfUJoHBBcfvMQ1vhFGUiC6', 'zdRiHUfyaSbEzCdePoi8O8cWM0y3np8gM8UHWqCKmsduHD8wahZudxO4Lx0QozdA9reAV7qcFzcEEBty', '', NULL, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 10, NULL),
(23, NULL, NULL, 'Demo Staff 1', 'staff1_11@example.com', '', '2021-12-30 22:33:46', '$2y$10$N7CTYE7x5R/r.8fFoo4hl.RdcGHcGmjpSaVeYvTTCZ22DQuhXqrJO', '8trlA5QEOCunw1GqprlvanWq97561z3z8ngOTb81HSAcOWeeErG4EETAygg0qLQ3BRhcQzyuAMDUW9tj', '', NULL, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 11, NULL),
(24, NULL, NULL, 'Demo Staff 2', 'staff2_11@example.com', '', '2021-12-30 22:33:47', '$2y$10$pL2mFvz8cHUbi6XW9QAEreIFWsoP23HooQLyygUu.mmJwGpey5BM6', '3HEKGaC7EBHWRFJQDZPlwvWUOn7bqQG8sUXzu2gGTnnEfd0jUwYwdDvefEpRq794jxmnhU4jdzwo230i', '', NULL, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 11, NULL),
(25, NULL, NULL, 'Demo Staff 1', 'staff1_12@example.com', '', '2021-12-30 22:33:47', '$2y$10$V8XDAPXKrOSF8f0KUXiodurNIlhil1Q4agtUcqX8hJn.TfF7lyHhK', '2YQy2vHtE4DhRXOPzzFtdeZjxKq1Fklb8G1X8iWw7UIUINTZozBInCTCbSWOL9q6Zd0it0ALwFYXUrY4', '', NULL, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 12, NULL),
(26, NULL, NULL, 'Demo Staff 2', 'staff2_12@example.com', '', '2021-12-30 22:33:47', '$2y$10$ENetZjCJO0VZEyFjQuxH3.r0Imiyi7mLhMVrLkNgR60NqzjY/Iw0.', 'nX309VuQRzf0iw5Rdfs3heVHyBTeF1UBDRL5pkfCFnNrLEJiML2DC4WlmHKTup7ruOKByjuLSZzS3by6', '', NULL, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 12, NULL),
(27, NULL, NULL, 'Demo Staff 1', 'staff1_13@example.com', '', '2021-12-30 22:33:47', '$2y$10$RV1QEGOcxKFWjQvoLGioRu.eKlP3oehLPtbaZvtpnFAqxWj3lSOVO', 'of56QOAc2f3poFBBloVp80ElSGerh9mrWI0nJLgcMTC3BvPxN4dWBEjWqrsn3tjGpxCkC8In1GPlfyc3', '', NULL, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 13, NULL),
(28, NULL, NULL, 'Demo Staff 2', 'staff2_13@example.com', '', '2021-12-30 22:33:47', '$2y$10$Sna/L5P/pEQj4Ii8qx15VenIr.nXyiToNFP51XQ/.SULp3jETNtE2', 'VTKCY3fA820710BNOYZLkzqno93FHiXp7KQufhXGMD6lwQeyTRLhCQtbNaTpQ8njQPjXJJeynaw0v2h3', '', NULL, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 13, NULL),
(29, NULL, NULL, 'Demo Staff 1', 'staff1_14@example.com', '', '2021-12-30 22:33:47', '$2y$10$bH7qW9U68FEqxuEnkXKaVeUJJWRvVoM3TtfVM2IFJx5nWsDX2huxa', 'tExes2mwDulE3lgBFBhLuj2NedXBxel6gLLKg1Ri6keYzcc1RmkRlafbBGf4M8fqzVWZy0hlDJtIhzwB', '', NULL, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 14, NULL),
(30, NULL, NULL, 'Demo Staff 2', 'staff2_14@example.com', '', '2021-12-30 22:33:47', '$2y$10$8cgIuppZHi5aSuPVn3EplOjUc9A955Dp7JDbDEckaBT8H3uLHvC3S', 'mSAlohuSEU7yewcNNYDSUaU0KZv0AMwvJjCspPDGoQcZFZlm9W9F9odctpl1s7AERX1KobdigwdrhFmJ', '', NULL, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 14, NULL),
(31, NULL, NULL, 'Demo Staff 1', 'staff1_15@example.com', '', '2021-12-30 22:33:48', '$2y$10$BOOXZoaLD5oHXuNQJb/ZG..ysRLFyM9sslqYXOXowtRK/LTTHBApa', '5mcMLAZmvEv6tb3Ie1m2Uzu4FqenoL81FkR1VaE6evHaJGQGqWgl61a3lHbpbnK6nuuBzIn6zqysLMW9', '', NULL, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 15, NULL),
(32, NULL, NULL, 'Demo Staff 2', 'staff2_15@example.com', '', '2021-12-30 22:33:48', '$2y$10$oSKODD.O9QsjB0.AHk3jBeDAg3QCji8e7b2rBcsa18mUpgnUC1Xnu', 'ATCdjALF0JWeIdHwaHDkfCvi9tZE6CguOER1UL8xVzwZSTNUvNb0O5sVfapMwSzDD3i7Dmhukg8WzPDW', '', NULL, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 15, NULL),
(33, NULL, NULL, 'Demo Staff 1', 'staff1_16@example.com', '', '2021-12-30 22:33:48', '$2y$10$7AeobzCpQeTBtKRT8g/X7.YiaeuoCQbnFk2nrezYOHij513Za7UZq', 'XJTOFYHsPGF3hBiEgj8QzsRaHBiYPY1TmcnzGez71UMXCEUjNBxRcrXfKonw4Ulq3I2evdS6Z0xh7pvG', '', NULL, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 16, NULL),
(34, NULL, NULL, 'Demo Staff 2', 'staff2_16@example.com', '', '2021-12-30 22:33:48', '$2y$10$4s4nE.l8cwRVzr.mUg9N.OZk4eWW7sW24hJ5WywmIXBcJYBR7NoTm', 'GDY1ZefEE35ZEsVSsvjgKgd2dUzlWJcB1Cq8Sbd4TdN30JDSCZPfO9zjM7HEM4r4fMKJJDUeCfdzjxeu', '', NULL, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 16, NULL),
(35, NULL, NULL, 'ASEEL AYTAH', 'acct@gmail.com', '', NULL, '$2y$10$yQkbmvMuHUucK0GlHHUG/.AR42jPex2JjIin/DsoM7I52wwoaBYa.', 'JoJN1aUhCnqtOTCsVRpnqi31FXbCKi3lLe8kCsr7CFwl3iokWNC5zh5S4E5OVkHZHrcPFu2cCorsakJm', '0590689303', 'EIIO6znBRHicGJwHivfsa08ud5JLJgUbm9txTEGo9QF8jT72XGAHTND2wepb', '2021-12-31 01:31:05', '2022-01-11 22:57:07', 1, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'set_by_admin', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, '2022-01-11 22:57:07'),
(36, NULL, NULL, 'Karta Cafe', 'kartacafe@hotmail.com', '', NULL, '$2y$10$WpxtibMhmJ4atO9iuFdT6eso.rpdv/MLqjKDTmfiz6NLyQI4s3smy', 'pxvYBKKgBtZ6L4oU8dtCTpy3zajR0A1fYY0MfUJktPjTKAFeiTkBSX7B7mSuWXgpWVyU4OkJci0kjLRF', '0552552749', 'vtdwadIoSggsf7uawtyxW1z0pzB9PJABUIOQyW45wLDXLwYczBIPtjkZJuPa', '2022-01-11 21:11:55', '2022-03-05 21:04:20', 1, NULL, NULL, NULL, NULL, NULL, NULL, 6, 'set_by_admin', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 18, NULL),
(37, NULL, NULL, 'تياس', 'aidh@jfh.sa', '', NULL, '$2y$10$C/DcIlfacOGy/njPO4wCCOvINUF7qkrNi01V8jjXbpu5iwrCETG2G', 'KrKLGcYWqrFgxOW1bmRS8B0CnnfMj8tWeTLfSYr1b6XnqWrEBppuMpFwKGjhMxaqbAclpuUykUanIZ2R', '590689303', NULL, '2022-01-11 22:28:06', '2022-01-11 22:38:06', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, '2022-01-11 22:38:06'),
(38, NULL, NULL, 'hsga', 'acct@aletta.sa', '', NULL, '$2y$10$GMJeM8x5LamMbJVLa/RrbuGwfkBBgPxlXUe5GrFzhNcvcRF1EhZli', 'Y18D13wNyndGY1t2cAh694EWV1hGnyvLPoZ3Q0vnfwXfMcrogXuBdawaZXYkwA0RGrBgSHefv4J3topW', '590689303', 'aFApPgx1F33mGcRbrDzCQaoFqgknvf7P3VURylqHl39BZCbXiKFRDGCJmeVk', '2022-01-11 22:28:41', '2022-01-11 22:37:56', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, '2022-01-11 22:37:56'),
(39, NULL, NULL, 'aletta cafe', 'alettacafe.sa@gmail.com', '', NULL, '$2y$10$WpxtibMhmJ4atO9iuFdT6eso.rpdv/MLqjKDTmfiz6NLyQI4s3smy', '6Qp7xG57H6C7jQtRRJAQvMeYD0T7kh9XUgoRDbxEqBfyGhqDoWOUFUEl20Pklj5RrrMP0iiZFzXuzhVE', '0555054254', 'hJfGsQyCpGSJwpUTNcmS2a1x4Pdh1cr3hwM10VTojM8G2y2hbl2zlnhE23gC', '2022-01-11 22:31:18', '2022-04-12 23:59:58', 1, NULL, NULL, NULL, NULL, NULL, NULL, 7, 'set_by_admin', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 21, NULL),
(40, NULL, NULL, 'aletta cafe', 'alettacafe.sa@gmail.com', '', NULL, NULL, 'OL7KHxjIxhWZwxcZjMfGlmtGmeenms06P9ShvKdmQoPfhiPNuvDB0YEtmow11sLGzdpUgenUVfi1MsDz', '0555054254', NULL, '2022-01-11 22:32:47', '2022-01-11 22:37:45', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, '2022-01-11 22:37:45'),
(41, NULL, NULL, 'aseel', 'acct@aletta.sa', '', NULL, '$2y$10$WpxtibMhmJ4atO9iuFdT6eso.rpdv/MLqjKDTmfiz6NLyQI4s3smy', 'fb1pGrteTNp1SWpukrOmQ708HkV3Hpef8B0BXUImIXU2CHQQzUPhwFml23kha4XLMzWLJDKYTxMs5RxY', '590689303', 'RUcfsZJXwnywUwMfpfa598zYoJCrJnQUxhx90PYqYOYfBESzeahq2K92GIST', '2022-01-11 22:57:33', '2022-01-11 23:05:37', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, '2022-01-11 23:05:37'),
(42, NULL, NULL, 'jags', 'acct@aletta.sa', '', NULL, '$2y$10$G9AoL7xRBGyaUA5Dz0Zx..bQtJhh3Z3vVBSDmD5Rl8.ACOl42zR4m', 'XepGGNevG2CbY35pCLXn83uQSLu14s7J8IKAghQOJ9U3sRaZ03Pbs4R85AFh7LRAgcZXAeHZLAwbTTHt', '590689303', NULL, '2022-01-11 23:06:14', '2022-01-11 23:13:30', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, '2022-01-11 23:13:30'),
(43, NULL, NULL, 'hagsh', 'acct@aletta.sa', '', NULL, '$2y$10$L0SogMwjtQF.VhptltxPX.zUaw9SV/UMB2Ovxde74esbKmZqGN./i', 'hz31wmNqwlWG2XOse4l6EabPgIuJKOlQNssNYv1BgBpueweYcEkAEb6kDx7NMVMRHZR3tw2I4h0Fu38R', '590689303', 'QSY7s8bmhqb59dj6d6JWj1DU7QmKKIwXLXEjbWn9bZI7NBkU8Q4SW4S1H6JI', '2022-01-11 23:13:46', '2022-01-11 23:18:54', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, '2022-01-11 23:18:54'),
(44, NULL, NULL, 'Aseel', 'aseelaaytah@gmail.com', '', NULL, '$2y$10$YwCoZmp3cXEZIJQbtRMfVuOTIpvm/xJMhhIYJSKydnMANe.vqbNfW', 'fU3Ah1E4KsZXCqO6ooyrsKBzErMUU5ogRg54dM3o5lda7VPAxeEXZx2Mp1Kk1MDuh0cknmX1yaGcZQd2', '0590689303', 'y5o86OxcZUlQQAF76N9XtNPLeKBOoILpVI1Rhmj2FTK5EVT7Tgk1eU0HG7Ur', '2022-01-11 23:57:57', '2022-01-15 23:18:12', 1, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'set_by_admin', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, '2022-01-15 23:18:12'),
(45, NULL, NULL, 'زين', 'tat@ebmenu.sa', '', NULL, '$2y$10$fyCTgTgumekF.slB/HI2wucBUbKAgw7PHdLTBg.dyQvT7rOE45S7m', 'oIy6ejxjEbsmAmY1vneMOoVENcKT9P7KpBS2st0vzxOu0s7yrp4zrJCZM2h2r0QJHwcQKh5vNLMyyWcA', '+9665736381649', 'IGVXpVNwFskOvWv4IcLFI22xQxCvF6s9mW1K1H6YV3Q3mN4cqbfstNx8I3nR', '2022-02-03 11:26:19', '2022-04-11 11:30:58', 1, NULL, NULL, NULL, NULL, NULL, NULL, 7, 'set_by_admin', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 27, NULL),
(46, NULL, NULL, 'test', 'amitatujjain@gmail.com', '', NULL, '$2y$10$yGDWP3UaSeg8o5YgLmdkMuMZJwEBRovcjzjpkFeJWXUEhG1VXDJVu', '4zrqAfKg8pNgQLCQ66VLfTM5PhS5Q8FNe8cNT7Rhtk7Hjubbd8Q7vCHdXl04rnU4pmGVgX0QaBQ443hA', '+911234567890', NULL, '2022-02-08 12:50:34', '2022-02-14 23:15:31', 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, '2022-02-14 23:15:31'),
(47, NULL, NULL, 'Zain', 'Zain@zainclouds.com', '', NULL, '$2y$10$NeDXsZHZcjijP3ji/keFqeN5xW.nFB09yvFpZSEXIx1dUyK8bnEY.', 'emC0OMtSoVvFYN1DJhWp2052HTVxFZR3CKJbVilxPnAaRPoPqjwTsz6Ik5ttKLuD9uqgswaeNvZJ1g4S', '+966542391545', 'mG1ZSHQ3NhqLCndbFhNYVvkTvTroSVPKcftIj8c8SnEgJAqqaTGE7pXkvCpj', '2022-02-08 13:04:14', '2022-04-11 11:30:35', 1, NULL, NULL, NULL, NULL, NULL, NULL, 7, 'set_by_admin', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 29, NULL),
(48, NULL, NULL, 'اصيل', 'aseel@sa.sa', '', NULL, '$2y$10$AwoVcKc4BAcqcsQ30oj3UOvZephD29A8JrHBBXKsNAKVcXnzk.4/C', 'kzKd1GkqglVZs0lBy7jBVKj7IaksqrJMsYj3GDLhFPrqYTeKZRD8H6VxjhqhCKPcEnvgSIWIO25YJnwY', '+966567890987', NULL, '2022-02-08 18:04:37', '2022-02-08 18:07:48', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, '2022-02-08 18:07:48'),
(49, NULL, NULL, 'eee', 'eee@eee.ee', '', NULL, '$2y$10$3.J3WS0tZcuCF7EMz4IIMeztyD5.0tRpq8WPPf7s6xe6F38fwVbxW', 'otKLCimpA7GdpAX0HKo6dvEg2sHy6I8vUBEPpWrvJ28vj1t092jpRs6lvoFCxwWlZlGGikK85rLF5jdt', '+9661234567890', '9UxkbY711FSfgHFnPsZGa1dMZm55GKZNgRW7EX4LDZjnobv9XWrekvECKNIZ', '2022-02-10 20:22:22', '2022-02-10 20:22:22', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
(50, NULL, NULL, 'Shuqran', 'mohamadkhoga@icloud.com', '', NULL, '$2y$10$hkgx4b5rWH3D1g0tEpvyO.EnuMIce8sRKTPpBAiTaBKFqION7U94m', '6hgLcwoxcrYPRsTKRCeQZPKadn9xp8dyHq2RsCkBDSbSDY7QfSgMV7O4KMhLRIRlXVqXC5e9bbQvh55s', '+966500266565', NULL, '2022-02-11 21:14:22', '2022-02-11 23:49:03', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, '2022-02-11 23:49:03'),
(51, NULL, NULL, 'Emad', 'alettacafe2019@gmail.com', '', NULL, '$2y$10$AVKX80jXEoLWjLgo6ejpXO/wEboA7sAXiKBDvsaDu6HvTfDNDAFsC', 'uZixomH1m2FkP1Ra52ZpP31Dxb6Ur2tSw0G6SgJ5ZAipiu3CyFN9vwwT6dntHztP1k4vYFC8RiV0z5PZ', '+966555054254', 'gCc00YSAwZL7iDEAT3sTd4rgZkLDwNFwshWhybHprEKvyhy76FP6trixQg6F', '2022-02-12 00:06:49', '2022-03-05 20:55:18', 1, NULL, NULL, NULL, NULL, NULL, NULL, 6, 'set_by_admin', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
(52, NULL, NULL, 'aytah aseel', 'Aseelaaytah@gmail.com', '', NULL, '$2y$10$6dldvBpNcFtClc0Lsg.XOOuqF3yBc2Mth2C8aN5wU1g4hfWK7ycG.', 'NzzmCuODAbMR6DeYVqsKh5O9mQSb2FaNMYt1dsMS5GyYOiDK75lp2NCnwgM22n0jM2n4X8Mlk709Tyt8', '+966558032037', 'E9AoRfeX68sFtcteNtrOaMa9Tu4StaeSRH07egaGBiZT64H7mzAG2BGhZgTY', '2022-02-14 23:17:01', '2022-02-14 23:27:04', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, '2022-02-14 23:27:04'),
(53, NULL, NULL, 'fjdf', 'k@s.sa', '', NULL, '$2y$10$OLqt.vrnEYZe.MUH8iXx7OeUIQIMxmTEnnbKC.raTKqO0cyn4X.Zi', 'mI1nwm7Oo9Yp8RjtrqC2iVwwNRdrbjEWKd3Pxqw20OePtm9qvfZIheDou1xvdca33IOTEcXtSoEKusCQ', '+966567894875', NULL, '2022-02-17 02:14:45', '2022-02-17 04:06:42', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, '2022-02-17 04:06:42'),
(54, NULL, NULL, 'ASEEL AYTAH', 'aseel-aytah@hotmail.com', '', NULL, '$2y$10$YpHiXPlLOskla0QICFNske0Ba/J1aR/Ml8Uwzmv6O.7J8n2W25ene', '3P8grXltl6TrL974wZ5M6uhMcQ1AlNJ39EQCEnDP1uxqF1tC6I88MR2sT8Q4PKgv4ATyaALzQ7qFDZrZ', '+966558032037', 'jukCDA0b4MJot9fsQdK5zq3XZIr08X60DEWNiutWPEc3mknPN5evjx4o9ykq', '2022-02-25 00:03:47', '2022-03-02 12:45:30', 1, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Purchased form Noon Payment', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, '2022-03-02 12:45:30'),
(55, NULL, NULL, 'manesh', 'manesh@gmail.com', '', NULL, '$2y$10$JLXEM2LudynsZXgCav0tueK0ip8GBsJ3xLTBo0aHR9eNKP/O1IFiS', 'KNmRsMbd5AjDGbHV4O1D7iDAucoB0drwVHfEkc07ZjjqWJRnmdz98OMYWtqRiFegakEngYwb49uMCy1k', '+923452793691', 'ceZyOJuLhM6EEFjc70N1wXV2b3QN6Qa5NC282JGQSy67NMVGd4tRnLaQFtKN', '2022-03-06 13:22:30', '2022-03-06 13:22:30', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
(56, NULL, NULL, 'Zain', 'zainrasheed3@gmail.com', '', NULL, '$2y$10$nYyBdV2gPY/d/IJP00/RtuSaURH60neJiO6qI1jToXuCg2mJmA87C', 'QSsl4IQwGI0BldDUM55tqcWPF6ZbkqSzGfsx1fyQEc4LM2FANHWlQbJlk4g6OsijfCfUeB2xmgbibDo8', '+966542391545', 'vJ5wxYZ1Pyyen2qVlcnaPCqcpeTyV3wNJX9FJBAiIzWXTaQeWrO8BoB2M82g', '2022-03-08 13:25:10', '2022-03-08 13:28:39', 1, NULL, NULL, NULL, NULL, NULL, NULL, 7, 'set_by_admin', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 38, NULL),
(57, NULL, NULL, 'fbfb', 'gmail.com@gfhg', '', NULL, '$2y$10$Us7F2F5O40eiUJufWA.4IuVYOyJZw8GB4ZjTjN4.Mo8mX7BBXy.sW', 'HEw3MBSVvKVLbidcjNtyunK4J1YrpX34wNOUEemffw89WQwas0jbJT1WTYD5UyyHVtaSlbu9odri8hA6', '+2340987654435', 'lS2QFY0FElsCl0eZ8S6U0wYeRh9NtW9PEbXcxed4Pg7N6tYaRTAWXGsLo5y4', '2022-03-22 11:34:33', '2022-03-22 11:34:34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
(58, NULL, NULL, 'ASEEL AYTAH', 'info@ebkarstore.com', '', NULL, '$2y$10$ECzCcP9CoiTldCHHrDausuKh4WigbPgjL5/NvAKo7yYKvc4ie6sjS', 'wgb6tkct2ln6Fn7azIaLk65g1aX1mrw4xVqPdI23d1nevVpgvKjVwQ7P6odDztKnlJQ3KfSPvujduFMf', '0590689303', NULL, '2022-03-22 23:27:55', '2022-03-22 23:28:27', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
(59, NULL, NULL, 'ebmenu.com ugrfeiohofidsksmvnjdbvsijf94t9u5t0i4r94ijgrjght9y84r49t64rkowf0ereiuguejdkwdiweofuehdskodjjdgofjsoddggfsidj', 'chubenkodaniiaz+14sf@mail.ru', '', NULL, '$2y$10$A0xn7F5DZ2wMRBLU7.CkOerbvFuS2o3ARxVBOeXykCQ8FKpHG72NS', 'ZxjVVTiH1ggEXW0Xxk5ezdVAbTlnL5Mfd3bbPVk42YGT2GsV4oQz2rGXY2MTUssZC51aMLaYHNgn8xcp', '86866481966', NULL, '2022-04-12 16:41:04', '2022-04-12 17:30:53', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, '2022-04-12 17:30:53');

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `options` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '0',
  `enable_qty` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_system` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`id`, `price`, `options`, `image`, `qty`, `enable_qty`, `order`, `item_id`, `created_at`, `updated_at`, `deleted_at`, `is_system`) VALUES
(1, 10.99, '{\"1\":\"small\",\"2\":\"hand-tosset\"}', '', 0, 0, 0, 7, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(2, 11.99, '{\"1\":\"small\",\"2\":\"thin-crust\"}', '', 0, 0, 0, 7, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(3, 12.99, '{\"1\":\"small\",\"2\":\"double-decker\"}', '', 0, 0, 0, 7, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(4, 13.99, '{\"1\":\"medium\",\"2\":\"hand-tosset\"}', '', 0, 0, 0, 7, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(5, 14.99, '{\"1\":\"medium\",\"2\":\"thin-crust\"}', '', 0, 0, 0, 7, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(6, 15.99, '{\"1\":\"medium\",\"2\":\"double-decker\"}', '', 0, 0, 0, 7, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(7, 16.99, '{\"1\":\"large\",\"2\":\"hand-tosset\"}', '', 0, 0, 0, 7, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(8, 17.99, '{\"1\":\"large\",\"2\":\"thin-crust\"}', '', 0, 0, 0, 7, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(9, 18.99, '{\"1\":\"large\",\"2\":\"double-decker\"}', '', 0, 0, 0, 7, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(10, 19.99, '{\"1\":\"family\",\"2\":\"hand-tosset\"}', '', 0, 0, 0, 7, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(11, 20.99, '{\"1\":\"family\",\"2\":\"thin-crust\"}', '', 0, 0, 0, 7, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(12, 21.99, '{\"1\":\"family\",\"2\":\"double-decker\"}', '', 0, 0, 0, 7, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(13, 14.99, '{\"3\":\"small\",\"4\":\"hand-tosset\"}', '', 0, 0, 0, 8, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(14, 15.99, '{\"3\":\"small\",\"4\":\"thin-crust\"}', '', 0, 0, 0, 8, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(15, 16.99, '{\"3\":\"small\",\"4\":\"double-decker\"}', '', 0, 0, 0, 8, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(16, 17.99, '{\"3\":\"medium\",\"4\":\"hand-tosset\"}', '', 0, 0, 0, 8, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(17, 18.99, '{\"3\":\"medium\",\"4\":\"thin-crust\"}', '', 0, 0, 0, 8, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(18, 19.99, '{\"3\":\"medium\",\"4\":\"double-decker\"}', '', 0, 0, 0, 8, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(19, 20.99, '{\"3\":\"large\",\"4\":\"hand-tosset\"}', '', 0, 0, 0, 8, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(20, 21.99, '{\"3\":\"large\",\"4\":\"thin-crust\"}', '', 0, 0, 0, 8, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(21, 22.99, '{\"3\":\"large\",\"4\":\"double-decker\"}', '', 0, 0, 0, 8, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(22, 23.99, '{\"3\":\"family\",\"4\":\"hand-tosset\"}', '', 0, 0, 0, 8, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(23, 24.99, '{\"3\":\"family\",\"4\":\"thin-crust\"}', '', 0, 0, 0, 8, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(24, 25.99, '{\"3\":\"family\",\"4\":\"double-decker\"}', '', 0, 0, 0, 8, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(25, 14.99, '{\"5\":\"small\",\"6\":\"hand-tosset\"}', '', 0, 0, 0, 9, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(26, 15.99, '{\"5\":\"small\",\"6\":\"thin-crust\"}', '', 0, 0, 0, 9, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(27, 16.99, '{\"5\":\"small\",\"6\":\"double-decker\"}', '', 0, 0, 0, 9, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(28, 17.99, '{\"5\":\"medium\",\"6\":\"hand-tosset\"}', '', 0, 0, 0, 9, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(29, 18.99, '{\"5\":\"medium\",\"6\":\"thin-crust\"}', '', 0, 0, 0, 9, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(30, 19.99, '{\"5\":\"medium\",\"6\":\"double-decker\"}', '', 0, 0, 0, 9, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(31, 20.99, '{\"5\":\"large\",\"6\":\"hand-tosset\"}', '', 0, 0, 0, 9, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(32, 21.99, '{\"5\":\"large\",\"6\":\"thin-crust\"}', '', 0, 0, 0, 9, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(33, 22.99, '{\"5\":\"large\",\"6\":\"double-decker\"}', '', 0, 0, 0, 9, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(34, 23.99, '{\"5\":\"family\",\"6\":\"hand-tosset\"}', '', 0, 0, 0, 9, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(35, 24.99, '{\"5\":\"family\",\"6\":\"thin-crust\"}', '', 0, 0, 0, 9, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(36, 25.99, '{\"5\":\"family\",\"6\":\"double-decker\"}', '', 0, 0, 0, 9, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(37, 14.99, '{\"7\":\"small\",\"8\":\"hand-tosset\"}', '', 0, 0, 0, 10, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(38, 15.99, '{\"7\":\"small\",\"8\":\"thin-crust\"}', '', 0, 0, 0, 10, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(39, 16.99, '{\"7\":\"small\",\"8\":\"double-decker\"}', '', 0, 0, 0, 10, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(40, 17.99, '{\"7\":\"medium\",\"8\":\"hand-tosset\"}', '', 0, 0, 0, 10, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(41, 18.99, '{\"7\":\"medium\",\"8\":\"thin-crust\"}', '', 0, 0, 0, 10, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(42, 19.99, '{\"7\":\"medium\",\"8\":\"double-decker\"}', '', 0, 0, 0, 10, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(43, 20.99, '{\"7\":\"large\",\"8\":\"hand-tosset\"}', '', 0, 0, 0, 10, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(44, 21.99, '{\"7\":\"large\",\"8\":\"thin-crust\"}', '', 0, 0, 0, 10, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(45, 22.99, '{\"7\":\"large\",\"8\":\"double-decker\"}', '', 0, 0, 0, 10, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(46, 23.99, '{\"7\":\"family\",\"8\":\"hand-tosset\"}', '', 0, 0, 0, 10, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(47, 24.99, '{\"7\":\"family\",\"8\":\"thin-crust\"}', '', 0, 0, 0, 10, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(48, 25.99, '{\"7\":\"family\",\"8\":\"double-decker\"}', '', 0, 0, 0, 10, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(49, 14.99, '{\"9\":\"small\",\"10\":\"hand-tosset\"}', '', 0, 0, 0, 11, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(50, 15.99, '{\"9\":\"small\",\"10\":\"thin-crust\"}', '', 0, 0, 0, 11, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(51, 16.99, '{\"9\":\"small\",\"10\":\"double-decker\"}', '', 0, 0, 0, 11, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(52, 17.99, '{\"9\":\"medium\",\"10\":\"hand-tosset\"}', '', 0, 0, 0, 11, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(53, 18.99, '{\"9\":\"medium\",\"10\":\"thin-crust\"}', '', 0, 0, 0, 11, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(54, 19.99, '{\"9\":\"medium\",\"10\":\"double-decker\"}', '', 0, 0, 0, 11, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(55, 20.99, '{\"9\":\"large\",\"10\":\"hand-tosset\"}', '', 0, 0, 0, 11, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(56, 21.99, '{\"9\":\"large\",\"10\":\"thin-crust\"}', '', 0, 0, 0, 11, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(57, 22.99, '{\"9\":\"large\",\"10\":\"double-decker\"}', '', 0, 0, 0, 11, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(58, 23.99, '{\"9\":\"family\",\"10\":\"hand-tosset\"}', '', 0, 0, 0, 11, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(59, 24.99, '{\"9\":\"family\",\"10\":\"thin-crust\"}', '', 0, 0, 0, 11, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(60, 25.99, '{\"9\":\"family\",\"10\":\"double-decker\"}', '', 0, 0, 0, 11, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(61, 14.99, '{\"11\":\"small\",\"12\":\"hand-tosset\"}', '', 0, 0, 0, 12, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(62, 15.99, '{\"11\":\"small\",\"12\":\"thin-crust\"}', '', 0, 0, 0, 12, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(63, 16.99, '{\"11\":\"small\",\"12\":\"double-decker\"}', '', 0, 0, 0, 12, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(64, 17.99, '{\"11\":\"medium\",\"12\":\"hand-tosset\"}', '', 0, 0, 0, 12, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(65, 18.99, '{\"11\":\"medium\",\"12\":\"thin-crust\"}', '', 0, 0, 0, 12, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(66, 19.99, '{\"11\":\"medium\",\"12\":\"double-decker\"}', '', 0, 0, 0, 12, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(67, 20.99, '{\"11\":\"large\",\"12\":\"hand-tosset\"}', '', 0, 0, 0, 12, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(68, 21.99, '{\"11\":\"large\",\"12\":\"thin-crust\"}', '', 0, 0, 0, 12, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(69, 22.99, '{\"11\":\"large\",\"12\":\"double-decker\"}', '', 0, 0, 0, 12, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(70, 23.99, '{\"11\":\"family\",\"12\":\"hand-tosset\"}', '', 0, 0, 0, 12, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(71, 24.99, '{\"11\":\"family\",\"12\":\"thin-crust\"}', '', 0, 0, 0, 12, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(72, 25.99, '{\"11\":\"family\",\"12\":\"double-decker\"}', '', 0, 0, 0, 12, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(73, 10.49, '{\"13\":\"small\",\"14\":\"hand-tosset\"}', '', 0, 0, 0, 13, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(74, 11.49, '{\"13\":\"small\",\"14\":\"thin-crust\"}', '', 0, 0, 0, 13, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(75, 12.49, '{\"13\":\"small\",\"14\":\"double-decker\"}', '', 0, 0, 0, 13, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(76, 13.49, '{\"13\":\"medium\",\"14\":\"hand-tosset\"}', '', 0, 0, 0, 13, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(77, 14.49, '{\"13\":\"medium\",\"14\":\"thin-crust\"}', '', 0, 0, 0, 13, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(78, 15.49, '{\"13\":\"medium\",\"14\":\"double-decker\"}', '', 0, 0, 0, 13, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(79, 16.49, '{\"13\":\"large\",\"14\":\"hand-tosset\"}', '', 0, 0, 0, 13, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(80, 17.49, '{\"13\":\"large\",\"14\":\"thin-crust\"}', '', 0, 0, 0, 13, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(81, 18.49, '{\"13\":\"large\",\"14\":\"double-decker\"}', '', 0, 0, 0, 13, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(82, 19.49, '{\"13\":\"family\",\"14\":\"hand-tosset\"}', '', 0, 0, 0, 13, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(83, 20.49, '{\"13\":\"family\",\"14\":\"thin-crust\"}', '', 0, 0, 0, 13, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(84, 21.49, '{\"13\":\"family\",\"14\":\"double-decker\"}', '', 0, 0, 0, 13, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(85, 39.99, '{\"15\":\"small\",\"16\":\"hand-tosset\"}', '', 0, 0, 0, 14, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(86, 40.99, '{\"15\":\"small\",\"16\":\"thin-crust\"}', '', 0, 0, 0, 14, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(87, 41.99, '{\"15\":\"small\",\"16\":\"double-decker\"}', '', 0, 0, 0, 14, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(88, 42.99, '{\"15\":\"medium\",\"16\":\"hand-tosset\"}', '', 0, 0, 0, 14, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(89, 43.99, '{\"15\":\"medium\",\"16\":\"thin-crust\"}', '', 0, 0, 0, 14, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(90, 44.99, '{\"15\":\"medium\",\"16\":\"double-decker\"}', '', 0, 0, 0, 14, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(91, 45.99, '{\"15\":\"large\",\"16\":\"hand-tosset\"}', '', 0, 0, 0, 14, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(92, 46.99, '{\"15\":\"large\",\"16\":\"thin-crust\"}', '', 0, 0, 0, 14, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(93, 47.99, '{\"15\":\"large\",\"16\":\"double-decker\"}', '', 0, 0, 0, 14, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(94, 48.99, '{\"15\":\"family\",\"16\":\"hand-tosset\"}', '', 0, 0, 0, 14, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(95, 49.99, '{\"15\":\"family\",\"16\":\"thin-crust\"}', '', 0, 0, 0, 14, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(96, 50.99, '{\"15\":\"family\",\"16\":\"double-decker\"}', '', 0, 0, 0, 14, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(97, 14.99, '{\"17\":\"small\",\"18\":\"hand-tosset\"}', '', 0, 0, 0, 15, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(98, 15.99, '{\"17\":\"small\",\"18\":\"thin-crust\"}', '', 0, 0, 0, 15, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(99, 16.99, '{\"17\":\"small\",\"18\":\"double-decker\"}', '', 0, 0, 0, 15, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(100, 17.99, '{\"17\":\"medium\",\"18\":\"hand-tosset\"}', '', 0, 0, 0, 15, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(101, 18.99, '{\"17\":\"medium\",\"18\":\"thin-crust\"}', '', 0, 0, 0, 15, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(102, 19.99, '{\"17\":\"medium\",\"18\":\"double-decker\"}', '', 0, 0, 0, 15, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(103, 20.99, '{\"17\":\"large\",\"18\":\"hand-tosset\"}', '', 0, 0, 0, 15, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(104, 21.99, '{\"17\":\"large\",\"18\":\"thin-crust\"}', '', 0, 0, 0, 15, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(105, 22.99, '{\"17\":\"large\",\"18\":\"double-decker\"}', '', 0, 0, 0, 15, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(106, 23.99, '{\"17\":\"family\",\"18\":\"hand-tosset\"}', '', 0, 0, 0, 15, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(107, 24.99, '{\"17\":\"family\",\"18\":\"thin-crust\"}', '', 0, 0, 0, 15, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(108, 25.99, '{\"17\":\"family\",\"18\":\"double-decker\"}', '', 0, 0, 0, 15, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(109, 14.99, '{\"19\":\"small\",\"20\":\"hand-tosset\"}', '', 0, 0, 0, 16, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(110, 15.99, '{\"19\":\"small\",\"20\":\"thin-crust\"}', '', 0, 0, 0, 16, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(111, 16.99, '{\"19\":\"small\",\"20\":\"double-decker\"}', '', 0, 0, 0, 16, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(112, 17.99, '{\"19\":\"medium\",\"20\":\"hand-tosset\"}', '', 0, 0, 0, 16, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(113, 18.99, '{\"19\":\"medium\",\"20\":\"thin-crust\"}', '', 0, 0, 0, 16, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(114, 19.99, '{\"19\":\"medium\",\"20\":\"double-decker\"}', '', 0, 0, 0, 16, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(115, 20.99, '{\"19\":\"large\",\"20\":\"hand-tosset\"}', '', 0, 0, 0, 16, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(116, 21.99, '{\"19\":\"large\",\"20\":\"thin-crust\"}', '', 0, 0, 0, 16, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(117, 22.99, '{\"19\":\"large\",\"20\":\"double-decker\"}', '', 0, 0, 0, 16, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(118, 23.99, '{\"19\":\"family\",\"20\":\"hand-tosset\"}', '', 0, 0, 0, 16, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(119, 24.99, '{\"19\":\"family\",\"20\":\"thin-crust\"}', '', 0, 0, 0, 16, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(120, 25.99, '{\"19\":\"family\",\"20\":\"double-decker\"}', '', 0, 0, 0, 16, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(121, 14.99, '{\"21\":\"small\",\"22\":\"hand-tosset\"}', '', 0, 0, 0, 17, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(122, 15.99, '{\"21\":\"small\",\"22\":\"thin-crust\"}', '', 0, 0, 0, 17, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(123, 16.99, '{\"21\":\"small\",\"22\":\"double-decker\"}', '', 0, 0, 0, 17, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(124, 17.99, '{\"21\":\"medium\",\"22\":\"hand-tosset\"}', '', 0, 0, 0, 17, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(125, 18.99, '{\"21\":\"medium\",\"22\":\"thin-crust\"}', '', 0, 0, 0, 17, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(126, 19.99, '{\"21\":\"medium\",\"22\":\"double-decker\"}', '', 0, 0, 0, 17, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(127, 20.99, '{\"21\":\"large\",\"22\":\"hand-tosset\"}', '', 0, 0, 0, 17, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(128, 21.99, '{\"21\":\"large\",\"22\":\"thin-crust\"}', '', 0, 0, 0, 17, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(129, 22.99, '{\"21\":\"large\",\"22\":\"double-decker\"}', '', 0, 0, 0, 17, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(130, 23.99, '{\"21\":\"family\",\"22\":\"hand-tosset\"}', '', 0, 0, 0, 17, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(131, 24.99, '{\"21\":\"family\",\"22\":\"thin-crust\"}', '', 0, 0, 0, 17, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(132, 25.99, '{\"21\":\"family\",\"22\":\"double-decker\"}', '', 0, 0, 0, 17, '2021-12-30 22:33:44', '2021-12-30 22:33:44', NULL, 0),
(133, 10.99, '{\"23\":\"small\",\"24\":\"hand-tosset\"}', '', 0, 0, 0, 67, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(134, 11.99, '{\"23\":\"small\",\"24\":\"thin-crust\"}', '', 0, 0, 0, 67, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(135, 12.99, '{\"23\":\"small\",\"24\":\"double-decker\"}', '', 0, 0, 0, 67, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(136, 13.99, '{\"23\":\"medium\",\"24\":\"hand-tosset\"}', '', 0, 0, 0, 67, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(137, 14.99, '{\"23\":\"medium\",\"24\":\"thin-crust\"}', '', 0, 0, 0, 67, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(138, 15.99, '{\"23\":\"medium\",\"24\":\"double-decker\"}', '', 0, 0, 0, 67, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(139, 16.99, '{\"23\":\"large\",\"24\":\"hand-tosset\"}', '', 0, 0, 0, 67, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(140, 17.99, '{\"23\":\"large\",\"24\":\"thin-crust\"}', '', 0, 0, 0, 67, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(141, 18.99, '{\"23\":\"large\",\"24\":\"double-decker\"}', '', 0, 0, 0, 67, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(142, 19.99, '{\"23\":\"family\",\"24\":\"hand-tosset\"}', '', 0, 0, 0, 67, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(143, 20.99, '{\"23\":\"family\",\"24\":\"thin-crust\"}', '', 0, 0, 0, 67, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(144, 21.99, '{\"23\":\"family\",\"24\":\"double-decker\"}', '', 0, 0, 0, 67, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(145, 14.99, '{\"25\":\"small\",\"26\":\"hand-tosset\"}', '', 0, 0, 0, 68, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(146, 15.99, '{\"25\":\"small\",\"26\":\"thin-crust\"}', '', 0, 0, 0, 68, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(147, 16.99, '{\"25\":\"small\",\"26\":\"double-decker\"}', '', 0, 0, 0, 68, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(148, 17.99, '{\"25\":\"medium\",\"26\":\"hand-tosset\"}', '', 0, 0, 0, 68, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(149, 18.99, '{\"25\":\"medium\",\"26\":\"thin-crust\"}', '', 0, 0, 0, 68, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(150, 19.99, '{\"25\":\"medium\",\"26\":\"double-decker\"}', '', 0, 0, 0, 68, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(151, 20.99, '{\"25\":\"large\",\"26\":\"hand-tosset\"}', '', 0, 0, 0, 68, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(152, 21.99, '{\"25\":\"large\",\"26\":\"thin-crust\"}', '', 0, 0, 0, 68, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(153, 22.99, '{\"25\":\"large\",\"26\":\"double-decker\"}', '', 0, 0, 0, 68, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(154, 23.99, '{\"25\":\"family\",\"26\":\"hand-tosset\"}', '', 0, 0, 0, 68, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(155, 24.99, '{\"25\":\"family\",\"26\":\"thin-crust\"}', '', 0, 0, 0, 68, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(156, 25.99, '{\"25\":\"family\",\"26\":\"double-decker\"}', '', 0, 0, 0, 68, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(157, 14.99, '{\"27\":\"small\",\"28\":\"hand-tosset\"}', '', 0, 0, 0, 69, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(158, 15.99, '{\"27\":\"small\",\"28\":\"thin-crust\"}', '', 0, 0, 0, 69, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(159, 16.99, '{\"27\":\"small\",\"28\":\"double-decker\"}', '', 0, 0, 0, 69, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(160, 17.99, '{\"27\":\"medium\",\"28\":\"hand-tosset\"}', '', 0, 0, 0, 69, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(161, 18.99, '{\"27\":\"medium\",\"28\":\"thin-crust\"}', '', 0, 0, 0, 69, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(162, 19.99, '{\"27\":\"medium\",\"28\":\"double-decker\"}', '', 0, 0, 0, 69, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(163, 20.99, '{\"27\":\"large\",\"28\":\"hand-tosset\"}', '', 0, 0, 0, 69, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(164, 21.99, '{\"27\":\"large\",\"28\":\"thin-crust\"}', '', 0, 0, 0, 69, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(165, 22.99, '{\"27\":\"large\",\"28\":\"double-decker\"}', '', 0, 0, 0, 69, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(166, 23.99, '{\"27\":\"family\",\"28\":\"hand-tosset\"}', '', 0, 0, 0, 69, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(167, 24.99, '{\"27\":\"family\",\"28\":\"thin-crust\"}', '', 0, 0, 0, 69, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(168, 25.99, '{\"27\":\"family\",\"28\":\"double-decker\"}', '', 0, 0, 0, 69, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(169, 14.99, '{\"29\":\"small\",\"30\":\"hand-tosset\"}', '', 0, 0, 0, 70, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(170, 15.99, '{\"29\":\"small\",\"30\":\"thin-crust\"}', '', 0, 0, 0, 70, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(171, 16.99, '{\"29\":\"small\",\"30\":\"double-decker\"}', '', 0, 0, 0, 70, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(172, 17.99, '{\"29\":\"medium\",\"30\":\"hand-tosset\"}', '', 0, 0, 0, 70, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(173, 18.99, '{\"29\":\"medium\",\"30\":\"thin-crust\"}', '', 0, 0, 0, 70, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(174, 19.99, '{\"29\":\"medium\",\"30\":\"double-decker\"}', '', 0, 0, 0, 70, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(175, 20.99, '{\"29\":\"large\",\"30\":\"hand-tosset\"}', '', 0, 0, 0, 70, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(176, 21.99, '{\"29\":\"large\",\"30\":\"thin-crust\"}', '', 0, 0, 0, 70, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(177, 22.99, '{\"29\":\"large\",\"30\":\"double-decker\"}', '', 0, 0, 0, 70, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(178, 23.99, '{\"29\":\"family\",\"30\":\"hand-tosset\"}', '', 0, 0, 0, 70, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(179, 24.99, '{\"29\":\"family\",\"30\":\"thin-crust\"}', '', 0, 0, 0, 70, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(180, 25.99, '{\"29\":\"family\",\"30\":\"double-decker\"}', '', 0, 0, 0, 70, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(181, 14.99, '{\"31\":\"small\",\"32\":\"hand-tosset\"}', '', 0, 0, 0, 71, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(182, 15.99, '{\"31\":\"small\",\"32\":\"thin-crust\"}', '', 0, 0, 0, 71, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(183, 16.99, '{\"31\":\"small\",\"32\":\"double-decker\"}', '', 0, 0, 0, 71, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(184, 17.99, '{\"31\":\"medium\",\"32\":\"hand-tosset\"}', '', 0, 0, 0, 71, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(185, 18.99, '{\"31\":\"medium\",\"32\":\"thin-crust\"}', '', 0, 0, 0, 71, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(186, 19.99, '{\"31\":\"medium\",\"32\":\"double-decker\"}', '', 0, 0, 0, 71, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(187, 20.99, '{\"31\":\"large\",\"32\":\"hand-tosset\"}', '', 0, 0, 0, 71, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(188, 21.99, '{\"31\":\"large\",\"32\":\"thin-crust\"}', '', 0, 0, 0, 71, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(189, 22.99, '{\"31\":\"large\",\"32\":\"double-decker\"}', '', 0, 0, 0, 71, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(190, 23.99, '{\"31\":\"family\",\"32\":\"hand-tosset\"}', '', 0, 0, 0, 71, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(191, 24.99, '{\"31\":\"family\",\"32\":\"thin-crust\"}', '', 0, 0, 0, 71, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(192, 25.99, '{\"31\":\"family\",\"32\":\"double-decker\"}', '', 0, 0, 0, 71, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(193, 14.99, '{\"33\":\"small\",\"34\":\"hand-tosset\"}', '', 0, 0, 0, 72, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(194, 15.99, '{\"33\":\"small\",\"34\":\"thin-crust\"}', '', 0, 0, 0, 72, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(195, 16.99, '{\"33\":\"small\",\"34\":\"double-decker\"}', '', 0, 0, 0, 72, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(196, 17.99, '{\"33\":\"medium\",\"34\":\"hand-tosset\"}', '', 0, 0, 0, 72, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(197, 18.99, '{\"33\":\"medium\",\"34\":\"thin-crust\"}', '', 0, 0, 0, 72, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(198, 19.99, '{\"33\":\"medium\",\"34\":\"double-decker\"}', '', 0, 0, 0, 72, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(199, 20.99, '{\"33\":\"large\",\"34\":\"hand-tosset\"}', '', 0, 0, 0, 72, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(200, 21.99, '{\"33\":\"large\",\"34\":\"thin-crust\"}', '', 0, 0, 0, 72, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(201, 22.99, '{\"33\":\"large\",\"34\":\"double-decker\"}', '', 0, 0, 0, 72, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(202, 23.99, '{\"33\":\"family\",\"34\":\"hand-tosset\"}', '', 0, 0, 0, 72, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(203, 24.99, '{\"33\":\"family\",\"34\":\"thin-crust\"}', '', 0, 0, 0, 72, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(204, 25.99, '{\"33\":\"family\",\"34\":\"double-decker\"}', '', 0, 0, 0, 72, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(205, 10.49, '{\"35\":\"small\",\"36\":\"hand-tosset\"}', '', 0, 0, 0, 73, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(206, 11.49, '{\"35\":\"small\",\"36\":\"thin-crust\"}', '', 0, 0, 0, 73, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(207, 12.49, '{\"35\":\"small\",\"36\":\"double-decker\"}', '', 0, 0, 0, 73, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(208, 13.49, '{\"35\":\"medium\",\"36\":\"hand-tosset\"}', '', 0, 0, 0, 73, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(209, 14.49, '{\"35\":\"medium\",\"36\":\"thin-crust\"}', '', 0, 0, 0, 73, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(210, 15.49, '{\"35\":\"medium\",\"36\":\"double-decker\"}', '', 0, 0, 0, 73, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(211, 16.49, '{\"35\":\"large\",\"36\":\"hand-tosset\"}', '', 0, 0, 0, 73, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(212, 17.49, '{\"35\":\"large\",\"36\":\"thin-crust\"}', '', 0, 0, 0, 73, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(213, 18.49, '{\"35\":\"large\",\"36\":\"double-decker\"}', '', 0, 0, 0, 73, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(214, 19.49, '{\"35\":\"family\",\"36\":\"hand-tosset\"}', '', 0, 0, 0, 73, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(215, 20.49, '{\"35\":\"family\",\"36\":\"thin-crust\"}', '', 0, 0, 0, 73, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(216, 21.49, '{\"35\":\"family\",\"36\":\"double-decker\"}', '', 0, 0, 0, 73, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(217, 39.99, '{\"37\":\"small\",\"38\":\"hand-tosset\"}', '', 0, 0, 0, 74, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(218, 40.99, '{\"37\":\"small\",\"38\":\"thin-crust\"}', '', 0, 0, 0, 74, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(219, 41.99, '{\"37\":\"small\",\"38\":\"double-decker\"}', '', 0, 0, 0, 74, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(220, 42.99, '{\"37\":\"medium\",\"38\":\"hand-tosset\"}', '', 0, 0, 0, 74, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(221, 43.99, '{\"37\":\"medium\",\"38\":\"thin-crust\"}', '', 0, 0, 0, 74, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(222, 44.99, '{\"37\":\"medium\",\"38\":\"double-decker\"}', '', 0, 0, 0, 74, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(223, 45.99, '{\"37\":\"large\",\"38\":\"hand-tosset\"}', '', 0, 0, 0, 74, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(224, 46.99, '{\"37\":\"large\",\"38\":\"thin-crust\"}', '', 0, 0, 0, 74, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(225, 47.99, '{\"37\":\"large\",\"38\":\"double-decker\"}', '', 0, 0, 0, 74, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(226, 48.99, '{\"37\":\"family\",\"38\":\"hand-tosset\"}', '', 0, 0, 0, 74, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(227, 49.99, '{\"37\":\"family\",\"38\":\"thin-crust\"}', '', 0, 0, 0, 74, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(228, 50.99, '{\"37\":\"family\",\"38\":\"double-decker\"}', '', 0, 0, 0, 74, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(229, 14.99, '{\"39\":\"small\",\"40\":\"hand-tosset\"}', '', 0, 0, 0, 75, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(230, 15.99, '{\"39\":\"small\",\"40\":\"thin-crust\"}', '', 0, 0, 0, 75, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(231, 16.99, '{\"39\":\"small\",\"40\":\"double-decker\"}', '', 0, 0, 0, 75, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(232, 17.99, '{\"39\":\"medium\",\"40\":\"hand-tosset\"}', '', 0, 0, 0, 75, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(233, 18.99, '{\"39\":\"medium\",\"40\":\"thin-crust\"}', '', 0, 0, 0, 75, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(234, 19.99, '{\"39\":\"medium\",\"40\":\"double-decker\"}', '', 0, 0, 0, 75, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(235, 20.99, '{\"39\":\"large\",\"40\":\"hand-tosset\"}', '', 0, 0, 0, 75, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(236, 21.99, '{\"39\":\"large\",\"40\":\"thin-crust\"}', '', 0, 0, 0, 75, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(237, 22.99, '{\"39\":\"large\",\"40\":\"double-decker\"}', '', 0, 0, 0, 75, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(238, 23.99, '{\"39\":\"family\",\"40\":\"hand-tosset\"}', '', 0, 0, 0, 75, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(239, 24.99, '{\"39\":\"family\",\"40\":\"thin-crust\"}', '', 0, 0, 0, 75, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(240, 25.99, '{\"39\":\"family\",\"40\":\"double-decker\"}', '', 0, 0, 0, 75, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(241, 14.99, '{\"41\":\"small\",\"42\":\"hand-tosset\"}', '', 0, 0, 0, 76, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(242, 15.99, '{\"41\":\"small\",\"42\":\"thin-crust\"}', '', 0, 0, 0, 76, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(243, 16.99, '{\"41\":\"small\",\"42\":\"double-decker\"}', '', 0, 0, 0, 76, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(244, 17.99, '{\"41\":\"medium\",\"42\":\"hand-tosset\"}', '', 0, 0, 0, 76, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(245, 18.99, '{\"41\":\"medium\",\"42\":\"thin-crust\"}', '', 0, 0, 0, 76, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(246, 19.99, '{\"41\":\"medium\",\"42\":\"double-decker\"}', '', 0, 0, 0, 76, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(247, 20.99, '{\"41\":\"large\",\"42\":\"hand-tosset\"}', '', 0, 0, 0, 76, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(248, 21.99, '{\"41\":\"large\",\"42\":\"thin-crust\"}', '', 0, 0, 0, 76, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(249, 22.99, '{\"41\":\"large\",\"42\":\"double-decker\"}', '', 0, 0, 0, 76, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(250, 23.99, '{\"41\":\"family\",\"42\":\"hand-tosset\"}', '', 0, 0, 0, 76, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(251, 24.99, '{\"41\":\"family\",\"42\":\"thin-crust\"}', '', 0, 0, 0, 76, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(252, 25.99, '{\"41\":\"family\",\"42\":\"double-decker\"}', '', 0, 0, 0, 76, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(253, 14.99, '{\"43\":\"small\",\"44\":\"hand-tosset\"}', '', 0, 0, 0, 77, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(254, 15.99, '{\"43\":\"small\",\"44\":\"thin-crust\"}', '', 0, 0, 0, 77, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(255, 16.99, '{\"43\":\"small\",\"44\":\"double-decker\"}', '', 0, 0, 0, 77, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(256, 17.99, '{\"43\":\"medium\",\"44\":\"hand-tosset\"}', '', 0, 0, 0, 77, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(257, 18.99, '{\"43\":\"medium\",\"44\":\"thin-crust\"}', '', 0, 0, 0, 77, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(258, 19.99, '{\"43\":\"medium\",\"44\":\"double-decker\"}', '', 0, 0, 0, 77, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(259, 20.99, '{\"43\":\"large\",\"44\":\"hand-tosset\"}', '', 0, 0, 0, 77, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(260, 21.99, '{\"43\":\"large\",\"44\":\"thin-crust\"}', '', 0, 0, 0, 77, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(261, 22.99, '{\"43\":\"large\",\"44\":\"double-decker\"}', '', 0, 0, 0, 77, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(262, 23.99, '{\"43\":\"family\",\"44\":\"hand-tosset\"}', '', 0, 0, 0, 77, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(263, 24.99, '{\"43\":\"family\",\"44\":\"thin-crust\"}', '', 0, 0, 0, 77, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(264, 25.99, '{\"43\":\"family\",\"44\":\"double-decker\"}', '', 0, 0, 0, 77, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(265, 10.99, '{\"45\":\"small\",\"46\":\"hand-tosset\"}', '', 0, 0, 0, 86, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(266, 11.99, '{\"45\":\"small\",\"46\":\"thin-crust\"}', '', 0, 0, 0, 86, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(267, 12.99, '{\"45\":\"small\",\"46\":\"double-decker\"}', '', 0, 0, 0, 86, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(268, 13.99, '{\"45\":\"medium\",\"46\":\"hand-tosset\"}', '', 0, 0, 0, 86, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(269, 14.99, '{\"45\":\"medium\",\"46\":\"thin-crust\"}', '', 0, 0, 0, 86, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(270, 15.99, '{\"45\":\"medium\",\"46\":\"double-decker\"}', '', 0, 0, 0, 86, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(271, 16.99, '{\"45\":\"large\",\"46\":\"hand-tosset\"}', '', 0, 0, 0, 86, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(272, 17.99, '{\"45\":\"large\",\"46\":\"thin-crust\"}', '', 0, 0, 0, 86, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(273, 18.99, '{\"45\":\"large\",\"46\":\"double-decker\"}', '', 0, 0, 0, 86, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(274, 19.99, '{\"45\":\"family\",\"46\":\"hand-tosset\"}', '', 0, 0, 0, 86, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(275, 20.99, '{\"45\":\"family\",\"46\":\"thin-crust\"}', '', 0, 0, 0, 86, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(276, 21.99, '{\"45\":\"family\",\"46\":\"double-decker\"}', '', 0, 0, 0, 86, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(277, 14.99, '{\"47\":\"small\",\"48\":\"hand-tosset\"}', '', 0, 0, 0, 87, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(278, 15.99, '{\"47\":\"small\",\"48\":\"thin-crust\"}', '', 0, 0, 0, 87, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(279, 16.99, '{\"47\":\"small\",\"48\":\"double-decker\"}', '', 0, 0, 0, 87, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(280, 17.99, '{\"47\":\"medium\",\"48\":\"hand-tosset\"}', '', 0, 0, 0, 87, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(281, 18.99, '{\"47\":\"medium\",\"48\":\"thin-crust\"}', '', 0, 0, 0, 87, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(282, 19.99, '{\"47\":\"medium\",\"48\":\"double-decker\"}', '', 0, 0, 0, 87, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(283, 20.99, '{\"47\":\"large\",\"48\":\"hand-tosset\"}', '', 0, 0, 0, 87, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(284, 21.99, '{\"47\":\"large\",\"48\":\"thin-crust\"}', '', 0, 0, 0, 87, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(285, 22.99, '{\"47\":\"large\",\"48\":\"double-decker\"}', '', 0, 0, 0, 87, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(286, 23.99, '{\"47\":\"family\",\"48\":\"hand-tosset\"}', '', 0, 0, 0, 87, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(287, 24.99, '{\"47\":\"family\",\"48\":\"thin-crust\"}', '', 0, 0, 0, 87, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(288, 25.99, '{\"47\":\"family\",\"48\":\"double-decker\"}', '', 0, 0, 0, 87, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(289, 14.99, '{\"49\":\"small\",\"50\":\"hand-tosset\"}', '', 0, 0, 0, 88, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(290, 15.99, '{\"49\":\"small\",\"50\":\"thin-crust\"}', '', 0, 0, 0, 88, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(291, 16.99, '{\"49\":\"small\",\"50\":\"double-decker\"}', '', 0, 0, 0, 88, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(292, 17.99, '{\"49\":\"medium\",\"50\":\"hand-tosset\"}', '', 0, 0, 0, 88, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(293, 18.99, '{\"49\":\"medium\",\"50\":\"thin-crust\"}', '', 0, 0, 0, 88, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(294, 19.99, '{\"49\":\"medium\",\"50\":\"double-decker\"}', '', 0, 0, 0, 88, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(295, 20.99, '{\"49\":\"large\",\"50\":\"hand-tosset\"}', '', 0, 0, 0, 88, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(296, 21.99, '{\"49\":\"large\",\"50\":\"thin-crust\"}', '', 0, 0, 0, 88, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(297, 22.99, '{\"49\":\"large\",\"50\":\"double-decker\"}', '', 0, 0, 0, 88, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(298, 23.99, '{\"49\":\"family\",\"50\":\"hand-tosset\"}', '', 0, 0, 0, 88, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(299, 24.99, '{\"49\":\"family\",\"50\":\"thin-crust\"}', '', 0, 0, 0, 88, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(300, 25.99, '{\"49\":\"family\",\"50\":\"double-decker\"}', '', 0, 0, 0, 88, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(301, 14.99, '{\"51\":\"small\",\"52\":\"hand-tosset\"}', '', 0, 0, 0, 89, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(302, 15.99, '{\"51\":\"small\",\"52\":\"thin-crust\"}', '', 0, 0, 0, 89, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(303, 16.99, '{\"51\":\"small\",\"52\":\"double-decker\"}', '', 0, 0, 0, 89, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(304, 17.99, '{\"51\":\"medium\",\"52\":\"hand-tosset\"}', '', 0, 0, 0, 89, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(305, 18.99, '{\"51\":\"medium\",\"52\":\"thin-crust\"}', '', 0, 0, 0, 89, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(306, 19.99, '{\"51\":\"medium\",\"52\":\"double-decker\"}', '', 0, 0, 0, 89, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(307, 20.99, '{\"51\":\"large\",\"52\":\"hand-tosset\"}', '', 0, 0, 0, 89, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(308, 21.99, '{\"51\":\"large\",\"52\":\"thin-crust\"}', '', 0, 0, 0, 89, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(309, 22.99, '{\"51\":\"large\",\"52\":\"double-decker\"}', '', 0, 0, 0, 89, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(310, 23.99, '{\"51\":\"family\",\"52\":\"hand-tosset\"}', '', 0, 0, 0, 89, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(311, 24.99, '{\"51\":\"family\",\"52\":\"thin-crust\"}', '', 0, 0, 0, 89, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(312, 25.99, '{\"51\":\"family\",\"52\":\"double-decker\"}', '', 0, 0, 0, 89, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(313, 14.99, '{\"53\":\"small\",\"54\":\"hand-tosset\"}', '', 0, 0, 0, 90, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(314, 15.99, '{\"53\":\"small\",\"54\":\"thin-crust\"}', '', 0, 0, 0, 90, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(315, 16.99, '{\"53\":\"small\",\"54\":\"double-decker\"}', '', 0, 0, 0, 90, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(316, 17.99, '{\"53\":\"medium\",\"54\":\"hand-tosset\"}', '', 0, 0, 0, 90, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(317, 18.99, '{\"53\":\"medium\",\"54\":\"thin-crust\"}', '', 0, 0, 0, 90, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(318, 19.99, '{\"53\":\"medium\",\"54\":\"double-decker\"}', '', 0, 0, 0, 90, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(319, 20.99, '{\"53\":\"large\",\"54\":\"hand-tosset\"}', '', 0, 0, 0, 90, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(320, 21.99, '{\"53\":\"large\",\"54\":\"thin-crust\"}', '', 0, 0, 0, 90, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(321, 22.99, '{\"53\":\"large\",\"54\":\"double-decker\"}', '', 0, 0, 0, 90, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(322, 23.99, '{\"53\":\"family\",\"54\":\"hand-tosset\"}', '', 0, 0, 0, 90, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(323, 24.99, '{\"53\":\"family\",\"54\":\"thin-crust\"}', '', 0, 0, 0, 90, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(324, 25.99, '{\"53\":\"family\",\"54\":\"double-decker\"}', '', 0, 0, 0, 90, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(325, 14.99, '{\"55\":\"small\",\"56\":\"hand-tosset\"}', '', 0, 0, 0, 91, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(326, 15.99, '{\"55\":\"small\",\"56\":\"thin-crust\"}', '', 0, 0, 0, 91, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(327, 16.99, '{\"55\":\"small\",\"56\":\"double-decker\"}', '', 0, 0, 0, 91, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(328, 17.99, '{\"55\":\"medium\",\"56\":\"hand-tosset\"}', '', 0, 0, 0, 91, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(329, 18.99, '{\"55\":\"medium\",\"56\":\"thin-crust\"}', '', 0, 0, 0, 91, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(330, 19.99, '{\"55\":\"medium\",\"56\":\"double-decker\"}', '', 0, 0, 0, 91, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(331, 20.99, '{\"55\":\"large\",\"56\":\"hand-tosset\"}', '', 0, 0, 0, 91, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(332, 21.99, '{\"55\":\"large\",\"56\":\"thin-crust\"}', '', 0, 0, 0, 91, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(333, 22.99, '{\"55\":\"large\",\"56\":\"double-decker\"}', '', 0, 0, 0, 91, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(334, 23.99, '{\"55\":\"family\",\"56\":\"hand-tosset\"}', '', 0, 0, 0, 91, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(335, 24.99, '{\"55\":\"family\",\"56\":\"thin-crust\"}', '', 0, 0, 0, 91, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(336, 25.99, '{\"55\":\"family\",\"56\":\"double-decker\"}', '', 0, 0, 0, 91, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(337, 10.49, '{\"57\":\"small\",\"58\":\"hand-tosset\"}', '', 0, 0, 0, 92, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(338, 11.49, '{\"57\":\"small\",\"58\":\"thin-crust\"}', '', 0, 0, 0, 92, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(339, 12.49, '{\"57\":\"small\",\"58\":\"double-decker\"}', '', 0, 0, 0, 92, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(340, 13.49, '{\"57\":\"medium\",\"58\":\"hand-tosset\"}', '', 0, 0, 0, 92, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(341, 14.49, '{\"57\":\"medium\",\"58\":\"thin-crust\"}', '', 0, 0, 0, 92, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(342, 15.49, '{\"57\":\"medium\",\"58\":\"double-decker\"}', '', 0, 0, 0, 92, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(343, 16.49, '{\"57\":\"large\",\"58\":\"hand-tosset\"}', '', 0, 0, 0, 92, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(344, 17.49, '{\"57\":\"large\",\"58\":\"thin-crust\"}', '', 0, 0, 0, 92, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(345, 18.49, '{\"57\":\"large\",\"58\":\"double-decker\"}', '', 0, 0, 0, 92, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(346, 19.49, '{\"57\":\"family\",\"58\":\"hand-tosset\"}', '', 0, 0, 0, 92, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(347, 20.49, '{\"57\":\"family\",\"58\":\"thin-crust\"}', '', 0, 0, 0, 92, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(348, 21.49, '{\"57\":\"family\",\"58\":\"double-decker\"}', '', 0, 0, 0, 92, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(349, 39.99, '{\"59\":\"small\",\"60\":\"hand-tosset\"}', '', 0, 0, 0, 93, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(350, 40.99, '{\"59\":\"small\",\"60\":\"thin-crust\"}', '', 0, 0, 0, 93, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(351, 41.99, '{\"59\":\"small\",\"60\":\"double-decker\"}', '', 0, 0, 0, 93, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(352, 42.99, '{\"59\":\"medium\",\"60\":\"hand-tosset\"}', '', 0, 0, 0, 93, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(353, 43.99, '{\"59\":\"medium\",\"60\":\"thin-crust\"}', '', 0, 0, 0, 93, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(354, 44.99, '{\"59\":\"medium\",\"60\":\"double-decker\"}', '', 0, 0, 0, 93, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(355, 45.99, '{\"59\":\"large\",\"60\":\"hand-tosset\"}', '', 0, 0, 0, 93, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(356, 46.99, '{\"59\":\"large\",\"60\":\"thin-crust\"}', '', 0, 0, 0, 93, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(357, 47.99, '{\"59\":\"large\",\"60\":\"double-decker\"}', '', 0, 0, 0, 93, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(358, 48.99, '{\"59\":\"family\",\"60\":\"hand-tosset\"}', '', 0, 0, 0, 93, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(359, 49.99, '{\"59\":\"family\",\"60\":\"thin-crust\"}', '', 0, 0, 0, 93, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(360, 50.99, '{\"59\":\"family\",\"60\":\"double-decker\"}', '', 0, 0, 0, 93, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(361, 14.99, '{\"61\":\"small\",\"62\":\"hand-tosset\"}', '', 0, 0, 0, 94, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(362, 15.99, '{\"61\":\"small\",\"62\":\"thin-crust\"}', '', 0, 0, 0, 94, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(363, 16.99, '{\"61\":\"small\",\"62\":\"double-decker\"}', '', 0, 0, 0, 94, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(364, 17.99, '{\"61\":\"medium\",\"62\":\"hand-tosset\"}', '', 0, 0, 0, 94, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(365, 18.99, '{\"61\":\"medium\",\"62\":\"thin-crust\"}', '', 0, 0, 0, 94, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(366, 19.99, '{\"61\":\"medium\",\"62\":\"double-decker\"}', '', 0, 0, 0, 94, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(367, 20.99, '{\"61\":\"large\",\"62\":\"hand-tosset\"}', '', 0, 0, 0, 94, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(368, 21.99, '{\"61\":\"large\",\"62\":\"thin-crust\"}', '', 0, 0, 0, 94, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(369, 22.99, '{\"61\":\"large\",\"62\":\"double-decker\"}', '', 0, 0, 0, 94, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(370, 23.99, '{\"61\":\"family\",\"62\":\"hand-tosset\"}', '', 0, 0, 0, 94, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(371, 24.99, '{\"61\":\"family\",\"62\":\"thin-crust\"}', '', 0, 0, 0, 94, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(372, 25.99, '{\"61\":\"family\",\"62\":\"double-decker\"}', '', 0, 0, 0, 94, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(373, 14.99, '{\"63\":\"small\",\"64\":\"hand-tosset\"}', '', 0, 0, 0, 95, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(374, 15.99, '{\"63\":\"small\",\"64\":\"thin-crust\"}', '', 0, 0, 0, 95, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(375, 16.99, '{\"63\":\"small\",\"64\":\"double-decker\"}', '', 0, 0, 0, 95, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(376, 17.99, '{\"63\":\"medium\",\"64\":\"hand-tosset\"}', '', 0, 0, 0, 95, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(377, 18.99, '{\"63\":\"medium\",\"64\":\"thin-crust\"}', '', 0, 0, 0, 95, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(378, 19.99, '{\"63\":\"medium\",\"64\":\"double-decker\"}', '', 0, 0, 0, 95, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(379, 20.99, '{\"63\":\"large\",\"64\":\"hand-tosset\"}', '', 0, 0, 0, 95, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(380, 21.99, '{\"63\":\"large\",\"64\":\"thin-crust\"}', '', 0, 0, 0, 95, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(381, 22.99, '{\"63\":\"large\",\"64\":\"double-decker\"}', '', 0, 0, 0, 95, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(382, 23.99, '{\"63\":\"family\",\"64\":\"hand-tosset\"}', '', 0, 0, 0, 95, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(383, 24.99, '{\"63\":\"family\",\"64\":\"thin-crust\"}', '', 0, 0, 0, 95, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(384, 25.99, '{\"63\":\"family\",\"64\":\"double-decker\"}', '', 0, 0, 0, 95, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(385, 14.99, '{\"65\":\"small\",\"66\":\"hand-tosset\"}', '', 0, 0, 0, 96, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0);
INSERT INTO `variants` (`id`, `price`, `options`, `image`, `qty`, `enable_qty`, `order`, `item_id`, `created_at`, `updated_at`, `deleted_at`, `is_system`) VALUES
(386, 15.99, '{\"65\":\"small\",\"66\":\"thin-crust\"}', '', 0, 0, 0, 96, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(387, 16.99, '{\"65\":\"small\",\"66\":\"double-decker\"}', '', 0, 0, 0, 96, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(388, 17.99, '{\"65\":\"medium\",\"66\":\"hand-tosset\"}', '', 0, 0, 0, 96, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(389, 18.99, '{\"65\":\"medium\",\"66\":\"thin-crust\"}', '', 0, 0, 0, 96, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(390, 19.99, '{\"65\":\"medium\",\"66\":\"double-decker\"}', '', 0, 0, 0, 96, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(391, 20.99, '{\"65\":\"large\",\"66\":\"hand-tosset\"}', '', 0, 0, 0, 96, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(392, 21.99, '{\"65\":\"large\",\"66\":\"thin-crust\"}', '', 0, 0, 0, 96, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(393, 22.99, '{\"65\":\"large\",\"66\":\"double-decker\"}', '', 0, 0, 0, 96, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(394, 23.99, '{\"65\":\"family\",\"66\":\"hand-tosset\"}', '', 0, 0, 0, 96, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(395, 24.99, '{\"65\":\"family\",\"66\":\"thin-crust\"}', '', 0, 0, 0, 96, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(396, 25.99, '{\"65\":\"family\",\"66\":\"double-decker\"}', '', 0, 0, 0, 96, '2021-12-30 22:33:45', '2021-12-30 22:33:45', NULL, 0),
(397, 10.99, '{\"67\":\"small\",\"68\":\"hand-tosset\"}', '', 0, 0, 0, 146, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(398, 11.99, '{\"67\":\"small\",\"68\":\"thin-crust\"}', '', 0, 0, 0, 146, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(399, 12.99, '{\"67\":\"small\",\"68\":\"double-decker\"}', '', 0, 0, 0, 146, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(400, 13.99, '{\"67\":\"medium\",\"68\":\"hand-tosset\"}', '', 0, 0, 0, 146, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(401, 14.99, '{\"67\":\"medium\",\"68\":\"thin-crust\"}', '', 0, 0, 0, 146, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(402, 15.99, '{\"67\":\"medium\",\"68\":\"double-decker\"}', '', 0, 0, 0, 146, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(403, 16.99, '{\"67\":\"large\",\"68\":\"hand-tosset\"}', '', 0, 0, 0, 146, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(404, 17.99, '{\"67\":\"large\",\"68\":\"thin-crust\"}', '', 0, 0, 0, 146, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(405, 18.99, '{\"67\":\"large\",\"68\":\"double-decker\"}', '', 0, 0, 0, 146, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(406, 19.99, '{\"67\":\"family\",\"68\":\"hand-tosset\"}', '', 0, 0, 0, 146, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(407, 20.99, '{\"67\":\"family\",\"68\":\"thin-crust\"}', '', 0, 0, 0, 146, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(408, 21.99, '{\"67\":\"family\",\"68\":\"double-decker\"}', '', 0, 0, 0, 146, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(409, 14.99, '{\"69\":\"small\",\"70\":\"hand-tosset\"}', '', 0, 0, 0, 147, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(410, 15.99, '{\"69\":\"small\",\"70\":\"thin-crust\"}', '', 0, 0, 0, 147, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(411, 16.99, '{\"69\":\"small\",\"70\":\"double-decker\"}', '', 0, 0, 0, 147, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(412, 17.99, '{\"69\":\"medium\",\"70\":\"hand-tosset\"}', '', 0, 0, 0, 147, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(413, 18.99, '{\"69\":\"medium\",\"70\":\"thin-crust\"}', '', 0, 0, 0, 147, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(414, 19.99, '{\"69\":\"medium\",\"70\":\"double-decker\"}', '', 0, 0, 0, 147, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(415, 20.99, '{\"69\":\"large\",\"70\":\"hand-tosset\"}', '', 0, 0, 0, 147, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(416, 21.99, '{\"69\":\"large\",\"70\":\"thin-crust\"}', '', 0, 0, 0, 147, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(417, 22.99, '{\"69\":\"large\",\"70\":\"double-decker\"}', '', 0, 0, 0, 147, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(418, 23.99, '{\"69\":\"family\",\"70\":\"hand-tosset\"}', '', 0, 0, 0, 147, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(419, 24.99, '{\"69\":\"family\",\"70\":\"thin-crust\"}', '', 0, 0, 0, 147, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(420, 25.99, '{\"69\":\"family\",\"70\":\"double-decker\"}', '', 0, 0, 0, 147, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(421, 14.99, '{\"71\":\"small\",\"72\":\"hand-tosset\"}', '', 0, 0, 0, 148, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(422, 15.99, '{\"71\":\"small\",\"72\":\"thin-crust\"}', '', 0, 0, 0, 148, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(423, 16.99, '{\"71\":\"small\",\"72\":\"double-decker\"}', '', 0, 0, 0, 148, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(424, 17.99, '{\"71\":\"medium\",\"72\":\"hand-tosset\"}', '', 0, 0, 0, 148, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(425, 18.99, '{\"71\":\"medium\",\"72\":\"thin-crust\"}', '', 0, 0, 0, 148, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(426, 19.99, '{\"71\":\"medium\",\"72\":\"double-decker\"}', '', 0, 0, 0, 148, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(427, 20.99, '{\"71\":\"large\",\"72\":\"hand-tosset\"}', '', 0, 0, 0, 148, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(428, 21.99, '{\"71\":\"large\",\"72\":\"thin-crust\"}', '', 0, 0, 0, 148, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(429, 22.99, '{\"71\":\"large\",\"72\":\"double-decker\"}', '', 0, 0, 0, 148, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(430, 23.99, '{\"71\":\"family\",\"72\":\"hand-tosset\"}', '', 0, 0, 0, 148, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(431, 24.99, '{\"71\":\"family\",\"72\":\"thin-crust\"}', '', 0, 0, 0, 148, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(432, 25.99, '{\"71\":\"family\",\"72\":\"double-decker\"}', '', 0, 0, 0, 148, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(433, 14.99, '{\"73\":\"small\",\"74\":\"hand-tosset\"}', '', 0, 0, 0, 149, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(434, 15.99, '{\"73\":\"small\",\"74\":\"thin-crust\"}', '', 0, 0, 0, 149, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(435, 16.99, '{\"73\":\"small\",\"74\":\"double-decker\"}', '', 0, 0, 0, 149, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(436, 17.99, '{\"73\":\"medium\",\"74\":\"hand-tosset\"}', '', 0, 0, 0, 149, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(437, 18.99, '{\"73\":\"medium\",\"74\":\"thin-crust\"}', '', 0, 0, 0, 149, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(438, 19.99, '{\"73\":\"medium\",\"74\":\"double-decker\"}', '', 0, 0, 0, 149, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(439, 20.99, '{\"73\":\"large\",\"74\":\"hand-tosset\"}', '', 0, 0, 0, 149, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(440, 21.99, '{\"73\":\"large\",\"74\":\"thin-crust\"}', '', 0, 0, 0, 149, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(441, 22.99, '{\"73\":\"large\",\"74\":\"double-decker\"}', '', 0, 0, 0, 149, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(442, 23.99, '{\"73\":\"family\",\"74\":\"hand-tosset\"}', '', 0, 0, 0, 149, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(443, 24.99, '{\"73\":\"family\",\"74\":\"thin-crust\"}', '', 0, 0, 0, 149, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(444, 25.99, '{\"73\":\"family\",\"74\":\"double-decker\"}', '', 0, 0, 0, 149, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(445, 14.99, '{\"75\":\"small\",\"76\":\"hand-tosset\"}', '', 0, 0, 0, 150, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(446, 15.99, '{\"75\":\"small\",\"76\":\"thin-crust\"}', '', 0, 0, 0, 150, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(447, 16.99, '{\"75\":\"small\",\"76\":\"double-decker\"}', '', 0, 0, 0, 150, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(448, 17.99, '{\"75\":\"medium\",\"76\":\"hand-tosset\"}', '', 0, 0, 0, 150, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(449, 18.99, '{\"75\":\"medium\",\"76\":\"thin-crust\"}', '', 0, 0, 0, 150, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(450, 19.99, '{\"75\":\"medium\",\"76\":\"double-decker\"}', '', 0, 0, 0, 150, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(451, 20.99, '{\"75\":\"large\",\"76\":\"hand-tosset\"}', '', 0, 0, 0, 150, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(452, 21.99, '{\"75\":\"large\",\"76\":\"thin-crust\"}', '', 0, 0, 0, 150, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(453, 22.99, '{\"75\":\"large\",\"76\":\"double-decker\"}', '', 0, 0, 0, 150, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(454, 23.99, '{\"75\":\"family\",\"76\":\"hand-tosset\"}', '', 0, 0, 0, 150, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(455, 24.99, '{\"75\":\"family\",\"76\":\"thin-crust\"}', '', 0, 0, 0, 150, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(456, 25.99, '{\"75\":\"family\",\"76\":\"double-decker\"}', '', 0, 0, 0, 150, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(457, 14.99, '{\"77\":\"small\",\"78\":\"hand-tosset\"}', '', 0, 0, 0, 151, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(458, 15.99, '{\"77\":\"small\",\"78\":\"thin-crust\"}', '', 0, 0, 0, 151, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(459, 16.99, '{\"77\":\"small\",\"78\":\"double-decker\"}', '', 0, 0, 0, 151, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(460, 17.99, '{\"77\":\"medium\",\"78\":\"hand-tosset\"}', '', 0, 0, 0, 151, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(461, 18.99, '{\"77\":\"medium\",\"78\":\"thin-crust\"}', '', 0, 0, 0, 151, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(462, 19.99, '{\"77\":\"medium\",\"78\":\"double-decker\"}', '', 0, 0, 0, 151, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(463, 20.99, '{\"77\":\"large\",\"78\":\"hand-tosset\"}', '', 0, 0, 0, 151, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(464, 21.99, '{\"77\":\"large\",\"78\":\"thin-crust\"}', '', 0, 0, 0, 151, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(465, 22.99, '{\"77\":\"large\",\"78\":\"double-decker\"}', '', 0, 0, 0, 151, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(466, 23.99, '{\"77\":\"family\",\"78\":\"hand-tosset\"}', '', 0, 0, 0, 151, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(467, 24.99, '{\"77\":\"family\",\"78\":\"thin-crust\"}', '', 0, 0, 0, 151, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(468, 25.99, '{\"77\":\"family\",\"78\":\"double-decker\"}', '', 0, 0, 0, 151, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(469, 10.49, '{\"79\":\"small\",\"80\":\"hand-tosset\"}', '', 0, 0, 0, 152, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(470, 11.49, '{\"79\":\"small\",\"80\":\"thin-crust\"}', '', 0, 0, 0, 152, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(471, 12.49, '{\"79\":\"small\",\"80\":\"double-decker\"}', '', 0, 0, 0, 152, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(472, 13.49, '{\"79\":\"medium\",\"80\":\"hand-tosset\"}', '', 0, 0, 0, 152, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(473, 14.49, '{\"79\":\"medium\",\"80\":\"thin-crust\"}', '', 0, 0, 0, 152, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(474, 15.49, '{\"79\":\"medium\",\"80\":\"double-decker\"}', '', 0, 0, 0, 152, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(475, 16.49, '{\"79\":\"large\",\"80\":\"hand-tosset\"}', '', 0, 0, 0, 152, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(476, 17.49, '{\"79\":\"large\",\"80\":\"thin-crust\"}', '', 0, 0, 0, 152, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(477, 18.49, '{\"79\":\"large\",\"80\":\"double-decker\"}', '', 0, 0, 0, 152, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(478, 19.49, '{\"79\":\"family\",\"80\":\"hand-tosset\"}', '', 0, 0, 0, 152, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(479, 20.49, '{\"79\":\"family\",\"80\":\"thin-crust\"}', '', 0, 0, 0, 152, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(480, 21.49, '{\"79\":\"family\",\"80\":\"double-decker\"}', '', 0, 0, 0, 152, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(481, 39.99, '{\"81\":\"small\",\"82\":\"hand-tosset\"}', '', 0, 0, 0, 153, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(482, 40.99, '{\"81\":\"small\",\"82\":\"thin-crust\"}', '', 0, 0, 0, 153, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(483, 41.99, '{\"81\":\"small\",\"82\":\"double-decker\"}', '', 0, 0, 0, 153, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(484, 42.99, '{\"81\":\"medium\",\"82\":\"hand-tosset\"}', '', 0, 0, 0, 153, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(485, 43.99, '{\"81\":\"medium\",\"82\":\"thin-crust\"}', '', 0, 0, 0, 153, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(486, 44.99, '{\"81\":\"medium\",\"82\":\"double-decker\"}', '', 0, 0, 0, 153, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(487, 45.99, '{\"81\":\"large\",\"82\":\"hand-tosset\"}', '', 0, 0, 0, 153, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(488, 46.99, '{\"81\":\"large\",\"82\":\"thin-crust\"}', '', 0, 0, 0, 153, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(489, 47.99, '{\"81\":\"large\",\"82\":\"double-decker\"}', '', 0, 0, 0, 153, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(490, 48.99, '{\"81\":\"family\",\"82\":\"hand-tosset\"}', '', 0, 0, 0, 153, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(491, 49.99, '{\"81\":\"family\",\"82\":\"thin-crust\"}', '', 0, 0, 0, 153, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(492, 50.99, '{\"81\":\"family\",\"82\":\"double-decker\"}', '', 0, 0, 0, 153, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(493, 14.99, '{\"83\":\"small\",\"84\":\"hand-tosset\"}', '', 0, 0, 0, 154, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(494, 15.99, '{\"83\":\"small\",\"84\":\"thin-crust\"}', '', 0, 0, 0, 154, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(495, 16.99, '{\"83\":\"small\",\"84\":\"double-decker\"}', '', 0, 0, 0, 154, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(496, 17.99, '{\"83\":\"medium\",\"84\":\"hand-tosset\"}', '', 0, 0, 0, 154, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(497, 18.99, '{\"83\":\"medium\",\"84\":\"thin-crust\"}', '', 0, 0, 0, 154, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(498, 19.99, '{\"83\":\"medium\",\"84\":\"double-decker\"}', '', 0, 0, 0, 154, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(499, 20.99, '{\"83\":\"large\",\"84\":\"hand-tosset\"}', '', 0, 0, 0, 154, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(500, 21.99, '{\"83\":\"large\",\"84\":\"thin-crust\"}', '', 0, 0, 0, 154, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(501, 22.99, '{\"83\":\"large\",\"84\":\"double-decker\"}', '', 0, 0, 0, 154, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(502, 23.99, '{\"83\":\"family\",\"84\":\"hand-tosset\"}', '', 0, 0, 0, 154, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(503, 24.99, '{\"83\":\"family\",\"84\":\"thin-crust\"}', '', 0, 0, 0, 154, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(504, 25.99, '{\"83\":\"family\",\"84\":\"double-decker\"}', '', 0, 0, 0, 154, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(505, 14.99, '{\"85\":\"small\",\"86\":\"hand-tosset\"}', '', 0, 0, 0, 155, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(506, 15.99, '{\"85\":\"small\",\"86\":\"thin-crust\"}', '', 0, 0, 0, 155, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(507, 16.99, '{\"85\":\"small\",\"86\":\"double-decker\"}', '', 0, 0, 0, 155, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(508, 17.99, '{\"85\":\"medium\",\"86\":\"hand-tosset\"}', '', 0, 0, 0, 155, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(509, 18.99, '{\"85\":\"medium\",\"86\":\"thin-crust\"}', '', 0, 0, 0, 155, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(510, 19.99, '{\"85\":\"medium\",\"86\":\"double-decker\"}', '', 0, 0, 0, 155, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(511, 20.99, '{\"85\":\"large\",\"86\":\"hand-tosset\"}', '', 0, 0, 0, 155, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(512, 21.99, '{\"85\":\"large\",\"86\":\"thin-crust\"}', '', 0, 0, 0, 155, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(513, 22.99, '{\"85\":\"large\",\"86\":\"double-decker\"}', '', 0, 0, 0, 155, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(514, 23.99, '{\"85\":\"family\",\"86\":\"hand-tosset\"}', '', 0, 0, 0, 155, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(515, 24.99, '{\"85\":\"family\",\"86\":\"thin-crust\"}', '', 0, 0, 0, 155, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(516, 25.99, '{\"85\":\"family\",\"86\":\"double-decker\"}', '', 0, 0, 0, 155, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(517, 14.99, '{\"87\":\"small\",\"88\":\"hand-tosset\"}', '', 0, 0, 0, 156, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(518, 15.99, '{\"87\":\"small\",\"88\":\"thin-crust\"}', '', 0, 0, 0, 156, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(519, 16.99, '{\"87\":\"small\",\"88\":\"double-decker\"}', '', 0, 0, 0, 156, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(520, 17.99, '{\"87\":\"medium\",\"88\":\"hand-tosset\"}', '', 0, 0, 0, 156, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(521, 18.99, '{\"87\":\"medium\",\"88\":\"thin-crust\"}', '', 0, 0, 0, 156, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(522, 19.99, '{\"87\":\"medium\",\"88\":\"double-decker\"}', '', 0, 0, 0, 156, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(523, 20.99, '{\"87\":\"large\",\"88\":\"hand-tosset\"}', '', 0, 0, 0, 156, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(524, 21.99, '{\"87\":\"large\",\"88\":\"thin-crust\"}', '', 0, 0, 0, 156, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(525, 22.99, '{\"87\":\"large\",\"88\":\"double-decker\"}', '', 0, 0, 0, 156, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(526, 23.99, '{\"87\":\"family\",\"88\":\"hand-tosset\"}', '', 0, 0, 0, 156, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(527, 24.99, '{\"87\":\"family\",\"88\":\"thin-crust\"}', '', 0, 0, 0, 156, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(528, 25.99, '{\"87\":\"family\",\"88\":\"double-decker\"}', '', 0, 0, 0, 156, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(529, 10.99, '{\"89\":\"small\",\"90\":\"hand-tosset\"}', '', 0, 0, 0, 180, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(530, 11.99, '{\"89\":\"small\",\"90\":\"thin-crust\"}', '', 0, 0, 0, 180, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(531, 12.99, '{\"89\":\"small\",\"90\":\"double-decker\"}', '', 0, 0, 0, 180, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(532, 13.99, '{\"89\":\"medium\",\"90\":\"hand-tosset\"}', '', 0, 0, 0, 180, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(533, 14.99, '{\"89\":\"medium\",\"90\":\"thin-crust\"}', '', 0, 0, 0, 180, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(534, 15.99, '{\"89\":\"medium\",\"90\":\"double-decker\"}', '', 0, 0, 0, 180, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(535, 16.99, '{\"89\":\"large\",\"90\":\"hand-tosset\"}', '', 0, 0, 0, 180, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(536, 17.99, '{\"89\":\"large\",\"90\":\"thin-crust\"}', '', 0, 0, 0, 180, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(537, 18.99, '{\"89\":\"large\",\"90\":\"double-decker\"}', '', 0, 0, 0, 180, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(538, 19.99, '{\"89\":\"family\",\"90\":\"hand-tosset\"}', '', 0, 0, 0, 180, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(539, 20.99, '{\"89\":\"family\",\"90\":\"thin-crust\"}', '', 0, 0, 0, 180, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(540, 21.99, '{\"89\":\"family\",\"90\":\"double-decker\"}', '', 0, 0, 0, 180, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(541, 14.99, '{\"91\":\"small\",\"92\":\"hand-tosset\"}', '', 0, 0, 0, 181, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(542, 15.99, '{\"91\":\"small\",\"92\":\"thin-crust\"}', '', 0, 0, 0, 181, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(543, 16.99, '{\"91\":\"small\",\"92\":\"double-decker\"}', '', 0, 0, 0, 181, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(544, 17.99, '{\"91\":\"medium\",\"92\":\"hand-tosset\"}', '', 0, 0, 0, 181, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(545, 18.99, '{\"91\":\"medium\",\"92\":\"thin-crust\"}', '', 0, 0, 0, 181, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(546, 19.99, '{\"91\":\"medium\",\"92\":\"double-decker\"}', '', 0, 0, 0, 181, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(547, 20.99, '{\"91\":\"large\",\"92\":\"hand-tosset\"}', '', 0, 0, 0, 181, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(548, 21.99, '{\"91\":\"large\",\"92\":\"thin-crust\"}', '', 0, 0, 0, 181, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(549, 22.99, '{\"91\":\"large\",\"92\":\"double-decker\"}', '', 0, 0, 0, 181, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(550, 23.99, '{\"91\":\"family\",\"92\":\"hand-tosset\"}', '', 0, 0, 0, 181, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(551, 24.99, '{\"91\":\"family\",\"92\":\"thin-crust\"}', '', 0, 0, 0, 181, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(552, 25.99, '{\"91\":\"family\",\"92\":\"double-decker\"}', '', 0, 0, 0, 181, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(553, 14.99, '{\"93\":\"small\",\"94\":\"hand-tosset\"}', '', 0, 0, 0, 182, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(554, 15.99, '{\"93\":\"small\",\"94\":\"thin-crust\"}', '', 0, 0, 0, 182, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(555, 16.99, '{\"93\":\"small\",\"94\":\"double-decker\"}', '', 0, 0, 0, 182, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(556, 17.99, '{\"93\":\"medium\",\"94\":\"hand-tosset\"}', '', 0, 0, 0, 182, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(557, 18.99, '{\"93\":\"medium\",\"94\":\"thin-crust\"}', '', 0, 0, 0, 182, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(558, 19.99, '{\"93\":\"medium\",\"94\":\"double-decker\"}', '', 0, 0, 0, 182, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(559, 20.99, '{\"93\":\"large\",\"94\":\"hand-tosset\"}', '', 0, 0, 0, 182, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(560, 21.99, '{\"93\":\"large\",\"94\":\"thin-crust\"}', '', 0, 0, 0, 182, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(561, 22.99, '{\"93\":\"large\",\"94\":\"double-decker\"}', '', 0, 0, 0, 182, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(562, 23.99, '{\"93\":\"family\",\"94\":\"hand-tosset\"}', '', 0, 0, 0, 182, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(563, 24.99, '{\"93\":\"family\",\"94\":\"thin-crust\"}', '', 0, 0, 0, 182, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(564, 25.99, '{\"93\":\"family\",\"94\":\"double-decker\"}', '', 0, 0, 0, 182, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(565, 14.99, '{\"95\":\"small\",\"96\":\"hand-tosset\"}', '', 0, 0, 0, 183, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(566, 15.99, '{\"95\":\"small\",\"96\":\"thin-crust\"}', '', 0, 0, 0, 183, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(567, 16.99, '{\"95\":\"small\",\"96\":\"double-decker\"}', '', 0, 0, 0, 183, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(568, 17.99, '{\"95\":\"medium\",\"96\":\"hand-tosset\"}', '', 0, 0, 0, 183, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(569, 18.99, '{\"95\":\"medium\",\"96\":\"thin-crust\"}', '', 0, 0, 0, 183, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(570, 19.99, '{\"95\":\"medium\",\"96\":\"double-decker\"}', '', 0, 0, 0, 183, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(571, 20.99, '{\"95\":\"large\",\"96\":\"hand-tosset\"}', '', 0, 0, 0, 183, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(572, 21.99, '{\"95\":\"large\",\"96\":\"thin-crust\"}', '', 0, 0, 0, 183, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(573, 22.99, '{\"95\":\"large\",\"96\":\"double-decker\"}', '', 0, 0, 0, 183, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(574, 23.99, '{\"95\":\"family\",\"96\":\"hand-tosset\"}', '', 0, 0, 0, 183, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(575, 24.99, '{\"95\":\"family\",\"96\":\"thin-crust\"}', '', 0, 0, 0, 183, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(576, 25.99, '{\"95\":\"family\",\"96\":\"double-decker\"}', '', 0, 0, 0, 183, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(577, 14.99, '{\"97\":\"small\",\"98\":\"hand-tosset\"}', '', 0, 0, 0, 184, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(578, 15.99, '{\"97\":\"small\",\"98\":\"thin-crust\"}', '', 0, 0, 0, 184, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(579, 16.99, '{\"97\":\"small\",\"98\":\"double-decker\"}', '', 0, 0, 0, 184, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(580, 17.99, '{\"97\":\"medium\",\"98\":\"hand-tosset\"}', '', 0, 0, 0, 184, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(581, 18.99, '{\"97\":\"medium\",\"98\":\"thin-crust\"}', '', 0, 0, 0, 184, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(582, 19.99, '{\"97\":\"medium\",\"98\":\"double-decker\"}', '', 0, 0, 0, 184, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(583, 20.99, '{\"97\":\"large\",\"98\":\"hand-tosset\"}', '', 0, 0, 0, 184, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(584, 21.99, '{\"97\":\"large\",\"98\":\"thin-crust\"}', '', 0, 0, 0, 184, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(585, 22.99, '{\"97\":\"large\",\"98\":\"double-decker\"}', '', 0, 0, 0, 184, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(586, 23.99, '{\"97\":\"family\",\"98\":\"hand-tosset\"}', '', 0, 0, 0, 184, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(587, 24.99, '{\"97\":\"family\",\"98\":\"thin-crust\"}', '', 0, 0, 0, 184, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(588, 25.99, '{\"97\":\"family\",\"98\":\"double-decker\"}', '', 0, 0, 0, 184, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(589, 14.99, '{\"99\":\"small\",\"100\":\"hand-tosset\"}', '', 0, 0, 0, 185, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(590, 15.99, '{\"99\":\"small\",\"100\":\"thin-crust\"}', '', 0, 0, 0, 185, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(591, 16.99, '{\"99\":\"small\",\"100\":\"double-decker\"}', '', 0, 0, 0, 185, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(592, 17.99, '{\"99\":\"medium\",\"100\":\"hand-tosset\"}', '', 0, 0, 0, 185, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(593, 18.99, '{\"99\":\"medium\",\"100\":\"thin-crust\"}', '', 0, 0, 0, 185, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(594, 19.99, '{\"99\":\"medium\",\"100\":\"double-decker\"}', '', 0, 0, 0, 185, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(595, 20.99, '{\"99\":\"large\",\"100\":\"hand-tosset\"}', '', 0, 0, 0, 185, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(596, 21.99, '{\"99\":\"large\",\"100\":\"thin-crust\"}', '', 0, 0, 0, 185, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(597, 22.99, '{\"99\":\"large\",\"100\":\"double-decker\"}', '', 0, 0, 0, 185, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(598, 23.99, '{\"99\":\"family\",\"100\":\"hand-tosset\"}', '', 0, 0, 0, 185, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(599, 24.99, '{\"99\":\"family\",\"100\":\"thin-crust\"}', '', 0, 0, 0, 185, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(600, 25.99, '{\"99\":\"family\",\"100\":\"double-decker\"}', '', 0, 0, 0, 185, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(601, 10.49, '{\"101\":\"small\",\"102\":\"hand-tosset\"}', '', 0, 0, 0, 186, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(602, 11.49, '{\"101\":\"small\",\"102\":\"thin-crust\"}', '', 0, 0, 0, 186, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(603, 12.49, '{\"101\":\"small\",\"102\":\"double-decker\"}', '', 0, 0, 0, 186, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(604, 13.49, '{\"101\":\"medium\",\"102\":\"hand-tosset\"}', '', 0, 0, 0, 186, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(605, 14.49, '{\"101\":\"medium\",\"102\":\"thin-crust\"}', '', 0, 0, 0, 186, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(606, 15.49, '{\"101\":\"medium\",\"102\":\"double-decker\"}', '', 0, 0, 0, 186, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(607, 16.49, '{\"101\":\"large\",\"102\":\"hand-tosset\"}', '', 0, 0, 0, 186, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(608, 17.49, '{\"101\":\"large\",\"102\":\"thin-crust\"}', '', 0, 0, 0, 186, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(609, 18.49, '{\"101\":\"large\",\"102\":\"double-decker\"}', '', 0, 0, 0, 186, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(610, 19.49, '{\"101\":\"family\",\"102\":\"hand-tosset\"}', '', 0, 0, 0, 186, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(611, 20.49, '{\"101\":\"family\",\"102\":\"thin-crust\"}', '', 0, 0, 0, 186, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(612, 21.49, '{\"101\":\"family\",\"102\":\"double-decker\"}', '', 0, 0, 0, 186, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(613, 39.99, '{\"103\":\"small\",\"104\":\"hand-tosset\"}', '', 0, 0, 0, 187, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(614, 40.99, '{\"103\":\"small\",\"104\":\"thin-crust\"}', '', 0, 0, 0, 187, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(615, 41.99, '{\"103\":\"small\",\"104\":\"double-decker\"}', '', 0, 0, 0, 187, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(616, 42.99, '{\"103\":\"medium\",\"104\":\"hand-tosset\"}', '', 0, 0, 0, 187, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(617, 43.99, '{\"103\":\"medium\",\"104\":\"thin-crust\"}', '', 0, 0, 0, 187, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(618, 44.99, '{\"103\":\"medium\",\"104\":\"double-decker\"}', '', 0, 0, 0, 187, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(619, 45.99, '{\"103\":\"large\",\"104\":\"hand-tosset\"}', '', 0, 0, 0, 187, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(620, 46.99, '{\"103\":\"large\",\"104\":\"thin-crust\"}', '', 0, 0, 0, 187, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(621, 47.99, '{\"103\":\"large\",\"104\":\"double-decker\"}', '', 0, 0, 0, 187, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(622, 48.99, '{\"103\":\"family\",\"104\":\"hand-tosset\"}', '', 0, 0, 0, 187, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(623, 49.99, '{\"103\":\"family\",\"104\":\"thin-crust\"}', '', 0, 0, 0, 187, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(624, 50.99, '{\"103\":\"family\",\"104\":\"double-decker\"}', '', 0, 0, 0, 187, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(625, 14.99, '{\"105\":\"small\",\"106\":\"hand-tosset\"}', '', 0, 0, 0, 188, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(626, 15.99, '{\"105\":\"small\",\"106\":\"thin-crust\"}', '', 0, 0, 0, 188, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(627, 16.99, '{\"105\":\"small\",\"106\":\"double-decker\"}', '', 0, 0, 0, 188, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(628, 17.99, '{\"105\":\"medium\",\"106\":\"hand-tosset\"}', '', 0, 0, 0, 188, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(629, 18.99, '{\"105\":\"medium\",\"106\":\"thin-crust\"}', '', 0, 0, 0, 188, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(630, 19.99, '{\"105\":\"medium\",\"106\":\"double-decker\"}', '', 0, 0, 0, 188, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(631, 20.99, '{\"105\":\"large\",\"106\":\"hand-tosset\"}', '', 0, 0, 0, 188, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(632, 21.99, '{\"105\":\"large\",\"106\":\"thin-crust\"}', '', 0, 0, 0, 188, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(633, 22.99, '{\"105\":\"large\",\"106\":\"double-decker\"}', '', 0, 0, 0, 188, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(634, 23.99, '{\"105\":\"family\",\"106\":\"hand-tosset\"}', '', 0, 0, 0, 188, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(635, 24.99, '{\"105\":\"family\",\"106\":\"thin-crust\"}', '', 0, 0, 0, 188, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(636, 25.99, '{\"105\":\"family\",\"106\":\"double-decker\"}', '', 0, 0, 0, 188, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(637, 14.99, '{\"107\":\"small\",\"108\":\"hand-tosset\"}', '', 0, 0, 0, 189, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(638, 15.99, '{\"107\":\"small\",\"108\":\"thin-crust\"}', '', 0, 0, 0, 189, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(639, 16.99, '{\"107\":\"small\",\"108\":\"double-decker\"}', '', 0, 0, 0, 189, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(640, 17.99, '{\"107\":\"medium\",\"108\":\"hand-tosset\"}', '', 0, 0, 0, 189, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(641, 18.99, '{\"107\":\"medium\",\"108\":\"thin-crust\"}', '', 0, 0, 0, 189, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(642, 19.99, '{\"107\":\"medium\",\"108\":\"double-decker\"}', '', 0, 0, 0, 189, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(643, 20.99, '{\"107\":\"large\",\"108\":\"hand-tosset\"}', '', 0, 0, 0, 189, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(644, 21.99, '{\"107\":\"large\",\"108\":\"thin-crust\"}', '', 0, 0, 0, 189, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(645, 22.99, '{\"107\":\"large\",\"108\":\"double-decker\"}', '', 0, 0, 0, 189, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(646, 23.99, '{\"107\":\"family\",\"108\":\"hand-tosset\"}', '', 0, 0, 0, 189, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(647, 24.99, '{\"107\":\"family\",\"108\":\"thin-crust\"}', '', 0, 0, 0, 189, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(648, 25.99, '{\"107\":\"family\",\"108\":\"double-decker\"}', '', 0, 0, 0, 189, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(649, 14.99, '{\"109\":\"small\",\"110\":\"hand-tosset\"}', '', 0, 0, 0, 190, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(650, 15.99, '{\"109\":\"small\",\"110\":\"thin-crust\"}', '', 0, 0, 0, 190, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(651, 16.99, '{\"109\":\"small\",\"110\":\"double-decker\"}', '', 0, 0, 0, 190, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(652, 17.99, '{\"109\":\"medium\",\"110\":\"hand-tosset\"}', '', 0, 0, 0, 190, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(653, 18.99, '{\"109\":\"medium\",\"110\":\"thin-crust\"}', '', 0, 0, 0, 190, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(654, 19.99, '{\"109\":\"medium\",\"110\":\"double-decker\"}', '', 0, 0, 0, 190, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(655, 20.99, '{\"109\":\"large\",\"110\":\"hand-tosset\"}', '', 0, 0, 0, 190, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(656, 21.99, '{\"109\":\"large\",\"110\":\"thin-crust\"}', '', 0, 0, 0, 190, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(657, 22.99, '{\"109\":\"large\",\"110\":\"double-decker\"}', '', 0, 0, 0, 190, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(658, 23.99, '{\"109\":\"family\",\"110\":\"hand-tosset\"}', '', 0, 0, 0, 190, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(659, 24.99, '{\"109\":\"family\",\"110\":\"thin-crust\"}', '', 0, 0, 0, 190, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(660, 25.99, '{\"109\":\"family\",\"110\":\"double-decker\"}', '', 0, 0, 0, 190, '2021-12-30 22:33:46', '2021-12-30 22:33:46', NULL, 0),
(661, 10.99, '{\"111\":\"small\",\"112\":\"hand-tosset\"}', '', 0, 0, 0, 245, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(662, 11.99, '{\"111\":\"small\",\"112\":\"thin-crust\"}', '', 0, 0, 0, 245, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(663, 12.99, '{\"111\":\"small\",\"112\":\"double-decker\"}', '', 0, 0, 0, 245, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(664, 13.99, '{\"111\":\"medium\",\"112\":\"hand-tosset\"}', '', 0, 0, 0, 245, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(665, 14.99, '{\"111\":\"medium\",\"112\":\"thin-crust\"}', '', 0, 0, 0, 245, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(666, 15.99, '{\"111\":\"medium\",\"112\":\"double-decker\"}', '', 0, 0, 0, 245, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(667, 16.99, '{\"111\":\"large\",\"112\":\"hand-tosset\"}', '', 0, 0, 0, 245, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(668, 17.99, '{\"111\":\"large\",\"112\":\"thin-crust\"}', '', 0, 0, 0, 245, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(669, 18.99, '{\"111\":\"large\",\"112\":\"double-decker\"}', '', 0, 0, 0, 245, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(670, 19.99, '{\"111\":\"family\",\"112\":\"hand-tosset\"}', '', 0, 0, 0, 245, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(671, 20.99, '{\"111\":\"family\",\"112\":\"thin-crust\"}', '', 0, 0, 0, 245, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(672, 21.99, '{\"111\":\"family\",\"112\":\"double-decker\"}', '', 0, 0, 0, 245, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(673, 14.99, '{\"113\":\"small\",\"114\":\"hand-tosset\"}', '', 0, 0, 0, 246, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(674, 15.99, '{\"113\":\"small\",\"114\":\"thin-crust\"}', '', 0, 0, 0, 246, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(675, 16.99, '{\"113\":\"small\",\"114\":\"double-decker\"}', '', 0, 0, 0, 246, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(676, 17.99, '{\"113\":\"medium\",\"114\":\"hand-tosset\"}', '', 0, 0, 0, 246, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(677, 18.99, '{\"113\":\"medium\",\"114\":\"thin-crust\"}', '', 0, 0, 0, 246, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(678, 19.99, '{\"113\":\"medium\",\"114\":\"double-decker\"}', '', 0, 0, 0, 246, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(679, 20.99, '{\"113\":\"large\",\"114\":\"hand-tosset\"}', '', 0, 0, 0, 246, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(680, 21.99, '{\"113\":\"large\",\"114\":\"thin-crust\"}', '', 0, 0, 0, 246, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(681, 22.99, '{\"113\":\"large\",\"114\":\"double-decker\"}', '', 0, 0, 0, 246, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(682, 23.99, '{\"113\":\"family\",\"114\":\"hand-tosset\"}', '', 0, 0, 0, 246, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(683, 24.99, '{\"113\":\"family\",\"114\":\"thin-crust\"}', '', 0, 0, 0, 246, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(684, 25.99, '{\"113\":\"family\",\"114\":\"double-decker\"}', '', 0, 0, 0, 246, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(685, 14.99, '{\"115\":\"small\",\"116\":\"hand-tosset\"}', '', 0, 0, 0, 247, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(686, 15.99, '{\"115\":\"small\",\"116\":\"thin-crust\"}', '', 0, 0, 0, 247, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(687, 16.99, '{\"115\":\"small\",\"116\":\"double-decker\"}', '', 0, 0, 0, 247, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(688, 17.99, '{\"115\":\"medium\",\"116\":\"hand-tosset\"}', '', 0, 0, 0, 247, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(689, 18.99, '{\"115\":\"medium\",\"116\":\"thin-crust\"}', '', 0, 0, 0, 247, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(690, 19.99, '{\"115\":\"medium\",\"116\":\"double-decker\"}', '', 0, 0, 0, 247, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(691, 20.99, '{\"115\":\"large\",\"116\":\"hand-tosset\"}', '', 0, 0, 0, 247, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(692, 21.99, '{\"115\":\"large\",\"116\":\"thin-crust\"}', '', 0, 0, 0, 247, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(693, 22.99, '{\"115\":\"large\",\"116\":\"double-decker\"}', '', 0, 0, 0, 247, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(694, 23.99, '{\"115\":\"family\",\"116\":\"hand-tosset\"}', '', 0, 0, 0, 247, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(695, 24.99, '{\"115\":\"family\",\"116\":\"thin-crust\"}', '', 0, 0, 0, 247, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(696, 25.99, '{\"115\":\"family\",\"116\":\"double-decker\"}', '', 0, 0, 0, 247, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(697, 14.99, '{\"117\":\"small\",\"118\":\"hand-tosset\"}', '', 0, 0, 0, 248, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(698, 15.99, '{\"117\":\"small\",\"118\":\"thin-crust\"}', '', 0, 0, 0, 248, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(699, 16.99, '{\"117\":\"small\",\"118\":\"double-decker\"}', '', 0, 0, 0, 248, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(700, 17.99, '{\"117\":\"medium\",\"118\":\"hand-tosset\"}', '', 0, 0, 0, 248, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(701, 18.99, '{\"117\":\"medium\",\"118\":\"thin-crust\"}', '', 0, 0, 0, 248, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(702, 19.99, '{\"117\":\"medium\",\"118\":\"double-decker\"}', '', 0, 0, 0, 248, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(703, 20.99, '{\"117\":\"large\",\"118\":\"hand-tosset\"}', '', 0, 0, 0, 248, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(704, 21.99, '{\"117\":\"large\",\"118\":\"thin-crust\"}', '', 0, 0, 0, 248, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(705, 22.99, '{\"117\":\"large\",\"118\":\"double-decker\"}', '', 0, 0, 0, 248, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(706, 23.99, '{\"117\":\"family\",\"118\":\"hand-tosset\"}', '', 0, 0, 0, 248, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(707, 24.99, '{\"117\":\"family\",\"118\":\"thin-crust\"}', '', 0, 0, 0, 248, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(708, 25.99, '{\"117\":\"family\",\"118\":\"double-decker\"}', '', 0, 0, 0, 248, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(709, 14.99, '{\"119\":\"small\",\"120\":\"hand-tosset\"}', '', 0, 0, 0, 249, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(710, 15.99, '{\"119\":\"small\",\"120\":\"thin-crust\"}', '', 0, 0, 0, 249, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(711, 16.99, '{\"119\":\"small\",\"120\":\"double-decker\"}', '', 0, 0, 0, 249, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(712, 17.99, '{\"119\":\"medium\",\"120\":\"hand-tosset\"}', '', 0, 0, 0, 249, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(713, 18.99, '{\"119\":\"medium\",\"120\":\"thin-crust\"}', '', 0, 0, 0, 249, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(714, 19.99, '{\"119\":\"medium\",\"120\":\"double-decker\"}', '', 0, 0, 0, 249, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(715, 20.99, '{\"119\":\"large\",\"120\":\"hand-tosset\"}', '', 0, 0, 0, 249, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(716, 21.99, '{\"119\":\"large\",\"120\":\"thin-crust\"}', '', 0, 0, 0, 249, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(717, 22.99, '{\"119\":\"large\",\"120\":\"double-decker\"}', '', 0, 0, 0, 249, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(718, 23.99, '{\"119\":\"family\",\"120\":\"hand-tosset\"}', '', 0, 0, 0, 249, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(719, 24.99, '{\"119\":\"family\",\"120\":\"thin-crust\"}', '', 0, 0, 0, 249, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(720, 25.99, '{\"119\":\"family\",\"120\":\"double-decker\"}', '', 0, 0, 0, 249, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(721, 14.99, '{\"121\":\"small\",\"122\":\"hand-tosset\"}', '', 0, 0, 0, 250, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(722, 15.99, '{\"121\":\"small\",\"122\":\"thin-crust\"}', '', 0, 0, 0, 250, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(723, 16.99, '{\"121\":\"small\",\"122\":\"double-decker\"}', '', 0, 0, 0, 250, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(724, 17.99, '{\"121\":\"medium\",\"122\":\"hand-tosset\"}', '', 0, 0, 0, 250, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(725, 18.99, '{\"121\":\"medium\",\"122\":\"thin-crust\"}', '', 0, 0, 0, 250, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(726, 19.99, '{\"121\":\"medium\",\"122\":\"double-decker\"}', '', 0, 0, 0, 250, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(727, 20.99, '{\"121\":\"large\",\"122\":\"hand-tosset\"}', '', 0, 0, 0, 250, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(728, 21.99, '{\"121\":\"large\",\"122\":\"thin-crust\"}', '', 0, 0, 0, 250, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(729, 22.99, '{\"121\":\"large\",\"122\":\"double-decker\"}', '', 0, 0, 0, 250, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(730, 23.99, '{\"121\":\"family\",\"122\":\"hand-tosset\"}', '', 0, 0, 0, 250, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(731, 24.99, '{\"121\":\"family\",\"122\":\"thin-crust\"}', '', 0, 0, 0, 250, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(732, 25.99, '{\"121\":\"family\",\"122\":\"double-decker\"}', '', 0, 0, 0, 250, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(733, 10.49, '{\"123\":\"small\",\"124\":\"hand-tosset\"}', '', 0, 0, 0, 251, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(734, 11.49, '{\"123\":\"small\",\"124\":\"thin-crust\"}', '', 0, 0, 0, 251, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(735, 12.49, '{\"123\":\"small\",\"124\":\"double-decker\"}', '', 0, 0, 0, 251, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(736, 13.49, '{\"123\":\"medium\",\"124\":\"hand-tosset\"}', '', 0, 0, 0, 251, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(737, 14.49, '{\"123\":\"medium\",\"124\":\"thin-crust\"}', '', 0, 0, 0, 251, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(738, 15.49, '{\"123\":\"medium\",\"124\":\"double-decker\"}', '', 0, 0, 0, 251, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(739, 16.49, '{\"123\":\"large\",\"124\":\"hand-tosset\"}', '', 0, 0, 0, 251, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(740, 17.49, '{\"123\":\"large\",\"124\":\"thin-crust\"}', '', 0, 0, 0, 251, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(741, 18.49, '{\"123\":\"large\",\"124\":\"double-decker\"}', '', 0, 0, 0, 251, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(742, 19.49, '{\"123\":\"family\",\"124\":\"hand-tosset\"}', '', 0, 0, 0, 251, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(743, 20.49, '{\"123\":\"family\",\"124\":\"thin-crust\"}', '', 0, 0, 0, 251, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(744, 21.49, '{\"123\":\"family\",\"124\":\"double-decker\"}', '', 0, 0, 0, 251, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(745, 39.99, '{\"125\":\"small\",\"126\":\"hand-tosset\"}', '', 0, 0, 0, 252, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(746, 40.99, '{\"125\":\"small\",\"126\":\"thin-crust\"}', '', 0, 0, 0, 252, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(747, 41.99, '{\"125\":\"small\",\"126\":\"double-decker\"}', '', 0, 0, 0, 252, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(748, 42.99, '{\"125\":\"medium\",\"126\":\"hand-tosset\"}', '', 0, 0, 0, 252, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(749, 43.99, '{\"125\":\"medium\",\"126\":\"thin-crust\"}', '', 0, 0, 0, 252, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(750, 44.99, '{\"125\":\"medium\",\"126\":\"double-decker\"}', '', 0, 0, 0, 252, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(751, 45.99, '{\"125\":\"large\",\"126\":\"hand-tosset\"}', '', 0, 0, 0, 252, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(752, 46.99, '{\"125\":\"large\",\"126\":\"thin-crust\"}', '', 0, 0, 0, 252, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(753, 47.99, '{\"125\":\"large\",\"126\":\"double-decker\"}', '', 0, 0, 0, 252, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(754, 48.99, '{\"125\":\"family\",\"126\":\"hand-tosset\"}', '', 0, 0, 0, 252, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(755, 49.99, '{\"125\":\"family\",\"126\":\"thin-crust\"}', '', 0, 0, 0, 252, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(756, 50.99, '{\"125\":\"family\",\"126\":\"double-decker\"}', '', 0, 0, 0, 252, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(757, 14.99, '{\"127\":\"small\",\"128\":\"hand-tosset\"}', '', 0, 0, 0, 253, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(758, 15.99, '{\"127\":\"small\",\"128\":\"thin-crust\"}', '', 0, 0, 0, 253, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(759, 16.99, '{\"127\":\"small\",\"128\":\"double-decker\"}', '', 0, 0, 0, 253, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(760, 17.99, '{\"127\":\"medium\",\"128\":\"hand-tosset\"}', '', 0, 0, 0, 253, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(761, 18.99, '{\"127\":\"medium\",\"128\":\"thin-crust\"}', '', 0, 0, 0, 253, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(762, 19.99, '{\"127\":\"medium\",\"128\":\"double-decker\"}', '', 0, 0, 0, 253, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(763, 20.99, '{\"127\":\"large\",\"128\":\"hand-tosset\"}', '', 0, 0, 0, 253, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0);
INSERT INTO `variants` (`id`, `price`, `options`, `image`, `qty`, `enable_qty`, `order`, `item_id`, `created_at`, `updated_at`, `deleted_at`, `is_system`) VALUES
(764, 21.99, '{\"127\":\"large\",\"128\":\"thin-crust\"}', '', 0, 0, 0, 253, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(765, 22.99, '{\"127\":\"large\",\"128\":\"double-decker\"}', '', 0, 0, 0, 253, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(766, 23.99, '{\"127\":\"family\",\"128\":\"hand-tosset\"}', '', 0, 0, 0, 253, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(767, 24.99, '{\"127\":\"family\",\"128\":\"thin-crust\"}', '', 0, 0, 0, 253, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(768, 25.99, '{\"127\":\"family\",\"128\":\"double-decker\"}', '', 0, 0, 0, 253, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(769, 14.99, '{\"129\":\"small\",\"130\":\"hand-tosset\"}', '', 0, 0, 0, 254, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(770, 15.99, '{\"129\":\"small\",\"130\":\"thin-crust\"}', '', 0, 0, 0, 254, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(771, 16.99, '{\"129\":\"small\",\"130\":\"double-decker\"}', '', 0, 0, 0, 254, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(772, 17.99, '{\"129\":\"medium\",\"130\":\"hand-tosset\"}', '', 0, 0, 0, 254, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(773, 18.99, '{\"129\":\"medium\",\"130\":\"thin-crust\"}', '', 0, 0, 0, 254, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(774, 19.99, '{\"129\":\"medium\",\"130\":\"double-decker\"}', '', 0, 0, 0, 254, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(775, 20.99, '{\"129\":\"large\",\"130\":\"hand-tosset\"}', '', 0, 0, 0, 254, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(776, 21.99, '{\"129\":\"large\",\"130\":\"thin-crust\"}', '', 0, 0, 0, 254, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(777, 22.99, '{\"129\":\"large\",\"130\":\"double-decker\"}', '', 0, 0, 0, 254, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(778, 23.99, '{\"129\":\"family\",\"130\":\"hand-tosset\"}', '', 0, 0, 0, 254, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(779, 24.99, '{\"129\":\"family\",\"130\":\"thin-crust\"}', '', 0, 0, 0, 254, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(780, 25.99, '{\"129\":\"family\",\"130\":\"double-decker\"}', '', 0, 0, 0, 254, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(781, 14.99, '{\"131\":\"small\",\"132\":\"hand-tosset\"}', '', 0, 0, 0, 255, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(782, 15.99, '{\"131\":\"small\",\"132\":\"thin-crust\"}', '', 0, 0, 0, 255, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(783, 16.99, '{\"131\":\"small\",\"132\":\"double-decker\"}', '', 0, 0, 0, 255, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(784, 17.99, '{\"131\":\"medium\",\"132\":\"hand-tosset\"}', '', 0, 0, 0, 255, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(785, 18.99, '{\"131\":\"medium\",\"132\":\"thin-crust\"}', '', 0, 0, 0, 255, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(786, 19.99, '{\"131\":\"medium\",\"132\":\"double-decker\"}', '', 0, 0, 0, 255, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(787, 20.99, '{\"131\":\"large\",\"132\":\"hand-tosset\"}', '', 0, 0, 0, 255, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(788, 21.99, '{\"131\":\"large\",\"132\":\"thin-crust\"}', '', 0, 0, 0, 255, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(789, 22.99, '{\"131\":\"large\",\"132\":\"double-decker\"}', '', 0, 0, 0, 255, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(790, 23.99, '{\"131\":\"family\",\"132\":\"hand-tosset\"}', '', 0, 0, 0, 255, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(791, 24.99, '{\"131\":\"family\",\"132\":\"thin-crust\"}', '', 0, 0, 0, 255, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(792, 25.99, '{\"131\":\"family\",\"132\":\"double-decker\"}', '', 0, 0, 0, 255, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(793, 10.99, '{\"133\":\"small\",\"134\":\"hand-tosset\"}', '', 0, 0, 0, 271, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(794, 11.99, '{\"133\":\"small\",\"134\":\"thin-crust\"}', '', 0, 0, 0, 271, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(795, 12.99, '{\"133\":\"small\",\"134\":\"double-decker\"}', '', 0, 0, 0, 271, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(796, 13.99, '{\"133\":\"medium\",\"134\":\"hand-tosset\"}', '', 0, 0, 0, 271, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(797, 14.99, '{\"133\":\"medium\",\"134\":\"thin-crust\"}', '', 0, 0, 0, 271, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(798, 15.99, '{\"133\":\"medium\",\"134\":\"double-decker\"}', '', 0, 0, 0, 271, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(799, 16.99, '{\"133\":\"large\",\"134\":\"hand-tosset\"}', '', 0, 0, 0, 271, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(800, 17.99, '{\"133\":\"large\",\"134\":\"thin-crust\"}', '', 0, 0, 0, 271, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(801, 18.99, '{\"133\":\"large\",\"134\":\"double-decker\"}', '', 0, 0, 0, 271, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(802, 19.99, '{\"133\":\"family\",\"134\":\"hand-tosset\"}', '', 0, 0, 0, 271, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(803, 20.99, '{\"133\":\"family\",\"134\":\"thin-crust\"}', '', 0, 0, 0, 271, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(804, 21.99, '{\"133\":\"family\",\"134\":\"double-decker\"}', '', 0, 0, 0, 271, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(805, 14.99, '{\"135\":\"small\",\"136\":\"hand-tosset\"}', '', 0, 0, 0, 272, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(806, 15.99, '{\"135\":\"small\",\"136\":\"thin-crust\"}', '', 0, 0, 0, 272, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(807, 16.99, '{\"135\":\"small\",\"136\":\"double-decker\"}', '', 0, 0, 0, 272, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(808, 17.99, '{\"135\":\"medium\",\"136\":\"hand-tosset\"}', '', 0, 0, 0, 272, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(809, 18.99, '{\"135\":\"medium\",\"136\":\"thin-crust\"}', '', 0, 0, 0, 272, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(810, 19.99, '{\"135\":\"medium\",\"136\":\"double-decker\"}', '', 0, 0, 0, 272, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(811, 20.99, '{\"135\":\"large\",\"136\":\"hand-tosset\"}', '', 0, 0, 0, 272, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(812, 21.99, '{\"135\":\"large\",\"136\":\"thin-crust\"}', '', 0, 0, 0, 272, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(813, 22.99, '{\"135\":\"large\",\"136\":\"double-decker\"}', '', 0, 0, 0, 272, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(814, 23.99, '{\"135\":\"family\",\"136\":\"hand-tosset\"}', '', 0, 0, 0, 272, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(815, 24.99, '{\"135\":\"family\",\"136\":\"thin-crust\"}', '', 0, 0, 0, 272, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(816, 25.99, '{\"135\":\"family\",\"136\":\"double-decker\"}', '', 0, 0, 0, 272, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(817, 14.99, '{\"137\":\"small\",\"138\":\"hand-tosset\"}', '', 0, 0, 0, 273, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(818, 15.99, '{\"137\":\"small\",\"138\":\"thin-crust\"}', '', 0, 0, 0, 273, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(819, 16.99, '{\"137\":\"small\",\"138\":\"double-decker\"}', '', 0, 0, 0, 273, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(820, 17.99, '{\"137\":\"medium\",\"138\":\"hand-tosset\"}', '', 0, 0, 0, 273, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(821, 18.99, '{\"137\":\"medium\",\"138\":\"thin-crust\"}', '', 0, 0, 0, 273, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(822, 19.99, '{\"137\":\"medium\",\"138\":\"double-decker\"}', '', 0, 0, 0, 273, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(823, 20.99, '{\"137\":\"large\",\"138\":\"hand-tosset\"}', '', 0, 0, 0, 273, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(824, 21.99, '{\"137\":\"large\",\"138\":\"thin-crust\"}', '', 0, 0, 0, 273, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(825, 22.99, '{\"137\":\"large\",\"138\":\"double-decker\"}', '', 0, 0, 0, 273, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(826, 23.99, '{\"137\":\"family\",\"138\":\"hand-tosset\"}', '', 0, 0, 0, 273, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(827, 24.99, '{\"137\":\"family\",\"138\":\"thin-crust\"}', '', 0, 0, 0, 273, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(828, 25.99, '{\"137\":\"family\",\"138\":\"double-decker\"}', '', 0, 0, 0, 273, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(829, 14.99, '{\"139\":\"small\",\"140\":\"hand-tosset\"}', '', 0, 0, 0, 274, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(830, 15.99, '{\"139\":\"small\",\"140\":\"thin-crust\"}', '', 0, 0, 0, 274, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(831, 16.99, '{\"139\":\"small\",\"140\":\"double-decker\"}', '', 0, 0, 0, 274, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(832, 17.99, '{\"139\":\"medium\",\"140\":\"hand-tosset\"}', '', 0, 0, 0, 274, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(833, 18.99, '{\"139\":\"medium\",\"140\":\"thin-crust\"}', '', 0, 0, 0, 274, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(834, 19.99, '{\"139\":\"medium\",\"140\":\"double-decker\"}', '', 0, 0, 0, 274, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(835, 20.99, '{\"139\":\"large\",\"140\":\"hand-tosset\"}', '', 0, 0, 0, 274, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(836, 21.99, '{\"139\":\"large\",\"140\":\"thin-crust\"}', '', 0, 0, 0, 274, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(837, 22.99, '{\"139\":\"large\",\"140\":\"double-decker\"}', '', 0, 0, 0, 274, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(838, 23.99, '{\"139\":\"family\",\"140\":\"hand-tosset\"}', '', 0, 0, 0, 274, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(839, 24.99, '{\"139\":\"family\",\"140\":\"thin-crust\"}', '', 0, 0, 0, 274, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(840, 25.99, '{\"139\":\"family\",\"140\":\"double-decker\"}', '', 0, 0, 0, 274, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(841, 14.99, '{\"141\":\"small\",\"142\":\"hand-tosset\"}', '', 0, 0, 0, 275, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(842, 15.99, '{\"141\":\"small\",\"142\":\"thin-crust\"}', '', 0, 0, 0, 275, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(843, 16.99, '{\"141\":\"small\",\"142\":\"double-decker\"}', '', 0, 0, 0, 275, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(844, 17.99, '{\"141\":\"medium\",\"142\":\"hand-tosset\"}', '', 0, 0, 0, 275, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(845, 18.99, '{\"141\":\"medium\",\"142\":\"thin-crust\"}', '', 0, 0, 0, 275, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(846, 19.99, '{\"141\":\"medium\",\"142\":\"double-decker\"}', '', 0, 0, 0, 275, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(847, 20.99, '{\"141\":\"large\",\"142\":\"hand-tosset\"}', '', 0, 0, 0, 275, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(848, 21.99, '{\"141\":\"large\",\"142\":\"thin-crust\"}', '', 0, 0, 0, 275, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(849, 22.99, '{\"141\":\"large\",\"142\":\"double-decker\"}', '', 0, 0, 0, 275, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(850, 23.99, '{\"141\":\"family\",\"142\":\"hand-tosset\"}', '', 0, 0, 0, 275, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(851, 24.99, '{\"141\":\"family\",\"142\":\"thin-crust\"}', '', 0, 0, 0, 275, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(852, 25.99, '{\"141\":\"family\",\"142\":\"double-decker\"}', '', 0, 0, 0, 275, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(853, 14.99, '{\"143\":\"small\",\"144\":\"hand-tosset\"}', '', 0, 0, 0, 276, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(854, 15.99, '{\"143\":\"small\",\"144\":\"thin-crust\"}', '', 0, 0, 0, 276, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(855, 16.99, '{\"143\":\"small\",\"144\":\"double-decker\"}', '', 0, 0, 0, 276, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(856, 17.99, '{\"143\":\"medium\",\"144\":\"hand-tosset\"}', '', 0, 0, 0, 276, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(857, 18.99, '{\"143\":\"medium\",\"144\":\"thin-crust\"}', '', 0, 0, 0, 276, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(858, 19.99, '{\"143\":\"medium\",\"144\":\"double-decker\"}', '', 0, 0, 0, 276, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(859, 20.99, '{\"143\":\"large\",\"144\":\"hand-tosset\"}', '', 0, 0, 0, 276, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(860, 21.99, '{\"143\":\"large\",\"144\":\"thin-crust\"}', '', 0, 0, 0, 276, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(861, 22.99, '{\"143\":\"large\",\"144\":\"double-decker\"}', '', 0, 0, 0, 276, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(862, 23.99, '{\"143\":\"family\",\"144\":\"hand-tosset\"}', '', 0, 0, 0, 276, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(863, 24.99, '{\"143\":\"family\",\"144\":\"thin-crust\"}', '', 0, 0, 0, 276, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(864, 25.99, '{\"143\":\"family\",\"144\":\"double-decker\"}', '', 0, 0, 0, 276, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(865, 10.49, '{\"145\":\"small\",\"146\":\"hand-tosset\"}', '', 0, 0, 0, 277, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(866, 11.49, '{\"145\":\"small\",\"146\":\"thin-crust\"}', '', 0, 0, 0, 277, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(867, 12.49, '{\"145\":\"small\",\"146\":\"double-decker\"}', '', 0, 0, 0, 277, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(868, 13.49, '{\"145\":\"medium\",\"146\":\"hand-tosset\"}', '', 0, 0, 0, 277, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(869, 14.49, '{\"145\":\"medium\",\"146\":\"thin-crust\"}', '', 0, 0, 0, 277, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(870, 15.49, '{\"145\":\"medium\",\"146\":\"double-decker\"}', '', 0, 0, 0, 277, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(871, 16.49, '{\"145\":\"large\",\"146\":\"hand-tosset\"}', '', 0, 0, 0, 277, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(872, 17.49, '{\"145\":\"large\",\"146\":\"thin-crust\"}', '', 0, 0, 0, 277, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(873, 18.49, '{\"145\":\"large\",\"146\":\"double-decker\"}', '', 0, 0, 0, 277, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(874, 19.49, '{\"145\":\"family\",\"146\":\"hand-tosset\"}', '', 0, 0, 0, 277, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(875, 20.49, '{\"145\":\"family\",\"146\":\"thin-crust\"}', '', 0, 0, 0, 277, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(876, 21.49, '{\"145\":\"family\",\"146\":\"double-decker\"}', '', 0, 0, 0, 277, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(877, 39.99, '{\"147\":\"small\",\"148\":\"hand-tosset\"}', '', 0, 0, 0, 278, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(878, 40.99, '{\"147\":\"small\",\"148\":\"thin-crust\"}', '', 0, 0, 0, 278, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(879, 41.99, '{\"147\":\"small\",\"148\":\"double-decker\"}', '', 0, 0, 0, 278, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(880, 42.99, '{\"147\":\"medium\",\"148\":\"hand-tosset\"}', '', 0, 0, 0, 278, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(881, 43.99, '{\"147\":\"medium\",\"148\":\"thin-crust\"}', '', 0, 0, 0, 278, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(882, 44.99, '{\"147\":\"medium\",\"148\":\"double-decker\"}', '', 0, 0, 0, 278, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(883, 45.99, '{\"147\":\"large\",\"148\":\"hand-tosset\"}', '', 0, 0, 0, 278, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(884, 46.99, '{\"147\":\"large\",\"148\":\"thin-crust\"}', '', 0, 0, 0, 278, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(885, 47.99, '{\"147\":\"large\",\"148\":\"double-decker\"}', '', 0, 0, 0, 278, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(886, 48.99, '{\"147\":\"family\",\"148\":\"hand-tosset\"}', '', 0, 0, 0, 278, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(887, 49.99, '{\"147\":\"family\",\"148\":\"thin-crust\"}', '', 0, 0, 0, 278, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(888, 50.99, '{\"147\":\"family\",\"148\":\"double-decker\"}', '', 0, 0, 0, 278, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(889, 14.99, '{\"149\":\"small\",\"150\":\"hand-tosset\"}', '', 0, 0, 0, 279, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(890, 15.99, '{\"149\":\"small\",\"150\":\"thin-crust\"}', '', 0, 0, 0, 279, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(891, 16.99, '{\"149\":\"small\",\"150\":\"double-decker\"}', '', 0, 0, 0, 279, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(892, 17.99, '{\"149\":\"medium\",\"150\":\"hand-tosset\"}', '', 0, 0, 0, 279, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(893, 18.99, '{\"149\":\"medium\",\"150\":\"thin-crust\"}', '', 0, 0, 0, 279, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(894, 19.99, '{\"149\":\"medium\",\"150\":\"double-decker\"}', '', 0, 0, 0, 279, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(895, 20.99, '{\"149\":\"large\",\"150\":\"hand-tosset\"}', '', 0, 0, 0, 279, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(896, 21.99, '{\"149\":\"large\",\"150\":\"thin-crust\"}', '', 0, 0, 0, 279, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(897, 22.99, '{\"149\":\"large\",\"150\":\"double-decker\"}', '', 0, 0, 0, 279, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(898, 23.99, '{\"149\":\"family\",\"150\":\"hand-tosset\"}', '', 0, 0, 0, 279, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(899, 24.99, '{\"149\":\"family\",\"150\":\"thin-crust\"}', '', 0, 0, 0, 279, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(900, 25.99, '{\"149\":\"family\",\"150\":\"double-decker\"}', '', 0, 0, 0, 279, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(901, 14.99, '{\"151\":\"small\",\"152\":\"hand-tosset\"}', '', 0, 0, 0, 280, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(902, 15.99, '{\"151\":\"small\",\"152\":\"thin-crust\"}', '', 0, 0, 0, 280, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(903, 16.99, '{\"151\":\"small\",\"152\":\"double-decker\"}', '', 0, 0, 0, 280, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(904, 17.99, '{\"151\":\"medium\",\"152\":\"hand-tosset\"}', '', 0, 0, 0, 280, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(905, 18.99, '{\"151\":\"medium\",\"152\":\"thin-crust\"}', '', 0, 0, 0, 280, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(906, 19.99, '{\"151\":\"medium\",\"152\":\"double-decker\"}', '', 0, 0, 0, 280, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(907, 20.99, '{\"151\":\"large\",\"152\":\"hand-tosset\"}', '', 0, 0, 0, 280, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(908, 21.99, '{\"151\":\"large\",\"152\":\"thin-crust\"}', '', 0, 0, 0, 280, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(909, 22.99, '{\"151\":\"large\",\"152\":\"double-decker\"}', '', 0, 0, 0, 280, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(910, 23.99, '{\"151\":\"family\",\"152\":\"hand-tosset\"}', '', 0, 0, 0, 280, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(911, 24.99, '{\"151\":\"family\",\"152\":\"thin-crust\"}', '', 0, 0, 0, 280, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(912, 25.99, '{\"151\":\"family\",\"152\":\"double-decker\"}', '', 0, 0, 0, 280, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(913, 14.99, '{\"153\":\"small\",\"154\":\"hand-tosset\"}', '', 0, 0, 0, 281, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(914, 15.99, '{\"153\":\"small\",\"154\":\"thin-crust\"}', '', 0, 0, 0, 281, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(915, 16.99, '{\"153\":\"small\",\"154\":\"double-decker\"}', '', 0, 0, 0, 281, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(916, 17.99, '{\"153\":\"medium\",\"154\":\"hand-tosset\"}', '', 0, 0, 0, 281, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(917, 18.99, '{\"153\":\"medium\",\"154\":\"thin-crust\"}', '', 0, 0, 0, 281, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(918, 19.99, '{\"153\":\"medium\",\"154\":\"double-decker\"}', '', 0, 0, 0, 281, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(919, 20.99, '{\"153\":\"large\",\"154\":\"hand-tosset\"}', '', 0, 0, 0, 281, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(920, 21.99, '{\"153\":\"large\",\"154\":\"thin-crust\"}', '', 0, 0, 0, 281, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(921, 22.99, '{\"153\":\"large\",\"154\":\"double-decker\"}', '', 0, 0, 0, 281, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(922, 23.99, '{\"153\":\"family\",\"154\":\"hand-tosset\"}', '', 0, 0, 0, 281, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(923, 24.99, '{\"153\":\"family\",\"154\":\"thin-crust\"}', '', 0, 0, 0, 281, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(924, 25.99, '{\"153\":\"family\",\"154\":\"double-decker\"}', '', 0, 0, 0, 281, '2021-12-30 22:33:47', '2021-12-30 22:33:47', NULL, 0),
(925, 10.99, '{\"155\":\"small\",\"156\":\"hand-tosset\"}', '', 0, 0, 0, 330, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(926, 11.99, '{\"155\":\"small\",\"156\":\"thin-crust\"}', '', 0, 0, 0, 330, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(927, 12.99, '{\"155\":\"small\",\"156\":\"double-decker\"}', '', 0, 0, 0, 330, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(928, 13.99, '{\"155\":\"medium\",\"156\":\"hand-tosset\"}', '', 0, 0, 0, 330, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(929, 14.99, '{\"155\":\"medium\",\"156\":\"thin-crust\"}', '', 0, 0, 0, 330, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(930, 15.99, '{\"155\":\"medium\",\"156\":\"double-decker\"}', '', 0, 0, 0, 330, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(931, 16.99, '{\"155\":\"large\",\"156\":\"hand-tosset\"}', '', 0, 0, 0, 330, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(932, 17.99, '{\"155\":\"large\",\"156\":\"thin-crust\"}', '', 0, 0, 0, 330, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(933, 18.99, '{\"155\":\"large\",\"156\":\"double-decker\"}', '', 0, 0, 0, 330, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(934, 19.99, '{\"155\":\"family\",\"156\":\"hand-tosset\"}', '', 0, 0, 0, 330, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(935, 20.99, '{\"155\":\"family\",\"156\":\"thin-crust\"}', '', 0, 0, 0, 330, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(936, 21.99, '{\"155\":\"family\",\"156\":\"double-decker\"}', '', 0, 0, 0, 330, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(937, 14.99, '{\"157\":\"small\",\"158\":\"hand-tosset\"}', '', 0, 0, 0, 331, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(938, 15.99, '{\"157\":\"small\",\"158\":\"thin-crust\"}', '', 0, 0, 0, 331, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(939, 16.99, '{\"157\":\"small\",\"158\":\"double-decker\"}', '', 0, 0, 0, 331, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(940, 17.99, '{\"157\":\"medium\",\"158\":\"hand-tosset\"}', '', 0, 0, 0, 331, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(941, 18.99, '{\"157\":\"medium\",\"158\":\"thin-crust\"}', '', 0, 0, 0, 331, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(942, 19.99, '{\"157\":\"medium\",\"158\":\"double-decker\"}', '', 0, 0, 0, 331, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(943, 20.99, '{\"157\":\"large\",\"158\":\"hand-tosset\"}', '', 0, 0, 0, 331, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(944, 21.99, '{\"157\":\"large\",\"158\":\"thin-crust\"}', '', 0, 0, 0, 331, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(945, 22.99, '{\"157\":\"large\",\"158\":\"double-decker\"}', '', 0, 0, 0, 331, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(946, 23.99, '{\"157\":\"family\",\"158\":\"hand-tosset\"}', '', 0, 0, 0, 331, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(947, 24.99, '{\"157\":\"family\",\"158\":\"thin-crust\"}', '', 0, 0, 0, 331, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(948, 25.99, '{\"157\":\"family\",\"158\":\"double-decker\"}', '', 0, 0, 0, 331, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(949, 14.99, '{\"159\":\"small\",\"160\":\"hand-tosset\"}', '', 0, 0, 0, 332, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(950, 15.99, '{\"159\":\"small\",\"160\":\"thin-crust\"}', '', 0, 0, 0, 332, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(951, 16.99, '{\"159\":\"small\",\"160\":\"double-decker\"}', '', 0, 0, 0, 332, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(952, 17.99, '{\"159\":\"medium\",\"160\":\"hand-tosset\"}', '', 0, 0, 0, 332, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(953, 18.99, '{\"159\":\"medium\",\"160\":\"thin-crust\"}', '', 0, 0, 0, 332, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(954, 19.99, '{\"159\":\"medium\",\"160\":\"double-decker\"}', '', 0, 0, 0, 332, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(955, 20.99, '{\"159\":\"large\",\"160\":\"hand-tosset\"}', '', 0, 0, 0, 332, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(956, 21.99, '{\"159\":\"large\",\"160\":\"thin-crust\"}', '', 0, 0, 0, 332, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(957, 22.99, '{\"159\":\"large\",\"160\":\"double-decker\"}', '', 0, 0, 0, 332, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(958, 23.99, '{\"159\":\"family\",\"160\":\"hand-tosset\"}', '', 0, 0, 0, 332, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(959, 24.99, '{\"159\":\"family\",\"160\":\"thin-crust\"}', '', 0, 0, 0, 332, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(960, 25.99, '{\"159\":\"family\",\"160\":\"double-decker\"}', '', 0, 0, 0, 332, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(961, 14.99, '{\"161\":\"small\",\"162\":\"hand-tosset\"}', '', 0, 0, 0, 333, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(962, 15.99, '{\"161\":\"small\",\"162\":\"thin-crust\"}', '', 0, 0, 0, 333, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(963, 16.99, '{\"161\":\"small\",\"162\":\"double-decker\"}', '', 0, 0, 0, 333, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(964, 17.99, '{\"161\":\"medium\",\"162\":\"hand-tosset\"}', '', 0, 0, 0, 333, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(965, 18.99, '{\"161\":\"medium\",\"162\":\"thin-crust\"}', '', 0, 0, 0, 333, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(966, 19.99, '{\"161\":\"medium\",\"162\":\"double-decker\"}', '', 0, 0, 0, 333, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(967, 20.99, '{\"161\":\"large\",\"162\":\"hand-tosset\"}', '', 0, 0, 0, 333, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(968, 21.99, '{\"161\":\"large\",\"162\":\"thin-crust\"}', '', 0, 0, 0, 333, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(969, 22.99, '{\"161\":\"large\",\"162\":\"double-decker\"}', '', 0, 0, 0, 333, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(970, 23.99, '{\"161\":\"family\",\"162\":\"hand-tosset\"}', '', 0, 0, 0, 333, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(971, 24.99, '{\"161\":\"family\",\"162\":\"thin-crust\"}', '', 0, 0, 0, 333, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(972, 25.99, '{\"161\":\"family\",\"162\":\"double-decker\"}', '', 0, 0, 0, 333, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(973, 14.99, '{\"163\":\"small\",\"164\":\"hand-tosset\"}', '', 0, 0, 0, 334, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(974, 15.99, '{\"163\":\"small\",\"164\":\"thin-crust\"}', '', 0, 0, 0, 334, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(975, 16.99, '{\"163\":\"small\",\"164\":\"double-decker\"}', '', 0, 0, 0, 334, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(976, 17.99, '{\"163\":\"medium\",\"164\":\"hand-tosset\"}', '', 0, 0, 0, 334, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(977, 18.99, '{\"163\":\"medium\",\"164\":\"thin-crust\"}', '', 0, 0, 0, 334, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(978, 19.99, '{\"163\":\"medium\",\"164\":\"double-decker\"}', '', 0, 0, 0, 334, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(979, 20.99, '{\"163\":\"large\",\"164\":\"hand-tosset\"}', '', 0, 0, 0, 334, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(980, 21.99, '{\"163\":\"large\",\"164\":\"thin-crust\"}', '', 0, 0, 0, 334, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(981, 22.99, '{\"163\":\"large\",\"164\":\"double-decker\"}', '', 0, 0, 0, 334, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(982, 23.99, '{\"163\":\"family\",\"164\":\"hand-tosset\"}', '', 0, 0, 0, 334, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(983, 24.99, '{\"163\":\"family\",\"164\":\"thin-crust\"}', '', 0, 0, 0, 334, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(984, 25.99, '{\"163\":\"family\",\"164\":\"double-decker\"}', '', 0, 0, 0, 334, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(985, 14.99, '{\"165\":\"small\",\"166\":\"hand-tosset\"}', '', 0, 0, 0, 335, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(986, 15.99, '{\"165\":\"small\",\"166\":\"thin-crust\"}', '', 0, 0, 0, 335, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(987, 16.99, '{\"165\":\"small\",\"166\":\"double-decker\"}', '', 0, 0, 0, 335, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(988, 17.99, '{\"165\":\"medium\",\"166\":\"hand-tosset\"}', '', 0, 0, 0, 335, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(989, 18.99, '{\"165\":\"medium\",\"166\":\"thin-crust\"}', '', 0, 0, 0, 335, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(990, 19.99, '{\"165\":\"medium\",\"166\":\"double-decker\"}', '', 0, 0, 0, 335, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(991, 20.99, '{\"165\":\"large\",\"166\":\"hand-tosset\"}', '', 0, 0, 0, 335, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(992, 21.99, '{\"165\":\"large\",\"166\":\"thin-crust\"}', '', 0, 0, 0, 335, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(993, 22.99, '{\"165\":\"large\",\"166\":\"double-decker\"}', '', 0, 0, 0, 335, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(994, 23.99, '{\"165\":\"family\",\"166\":\"hand-tosset\"}', '', 0, 0, 0, 335, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(995, 24.99, '{\"165\":\"family\",\"166\":\"thin-crust\"}', '', 0, 0, 0, 335, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(996, 25.99, '{\"165\":\"family\",\"166\":\"double-decker\"}', '', 0, 0, 0, 335, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(997, 10.49, '{\"167\":\"small\",\"168\":\"hand-tosset\"}', '', 0, 0, 0, 336, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(998, 11.49, '{\"167\":\"small\",\"168\":\"thin-crust\"}', '', 0, 0, 0, 336, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(999, 12.49, '{\"167\":\"small\",\"168\":\"double-decker\"}', '', 0, 0, 0, 336, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1000, 13.49, '{\"167\":\"medium\",\"168\":\"hand-tosset\"}', '', 0, 0, 0, 336, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1001, 14.49, '{\"167\":\"medium\",\"168\":\"thin-crust\"}', '', 0, 0, 0, 336, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1002, 15.49, '{\"167\":\"medium\",\"168\":\"double-decker\"}', '', 0, 0, 0, 336, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1003, 16.49, '{\"167\":\"large\",\"168\":\"hand-tosset\"}', '', 0, 0, 0, 336, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1004, 17.49, '{\"167\":\"large\",\"168\":\"thin-crust\"}', '', 0, 0, 0, 336, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1005, 18.49, '{\"167\":\"large\",\"168\":\"double-decker\"}', '', 0, 0, 0, 336, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1006, 19.49, '{\"167\":\"family\",\"168\":\"hand-tosset\"}', '', 0, 0, 0, 336, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1007, 20.49, '{\"167\":\"family\",\"168\":\"thin-crust\"}', '', 0, 0, 0, 336, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1008, 21.49, '{\"167\":\"family\",\"168\":\"double-decker\"}', '', 0, 0, 0, 336, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1009, 39.99, '{\"169\":\"small\",\"170\":\"hand-tosset\"}', '', 0, 0, 0, 337, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1010, 40.99, '{\"169\":\"small\",\"170\":\"thin-crust\"}', '', 0, 0, 0, 337, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1011, 41.99, '{\"169\":\"small\",\"170\":\"double-decker\"}', '', 0, 0, 0, 337, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1012, 42.99, '{\"169\":\"medium\",\"170\":\"hand-tosset\"}', '', 0, 0, 0, 337, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1013, 43.99, '{\"169\":\"medium\",\"170\":\"thin-crust\"}', '', 0, 0, 0, 337, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1014, 44.99, '{\"169\":\"medium\",\"170\":\"double-decker\"}', '', 0, 0, 0, 337, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1015, 45.99, '{\"169\":\"large\",\"170\":\"hand-tosset\"}', '', 0, 0, 0, 337, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1016, 46.99, '{\"169\":\"large\",\"170\":\"thin-crust\"}', '', 0, 0, 0, 337, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1017, 47.99, '{\"169\":\"large\",\"170\":\"double-decker\"}', '', 0, 0, 0, 337, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1018, 48.99, '{\"169\":\"family\",\"170\":\"hand-tosset\"}', '', 0, 0, 0, 337, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1019, 49.99, '{\"169\":\"family\",\"170\":\"thin-crust\"}', '', 0, 0, 0, 337, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1020, 50.99, '{\"169\":\"family\",\"170\":\"double-decker\"}', '', 0, 0, 0, 337, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1021, 14.99, '{\"171\":\"small\",\"172\":\"hand-tosset\"}', '', 0, 0, 0, 338, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1022, 15.99, '{\"171\":\"small\",\"172\":\"thin-crust\"}', '', 0, 0, 0, 338, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1023, 16.99, '{\"171\":\"small\",\"172\":\"double-decker\"}', '', 0, 0, 0, 338, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1024, 17.99, '{\"171\":\"medium\",\"172\":\"hand-tosset\"}', '', 0, 0, 0, 338, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1025, 18.99, '{\"171\":\"medium\",\"172\":\"thin-crust\"}', '', 0, 0, 0, 338, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1026, 19.99, '{\"171\":\"medium\",\"172\":\"double-decker\"}', '', 0, 0, 0, 338, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1027, 20.99, '{\"171\":\"large\",\"172\":\"hand-tosset\"}', '', 0, 0, 0, 338, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1028, 21.99, '{\"171\":\"large\",\"172\":\"thin-crust\"}', '', 0, 0, 0, 338, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1029, 22.99, '{\"171\":\"large\",\"172\":\"double-decker\"}', '', 0, 0, 0, 338, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1030, 23.99, '{\"171\":\"family\",\"172\":\"hand-tosset\"}', '', 0, 0, 0, 338, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1031, 24.99, '{\"171\":\"family\",\"172\":\"thin-crust\"}', '', 0, 0, 0, 338, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1032, 25.99, '{\"171\":\"family\",\"172\":\"double-decker\"}', '', 0, 0, 0, 338, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1033, 14.99, '{\"173\":\"small\",\"174\":\"hand-tosset\"}', '', 0, 0, 0, 339, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1034, 15.99, '{\"173\":\"small\",\"174\":\"thin-crust\"}', '', 0, 0, 0, 339, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1035, 16.99, '{\"173\":\"small\",\"174\":\"double-decker\"}', '', 0, 0, 0, 339, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1036, 17.99, '{\"173\":\"medium\",\"174\":\"hand-tosset\"}', '', 0, 0, 0, 339, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1037, 18.99, '{\"173\":\"medium\",\"174\":\"thin-crust\"}', '', 0, 0, 0, 339, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1038, 19.99, '{\"173\":\"medium\",\"174\":\"double-decker\"}', '', 0, 0, 0, 339, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1039, 20.99, '{\"173\":\"large\",\"174\":\"hand-tosset\"}', '', 0, 0, 0, 339, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1040, 21.99, '{\"173\":\"large\",\"174\":\"thin-crust\"}', '', 0, 0, 0, 339, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1041, 22.99, '{\"173\":\"large\",\"174\":\"double-decker\"}', '', 0, 0, 0, 339, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1042, 23.99, '{\"173\":\"family\",\"174\":\"hand-tosset\"}', '', 0, 0, 0, 339, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1043, 24.99, '{\"173\":\"family\",\"174\":\"thin-crust\"}', '', 0, 0, 0, 339, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1044, 25.99, '{\"173\":\"family\",\"174\":\"double-decker\"}', '', 0, 0, 0, 339, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1045, 14.99, '{\"175\":\"small\",\"176\":\"hand-tosset\"}', '', 0, 0, 0, 340, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1046, 15.99, '{\"175\":\"small\",\"176\":\"thin-crust\"}', '', 0, 0, 0, 340, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1047, 16.99, '{\"175\":\"small\",\"176\":\"double-decker\"}', '', 0, 0, 0, 340, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1048, 17.99, '{\"175\":\"medium\",\"176\":\"hand-tosset\"}', '', 0, 0, 0, 340, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1049, 18.99, '{\"175\":\"medium\",\"176\":\"thin-crust\"}', '', 0, 0, 0, 340, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1050, 19.99, '{\"175\":\"medium\",\"176\":\"double-decker\"}', '', 0, 0, 0, 340, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1051, 20.99, '{\"175\":\"large\",\"176\":\"hand-tosset\"}', '', 0, 0, 0, 340, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1052, 21.99, '{\"175\":\"large\",\"176\":\"thin-crust\"}', '', 0, 0, 0, 340, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1053, 22.99, '{\"175\":\"large\",\"176\":\"double-decker\"}', '', 0, 0, 0, 340, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1054, 23.99, '{\"175\":\"family\",\"176\":\"hand-tosset\"}', '', 0, 0, 0, 340, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1055, 24.99, '{\"175\":\"family\",\"176\":\"thin-crust\"}', '', 0, 0, 0, 340, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1056, 25.99, '{\"175\":\"family\",\"176\":\"double-decker\"}', '', 0, 0, 0, 340, '2021-12-30 22:33:48', '2021-12-30 22:33:48', NULL, 0),
(1058, 2.00, '{\"177\":\"\\u0635\\u063a\\u064a\\u0631\",\"178\":\"\\u0643\\u0628\\u064a\\u0631\"}', '', 0, 0, 0, 481, '2022-02-22 03:00:05', '2022-02-22 03:00:57', '2022-02-22 03:00:57', 0),
(1061, 0.00, '{\"179\":\"\\u0627\\u0648\\u063a\\u0646\\u062f\\u064a\"}', '', 0, 0, 0, 389, '2022-02-23 03:29:18', '2022-02-23 03:30:31', '2022-02-23 03:30:31', 0),
(1063, 0.00, '{\"179\":\"\\u0627\\u0648\\u063a\\u0646\\u062f\\u064a\",\"180\":\"\\u0633\\u0644\\u06a4\\u0627\\u062f\\u0648\\u0631\"}', '', 0, 0, 0, 389, '2022-02-23 03:31:38', '2022-02-23 03:31:54', '2022-02-23 03:31:54', 0),
(1065, 13.00, '{\"179\":\"aoghndy\",\"180\":\"slador\"}', '', 0, 0, 0, 389, '2022-02-23 03:31:54', '2022-02-23 03:31:54', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `variants_has_extras`
--

CREATE TABLE `variants_has_extras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `extra_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variants_has_extras`
--

INSERT INTO `variants_has_extras` (`id`, `created_at`, `updated_at`, `variant_id`, `extra_id`) VALUES
(1, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 1, 21),
(2, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 2, 21),
(3, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 3, 21),
(4, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 4, 21),
(5, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 5, 21),
(6, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 6, 21),
(7, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 7, 22),
(8, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 8, 22),
(9, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 9, 22),
(10, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 10, 22),
(11, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 11, 22),
(12, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 12, 22),
(13, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 13, 25),
(14, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 14, 25),
(15, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 15, 25),
(16, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 16, 25),
(17, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 17, 25),
(18, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 18, 25),
(19, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 19, 26),
(20, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 20, 26),
(21, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 21, 26),
(22, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 22, 26),
(23, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 23, 26),
(24, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 24, 26),
(25, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 25, 29),
(26, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 26, 29),
(27, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 27, 29),
(28, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 28, 29),
(29, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 29, 29),
(30, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 30, 29),
(31, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 31, 30),
(32, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 32, 30),
(33, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 33, 30),
(34, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 34, 30),
(35, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 35, 30),
(36, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 36, 30),
(37, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 37, 33),
(38, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 38, 33),
(39, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 39, 33),
(40, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 40, 33),
(41, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 41, 33),
(42, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 42, 33),
(43, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 43, 34),
(44, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 44, 34),
(45, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 45, 34),
(46, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 46, 34),
(47, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 47, 34),
(48, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 48, 34),
(49, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 49, 37),
(50, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 50, 37),
(51, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 51, 37),
(52, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 52, 37),
(53, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 53, 37),
(54, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 54, 37),
(55, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 55, 38),
(56, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 56, 38),
(57, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 57, 38),
(58, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 58, 38),
(59, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 59, 38),
(60, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 60, 38),
(61, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 61, 41),
(62, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 62, 41),
(63, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 63, 41),
(64, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 64, 41),
(65, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 65, 41),
(66, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 66, 41),
(67, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 67, 42),
(68, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 68, 42),
(69, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 69, 42),
(70, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 70, 42),
(71, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 71, 42),
(72, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 72, 42),
(73, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 73, 45),
(74, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 74, 45),
(75, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 75, 45),
(76, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 76, 45),
(77, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 77, 45),
(78, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 78, 45),
(79, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 79, 46),
(80, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 80, 46),
(81, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 81, 46),
(82, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 82, 46),
(83, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 83, 46),
(84, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 84, 46),
(85, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 85, 49),
(86, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 86, 49),
(87, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 87, 49),
(88, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 88, 49),
(89, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 89, 49),
(90, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 90, 49),
(91, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 91, 50),
(92, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 92, 50),
(93, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 93, 50),
(94, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 94, 50),
(95, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 95, 50),
(96, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 96, 50),
(97, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 97, 53),
(98, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 98, 53),
(99, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 99, 53),
(100, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 100, 53),
(101, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 101, 53),
(102, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 102, 53),
(103, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 103, 54),
(104, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 104, 54),
(105, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 105, 54),
(106, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 106, 54),
(107, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 107, 54),
(108, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 108, 54),
(109, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 109, 57),
(110, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 110, 57),
(111, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 111, 57),
(112, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 112, 57),
(113, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 113, 57),
(114, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 114, 57),
(115, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 115, 58),
(116, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 116, 58),
(117, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 117, 58),
(118, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 118, 58),
(119, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 119, 58),
(120, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 120, 58),
(121, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 121, 61),
(122, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 122, 61),
(123, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 123, 61),
(124, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 124, 61),
(125, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 125, 61),
(126, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 126, 61),
(127, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 127, 62),
(128, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 128, 62),
(129, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 129, 62),
(130, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 130, 62),
(131, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 131, 62),
(132, '2021-12-30 22:33:44', '2021-12-30 22:33:44', 132, 62),
(133, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 133, 83),
(134, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 134, 83),
(135, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 135, 83),
(136, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 136, 83),
(137, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 137, 83),
(138, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 138, 83),
(139, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 139, 84),
(140, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 140, 84),
(141, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 141, 84),
(142, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 142, 84),
(143, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 143, 84),
(144, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 144, 84),
(145, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 145, 87),
(146, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 146, 87),
(147, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 147, 87),
(148, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 148, 87),
(149, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 149, 87),
(150, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 150, 87),
(151, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 151, 88),
(152, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 152, 88),
(153, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 153, 88),
(154, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 154, 88),
(155, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 155, 88),
(156, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 156, 88),
(157, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 157, 91),
(158, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 158, 91),
(159, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 159, 91),
(160, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 160, 91),
(161, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 161, 91),
(162, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 162, 91),
(163, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 163, 92),
(164, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 164, 92),
(165, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 165, 92),
(166, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 166, 92),
(167, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 167, 92),
(168, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 168, 92),
(169, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 169, 95),
(170, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 170, 95),
(171, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 171, 95),
(172, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 172, 95),
(173, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 173, 95),
(174, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 174, 95),
(175, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 175, 96),
(176, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 176, 96),
(177, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 177, 96),
(178, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 178, 96),
(179, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 179, 96),
(180, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 180, 96),
(181, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 181, 99),
(182, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 182, 99),
(183, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 183, 99),
(184, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 184, 99),
(185, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 185, 99),
(186, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 186, 99),
(187, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 187, 100),
(188, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 188, 100),
(189, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 189, 100),
(190, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 190, 100),
(191, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 191, 100),
(192, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 192, 100),
(193, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 193, 103),
(194, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 194, 103),
(195, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 195, 103),
(196, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 196, 103),
(197, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 197, 103),
(198, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 198, 103),
(199, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 199, 104),
(200, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 200, 104),
(201, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 201, 104),
(202, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 202, 104),
(203, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 203, 104),
(204, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 204, 104),
(205, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 205, 107),
(206, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 206, 107),
(207, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 207, 107),
(208, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 208, 107),
(209, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 209, 107),
(210, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 210, 107),
(211, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 211, 108),
(212, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 212, 108),
(213, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 213, 108),
(214, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 214, 108),
(215, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 215, 108),
(216, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 216, 108),
(217, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 217, 111),
(218, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 218, 111),
(219, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 219, 111),
(220, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 220, 111),
(221, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 221, 111),
(222, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 222, 111),
(223, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 223, 112),
(224, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 224, 112),
(225, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 225, 112),
(226, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 226, 112),
(227, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 227, 112),
(228, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 228, 112),
(229, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 229, 115),
(230, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 230, 115),
(231, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 231, 115),
(232, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 232, 115),
(233, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 233, 115),
(234, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 234, 115),
(235, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 235, 116),
(236, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 236, 116),
(237, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 237, 116),
(238, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 238, 116),
(239, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 239, 116),
(240, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 240, 116),
(241, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 241, 119),
(242, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 242, 119),
(243, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 243, 119),
(244, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 244, 119),
(245, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 245, 119),
(246, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 246, 119),
(247, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 247, 120),
(248, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 248, 120),
(249, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 249, 120),
(250, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 250, 120),
(251, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 251, 120),
(252, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 252, 120),
(253, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 253, 123),
(254, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 254, 123),
(255, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 255, 123),
(256, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 256, 123),
(257, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 257, 123),
(258, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 258, 123),
(259, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 259, 124),
(260, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 260, 124),
(261, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 261, 124),
(262, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 262, 124),
(263, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 263, 124),
(264, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 264, 124),
(265, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 265, 127),
(266, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 266, 127),
(267, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 267, 127),
(268, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 268, 127),
(269, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 269, 127),
(270, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 270, 127),
(271, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 271, 128),
(272, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 272, 128),
(273, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 273, 128),
(274, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 274, 128),
(275, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 275, 128),
(276, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 276, 128),
(277, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 277, 131),
(278, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 278, 131),
(279, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 279, 131),
(280, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 280, 131),
(281, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 281, 131),
(282, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 282, 131),
(283, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 283, 132),
(284, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 284, 132),
(285, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 285, 132),
(286, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 286, 132),
(287, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 287, 132),
(288, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 288, 132),
(289, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 289, 135),
(290, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 290, 135),
(291, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 291, 135),
(292, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 292, 135),
(293, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 293, 135),
(294, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 294, 135),
(295, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 295, 136),
(296, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 296, 136),
(297, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 297, 136),
(298, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 298, 136),
(299, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 299, 136),
(300, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 300, 136),
(301, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 301, 139),
(302, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 302, 139),
(303, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 303, 139),
(304, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 304, 139),
(305, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 305, 139),
(306, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 306, 139),
(307, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 307, 140),
(308, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 308, 140),
(309, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 309, 140),
(310, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 310, 140),
(311, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 311, 140),
(312, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 312, 140),
(313, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 313, 143),
(314, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 314, 143),
(315, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 315, 143),
(316, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 316, 143),
(317, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 317, 143),
(318, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 318, 143),
(319, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 319, 144),
(320, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 320, 144),
(321, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 321, 144),
(322, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 322, 144),
(323, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 323, 144),
(324, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 324, 144),
(325, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 325, 147),
(326, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 326, 147),
(327, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 327, 147),
(328, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 328, 147),
(329, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 329, 147),
(330, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 330, 147),
(331, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 331, 148),
(332, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 332, 148),
(333, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 333, 148),
(334, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 334, 148),
(335, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 335, 148),
(336, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 336, 148),
(337, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 337, 151),
(338, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 338, 151),
(339, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 339, 151),
(340, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 340, 151),
(341, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 341, 151),
(342, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 342, 151),
(343, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 343, 152),
(344, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 344, 152),
(345, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 345, 152),
(346, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 346, 152),
(347, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 347, 152),
(348, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 348, 152),
(349, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 349, 155),
(350, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 350, 155),
(351, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 351, 155),
(352, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 352, 155),
(353, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 353, 155),
(354, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 354, 155),
(355, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 355, 156),
(356, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 356, 156),
(357, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 357, 156),
(358, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 358, 156),
(359, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 359, 156),
(360, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 360, 156),
(361, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 361, 159),
(362, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 362, 159),
(363, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 363, 159),
(364, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 364, 159),
(365, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 365, 159),
(366, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 366, 159),
(367, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 367, 160),
(368, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 368, 160),
(369, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 369, 160),
(370, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 370, 160),
(371, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 371, 160),
(372, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 372, 160),
(373, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 373, 163),
(374, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 374, 163),
(375, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 375, 163),
(376, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 376, 163),
(377, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 377, 163),
(378, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 378, 163),
(379, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 379, 164),
(380, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 380, 164),
(381, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 381, 164),
(382, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 382, 164),
(383, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 383, 164),
(384, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 384, 164),
(385, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 385, 167),
(386, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 386, 167),
(387, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 387, 167),
(388, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 388, 167),
(389, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 389, 167),
(390, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 390, 167),
(391, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 391, 168),
(392, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 392, 168),
(393, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 393, 168),
(394, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 394, 168),
(395, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 395, 168),
(396, '2021-12-30 22:33:45', '2021-12-30 22:33:45', 396, 168),
(397, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 397, 189),
(398, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 398, 189),
(399, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 399, 189),
(400, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 400, 189),
(401, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 401, 189),
(402, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 402, 189),
(403, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 403, 190),
(404, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 404, 190),
(405, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 405, 190),
(406, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 406, 190),
(407, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 407, 190),
(408, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 408, 190),
(409, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 409, 193),
(410, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 410, 193),
(411, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 411, 193),
(412, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 412, 193),
(413, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 413, 193),
(414, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 414, 193),
(415, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 415, 194),
(416, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 416, 194),
(417, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 417, 194),
(418, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 418, 194),
(419, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 419, 194),
(420, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 420, 194),
(421, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 421, 197),
(422, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 422, 197),
(423, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 423, 197),
(424, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 424, 197),
(425, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 425, 197),
(426, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 426, 197),
(427, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 427, 198),
(428, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 428, 198),
(429, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 429, 198),
(430, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 430, 198),
(431, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 431, 198),
(432, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 432, 198),
(433, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 433, 201),
(434, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 434, 201),
(435, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 435, 201),
(436, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 436, 201),
(437, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 437, 201),
(438, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 438, 201),
(439, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 439, 202),
(440, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 440, 202),
(441, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 441, 202),
(442, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 442, 202),
(443, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 443, 202),
(444, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 444, 202),
(445, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 445, 205),
(446, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 446, 205),
(447, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 447, 205),
(448, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 448, 205),
(449, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 449, 205),
(450, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 450, 205),
(451, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 451, 206),
(452, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 452, 206),
(453, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 453, 206),
(454, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 454, 206),
(455, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 455, 206),
(456, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 456, 206),
(457, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 457, 209),
(458, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 458, 209),
(459, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 459, 209),
(460, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 460, 209),
(461, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 461, 209),
(462, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 462, 209),
(463, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 463, 210),
(464, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 464, 210),
(465, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 465, 210),
(466, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 466, 210),
(467, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 467, 210),
(468, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 468, 210),
(469, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 469, 213),
(470, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 470, 213),
(471, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 471, 213),
(472, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 472, 213),
(473, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 473, 213),
(474, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 474, 213),
(475, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 475, 214),
(476, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 476, 214),
(477, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 477, 214),
(478, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 478, 214),
(479, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 479, 214),
(480, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 480, 214),
(481, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 481, 217),
(482, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 482, 217),
(483, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 483, 217),
(484, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 484, 217),
(485, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 485, 217),
(486, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 486, 217),
(487, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 487, 218),
(488, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 488, 218),
(489, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 489, 218),
(490, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 490, 218),
(491, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 491, 218),
(492, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 492, 218),
(493, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 493, 221),
(494, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 494, 221),
(495, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 495, 221),
(496, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 496, 221),
(497, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 497, 221),
(498, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 498, 221),
(499, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 499, 222),
(500, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 500, 222),
(501, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 501, 222),
(502, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 502, 222),
(503, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 503, 222),
(504, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 504, 222),
(505, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 505, 225),
(506, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 506, 225),
(507, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 507, 225),
(508, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 508, 225),
(509, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 509, 225),
(510, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 510, 225),
(511, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 511, 226),
(512, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 512, 226),
(513, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 513, 226),
(514, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 514, 226),
(515, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 515, 226),
(516, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 516, 226),
(517, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 517, 229),
(518, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 518, 229),
(519, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 519, 229),
(520, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 520, 229),
(521, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 521, 229),
(522, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 522, 229),
(523, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 523, 230),
(524, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 524, 230),
(525, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 525, 230),
(526, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 526, 230),
(527, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 527, 230),
(528, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 528, 230),
(529, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 529, 251),
(530, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 530, 251),
(531, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 531, 251),
(532, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 532, 251),
(533, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 533, 251),
(534, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 534, 251),
(535, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 535, 252),
(536, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 536, 252),
(537, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 537, 252),
(538, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 538, 252),
(539, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 539, 252),
(540, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 540, 252),
(541, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 541, 255),
(542, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 542, 255),
(543, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 543, 255),
(544, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 544, 255),
(545, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 545, 255),
(546, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 546, 255),
(547, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 547, 256),
(548, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 548, 256),
(549, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 549, 256),
(550, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 550, 256),
(551, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 551, 256),
(552, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 552, 256),
(553, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 553, 259),
(554, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 554, 259),
(555, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 555, 259),
(556, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 556, 259),
(557, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 557, 259),
(558, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 558, 259),
(559, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 559, 260),
(560, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 560, 260),
(561, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 561, 260),
(562, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 562, 260),
(563, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 563, 260),
(564, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 564, 260),
(565, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 565, 263),
(566, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 566, 263),
(567, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 567, 263),
(568, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 568, 263),
(569, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 569, 263),
(570, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 570, 263),
(571, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 571, 264),
(572, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 572, 264),
(573, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 573, 264),
(574, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 574, 264),
(575, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 575, 264),
(576, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 576, 264),
(577, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 577, 267),
(578, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 578, 267),
(579, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 579, 267),
(580, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 580, 267),
(581, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 581, 267),
(582, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 582, 267),
(583, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 583, 268),
(584, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 584, 268),
(585, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 585, 268),
(586, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 586, 268),
(587, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 587, 268),
(588, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 588, 268),
(589, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 589, 271),
(590, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 590, 271),
(591, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 591, 271),
(592, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 592, 271),
(593, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 593, 271),
(594, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 594, 271),
(595, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 595, 272),
(596, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 596, 272),
(597, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 597, 272),
(598, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 598, 272),
(599, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 599, 272),
(600, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 600, 272),
(601, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 601, 275),
(602, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 602, 275),
(603, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 603, 275),
(604, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 604, 275),
(605, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 605, 275),
(606, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 606, 275),
(607, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 607, 276),
(608, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 608, 276),
(609, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 609, 276),
(610, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 610, 276),
(611, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 611, 276),
(612, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 612, 276),
(613, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 613, 279),
(614, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 614, 279),
(615, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 615, 279),
(616, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 616, 279),
(617, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 617, 279),
(618, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 618, 279),
(619, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 619, 280),
(620, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 620, 280),
(621, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 621, 280),
(622, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 622, 280),
(623, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 623, 280),
(624, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 624, 280),
(625, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 625, 283),
(626, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 626, 283),
(627, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 627, 283),
(628, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 628, 283),
(629, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 629, 283),
(630, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 630, 283),
(631, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 631, 284),
(632, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 632, 284),
(633, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 633, 284),
(634, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 634, 284),
(635, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 635, 284),
(636, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 636, 284),
(637, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 637, 287),
(638, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 638, 287),
(639, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 639, 287),
(640, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 640, 287),
(641, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 641, 287),
(642, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 642, 287),
(643, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 643, 288),
(644, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 644, 288),
(645, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 645, 288),
(646, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 646, 288),
(647, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 647, 288),
(648, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 648, 288),
(649, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 649, 291),
(650, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 650, 291),
(651, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 651, 291),
(652, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 652, 291),
(653, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 653, 291),
(654, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 654, 291),
(655, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 655, 292),
(656, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 656, 292),
(657, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 657, 292),
(658, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 658, 292),
(659, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 659, 292),
(660, '2021-12-30 22:33:46', '2021-12-30 22:33:46', 660, 292),
(661, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 661, 331),
(662, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 662, 331),
(663, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 663, 331),
(664, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 664, 331),
(665, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 665, 331),
(666, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 666, 331),
(667, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 667, 332),
(668, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 668, 332),
(669, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 669, 332),
(670, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 670, 332),
(671, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 671, 332),
(672, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 672, 332),
(673, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 673, 335),
(674, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 674, 335),
(675, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 675, 335),
(676, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 676, 335),
(677, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 677, 335),
(678, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 678, 335),
(679, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 679, 336),
(680, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 680, 336),
(681, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 681, 336),
(682, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 682, 336),
(683, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 683, 336),
(684, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 684, 336),
(685, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 685, 339),
(686, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 686, 339),
(687, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 687, 339),
(688, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 688, 339),
(689, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 689, 339),
(690, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 690, 339),
(691, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 691, 340),
(692, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 692, 340),
(693, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 693, 340),
(694, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 694, 340),
(695, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 695, 340),
(696, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 696, 340),
(697, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 697, 343),
(698, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 698, 343),
(699, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 699, 343),
(700, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 700, 343),
(701, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 701, 343),
(702, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 702, 343),
(703, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 703, 344),
(704, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 704, 344),
(705, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 705, 344),
(706, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 706, 344),
(707, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 707, 344),
(708, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 708, 344),
(709, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 709, 347),
(710, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 710, 347),
(711, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 711, 347),
(712, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 712, 347),
(713, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 713, 347),
(714, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 714, 347),
(715, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 715, 348),
(716, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 716, 348),
(717, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 717, 348),
(718, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 718, 348),
(719, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 719, 348),
(720, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 720, 348),
(721, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 721, 351),
(722, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 722, 351),
(723, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 723, 351),
(724, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 724, 351),
(725, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 725, 351),
(726, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 726, 351),
(727, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 727, 352),
(728, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 728, 352),
(729, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 729, 352),
(730, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 730, 352),
(731, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 731, 352),
(732, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 732, 352),
(733, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 733, 355),
(734, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 734, 355),
(735, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 735, 355),
(736, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 736, 355),
(737, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 737, 355),
(738, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 738, 355),
(739, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 739, 356),
(740, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 740, 356),
(741, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 741, 356),
(742, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 742, 356),
(743, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 743, 356),
(744, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 744, 356),
(745, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 745, 359),
(746, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 746, 359),
(747, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 747, 359),
(748, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 748, 359),
(749, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 749, 359),
(750, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 750, 359),
(751, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 751, 360),
(752, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 752, 360),
(753, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 753, 360),
(754, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 754, 360),
(755, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 755, 360),
(756, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 756, 360),
(757, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 757, 363),
(758, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 758, 363),
(759, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 759, 363),
(760, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 760, 363),
(761, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 761, 363),
(762, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 762, 363),
(763, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 763, 364),
(764, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 764, 364),
(765, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 765, 364),
(766, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 766, 364),
(767, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 767, 364),
(768, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 768, 364),
(769, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 769, 367),
(770, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 770, 367),
(771, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 771, 367),
(772, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 772, 367),
(773, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 773, 367),
(774, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 774, 367),
(775, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 775, 368),
(776, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 776, 368),
(777, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 777, 368),
(778, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 778, 368),
(779, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 779, 368),
(780, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 780, 368),
(781, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 781, 371),
(782, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 782, 371),
(783, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 783, 371),
(784, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 784, 371),
(785, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 785, 371),
(786, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 786, 371),
(787, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 787, 372),
(788, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 788, 372),
(789, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 789, 372),
(790, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 790, 372),
(791, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 791, 372),
(792, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 792, 372),
(793, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 793, 393),
(794, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 794, 393),
(795, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 795, 393),
(796, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 796, 393),
(797, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 797, 393),
(798, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 798, 393),
(799, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 799, 394),
(800, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 800, 394),
(801, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 801, 394),
(802, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 802, 394),
(803, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 803, 394),
(804, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 804, 394),
(805, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 805, 397),
(806, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 806, 397),
(807, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 807, 397),
(808, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 808, 397),
(809, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 809, 397),
(810, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 810, 397),
(811, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 811, 398),
(812, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 812, 398),
(813, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 813, 398),
(814, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 814, 398),
(815, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 815, 398),
(816, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 816, 398),
(817, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 817, 401),
(818, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 818, 401),
(819, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 819, 401),
(820, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 820, 401),
(821, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 821, 401),
(822, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 822, 401),
(823, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 823, 402),
(824, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 824, 402);
INSERT INTO `variants_has_extras` (`id`, `created_at`, `updated_at`, `variant_id`, `extra_id`) VALUES
(825, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 825, 402),
(826, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 826, 402),
(827, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 827, 402),
(828, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 828, 402),
(829, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 829, 405),
(830, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 830, 405),
(831, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 831, 405),
(832, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 832, 405),
(833, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 833, 405),
(834, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 834, 405),
(835, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 835, 406),
(836, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 836, 406),
(837, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 837, 406),
(838, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 838, 406),
(839, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 839, 406),
(840, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 840, 406),
(841, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 841, 409),
(842, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 842, 409),
(843, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 843, 409),
(844, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 844, 409),
(845, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 845, 409),
(846, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 846, 409),
(847, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 847, 410),
(848, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 848, 410),
(849, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 849, 410),
(850, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 850, 410),
(851, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 851, 410),
(852, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 852, 410),
(853, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 853, 413),
(854, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 854, 413),
(855, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 855, 413),
(856, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 856, 413),
(857, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 857, 413),
(858, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 858, 413),
(859, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 859, 414),
(860, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 860, 414),
(861, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 861, 414),
(862, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 862, 414),
(863, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 863, 414),
(864, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 864, 414),
(865, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 865, 417),
(866, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 866, 417),
(867, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 867, 417),
(868, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 868, 417),
(869, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 869, 417),
(870, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 870, 417),
(871, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 871, 418),
(872, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 872, 418),
(873, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 873, 418),
(874, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 874, 418),
(875, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 875, 418),
(876, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 876, 418),
(877, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 877, 421),
(878, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 878, 421),
(879, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 879, 421),
(880, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 880, 421),
(881, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 881, 421),
(882, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 882, 421),
(883, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 883, 422),
(884, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 884, 422),
(885, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 885, 422),
(886, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 886, 422),
(887, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 887, 422),
(888, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 888, 422),
(889, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 889, 425),
(890, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 890, 425),
(891, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 891, 425),
(892, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 892, 425),
(893, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 893, 425),
(894, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 894, 425),
(895, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 895, 426),
(896, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 896, 426),
(897, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 897, 426),
(898, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 898, 426),
(899, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 899, 426),
(900, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 900, 426),
(901, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 901, 429),
(902, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 902, 429),
(903, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 903, 429),
(904, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 904, 429),
(905, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 905, 429),
(906, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 906, 429),
(907, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 907, 430),
(908, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 908, 430),
(909, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 909, 430),
(910, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 910, 430),
(911, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 911, 430),
(912, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 912, 430),
(913, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 913, 433),
(914, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 914, 433),
(915, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 915, 433),
(916, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 916, 433),
(917, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 917, 433),
(918, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 918, 433),
(919, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 919, 434),
(920, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 920, 434),
(921, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 921, 434),
(922, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 922, 434),
(923, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 923, 434),
(924, '2021-12-30 22:33:47', '2021-12-30 22:33:47', 924, 434),
(925, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 925, 455),
(926, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 926, 455),
(927, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 927, 455),
(928, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 928, 455),
(929, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 929, 455),
(930, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 930, 455),
(931, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 931, 456),
(932, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 932, 456),
(933, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 933, 456),
(934, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 934, 456),
(935, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 935, 456),
(936, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 936, 456),
(937, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 937, 459),
(938, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 938, 459),
(939, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 939, 459),
(940, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 940, 459),
(941, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 941, 459),
(942, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 942, 459),
(943, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 943, 460),
(944, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 944, 460),
(945, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 945, 460),
(946, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 946, 460),
(947, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 947, 460),
(948, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 948, 460),
(949, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 949, 463),
(950, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 950, 463),
(951, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 951, 463),
(952, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 952, 463),
(953, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 953, 463),
(954, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 954, 463),
(955, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 955, 464),
(956, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 956, 464),
(957, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 957, 464),
(958, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 958, 464),
(959, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 959, 464),
(960, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 960, 464),
(961, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 961, 467),
(962, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 962, 467),
(963, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 963, 467),
(964, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 964, 467),
(965, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 965, 467),
(966, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 966, 467),
(967, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 967, 468),
(968, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 968, 468),
(969, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 969, 468),
(970, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 970, 468),
(971, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 971, 468),
(972, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 972, 468),
(973, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 973, 471),
(974, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 974, 471),
(975, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 975, 471),
(976, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 976, 471),
(977, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 977, 471),
(978, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 978, 471),
(979, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 979, 472),
(980, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 980, 472),
(981, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 981, 472),
(982, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 982, 472),
(983, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 983, 472),
(984, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 984, 472),
(985, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 985, 475),
(986, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 986, 475),
(987, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 987, 475),
(988, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 988, 475),
(989, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 989, 475),
(990, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 990, 475),
(991, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 991, 476),
(992, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 992, 476),
(993, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 993, 476),
(994, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 994, 476),
(995, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 995, 476),
(996, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 996, 476),
(997, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 997, 479),
(998, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 998, 479),
(999, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 999, 479),
(1000, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1000, 479),
(1001, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1001, 479),
(1002, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1002, 479),
(1003, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1003, 480),
(1004, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1004, 480),
(1005, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1005, 480),
(1006, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1006, 480),
(1007, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1007, 480),
(1008, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1008, 480),
(1009, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1009, 483),
(1010, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1010, 483),
(1011, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1011, 483),
(1012, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1012, 483),
(1013, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1013, 483),
(1014, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1014, 483),
(1015, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1015, 484),
(1016, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1016, 484),
(1017, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1017, 484),
(1018, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1018, 484),
(1019, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1019, 484),
(1020, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1020, 484),
(1021, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1021, 487),
(1022, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1022, 487),
(1023, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1023, 487),
(1024, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1024, 487),
(1025, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1025, 487),
(1026, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1026, 487),
(1027, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1027, 488),
(1028, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1028, 488),
(1029, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1029, 488),
(1030, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1030, 488),
(1031, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1031, 488),
(1032, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1032, 488),
(1033, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1033, 491),
(1034, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1034, 491),
(1035, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1035, 491),
(1036, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1036, 491),
(1037, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1037, 491),
(1038, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1038, 491),
(1039, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1039, 492),
(1040, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1040, 492),
(1041, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1041, 492),
(1042, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1042, 492),
(1043, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1043, 492),
(1044, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1044, 492),
(1045, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1045, 495),
(1046, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1046, 495),
(1047, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1047, 495),
(1048, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1048, 495),
(1049, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1049, 495),
(1050, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1050, 495),
(1051, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1051, 496),
(1052, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1052, 496),
(1053, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1053, 496),
(1054, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1054, 496),
(1055, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1055, 496),
(1056, '2021-12-30 22:33:48', '2021-12-30 22:33:48', 1056, 496);

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `table_id` bigint(20) UNSIGNED DEFAULT NULL,
  `by` int(11) NOT NULL DEFAULT '1' COMMENT '1 - Owner, 0 - Client Himself',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `name`, `email`, `phone_number`, `note`, `restaurant_id`, `table_id`, `by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'Jumana', 'Jomana-1419@hotmail.com', '0504861160', 'ا', 17, 241, 2, '2022-01-06 16:39:01', '2022-01-06 16:39:01', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address_user_id_foreign` (`user_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banners_vendor_id_foreign` (`vendor_id`),
  ADD KEY `banners_page_id_foreign` (`page_id`);

--
-- Indexes for table `cart_storage`
--
ALTER TABLE `cart_storage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_storage_id_index` (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_restorant_id_foreign` (`restorant_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cities_alias_unique` (`alias`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `restorants_name_unique` (`name`),
  ADD UNIQUE KEY `restorants_subdomain_unique` (`subdomain`),
  ADD KEY `restorants_user_id_foreign` (`user_id`);

--
-- Indexes for table `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`),
  ADD KEY `coupons_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_restaurant_id_foreign` (`restaurant_id`),
  ADD KEY `expenses_expenses_category_id_foreign` (`expenses_category_id`),
  ADD KEY `expenses_expenses_vendor_id_foreign` (`expenses_vendor_id`);

--
-- Indexes for table `expenses_category`
--
ALTER TABLE `expenses_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_category_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `expenses_vendor`
--
ALTER TABLE `expenses_vendor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_vendor_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `extras`
--
ALTER TABLE `extras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extras_item_id_foreign` (`item_id`);

--
-- Indexes for table `hours`
--
ALTER TABLE `hours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hours_restorant_id_foreign` (`restorant_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_category_id_foreign` (`category_id`);

--
-- Indexes for table `item_has_allergens`
--
ALTER TABLE `item_has_allergens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `localmenus`
--
ALTER TABLE `localmenus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `localmenus_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `noon_paymentlogs`
--
ALTER TABLE `noon_paymentlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_item_id_foreign` (`item_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_address_id_foreign` (`address_id`),
  ADD KEY `orders_client_id_foreign` (`client_id`),
  ADD KEY `orders_restorant_id_foreign` (`restorant_id`),
  ADD KEY `orders_driver_id_foreign` (`driver_id`),
  ADD KEY `orders_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `order_has_items`
--
ALTER TABLE `order_has_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_has_items_order_id_foreign` (`order_id`),
  ADD KEY `order_has_items_item_id_foreign` (`item_id`);

--
-- Indexes for table `order_has_status`
--
ALTER TABLE `order_has_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_has_status_order_id_foreign` (`order_id`),
  ADD KEY `order_has_status_status_id_foreign` (`status_id`),
  ADD KEY `order_has_status_user_id_foreign` (`user_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `paths`
--
ALTER TABLE `paths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_rateable_type_rateable_id_index` (`rateable_type`,`rateable_id`),
  ADD KEY `ratings_rateable_id_index` (`rateable_id`),
  ADD KEY `ratings_rateable_type_index` (`rateable_type`),
  ADD KEY `ratings_user_id_foreign` (`user_id`),
  ADD KEY `ratings_order_id_foreign` (`order_id`);

--
-- Indexes for table `restoareas`
--
ALTER TABLE `restoareas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restoareas_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simple_delivery_areas`
--
ALTER TABLE `simple_delivery_areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `simple_delivery_areas_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `sms_verifications`
--
ALTER TABLE `sms_verifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sms_verifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `status_name_unique` (`name`),
  ADD UNIQUE KEY `status_alias_unique` (`alias`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_plan_unique` (`subscription_id`,`stripe_plan`),
  ADD KEY `subscription_items_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tables_restoarea_id_foreign` (`restoarea_id`),
  ADD KEY `tables_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_language_id_foreign` (`language_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`),
  ADD UNIQUE KEY `users_verification_code_unique` (`verification_code`),
  ADD KEY `users_stripe_id_index` (`stripe_id`),
  ADD KEY `users_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variants_item_id_foreign` (`item_id`);

--
-- Indexes for table `variants_has_extras`
--
ALTER TABLE `variants_has_extras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variants_has_extras_variant_id_foreign` (`variant_id`),
  ADD KEY `variants_has_extras_extra_id_foreign` (`extra_id`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visits_restaurant_id_foreign` (`restaurant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `configs`
--
ALTER TABLE `configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `expenses_category`
--
ALTER TABLE `expenses_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expenses_vendor`
--
ALTER TABLE `expenses_vendor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `extras`
--
ALTER TABLE `extras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=524;

--
-- AUTO_INCREMENT for table `hours`
--
ALTER TABLE `hours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=584;

--
-- AUTO_INCREMENT for table `item_has_allergens`
--
ALTER TABLE `item_has_allergens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `localmenus`
--
ALTER TABLE `localmenus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `noon_paymentlogs`
--
ALTER TABLE `noon_paymentlogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=710;

--
-- AUTO_INCREMENT for table `order_has_items`
--
ALTER TABLE `order_has_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `order_has_status`
--
ALTER TABLE `order_has_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `paths`
--
ALTER TABLE `paths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restoareas`
--
ALTER TABLE `restoareas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `simple_delivery_areas`
--
ALTER TABLE `simple_delivery_areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `sms_verifications`
--
ALTER TABLE `sms_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1066;

--
-- AUTO_INCREMENT for table `variants_has_extras`
--
ALTER TABLE `variants_has_extras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1057;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`),
  ADD CONSTRAINT `banners_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_restorant_id_foreign` FOREIGN KEY (`restorant_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `restorants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `coupons`
--
ALTER TABLE `coupons`
  ADD CONSTRAINT `coupons_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_expenses_category_id_foreign` FOREIGN KEY (`expenses_category_id`) REFERENCES `expenses_category` (`id`),
  ADD CONSTRAINT `expenses_expenses_vendor_id_foreign` FOREIGN KEY (`expenses_vendor_id`) REFERENCES `expenses_vendor` (`id`),
  ADD CONSTRAINT `expenses_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `expenses_category`
--
ALTER TABLE `expenses_category`
  ADD CONSTRAINT `expenses_category_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `expenses_vendor`
--
ALTER TABLE `expenses_vendor`
  ADD CONSTRAINT `expenses_vendor_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `extras`
--
ALTER TABLE `extras`
  ADD CONSTRAINT `extras_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `hours`
--
ALTER TABLE `hours`
  ADD CONSTRAINT `hours_restorant_id_foreign` FOREIGN KEY (`restorant_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `localmenus`
--
ALTER TABLE `localmenus`
  ADD CONSTRAINT `localmenus_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  ADD CONSTRAINT `orders_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_restorant_id_foreign` FOREIGN KEY (`restorant_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `order_has_items`
--
ALTER TABLE `order_has_items`
  ADD CONSTRAINT `order_has_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `order_has_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `order_has_status`
--
ALTER TABLE `order_has_status`
  ADD CONSTRAINT `order_has_status_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_has_status_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `order_has_status_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `restoareas`
--
ALTER TABLE `restoareas`
  ADD CONSTRAINT `restoareas_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `simple_delivery_areas`
--
ALTER TABLE `simple_delivery_areas`
  ADD CONSTRAINT `simple_delivery_areas_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `sms_verifications`
--
ALTER TABLE `sms_verifications`
  ADD CONSTRAINT `sms_verifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tables`
--
ALTER TABLE `tables`
  ADD CONSTRAINT `tables_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `tables_restoarea_id_foreign` FOREIGN KEY (`restoarea_id`) REFERENCES `restoareas` (`id`);

--
-- Constraints for table `translations`
--
ALTER TABLE `translations`
  ADD CONSTRAINT `translations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `variants`
--
ALTER TABLE `variants`
  ADD CONSTRAINT `variants_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `variants_has_extras`
--
ALTER TABLE `variants_has_extras`
  ADD CONSTRAINT `variants_has_extras_extra_id_foreign` FOREIGN KEY (`extra_id`) REFERENCES `extras` (`id`),
  ADD CONSTRAINT `variants_has_extras_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`);

--
-- Constraints for table `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
