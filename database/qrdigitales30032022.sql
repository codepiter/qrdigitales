-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-03-2022 a las 21:37:54
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `qrdigitales22`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `address`
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
-- Estructura de tabla para la tabla `banners`
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
-- Estructura de tabla para la tabla `cart_storage`
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
-- Estructura de tabla para la tabla `categories`
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
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `restorant_id`, `created_at`, `updated_at`, `order_index`, `active`, `deleted_at`) VALUES
(76, 'Pizzas', 23, '2022-01-03 20:00:06', '2022-01-03 20:00:06', 1, 1, NULL),
(77, 'Bebidas', 23, '2022-01-03 20:00:26', '2022-01-03 20:00:26', 2, 1, NULL),
(78, 'Postres', 23, '2022-01-03 20:00:46', '2022-01-03 20:01:44', 4, 1, NULL),
(79, 'Drinks1', 23, '2022-01-03 20:01:14', '2022-01-03 20:01:53', 3, 1, '2022-01-03 20:01:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cities`
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
-- Volcado de datos para la tabla `cities`
--

INSERT INTO `cities` (`id`, `created_at`, `updated_at`, `name`, `alias`, `image`, `header_title`, `header_subtitle`, `deleted_at`) VALUES
(1, '2021-10-04 13:23:11', '2021-10-04 13:23:11', 'Bronx', 'bx', 'https://foodtiger.mobidonia.com/uploads/settings/177686e2-8597-46e0-bf70-daa8d5ff0085_large.jpg', 'Food Delivery from<br /><strong>Bronx</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(2, '2021-10-04 13:23:11', '2021-10-04 13:23:11', 'Brooklyn', 'br', 'https://foodtiger.mobidonia.com/uploads/settings/6d001b6c-2ba1-499e-9f57-09b7dc46ace3_large.jpg', 'Food Delivery from<br /><strong>Brooklyn</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(3, '2021-10-04 13:23:11', '2021-10-04 13:23:11', 'Queens', 'qe', 'https://foodtiger.mobidonia.com/uploads/settings/492b78df-1756-4c30-910a-d3923b66aa97_large.jpg', 'Food Delivery from<br /><strong>Queens</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(4, '2021-10-04 13:23:11', '2021-10-04 13:23:11', 'Manhattn', 'mh', 'https://foodtiger.mobidonia.com/uploads/settings/01f41f56-1acf-44f0-8e8d-fedceb5267cf_large.jpg', 'Food Delivery from<br /><strong>Manhattn</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(5, '2021-10-04 13:23:11', '2021-10-04 13:23:11', 'Richmond', 'ri', 'https://foodtiger.mobidonia.com/uploads/settings/fe6c500b-3410-41ff-9734-94c58351ba60_large.jpg', 'Food Delivery from<br /><strong>Richmond</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(6, '2021-10-04 13:23:11', '2021-10-04 13:23:11', 'Buffalo', 'bf', 'https://foodtiger.mobidonia.com/uploads/settings/0c3c8fb0-c252-4758-9699-6851b15796ef_large.jpg', 'Food Delivery from<br /><strong>Buffalo</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(7, '2021-10-04 13:23:11', '2021-10-04 13:23:11', 'Rochester', 'rh', 'https://foodtiger.mobidonia.com/uploads/settings/c7f21267-7149-4311-9fd9-4a08904f67a3_large.jpg', 'Food Delivery from<br /><strong>Rochester</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(8, '2021-10-04 13:23:11', '2021-10-04 13:23:11', 'Yonkers', 'yo', 'https://foodtiger.mobidonia.com/uploads/settings/8c65269a-3bbc-4899-be13-75d1bc35e9cd_large.jpg', 'Food Delivery from<br /><strong>Yonkers</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(9, '2021-10-04 13:23:11', '2021-10-04 13:23:11', 'Syracuse', 'sy', 'https://foodtiger.mobidonia.com/uploads/settings/1e5fcde5-5dc0-4c29-8f49-314658836fb8_large.jpg', 'Food Delivery from<br /><strong>Syracuse</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(10, '2021-10-04 13:23:11', '2021-10-04 13:23:11', 'Albany', 'al', 'https://foodtiger.mobidonia.com/uploads/settings/b521e77f-1d3e-4695-b871-bac8262c85dc_large.jpg', 'Food Delivery from<br /><strong>Albany</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(11, '2021-10-04 13:23:11', '2021-10-04 13:23:11', 'New Rochelle', 'nr', 'https://foodtiger.mobidonia.com/uploads/settings/8b3ebb83-2e2e-43dd-8747-4f9c6f451199_large.jpg', 'Food Delivery from<br /><strong>New Rochelle</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(12, '2021-10-04 13:23:11', '2021-10-04 13:23:11', 'Mount Vernon', 'mv', 'https://foodtiger.mobidonia.com/uploads/settings/daecfb93-677f-43a9-9e7e-4cf109194399_large.jpg', 'Food Delivery from<br /><strong>Mount Vernon</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(13, '2021-10-04 13:23:11', '2021-10-04 13:23:11', 'Schenectady', 'sc', 'https://foodtiger.mobidonia.com/uploads/settings/177686e2-8597-46e0-bf70-daa8d5ff0085_large.jpg', 'Food Delivery from<br /><strong>Schenectady</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(14, '2021-10-04 13:23:11', '2021-10-04 13:23:11', 'Utica', 'ut', 'https://foodtiger.mobidonia.com/uploads/settings/507847c5-1896-4ecf-bfe8-9c5f198ce41e_large.jpg', 'Food Delivery from<br /><strong>Utica</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(15, '2021-10-04 13:23:11', '2021-10-04 13:23:11', 'White Plains', 'wp', 'https://foodtiger.mobidonia.com/uploads/settings/a8e96a74-dc3a-403c-8fd0-b4528838e98c_large.jpg', 'Food Delivery from<br /><strong>White Plains</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(16, '2021-10-04 13:23:11', '2021-10-04 13:23:11', 'Niagara Falls', 'nf', 'https://foodtiger.mobidonia.com/uploads/settings/99d5b4c3-0bb4-428a-96cf-0e510bc3ab57_large.jpg', 'Food Delivery from<br /><strong>Niagara Falls</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `companies`
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
-- Volcado de datos para la tabla `companies`
--

INSERT INTO `companies` (`id`, `created_at`, `updated_at`, `name`, `subdomain`, `logo`, `cover`, `active`, `user_id`, `lat`, `lng`, `address`, `phone`, `minimum`, `description`, `fee`, `static_fee`, `radius`, `is_featured`, `city_id`, `views`, `can_pickup`, `can_deliver`, `self_deliver`, `free_deliver`, `whatsapp_phone`, `fb_username`, `do_covertion`, `currency`, `payment_info`, `mollie_payment_key`, `deleted_at`) VALUES
(1, '2021-10-04 13:23:11', '2021-10-06 15:16:35', 'Leuka Pizza', 'leukapizza', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', '', 1, 2, '40.654509', '-73.948990', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'italian, pasta, pizza', 0.00, 0.00, '[{\"lat\": 40.61811135844185, \"lng\": -74.04154967363282}, {\"lat\": 40.593088644275994, \"lng\": -74.00447081621094}, {\"lat\": 40.57483700944677, \"lng\": -74.01271056230469}, {\"lat\": 40.57222922648421, \"lng\": -73.94816588457032}, {\"lat\": 40.58318123192112, \"lng\": -73.87812804277344}, {\"lat\": 40.620196161732025, \"lng\": -73.89117430742188}, {\"lat\": 40.64520872605633, \"lng\": -73.85340880449219}, {\"lat\": 40.71862893820799, \"lng\": -73.96327208574219}, {\"lat\": 40.680627151592745, \"lng\": -74.01957701738282}, {\"lat\": 40.66552453494284, \"lng\": -74.00447081621094}]', 0, 2, 2, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', '2021-10-06 15:16:35'),
(23, '2022-01-03 19:04:10', '2022-01-07 07:50:26', 'La Gran Pizzería', 'la-gran-pizzeria', '', '8976ab1f-0054-4b9d-98d2-255338f0948b', 1, 41, '0', '0', 'Avenida Francisco de Miranda, Chacao -  Caracas Distrito Capital', '+584143368237', '0', 'Contamos con un ambiente familiar,visítanos y disfruta de la gran variedad de ingredientes disponibles para tus pizzas, además de deliciosos postres.', 0.00, 0.00, '{}', 0, NULL, 11, 0, 0, 0, 0, '+584143368237', NULL, 1, 'USD', '', '', NULL),
(24, '2022-01-26 06:35:23', '2022-01-28 17:14:03', 'La favorita', 'la-favorita', '', '', 1, 42, '0', '0', '', '963961130', '0', '', 0.00, 0.00, '{}', 0, NULL, 3, 1, 1, 0, 0, NULL, NULL, 1, '', '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configs`
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
-- Volcado de datos para la tabla `configs`
--

INSERT INTO `configs` (`id`, `value`, `key`, `model_type`, `model_id`, `created_at`, `updated_at`) VALUES
(1, '0', 'disable_callwaiter', 'App\\Restorant', 17, '2021-10-04 14:41:03', '2021-10-04 14:41:03'),
(2, '10', 'time_to_prepare_order_in_minutes', 'App\\Restorant', 17, '2021-10-04 15:42:28', '2021-10-04 15:42:28'),
(3, '30', 'delivery_interval_in_minutes', 'App\\Restorant', 17, '2021-10-04 15:42:28', '2021-10-04 15:42:28'),
(4, '0', 'disable_callwaiter', 'App\\Restorant', 18, '2021-10-04 19:49:03', '2021-10-04 19:49:03'),
(5, '0', 'disable_callwaiter', 'App\\Restorant', 19, '2021-10-05 10:44:05', '2021-10-05 10:44:05'),
(6, '0', 'disable_callwaiter', 'App\\Restorant', 20, '2021-10-05 10:55:06', '2021-10-05 10:55:06'),
(7, '0', 'time_to_prepare_order_in_minutes', 'App\\Restorant', 18, '2021-10-06 14:05:39', '2021-10-06 14:05:39'),
(8, '30', 'delivery_interval_in_minutes', 'App\\Restorant', 18, '2021-10-06 14:05:39', '2021-10-06 14:05:39'),
(9, '0', 'disable_callwaiter', 'App\\Restorant', 21, '2021-10-06 15:23:12', '2021-10-06 15:23:12'),
(10, '0', 'disable_callwaiter', 'App\\Restorant', 22, '2021-10-06 15:28:59', '2021-10-06 15:28:59'),
(11, 'dfb36fc4-41c2-40b0-adac-4da62376b31a', 'resto_wide_logo', 'App\\Restorant', 17, '2021-10-06 15:53:59', '2021-10-06 15:53:59'),
(12, '439827f2-c55e-49f7-bf63-9544dbd2a488', 'resto_wide_logo_dark', 'App\\Restorant', 17, '2021-10-06 15:53:59', '2021-10-06 15:53:59'),
(13, '1', 'disable_callwaiter', 'App\\Restorant', 23, '2022-01-03 19:04:10', '2022-01-07 01:41:15'),
(14, '0', 'time_to_prepare_order_in_minutes', 'App\\Restorant', 23, '2022-01-07 01:41:15', '2022-01-07 01:41:15'),
(15, '30', 'delivery_interval_in_minutes', 'App\\Restorant', 23, '2022-01-07 01:41:15', '2022-01-07 01:41:15'),
(16, '0', 'disable_callwaiter', 'App\\Restorant', 24, '2022-01-26 06:35:23', '2022-01-26 06:35:23'),
(17, '5a28da9c-f8b6-4e08-a56f-69ab4dbbca39', 'resto_wide_logo', 'App\\Restorant', 23, '2022-01-30 21:09:59', '2022-01-30 21:09:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coupons`
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expenses`
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
-- Volcado de datos para la tabla `expenses`
--

INSERT INTO `expenses` (`id`, `date`, `reference`, `description`, `amount`, `restaurant_id`, `expenses_category_id`, `expenses_vendor_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2021-09-13', 'EXP0', '', 21.00, 1, 2, 3, '2021-10-04 13:23:31', '2021-10-04 13:23:31', NULL),
(2, '2021-09-10', 'EXP1', '', 23.00, 1, 1, 2, '2021-10-04 13:23:31', '2021-10-04 13:23:31', NULL),
(3, '2021-08-20', 'EXP2', '', 14.00, 1, 1, 3, '2021-10-04 13:23:31', '2021-10-04 13:23:31', NULL),
(4, '2021-08-21', 'EXP3', '', 17.00, 1, 2, 3, '2021-10-04 13:23:31', '2021-10-04 13:23:31', NULL),
(5, '2021-08-26', 'EXP4', '', 44.00, 1, 2, 1, '2021-10-04 13:23:31', '2021-10-04 13:23:31', NULL),
(6, '2021-08-14', 'EXP5', '', 36.00, 1, 1, 3, '2021-10-04 13:23:31', '2021-10-04 13:23:31', NULL),
(7, '2021-09-25', 'EXP6', '', 49.00, 1, 1, 2, '2021-10-04 13:23:31', '2021-10-04 13:23:31', NULL),
(8, '2021-08-23', 'EXP7', '', 24.00, 1, 1, 3, '2021-10-04 13:23:31', '2021-10-04 13:23:31', NULL),
(9, '2021-09-27', 'EXP8', '', 12.00, 1, 2, 2, '2021-10-04 13:23:31', '2021-10-04 13:23:31', NULL),
(10, '2021-10-03', 'EXP9', '', 29.00, 1, 2, 3, '2021-10-04 13:23:31', '2021-10-04 13:23:31', NULL),
(11, '2021-08-30', 'EXP10', '', 19.00, 1, 2, 1, '2021-10-04 13:23:31', '2021-10-04 13:23:31', NULL),
(12, '2021-09-29', 'EXP11', '', 36.00, 1, 2, 2, '2021-10-04 13:23:31', '2021-10-04 13:23:31', NULL),
(13, '2021-08-09', 'EXP12', '', 37.00, 1, 1, 1, '2021-10-04 13:23:31', '2021-10-04 13:23:31', NULL),
(14, '2021-08-20', 'EXP13', '', 15.00, 1, 2, 2, '2021-10-04 13:23:31', '2021-10-04 13:23:31', NULL),
(15, '2021-09-18', 'EXP14', '', 18.00, 1, 2, 2, '2021-10-04 13:23:31', '2021-10-04 13:23:31', NULL),
(16, '2021-09-02', 'EXP15', '', 28.00, 1, 2, 3, '2021-10-04 13:23:31', '2021-10-04 13:23:31', NULL),
(17, '2021-08-05', 'EXP16', '', 50.00, 1, 1, 1, '2021-10-04 13:23:31', '2021-10-04 13:23:31', NULL),
(18, '2021-08-22', 'EXP17', '', 13.00, 1, 1, 2, '2021-10-04 13:23:31', '2021-10-04 13:23:31', NULL),
(19, '2021-08-15', 'EXP18', '', 32.00, 1, 2, 1, '2021-10-04 13:23:31', '2021-10-04 13:23:31', NULL),
(20, '2021-09-02', 'EXP19', '', 40.00, 1, 2, 3, '2021-10-04 13:23:31', '2021-10-04 13:23:31', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expenses_category`
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
-- Volcado de datos para la tabla `expenses_category`
--

INSERT INTO `expenses_category` (`id`, `name`, `code`, `restaurant_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Suppliers', 'C1', 1, NULL, NULL, NULL),
(2, 'Utilities', 'C2', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expenses_vendor`
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
-- Volcado de datos para la tabla `expenses_vendor`
--

INSERT INTO `expenses_vendor` (`id`, `name`, `code`, `restaurant_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Supplier 1', 'S1', 1, NULL, NULL, NULL),
(2, 'Supplier 2', 'S2', 1, NULL, NULL, NULL),
(3, 'Supplier 3', 'S3', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `extras`
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
-- Volcado de datos para la tabla `extras`
--

INSERT INTO `extras` (`id`, `item_id`, `price`, `name`, `created_at`, `updated_at`, `deleted_at`, `extra_for_all_variants`) VALUES
(497, 356, 2.00, 'Jamon', '2022-01-07 02:01:04', '2022-01-07 02:01:04', NULL, 1),
(498, 356, 1.00, 'Maíz', '2022-01-07 02:01:21', '2022-01-07 02:01:21', NULL, 1),
(499, 356, 2.00, 'Anchoas', '2022-01-07 02:01:37', '2022-01-07 02:01:37', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hours`
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
-- Volcado de datos para la tabla `hours`
--

INSERT INTO `hours` (`id`, `created_at`, `updated_at`, `0_from`, `0_to`, `1_from`, `1_to`, `2_from`, `2_to`, `3_from`, `3_to`, `4_from`, `4_to`, `5_from`, `5_to`, `6_from`, `6_to`, `restorant_id`) VALUES
(23, '2022-01-03 19:04:10', '2022-01-03 19:04:10', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', 23),
(24, '2022-01-26 06:35:23', '2022-01-26 06:35:23', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', '9:00 AM', '5:00 AM', 24);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
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
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `image`, `price`, `category_id`, `created_at`, `updated_at`, `available`, `has_variants`, `vat`, `deleted_at`, `enable_system_variants`) VALUES
(353, 'Pizza 4 Quesos', 'Deliciosa Pizza 4 Quesos, con corteza crujiente y especias frescas', 'e7ca82c7-7363-4d5f-9733-a92dcd134893', 10.00, 76, '2022-01-03 22:08:31', '2022-01-03 22:08:31', 1, 0, NULL, NULL, 0),
(354, 'Refresco CocaCola', 'Refresco CocaCola - En botella', '14d1f8d0-abc7-4aab-ae85-66a36af5493e', 2.00, 77, '2022-01-07 01:43:35', '2022-01-07 01:43:35', 1, 0, NULL, NULL, 0),
(355, 'Pastel de Chocolate', 'Delicioso pastel de chocolate', '8866e385-af84-40f5-8dc6-46f5bb96fcf7', 5.00, 78, '2022-01-07 01:51:09', '2022-01-07 01:51:09', 1, 0, NULL, NULL, 0),
(356, 'Pizza Margarita a leña', 'Pizza margarita extra crujiente', '3f87dca8-efa2-40d8-ac65-6a9256cf4b14', 6.00, 76, '2022-01-07 01:53:20', '2022-01-07 01:59:06', 1, 0, NULL, NULL, 0),
(357, 'Pizza Charcutera', 'Pizza crujiente con Jamon,pepperoni y tocineta', 'e49ed9bc-f345-4d6e-8ead-acc74fef2748', 10.00, 76, '2022-01-07 01:56:10', '2022-01-07 01:56:10', 1, 0, NULL, NULL, 0),
(358, 'Pizza Primavera', 'Corteza crujientey vegetales frescos la caracterizan', 'f9cf0f98-6719-47a8-9371-0eb9e2af404f', 8.00, 76, '2022-01-07 02:00:36', '2022-01-07 02:00:36', 1, 0, NULL, NULL, 0),
(359, 'Cerveza Pilsner', 'Jarra de Cerveza', '4c246d8e-2d8f-4ec3-a0b2-1f3bebdff367', 3.00, 77, '2022-01-07 02:05:53', '2022-01-07 02:05:53', 1, 0, NULL, NULL, 0),
(360, 'Delicia de Fresa', 'Mousse de Fresa', '8ae6ea53-792e-4c74-9f99-577bb9c05b91', 6.00, 78, '2022-01-07 02:06:55', '2022-01-07 02:06:55', 1, 0, NULL, NULL, 0),
(361, 'Parfait', 'Parfait de Frutos Rojos', '1d01e2d6-be8d-41da-a364-9b3152e53071', 6.00, 78, '2022-01-07 02:09:01', '2022-01-07 02:09:01', 1, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `languages`
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
-- Estructura de tabla para la tabla `localmenus`
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
-- Volcado de datos para la tabla `localmenus`
--

INSERT INTO `localmenus` (`id`, `created_at`, `updated_at`, `restaurant_id`, `language`, `languageName`, `default`) VALUES
(1, '2021-10-06 15:59:16', '2021-10-06 15:59:16', 17, 'es', 'Spanish', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
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
(85, '2021_09_04_091444_cat_sd', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2),
(2, 'App\\User', 35),
(2, 'App\\User', 36),
(2, 'App\\User', 37),
(2, 'App\\User', 38),
(2, 'App\\User', 39),
(2, 'App\\User', 40),
(2, 'App\\User', 41),
(2, 'App\\User', 42),
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
(5, 'App\\User', 34);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `options`
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
-- Volcado de datos para la tabla `options`
--

INSERT INTO `options` (`id`, `item_id`, `name`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 7, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL),
(2, 7, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL),
(3, 8, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL),
(4, 8, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL),
(5, 9, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL),
(6, 9, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL),
(7, 10, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL),
(8, 10, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL),
(9, 11, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL),
(10, 11, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL),
(11, 12, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL),
(12, 12, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL),
(13, 13, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL),
(14, 13, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL),
(15, 14, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL),
(16, 14, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL),
(17, 15, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL),
(18, 15, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL),
(19, 16, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL),
(20, 16, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL),
(21, 17, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL),
(22, 17, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL),
(23, 67, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL),
(24, 67, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL),
(25, 68, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL),
(26, 68, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL),
(27, 69, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL),
(28, 69, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL),
(29, 70, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL),
(30, 70, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL),
(31, 71, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL),
(32, 71, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL),
(33, 72, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL),
(34, 72, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL),
(35, 73, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL),
(36, 73, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL),
(37, 74, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL),
(38, 74, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL),
(39, 75, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL),
(40, 75, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL),
(41, 76, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL),
(42, 76, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL),
(43, 77, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL),
(44, 77, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL),
(45, 101, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL),
(46, 101, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL),
(47, 102, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL),
(48, 102, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL),
(49, 103, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL),
(50, 103, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL),
(51, 104, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL),
(52, 104, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL),
(53, 105, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL),
(54, 105, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL),
(55, 106, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL),
(56, 106, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL),
(57, 107, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL),
(58, 107, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL),
(59, 108, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL),
(60, 108, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL),
(61, 109, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL),
(62, 109, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL),
(63, 110, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL),
(64, 110, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL),
(65, 111, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL),
(66, 111, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL),
(67, 150, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:19', '2021-10-04 13:23:19', NULL),
(68, 150, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:19', '2021-10-04 13:23:19', NULL),
(69, 151, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL),
(70, 151, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL),
(71, 152, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL),
(72, 152, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL),
(73, 153, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL),
(74, 153, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL),
(75, 154, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL),
(76, 154, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL),
(77, 155, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL),
(78, 155, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL),
(79, 156, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL),
(80, 156, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL),
(81, 157, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL),
(82, 157, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL),
(83, 158, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL),
(84, 158, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL),
(85, 159, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL),
(86, 159, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL),
(87, 160, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL),
(88, 160, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL),
(89, 174, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL),
(90, 174, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL),
(91, 175, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL),
(92, 175, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL),
(93, 176, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL),
(94, 176, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL),
(95, 177, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL),
(96, 177, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL),
(97, 178, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL),
(98, 178, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL),
(99, 179, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL),
(100, 179, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL),
(101, 180, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL),
(102, 180, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL),
(103, 181, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL),
(104, 181, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL),
(105, 182, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL),
(106, 182, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL),
(107, 183, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL),
(108, 183, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL),
(109, 184, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL),
(110, 184, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL),
(111, 231, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:24', '2021-10-04 13:23:24', NULL),
(112, 231, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:24', '2021-10-04 13:23:24', NULL),
(113, 232, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:24', '2021-10-04 13:23:24', NULL),
(114, 232, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:24', '2021-10-04 13:23:24', NULL),
(115, 233, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL),
(116, 233, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL),
(117, 234, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL),
(118, 234, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL),
(119, 235, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL),
(120, 235, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL),
(121, 236, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL),
(122, 236, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL),
(123, 237, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL),
(124, 237, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL),
(125, 238, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL),
(126, 238, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL),
(127, 239, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL),
(128, 239, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL),
(129, 240, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL),
(130, 240, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL),
(131, 241, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL),
(132, 241, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL),
(133, 265, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL),
(134, 265, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL),
(135, 266, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL),
(136, 266, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL),
(137, 267, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL),
(138, 267, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL),
(139, 268, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL),
(140, 268, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL),
(141, 269, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL),
(142, 269, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL),
(143, 270, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL),
(144, 270, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL),
(145, 271, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL),
(146, 271, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL),
(147, 272, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL),
(148, 272, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL),
(149, 273, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL),
(150, 273, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL),
(151, 274, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL),
(152, 274, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL),
(153, 275, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL),
(154, 275, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL),
(155, 320, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL),
(156, 320, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL),
(157, 321, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL),
(158, 321, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL),
(159, 322, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL),
(160, 322, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL),
(161, 323, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL),
(162, 323, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL),
(163, 324, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL),
(164, 324, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL),
(165, 325, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL),
(166, 325, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL),
(167, 326, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL),
(168, 326, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL),
(169, 327, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL),
(170, 327, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL),
(171, 328, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL),
(172, 328, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL),
(173, 329, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL),
(174, 329, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL),
(175, 330, 'Size', 'Small,Medium,Large,Family', '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL),
(176, 330, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `restorant_id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_price` double(8,2) NOT NULL,
  `order_price` double(8,2) NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `md` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_has_items`
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_has_status`
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
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
-- Volcado de datos para la tabla `pages`
--

INSERT INTO `pages` (`id`, `created_at`, `updated_at`, `title`, `content`, `showAsLink`) VALUES
(1, '2021-10-04 13:23:11', '2021-10-04 13:23:11', 'Términos y Condiciones', '<p><strong>foodtiger website Terms of Use</strong><br />\n                            <br />\n                            These Terms of Use govern your use of the foodtiger website and, unless otherwise stated, to your use of any other website or mobile application owned or operated by foodtiger Bulgaria or operated on behalf of foodtiger (collectively the &ldquo;Websites&rdquo;). Please read these Terms of Use carefully before using the Websites.<br />\n                            <br />\n                            <strong>Agreement to Terms</strong><br />\n                            <br />\n                            By using the Websites, you agree to these Terms of Use and the foodtiger General Online Privacy Policy (for visitors who are eighteen years of age or over) or the foodtiger Children&rsquo;s Online Privacy Policy (for visitors who are under eighteen (18) years of age) which are incorporated herein by reference. Each time you use the Websites, you reaffirm your acceptance of the then-current Terms of Use. If you do not wish to be bound by these Terms of Use, your only remedy is to discontinue using the Websites.<br />\n                            <br />\n                            foodtiger may change these Terms of Use at any time and in its sole discretion. The modified Terms of Use will be effective immediately upon posting and you agree to the new posted Terms of Use by continuing your use of the Websites. You are responsible for staying informed of any changes. If you do not agree with the modified Terms of Use, your only remedy is to discontinue using the Websites.<br />\n                            <br />\n                            <strong>Accounts</strong><br />\n                            <br />\n                            You may be required to create an account and specify a password to use certain features on the Websites. You agree to provide, maintain and update true, accurate, current and complete information about yourself as prompted by the registration processes. You may not impersonate any person or entity or misrepresent your identity or affiliation with any person or entity, including using another person&rsquo;s username, password, or other account information.<br />\n                            <br />\n                            You are entirely responsible for maintaining the confidentiality of your password and your account. And you are entirely responsible for all activity made by you or anyone that uses your account. You agree to safeguard your password from access by others. If you believe that your account has been compromised, you must immediately contact us by mail at:&nbsp;support@foodtiger.com or send a message to our live-chat service. You agree to indemnify and hold harmless foodtiger for losses incurred by foodtiger or another party due to someone else using your account as a result of your failure to use reasonable care to safeguard your password.<br />\n                            <br />\n                            <strong>Cancellation</strong><br />\n                            <br />\n                            You have the right to cancel your order up to five minutes after your order is placed on the foodtiger platform. After this point, the restaurant would have started to prepare the food and therefore no refunds would be possible. For the avoidance of doubt, timing will be assessed based on the point you place your call with our call-center, or send a message to our live-chat service. In the event of a cash-on-delivery order, your order will be delivered as instructed and cash must be collected by the rider. In the event that a customer refuses to pay the cash to our rider, foodtiger reserves the right to limit his/her future cash payments.<br />\n                            <br />\n                            <strong>Content Posted by Other Users</strong><br />\n                            <br />\n                            foodtiger is not responsible for, and does not endorse, Content in any posting made by other users on the Websites. Under no circumstances shall foodtiger be held liable, directly or indirectly, for any loss or damage caused or alleged to have been caused to you in connection with any Content posted by a third party on the Websites. If you become aware of misuse of the Websites by any person, please contact foodtiger by mail at:&nbsp;support@foodtiger.com or send a message to our live-chat service.<br />\n                            <br />\n                            If you feel threatened or believe someone else is in danger, you should contact the local law enforcement agency immediately.<br />\n                            <br />\n                            <br />\n                            <strong>Activities Prohibited on the Websites</strong><br />\n                            <br />\n                            The following is a partial list of the kinds of conduct that are illegal or prohibited on the Websites. foodtiger reserves the right to investigate and take appropriate legal action against anyone who, in foodtiger sole discretion, engages in any of the prohibited activities. Prohibited activities include &mdash; but are not limited to &mdash; the following:<br />\n                            <br />\n                            - Using the Websites for any purpose in violation of local, state, or federal laws or regulations;<br />\n                            - Posting Content that infringes the intellectual property rights, privacy rights, publicity rights, trade secret rights, or any other rights of any party;<br />\n                            - Posting Content that is unlawful, obscene, defamatory, threatening, harassing, abusive, slanderous, hateful, or embarrassing to any other person or entity as determined by foodtiger in its sole discretion or pursuant to local community standards;<br />\n                            - Posting Content that constitutes cyber-bullying, as determined by foodtiger in its sole discretion;<br />\n                            - Posting Content that depicts any dangerous, life-threatening, or otherwise risky behavior;<br />\n                            - Posting telephone numbers, street addresses, or last names of any person;<br />\n                            - Posting URLs to external websites or any form of HTML or programming code;<br />\n                            - Posting anything that may be &ldquo;spam,&rdquo; as determined by foodtiger in its sole discretion;<br />\n                            - Impersonating another person when posting Content;<br />\n                            - Harvesting or otherwise collecting information about others, including e-mail addresses, without their consent;<br />\n                            - Allowing any other person or entity to use your identification for posting or viewing comments;<br />\n                            - Harassing, threatening, stalking, or abusing any person;<br />\n                            - Engaging in any other conduct that restricts or inhibits any other person from using or enjoying the Websites, or which, in the sole discretion of foodtiger, exposes foodtiger or any of its customers, suppliers, or any other parties to any liability or detriment of any type; or<br />\n                            - Encouraging other people to engage in any prohibited activities as described herein.<br />\n                            foodtiger reserves the right -- but is not obligated -- to do any or all of the following:<br />\n                            <br />\n                            - Investigate an allegation that any Content posted on the Websites does not conform to these Terms of Use and determine in its sole discretion to remove or request the removal of the Content;<br />\n                            - Remove Content which is abusive, illegal, or disruptive, or that otherwise fails to conform with these Terms of Use;<br />\n                            - Terminate a user&rsquo;s access to the Websites upon any breach of these Terms of Use;<br />\n                            - Monitor, edit, or disclose any Content on the Websites; and<br />\n                            - Edit or delete any Content posted on the Websites, regardless of whether such Content violates these standards.<br />\n                            - foodtiger Trademarks and Copyrights<br />\n                            <br />\n                            All trademarks, logos, and service marks displayed on the Website are registered and unregistered Trademarks of foodtiger and/or third parties who have authorized their use (collectively the &ldquo;Trademarks&rdquo;)<br />\n                            <br />\n                            You may not use, copy, reproduce, republish, upload, post, transmit, distribute, or modify these Trademarks in any way. The use of foodtiger&#39;s trademarks on any other website is strictly prohibited. All of the materials contained on the Websites are copyrighted except where explicitly noted otherwise. foodtiger will aggressively enforce its intellectual property rights to the fullest extent of the law, including the seeking of criminal prosecution. foodtiger neither warrants nor represents that your use of materials displayed on the Websites will not infringe rights of third parties not owned by or affiliated with foodtiger. Use of any materials on the Websites is at your own risk.<br />\n                            <br />\n                            <strong>Hyperlinks</strong><br />\n                            <br />\n                            This Websites may contain hyperlinks to third-party websites. foodtiger does not control or endorse these third-party websites or any goods or services sold on those websites. Some of these websites may contain materials that are objectionable, unlawful, or inaccurate. You acknowledge and agree that foodtiger is not responsible or liable for any Content or other materials on these third party websites.<br />\n                            <br />\n                            <strong>Governing Law and Severability</strong><br />\n                            <br />\n                            These Terms of Use shall be governed by and construed in accordance with the laws of Bulgaria, without regard to its conflict of laws rules. You expressly agree that the exclusive jurisdiction for any claim or dispute under the Terms of Use and or your use of the Websites resides in the courts of Bulgaria, and you further expressly agree to submit to the personal jurisdiction of such courts for the purpose of litigating any such claim or action.<br />\n                            <br />\n                            If any provision of these Terms of Use is found to be invalid by any court having competent jurisdiction, the invalidity of such provision shall not affect the validity of the remaining provisions of these Terms of Use, which shall remain in full force and effect. No waiver of any provision in these Terms of Use shall be deemed a further or continuing waiver of such provision or any other provision.<br />\n                            <br />\n                            <strong>Payment</strong><br />\n                            <br />\n                            Payments are processed by Emerging Markets Online Food Delivery S.&agrave; r.l., a limited liability company (soci&eacute;t&eacute; &agrave; responsabilit&eacute; limit&eacute;e) incorporated and existing under the laws of the Grand Duchy of Luxembourg, which is the ultimate holding of the local company in Bulgaria. Cross-border subrcharges may be applicable.<br />\n                            The end customer can choose between different payment methods provided on the platforms, which are currently the following: [credit card and immediate transfer.] The provider reserves the right to provide other payment methods or to no longer offer certain payment methods. The end customer bindingly chooses the payment method when placing the respective order. Provided that the end customer chooses an online payment method, the payment might be processed by an external payment provider cooperating with the provider. Card data will in this case be stored for future orders by the payment provider, on the condition that the end customer chooses the respective storage of such and hereby gives consent to it. Due to the COVID-19 emergency in the Republic of Bulgaria, all orders paid online will be delivered without physical contact.<br />\n                            <br />\n                            <strong>Warranties</strong><br />\n                            <br />\n                            The Websites and the Content are provided on an &ldquo;as is&rdquo; basis. To the fullest extent permitted by law, foodtiger, its parent, subsidiaries, and affiliates (the foodtiger entities), and each of their agents, representatives and service providers, disclaim all warranties, either expressed or implied, statutory or otherwise, including but not limited to the implied warranties of merchantibility, non-infringement of third parties rights, and fitness for particular purpose. Applicable law may not allow the exclusion of implied warranties, so the above exclusion may not apply to you. The foodtiger Entities, their agents, representatives and service providers cannot and do not guarantee or warrant that: (a) the Websites will be reliable, accurate, complete, or updated on a timely basis; (b) the Websites will be free of human and machine errors, omissions, delays, interruptions or losses, including loss of data; (c) any files available for downloading from the Websites will be free of infection by viruses, worms, Trojan horses, or other codes that manifest contaminating or destructive properties; (d) any Content you post on the Websites will remain on the Websites; or (e) the functions or services performed on the Websites will be uninterrupted or error-free or that defects in the Websites will be corrected.<br />\n                            <br />\n                            <strong>Limitation of Liability</strong><br />\n                            <br />\n                            The foodtiger entities, their agents, representatives, and service providers, entire liability and your exclusive remedy with respect to your use of the websites is to discontinue your use of the websites. The foodtiger entities, their agents, representatives, and service providers shall not be liable for any indirect, special, incidental, consequential, or exemplary damages arising from your use of the websites or for any other claim related in any way to your use of the websites. These exclusions for indirect, special, consequential, and exemplary damages include, without limitation, damages for lost profits, lost data, loss of goodwill, work stoppage, work stoppage, computer failure, or malfunction, or any other commercial damages or losses, even if the foodtiger entities, their agents, representatives, and service providers have been advised of the possibility thereof and regardless of the legal or equitable theory upon which the claim is based. Because some states or jurisdictions do not allow the exclusion or the limitation of liability for consequential or incidental damages, in such states or jurisdictions, the foodtiger entities, their agents, representatives and service providers&#39; liability shall be limited to the extent permitted by law.<br />\n                            <br />\n                            <strong>Termination</strong><br />\n                            <br />\n                            foodtiger has the right to terminate your account and access to the Websites for any reason, including, without limitation, if foodtiger, in its sole discretion, considers your use to be unacceptable, or in the event of any breach by you of the Terms of Use. foodtiger may, but shall be under no obligation to, provide you a warning prior to termination of your use of the Websites.<br />\n                            <br />\n                            <strong>Vouchers</strong><br />\n                            <br />\n                            Unless otherwise stated,<br />\n                            <br />\n                            - Vouchers are only applicable to food orders, excluding delivery fees and containers<br />\n                            - Valid only for online payment<br />\n                            - foodtiger reserves the right to cancel orders and accounts if fraud activities are detected<br />\n                            - foodtiger reserves the right to stop this voucher to be used on certain restaurants without prior notice<br />\n                            - Individual restaurants terms &amp; conditions apply<br />\n                            <br />\n                            <strong>Contact Us</strong><br />\n                            <br />\n                            Questions? Comments? Please send an email to us at&nbsp;contact@foodtiger.com<br />\n                            <br />\n                            &copy; 2020 foodtiger. All rights reserved.</p>', 1),
(2, '2021-10-04 13:23:11', '2021-10-04 13:23:11', 'Como Funciona', '<p>foodtiger is simple and easy way to order food online. Enjoy the variety of choices and cuisines which could be delivered to your home or office.</p>\n\n                        <p>&nbsp;</p>\n\n                        <p><strong>Here is how foodtiger works:</strong><br />\n                        &nbsp;</p>\n\n                        <p>&nbsp;</p>\n\n                        <p><strong>Find a restaurant:</strong></p>\n\n                        <p>Enter you address or choose from the map on the front page to set your location. Take a review on the restaurants which deliver to your address. Choose a restaurant and dive in its tasty menu.</p>\n\n                        <p>&nbsp;</p>\n\n                        <p><strong>Choose a dish:</strong></p>\n\n                        <p>Choose from the displayed dishes. If there is an option to add products or sauce, for pizza for example, you will be asked for your choice right after you click on the dish. Your order will be dispayed on the right side of the page.</p>\n\n                        <p>&nbsp;</p>\n\n                        <p><strong>Finish your order and choose type of payment:</strong></p>\n\n                        <p>When you complete the order with delicious food, click &quot;Buy&quot;. Now you only have to write your address and choose type of payment as you follow the instructions on the page.</p>\n\n                        <p>&nbsp;</p>\n\n                        <p><strong>Delivery:</strong></p>\n\n                        <p>You will receive SMS as confirmation for your order and information about the delivery time and.....</p>\n\n                        <p>That&#39;s all!</p>\n\n                        <p>&nbsp;</p>', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('lieny2704@gmail.com', '$2y$10$3o6vLTCLdqMKlPq4uqxDMePQoviQglgA8CgAu3llvEweaBc.uQfUW', '2022-01-29 05:23:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paths`
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
-- Estructura de tabla para la tabla `payments`
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
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage restorants', 'web', '2021-10-04 13:23:11', '2021-10-04 13:23:11'),
(2, 'manage drivers', 'web', '2021-10-04 13:23:11', '2021-10-04 13:23:11'),
(3, 'manage orders', 'web', '2021-10-04 13:23:11', '2021-10-04 13:23:11'),
(4, 'edit settings', 'web', '2021-10-04 13:23:11', '2021-10-04 13:23:11'),
(5, 'view orders', 'web', '2021-10-04 13:23:11', '2021-10-04 13:23:11'),
(6, 'edit restorant', 'web', '2021-10-04 13:23:11', '2021-10-04 13:23:11'),
(7, 'edit orders', 'web', '2021-10-04 13:23:11', '2021-10-04 13:23:11'),
(8, 'access backedn', 'web', '2021-10-04 13:23:11', '2021-10-04 13:23:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan`
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
-- Volcado de datos para la tabla `plan`
--

INSERT INTO `plan` (`id`, `name`, `limit_items`, `limit_orders`, `price`, `period`, `paddle_id`, `created_at`, `updated_at`, `deleted_at`, `description`, `features`, `limit_views`, `enable_ordering`, `stripe_id`, `paypal_id`, `mollie_id`, `paystack_id`) VALUES
(1, 'Básico', 30, 0, 0.00, 1, '', '2021-10-04 13:23:31', '2022-01-07 00:43:55', NULL, 'Tienes un pequeño restaurante, o simplemente necesita lo básico, este plan es excelente para tí.', 'Total acceso a la herramienta QR, Acceso a la creación de página web, Acceso a la herramienta de creación de menú online, Vistas ilimitadas, Máximo 30 elementos en el menú.', 0, 2, '', '', NULL, NULL),
(2, 'Pro', 0, 300, 8.00, 1, '', '2021-10-04 13:23:31', '2022-01-07 00:43:14', NULL, 'Está pensado para restaurantes y bares más grandes. Puede ofrecer un menú completo.', 'Total acceso a la herramienta QR,  Acceso a la  creación de página web,  Acceso a la herramienta de creación de menú online,  Vistas ilimitadas,  Elementos ilimitados en el menú, Máximo 300 pedidos por mes', 0, 1, '', 'P-83U81438HC804800CMBXRF2A', NULL, NULL),
(3, 'Premium', 0, 0, 20.00, 1, '', '2021-10-04 13:23:31', '2022-01-07 00:55:25', NULL, 'Con este plan puede aceptar pedidos realizados directamente desde el teléfono móvil de su cliente.', 'Aceptar Ordenes, Administrar ordenes, Total acceso a la herramienta QR,  Acceso a la  creación de página web,  Acceso a la herramienta de creación de menú online,  Vistas ilimitadas,  Elementos ilimitados en el menú, Número ilimitado de pedidos por mes', 0, 1, '', 'P-2D404523UB711783MMBXRKHQ', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
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
-- Estructura de tabla para la tabla `ratings`
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
-- Estructura de tabla para la tabla `restoareas`
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
-- Volcado de datos para la tabla `restoareas`
--

INSERT INTO `restoareas` (`id`, `name`, `restaurant_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Inside', 1, NULL, NULL, NULL),
(2, 'Terrasse', 1, NULL, NULL, NULL),
(36, 'Terraza', 23, '2022-01-03 19:38:21', '2022-01-03 19:38:21', NULL),
(37, 'Interior', 23, '2022-01-03 19:38:40', '2022-01-03 19:38:40', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2021-10-04 13:23:11', '2021-10-04 13:23:11'),
(2, 'owner', 'web', '2021-10-04 13:23:11', '2021-10-04 13:23:11'),
(3, 'driver', 'web', '2021-10-04 13:23:11', '2021-10-04 13:23:11'),
(4, 'client', 'web', '2021-10-04 13:23:11', '2021-10-04 13:23:11'),
(5, 'staff', 'web', '2021-10-04 13:23:11', '2021-10-04 13:23:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 2),
(6, 2),
(7, 3),
(8, 1),
(8, 2),
(8, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
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
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `created_at`, `updated_at`, `site_name`, `site_logo`, `search`, `restorant_details_image`, `restorant_details_cover_image`, `description`, `header_title`, `header_subtitle`, `currency`, `facebook`, `instagram`, `playstore`, `appstore`, `maps_api_key`, `delivery`, `typeform`, `mobile_info_title`, `mobile_info_subtitle`, `order_options`, `site_logo_dark`, `order_fields`) VALUES
(1, '2021-10-04 13:23:11', '2022-02-04 04:07:31', 'Menú Digital', '11373ac9-fd61-4696-bc94-debecbd04f67', '/default/cover.jpg', '6e0c745c-3a8e-44cb-b947-1069118fb526', '/default/cover.jpg', 'El menú digital que tu restaurante necesita', '', '', 'USD', '', '', '', '', 'AIzaSyCZhq0g1x1ttXPa1QB3ylcDQPTAzp_KUgA', 0.00, '', '', '', '{}', '4794f608-8772-44c4-b0e6-9eddda52185f', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `simple_delivery_areas`
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
-- Volcado de datos para la tabla `simple_delivery_areas`
--

INSERT INTO `simple_delivery_areas` (`id`, `name`, `cost`, `restaurant_id`, `created_at`, `updated_at`) VALUES
(1, 'Nearby', 10.00, 1, NULL, NULL),
(2, 'Faraway', 15.00, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sms_verifications`
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
-- Estructura de tabla para la tabla `status`
--

CREATE TABLE `status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `status`
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
-- Estructura de tabla para la tabla `subscriptions`
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
-- Estructura de tabla para la tabla `subscription_items`
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
-- Estructura de tabla para la tabla `tables`
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
-- Volcado de datos para la tabla `tables`
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
(244, 'Mesa 1', 4, 37, 23, '2022-01-03 19:57:04', '2022-01-03 19:57:04', NULL, NULL, NULL, NULL, NULL, 'no'),
(245, 'Mesa 2', 4, 37, 23, '2022-01-03 19:57:28', '2022-01-03 19:57:28', NULL, NULL, NULL, NULL, NULL, 'no'),
(246, 'Mesa 3', 6, 37, 23, '2022-01-03 19:57:54', '2022-01-03 19:57:54', NULL, NULL, NULL, NULL, NULL, 'no'),
(247, 'Mesa 4', 4, 36, 23, '2022-01-03 19:58:12', '2022-01-03 19:58:12', NULL, NULL, NULL, NULL, NULL, 'no'),
(248, 'Mesa 5', 2, 36, 23, '2022-01-03 19:58:35', '2022-01-03 19:58:35', NULL, NULL, NULL, NULL, NULL, 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translations`
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
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `google_id` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_id` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `google_id`, `fb_id`, `name`, `email`, `email_verified_at`, `password`, `api_token`, `phone`, `remember_token`, `created_at`, `updated_at`, `active`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `verification_code`, `phone_verified_at`, `plan_id`, `plan_status`, `cancel_url`, `update_url`, `checkout_id`, `subscription_plan_id`, `stripe_account`, `birth_date`, `lat`, `lng`, `working`, `onorder`, `numorders`, `rejectedorders`, `paypal_subscribtion_id`, `mollie_customer_id`, `mollie_mandate_id`, `tax_percentage`, `extra_billing_information`, `mollie_subscribtion_id`, `paystack_subscribtion_id`, `paystack_trans_id`, `restaurant_id`, `deleted_at`) VALUES
(1, NULL, NULL, 'Admin Admin', 'info@thefush.com', '2021-10-04 13:23:11', '$2y$10$S4p.dA81atcSp399p5/l0.7yeAkapBSLV0WpmsGlnIjBBWpErmawK', 'RxEAqtWHJj2oVVQk8Aoce1RWPyRNrFpbUrVaVVHmpw43XrccQtxJ30fdSwTvATnUJ5P4ttBIgYfSsgCw', '', NULL, '2021-10-04 13:23:11', '2021-10-04 13:23:11', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(41, NULL, NULL, 'Demo Restaurante', 'lieny2704@gmail.com', NULL, '$2y$10$EEKpCHtieFbZxx7y7LOK0e9dGRQIDBcQw4waqIy91xCMv/4ZjUdaq', 'NevO7IaysumgHEe3edGxYWv7CxBMG2bwAUrT5bvO76ok80Fmq795Pwd0X7MmmXDZ9wPMoHurrnWAwE4w', '+584143368237', 'bmJd8o1GbeHLU568sx3BicEoRcxA6V4G6cpqB9Gpa6TAsT47faRdpSJYWZD6', '2022-01-03 19:04:10', '2022-01-30 20:21:11', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(42, NULL, NULL, 'Barbara', 'alvaroltr64@gmail.com', NULL, '$2y$10$i4TOhTyKPblqG4CcdqVy6epTBjeAe4CHq1tnQMc2qrpuf6V9ZhBci', 'jqsYUGNQ5XKiHycvyd18QqOH9mlaNDNSv4SJlLQk7iTvWgizfOUjgAT7nscOYJLjsYVXmxAf80OOVxAY', '963961130', 'GE0osBQzDwuiriMPx24e1WoWTe234PpLqGzJHFPayQmpmQpF1wUBJ2vPN8h8', '2022-01-26 06:35:23', '2022-01-28 17:21:50', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `variants`
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
-- Volcado de datos para la tabla `variants`
--

INSERT INTO `variants` (`id`, `price`, `options`, `image`, `qty`, `enable_qty`, `order`, `item_id`, `created_at`, `updated_at`, `deleted_at`, `is_system`) VALUES
(1, 10.99, '{\"1\":\"small\",\"2\":\"hand-tosset\"}', '', 0, 0, 0, 7, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(2, 11.99, '{\"1\":\"small\",\"2\":\"thin-crust\"}', '', 0, 0, 0, 7, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(3, 12.99, '{\"1\":\"small\",\"2\":\"double-decker\"}', '', 0, 0, 0, 7, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(4, 13.99, '{\"1\":\"medium\",\"2\":\"hand-tosset\"}', '', 0, 0, 0, 7, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(5, 14.99, '{\"1\":\"medium\",\"2\":\"thin-crust\"}', '', 0, 0, 0, 7, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(6, 15.99, '{\"1\":\"medium\",\"2\":\"double-decker\"}', '', 0, 0, 0, 7, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(7, 16.99, '{\"1\":\"large\",\"2\":\"hand-tosset\"}', '', 0, 0, 0, 7, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(8, 17.99, '{\"1\":\"large\",\"2\":\"thin-crust\"}', '', 0, 0, 0, 7, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(9, 18.99, '{\"1\":\"large\",\"2\":\"double-decker\"}', '', 0, 0, 0, 7, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(10, 19.99, '{\"1\":\"family\",\"2\":\"hand-tosset\"}', '', 0, 0, 0, 7, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(11, 20.99, '{\"1\":\"family\",\"2\":\"thin-crust\"}', '', 0, 0, 0, 7, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(12, 21.99, '{\"1\":\"family\",\"2\":\"double-decker\"}', '', 0, 0, 0, 7, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(13, 14.99, '{\"3\":\"small\",\"4\":\"hand-tosset\"}', '', 0, 0, 0, 8, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(14, 15.99, '{\"3\":\"small\",\"4\":\"thin-crust\"}', '', 0, 0, 0, 8, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(15, 16.99, '{\"3\":\"small\",\"4\":\"double-decker\"}', '', 0, 0, 0, 8, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(16, 17.99, '{\"3\":\"medium\",\"4\":\"hand-tosset\"}', '', 0, 0, 0, 8, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(17, 18.99, '{\"3\":\"medium\",\"4\":\"thin-crust\"}', '', 0, 0, 0, 8, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(18, 19.99, '{\"3\":\"medium\",\"4\":\"double-decker\"}', '', 0, 0, 0, 8, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(19, 20.99, '{\"3\":\"large\",\"4\":\"hand-tosset\"}', '', 0, 0, 0, 8, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(20, 21.99, '{\"3\":\"large\",\"4\":\"thin-crust\"}', '', 0, 0, 0, 8, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(21, 22.99, '{\"3\":\"large\",\"4\":\"double-decker\"}', '', 0, 0, 0, 8, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(22, 23.99, '{\"3\":\"family\",\"4\":\"hand-tosset\"}', '', 0, 0, 0, 8, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(23, 24.99, '{\"3\":\"family\",\"4\":\"thin-crust\"}', '', 0, 0, 0, 8, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(24, 25.99, '{\"3\":\"family\",\"4\":\"double-decker\"}', '', 0, 0, 0, 8, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(25, 14.99, '{\"5\":\"small\",\"6\":\"hand-tosset\"}', '', 0, 0, 0, 9, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(26, 15.99, '{\"5\":\"small\",\"6\":\"thin-crust\"}', '', 0, 0, 0, 9, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(27, 16.99, '{\"5\":\"small\",\"6\":\"double-decker\"}', '', 0, 0, 0, 9, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(28, 17.99, '{\"5\":\"medium\",\"6\":\"hand-tosset\"}', '', 0, 0, 0, 9, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(29, 18.99, '{\"5\":\"medium\",\"6\":\"thin-crust\"}', '', 0, 0, 0, 9, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(30, 19.99, '{\"5\":\"medium\",\"6\":\"double-decker\"}', '', 0, 0, 0, 9, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(31, 20.99, '{\"5\":\"large\",\"6\":\"hand-tosset\"}', '', 0, 0, 0, 9, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(32, 21.99, '{\"5\":\"large\",\"6\":\"thin-crust\"}', '', 0, 0, 0, 9, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(33, 22.99, '{\"5\":\"large\",\"6\":\"double-decker\"}', '', 0, 0, 0, 9, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(34, 23.99, '{\"5\":\"family\",\"6\":\"hand-tosset\"}', '', 0, 0, 0, 9, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(35, 24.99, '{\"5\":\"family\",\"6\":\"thin-crust\"}', '', 0, 0, 0, 9, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(36, 25.99, '{\"5\":\"family\",\"6\":\"double-decker\"}', '', 0, 0, 0, 9, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(37, 14.99, '{\"7\":\"small\",\"8\":\"hand-tosset\"}', '', 0, 0, 0, 10, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(38, 15.99, '{\"7\":\"small\",\"8\":\"thin-crust\"}', '', 0, 0, 0, 10, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(39, 16.99, '{\"7\":\"small\",\"8\":\"double-decker\"}', '', 0, 0, 0, 10, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(40, 17.99, '{\"7\":\"medium\",\"8\":\"hand-tosset\"}', '', 0, 0, 0, 10, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(41, 18.99, '{\"7\":\"medium\",\"8\":\"thin-crust\"}', '', 0, 0, 0, 10, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(42, 19.99, '{\"7\":\"medium\",\"8\":\"double-decker\"}', '', 0, 0, 0, 10, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(43, 20.99, '{\"7\":\"large\",\"8\":\"hand-tosset\"}', '', 0, 0, 0, 10, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(44, 21.99, '{\"7\":\"large\",\"8\":\"thin-crust\"}', '', 0, 0, 0, 10, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(45, 22.99, '{\"7\":\"large\",\"8\":\"double-decker\"}', '', 0, 0, 0, 10, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(46, 23.99, '{\"7\":\"family\",\"8\":\"hand-tosset\"}', '', 0, 0, 0, 10, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(47, 24.99, '{\"7\":\"family\",\"8\":\"thin-crust\"}', '', 0, 0, 0, 10, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(48, 25.99, '{\"7\":\"family\",\"8\":\"double-decker\"}', '', 0, 0, 0, 10, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(49, 14.99, '{\"9\":\"small\",\"10\":\"hand-tosset\"}', '', 0, 0, 0, 11, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(50, 15.99, '{\"9\":\"small\",\"10\":\"thin-crust\"}', '', 0, 0, 0, 11, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(51, 16.99, '{\"9\":\"small\",\"10\":\"double-decker\"}', '', 0, 0, 0, 11, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(52, 17.99, '{\"9\":\"medium\",\"10\":\"hand-tosset\"}', '', 0, 0, 0, 11, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(53, 18.99, '{\"9\":\"medium\",\"10\":\"thin-crust\"}', '', 0, 0, 0, 11, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(54, 19.99, '{\"9\":\"medium\",\"10\":\"double-decker\"}', '', 0, 0, 0, 11, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(55, 20.99, '{\"9\":\"large\",\"10\":\"hand-tosset\"}', '', 0, 0, 0, 11, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(56, 21.99, '{\"9\":\"large\",\"10\":\"thin-crust\"}', '', 0, 0, 0, 11, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(57, 22.99, '{\"9\":\"large\",\"10\":\"double-decker\"}', '', 0, 0, 0, 11, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(58, 23.99, '{\"9\":\"family\",\"10\":\"hand-tosset\"}', '', 0, 0, 0, 11, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(59, 24.99, '{\"9\":\"family\",\"10\":\"thin-crust\"}', '', 0, 0, 0, 11, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(60, 25.99, '{\"9\":\"family\",\"10\":\"double-decker\"}', '', 0, 0, 0, 11, '2021-10-04 13:23:12', '2021-10-04 13:23:12', NULL, 0),
(61, 14.99, '{\"11\":\"small\",\"12\":\"hand-tosset\"}', '', 0, 0, 0, 12, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(62, 15.99, '{\"11\":\"small\",\"12\":\"thin-crust\"}', '', 0, 0, 0, 12, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(63, 16.99, '{\"11\":\"small\",\"12\":\"double-decker\"}', '', 0, 0, 0, 12, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(64, 17.99, '{\"11\":\"medium\",\"12\":\"hand-tosset\"}', '', 0, 0, 0, 12, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(65, 18.99, '{\"11\":\"medium\",\"12\":\"thin-crust\"}', '', 0, 0, 0, 12, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(66, 19.99, '{\"11\":\"medium\",\"12\":\"double-decker\"}', '', 0, 0, 0, 12, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(67, 20.99, '{\"11\":\"large\",\"12\":\"hand-tosset\"}', '', 0, 0, 0, 12, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(68, 21.99, '{\"11\":\"large\",\"12\":\"thin-crust\"}', '', 0, 0, 0, 12, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(69, 22.99, '{\"11\":\"large\",\"12\":\"double-decker\"}', '', 0, 0, 0, 12, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(70, 23.99, '{\"11\":\"family\",\"12\":\"hand-tosset\"}', '', 0, 0, 0, 12, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(71, 24.99, '{\"11\":\"family\",\"12\":\"thin-crust\"}', '', 0, 0, 0, 12, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(72, 25.99, '{\"11\":\"family\",\"12\":\"double-decker\"}', '', 0, 0, 0, 12, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(73, 10.49, '{\"13\":\"small\",\"14\":\"hand-tosset\"}', '', 0, 0, 0, 13, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(74, 11.49, '{\"13\":\"small\",\"14\":\"thin-crust\"}', '', 0, 0, 0, 13, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(75, 12.49, '{\"13\":\"small\",\"14\":\"double-decker\"}', '', 0, 0, 0, 13, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(76, 13.49, '{\"13\":\"medium\",\"14\":\"hand-tosset\"}', '', 0, 0, 0, 13, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(77, 14.49, '{\"13\":\"medium\",\"14\":\"thin-crust\"}', '', 0, 0, 0, 13, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(78, 15.49, '{\"13\":\"medium\",\"14\":\"double-decker\"}', '', 0, 0, 0, 13, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(79, 16.49, '{\"13\":\"large\",\"14\":\"hand-tosset\"}', '', 0, 0, 0, 13, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(80, 17.49, '{\"13\":\"large\",\"14\":\"thin-crust\"}', '', 0, 0, 0, 13, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(81, 18.49, '{\"13\":\"large\",\"14\":\"double-decker\"}', '', 0, 0, 0, 13, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(82, 19.49, '{\"13\":\"family\",\"14\":\"hand-tosset\"}', '', 0, 0, 0, 13, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(83, 20.49, '{\"13\":\"family\",\"14\":\"thin-crust\"}', '', 0, 0, 0, 13, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(84, 21.49, '{\"13\":\"family\",\"14\":\"double-decker\"}', '', 0, 0, 0, 13, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(85, 39.99, '{\"15\":\"small\",\"16\":\"hand-tosset\"}', '', 0, 0, 0, 14, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(86, 40.99, '{\"15\":\"small\",\"16\":\"thin-crust\"}', '', 0, 0, 0, 14, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(87, 41.99, '{\"15\":\"small\",\"16\":\"double-decker\"}', '', 0, 0, 0, 14, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(88, 42.99, '{\"15\":\"medium\",\"16\":\"hand-tosset\"}', '', 0, 0, 0, 14, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(89, 43.99, '{\"15\":\"medium\",\"16\":\"thin-crust\"}', '', 0, 0, 0, 14, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(90, 44.99, '{\"15\":\"medium\",\"16\":\"double-decker\"}', '', 0, 0, 0, 14, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(91, 45.99, '{\"15\":\"large\",\"16\":\"hand-tosset\"}', '', 0, 0, 0, 14, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(92, 46.99, '{\"15\":\"large\",\"16\":\"thin-crust\"}', '', 0, 0, 0, 14, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(93, 47.99, '{\"15\":\"large\",\"16\":\"double-decker\"}', '', 0, 0, 0, 14, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(94, 48.99, '{\"15\":\"family\",\"16\":\"hand-tosset\"}', '', 0, 0, 0, 14, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(95, 49.99, '{\"15\":\"family\",\"16\":\"thin-crust\"}', '', 0, 0, 0, 14, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(96, 50.99, '{\"15\":\"family\",\"16\":\"double-decker\"}', '', 0, 0, 0, 14, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(97, 14.99, '{\"17\":\"small\",\"18\":\"hand-tosset\"}', '', 0, 0, 0, 15, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(98, 15.99, '{\"17\":\"small\",\"18\":\"thin-crust\"}', '', 0, 0, 0, 15, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(99, 16.99, '{\"17\":\"small\",\"18\":\"double-decker\"}', '', 0, 0, 0, 15, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(100, 17.99, '{\"17\":\"medium\",\"18\":\"hand-tosset\"}', '', 0, 0, 0, 15, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(101, 18.99, '{\"17\":\"medium\",\"18\":\"thin-crust\"}', '', 0, 0, 0, 15, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(102, 19.99, '{\"17\":\"medium\",\"18\":\"double-decker\"}', '', 0, 0, 0, 15, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(103, 20.99, '{\"17\":\"large\",\"18\":\"hand-tosset\"}', '', 0, 0, 0, 15, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(104, 21.99, '{\"17\":\"large\",\"18\":\"thin-crust\"}', '', 0, 0, 0, 15, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(105, 22.99, '{\"17\":\"large\",\"18\":\"double-decker\"}', '', 0, 0, 0, 15, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(106, 23.99, '{\"17\":\"family\",\"18\":\"hand-tosset\"}', '', 0, 0, 0, 15, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(107, 24.99, '{\"17\":\"family\",\"18\":\"thin-crust\"}', '', 0, 0, 0, 15, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(108, 25.99, '{\"17\":\"family\",\"18\":\"double-decker\"}', '', 0, 0, 0, 15, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(109, 14.99, '{\"19\":\"small\",\"20\":\"hand-tosset\"}', '', 0, 0, 0, 16, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(110, 15.99, '{\"19\":\"small\",\"20\":\"thin-crust\"}', '', 0, 0, 0, 16, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(111, 16.99, '{\"19\":\"small\",\"20\":\"double-decker\"}', '', 0, 0, 0, 16, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(112, 17.99, '{\"19\":\"medium\",\"20\":\"hand-tosset\"}', '', 0, 0, 0, 16, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(113, 18.99, '{\"19\":\"medium\",\"20\":\"thin-crust\"}', '', 0, 0, 0, 16, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(114, 19.99, '{\"19\":\"medium\",\"20\":\"double-decker\"}', '', 0, 0, 0, 16, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(115, 20.99, '{\"19\":\"large\",\"20\":\"hand-tosset\"}', '', 0, 0, 0, 16, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(116, 21.99, '{\"19\":\"large\",\"20\":\"thin-crust\"}', '', 0, 0, 0, 16, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(117, 22.99, '{\"19\":\"large\",\"20\":\"double-decker\"}', '', 0, 0, 0, 16, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(118, 23.99, '{\"19\":\"family\",\"20\":\"hand-tosset\"}', '', 0, 0, 0, 16, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(119, 24.99, '{\"19\":\"family\",\"20\":\"thin-crust\"}', '', 0, 0, 0, 16, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(120, 25.99, '{\"19\":\"family\",\"20\":\"double-decker\"}', '', 0, 0, 0, 16, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(121, 14.99, '{\"21\":\"small\",\"22\":\"hand-tosset\"}', '', 0, 0, 0, 17, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(122, 15.99, '{\"21\":\"small\",\"22\":\"thin-crust\"}', '', 0, 0, 0, 17, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(123, 16.99, '{\"21\":\"small\",\"22\":\"double-decker\"}', '', 0, 0, 0, 17, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(124, 17.99, '{\"21\":\"medium\",\"22\":\"hand-tosset\"}', '', 0, 0, 0, 17, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(125, 18.99, '{\"21\":\"medium\",\"22\":\"thin-crust\"}', '', 0, 0, 0, 17, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(126, 19.99, '{\"21\":\"medium\",\"22\":\"double-decker\"}', '', 0, 0, 0, 17, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(127, 20.99, '{\"21\":\"large\",\"22\":\"hand-tosset\"}', '', 0, 0, 0, 17, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(128, 21.99, '{\"21\":\"large\",\"22\":\"thin-crust\"}', '', 0, 0, 0, 17, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(129, 22.99, '{\"21\":\"large\",\"22\":\"double-decker\"}', '', 0, 0, 0, 17, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(130, 23.99, '{\"21\":\"family\",\"22\":\"hand-tosset\"}', '', 0, 0, 0, 17, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(131, 24.99, '{\"21\":\"family\",\"22\":\"thin-crust\"}', '', 0, 0, 0, 17, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(132, 25.99, '{\"21\":\"family\",\"22\":\"double-decker\"}', '', 0, 0, 0, 17, '2021-10-04 13:23:13', '2021-10-04 13:23:13', NULL, 0),
(133, 10.99, '{\"23\":\"small\",\"24\":\"hand-tosset\"}', '', 0, 0, 0, 67, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(134, 11.99, '{\"23\":\"small\",\"24\":\"thin-crust\"}', '', 0, 0, 0, 67, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(135, 12.99, '{\"23\":\"small\",\"24\":\"double-decker\"}', '', 0, 0, 0, 67, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(136, 13.99, '{\"23\":\"medium\",\"24\":\"hand-tosset\"}', '', 0, 0, 0, 67, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(137, 14.99, '{\"23\":\"medium\",\"24\":\"thin-crust\"}', '', 0, 0, 0, 67, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(138, 15.99, '{\"23\":\"medium\",\"24\":\"double-decker\"}', '', 0, 0, 0, 67, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(139, 16.99, '{\"23\":\"large\",\"24\":\"hand-tosset\"}', '', 0, 0, 0, 67, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(140, 17.99, '{\"23\":\"large\",\"24\":\"thin-crust\"}', '', 0, 0, 0, 67, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(141, 18.99, '{\"23\":\"large\",\"24\":\"double-decker\"}', '', 0, 0, 0, 67, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(142, 19.99, '{\"23\":\"family\",\"24\":\"hand-tosset\"}', '', 0, 0, 0, 67, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(143, 20.99, '{\"23\":\"family\",\"24\":\"thin-crust\"}', '', 0, 0, 0, 67, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(144, 21.99, '{\"23\":\"family\",\"24\":\"double-decker\"}', '', 0, 0, 0, 67, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(145, 14.99, '{\"25\":\"small\",\"26\":\"hand-tosset\"}', '', 0, 0, 0, 68, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(146, 15.99, '{\"25\":\"small\",\"26\":\"thin-crust\"}', '', 0, 0, 0, 68, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(147, 16.99, '{\"25\":\"small\",\"26\":\"double-decker\"}', '', 0, 0, 0, 68, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(148, 17.99, '{\"25\":\"medium\",\"26\":\"hand-tosset\"}', '', 0, 0, 0, 68, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(149, 18.99, '{\"25\":\"medium\",\"26\":\"thin-crust\"}', '', 0, 0, 0, 68, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(150, 19.99, '{\"25\":\"medium\",\"26\":\"double-decker\"}', '', 0, 0, 0, 68, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(151, 20.99, '{\"25\":\"large\",\"26\":\"hand-tosset\"}', '', 0, 0, 0, 68, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(152, 21.99, '{\"25\":\"large\",\"26\":\"thin-crust\"}', '', 0, 0, 0, 68, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(153, 22.99, '{\"25\":\"large\",\"26\":\"double-decker\"}', '', 0, 0, 0, 68, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(154, 23.99, '{\"25\":\"family\",\"26\":\"hand-tosset\"}', '', 0, 0, 0, 68, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(155, 24.99, '{\"25\":\"family\",\"26\":\"thin-crust\"}', '', 0, 0, 0, 68, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(156, 25.99, '{\"25\":\"family\",\"26\":\"double-decker\"}', '', 0, 0, 0, 68, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(157, 14.99, '{\"27\":\"small\",\"28\":\"hand-tosset\"}', '', 0, 0, 0, 69, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(158, 15.99, '{\"27\":\"small\",\"28\":\"thin-crust\"}', '', 0, 0, 0, 69, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(159, 16.99, '{\"27\":\"small\",\"28\":\"double-decker\"}', '', 0, 0, 0, 69, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(160, 17.99, '{\"27\":\"medium\",\"28\":\"hand-tosset\"}', '', 0, 0, 0, 69, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(161, 18.99, '{\"27\":\"medium\",\"28\":\"thin-crust\"}', '', 0, 0, 0, 69, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(162, 19.99, '{\"27\":\"medium\",\"28\":\"double-decker\"}', '', 0, 0, 0, 69, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(163, 20.99, '{\"27\":\"large\",\"28\":\"hand-tosset\"}', '', 0, 0, 0, 69, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(164, 21.99, '{\"27\":\"large\",\"28\":\"thin-crust\"}', '', 0, 0, 0, 69, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(165, 22.99, '{\"27\":\"large\",\"28\":\"double-decker\"}', '', 0, 0, 0, 69, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(166, 23.99, '{\"27\":\"family\",\"28\":\"hand-tosset\"}', '', 0, 0, 0, 69, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(167, 24.99, '{\"27\":\"family\",\"28\":\"thin-crust\"}', '', 0, 0, 0, 69, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(168, 25.99, '{\"27\":\"family\",\"28\":\"double-decker\"}', '', 0, 0, 0, 69, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(169, 14.99, '{\"29\":\"small\",\"30\":\"hand-tosset\"}', '', 0, 0, 0, 70, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(170, 15.99, '{\"29\":\"small\",\"30\":\"thin-crust\"}', '', 0, 0, 0, 70, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(171, 16.99, '{\"29\":\"small\",\"30\":\"double-decker\"}', '', 0, 0, 0, 70, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(172, 17.99, '{\"29\":\"medium\",\"30\":\"hand-tosset\"}', '', 0, 0, 0, 70, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(173, 18.99, '{\"29\":\"medium\",\"30\":\"thin-crust\"}', '', 0, 0, 0, 70, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(174, 19.99, '{\"29\":\"medium\",\"30\":\"double-decker\"}', '', 0, 0, 0, 70, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(175, 20.99, '{\"29\":\"large\",\"30\":\"hand-tosset\"}', '', 0, 0, 0, 70, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(176, 21.99, '{\"29\":\"large\",\"30\":\"thin-crust\"}', '', 0, 0, 0, 70, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(177, 22.99, '{\"29\":\"large\",\"30\":\"double-decker\"}', '', 0, 0, 0, 70, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(178, 23.99, '{\"29\":\"family\",\"30\":\"hand-tosset\"}', '', 0, 0, 0, 70, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(179, 24.99, '{\"29\":\"family\",\"30\":\"thin-crust\"}', '', 0, 0, 0, 70, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(180, 25.99, '{\"29\":\"family\",\"30\":\"double-decker\"}', '', 0, 0, 0, 70, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(181, 14.99, '{\"31\":\"small\",\"32\":\"hand-tosset\"}', '', 0, 0, 0, 71, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(182, 15.99, '{\"31\":\"small\",\"32\":\"thin-crust\"}', '', 0, 0, 0, 71, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(183, 16.99, '{\"31\":\"small\",\"32\":\"double-decker\"}', '', 0, 0, 0, 71, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(184, 17.99, '{\"31\":\"medium\",\"32\":\"hand-tosset\"}', '', 0, 0, 0, 71, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(185, 18.99, '{\"31\":\"medium\",\"32\":\"thin-crust\"}', '', 0, 0, 0, 71, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(186, 19.99, '{\"31\":\"medium\",\"32\":\"double-decker\"}', '', 0, 0, 0, 71, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(187, 20.99, '{\"31\":\"large\",\"32\":\"hand-tosset\"}', '', 0, 0, 0, 71, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(188, 21.99, '{\"31\":\"large\",\"32\":\"thin-crust\"}', '', 0, 0, 0, 71, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(189, 22.99, '{\"31\":\"large\",\"32\":\"double-decker\"}', '', 0, 0, 0, 71, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(190, 23.99, '{\"31\":\"family\",\"32\":\"hand-tosset\"}', '', 0, 0, 0, 71, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(191, 24.99, '{\"31\":\"family\",\"32\":\"thin-crust\"}', '', 0, 0, 0, 71, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(192, 25.99, '{\"31\":\"family\",\"32\":\"double-decker\"}', '', 0, 0, 0, 71, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(193, 14.99, '{\"33\":\"small\",\"34\":\"hand-tosset\"}', '', 0, 0, 0, 72, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(194, 15.99, '{\"33\":\"small\",\"34\":\"thin-crust\"}', '', 0, 0, 0, 72, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(195, 16.99, '{\"33\":\"small\",\"34\":\"double-decker\"}', '', 0, 0, 0, 72, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(196, 17.99, '{\"33\":\"medium\",\"34\":\"hand-tosset\"}', '', 0, 0, 0, 72, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(197, 18.99, '{\"33\":\"medium\",\"34\":\"thin-crust\"}', '', 0, 0, 0, 72, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(198, 19.99, '{\"33\":\"medium\",\"34\":\"double-decker\"}', '', 0, 0, 0, 72, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(199, 20.99, '{\"33\":\"large\",\"34\":\"hand-tosset\"}', '', 0, 0, 0, 72, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(200, 21.99, '{\"33\":\"large\",\"34\":\"thin-crust\"}', '', 0, 0, 0, 72, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(201, 22.99, '{\"33\":\"large\",\"34\":\"double-decker\"}', '', 0, 0, 0, 72, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(202, 23.99, '{\"33\":\"family\",\"34\":\"hand-tosset\"}', '', 0, 0, 0, 72, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(203, 24.99, '{\"33\":\"family\",\"34\":\"thin-crust\"}', '', 0, 0, 0, 72, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(204, 25.99, '{\"33\":\"family\",\"34\":\"double-decker\"}', '', 0, 0, 0, 72, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(205, 10.49, '{\"35\":\"small\",\"36\":\"hand-tosset\"}', '', 0, 0, 0, 73, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(206, 11.49, '{\"35\":\"small\",\"36\":\"thin-crust\"}', '', 0, 0, 0, 73, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(207, 12.49, '{\"35\":\"small\",\"36\":\"double-decker\"}', '', 0, 0, 0, 73, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(208, 13.49, '{\"35\":\"medium\",\"36\":\"hand-tosset\"}', '', 0, 0, 0, 73, '2021-10-04 13:23:15', '2021-10-04 13:23:15', NULL, 0),
(209, 14.49, '{\"35\":\"medium\",\"36\":\"thin-crust\"}', '', 0, 0, 0, 73, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(210, 15.49, '{\"35\":\"medium\",\"36\":\"double-decker\"}', '', 0, 0, 0, 73, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(211, 16.49, '{\"35\":\"large\",\"36\":\"hand-tosset\"}', '', 0, 0, 0, 73, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(212, 17.49, '{\"35\":\"large\",\"36\":\"thin-crust\"}', '', 0, 0, 0, 73, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(213, 18.49, '{\"35\":\"large\",\"36\":\"double-decker\"}', '', 0, 0, 0, 73, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(214, 19.49, '{\"35\":\"family\",\"36\":\"hand-tosset\"}', '', 0, 0, 0, 73, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(215, 20.49, '{\"35\":\"family\",\"36\":\"thin-crust\"}', '', 0, 0, 0, 73, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(216, 21.49, '{\"35\":\"family\",\"36\":\"double-decker\"}', '', 0, 0, 0, 73, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(217, 39.99, '{\"37\":\"small\",\"38\":\"hand-tosset\"}', '', 0, 0, 0, 74, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(218, 40.99, '{\"37\":\"small\",\"38\":\"thin-crust\"}', '', 0, 0, 0, 74, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(219, 41.99, '{\"37\":\"small\",\"38\":\"double-decker\"}', '', 0, 0, 0, 74, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(220, 42.99, '{\"37\":\"medium\",\"38\":\"hand-tosset\"}', '', 0, 0, 0, 74, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(221, 43.99, '{\"37\":\"medium\",\"38\":\"thin-crust\"}', '', 0, 0, 0, 74, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(222, 44.99, '{\"37\":\"medium\",\"38\":\"double-decker\"}', '', 0, 0, 0, 74, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(223, 45.99, '{\"37\":\"large\",\"38\":\"hand-tosset\"}', '', 0, 0, 0, 74, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(224, 46.99, '{\"37\":\"large\",\"38\":\"thin-crust\"}', '', 0, 0, 0, 74, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(225, 47.99, '{\"37\":\"large\",\"38\":\"double-decker\"}', '', 0, 0, 0, 74, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(226, 48.99, '{\"37\":\"family\",\"38\":\"hand-tosset\"}', '', 0, 0, 0, 74, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(227, 49.99, '{\"37\":\"family\",\"38\":\"thin-crust\"}', '', 0, 0, 0, 74, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(228, 50.99, '{\"37\":\"family\",\"38\":\"double-decker\"}', '', 0, 0, 0, 74, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(229, 14.99, '{\"39\":\"small\",\"40\":\"hand-tosset\"}', '', 0, 0, 0, 75, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(230, 15.99, '{\"39\":\"small\",\"40\":\"thin-crust\"}', '', 0, 0, 0, 75, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(231, 16.99, '{\"39\":\"small\",\"40\":\"double-decker\"}', '', 0, 0, 0, 75, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(232, 17.99, '{\"39\":\"medium\",\"40\":\"hand-tosset\"}', '', 0, 0, 0, 75, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(233, 18.99, '{\"39\":\"medium\",\"40\":\"thin-crust\"}', '', 0, 0, 0, 75, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(234, 19.99, '{\"39\":\"medium\",\"40\":\"double-decker\"}', '', 0, 0, 0, 75, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(235, 20.99, '{\"39\":\"large\",\"40\":\"hand-tosset\"}', '', 0, 0, 0, 75, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(236, 21.99, '{\"39\":\"large\",\"40\":\"thin-crust\"}', '', 0, 0, 0, 75, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(237, 22.99, '{\"39\":\"large\",\"40\":\"double-decker\"}', '', 0, 0, 0, 75, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(238, 23.99, '{\"39\":\"family\",\"40\":\"hand-tosset\"}', '', 0, 0, 0, 75, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(239, 24.99, '{\"39\":\"family\",\"40\":\"thin-crust\"}', '', 0, 0, 0, 75, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(240, 25.99, '{\"39\":\"family\",\"40\":\"double-decker\"}', '', 0, 0, 0, 75, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(241, 14.99, '{\"41\":\"small\",\"42\":\"hand-tosset\"}', '', 0, 0, 0, 76, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(242, 15.99, '{\"41\":\"small\",\"42\":\"thin-crust\"}', '', 0, 0, 0, 76, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(243, 16.99, '{\"41\":\"small\",\"42\":\"double-decker\"}', '', 0, 0, 0, 76, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(244, 17.99, '{\"41\":\"medium\",\"42\":\"hand-tosset\"}', '', 0, 0, 0, 76, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(245, 18.99, '{\"41\":\"medium\",\"42\":\"thin-crust\"}', '', 0, 0, 0, 76, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(246, 19.99, '{\"41\":\"medium\",\"42\":\"double-decker\"}', '', 0, 0, 0, 76, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(247, 20.99, '{\"41\":\"large\",\"42\":\"hand-tosset\"}', '', 0, 0, 0, 76, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(248, 21.99, '{\"41\":\"large\",\"42\":\"thin-crust\"}', '', 0, 0, 0, 76, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(249, 22.99, '{\"41\":\"large\",\"42\":\"double-decker\"}', '', 0, 0, 0, 76, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(250, 23.99, '{\"41\":\"family\",\"42\":\"hand-tosset\"}', '', 0, 0, 0, 76, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(251, 24.99, '{\"41\":\"family\",\"42\":\"thin-crust\"}', '', 0, 0, 0, 76, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(252, 25.99, '{\"41\":\"family\",\"42\":\"double-decker\"}', '', 0, 0, 0, 76, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(253, 14.99, '{\"43\":\"small\",\"44\":\"hand-tosset\"}', '', 0, 0, 0, 77, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(254, 15.99, '{\"43\":\"small\",\"44\":\"thin-crust\"}', '', 0, 0, 0, 77, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(255, 16.99, '{\"43\":\"small\",\"44\":\"double-decker\"}', '', 0, 0, 0, 77, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(256, 17.99, '{\"43\":\"medium\",\"44\":\"hand-tosset\"}', '', 0, 0, 0, 77, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(257, 18.99, '{\"43\":\"medium\",\"44\":\"thin-crust\"}', '', 0, 0, 0, 77, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(258, 19.99, '{\"43\":\"medium\",\"44\":\"double-decker\"}', '', 0, 0, 0, 77, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(259, 20.99, '{\"43\":\"large\",\"44\":\"hand-tosset\"}', '', 0, 0, 0, 77, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(260, 21.99, '{\"43\":\"large\",\"44\":\"thin-crust\"}', '', 0, 0, 0, 77, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(261, 22.99, '{\"43\":\"large\",\"44\":\"double-decker\"}', '', 0, 0, 0, 77, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(262, 23.99, '{\"43\":\"family\",\"44\":\"hand-tosset\"}', '', 0, 0, 0, 77, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(263, 24.99, '{\"43\":\"family\",\"44\":\"thin-crust\"}', '', 0, 0, 0, 77, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(264, 25.99, '{\"43\":\"family\",\"44\":\"double-decker\"}', '', 0, 0, 0, 77, '2021-10-04 13:23:16', '2021-10-04 13:23:16', NULL, 0),
(265, 10.99, '{\"45\":\"small\",\"46\":\"hand-tosset\"}', '', 0, 0, 0, 101, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(266, 11.99, '{\"45\":\"small\",\"46\":\"thin-crust\"}', '', 0, 0, 0, 101, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(267, 12.99, '{\"45\":\"small\",\"46\":\"double-decker\"}', '', 0, 0, 0, 101, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(268, 13.99, '{\"45\":\"medium\",\"46\":\"hand-tosset\"}', '', 0, 0, 0, 101, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(269, 14.99, '{\"45\":\"medium\",\"46\":\"thin-crust\"}', '', 0, 0, 0, 101, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(270, 15.99, '{\"45\":\"medium\",\"46\":\"double-decker\"}', '', 0, 0, 0, 101, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(271, 16.99, '{\"45\":\"large\",\"46\":\"hand-tosset\"}', '', 0, 0, 0, 101, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(272, 17.99, '{\"45\":\"large\",\"46\":\"thin-crust\"}', '', 0, 0, 0, 101, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(273, 18.99, '{\"45\":\"large\",\"46\":\"double-decker\"}', '', 0, 0, 0, 101, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(274, 19.99, '{\"45\":\"family\",\"46\":\"hand-tosset\"}', '', 0, 0, 0, 101, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(275, 20.99, '{\"45\":\"family\",\"46\":\"thin-crust\"}', '', 0, 0, 0, 101, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(276, 21.99, '{\"45\":\"family\",\"46\":\"double-decker\"}', '', 0, 0, 0, 101, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(277, 14.99, '{\"47\":\"small\",\"48\":\"hand-tosset\"}', '', 0, 0, 0, 102, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(278, 15.99, '{\"47\":\"small\",\"48\":\"thin-crust\"}', '', 0, 0, 0, 102, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(279, 16.99, '{\"47\":\"small\",\"48\":\"double-decker\"}', '', 0, 0, 0, 102, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(280, 17.99, '{\"47\":\"medium\",\"48\":\"hand-tosset\"}', '', 0, 0, 0, 102, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(281, 18.99, '{\"47\":\"medium\",\"48\":\"thin-crust\"}', '', 0, 0, 0, 102, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(282, 19.99, '{\"47\":\"medium\",\"48\":\"double-decker\"}', '', 0, 0, 0, 102, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(283, 20.99, '{\"47\":\"large\",\"48\":\"hand-tosset\"}', '', 0, 0, 0, 102, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(284, 21.99, '{\"47\":\"large\",\"48\":\"thin-crust\"}', '', 0, 0, 0, 102, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(285, 22.99, '{\"47\":\"large\",\"48\":\"double-decker\"}', '', 0, 0, 0, 102, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(286, 23.99, '{\"47\":\"family\",\"48\":\"hand-tosset\"}', '', 0, 0, 0, 102, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(287, 24.99, '{\"47\":\"family\",\"48\":\"thin-crust\"}', '', 0, 0, 0, 102, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(288, 25.99, '{\"47\":\"family\",\"48\":\"double-decker\"}', '', 0, 0, 0, 102, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(289, 14.99, '{\"49\":\"small\",\"50\":\"hand-tosset\"}', '', 0, 0, 0, 103, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(290, 15.99, '{\"49\":\"small\",\"50\":\"thin-crust\"}', '', 0, 0, 0, 103, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(291, 16.99, '{\"49\":\"small\",\"50\":\"double-decker\"}', '', 0, 0, 0, 103, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(292, 17.99, '{\"49\":\"medium\",\"50\":\"hand-tosset\"}', '', 0, 0, 0, 103, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(293, 18.99, '{\"49\":\"medium\",\"50\":\"thin-crust\"}', '', 0, 0, 0, 103, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(294, 19.99, '{\"49\":\"medium\",\"50\":\"double-decker\"}', '', 0, 0, 0, 103, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(295, 20.99, '{\"49\":\"large\",\"50\":\"hand-tosset\"}', '', 0, 0, 0, 103, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(296, 21.99, '{\"49\":\"large\",\"50\":\"thin-crust\"}', '', 0, 0, 0, 103, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(297, 22.99, '{\"49\":\"large\",\"50\":\"double-decker\"}', '', 0, 0, 0, 103, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(298, 23.99, '{\"49\":\"family\",\"50\":\"hand-tosset\"}', '', 0, 0, 0, 103, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(299, 24.99, '{\"49\":\"family\",\"50\":\"thin-crust\"}', '', 0, 0, 0, 103, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(300, 25.99, '{\"49\":\"family\",\"50\":\"double-decker\"}', '', 0, 0, 0, 103, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(301, 14.99, '{\"51\":\"small\",\"52\":\"hand-tosset\"}', '', 0, 0, 0, 104, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(302, 15.99, '{\"51\":\"small\",\"52\":\"thin-crust\"}', '', 0, 0, 0, 104, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(303, 16.99, '{\"51\":\"small\",\"52\":\"double-decker\"}', '', 0, 0, 0, 104, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(304, 17.99, '{\"51\":\"medium\",\"52\":\"hand-tosset\"}', '', 0, 0, 0, 104, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(305, 18.99, '{\"51\":\"medium\",\"52\":\"thin-crust\"}', '', 0, 0, 0, 104, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(306, 19.99, '{\"51\":\"medium\",\"52\":\"double-decker\"}', '', 0, 0, 0, 104, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(307, 20.99, '{\"51\":\"large\",\"52\":\"hand-tosset\"}', '', 0, 0, 0, 104, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(308, 21.99, '{\"51\":\"large\",\"52\":\"thin-crust\"}', '', 0, 0, 0, 104, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(309, 22.99, '{\"51\":\"large\",\"52\":\"double-decker\"}', '', 0, 0, 0, 104, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(310, 23.99, '{\"51\":\"family\",\"52\":\"hand-tosset\"}', '', 0, 0, 0, 104, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(311, 24.99, '{\"51\":\"family\",\"52\":\"thin-crust\"}', '', 0, 0, 0, 104, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(312, 25.99, '{\"51\":\"family\",\"52\":\"double-decker\"}', '', 0, 0, 0, 104, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(313, 14.99, '{\"53\":\"small\",\"54\":\"hand-tosset\"}', '', 0, 0, 0, 105, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(314, 15.99, '{\"53\":\"small\",\"54\":\"thin-crust\"}', '', 0, 0, 0, 105, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(315, 16.99, '{\"53\":\"small\",\"54\":\"double-decker\"}', '', 0, 0, 0, 105, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(316, 17.99, '{\"53\":\"medium\",\"54\":\"hand-tosset\"}', '', 0, 0, 0, 105, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(317, 18.99, '{\"53\":\"medium\",\"54\":\"thin-crust\"}', '', 0, 0, 0, 105, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(318, 19.99, '{\"53\":\"medium\",\"54\":\"double-decker\"}', '', 0, 0, 0, 105, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(319, 20.99, '{\"53\":\"large\",\"54\":\"hand-tosset\"}', '', 0, 0, 0, 105, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(320, 21.99, '{\"53\":\"large\",\"54\":\"thin-crust\"}', '', 0, 0, 0, 105, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(321, 22.99, '{\"53\":\"large\",\"54\":\"double-decker\"}', '', 0, 0, 0, 105, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(322, 23.99, '{\"53\":\"family\",\"54\":\"hand-tosset\"}', '', 0, 0, 0, 105, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(323, 24.99, '{\"53\":\"family\",\"54\":\"thin-crust\"}', '', 0, 0, 0, 105, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(324, 25.99, '{\"53\":\"family\",\"54\":\"double-decker\"}', '', 0, 0, 0, 105, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(325, 14.99, '{\"55\":\"small\",\"56\":\"hand-tosset\"}', '', 0, 0, 0, 106, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(326, 15.99, '{\"55\":\"small\",\"56\":\"thin-crust\"}', '', 0, 0, 0, 106, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(327, 16.99, '{\"55\":\"small\",\"56\":\"double-decker\"}', '', 0, 0, 0, 106, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(328, 17.99, '{\"55\":\"medium\",\"56\":\"hand-tosset\"}', '', 0, 0, 0, 106, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(329, 18.99, '{\"55\":\"medium\",\"56\":\"thin-crust\"}', '', 0, 0, 0, 106, '2021-10-04 13:23:17', '2021-10-04 13:23:17', NULL, 0),
(330, 19.99, '{\"55\":\"medium\",\"56\":\"double-decker\"}', '', 0, 0, 0, 106, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(331, 20.99, '{\"55\":\"large\",\"56\":\"hand-tosset\"}', '', 0, 0, 0, 106, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(332, 21.99, '{\"55\":\"large\",\"56\":\"thin-crust\"}', '', 0, 0, 0, 106, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(333, 22.99, '{\"55\":\"large\",\"56\":\"double-decker\"}', '', 0, 0, 0, 106, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(334, 23.99, '{\"55\":\"family\",\"56\":\"hand-tosset\"}', '', 0, 0, 0, 106, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(335, 24.99, '{\"55\":\"family\",\"56\":\"thin-crust\"}', '', 0, 0, 0, 106, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(336, 25.99, '{\"55\":\"family\",\"56\":\"double-decker\"}', '', 0, 0, 0, 106, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(337, 10.49, '{\"57\":\"small\",\"58\":\"hand-tosset\"}', '', 0, 0, 0, 107, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(338, 11.49, '{\"57\":\"small\",\"58\":\"thin-crust\"}', '', 0, 0, 0, 107, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(339, 12.49, '{\"57\":\"small\",\"58\":\"double-decker\"}', '', 0, 0, 0, 107, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(340, 13.49, '{\"57\":\"medium\",\"58\":\"hand-tosset\"}', '', 0, 0, 0, 107, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(341, 14.49, '{\"57\":\"medium\",\"58\":\"thin-crust\"}', '', 0, 0, 0, 107, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(342, 15.49, '{\"57\":\"medium\",\"58\":\"double-decker\"}', '', 0, 0, 0, 107, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(343, 16.49, '{\"57\":\"large\",\"58\":\"hand-tosset\"}', '', 0, 0, 0, 107, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(344, 17.49, '{\"57\":\"large\",\"58\":\"thin-crust\"}', '', 0, 0, 0, 107, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(345, 18.49, '{\"57\":\"large\",\"58\":\"double-decker\"}', '', 0, 0, 0, 107, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(346, 19.49, '{\"57\":\"family\",\"58\":\"hand-tosset\"}', '', 0, 0, 0, 107, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(347, 20.49, '{\"57\":\"family\",\"58\":\"thin-crust\"}', '', 0, 0, 0, 107, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(348, 21.49, '{\"57\":\"family\",\"58\":\"double-decker\"}', '', 0, 0, 0, 107, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(349, 39.99, '{\"59\":\"small\",\"60\":\"hand-tosset\"}', '', 0, 0, 0, 108, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(350, 40.99, '{\"59\":\"small\",\"60\":\"thin-crust\"}', '', 0, 0, 0, 108, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(351, 41.99, '{\"59\":\"small\",\"60\":\"double-decker\"}', '', 0, 0, 0, 108, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(352, 42.99, '{\"59\":\"medium\",\"60\":\"hand-tosset\"}', '', 0, 0, 0, 108, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(353, 43.99, '{\"59\":\"medium\",\"60\":\"thin-crust\"}', '', 0, 0, 0, 108, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(354, 44.99, '{\"59\":\"medium\",\"60\":\"double-decker\"}', '', 0, 0, 0, 108, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(355, 45.99, '{\"59\":\"large\",\"60\":\"hand-tosset\"}', '', 0, 0, 0, 108, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(356, 46.99, '{\"59\":\"large\",\"60\":\"thin-crust\"}', '', 0, 0, 0, 108, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(357, 47.99, '{\"59\":\"large\",\"60\":\"double-decker\"}', '', 0, 0, 0, 108, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(358, 48.99, '{\"59\":\"family\",\"60\":\"hand-tosset\"}', '', 0, 0, 0, 108, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(359, 49.99, '{\"59\":\"family\",\"60\":\"thin-crust\"}', '', 0, 0, 0, 108, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(360, 50.99, '{\"59\":\"family\",\"60\":\"double-decker\"}', '', 0, 0, 0, 108, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(361, 14.99, '{\"61\":\"small\",\"62\":\"hand-tosset\"}', '', 0, 0, 0, 109, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(362, 15.99, '{\"61\":\"small\",\"62\":\"thin-crust\"}', '', 0, 0, 0, 109, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(363, 16.99, '{\"61\":\"small\",\"62\":\"double-decker\"}', '', 0, 0, 0, 109, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(364, 17.99, '{\"61\":\"medium\",\"62\":\"hand-tosset\"}', '', 0, 0, 0, 109, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(365, 18.99, '{\"61\":\"medium\",\"62\":\"thin-crust\"}', '', 0, 0, 0, 109, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(366, 19.99, '{\"61\":\"medium\",\"62\":\"double-decker\"}', '', 0, 0, 0, 109, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(367, 20.99, '{\"61\":\"large\",\"62\":\"hand-tosset\"}', '', 0, 0, 0, 109, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(368, 21.99, '{\"61\":\"large\",\"62\":\"thin-crust\"}', '', 0, 0, 0, 109, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(369, 22.99, '{\"61\":\"large\",\"62\":\"double-decker\"}', '', 0, 0, 0, 109, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(370, 23.99, '{\"61\":\"family\",\"62\":\"hand-tosset\"}', '', 0, 0, 0, 109, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(371, 24.99, '{\"61\":\"family\",\"62\":\"thin-crust\"}', '', 0, 0, 0, 109, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(372, 25.99, '{\"61\":\"family\",\"62\":\"double-decker\"}', '', 0, 0, 0, 109, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(373, 14.99, '{\"63\":\"small\",\"64\":\"hand-tosset\"}', '', 0, 0, 0, 110, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(374, 15.99, '{\"63\":\"small\",\"64\":\"thin-crust\"}', '', 0, 0, 0, 110, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(375, 16.99, '{\"63\":\"small\",\"64\":\"double-decker\"}', '', 0, 0, 0, 110, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(376, 17.99, '{\"63\":\"medium\",\"64\":\"hand-tosset\"}', '', 0, 0, 0, 110, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(377, 18.99, '{\"63\":\"medium\",\"64\":\"thin-crust\"}', '', 0, 0, 0, 110, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(378, 19.99, '{\"63\":\"medium\",\"64\":\"double-decker\"}', '', 0, 0, 0, 110, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(379, 20.99, '{\"63\":\"large\",\"64\":\"hand-tosset\"}', '', 0, 0, 0, 110, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(380, 21.99, '{\"63\":\"large\",\"64\":\"thin-crust\"}', '', 0, 0, 0, 110, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(381, 22.99, '{\"63\":\"large\",\"64\":\"double-decker\"}', '', 0, 0, 0, 110, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(382, 23.99, '{\"63\":\"family\",\"64\":\"hand-tosset\"}', '', 0, 0, 0, 110, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(383, 24.99, '{\"63\":\"family\",\"64\":\"thin-crust\"}', '', 0, 0, 0, 110, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(384, 25.99, '{\"63\":\"family\",\"64\":\"double-decker\"}', '', 0, 0, 0, 110, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0);
INSERT INTO `variants` (`id`, `price`, `options`, `image`, `qty`, `enable_qty`, `order`, `item_id`, `created_at`, `updated_at`, `deleted_at`, `is_system`) VALUES
(385, 14.99, '{\"65\":\"small\",\"66\":\"hand-tosset\"}', '', 0, 0, 0, 111, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(386, 15.99, '{\"65\":\"small\",\"66\":\"thin-crust\"}', '', 0, 0, 0, 111, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(387, 16.99, '{\"65\":\"small\",\"66\":\"double-decker\"}', '', 0, 0, 0, 111, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(388, 17.99, '{\"65\":\"medium\",\"66\":\"hand-tosset\"}', '', 0, 0, 0, 111, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(389, 18.99, '{\"65\":\"medium\",\"66\":\"thin-crust\"}', '', 0, 0, 0, 111, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(390, 19.99, '{\"65\":\"medium\",\"66\":\"double-decker\"}', '', 0, 0, 0, 111, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(391, 20.99, '{\"65\":\"large\",\"66\":\"hand-tosset\"}', '', 0, 0, 0, 111, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(392, 21.99, '{\"65\":\"large\",\"66\":\"thin-crust\"}', '', 0, 0, 0, 111, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(393, 22.99, '{\"65\":\"large\",\"66\":\"double-decker\"}', '', 0, 0, 0, 111, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(394, 23.99, '{\"65\":\"family\",\"66\":\"hand-tosset\"}', '', 0, 0, 0, 111, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(395, 24.99, '{\"65\":\"family\",\"66\":\"thin-crust\"}', '', 0, 0, 0, 111, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(396, 25.99, '{\"65\":\"family\",\"66\":\"double-decker\"}', '', 0, 0, 0, 111, '2021-10-04 13:23:18', '2021-10-04 13:23:18', NULL, 0),
(397, 10.99, '{\"67\":\"small\",\"68\":\"hand-tosset\"}', '', 0, 0, 0, 150, '2021-10-04 13:23:19', '2021-10-04 13:23:19', NULL, 0),
(398, 11.99, '{\"67\":\"small\",\"68\":\"thin-crust\"}', '', 0, 0, 0, 150, '2021-10-04 13:23:19', '2021-10-04 13:23:19', NULL, 0),
(399, 12.99, '{\"67\":\"small\",\"68\":\"double-decker\"}', '', 0, 0, 0, 150, '2021-10-04 13:23:19', '2021-10-04 13:23:19', NULL, 0),
(400, 13.99, '{\"67\":\"medium\",\"68\":\"hand-tosset\"}', '', 0, 0, 0, 150, '2021-10-04 13:23:19', '2021-10-04 13:23:19', NULL, 0),
(401, 14.99, '{\"67\":\"medium\",\"68\":\"thin-crust\"}', '', 0, 0, 0, 150, '2021-10-04 13:23:19', '2021-10-04 13:23:19', NULL, 0),
(402, 15.99, '{\"67\":\"medium\",\"68\":\"double-decker\"}', '', 0, 0, 0, 150, '2021-10-04 13:23:19', '2021-10-04 13:23:19', NULL, 0),
(403, 16.99, '{\"67\":\"large\",\"68\":\"hand-tosset\"}', '', 0, 0, 0, 150, '2021-10-04 13:23:19', '2021-10-04 13:23:19', NULL, 0),
(404, 17.99, '{\"67\":\"large\",\"68\":\"thin-crust\"}', '', 0, 0, 0, 150, '2021-10-04 13:23:19', '2021-10-04 13:23:19', NULL, 0),
(405, 18.99, '{\"67\":\"large\",\"68\":\"double-decker\"}', '', 0, 0, 0, 150, '2021-10-04 13:23:19', '2021-10-04 13:23:19', NULL, 0),
(406, 19.99, '{\"67\":\"family\",\"68\":\"hand-tosset\"}', '', 0, 0, 0, 150, '2021-10-04 13:23:19', '2021-10-04 13:23:19', NULL, 0),
(407, 20.99, '{\"67\":\"family\",\"68\":\"thin-crust\"}', '', 0, 0, 0, 150, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(408, 21.99, '{\"67\":\"family\",\"68\":\"double-decker\"}', '', 0, 0, 0, 150, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(409, 14.99, '{\"69\":\"small\",\"70\":\"hand-tosset\"}', '', 0, 0, 0, 151, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(410, 15.99, '{\"69\":\"small\",\"70\":\"thin-crust\"}', '', 0, 0, 0, 151, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(411, 16.99, '{\"69\":\"small\",\"70\":\"double-decker\"}', '', 0, 0, 0, 151, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(412, 17.99, '{\"69\":\"medium\",\"70\":\"hand-tosset\"}', '', 0, 0, 0, 151, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(413, 18.99, '{\"69\":\"medium\",\"70\":\"thin-crust\"}', '', 0, 0, 0, 151, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(414, 19.99, '{\"69\":\"medium\",\"70\":\"double-decker\"}', '', 0, 0, 0, 151, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(415, 20.99, '{\"69\":\"large\",\"70\":\"hand-tosset\"}', '', 0, 0, 0, 151, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(416, 21.99, '{\"69\":\"large\",\"70\":\"thin-crust\"}', '', 0, 0, 0, 151, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(417, 22.99, '{\"69\":\"large\",\"70\":\"double-decker\"}', '', 0, 0, 0, 151, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(418, 23.99, '{\"69\":\"family\",\"70\":\"hand-tosset\"}', '', 0, 0, 0, 151, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(419, 24.99, '{\"69\":\"family\",\"70\":\"thin-crust\"}', '', 0, 0, 0, 151, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(420, 25.99, '{\"69\":\"family\",\"70\":\"double-decker\"}', '', 0, 0, 0, 151, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(421, 14.99, '{\"71\":\"small\",\"72\":\"hand-tosset\"}', '', 0, 0, 0, 152, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(422, 15.99, '{\"71\":\"small\",\"72\":\"thin-crust\"}', '', 0, 0, 0, 152, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(423, 16.99, '{\"71\":\"small\",\"72\":\"double-decker\"}', '', 0, 0, 0, 152, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(424, 17.99, '{\"71\":\"medium\",\"72\":\"hand-tosset\"}', '', 0, 0, 0, 152, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(425, 18.99, '{\"71\":\"medium\",\"72\":\"thin-crust\"}', '', 0, 0, 0, 152, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(426, 19.99, '{\"71\":\"medium\",\"72\":\"double-decker\"}', '', 0, 0, 0, 152, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(427, 20.99, '{\"71\":\"large\",\"72\":\"hand-tosset\"}', '', 0, 0, 0, 152, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(428, 21.99, '{\"71\":\"large\",\"72\":\"thin-crust\"}', '', 0, 0, 0, 152, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(429, 22.99, '{\"71\":\"large\",\"72\":\"double-decker\"}', '', 0, 0, 0, 152, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(430, 23.99, '{\"71\":\"family\",\"72\":\"hand-tosset\"}', '', 0, 0, 0, 152, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(431, 24.99, '{\"71\":\"family\",\"72\":\"thin-crust\"}', '', 0, 0, 0, 152, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(432, 25.99, '{\"71\":\"family\",\"72\":\"double-decker\"}', '', 0, 0, 0, 152, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(433, 14.99, '{\"73\":\"small\",\"74\":\"hand-tosset\"}', '', 0, 0, 0, 153, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(434, 15.99, '{\"73\":\"small\",\"74\":\"thin-crust\"}', '', 0, 0, 0, 153, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(435, 16.99, '{\"73\":\"small\",\"74\":\"double-decker\"}', '', 0, 0, 0, 153, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(436, 17.99, '{\"73\":\"medium\",\"74\":\"hand-tosset\"}', '', 0, 0, 0, 153, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(437, 18.99, '{\"73\":\"medium\",\"74\":\"thin-crust\"}', '', 0, 0, 0, 153, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(438, 19.99, '{\"73\":\"medium\",\"74\":\"double-decker\"}', '', 0, 0, 0, 153, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(439, 20.99, '{\"73\":\"large\",\"74\":\"hand-tosset\"}', '', 0, 0, 0, 153, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(440, 21.99, '{\"73\":\"large\",\"74\":\"thin-crust\"}', '', 0, 0, 0, 153, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(441, 22.99, '{\"73\":\"large\",\"74\":\"double-decker\"}', '', 0, 0, 0, 153, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(442, 23.99, '{\"73\":\"family\",\"74\":\"hand-tosset\"}', '', 0, 0, 0, 153, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(443, 24.99, '{\"73\":\"family\",\"74\":\"thin-crust\"}', '', 0, 0, 0, 153, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(444, 25.99, '{\"73\":\"family\",\"74\":\"double-decker\"}', '', 0, 0, 0, 153, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(445, 14.99, '{\"75\":\"small\",\"76\":\"hand-tosset\"}', '', 0, 0, 0, 154, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(446, 15.99, '{\"75\":\"small\",\"76\":\"thin-crust\"}', '', 0, 0, 0, 154, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(447, 16.99, '{\"75\":\"small\",\"76\":\"double-decker\"}', '', 0, 0, 0, 154, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(448, 17.99, '{\"75\":\"medium\",\"76\":\"hand-tosset\"}', '', 0, 0, 0, 154, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(449, 18.99, '{\"75\":\"medium\",\"76\":\"thin-crust\"}', '', 0, 0, 0, 154, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(450, 19.99, '{\"75\":\"medium\",\"76\":\"double-decker\"}', '', 0, 0, 0, 154, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(451, 20.99, '{\"75\":\"large\",\"76\":\"hand-tosset\"}', '', 0, 0, 0, 154, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(452, 21.99, '{\"75\":\"large\",\"76\":\"thin-crust\"}', '', 0, 0, 0, 154, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(453, 22.99, '{\"75\":\"large\",\"76\":\"double-decker\"}', '', 0, 0, 0, 154, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(454, 23.99, '{\"75\":\"family\",\"76\":\"hand-tosset\"}', '', 0, 0, 0, 154, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(455, 24.99, '{\"75\":\"family\",\"76\":\"thin-crust\"}', '', 0, 0, 0, 154, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(456, 25.99, '{\"75\":\"family\",\"76\":\"double-decker\"}', '', 0, 0, 0, 154, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(457, 14.99, '{\"77\":\"small\",\"78\":\"hand-tosset\"}', '', 0, 0, 0, 155, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(458, 15.99, '{\"77\":\"small\",\"78\":\"thin-crust\"}', '', 0, 0, 0, 155, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(459, 16.99, '{\"77\":\"small\",\"78\":\"double-decker\"}', '', 0, 0, 0, 155, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(460, 17.99, '{\"77\":\"medium\",\"78\":\"hand-tosset\"}', '', 0, 0, 0, 155, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(461, 18.99, '{\"77\":\"medium\",\"78\":\"thin-crust\"}', '', 0, 0, 0, 155, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(462, 19.99, '{\"77\":\"medium\",\"78\":\"double-decker\"}', '', 0, 0, 0, 155, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(463, 20.99, '{\"77\":\"large\",\"78\":\"hand-tosset\"}', '', 0, 0, 0, 155, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(464, 21.99, '{\"77\":\"large\",\"78\":\"thin-crust\"}', '', 0, 0, 0, 155, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(465, 22.99, '{\"77\":\"large\",\"78\":\"double-decker\"}', '', 0, 0, 0, 155, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(466, 23.99, '{\"77\":\"family\",\"78\":\"hand-tosset\"}', '', 0, 0, 0, 155, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(467, 24.99, '{\"77\":\"family\",\"78\":\"thin-crust\"}', '', 0, 0, 0, 155, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(468, 25.99, '{\"77\":\"family\",\"78\":\"double-decker\"}', '', 0, 0, 0, 155, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(469, 10.49, '{\"79\":\"small\",\"80\":\"hand-tosset\"}', '', 0, 0, 0, 156, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(470, 11.49, '{\"79\":\"small\",\"80\":\"thin-crust\"}', '', 0, 0, 0, 156, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(471, 12.49, '{\"79\":\"small\",\"80\":\"double-decker\"}', '', 0, 0, 0, 156, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(472, 13.49, '{\"79\":\"medium\",\"80\":\"hand-tosset\"}', '', 0, 0, 0, 156, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(473, 14.49, '{\"79\":\"medium\",\"80\":\"thin-crust\"}', '', 0, 0, 0, 156, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(474, 15.49, '{\"79\":\"medium\",\"80\":\"double-decker\"}', '', 0, 0, 0, 156, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(475, 16.49, '{\"79\":\"large\",\"80\":\"hand-tosset\"}', '', 0, 0, 0, 156, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(476, 17.49, '{\"79\":\"large\",\"80\":\"thin-crust\"}', '', 0, 0, 0, 156, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(477, 18.49, '{\"79\":\"large\",\"80\":\"double-decker\"}', '', 0, 0, 0, 156, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(478, 19.49, '{\"79\":\"family\",\"80\":\"hand-tosset\"}', '', 0, 0, 0, 156, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(479, 20.49, '{\"79\":\"family\",\"80\":\"thin-crust\"}', '', 0, 0, 0, 156, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(480, 21.49, '{\"79\":\"family\",\"80\":\"double-decker\"}', '', 0, 0, 0, 156, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(481, 39.99, '{\"81\":\"small\",\"82\":\"hand-tosset\"}', '', 0, 0, 0, 157, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(482, 40.99, '{\"81\":\"small\",\"82\":\"thin-crust\"}', '', 0, 0, 0, 157, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(483, 41.99, '{\"81\":\"small\",\"82\":\"double-decker\"}', '', 0, 0, 0, 157, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(484, 42.99, '{\"81\":\"medium\",\"82\":\"hand-tosset\"}', '', 0, 0, 0, 157, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(485, 43.99, '{\"81\":\"medium\",\"82\":\"thin-crust\"}', '', 0, 0, 0, 157, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(486, 44.99, '{\"81\":\"medium\",\"82\":\"double-decker\"}', '', 0, 0, 0, 157, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(487, 45.99, '{\"81\":\"large\",\"82\":\"hand-tosset\"}', '', 0, 0, 0, 157, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(488, 46.99, '{\"81\":\"large\",\"82\":\"thin-crust\"}', '', 0, 0, 0, 157, '2021-10-04 13:23:20', '2021-10-04 13:23:20', NULL, 0),
(489, 47.99, '{\"81\":\"large\",\"82\":\"double-decker\"}', '', 0, 0, 0, 157, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(490, 48.99, '{\"81\":\"family\",\"82\":\"hand-tosset\"}', '', 0, 0, 0, 157, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(491, 49.99, '{\"81\":\"family\",\"82\":\"thin-crust\"}', '', 0, 0, 0, 157, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(492, 50.99, '{\"81\":\"family\",\"82\":\"double-decker\"}', '', 0, 0, 0, 157, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(493, 14.99, '{\"83\":\"small\",\"84\":\"hand-tosset\"}', '', 0, 0, 0, 158, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(494, 15.99, '{\"83\":\"small\",\"84\":\"thin-crust\"}', '', 0, 0, 0, 158, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(495, 16.99, '{\"83\":\"small\",\"84\":\"double-decker\"}', '', 0, 0, 0, 158, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(496, 17.99, '{\"83\":\"medium\",\"84\":\"hand-tosset\"}', '', 0, 0, 0, 158, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(497, 18.99, '{\"83\":\"medium\",\"84\":\"thin-crust\"}', '', 0, 0, 0, 158, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(498, 19.99, '{\"83\":\"medium\",\"84\":\"double-decker\"}', '', 0, 0, 0, 158, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(499, 20.99, '{\"83\":\"large\",\"84\":\"hand-tosset\"}', '', 0, 0, 0, 158, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(500, 21.99, '{\"83\":\"large\",\"84\":\"thin-crust\"}', '', 0, 0, 0, 158, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(501, 22.99, '{\"83\":\"large\",\"84\":\"double-decker\"}', '', 0, 0, 0, 158, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(502, 23.99, '{\"83\":\"family\",\"84\":\"hand-tosset\"}', '', 0, 0, 0, 158, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(503, 24.99, '{\"83\":\"family\",\"84\":\"thin-crust\"}', '', 0, 0, 0, 158, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(504, 25.99, '{\"83\":\"family\",\"84\":\"double-decker\"}', '', 0, 0, 0, 158, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(505, 14.99, '{\"85\":\"small\",\"86\":\"hand-tosset\"}', '', 0, 0, 0, 159, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(506, 15.99, '{\"85\":\"small\",\"86\":\"thin-crust\"}', '', 0, 0, 0, 159, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(507, 16.99, '{\"85\":\"small\",\"86\":\"double-decker\"}', '', 0, 0, 0, 159, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(508, 17.99, '{\"85\":\"medium\",\"86\":\"hand-tosset\"}', '', 0, 0, 0, 159, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(509, 18.99, '{\"85\":\"medium\",\"86\":\"thin-crust\"}', '', 0, 0, 0, 159, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(510, 19.99, '{\"85\":\"medium\",\"86\":\"double-decker\"}', '', 0, 0, 0, 159, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(511, 20.99, '{\"85\":\"large\",\"86\":\"hand-tosset\"}', '', 0, 0, 0, 159, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(512, 21.99, '{\"85\":\"large\",\"86\":\"thin-crust\"}', '', 0, 0, 0, 159, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(513, 22.99, '{\"85\":\"large\",\"86\":\"double-decker\"}', '', 0, 0, 0, 159, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(514, 23.99, '{\"85\":\"family\",\"86\":\"hand-tosset\"}', '', 0, 0, 0, 159, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(515, 24.99, '{\"85\":\"family\",\"86\":\"thin-crust\"}', '', 0, 0, 0, 159, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(516, 25.99, '{\"85\":\"family\",\"86\":\"double-decker\"}', '', 0, 0, 0, 159, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(517, 14.99, '{\"87\":\"small\",\"88\":\"hand-tosset\"}', '', 0, 0, 0, 160, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(518, 15.99, '{\"87\":\"small\",\"88\":\"thin-crust\"}', '', 0, 0, 0, 160, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(519, 16.99, '{\"87\":\"small\",\"88\":\"double-decker\"}', '', 0, 0, 0, 160, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(520, 17.99, '{\"87\":\"medium\",\"88\":\"hand-tosset\"}', '', 0, 0, 0, 160, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(521, 18.99, '{\"87\":\"medium\",\"88\":\"thin-crust\"}', '', 0, 0, 0, 160, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(522, 19.99, '{\"87\":\"medium\",\"88\":\"double-decker\"}', '', 0, 0, 0, 160, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(523, 20.99, '{\"87\":\"large\",\"88\":\"hand-tosset\"}', '', 0, 0, 0, 160, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(524, 21.99, '{\"87\":\"large\",\"88\":\"thin-crust\"}', '', 0, 0, 0, 160, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(525, 22.99, '{\"87\":\"large\",\"88\":\"double-decker\"}', '', 0, 0, 0, 160, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(526, 23.99, '{\"87\":\"family\",\"88\":\"hand-tosset\"}', '', 0, 0, 0, 160, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(527, 24.99, '{\"87\":\"family\",\"88\":\"thin-crust\"}', '', 0, 0, 0, 160, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(528, 25.99, '{\"87\":\"family\",\"88\":\"double-decker\"}', '', 0, 0, 0, 160, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(529, 10.99, '{\"89\":\"small\",\"90\":\"hand-tosset\"}', '', 0, 0, 0, 174, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(530, 11.99, '{\"89\":\"small\",\"90\":\"thin-crust\"}', '', 0, 0, 0, 174, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(531, 12.99, '{\"89\":\"small\",\"90\":\"double-decker\"}', '', 0, 0, 0, 174, '2021-10-04 13:23:21', '2021-10-04 13:23:21', NULL, 0),
(532, 13.99, '{\"89\":\"medium\",\"90\":\"hand-tosset\"}', '', 0, 0, 0, 174, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(533, 14.99, '{\"89\":\"medium\",\"90\":\"thin-crust\"}', '', 0, 0, 0, 174, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(534, 15.99, '{\"89\":\"medium\",\"90\":\"double-decker\"}', '', 0, 0, 0, 174, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(535, 16.99, '{\"89\":\"large\",\"90\":\"hand-tosset\"}', '', 0, 0, 0, 174, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(536, 17.99, '{\"89\":\"large\",\"90\":\"thin-crust\"}', '', 0, 0, 0, 174, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(537, 18.99, '{\"89\":\"large\",\"90\":\"double-decker\"}', '', 0, 0, 0, 174, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(538, 19.99, '{\"89\":\"family\",\"90\":\"hand-tosset\"}', '', 0, 0, 0, 174, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(539, 20.99, '{\"89\":\"family\",\"90\":\"thin-crust\"}', '', 0, 0, 0, 174, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(540, 21.99, '{\"89\":\"family\",\"90\":\"double-decker\"}', '', 0, 0, 0, 174, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(541, 14.99, '{\"91\":\"small\",\"92\":\"hand-tosset\"}', '', 0, 0, 0, 175, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(542, 15.99, '{\"91\":\"small\",\"92\":\"thin-crust\"}', '', 0, 0, 0, 175, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(543, 16.99, '{\"91\":\"small\",\"92\":\"double-decker\"}', '', 0, 0, 0, 175, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(544, 17.99, '{\"91\":\"medium\",\"92\":\"hand-tosset\"}', '', 0, 0, 0, 175, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(545, 18.99, '{\"91\":\"medium\",\"92\":\"thin-crust\"}', '', 0, 0, 0, 175, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(546, 19.99, '{\"91\":\"medium\",\"92\":\"double-decker\"}', '', 0, 0, 0, 175, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(547, 20.99, '{\"91\":\"large\",\"92\":\"hand-tosset\"}', '', 0, 0, 0, 175, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(548, 21.99, '{\"91\":\"large\",\"92\":\"thin-crust\"}', '', 0, 0, 0, 175, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(549, 22.99, '{\"91\":\"large\",\"92\":\"double-decker\"}', '', 0, 0, 0, 175, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(550, 23.99, '{\"91\":\"family\",\"92\":\"hand-tosset\"}', '', 0, 0, 0, 175, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(551, 24.99, '{\"91\":\"family\",\"92\":\"thin-crust\"}', '', 0, 0, 0, 175, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(552, 25.99, '{\"91\":\"family\",\"92\":\"double-decker\"}', '', 0, 0, 0, 175, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(553, 14.99, '{\"93\":\"small\",\"94\":\"hand-tosset\"}', '', 0, 0, 0, 176, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(554, 15.99, '{\"93\":\"small\",\"94\":\"thin-crust\"}', '', 0, 0, 0, 176, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(555, 16.99, '{\"93\":\"small\",\"94\":\"double-decker\"}', '', 0, 0, 0, 176, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(556, 17.99, '{\"93\":\"medium\",\"94\":\"hand-tosset\"}', '', 0, 0, 0, 176, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(557, 18.99, '{\"93\":\"medium\",\"94\":\"thin-crust\"}', '', 0, 0, 0, 176, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(558, 19.99, '{\"93\":\"medium\",\"94\":\"double-decker\"}', '', 0, 0, 0, 176, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(559, 20.99, '{\"93\":\"large\",\"94\":\"hand-tosset\"}', '', 0, 0, 0, 176, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(560, 21.99, '{\"93\":\"large\",\"94\":\"thin-crust\"}', '', 0, 0, 0, 176, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(561, 22.99, '{\"93\":\"large\",\"94\":\"double-decker\"}', '', 0, 0, 0, 176, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(562, 23.99, '{\"93\":\"family\",\"94\":\"hand-tosset\"}', '', 0, 0, 0, 176, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(563, 24.99, '{\"93\":\"family\",\"94\":\"thin-crust\"}', '', 0, 0, 0, 176, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(564, 25.99, '{\"93\":\"family\",\"94\":\"double-decker\"}', '', 0, 0, 0, 176, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(565, 14.99, '{\"95\":\"small\",\"96\":\"hand-tosset\"}', '', 0, 0, 0, 177, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(566, 15.99, '{\"95\":\"small\",\"96\":\"thin-crust\"}', '', 0, 0, 0, 177, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(567, 16.99, '{\"95\":\"small\",\"96\":\"double-decker\"}', '', 0, 0, 0, 177, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(568, 17.99, '{\"95\":\"medium\",\"96\":\"hand-tosset\"}', '', 0, 0, 0, 177, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(569, 18.99, '{\"95\":\"medium\",\"96\":\"thin-crust\"}', '', 0, 0, 0, 177, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(570, 19.99, '{\"95\":\"medium\",\"96\":\"double-decker\"}', '', 0, 0, 0, 177, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(571, 20.99, '{\"95\":\"large\",\"96\":\"hand-tosset\"}', '', 0, 0, 0, 177, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(572, 21.99, '{\"95\":\"large\",\"96\":\"thin-crust\"}', '', 0, 0, 0, 177, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(573, 22.99, '{\"95\":\"large\",\"96\":\"double-decker\"}', '', 0, 0, 0, 177, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(574, 23.99, '{\"95\":\"family\",\"96\":\"hand-tosset\"}', '', 0, 0, 0, 177, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(575, 24.99, '{\"95\":\"family\",\"96\":\"thin-crust\"}', '', 0, 0, 0, 177, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(576, 25.99, '{\"95\":\"family\",\"96\":\"double-decker\"}', '', 0, 0, 0, 177, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(577, 14.99, '{\"97\":\"small\",\"98\":\"hand-tosset\"}', '', 0, 0, 0, 178, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(578, 15.99, '{\"97\":\"small\",\"98\":\"thin-crust\"}', '', 0, 0, 0, 178, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(579, 16.99, '{\"97\":\"small\",\"98\":\"double-decker\"}', '', 0, 0, 0, 178, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(580, 17.99, '{\"97\":\"medium\",\"98\":\"hand-tosset\"}', '', 0, 0, 0, 178, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(581, 18.99, '{\"97\":\"medium\",\"98\":\"thin-crust\"}', '', 0, 0, 0, 178, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(582, 19.99, '{\"97\":\"medium\",\"98\":\"double-decker\"}', '', 0, 0, 0, 178, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(583, 20.99, '{\"97\":\"large\",\"98\":\"hand-tosset\"}', '', 0, 0, 0, 178, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(584, 21.99, '{\"97\":\"large\",\"98\":\"thin-crust\"}', '', 0, 0, 0, 178, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(585, 22.99, '{\"97\":\"large\",\"98\":\"double-decker\"}', '', 0, 0, 0, 178, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(586, 23.99, '{\"97\":\"family\",\"98\":\"hand-tosset\"}', '', 0, 0, 0, 178, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(587, 24.99, '{\"97\":\"family\",\"98\":\"thin-crust\"}', '', 0, 0, 0, 178, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(588, 25.99, '{\"97\":\"family\",\"98\":\"double-decker\"}', '', 0, 0, 0, 178, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(589, 14.99, '{\"99\":\"small\",\"100\":\"hand-tosset\"}', '', 0, 0, 0, 179, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(590, 15.99, '{\"99\":\"small\",\"100\":\"thin-crust\"}', '', 0, 0, 0, 179, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(591, 16.99, '{\"99\":\"small\",\"100\":\"double-decker\"}', '', 0, 0, 0, 179, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(592, 17.99, '{\"99\":\"medium\",\"100\":\"hand-tosset\"}', '', 0, 0, 0, 179, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(593, 18.99, '{\"99\":\"medium\",\"100\":\"thin-crust\"}', '', 0, 0, 0, 179, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(594, 19.99, '{\"99\":\"medium\",\"100\":\"double-decker\"}', '', 0, 0, 0, 179, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(595, 20.99, '{\"99\":\"large\",\"100\":\"hand-tosset\"}', '', 0, 0, 0, 179, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(596, 21.99, '{\"99\":\"large\",\"100\":\"thin-crust\"}', '', 0, 0, 0, 179, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(597, 22.99, '{\"99\":\"large\",\"100\":\"double-decker\"}', '', 0, 0, 0, 179, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(598, 23.99, '{\"99\":\"family\",\"100\":\"hand-tosset\"}', '', 0, 0, 0, 179, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(599, 24.99, '{\"99\":\"family\",\"100\":\"thin-crust\"}', '', 0, 0, 0, 179, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(600, 25.99, '{\"99\":\"family\",\"100\":\"double-decker\"}', '', 0, 0, 0, 179, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(601, 10.49, '{\"101\":\"small\",\"102\":\"hand-tosset\"}', '', 0, 0, 0, 180, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(602, 11.49, '{\"101\":\"small\",\"102\":\"thin-crust\"}', '', 0, 0, 0, 180, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(603, 12.49, '{\"101\":\"small\",\"102\":\"double-decker\"}', '', 0, 0, 0, 180, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(604, 13.49, '{\"101\":\"medium\",\"102\":\"hand-tosset\"}', '', 0, 0, 0, 180, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(605, 14.49, '{\"101\":\"medium\",\"102\":\"thin-crust\"}', '', 0, 0, 0, 180, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(606, 15.49, '{\"101\":\"medium\",\"102\":\"double-decker\"}', '', 0, 0, 0, 180, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(607, 16.49, '{\"101\":\"large\",\"102\":\"hand-tosset\"}', '', 0, 0, 0, 180, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(608, 17.49, '{\"101\":\"large\",\"102\":\"thin-crust\"}', '', 0, 0, 0, 180, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(609, 18.49, '{\"101\":\"large\",\"102\":\"double-decker\"}', '', 0, 0, 0, 180, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(610, 19.49, '{\"101\":\"family\",\"102\":\"hand-tosset\"}', '', 0, 0, 0, 180, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(611, 20.49, '{\"101\":\"family\",\"102\":\"thin-crust\"}', '', 0, 0, 0, 180, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(612, 21.49, '{\"101\":\"family\",\"102\":\"double-decker\"}', '', 0, 0, 0, 180, '2021-10-04 13:23:22', '2021-10-04 13:23:22', NULL, 0),
(613, 39.99, '{\"103\":\"small\",\"104\":\"hand-tosset\"}', '', 0, 0, 0, 181, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(614, 40.99, '{\"103\":\"small\",\"104\":\"thin-crust\"}', '', 0, 0, 0, 181, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(615, 41.99, '{\"103\":\"small\",\"104\":\"double-decker\"}', '', 0, 0, 0, 181, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(616, 42.99, '{\"103\":\"medium\",\"104\":\"hand-tosset\"}', '', 0, 0, 0, 181, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(617, 43.99, '{\"103\":\"medium\",\"104\":\"thin-crust\"}', '', 0, 0, 0, 181, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(618, 44.99, '{\"103\":\"medium\",\"104\":\"double-decker\"}', '', 0, 0, 0, 181, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(619, 45.99, '{\"103\":\"large\",\"104\":\"hand-tosset\"}', '', 0, 0, 0, 181, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(620, 46.99, '{\"103\":\"large\",\"104\":\"thin-crust\"}', '', 0, 0, 0, 181, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(621, 47.99, '{\"103\":\"large\",\"104\":\"double-decker\"}', '', 0, 0, 0, 181, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(622, 48.99, '{\"103\":\"family\",\"104\":\"hand-tosset\"}', '', 0, 0, 0, 181, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(623, 49.99, '{\"103\":\"family\",\"104\":\"thin-crust\"}', '', 0, 0, 0, 181, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(624, 50.99, '{\"103\":\"family\",\"104\":\"double-decker\"}', '', 0, 0, 0, 181, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(625, 14.99, '{\"105\":\"small\",\"106\":\"hand-tosset\"}', '', 0, 0, 0, 182, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(626, 15.99, '{\"105\":\"small\",\"106\":\"thin-crust\"}', '', 0, 0, 0, 182, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(627, 16.99, '{\"105\":\"small\",\"106\":\"double-decker\"}', '', 0, 0, 0, 182, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(628, 17.99, '{\"105\":\"medium\",\"106\":\"hand-tosset\"}', '', 0, 0, 0, 182, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(629, 18.99, '{\"105\":\"medium\",\"106\":\"thin-crust\"}', '', 0, 0, 0, 182, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(630, 19.99, '{\"105\":\"medium\",\"106\":\"double-decker\"}', '', 0, 0, 0, 182, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(631, 20.99, '{\"105\":\"large\",\"106\":\"hand-tosset\"}', '', 0, 0, 0, 182, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(632, 21.99, '{\"105\":\"large\",\"106\":\"thin-crust\"}', '', 0, 0, 0, 182, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(633, 22.99, '{\"105\":\"large\",\"106\":\"double-decker\"}', '', 0, 0, 0, 182, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(634, 23.99, '{\"105\":\"family\",\"106\":\"hand-tosset\"}', '', 0, 0, 0, 182, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(635, 24.99, '{\"105\":\"family\",\"106\":\"thin-crust\"}', '', 0, 0, 0, 182, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(636, 25.99, '{\"105\":\"family\",\"106\":\"double-decker\"}', '', 0, 0, 0, 182, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(637, 14.99, '{\"107\":\"small\",\"108\":\"hand-tosset\"}', '', 0, 0, 0, 183, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(638, 15.99, '{\"107\":\"small\",\"108\":\"thin-crust\"}', '', 0, 0, 0, 183, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(639, 16.99, '{\"107\":\"small\",\"108\":\"double-decker\"}', '', 0, 0, 0, 183, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(640, 17.99, '{\"107\":\"medium\",\"108\":\"hand-tosset\"}', '', 0, 0, 0, 183, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(641, 18.99, '{\"107\":\"medium\",\"108\":\"thin-crust\"}', '', 0, 0, 0, 183, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(642, 19.99, '{\"107\":\"medium\",\"108\":\"double-decker\"}', '', 0, 0, 0, 183, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(643, 20.99, '{\"107\":\"large\",\"108\":\"hand-tosset\"}', '', 0, 0, 0, 183, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(644, 21.99, '{\"107\":\"large\",\"108\":\"thin-crust\"}', '', 0, 0, 0, 183, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(645, 22.99, '{\"107\":\"large\",\"108\":\"double-decker\"}', '', 0, 0, 0, 183, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(646, 23.99, '{\"107\":\"family\",\"108\":\"hand-tosset\"}', '', 0, 0, 0, 183, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(647, 24.99, '{\"107\":\"family\",\"108\":\"thin-crust\"}', '', 0, 0, 0, 183, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(648, 25.99, '{\"107\":\"family\",\"108\":\"double-decker\"}', '', 0, 0, 0, 183, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(649, 14.99, '{\"109\":\"small\",\"110\":\"hand-tosset\"}', '', 0, 0, 0, 184, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(650, 15.99, '{\"109\":\"small\",\"110\":\"thin-crust\"}', '', 0, 0, 0, 184, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(651, 16.99, '{\"109\":\"small\",\"110\":\"double-decker\"}', '', 0, 0, 0, 184, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(652, 17.99, '{\"109\":\"medium\",\"110\":\"hand-tosset\"}', '', 0, 0, 0, 184, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(653, 18.99, '{\"109\":\"medium\",\"110\":\"thin-crust\"}', '', 0, 0, 0, 184, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(654, 19.99, '{\"109\":\"medium\",\"110\":\"double-decker\"}', '', 0, 0, 0, 184, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(655, 20.99, '{\"109\":\"large\",\"110\":\"hand-tosset\"}', '', 0, 0, 0, 184, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(656, 21.99, '{\"109\":\"large\",\"110\":\"thin-crust\"}', '', 0, 0, 0, 184, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(657, 22.99, '{\"109\":\"large\",\"110\":\"double-decker\"}', '', 0, 0, 0, 184, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(658, 23.99, '{\"109\":\"family\",\"110\":\"hand-tosset\"}', '', 0, 0, 0, 184, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(659, 24.99, '{\"109\":\"family\",\"110\":\"thin-crust\"}', '', 0, 0, 0, 184, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(660, 25.99, '{\"109\":\"family\",\"110\":\"double-decker\"}', '', 0, 0, 0, 184, '2021-10-04 13:23:23', '2021-10-04 13:23:23', NULL, 0),
(661, 10.99, '{\"111\":\"small\",\"112\":\"hand-tosset\"}', '', 0, 0, 0, 231, '2021-10-04 13:23:24', '2021-10-04 13:23:24', NULL, 0),
(662, 11.99, '{\"111\":\"small\",\"112\":\"thin-crust\"}', '', 0, 0, 0, 231, '2021-10-04 13:23:24', '2021-10-04 13:23:24', NULL, 0),
(663, 12.99, '{\"111\":\"small\",\"112\":\"double-decker\"}', '', 0, 0, 0, 231, '2021-10-04 13:23:24', '2021-10-04 13:23:24', NULL, 0),
(664, 13.99, '{\"111\":\"medium\",\"112\":\"hand-tosset\"}', '', 0, 0, 0, 231, '2021-10-04 13:23:24', '2021-10-04 13:23:24', NULL, 0),
(665, 14.99, '{\"111\":\"medium\",\"112\":\"thin-crust\"}', '', 0, 0, 0, 231, '2021-10-04 13:23:24', '2021-10-04 13:23:24', NULL, 0),
(666, 15.99, '{\"111\":\"medium\",\"112\":\"double-decker\"}', '', 0, 0, 0, 231, '2021-10-04 13:23:24', '2021-10-04 13:23:24', NULL, 0),
(667, 16.99, '{\"111\":\"large\",\"112\":\"hand-tosset\"}', '', 0, 0, 0, 231, '2021-10-04 13:23:24', '2021-10-04 13:23:24', NULL, 0),
(668, 17.99, '{\"111\":\"large\",\"112\":\"thin-crust\"}', '', 0, 0, 0, 231, '2021-10-04 13:23:24', '2021-10-04 13:23:24', NULL, 0),
(669, 18.99, '{\"111\":\"large\",\"112\":\"double-decker\"}', '', 0, 0, 0, 231, '2021-10-04 13:23:24', '2021-10-04 13:23:24', NULL, 0),
(670, 19.99, '{\"111\":\"family\",\"112\":\"hand-tosset\"}', '', 0, 0, 0, 231, '2021-10-04 13:23:24', '2021-10-04 13:23:24', NULL, 0),
(671, 20.99, '{\"111\":\"family\",\"112\":\"thin-crust\"}', '', 0, 0, 0, 231, '2021-10-04 13:23:24', '2021-10-04 13:23:24', NULL, 0),
(672, 21.99, '{\"111\":\"family\",\"112\":\"double-decker\"}', '', 0, 0, 0, 231, '2021-10-04 13:23:24', '2021-10-04 13:23:24', NULL, 0),
(673, 14.99, '{\"113\":\"small\",\"114\":\"hand-tosset\"}', '', 0, 0, 0, 232, '2021-10-04 13:23:24', '2021-10-04 13:23:24', NULL, 0),
(674, 15.99, '{\"113\":\"small\",\"114\":\"thin-crust\"}', '', 0, 0, 0, 232, '2021-10-04 13:23:24', '2021-10-04 13:23:24', NULL, 0),
(675, 16.99, '{\"113\":\"small\",\"114\":\"double-decker\"}', '', 0, 0, 0, 232, '2021-10-04 13:23:24', '2021-10-04 13:23:24', NULL, 0),
(676, 17.99, '{\"113\":\"medium\",\"114\":\"hand-tosset\"}', '', 0, 0, 0, 232, '2021-10-04 13:23:24', '2021-10-04 13:23:24', NULL, 0),
(677, 18.99, '{\"113\":\"medium\",\"114\":\"thin-crust\"}', '', 0, 0, 0, 232, '2021-10-04 13:23:24', '2021-10-04 13:23:24', NULL, 0),
(678, 19.99, '{\"113\":\"medium\",\"114\":\"double-decker\"}', '', 0, 0, 0, 232, '2021-10-04 13:23:24', '2021-10-04 13:23:24', NULL, 0),
(679, 20.99, '{\"113\":\"large\",\"114\":\"hand-tosset\"}', '', 0, 0, 0, 232, '2021-10-04 13:23:24', '2021-10-04 13:23:24', NULL, 0),
(680, 21.99, '{\"113\":\"large\",\"114\":\"thin-crust\"}', '', 0, 0, 0, 232, '2021-10-04 13:23:24', '2021-10-04 13:23:24', NULL, 0),
(681, 22.99, '{\"113\":\"large\",\"114\":\"double-decker\"}', '', 0, 0, 0, 232, '2021-10-04 13:23:24', '2021-10-04 13:23:24', NULL, 0),
(682, 23.99, '{\"113\":\"family\",\"114\":\"hand-tosset\"}', '', 0, 0, 0, 232, '2021-10-04 13:23:24', '2021-10-04 13:23:24', NULL, 0),
(683, 24.99, '{\"113\":\"family\",\"114\":\"thin-crust\"}', '', 0, 0, 0, 232, '2021-10-04 13:23:24', '2021-10-04 13:23:24', NULL, 0),
(684, 25.99, '{\"113\":\"family\",\"114\":\"double-decker\"}', '', 0, 0, 0, 232, '2021-10-04 13:23:24', '2021-10-04 13:23:24', NULL, 0),
(685, 14.99, '{\"115\":\"small\",\"116\":\"hand-tosset\"}', '', 0, 0, 0, 233, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(686, 15.99, '{\"115\":\"small\",\"116\":\"thin-crust\"}', '', 0, 0, 0, 233, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(687, 16.99, '{\"115\":\"small\",\"116\":\"double-decker\"}', '', 0, 0, 0, 233, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(688, 17.99, '{\"115\":\"medium\",\"116\":\"hand-tosset\"}', '', 0, 0, 0, 233, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(689, 18.99, '{\"115\":\"medium\",\"116\":\"thin-crust\"}', '', 0, 0, 0, 233, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(690, 19.99, '{\"115\":\"medium\",\"116\":\"double-decker\"}', '', 0, 0, 0, 233, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(691, 20.99, '{\"115\":\"large\",\"116\":\"hand-tosset\"}', '', 0, 0, 0, 233, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(692, 21.99, '{\"115\":\"large\",\"116\":\"thin-crust\"}', '', 0, 0, 0, 233, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(693, 22.99, '{\"115\":\"large\",\"116\":\"double-decker\"}', '', 0, 0, 0, 233, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(694, 23.99, '{\"115\":\"family\",\"116\":\"hand-tosset\"}', '', 0, 0, 0, 233, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(695, 24.99, '{\"115\":\"family\",\"116\":\"thin-crust\"}', '', 0, 0, 0, 233, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(696, 25.99, '{\"115\":\"family\",\"116\":\"double-decker\"}', '', 0, 0, 0, 233, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(697, 14.99, '{\"117\":\"small\",\"118\":\"hand-tosset\"}', '', 0, 0, 0, 234, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(698, 15.99, '{\"117\":\"small\",\"118\":\"thin-crust\"}', '', 0, 0, 0, 234, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(699, 16.99, '{\"117\":\"small\",\"118\":\"double-decker\"}', '', 0, 0, 0, 234, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(700, 17.99, '{\"117\":\"medium\",\"118\":\"hand-tosset\"}', '', 0, 0, 0, 234, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(701, 18.99, '{\"117\":\"medium\",\"118\":\"thin-crust\"}', '', 0, 0, 0, 234, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(702, 19.99, '{\"117\":\"medium\",\"118\":\"double-decker\"}', '', 0, 0, 0, 234, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(703, 20.99, '{\"117\":\"large\",\"118\":\"hand-tosset\"}', '', 0, 0, 0, 234, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(704, 21.99, '{\"117\":\"large\",\"118\":\"thin-crust\"}', '', 0, 0, 0, 234, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(705, 22.99, '{\"117\":\"large\",\"118\":\"double-decker\"}', '', 0, 0, 0, 234, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(706, 23.99, '{\"117\":\"family\",\"118\":\"hand-tosset\"}', '', 0, 0, 0, 234, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(707, 24.99, '{\"117\":\"family\",\"118\":\"thin-crust\"}', '', 0, 0, 0, 234, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(708, 25.99, '{\"117\":\"family\",\"118\":\"double-decker\"}', '', 0, 0, 0, 234, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(709, 14.99, '{\"119\":\"small\",\"120\":\"hand-tosset\"}', '', 0, 0, 0, 235, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(710, 15.99, '{\"119\":\"small\",\"120\":\"thin-crust\"}', '', 0, 0, 0, 235, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(711, 16.99, '{\"119\":\"small\",\"120\":\"double-decker\"}', '', 0, 0, 0, 235, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(712, 17.99, '{\"119\":\"medium\",\"120\":\"hand-tosset\"}', '', 0, 0, 0, 235, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(713, 18.99, '{\"119\":\"medium\",\"120\":\"thin-crust\"}', '', 0, 0, 0, 235, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(714, 19.99, '{\"119\":\"medium\",\"120\":\"double-decker\"}', '', 0, 0, 0, 235, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(715, 20.99, '{\"119\":\"large\",\"120\":\"hand-tosset\"}', '', 0, 0, 0, 235, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(716, 21.99, '{\"119\":\"large\",\"120\":\"thin-crust\"}', '', 0, 0, 0, 235, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(717, 22.99, '{\"119\":\"large\",\"120\":\"double-decker\"}', '', 0, 0, 0, 235, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(718, 23.99, '{\"119\":\"family\",\"120\":\"hand-tosset\"}', '', 0, 0, 0, 235, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(719, 24.99, '{\"119\":\"family\",\"120\":\"thin-crust\"}', '', 0, 0, 0, 235, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(720, 25.99, '{\"119\":\"family\",\"120\":\"double-decker\"}', '', 0, 0, 0, 235, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(721, 14.99, '{\"121\":\"small\",\"122\":\"hand-tosset\"}', '', 0, 0, 0, 236, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(722, 15.99, '{\"121\":\"small\",\"122\":\"thin-crust\"}', '', 0, 0, 0, 236, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(723, 16.99, '{\"121\":\"small\",\"122\":\"double-decker\"}', '', 0, 0, 0, 236, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(724, 17.99, '{\"121\":\"medium\",\"122\":\"hand-tosset\"}', '', 0, 0, 0, 236, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(725, 18.99, '{\"121\":\"medium\",\"122\":\"thin-crust\"}', '', 0, 0, 0, 236, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(726, 19.99, '{\"121\":\"medium\",\"122\":\"double-decker\"}', '', 0, 0, 0, 236, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(727, 20.99, '{\"121\":\"large\",\"122\":\"hand-tosset\"}', '', 0, 0, 0, 236, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(728, 21.99, '{\"121\":\"large\",\"122\":\"thin-crust\"}', '', 0, 0, 0, 236, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(729, 22.99, '{\"121\":\"large\",\"122\":\"double-decker\"}', '', 0, 0, 0, 236, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(730, 23.99, '{\"121\":\"family\",\"122\":\"hand-tosset\"}', '', 0, 0, 0, 236, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(731, 24.99, '{\"121\":\"family\",\"122\":\"thin-crust\"}', '', 0, 0, 0, 236, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(732, 25.99, '{\"121\":\"family\",\"122\":\"double-decker\"}', '', 0, 0, 0, 236, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(733, 10.49, '{\"123\":\"small\",\"124\":\"hand-tosset\"}', '', 0, 0, 0, 237, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(734, 11.49, '{\"123\":\"small\",\"124\":\"thin-crust\"}', '', 0, 0, 0, 237, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(735, 12.49, '{\"123\":\"small\",\"124\":\"double-decker\"}', '', 0, 0, 0, 237, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(736, 13.49, '{\"123\":\"medium\",\"124\":\"hand-tosset\"}', '', 0, 0, 0, 237, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(737, 14.49, '{\"123\":\"medium\",\"124\":\"thin-crust\"}', '', 0, 0, 0, 237, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(738, 15.49, '{\"123\":\"medium\",\"124\":\"double-decker\"}', '', 0, 0, 0, 237, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(739, 16.49, '{\"123\":\"large\",\"124\":\"hand-tosset\"}', '', 0, 0, 0, 237, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(740, 17.49, '{\"123\":\"large\",\"124\":\"thin-crust\"}', '', 0, 0, 0, 237, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(741, 18.49, '{\"123\":\"large\",\"124\":\"double-decker\"}', '', 0, 0, 0, 237, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(742, 19.49, '{\"123\":\"family\",\"124\":\"hand-tosset\"}', '', 0, 0, 0, 237, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(743, 20.49, '{\"123\":\"family\",\"124\":\"thin-crust\"}', '', 0, 0, 0, 237, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(744, 21.49, '{\"123\":\"family\",\"124\":\"double-decker\"}', '', 0, 0, 0, 237, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(745, 39.99, '{\"125\":\"small\",\"126\":\"hand-tosset\"}', '', 0, 0, 0, 238, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(746, 40.99, '{\"125\":\"small\",\"126\":\"thin-crust\"}', '', 0, 0, 0, 238, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(747, 41.99, '{\"125\":\"small\",\"126\":\"double-decker\"}', '', 0, 0, 0, 238, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(748, 42.99, '{\"125\":\"medium\",\"126\":\"hand-tosset\"}', '', 0, 0, 0, 238, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(749, 43.99, '{\"125\":\"medium\",\"126\":\"thin-crust\"}', '', 0, 0, 0, 238, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(750, 44.99, '{\"125\":\"medium\",\"126\":\"double-decker\"}', '', 0, 0, 0, 238, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(751, 45.99, '{\"125\":\"large\",\"126\":\"hand-tosset\"}', '', 0, 0, 0, 238, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(752, 46.99, '{\"125\":\"large\",\"126\":\"thin-crust\"}', '', 0, 0, 0, 238, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(753, 47.99, '{\"125\":\"large\",\"126\":\"double-decker\"}', '', 0, 0, 0, 238, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(754, 48.99, '{\"125\":\"family\",\"126\":\"hand-tosset\"}', '', 0, 0, 0, 238, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(755, 49.99, '{\"125\":\"family\",\"126\":\"thin-crust\"}', '', 0, 0, 0, 238, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(756, 50.99, '{\"125\":\"family\",\"126\":\"double-decker\"}', '', 0, 0, 0, 238, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(757, 14.99, '{\"127\":\"small\",\"128\":\"hand-tosset\"}', '', 0, 0, 0, 239, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(758, 15.99, '{\"127\":\"small\",\"128\":\"thin-crust\"}', '', 0, 0, 0, 239, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(759, 16.99, '{\"127\":\"small\",\"128\":\"double-decker\"}', '', 0, 0, 0, 239, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(760, 17.99, '{\"127\":\"medium\",\"128\":\"hand-tosset\"}', '', 0, 0, 0, 239, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(761, 18.99, '{\"127\":\"medium\",\"128\":\"thin-crust\"}', '', 0, 0, 0, 239, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(762, 19.99, '{\"127\":\"medium\",\"128\":\"double-decker\"}', '', 0, 0, 0, 239, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0);
INSERT INTO `variants` (`id`, `price`, `options`, `image`, `qty`, `enable_qty`, `order`, `item_id`, `created_at`, `updated_at`, `deleted_at`, `is_system`) VALUES
(763, 20.99, '{\"127\":\"large\",\"128\":\"hand-tosset\"}', '', 0, 0, 0, 239, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(764, 21.99, '{\"127\":\"large\",\"128\":\"thin-crust\"}', '', 0, 0, 0, 239, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(765, 22.99, '{\"127\":\"large\",\"128\":\"double-decker\"}', '', 0, 0, 0, 239, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(766, 23.99, '{\"127\":\"family\",\"128\":\"hand-tosset\"}', '', 0, 0, 0, 239, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(767, 24.99, '{\"127\":\"family\",\"128\":\"thin-crust\"}', '', 0, 0, 0, 239, '2021-10-04 13:23:25', '2021-10-04 13:23:25', NULL, 0),
(768, 25.99, '{\"127\":\"family\",\"128\":\"double-decker\"}', '', 0, 0, 0, 239, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(769, 14.99, '{\"129\":\"small\",\"130\":\"hand-tosset\"}', '', 0, 0, 0, 240, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(770, 15.99, '{\"129\":\"small\",\"130\":\"thin-crust\"}', '', 0, 0, 0, 240, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(771, 16.99, '{\"129\":\"small\",\"130\":\"double-decker\"}', '', 0, 0, 0, 240, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(772, 17.99, '{\"129\":\"medium\",\"130\":\"hand-tosset\"}', '', 0, 0, 0, 240, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(773, 18.99, '{\"129\":\"medium\",\"130\":\"thin-crust\"}', '', 0, 0, 0, 240, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(774, 19.99, '{\"129\":\"medium\",\"130\":\"double-decker\"}', '', 0, 0, 0, 240, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(775, 20.99, '{\"129\":\"large\",\"130\":\"hand-tosset\"}', '', 0, 0, 0, 240, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(776, 21.99, '{\"129\":\"large\",\"130\":\"thin-crust\"}', '', 0, 0, 0, 240, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(777, 22.99, '{\"129\":\"large\",\"130\":\"double-decker\"}', '', 0, 0, 0, 240, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(778, 23.99, '{\"129\":\"family\",\"130\":\"hand-tosset\"}', '', 0, 0, 0, 240, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(779, 24.99, '{\"129\":\"family\",\"130\":\"thin-crust\"}', '', 0, 0, 0, 240, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(780, 25.99, '{\"129\":\"family\",\"130\":\"double-decker\"}', '', 0, 0, 0, 240, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(781, 14.99, '{\"131\":\"small\",\"132\":\"hand-tosset\"}', '', 0, 0, 0, 241, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(782, 15.99, '{\"131\":\"small\",\"132\":\"thin-crust\"}', '', 0, 0, 0, 241, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(783, 16.99, '{\"131\":\"small\",\"132\":\"double-decker\"}', '', 0, 0, 0, 241, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(784, 17.99, '{\"131\":\"medium\",\"132\":\"hand-tosset\"}', '', 0, 0, 0, 241, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(785, 18.99, '{\"131\":\"medium\",\"132\":\"thin-crust\"}', '', 0, 0, 0, 241, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(786, 19.99, '{\"131\":\"medium\",\"132\":\"double-decker\"}', '', 0, 0, 0, 241, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(787, 20.99, '{\"131\":\"large\",\"132\":\"hand-tosset\"}', '', 0, 0, 0, 241, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(788, 21.99, '{\"131\":\"large\",\"132\":\"thin-crust\"}', '', 0, 0, 0, 241, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(789, 22.99, '{\"131\":\"large\",\"132\":\"double-decker\"}', '', 0, 0, 0, 241, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(790, 23.99, '{\"131\":\"family\",\"132\":\"hand-tosset\"}', '', 0, 0, 0, 241, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(791, 24.99, '{\"131\":\"family\",\"132\":\"thin-crust\"}', '', 0, 0, 0, 241, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(792, 25.99, '{\"131\":\"family\",\"132\":\"double-decker\"}', '', 0, 0, 0, 241, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(793, 10.99, '{\"133\":\"small\",\"134\":\"hand-tosset\"}', '', 0, 0, 0, 265, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(794, 11.99, '{\"133\":\"small\",\"134\":\"thin-crust\"}', '', 0, 0, 0, 265, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(795, 12.99, '{\"133\":\"small\",\"134\":\"double-decker\"}', '', 0, 0, 0, 265, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(796, 13.99, '{\"133\":\"medium\",\"134\":\"hand-tosset\"}', '', 0, 0, 0, 265, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(797, 14.99, '{\"133\":\"medium\",\"134\":\"thin-crust\"}', '', 0, 0, 0, 265, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(798, 15.99, '{\"133\":\"medium\",\"134\":\"double-decker\"}', '', 0, 0, 0, 265, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(799, 16.99, '{\"133\":\"large\",\"134\":\"hand-tosset\"}', '', 0, 0, 0, 265, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(800, 17.99, '{\"133\":\"large\",\"134\":\"thin-crust\"}', '', 0, 0, 0, 265, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(801, 18.99, '{\"133\":\"large\",\"134\":\"double-decker\"}', '', 0, 0, 0, 265, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(802, 19.99, '{\"133\":\"family\",\"134\":\"hand-tosset\"}', '', 0, 0, 0, 265, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(803, 20.99, '{\"133\":\"family\",\"134\":\"thin-crust\"}', '', 0, 0, 0, 265, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(804, 21.99, '{\"133\":\"family\",\"134\":\"double-decker\"}', '', 0, 0, 0, 265, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(805, 14.99, '{\"135\":\"small\",\"136\":\"hand-tosset\"}', '', 0, 0, 0, 266, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(806, 15.99, '{\"135\":\"small\",\"136\":\"thin-crust\"}', '', 0, 0, 0, 266, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(807, 16.99, '{\"135\":\"small\",\"136\":\"double-decker\"}', '', 0, 0, 0, 266, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(808, 17.99, '{\"135\":\"medium\",\"136\":\"hand-tosset\"}', '', 0, 0, 0, 266, '2021-10-04 13:23:26', '2021-10-04 13:23:26', NULL, 0),
(809, 18.99, '{\"135\":\"medium\",\"136\":\"thin-crust\"}', '', 0, 0, 0, 266, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(810, 19.99, '{\"135\":\"medium\",\"136\":\"double-decker\"}', '', 0, 0, 0, 266, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(811, 20.99, '{\"135\":\"large\",\"136\":\"hand-tosset\"}', '', 0, 0, 0, 266, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(812, 21.99, '{\"135\":\"large\",\"136\":\"thin-crust\"}', '', 0, 0, 0, 266, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(813, 22.99, '{\"135\":\"large\",\"136\":\"double-decker\"}', '', 0, 0, 0, 266, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(814, 23.99, '{\"135\":\"family\",\"136\":\"hand-tosset\"}', '', 0, 0, 0, 266, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(815, 24.99, '{\"135\":\"family\",\"136\":\"thin-crust\"}', '', 0, 0, 0, 266, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(816, 25.99, '{\"135\":\"family\",\"136\":\"double-decker\"}', '', 0, 0, 0, 266, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(817, 14.99, '{\"137\":\"small\",\"138\":\"hand-tosset\"}', '', 0, 0, 0, 267, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(818, 15.99, '{\"137\":\"small\",\"138\":\"thin-crust\"}', '', 0, 0, 0, 267, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(819, 16.99, '{\"137\":\"small\",\"138\":\"double-decker\"}', '', 0, 0, 0, 267, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(820, 17.99, '{\"137\":\"medium\",\"138\":\"hand-tosset\"}', '', 0, 0, 0, 267, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(821, 18.99, '{\"137\":\"medium\",\"138\":\"thin-crust\"}', '', 0, 0, 0, 267, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(822, 19.99, '{\"137\":\"medium\",\"138\":\"double-decker\"}', '', 0, 0, 0, 267, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(823, 20.99, '{\"137\":\"large\",\"138\":\"hand-tosset\"}', '', 0, 0, 0, 267, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(824, 21.99, '{\"137\":\"large\",\"138\":\"thin-crust\"}', '', 0, 0, 0, 267, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(825, 22.99, '{\"137\":\"large\",\"138\":\"double-decker\"}', '', 0, 0, 0, 267, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(826, 23.99, '{\"137\":\"family\",\"138\":\"hand-tosset\"}', '', 0, 0, 0, 267, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(827, 24.99, '{\"137\":\"family\",\"138\":\"thin-crust\"}', '', 0, 0, 0, 267, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(828, 25.99, '{\"137\":\"family\",\"138\":\"double-decker\"}', '', 0, 0, 0, 267, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(829, 14.99, '{\"139\":\"small\",\"140\":\"hand-tosset\"}', '', 0, 0, 0, 268, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(830, 15.99, '{\"139\":\"small\",\"140\":\"thin-crust\"}', '', 0, 0, 0, 268, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(831, 16.99, '{\"139\":\"small\",\"140\":\"double-decker\"}', '', 0, 0, 0, 268, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(832, 17.99, '{\"139\":\"medium\",\"140\":\"hand-tosset\"}', '', 0, 0, 0, 268, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(833, 18.99, '{\"139\":\"medium\",\"140\":\"thin-crust\"}', '', 0, 0, 0, 268, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(834, 19.99, '{\"139\":\"medium\",\"140\":\"double-decker\"}', '', 0, 0, 0, 268, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(835, 20.99, '{\"139\":\"large\",\"140\":\"hand-tosset\"}', '', 0, 0, 0, 268, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(836, 21.99, '{\"139\":\"large\",\"140\":\"thin-crust\"}', '', 0, 0, 0, 268, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(837, 22.99, '{\"139\":\"large\",\"140\":\"double-decker\"}', '', 0, 0, 0, 268, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(838, 23.99, '{\"139\":\"family\",\"140\":\"hand-tosset\"}', '', 0, 0, 0, 268, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(839, 24.99, '{\"139\":\"family\",\"140\":\"thin-crust\"}', '', 0, 0, 0, 268, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(840, 25.99, '{\"139\":\"family\",\"140\":\"double-decker\"}', '', 0, 0, 0, 268, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(841, 14.99, '{\"141\":\"small\",\"142\":\"hand-tosset\"}', '', 0, 0, 0, 269, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(842, 15.99, '{\"141\":\"small\",\"142\":\"thin-crust\"}', '', 0, 0, 0, 269, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(843, 16.99, '{\"141\":\"small\",\"142\":\"double-decker\"}', '', 0, 0, 0, 269, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(844, 17.99, '{\"141\":\"medium\",\"142\":\"hand-tosset\"}', '', 0, 0, 0, 269, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(845, 18.99, '{\"141\":\"medium\",\"142\":\"thin-crust\"}', '', 0, 0, 0, 269, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(846, 19.99, '{\"141\":\"medium\",\"142\":\"double-decker\"}', '', 0, 0, 0, 269, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(847, 20.99, '{\"141\":\"large\",\"142\":\"hand-tosset\"}', '', 0, 0, 0, 269, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(848, 21.99, '{\"141\":\"large\",\"142\":\"thin-crust\"}', '', 0, 0, 0, 269, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(849, 22.99, '{\"141\":\"large\",\"142\":\"double-decker\"}', '', 0, 0, 0, 269, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(850, 23.99, '{\"141\":\"family\",\"142\":\"hand-tosset\"}', '', 0, 0, 0, 269, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(851, 24.99, '{\"141\":\"family\",\"142\":\"thin-crust\"}', '', 0, 0, 0, 269, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(852, 25.99, '{\"141\":\"family\",\"142\":\"double-decker\"}', '', 0, 0, 0, 269, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(853, 14.99, '{\"143\":\"small\",\"144\":\"hand-tosset\"}', '', 0, 0, 0, 270, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(854, 15.99, '{\"143\":\"small\",\"144\":\"thin-crust\"}', '', 0, 0, 0, 270, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(855, 16.99, '{\"143\":\"small\",\"144\":\"double-decker\"}', '', 0, 0, 0, 270, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(856, 17.99, '{\"143\":\"medium\",\"144\":\"hand-tosset\"}', '', 0, 0, 0, 270, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(857, 18.99, '{\"143\":\"medium\",\"144\":\"thin-crust\"}', '', 0, 0, 0, 270, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(858, 19.99, '{\"143\":\"medium\",\"144\":\"double-decker\"}', '', 0, 0, 0, 270, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(859, 20.99, '{\"143\":\"large\",\"144\":\"hand-tosset\"}', '', 0, 0, 0, 270, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(860, 21.99, '{\"143\":\"large\",\"144\":\"thin-crust\"}', '', 0, 0, 0, 270, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(861, 22.99, '{\"143\":\"large\",\"144\":\"double-decker\"}', '', 0, 0, 0, 270, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(862, 23.99, '{\"143\":\"family\",\"144\":\"hand-tosset\"}', '', 0, 0, 0, 270, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(863, 24.99, '{\"143\":\"family\",\"144\":\"thin-crust\"}', '', 0, 0, 0, 270, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(864, 25.99, '{\"143\":\"family\",\"144\":\"double-decker\"}', '', 0, 0, 0, 270, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(865, 10.49, '{\"145\":\"small\",\"146\":\"hand-tosset\"}', '', 0, 0, 0, 271, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(866, 11.49, '{\"145\":\"small\",\"146\":\"thin-crust\"}', '', 0, 0, 0, 271, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(867, 12.49, '{\"145\":\"small\",\"146\":\"double-decker\"}', '', 0, 0, 0, 271, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(868, 13.49, '{\"145\":\"medium\",\"146\":\"hand-tosset\"}', '', 0, 0, 0, 271, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(869, 14.49, '{\"145\":\"medium\",\"146\":\"thin-crust\"}', '', 0, 0, 0, 271, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(870, 15.49, '{\"145\":\"medium\",\"146\":\"double-decker\"}', '', 0, 0, 0, 271, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(871, 16.49, '{\"145\":\"large\",\"146\":\"hand-tosset\"}', '', 0, 0, 0, 271, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(872, 17.49, '{\"145\":\"large\",\"146\":\"thin-crust\"}', '', 0, 0, 0, 271, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(873, 18.49, '{\"145\":\"large\",\"146\":\"double-decker\"}', '', 0, 0, 0, 271, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(874, 19.49, '{\"145\":\"family\",\"146\":\"hand-tosset\"}', '', 0, 0, 0, 271, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(875, 20.49, '{\"145\":\"family\",\"146\":\"thin-crust\"}', '', 0, 0, 0, 271, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(876, 21.49, '{\"145\":\"family\",\"146\":\"double-decker\"}', '', 0, 0, 0, 271, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(877, 39.99, '{\"147\":\"small\",\"148\":\"hand-tosset\"}', '', 0, 0, 0, 272, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(878, 40.99, '{\"147\":\"small\",\"148\":\"thin-crust\"}', '', 0, 0, 0, 272, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(879, 41.99, '{\"147\":\"small\",\"148\":\"double-decker\"}', '', 0, 0, 0, 272, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(880, 42.99, '{\"147\":\"medium\",\"148\":\"hand-tosset\"}', '', 0, 0, 0, 272, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(881, 43.99, '{\"147\":\"medium\",\"148\":\"thin-crust\"}', '', 0, 0, 0, 272, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(882, 44.99, '{\"147\":\"medium\",\"148\":\"double-decker\"}', '', 0, 0, 0, 272, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(883, 45.99, '{\"147\":\"large\",\"148\":\"hand-tosset\"}', '', 0, 0, 0, 272, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(884, 46.99, '{\"147\":\"large\",\"148\":\"thin-crust\"}', '', 0, 0, 0, 272, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(885, 47.99, '{\"147\":\"large\",\"148\":\"double-decker\"}', '', 0, 0, 0, 272, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(886, 48.99, '{\"147\":\"family\",\"148\":\"hand-tosset\"}', '', 0, 0, 0, 272, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(887, 49.99, '{\"147\":\"family\",\"148\":\"thin-crust\"}', '', 0, 0, 0, 272, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(888, 50.99, '{\"147\":\"family\",\"148\":\"double-decker\"}', '', 0, 0, 0, 272, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(889, 14.99, '{\"149\":\"small\",\"150\":\"hand-tosset\"}', '', 0, 0, 0, 273, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(890, 15.99, '{\"149\":\"small\",\"150\":\"thin-crust\"}', '', 0, 0, 0, 273, '2021-10-04 13:23:27', '2021-10-04 13:23:27', NULL, 0),
(891, 16.99, '{\"149\":\"small\",\"150\":\"double-decker\"}', '', 0, 0, 0, 273, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(892, 17.99, '{\"149\":\"medium\",\"150\":\"hand-tosset\"}', '', 0, 0, 0, 273, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(893, 18.99, '{\"149\":\"medium\",\"150\":\"thin-crust\"}', '', 0, 0, 0, 273, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(894, 19.99, '{\"149\":\"medium\",\"150\":\"double-decker\"}', '', 0, 0, 0, 273, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(895, 20.99, '{\"149\":\"large\",\"150\":\"hand-tosset\"}', '', 0, 0, 0, 273, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(896, 21.99, '{\"149\":\"large\",\"150\":\"thin-crust\"}', '', 0, 0, 0, 273, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(897, 22.99, '{\"149\":\"large\",\"150\":\"double-decker\"}', '', 0, 0, 0, 273, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(898, 23.99, '{\"149\":\"family\",\"150\":\"hand-tosset\"}', '', 0, 0, 0, 273, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(899, 24.99, '{\"149\":\"family\",\"150\":\"thin-crust\"}', '', 0, 0, 0, 273, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(900, 25.99, '{\"149\":\"family\",\"150\":\"double-decker\"}', '', 0, 0, 0, 273, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(901, 14.99, '{\"151\":\"small\",\"152\":\"hand-tosset\"}', '', 0, 0, 0, 274, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(902, 15.99, '{\"151\":\"small\",\"152\":\"thin-crust\"}', '', 0, 0, 0, 274, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(903, 16.99, '{\"151\":\"small\",\"152\":\"double-decker\"}', '', 0, 0, 0, 274, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(904, 17.99, '{\"151\":\"medium\",\"152\":\"hand-tosset\"}', '', 0, 0, 0, 274, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(905, 18.99, '{\"151\":\"medium\",\"152\":\"thin-crust\"}', '', 0, 0, 0, 274, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(906, 19.99, '{\"151\":\"medium\",\"152\":\"double-decker\"}', '', 0, 0, 0, 274, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(907, 20.99, '{\"151\":\"large\",\"152\":\"hand-tosset\"}', '', 0, 0, 0, 274, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(908, 21.99, '{\"151\":\"large\",\"152\":\"thin-crust\"}', '', 0, 0, 0, 274, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(909, 22.99, '{\"151\":\"large\",\"152\":\"double-decker\"}', '', 0, 0, 0, 274, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(910, 23.99, '{\"151\":\"family\",\"152\":\"hand-tosset\"}', '', 0, 0, 0, 274, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(911, 24.99, '{\"151\":\"family\",\"152\":\"thin-crust\"}', '', 0, 0, 0, 274, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(912, 25.99, '{\"151\":\"family\",\"152\":\"double-decker\"}', '', 0, 0, 0, 274, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(913, 14.99, '{\"153\":\"small\",\"154\":\"hand-tosset\"}', '', 0, 0, 0, 275, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(914, 15.99, '{\"153\":\"small\",\"154\":\"thin-crust\"}', '', 0, 0, 0, 275, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(915, 16.99, '{\"153\":\"small\",\"154\":\"double-decker\"}', '', 0, 0, 0, 275, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(916, 17.99, '{\"153\":\"medium\",\"154\":\"hand-tosset\"}', '', 0, 0, 0, 275, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(917, 18.99, '{\"153\":\"medium\",\"154\":\"thin-crust\"}', '', 0, 0, 0, 275, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(918, 19.99, '{\"153\":\"medium\",\"154\":\"double-decker\"}', '', 0, 0, 0, 275, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(919, 20.99, '{\"153\":\"large\",\"154\":\"hand-tosset\"}', '', 0, 0, 0, 275, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(920, 21.99, '{\"153\":\"large\",\"154\":\"thin-crust\"}', '', 0, 0, 0, 275, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(921, 22.99, '{\"153\":\"large\",\"154\":\"double-decker\"}', '', 0, 0, 0, 275, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(922, 23.99, '{\"153\":\"family\",\"154\":\"hand-tosset\"}', '', 0, 0, 0, 275, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(923, 24.99, '{\"153\":\"family\",\"154\":\"thin-crust\"}', '', 0, 0, 0, 275, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(924, 25.99, '{\"153\":\"family\",\"154\":\"double-decker\"}', '', 0, 0, 0, 275, '2021-10-04 13:23:28', '2021-10-04 13:23:28', NULL, 0),
(925, 10.99, '{\"155\":\"small\",\"156\":\"hand-tosset\"}', '', 0, 0, 0, 320, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(926, 11.99, '{\"155\":\"small\",\"156\":\"thin-crust\"}', '', 0, 0, 0, 320, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(927, 12.99, '{\"155\":\"small\",\"156\":\"double-decker\"}', '', 0, 0, 0, 320, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(928, 13.99, '{\"155\":\"medium\",\"156\":\"hand-tosset\"}', '', 0, 0, 0, 320, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(929, 14.99, '{\"155\":\"medium\",\"156\":\"thin-crust\"}', '', 0, 0, 0, 320, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(930, 15.99, '{\"155\":\"medium\",\"156\":\"double-decker\"}', '', 0, 0, 0, 320, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(931, 16.99, '{\"155\":\"large\",\"156\":\"hand-tosset\"}', '', 0, 0, 0, 320, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(932, 17.99, '{\"155\":\"large\",\"156\":\"thin-crust\"}', '', 0, 0, 0, 320, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(933, 18.99, '{\"155\":\"large\",\"156\":\"double-decker\"}', '', 0, 0, 0, 320, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(934, 19.99, '{\"155\":\"family\",\"156\":\"hand-tosset\"}', '', 0, 0, 0, 320, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(935, 20.99, '{\"155\":\"family\",\"156\":\"thin-crust\"}', '', 0, 0, 0, 320, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(936, 21.99, '{\"155\":\"family\",\"156\":\"double-decker\"}', '', 0, 0, 0, 320, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(937, 14.99, '{\"157\":\"small\",\"158\":\"hand-tosset\"}', '', 0, 0, 0, 321, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(938, 15.99, '{\"157\":\"small\",\"158\":\"thin-crust\"}', '', 0, 0, 0, 321, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(939, 16.99, '{\"157\":\"small\",\"158\":\"double-decker\"}', '', 0, 0, 0, 321, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(940, 17.99, '{\"157\":\"medium\",\"158\":\"hand-tosset\"}', '', 0, 0, 0, 321, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(941, 18.99, '{\"157\":\"medium\",\"158\":\"thin-crust\"}', '', 0, 0, 0, 321, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(942, 19.99, '{\"157\":\"medium\",\"158\":\"double-decker\"}', '', 0, 0, 0, 321, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(943, 20.99, '{\"157\":\"large\",\"158\":\"hand-tosset\"}', '', 0, 0, 0, 321, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(944, 21.99, '{\"157\":\"large\",\"158\":\"thin-crust\"}', '', 0, 0, 0, 321, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(945, 22.99, '{\"157\":\"large\",\"158\":\"double-decker\"}', '', 0, 0, 0, 321, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(946, 23.99, '{\"157\":\"family\",\"158\":\"hand-tosset\"}', '', 0, 0, 0, 321, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(947, 24.99, '{\"157\":\"family\",\"158\":\"thin-crust\"}', '', 0, 0, 0, 321, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(948, 25.99, '{\"157\":\"family\",\"158\":\"double-decker\"}', '', 0, 0, 0, 321, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(949, 14.99, '{\"159\":\"small\",\"160\":\"hand-tosset\"}', '', 0, 0, 0, 322, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(950, 15.99, '{\"159\":\"small\",\"160\":\"thin-crust\"}', '', 0, 0, 0, 322, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(951, 16.99, '{\"159\":\"small\",\"160\":\"double-decker\"}', '', 0, 0, 0, 322, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(952, 17.99, '{\"159\":\"medium\",\"160\":\"hand-tosset\"}', '', 0, 0, 0, 322, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(953, 18.99, '{\"159\":\"medium\",\"160\":\"thin-crust\"}', '', 0, 0, 0, 322, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(954, 19.99, '{\"159\":\"medium\",\"160\":\"double-decker\"}', '', 0, 0, 0, 322, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(955, 20.99, '{\"159\":\"large\",\"160\":\"hand-tosset\"}', '', 0, 0, 0, 322, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(956, 21.99, '{\"159\":\"large\",\"160\":\"thin-crust\"}', '', 0, 0, 0, 322, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(957, 22.99, '{\"159\":\"large\",\"160\":\"double-decker\"}', '', 0, 0, 0, 322, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(958, 23.99, '{\"159\":\"family\",\"160\":\"hand-tosset\"}', '', 0, 0, 0, 322, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(959, 24.99, '{\"159\":\"family\",\"160\":\"thin-crust\"}', '', 0, 0, 0, 322, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(960, 25.99, '{\"159\":\"family\",\"160\":\"double-decker\"}', '', 0, 0, 0, 322, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(961, 14.99, '{\"161\":\"small\",\"162\":\"hand-tosset\"}', '', 0, 0, 0, 323, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(962, 15.99, '{\"161\":\"small\",\"162\":\"thin-crust\"}', '', 0, 0, 0, 323, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(963, 16.99, '{\"161\":\"small\",\"162\":\"double-decker\"}', '', 0, 0, 0, 323, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(964, 17.99, '{\"161\":\"medium\",\"162\":\"hand-tosset\"}', '', 0, 0, 0, 323, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(965, 18.99, '{\"161\":\"medium\",\"162\":\"thin-crust\"}', '', 0, 0, 0, 323, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(966, 19.99, '{\"161\":\"medium\",\"162\":\"double-decker\"}', '', 0, 0, 0, 323, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(967, 20.99, '{\"161\":\"large\",\"162\":\"hand-tosset\"}', '', 0, 0, 0, 323, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(968, 21.99, '{\"161\":\"large\",\"162\":\"thin-crust\"}', '', 0, 0, 0, 323, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(969, 22.99, '{\"161\":\"large\",\"162\":\"double-decker\"}', '', 0, 0, 0, 323, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(970, 23.99, '{\"161\":\"family\",\"162\":\"hand-tosset\"}', '', 0, 0, 0, 323, '2021-10-04 13:23:29', '2021-10-04 13:23:29', NULL, 0),
(971, 24.99, '{\"161\":\"family\",\"162\":\"thin-crust\"}', '', 0, 0, 0, 323, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(972, 25.99, '{\"161\":\"family\",\"162\":\"double-decker\"}', '', 0, 0, 0, 323, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(973, 14.99, '{\"163\":\"small\",\"164\":\"hand-tosset\"}', '', 0, 0, 0, 324, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(974, 15.99, '{\"163\":\"small\",\"164\":\"thin-crust\"}', '', 0, 0, 0, 324, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(975, 16.99, '{\"163\":\"small\",\"164\":\"double-decker\"}', '', 0, 0, 0, 324, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(976, 17.99, '{\"163\":\"medium\",\"164\":\"hand-tosset\"}', '', 0, 0, 0, 324, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(977, 18.99, '{\"163\":\"medium\",\"164\":\"thin-crust\"}', '', 0, 0, 0, 324, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(978, 19.99, '{\"163\":\"medium\",\"164\":\"double-decker\"}', '', 0, 0, 0, 324, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(979, 20.99, '{\"163\":\"large\",\"164\":\"hand-tosset\"}', '', 0, 0, 0, 324, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(980, 21.99, '{\"163\":\"large\",\"164\":\"thin-crust\"}', '', 0, 0, 0, 324, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(981, 22.99, '{\"163\":\"large\",\"164\":\"double-decker\"}', '', 0, 0, 0, 324, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(982, 23.99, '{\"163\":\"family\",\"164\":\"hand-tosset\"}', '', 0, 0, 0, 324, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(983, 24.99, '{\"163\":\"family\",\"164\":\"thin-crust\"}', '', 0, 0, 0, 324, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(984, 25.99, '{\"163\":\"family\",\"164\":\"double-decker\"}', '', 0, 0, 0, 324, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(985, 14.99, '{\"165\":\"small\",\"166\":\"hand-tosset\"}', '', 0, 0, 0, 325, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(986, 15.99, '{\"165\":\"small\",\"166\":\"thin-crust\"}', '', 0, 0, 0, 325, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(987, 16.99, '{\"165\":\"small\",\"166\":\"double-decker\"}', '', 0, 0, 0, 325, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(988, 17.99, '{\"165\":\"medium\",\"166\":\"hand-tosset\"}', '', 0, 0, 0, 325, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(989, 18.99, '{\"165\":\"medium\",\"166\":\"thin-crust\"}', '', 0, 0, 0, 325, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(990, 19.99, '{\"165\":\"medium\",\"166\":\"double-decker\"}', '', 0, 0, 0, 325, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(991, 20.99, '{\"165\":\"large\",\"166\":\"hand-tosset\"}', '', 0, 0, 0, 325, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(992, 21.99, '{\"165\":\"large\",\"166\":\"thin-crust\"}', '', 0, 0, 0, 325, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(993, 22.99, '{\"165\":\"large\",\"166\":\"double-decker\"}', '', 0, 0, 0, 325, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(994, 23.99, '{\"165\":\"family\",\"166\":\"hand-tosset\"}', '', 0, 0, 0, 325, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(995, 24.99, '{\"165\":\"family\",\"166\":\"thin-crust\"}', '', 0, 0, 0, 325, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(996, 25.99, '{\"165\":\"family\",\"166\":\"double-decker\"}', '', 0, 0, 0, 325, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(997, 10.49, '{\"167\":\"small\",\"168\":\"hand-tosset\"}', '', 0, 0, 0, 326, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(998, 11.49, '{\"167\":\"small\",\"168\":\"thin-crust\"}', '', 0, 0, 0, 326, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(999, 12.49, '{\"167\":\"small\",\"168\":\"double-decker\"}', '', 0, 0, 0, 326, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1000, 13.49, '{\"167\":\"medium\",\"168\":\"hand-tosset\"}', '', 0, 0, 0, 326, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1001, 14.49, '{\"167\":\"medium\",\"168\":\"thin-crust\"}', '', 0, 0, 0, 326, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1002, 15.49, '{\"167\":\"medium\",\"168\":\"double-decker\"}', '', 0, 0, 0, 326, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1003, 16.49, '{\"167\":\"large\",\"168\":\"hand-tosset\"}', '', 0, 0, 0, 326, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1004, 17.49, '{\"167\":\"large\",\"168\":\"thin-crust\"}', '', 0, 0, 0, 326, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1005, 18.49, '{\"167\":\"large\",\"168\":\"double-decker\"}', '', 0, 0, 0, 326, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1006, 19.49, '{\"167\":\"family\",\"168\":\"hand-tosset\"}', '', 0, 0, 0, 326, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1007, 20.49, '{\"167\":\"family\",\"168\":\"thin-crust\"}', '', 0, 0, 0, 326, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1008, 21.49, '{\"167\":\"family\",\"168\":\"double-decker\"}', '', 0, 0, 0, 326, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1009, 39.99, '{\"169\":\"small\",\"170\":\"hand-tosset\"}', '', 0, 0, 0, 327, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1010, 40.99, '{\"169\":\"small\",\"170\":\"thin-crust\"}', '', 0, 0, 0, 327, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1011, 41.99, '{\"169\":\"small\",\"170\":\"double-decker\"}', '', 0, 0, 0, 327, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1012, 42.99, '{\"169\":\"medium\",\"170\":\"hand-tosset\"}', '', 0, 0, 0, 327, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1013, 43.99, '{\"169\":\"medium\",\"170\":\"thin-crust\"}', '', 0, 0, 0, 327, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1014, 44.99, '{\"169\":\"medium\",\"170\":\"double-decker\"}', '', 0, 0, 0, 327, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1015, 45.99, '{\"169\":\"large\",\"170\":\"hand-tosset\"}', '', 0, 0, 0, 327, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1016, 46.99, '{\"169\":\"large\",\"170\":\"thin-crust\"}', '', 0, 0, 0, 327, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1017, 47.99, '{\"169\":\"large\",\"170\":\"double-decker\"}', '', 0, 0, 0, 327, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1018, 48.99, '{\"169\":\"family\",\"170\":\"hand-tosset\"}', '', 0, 0, 0, 327, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1019, 49.99, '{\"169\":\"family\",\"170\":\"thin-crust\"}', '', 0, 0, 0, 327, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1020, 50.99, '{\"169\":\"family\",\"170\":\"double-decker\"}', '', 0, 0, 0, 327, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1021, 14.99, '{\"171\":\"small\",\"172\":\"hand-tosset\"}', '', 0, 0, 0, 328, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1022, 15.99, '{\"171\":\"small\",\"172\":\"thin-crust\"}', '', 0, 0, 0, 328, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1023, 16.99, '{\"171\":\"small\",\"172\":\"double-decker\"}', '', 0, 0, 0, 328, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1024, 17.99, '{\"171\":\"medium\",\"172\":\"hand-tosset\"}', '', 0, 0, 0, 328, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1025, 18.99, '{\"171\":\"medium\",\"172\":\"thin-crust\"}', '', 0, 0, 0, 328, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1026, 19.99, '{\"171\":\"medium\",\"172\":\"double-decker\"}', '', 0, 0, 0, 328, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1027, 20.99, '{\"171\":\"large\",\"172\":\"hand-tosset\"}', '', 0, 0, 0, 328, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1028, 21.99, '{\"171\":\"large\",\"172\":\"thin-crust\"}', '', 0, 0, 0, 328, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1029, 22.99, '{\"171\":\"large\",\"172\":\"double-decker\"}', '', 0, 0, 0, 328, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1030, 23.99, '{\"171\":\"family\",\"172\":\"hand-tosset\"}', '', 0, 0, 0, 328, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1031, 24.99, '{\"171\":\"family\",\"172\":\"thin-crust\"}', '', 0, 0, 0, 328, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1032, 25.99, '{\"171\":\"family\",\"172\":\"double-decker\"}', '', 0, 0, 0, 328, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1033, 14.99, '{\"173\":\"small\",\"174\":\"hand-tosset\"}', '', 0, 0, 0, 329, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1034, 15.99, '{\"173\":\"small\",\"174\":\"thin-crust\"}', '', 0, 0, 0, 329, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1035, 16.99, '{\"173\":\"small\",\"174\":\"double-decker\"}', '', 0, 0, 0, 329, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1036, 17.99, '{\"173\":\"medium\",\"174\":\"hand-tosset\"}', '', 0, 0, 0, 329, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1037, 18.99, '{\"173\":\"medium\",\"174\":\"thin-crust\"}', '', 0, 0, 0, 329, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1038, 19.99, '{\"173\":\"medium\",\"174\":\"double-decker\"}', '', 0, 0, 0, 329, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1039, 20.99, '{\"173\":\"large\",\"174\":\"hand-tosset\"}', '', 0, 0, 0, 329, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1040, 21.99, '{\"173\":\"large\",\"174\":\"thin-crust\"}', '', 0, 0, 0, 329, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1041, 22.99, '{\"173\":\"large\",\"174\":\"double-decker\"}', '', 0, 0, 0, 329, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1042, 23.99, '{\"173\":\"family\",\"174\":\"hand-tosset\"}', '', 0, 0, 0, 329, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1043, 24.99, '{\"173\":\"family\",\"174\":\"thin-crust\"}', '', 0, 0, 0, 329, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1044, 25.99, '{\"173\":\"family\",\"174\":\"double-decker\"}', '', 0, 0, 0, 329, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1045, 14.99, '{\"175\":\"small\",\"176\":\"hand-tosset\"}', '', 0, 0, 0, 330, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1046, 15.99, '{\"175\":\"small\",\"176\":\"thin-crust\"}', '', 0, 0, 0, 330, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1047, 16.99, '{\"175\":\"small\",\"176\":\"double-decker\"}', '', 0, 0, 0, 330, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1048, 17.99, '{\"175\":\"medium\",\"176\":\"hand-tosset\"}', '', 0, 0, 0, 330, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1049, 18.99, '{\"175\":\"medium\",\"176\":\"thin-crust\"}', '', 0, 0, 0, 330, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1050, 19.99, '{\"175\":\"medium\",\"176\":\"double-decker\"}', '', 0, 0, 0, 330, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1051, 20.99, '{\"175\":\"large\",\"176\":\"hand-tosset\"}', '', 0, 0, 0, 330, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1052, 21.99, '{\"175\":\"large\",\"176\":\"thin-crust\"}', '', 0, 0, 0, 330, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1053, 22.99, '{\"175\":\"large\",\"176\":\"double-decker\"}', '', 0, 0, 0, 330, '2021-10-04 13:23:30', '2021-10-04 13:23:30', NULL, 0),
(1054, 23.99, '{\"175\":\"family\",\"176\":\"hand-tosset\"}', '', 0, 0, 0, 330, '2021-10-04 13:23:31', '2021-10-04 13:23:31', NULL, 0),
(1055, 24.99, '{\"175\":\"family\",\"176\":\"thin-crust\"}', '', 0, 0, 0, 330, '2021-10-04 13:23:31', '2021-10-04 13:23:31', NULL, 0),
(1056, 25.99, '{\"175\":\"family\",\"176\":\"double-decker\"}', '', 0, 0, 0, 330, '2021-10-04 13:23:31', '2021-10-04 13:23:31', NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `variants_has_extras`
--

CREATE TABLE `variants_has_extras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `extra_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visits`
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
-- Volcado de datos para la tabla `visits`
--

INSERT INTO `visits` (`id`, `name`, `email`, `phone_number`, `note`, `restaurant_id`, `table_id`, `by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Juan Luis Guerra', 'juanluis@gmail.com', '989765432', 'Para las 8 pm', 17, 241, 1, '2021-10-06 16:18:18', '2021-10-06 16:18:18', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `webs`
--

CREATE TABLE `webs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quienes` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `horario` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `carta` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `correo` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_quienes` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_cab` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat1` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat2` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat3` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat4` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_foot` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addr_google` varchar(1536) COLLATE utf8_unicode_ci NOT NULL DEFAULT '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6044.524249696123!2d-73.99926410620881!3d40.7562591403632!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c259b328e3d521%3A0xa1fc15fb05fc11cc!2sClyde%20Frazier%E2%80%99s%20Wine%20and%20Dine!5e0!3m2!1ses!2sve!4v1615392583009!5m2!1ses!2sve" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>',
  `tit_plat1` varchar(28) COLLATE utf8_unicode_ci NOT NULL,
  `tit_plat2` varchar(28) COLLATE utf8_unicode_ci NOT NULL,
  `tit_plat3` varchar(28) COLLATE utf8_unicode_ci NOT NULL,
  `tit_plat4` varchar(28) COLLATE utf8_unicode_ci NOT NULL,
  `tit_plat5` varchar(28) COLLATE utf8_unicode_ci NOT NULL,
  `tit_plat6` varchar(28) COLLATE utf8_unicode_ci NOT NULL,
  `ingred1` varchar(28) COLLATE utf8_unicode_ci NOT NULL,
  `ingred2` varchar(28) COLLATE utf8_unicode_ci NOT NULL,
  `ingred3` varchar(28) COLLATE utf8_unicode_ci NOT NULL,
  `ingred4` varchar(28) COLLATE utf8_unicode_ci NOT NULL,
  `ingred5` varchar(28) COLLATE utf8_unicode_ci NOT NULL,
  `ingred6` varchar(28) COLLATE utf8_unicode_ci NOT NULL,
  `price1` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `price2` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `price3` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `price4` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `price5` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `price6` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `img_hor` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slider_image1` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slider_image2` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slider_image3` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tit_slider_1` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tit_slider_2` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tit_slider_3` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_tit_sli_1` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_tit_sli_2` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_tit_sli_3` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team_bool` tinyint(4) NOT NULL DEFAULT '1',
  `team_name1` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team_position1` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team_name2` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team_position2` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team_name3` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team_position3` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team_nam1` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team_nam2` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team_nam3` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team_inst1` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team_inst2` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team_inst3` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team1` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team2` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team3` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team_fac1` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team_fac2` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team_fac3` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_plat1` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_plat2` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_plat3` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_plat4` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_plat5` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_plat6` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_cart` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `test1` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `test2` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `test3` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pers_test1` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pers_test2` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pers_test3` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cpers_test1` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cpers_test2` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cpers_test3` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `webs`
--

INSERT INTO `webs` (`id`, `company_id`, `quienes`, `horario`, `carta`, `correo`, `slug`, `img_quienes`, `img_cab`, `cat1`, `cat2`, `cat3`, `cat4`, `facebook`, `instagram`, `youtube`, `twitter`, `img_foot`, `addr_google`, `tit_plat1`, `tit_plat2`, `tit_plat3`, `tit_plat4`, `tit_plat5`, `tit_plat6`, `ingred1`, `ingred2`, `ingred3`, `ingred4`, `ingred5`, `ingred6`, `price1`, `price2`, `price3`, `price4`, `price5`, `price6`, `img_hor`, `slider_image1`, `slider_image2`, `slider_image3`, `tit_slider_1`, `tit_slider_2`, `tit_slider_3`, `sub_tit_sli_1`, `sub_tit_sli_2`, `sub_tit_sli_3`, `team_bool`, `team_name1`, `team_position1`, `team_name2`, `team_position2`, `team_name3`, `team_position3`, `team_nam1`, `team_nam2`, `team_nam3`, `team_inst1`, `team_inst2`, `team_inst3`, `team1`, `team2`, `team3`, `team_fac1`, `team_fac2`, `team_fac3`, `img_plat1`, `img_plat2`, `img_plat3`, `img_plat4`, `img_plat5`, `img_plat6`, `img_cart`, `test1`, `test2`, `test3`, `pers_test1`, `pers_test2`, `pers_test3`, `cpers_test1`, `cpers_test2`, `cpers_test3`, `created_at`, `updated_at`) VALUES
(10, 18, 'Una atención personalizada respetando los estándares de bioseguridad que los tiempos actuales exigen, son el primer aperitivo que acompaña nuestros deliciosos y exquisitos platos. Un restaurante especializado en nuestra comida te garantiza disfrutar de lo que mas te gusta pero también la posibilidad de degustar novedosos platillos de la comida internacional.', NULL, 'Nuestros platos son los mejores', NULL, 'pedrosky-burger-1', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6044.524249696123!2d-73.99926410620881!3d40.7562591403632!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c259b328e3d521%3A0xa1fc15fb05fc11cc!2sClyde%20Frazier%E2%80%99s%20Wine%20and%20Dine!5e0!3m2!1ses!2sve!4v1615392583009!5m2!1ses!2sve\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-19 11:02:49', '2021-10-19 11:33:43'),
(11, 23, 'Una atención personalizada respetando los estándares de bioseguridad que los tiempos actuales exigen, son el primer aperitivo que acompaña nuestros deliciosos y exquisitos platos. Un restaurante especializado en nuestra comida te garantiza disfrutar de lo que mas te gusta pero también la posibilidad de degustar novedosos platillos de la comida internacional.', 'De Viernes a Domingo de 9:00 am hasta 10:00pm', NULL, 'spedrot3@gmail.com', 'la-gran-pizzeria', '', '', '', '', '', '', 'https://facebook.com', 'https://instagram.com', 'https://youtube.com', 'https://twitter.com', NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6044.524249696123!2d-73.99926410620881!3d40.7562591403632!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c259b328e3d521%3A0xa1fc15fb05fc11cc!2sClyde%20Frazier%E2%80%99s%20Wine%20and%20Dine!5e0!3m2!1ses!2sve!4v1615392583009!5m2!1ses!2sve\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-07 02:19:42', '2022-01-07 02:19:42');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banners_vendor_id_foreign` (`vendor_id`),
  ADD KEY `banners_page_id_foreign` (`page_id`);

--
-- Indices de la tabla `cart_storage`
--
ALTER TABLE `cart_storage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_storage_id_index` (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_restorant_id_foreign` (`restorant_id`);

--
-- Indices de la tabla `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cities_alias_unique` (`alias`);

--
-- Indices de la tabla `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `restorants_name_unique` (`name`),
  ADD UNIQUE KEY `restorants_subdomain_unique` (`subdomain`),
  ADD KEY `restorants_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`),
  ADD KEY `coupons_restaurant_id_foreign` (`restaurant_id`);

--
-- Indices de la tabla `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_restaurant_id_foreign` (`restaurant_id`),
  ADD KEY `expenses_expenses_category_id_foreign` (`expenses_category_id`),
  ADD KEY `expenses_expenses_vendor_id_foreign` (`expenses_vendor_id`);

--
-- Indices de la tabla `expenses_category`
--
ALTER TABLE `expenses_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_category_restaurant_id_foreign` (`restaurant_id`);

--
-- Indices de la tabla `expenses_vendor`
--
ALTER TABLE `expenses_vendor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_vendor_restaurant_id_foreign` (`restaurant_id`);

--
-- Indices de la tabla `extras`
--
ALTER TABLE `extras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extras_item_id_foreign` (`item_id`);

--
-- Indices de la tabla `hours`
--
ALTER TABLE `hours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hours_restorant_id_foreign` (`restorant_id`);

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `localmenus`
--
ALTER TABLE `localmenus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `localmenus_restaurant_id_foreign` (`restaurant_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indices de la tabla `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_item_id_foreign` (`item_id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_address_id_foreign` (`address_id`),
  ADD KEY `orders_client_id_foreign` (`client_id`),
  ADD KEY `orders_restorant_id_foreign` (`restorant_id`),
  ADD KEY `orders_driver_id_foreign` (`driver_id`),
  ADD KEY `orders_employee_id_foreign` (`employee_id`);

--
-- Indices de la tabla `order_has_items`
--
ALTER TABLE `order_has_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_has_items_order_id_foreign` (`order_id`),
  ADD KEY `order_has_items_item_id_foreign` (`item_id`);

--
-- Indices de la tabla `order_has_status`
--
ALTER TABLE `order_has_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_has_status_order_id_foreign` (`order_id`),
  ADD KEY `order_has_status_status_id_foreign` (`status_id`),
  ADD KEY `order_has_status_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `paths`
--
ALTER TABLE `paths`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_rateable_type_rateable_id_index` (`rateable_type`,`rateable_id`),
  ADD KEY `ratings_rateable_id_index` (`rateable_id`),
  ADD KEY `ratings_rateable_type_index` (`rateable_type`),
  ADD KEY `ratings_user_id_foreign` (`user_id`),
  ADD KEY `ratings_order_id_foreign` (`order_id`);

--
-- Indices de la tabla `restoareas`
--
ALTER TABLE `restoareas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restoareas_restaurant_id_foreign` (`restaurant_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `simple_delivery_areas`
--
ALTER TABLE `simple_delivery_areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `simple_delivery_areas_restaurant_id_foreign` (`restaurant_id`);

--
-- Indices de la tabla `sms_verifications`
--
ALTER TABLE `sms_verifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sms_verifications_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `status_name_unique` (`name`),
  ADD UNIQUE KEY `status_alias_unique` (`alias`);

--
-- Indices de la tabla `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indices de la tabla `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_plan_unique` (`subscription_id`,`stripe_plan`),
  ADD KEY `subscription_items_stripe_id_index` (`stripe_id`);

--
-- Indices de la tabla `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tables_restoarea_id_foreign` (`restoarea_id`),
  ADD KEY `tables_restaurant_id_foreign` (`restaurant_id`);

--
-- Indices de la tabla `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_language_id_foreign` (`language_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`),
  ADD UNIQUE KEY `users_verification_code_unique` (`verification_code`),
  ADD KEY `users_stripe_id_index` (`stripe_id`),
  ADD KEY `users_restaurant_id_foreign` (`restaurant_id`);

--
-- Indices de la tabla `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variants_item_id_foreign` (`item_id`);

--
-- Indices de la tabla `variants_has_extras`
--
ALTER TABLE `variants_has_extras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variants_has_extras_variant_id_foreign` (`variant_id`),
  ADD KEY `variants_has_extras_extra_id_foreign` (`extra_id`);

--
-- Indices de la tabla `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visits_restaurant_id_foreign` (`restaurant_id`);

--
-- Indices de la tabla `webs`
--
ALTER TABLE `webs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `address`
--
ALTER TABLE `address`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT de la tabla `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `configs`
--
ALTER TABLE `configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `expenses_category`
--
ALTER TABLE `expenses_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `expenses_vendor`
--
ALTER TABLE `expenses_vendor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `extras`
--
ALTER TABLE `extras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=500;

--
-- AUTO_INCREMENT de la tabla `hours`
--
ALTER TABLE `hours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=362;

--
-- AUTO_INCREMENT de la tabla `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `localmenus`
--
ALTER TABLE `localmenus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de la tabla `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `order_has_items`
--
ALTER TABLE `order_has_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `order_has_status`
--
ALTER TABLE `order_has_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `paths`
--
ALTER TABLE `paths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `plan`
--
ALTER TABLE `plan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `restoareas`
--
ALTER TABLE `restoareas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `simple_delivery_areas`
--
ALTER TABLE `simple_delivery_areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sms_verifications`
--
ALTER TABLE `sms_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `status`
--
ALTER TABLE `status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT de la tabla `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `variants`
--
ALTER TABLE `variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1057;

--
-- AUTO_INCREMENT de la tabla `variants_has_extras`
--
ALTER TABLE `variants_has_extras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `webs`
--
ALTER TABLE `webs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`),
  ADD CONSTRAINT `banners_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `companies` (`id`);

--
-- Filtros para la tabla `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_restorant_id_foreign` FOREIGN KEY (`restorant_id`) REFERENCES `companies` (`id`);

--
-- Filtros para la tabla `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `restorants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `coupons`
--
ALTER TABLE `coupons`
  ADD CONSTRAINT `coupons_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);

--
-- Filtros para la tabla `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_expenses_category_id_foreign` FOREIGN KEY (`expenses_category_id`) REFERENCES `expenses_category` (`id`),
  ADD CONSTRAINT `expenses_expenses_vendor_id_foreign` FOREIGN KEY (`expenses_vendor_id`) REFERENCES `expenses_vendor` (`id`),
  ADD CONSTRAINT `expenses_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);

--
-- Filtros para la tabla `expenses_category`
--
ALTER TABLE `expenses_category`
  ADD CONSTRAINT `expenses_category_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);

--
-- Filtros para la tabla `expenses_vendor`
--
ALTER TABLE `expenses_vendor`
  ADD CONSTRAINT `expenses_vendor_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);

--
-- Filtros para la tabla `extras`
--
ALTER TABLE `extras`
  ADD CONSTRAINT `extras_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Filtros para la tabla `hours`
--
ALTER TABLE `hours`
  ADD CONSTRAINT `hours_restorant_id_foreign` FOREIGN KEY (`restorant_id`) REFERENCES `companies` (`id`);

--
-- Filtros para la tabla `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Filtros para la tabla `localmenus`
--
ALTER TABLE `localmenus`
  ADD CONSTRAINT `localmenus_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  ADD CONSTRAINT `orders_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_restorant_id_foreign` FOREIGN KEY (`restorant_id`) REFERENCES `companies` (`id`);

--
-- Filtros para la tabla `order_has_items`
--
ALTER TABLE `order_has_items`
  ADD CONSTRAINT `order_has_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `order_has_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Filtros para la tabla `order_has_status`
--
ALTER TABLE `order_has_status`
  ADD CONSTRAINT `order_has_status_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_has_status_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `order_has_status_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `restoareas`
--
ALTER TABLE `restoareas`
  ADD CONSTRAINT `restoareas_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `simple_delivery_areas`
--
ALTER TABLE `simple_delivery_areas`
  ADD CONSTRAINT `simple_delivery_areas_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);

--
-- Filtros para la tabla `sms_verifications`
--
ALTER TABLE `sms_verifications`
  ADD CONSTRAINT `sms_verifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `tables`
--
ALTER TABLE `tables`
  ADD CONSTRAINT `tables_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `tables_restoarea_id_foreign` FOREIGN KEY (`restoarea_id`) REFERENCES `restoareas` (`id`);

--
-- Filtros para la tabla `translations`
--
ALTER TABLE `translations`
  ADD CONSTRAINT `translations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);

--
-- Filtros para la tabla `variants`
--
ALTER TABLE `variants`
  ADD CONSTRAINT `variants_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Filtros para la tabla `variants_has_extras`
--
ALTER TABLE `variants_has_extras`
  ADD CONSTRAINT `variants_has_extras_extra_id_foreign` FOREIGN KEY (`extra_id`) REFERENCES `extras` (`id`),
  ADD CONSTRAINT `variants_has_extras_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`);

--
-- Filtros para la tabla `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);

--
-- Filtros para la tabla `webs`
--
ALTER TABLE `webs`
  ADD CONSTRAINT `webs_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
