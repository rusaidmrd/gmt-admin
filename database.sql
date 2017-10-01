-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2017 at 09:58 AM
-- Server version: 5.5.46
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ajax_comment`
--
CREATE DATABASE IF NOT EXISTS `ajax_comment` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ajax_comment`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(60) NOT NULL,
  `comment` text NOT NULL,
  `id_post` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `comment`, `id_post`, `date`) VALUES
(1, 'Rusaid', 'rdrusaid772gmail.com', 'this is my first comment', 1, '2017-01-17 12:16:18'),
(2, 'sdf', 'sdfdf', 'sdfsdf', 1, '2017-01-17 12:16:26'),
(3, 'ddfg', 'sdfgsdf', 'sdfgsdfgsd', 1, '2017-01-17 12:16:33'),
(4, 'sdfgs', 'sdfgsdf', 'sdfgdf', 1, '2017-01-17 12:16:42'),
(5, 'sdfgsd', 'sdfgsdf', 'sdfgsdfgsdrtfgsdfg', 1, '2017-01-17 12:16:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;--
-- Database: `app`
--
CREATE DATABASE IF NOT EXISTS `app` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `app`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` enum('male','female','others') COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `picture`, `gender`, `mobile`, `paypal_email`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tranxit', 'admin@tranxit.com', '$2y$10$LUTf7Jy.uf83sxRHgcLs4u.UBHBdvG3B/jHFHS2l5nPAYuVDOruYy', NULL, 'male', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_four` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `card_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('up','pu') COLLATE utf8_unicode_ci NOT NULL,
  `delivered` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('DRIVER','VEHICLE') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Driving Licence', 'DRIVER', NULL, NULL),
(2, 'Bank Passbook', 'DRIVER', NULL, NULL),
(3, 'Joining Form', 'DRIVER', NULL, NULL),
(4, 'Work Permit', 'DRIVER', NULL, NULL),
(5, 'Registration Certificate', 'VEHICLE', NULL, NULL),
(6, 'Insurance Certificate', 'VEHICLE', NULL, NULL),
(7, 'Fitness Certificate', 'VEHICLE', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ltm_translations`
--

CREATE TABLE `ltm_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_04_02_193005_create_translations_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2015_08_25_172600_create_settings_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(8, '2016_06_01_000004_create_oauth_clients_table', 1),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(10, '2017_01_11_180503_create_admins_table', 1),
(11, '2017_01_11_180511_create_providers_table', 1),
(12, '2017_01_11_181312_create_cards_table', 1),
(13, '2017_01_11_181357_create_chats_table', 1),
(14, '2017_01_11_181558_create_promocodes_table', 1),
(15, '2017_01_11_182454_create_provider_documents_table', 1),
(16, '2017_01_11_182536_create_provider_services_table', 1),
(17, '2017_01_11_182649_create_user_requests_table', 1),
(18, '2017_01_11_182717_create_request_filters_table', 1),
(19, '2017_01_11_182738_create_service_types_table', 1),
(20, '2017_01_25_172422_create_documents_table', 1),
(21, '2017_01_31_122021_create_provider_devices_table', 1),
(22, '2017_02_02_192703_create_user_request_ratings_table', 1),
(23, '2017_02_06_080124_create_user_request_payments_table', 1),
(24, '2017_02_14_135859_create_provider_profiles_table', 1),
(25, '2017_02_21_131429_create_promocode_usages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promocode_usages`
--

CREATE TABLE `promocode_usages` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `promocode_id` int(11) NOT NULL,
  `status` enum('ADDED','USED','EXPIRED') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promocodes`
--

CREATE TABLE `promocodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `promo_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discount` double(10,2) NOT NULL DEFAULT '0.00',
  `expiration` datetime NOT NULL,
  `status` enum('ADDED','EXPIRED') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provider_devices`
--

CREATE TABLE `provider_devices` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` int(11) NOT NULL,
  `udid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sns_arn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('android','ios') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provider_documents`
--

CREATE TABLE `provider_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` int(11) NOT NULL,
  `document_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unique_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('ASSESSING','ACTIVE') COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provider_profiles`
--

CREATE TABLE `provider_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` int(11) NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_secondary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provider_services`
--

CREATE TABLE `provider_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` int(11) NOT NULL,
  `service_type_id` int(11) NOT NULL,
  `status` enum('active','offline','riding') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` decimal(4,2) NOT NULL DEFAULT '5.00',
  `status` enum('onboarding','approved','banned') COLLATE utf8_unicode_ci NOT NULL,
  `latitude` double(15,8) DEFAULT NULL,
  `longitude` double(15,8) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `providers`
--

INSERT INTO `providers` (`id`, `first_name`, `last_name`, `email`, `mobile`, `password`, `avatar`, `rating`, `status`, `latitude`, `longitude`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Appoets', 'Demo', 'demo@appoets.com', NULL, '$2y$10$u9xckRJRIKyzwC2qUq.UXertfhrymPwklHEEizOR7eqsyrUWymfHW', NULL, '5.00', 'onboarding', NULL, NULL, NULL, NULL, NULL),
(2, 'Mohamed', 'Rusaid', 'rusaidmrd@gmail.com', NULL, '$2y$10$Cg2q8p1WB3FyWEBGW6Ko6uVMPsR7hzf8R/i67H5R2ZBa25l8R1UkO', NULL, '5.00', 'onboarding', NULL, NULL, 'NVgTN6mT1LqKOJ4YJjbJpdPkeoYBB3ev5cirW4esdGN1RWjqzlUkAJzrFxfJ', '2017-03-23 05:14:02', '2017-03-23 05:31:19');

-- --------------------------------------------------------

--
-- Table structure for table `request_filters`
--

CREATE TABLE `request_filters` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_types`
--

CREATE TABLE `service_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fixed` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `service_types`
--

INSERT INTO `service_types` (`id`, `name`, `provider_name`, `image`, `fixed`, `price`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sedan', 'Driver', 'http://localhost/asset/img/cars/sedan.png', 20, 10, NULL, 1, '2017-03-23 04:40:03', '2017-03-23 04:40:03'),
(2, 'Hatchback', 'Driver', 'http://localhost/asset/img/cars/hatchback.png', 20, 10, NULL, 1, '2017-03-23 04:40:03', '2017-03-23 04:40:03'),
(3, 'SUV', 'Driver', 'http://localhost/asset/img/cars/suv.png', 20, 10, NULL, 1, '2017-03-23 04:40:03', '2017-03-23 04:40:03'),
(4, 'Limousine', 'Driver', 'http://localhost/asset/img/cars/limo.png', 20, 10, NULL, 1, '2017-03-23 04:40:03', '2017-03-23 04:40:03');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'site_title', 'Tranxit'),
(2, 'site_logo', 'http://localhost/asset/img/logo.png'),
(3, 'site_mail_icon', 'http://localhost/asset/img/logo.png'),
(4, 'site_icon', 'http://localhost/logo.png'),
(5, 'provider_select_timeout', '60'),
(6, 'search_radius', '100'),
(7, 'base_price', '50'),
(8, 'price_per_minute', '50'),
(9, 'tax_percentage', '0'),
(10, 'stripe_secret_key', ''),
(11, 'stripe_publishable_key', ''),
(12, 'CASH', '1'),
(13, 'PAYPAL', '1'),
(14, 'CARD', '1'),
(15, 'manual_request', '0'),
(16, 'paypal_email', ''),
(17, 'default_lang', 'en'),
(18, 'currency', '$'),
(19, 'scheduled_cancel_time_exceed', '10'),
(20, 'price_per_kilometer', '10'),
(21, 'commission_percentage', '0'),
(22, 'email_logo', ''),
(23, 'play_store_link', ''),
(24, 'app_store_link', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_request_payments`
--

CREATE TABLE `user_request_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` int(11) NOT NULL,
  `promocode_id` int(11) DEFAULT NULL,
  `payment_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_mode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fixed` double(10,2) NOT NULL DEFAULT '0.00',
  `distance` double(10,2) NOT NULL DEFAULT '0.00',
  `commision` double(10,2) NOT NULL DEFAULT '0.00',
  `discount` double(10,2) NOT NULL DEFAULT '0.00',
  `tax` double(10,2) NOT NULL DEFAULT '0.00',
  `wallet` double(10,2) NOT NULL DEFAULT '0.00',
  `total` double(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_request_ratings`
--

CREATE TABLE `user_request_ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `user_rating` int(11) NOT NULL DEFAULT '0',
  `provider_rating` int(11) NOT NULL DEFAULT '0',
  `user_comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider_comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_requests`
--

CREATE TABLE `user_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL DEFAULT '0',
  `current_provider_id` int(11) NOT NULL,
  `service_type_id` int(11) NOT NULL,
  `status` enum('SEARCHING','CANCELLED','ACCEPTED','STARTED','ARRIVED','PICKEDUP','DROPPED','COMPLETED') COLLATE utf8_unicode_ci NOT NULL,
  `cancelled_by` enum('NONE','USER','PROVIDER') COLLATE utf8_unicode_ci NOT NULL,
  `payment_mode` enum('CASH','CARD','PAYPAL') COLLATE utf8_unicode_ci NOT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `distance` double(15,8) NOT NULL,
  `s_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `s_latitude` double(15,8) NOT NULL,
  `s_longitude` double(15,8) NOT NULL,
  `d_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d_latitude` double(15,8) NOT NULL,
  `d_longitude` double(15,8) NOT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `schedule_at` timestamp NULL DEFAULT NULL,
  `started_at` timestamp NULL DEFAULT NULL,
  `finished_at` timestamp NULL DEFAULT NULL,
  `user_rated` tinyint(1) NOT NULL DEFAULT '0',
  `provider_rated` tinyint(1) NOT NULL DEFAULT '0',
  `use_wallet` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_mode` enum('CASH','CARD','PAYPAL') COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_type` enum('android','ios') COLLATE utf8_unicode_ci NOT NULL,
  `login_by` enum('manual','facebook','google') COLLATE utf8_unicode_ci NOT NULL,
  `social_unique_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double(15,8) DEFAULT NULL,
  `longitude` double(15,8) DEFAULT NULL,
  `stripe_cust_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wallet_balance` double(8,2) NOT NULL DEFAULT '0.00',
  `rating` decimal(4,2) NOT NULL DEFAULT '5.00',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `payment_mode`, `email`, `password`, `picture`, `device_token`, `device_id`, `device_type`, `login_by`, `social_unique_id`, `mobile`, `latitude`, `longitude`, `stripe_cust_id`, `wallet_balance`, `rating`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Appoets', 'Demo', 'CASH', 'demo@appoets.com', '$2y$10$zclRhX1hoCN5KUj.fTWT1u1EGlB67C.Qg4wMJBi0DWg.429Xl6Mky', NULL, NULL, NULL, 'android', 'manual', NULL, NULL, NULL, NULL, NULL, 0.00, '5.00', NULL, NULL, NULL),
(2, 'Rusaid', 'Mohamed', 'CASH', 'rusaidmrd@gmail.com', '$2y$10$QlvZG93PqwCYrI9kEae/he5qU7ejUGDdaEgEo2l1su8epSzy1qGHe', NULL, NULL, NULL, 'android', 'manual', NULL, NULL, NULL, NULL, NULL, 0.00, '5.00', 'mOmWDJ9iK8iYn4FoKgPWYoHVSZNIJtEdPVVPQ0QF9S4Sv5pEzqA4mXh65YPb', '2017-03-23 05:34:10', '2017-03-23 05:38:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `promocode_usages`
--
ALTER TABLE `promocode_usages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promocodes`
--
ALTER TABLE `promocodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider_devices`
--
ALTER TABLE `provider_devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider_documents`
--
ALTER TABLE `provider_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider_profiles`
--
ALTER TABLE `provider_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider_services`
--
ALTER TABLE `provider_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `providers_email_unique` (`email`);

--
-- Indexes for table `request_filters`
--
ALTER TABLE `request_filters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_types`
--
ALTER TABLE `service_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_key_index` (`key`);

--
-- Indexes for table `user_request_payments`
--
ALTER TABLE `user_request_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_request_ratings`
--
ALTER TABLE `user_request_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_requests`
--
ALTER TABLE `user_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `promocode_usages`
--
ALTER TABLE `promocode_usages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `promocodes`
--
ALTER TABLE `promocodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `provider_devices`
--
ALTER TABLE `provider_devices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `provider_documents`
--
ALTER TABLE `provider_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `provider_profiles`
--
ALTER TABLE `provider_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `provider_services`
--
ALTER TABLE `provider_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `request_filters`
--
ALTER TABLE `request_filters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `service_types`
--
ALTER TABLE `service_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `user_request_payments`
--
ALTER TABLE `user_request_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_request_ratings`
--
ALTER TABLE `user_request_ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_requests`
--
ALTER TABLE `user_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;--
-- Database: `application`
--
CREATE DATABASE IF NOT EXISTS `application` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `application`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`) VALUES
(1, 'Rusaid'),
(2, 'Aravinth');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `name`) VALUES
(1, 1, 'Tshirt'),
(2, 2, 'SSamsung phone'),
(3, 1, 'macbook Pro');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;--
-- Database: `cms`
--
CREATE DATABASE IF NOT EXISTS `cms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cms`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Bootstrap'),
(2, 'JavaScript'),
(3, 'PHP'),
(10, 'Java');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(4) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL DEFAULT 'pending',
  `comment_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(7, 1, 'Rusaid', 'rdrusaid77@gmail.com', 'This is the first comment', 'approve', '2016-11-23'),
(8, 1, 'thasneem', 'thasneem@34gmail.com', 'testing now ', 'approve', '2016-11-29'),
(10, 2, 'Rusais', 'rusaidmrd@gmail.com', 'my name is rusaid', 'approve', '2016-11-29'),
(11, 2, 'Ahraz', 'ahraz@443gmail.com', 'My name is Ahras not Ahraz', 'approve', '2016-11-29'),
(12, 1, 'Asam Ahmed', 'rusaidmrd@gmail.com', 'sdfgasdfgasd', 'pending', '2017-01-10');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL DEFAULT '0',
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(1, 1, 'e1', 'Khaleel sir', '2016-11-30', 'pic9.jpg', '<p>Wow. nice conrWow. nice conr Wow. nice conr Wow. nice conr Wow. nice conr vWow. nice conr vWow. nice conr jahs jbs jBAS BAS najs asb d absd a bsd bas ha ahsd a</p>', 'php, java, javascript', 3, 'published', 7),
(2, 1, 'e2', 'admin', '2016-11-30', 'post2.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi libero risus, interdum ut iaculis et, tristique quis nunc. Fusce a magna at purus imperdiet venenatis. Etiam mattis sit amet sem eget accumsan. Phasellus pellentesque egestas lorem. Ut metus enim, gravida ut vehicula eget, posuere sit amet nisi. Nullam enim turpis, cursus rutrum blandit non, aliquet sed orci. Cras id volutpat ligula. Curabitur congue convallis augue, ut pulvinar risus vehicula ut. Quisque efficitur nisi nisl, id blandit elit volutpat malesuada. Nullam ut risus non felis maximus tempus in non ipsum. Pellentesque id tempus dolor. Nullam vehicula turpis lorem, nec bibendum mauris maximus eget. Integer sodales, turpis vel pulvinar luctus, erat sem varius elit, in aliquet nunc mi vitae nisi. Praesent elit metus, fringilla eu varius elementum, semper vitae lectus. Proin semper est quis arcu mattis, et semper velit consequat. Sed pulvinar tellus vel venenatis tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc nunc risus, vestibulum nec scelerisque et, dictum non libero. Cras sodales ultricies feugiat. Vivamus sed felis aliquam, condimentum sem a, mattis ante. Phasellus auctor nisl eget sodales convallis. Integer non est ac nunc sagittis facilisis sed eget augue. Nunc pellentesque nulla massa, vitae pellentesque velit sodales at. Sed dignissim eleifend orci, nec blandit lectus elementum non. Ut volutpat urna nunc, sed rutrum eros ultricies rutrum. Etiam a blandit ligula, eu dignissim ex.</p>', 'islam,event', 3, 'published', 0),
(8, 1, 'e3', 'Khaleel sir', '2016-11-30', 'e2.jpg', '<p>thisjkj kjkjb jkbkj kjsk skjnk ksjn ksjdnk skjdnk ksjndk ksjdnk ksdjnks ksjn&nbsp;</p>', 'event', 0, 'published', 0),
(9, 1, 'e4', 'Khaleel sir', '2016-11-30', 'hudson.png', '<p>ffrd erfge e rg edfg df fgdfr rtr e ggdfg df gdfg frd erfge e rg edfg df fgdfr rtr e ggdfg df gdfg frd erfge e rg edfg df fgdfr rtr e ggdfg df gdfg frd erfge e rg edfg df fgdfr rtr e ggdfg df gdfg frd erfge e rg edfg df fgdfr rtr e ggdfg df gdfgfrd erfge e rg edfg df fgdfr rtr e ggdfg df gdfgfrd erfge e rg edfg df fgdfr rtr e ggdfg df gdfg</p>', 'php', 0, 'published', 0),
(10, 1, 'e5', 'admin', '2016-11-30', 'car2.jpg', '<p>cars here</p>', 'cars', 0, 'published', 0),
(11, 1, 'e6', 'admin', '2016-11-30', '', '<p>asdfasd</p>', 'sadf', 0, 'published', 0),
(12, 1, 'e7', 'admin', '2016-11-30', '', '<p>ad</p>', 'aSD', 0, 'published', 0),
(13, 1, 'e8', 'admin', '2016-11-30', '', '<p>dfsdefasdasd</p>', 'asdf', 0, 'published', 0),
(14, 1, 'e9', 'admin', '2016-11-30', '', '<p>wretert</p>', 'ertertghswetr', 0, 'published', 0),
(15, 10, 'e10', 'Khaleel sir', '2016-11-30', '', '<p>rtertherth</p>', 'rtyhert', 0, 'published', 0),
(16, 1, 'e11', 'Khaleel sir', '2016-11-30', '', '<p>erte retyh rtyh rt htr rth t rt htrfh</p>', 'rterth', 0, 'published', 0),
(17, 1, 'e12', 'Khaleel sir', '2016-11-30', '', '<p>rtyhrth</p>', 'rthtrf', 0, 'published', 0),
(18, 3, 'e13', 'admin', '2016-11-30', '', '<p>rtyhsrt</p>', 'rtfhrft', 0, 'published', 0),
(19, 10, 'e14', 'admin', '2016-11-30', '', '<p>rthwsertytreh hjwwtrh 6 hrthrh</p>', 'rtht', 0, 'published', 0),
(20, 1, 'dfg', 'dffb', '2017-01-11', '', '<p>dfbdfg</p>', 'dfgdfb', 0, 'draft', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(4) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) DEFAULT NULL,
  `user_lastname` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) DEFAULT '$2y$10$ghtqwtiomgr12oiuytbgrf'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(20, 'rusaid', '$2y$10$ghtqwtiomgr12oiuytbgreeL.VdI4IkCeFRmtaJD.NYBCJ54cWGMy', NULL, NULL, 'rusaid123@gmail.com', NULL, 'admin', '$2y$10$ghtqwtiomgr12oiuytbgrf'),
(19, 'rusaidmrd', '$2y$10$ghtqwtiomgr12oiuytbgreiA8hsT.7Rfg4elYjpT8sb3kbwMGrFWy', 'Rusaid', '', 'rdrusaid77@gmail.com', NULL, 'admin', '$2y$10$ghtqwtiomgr12oiuytbgrf');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(4) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;--
-- Database: `driving_tab`
--
CREATE DATABASE IF NOT EXISTS `driving_tab` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `driving_tab`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--
-- in use(#1146 - Table 'driving_tab.admin' doesn't exist)
-- Error reading data: (#1146 - Table 'driving_tab.admin' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `car`
--
-- in use(#1146 - Table 'driving_tab.car' doesn't exist)
-- Error reading data: (#1146 - Table 'driving_tab.car' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--
-- in use(#1146 - Table 'driving_tab.lesson' doesn't exist)
-- Error reading data: (#1146 - Table 'driving_tab.lesson' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `lessondetail`
--
-- in use(#1146 - Table 'driving_tab.lessondetail' doesn't exist)
-- Error reading data: (#1146 - Table 'driving_tab.lessondetail' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `student`
--
-- in use(#1146 - Table 'driving_tab.student' doesn't exist)
-- Error reading data: (#1146 - Table 'driving_tab.student' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--
-- in use(#1146 - Table 'driving_tab.trainer' doesn't exist)
-- Error reading data: (#1146 - Table 'driving_tab.trainer' doesn't exist)
--
-- Database: `ecommerce`
--
CREATE DATABASE IF NOT EXISTS `ecommerce` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ecommerce`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `website` varchar(200) NOT NULL,
  `vat_rate` decimal(5,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`id`, `name`, `address`, `telephone`, `email`, `website`, `vat_rate`) VALUES
(1, 'eshop', '114, Nikagolla,Yatawatta,Matale,Sri Lanka', '+940776290468', 'info@eshop.com', 'eshop.com', '17.60');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Biographies & Autobiographies'),
(2, 'Computers & IT'),
(3, 'Art & Architecture');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `town` varchar(255) NOT NULL,
  `county` varchar(255) NOT NULL,
  `post_code` varchar(10) NOT NULL,
  `country` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`) VALUES
(1, 'Afghanistan', 'AF'),
(2, 'Ãland Islands', 'AX'),
(3, 'Albania', 'AL'),
(4, 'Algeria', 'DZ'),
(5, 'American Samoa', 'AS'),
(6, 'Andorra', 'AD'),
(7, 'Angola', 'AO'),
(8, 'Anguilla', 'AI'),
(9, 'Antarctica', 'AQ'),
(10, 'Antigua And Barbuda', 'AG'),
(11, 'Argentina', 'AR'),
(12, 'Armenia', 'AM'),
(13, 'Aruba', 'AW'),
(14, 'Australia', 'AU'),
(15, 'Austria', 'AT'),
(16, 'Azerbaijan', 'AZ'),
(17, 'Bahamas', 'BS'),
(18, 'Bahrain', 'BH'),
(19, 'Bangladesh', 'BD'),
(20, 'Barbados', 'BB'),
(21, 'Belarus', 'BY'),
(22, 'Belgium', 'BE'),
(23, 'Belize', 'BZ'),
(24, 'Benin', 'BJ'),
(25, 'Bermuda', 'BM'),
(26, 'Bhutan', 'BT'),
(27, 'Bolivia', 'BO'),
(28, 'Bosnia And Herzegovina', 'BA'),
(29, 'Botswana', 'BW'),
(30, 'Bouvet Island', 'BV'),
(31, 'Brazil', 'BR'),
(32, 'British Indian Ocean Territory', 'IO'),
(33, 'Brunei Darussalam', 'BN'),
(34, 'Bulgaria', 'BG'),
(35, 'Burkina Faso', 'BF'),
(36, 'Burundi', 'BI'),
(37, 'Cambodia', 'KH'),
(38, 'Cameroon', 'CM'),
(39, 'Canada', 'CA'),
(40, 'Cape Verde', 'CV'),
(41, 'Cayman Islands', 'KY'),
(42, 'Central African Republic', 'CF'),
(43, 'Chad', 'TD'),
(44, 'Chile', 'CL'),
(45, 'China', 'CN'),
(46, 'Christmas Island', 'CX'),
(47, 'Cocos (keeling) Islands', 'CC'),
(48, 'Colombia', 'CO'),
(49, 'Comoros', 'KM'),
(50, 'Congo', 'CG'),
(51, 'Congo, The Democratic Republic Of', 'CD'),
(52, 'Cook Islands', 'CK'),
(53, 'Costa Rica', 'CR'),
(54, 'Cote D\'ivoire', 'CI'),
(55, 'Croatia', 'HR'),
(56, 'Cuba', 'CU'),
(57, 'Cyprus', 'CY'),
(58, 'Czech Republic', 'CZ'),
(59, 'Denmark', 'DK'),
(60, 'Djibouti', 'DJ'),
(61, 'Dominica', 'DM'),
(62, 'Dominican Republic', 'DO'),
(63, 'Ecuador', 'EC'),
(64, 'Egypt', 'EG'),
(65, 'El Salvador', 'SV'),
(66, 'Equatorial Guinea', 'GQ'),
(67, 'Eritrea', 'ER'),
(68, 'Estonia', 'EE'),
(69, 'Ethiopia', 'ET'),
(70, 'Falkland Islands (malvinas)', 'FK'),
(71, 'Faroe Islands', 'FO'),
(72, 'Fiji', 'FJ'),
(73, 'Finland', 'FI'),
(74, 'France', 'FR'),
(75, 'French Guiana', 'GF'),
(76, 'French Polynesia', 'PF'),
(77, 'French Southern Territories', 'TF'),
(78, 'Gabon', 'GA'),
(79, 'Gambia', 'GM'),
(80, 'Georgia', 'GE'),
(81, 'Germany', 'DE'),
(82, 'Ghana', 'GH'),
(83, 'Gibraltar', 'GI'),
(84, 'Greece', 'GR'),
(85, 'Greenland', 'GL'),
(86, 'Grenada', 'GD'),
(87, 'Guadeloupe', 'GP'),
(88, 'Guam', 'GU'),
(89, 'Guatemala', 'GT'),
(90, 'Guernsey', 'GG'),
(91, 'Guinea', 'GN'),
(92, 'Guinea-bissau', 'GW'),
(93, 'Guyana', 'GY'),
(94, 'Haiti', 'HT'),
(95, 'Heard Island And Mcdonald Islands', 'HM'),
(96, 'Holy See (vatican City State)', 'VA'),
(97, 'Honduras', 'HN'),
(98, 'Hong Kong', 'HK'),
(99, 'Hungary', 'HU'),
(100, 'Iceland', 'IS'),
(101, 'India', 'IN'),
(102, 'Indonesia', 'ID'),
(103, 'Iran, Islamic Republic Of', 'IR'),
(104, 'Iraq', 'IQ'),
(105, 'Ireland', 'IE'),
(106, 'Isle Of Man', 'IM'),
(107, 'Israel', 'IL'),
(108, 'Italy', 'IT'),
(109, 'Jamaica', 'JM'),
(110, 'Japan', 'JP'),
(111, 'Jersey', 'JE'),
(112, 'Jordan', 'JO'),
(113, 'Kazakhstan', 'KZ'),
(114, 'Kenya', 'KE'),
(115, 'Kiribati', 'KI'),
(116, 'Korea, Democratic People\'s Republic Of', 'KP'),
(117, 'Korea, Republic Of', 'KR'),
(118, 'Kuwait', 'KW'),
(119, 'Kyrgyzstan', 'KG'),
(120, 'Lao People\'s Democratic Republic', 'LA'),
(121, 'Latvia', 'LV'),
(122, 'Lebanon', 'LB'),
(123, 'Lesotho', 'LS'),
(124, 'Liberia', 'LR'),
(125, 'Libyan Arab Jamahiriya', 'LY'),
(126, 'Liechtenstein', 'LI'),
(127, 'Lithuania', 'LT'),
(128, 'Luxembourg', 'LU'),
(129, 'Macao', 'MO'),
(130, 'Macedonia, The Former Yugoslav Republic Of', 'MK'),
(131, 'Madagascar', 'MG'),
(132, 'Malawi', 'MW'),
(133, 'Malaysia', 'MY'),
(134, 'Maldives', 'MV'),
(135, 'Mali', 'ML'),
(136, 'Malta', 'MT'),
(137, 'Marshall Islands', 'MH'),
(138, 'Martinique', 'MQ'),
(139, 'Mauritania', 'MR'),
(140, 'Mauritius', 'MU'),
(141, 'Mayotte', 'YT'),
(142, 'Mexico', 'MX'),
(143, 'Micronesia, Federated States Of', 'FM'),
(144, 'Moldova, Republic Of', 'MD'),
(145, 'Monaco', 'MC'),
(146, 'Mongolia', 'MN'),
(147, 'Montserrat', 'MS'),
(148, 'Morocco', 'MA'),
(149, 'Mozambique', 'MZ'),
(150, 'Myanmar', 'MM'),
(151, 'Namibia', 'NA'),
(152, 'Nauru', 'NR'),
(153, 'Nepal', 'NP'),
(154, 'Netherlands', 'NL'),
(155, 'Netherlands Antilles', 'AN'),
(156, 'New Caledonia', 'NC'),
(157, 'New Zealand', 'NZ'),
(158, 'Nicaragua', 'NI'),
(159, 'Niger', 'NE'),
(160, 'Nigeria', 'NG'),
(161, 'Niue', 'NU'),
(162, 'Norfolk Island', 'NF'),
(163, 'Northern Mariana Islands', 'MP'),
(164, 'Norway', 'NO'),
(165, 'Oman', 'OM'),
(166, 'Pakistan', 'PK'),
(167, 'Palau', 'PW'),
(168, 'Palestinian Territory, Occupied', 'PS'),
(169, 'Panama', 'PA'),
(170, 'Papua New Guinea', 'PG'),
(171, 'Paraguay', 'PY'),
(172, 'Peru', 'PE'),
(173, 'Philippines', 'PH'),
(174, 'Pitcairn', 'PN'),
(175, 'Poland', 'PL'),
(176, 'Portugal', 'PT'),
(177, 'Puerto Rico', 'PR'),
(178, 'Qatar', 'QA'),
(179, 'Reunion', 'RE'),
(180, 'Romania', 'RO'),
(181, 'Russian Federation', 'RU'),
(182, 'Rwanda', 'RW'),
(183, 'Saint Helena', 'SH'),
(184, 'Saint Kitts And Nevis', 'KN'),
(185, 'Saint Lucia', 'LC'),
(186, 'Saint Pierre And Miquelon', 'PM'),
(187, 'Saint Vincent And The Grenadines', 'VC'),
(188, 'Samoa', 'WS'),
(189, 'San Marino', 'SM'),
(190, 'Sao Tome And Principe', 'ST'),
(191, 'Saudi Arabia', 'SA'),
(192, 'Senegal', 'SN'),
(193, 'Serbia And Montenegro', 'CS'),
(194, 'Seychelles', 'SC'),
(195, 'Sierra Leone', 'SL'),
(196, 'Singapore', 'SG'),
(197, 'Slovakia', 'SK'),
(198, 'Slovenia', 'SI'),
(199, 'Solomon Islands', 'SB'),
(200, 'Somalia', 'SO'),
(201, 'South Africa', 'ZA'),
(202, 'South Georgia And The South Sandwich Islands', 'GS'),
(203, 'Spain', 'ES'),
(204, 'Sri Lanka', 'LK'),
(205, 'Sudan', 'SD'),
(206, 'Suriname', 'SR'),
(207, 'Svalbard And Jan Mayen', 'SJ'),
(208, 'Swaziland', 'SZ'),
(209, 'Sweden', 'SE'),
(210, 'Switzerland', 'CH'),
(211, 'Syrian Arab Republic', 'SY'),
(212, 'Taiwan, Province Of China', 'TW'),
(213, 'Tajikistan', 'TJ'),
(214, 'Tanzania, United Republic Of', 'TZ'),
(215, 'Thailand', 'TH'),
(216, 'Timor-leste', 'TL'),
(217, 'Togo', 'TG'),
(218, 'Tokelau', 'TK'),
(219, 'Tonga', 'TO'),
(220, 'Trinidad And Tobago', 'TT'),
(221, 'Tunisia', 'TN'),
(222, 'Turkey', 'TR'),
(223, 'Turkmenistan', 'TM'),
(224, 'Turks And Caicos Islands', 'TC'),
(225, 'Tuvalu', 'TV'),
(226, 'Uganda', 'UG'),
(227, 'Ukraine', 'UA'),
(228, 'United Arab Emirates', 'AE'),
(229, 'United Kingdom', 'GB'),
(230, 'United States', 'US'),
(231, 'United States Minor Outlying Islands', 'UM'),
(232, 'Uruguay', 'UY'),
(233, 'Uzbekistan', 'UZ'),
(234, 'Vanuatu', 'VU'),
(235, 'Venezuela', 'VE'),
(236, 'Viet Nam', 'VN'),
(237, 'Virgin Islands, British', 'VG'),
(238, 'Virgin Islands, U.S.', 'VI'),
(239, 'Wallis And Futuna', 'WF'),
(240, 'Western Sahara', 'EH'),
(241, 'Yemen', 'YE'),
(242, 'Zambia', 'ZM'),
(243, 'Zimbabwe', 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `client` int(11) NOT NULL,
  `vat_rate` decimal(5,2) NOT NULL,
  `vat` decimal(8,2) NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `date` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `pp_status` tinyint(1) NOT NULL DEFAULT '0',
  `txn_id` varchar(100) DEFAULT NULL,
  `payment_status` varchar(100) DEFAULT NULL,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders_items`
--

CREATE TABLE `orders_items` (
  `id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `date` datetime NOT NULL,
  `category` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`) VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Dispatched');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country` (`country`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client` (`client`),
  ADD KEY `fk_stage` (`status`);

--
-- Indexes for table `orders_items`
--
ALTER TABLE `orders_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order` (`order`,`product`),
  ADD KEY `FK_PRODUCT` (`product`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders_items`
--
ALTER TABLE `orders_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`client`) REFERENCES `clients` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`status`) REFERENCES `statuses` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `orders_items`
--
ALTER TABLE `orders_items`
  ADD CONSTRAINT `orders_items_ibfk_1` FOREIGN KEY (`order`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_items_ibfk_2` FOREIGN KEY (`product`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `exam_public`
--
CREATE DATABASE IF NOT EXISTS `exam_public` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `exam_public`;

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `Id` int(11) NOT NULL,
  `questionId` int(11) NOT NULL,
  `body` varchar(100) NOT NULL,
  `soundPath` mediumblob,
  `isRight` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `applicant`
--

CREATE TABLE `applicant` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `languageId` int(11) DEFAULT NULL,
  `remainingTrial` int(11) DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `isVerified` varchar(5) DEFAULT NULL,
  `isPaid` varchar(5) DEFAULT NULL,
  `LicenceId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `applicant_old`
--

CREATE TABLE `applicant_old` (
  `Id` bigint(20) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `SSN` varchar(45) DEFAULT NULL,
  `TrailsCount` int(11) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `JobId` int(11) DEFAULT NULL,
  `LanguageId` int(11) DEFAULT NULL,
  `PcId` int(11) DEFAULT NULL,
  `NationalityId` int(11) DEFAULT NULL,
  `SchoolId` int(11) DEFAULT NULL,
  `TrainerId` int(11) DEFAULT NULL,
  `LicenceId` int(11) DEFAULT NULL,
  `isSpecial` varchar(20) DEFAULT NULL,
  `Barcode` mediumblob,
  `isExam` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `applicantlicencetype`
--

CREATE TABLE `applicantlicencetype` (
  `Id` int(11) NOT NULL,
  `ApplicantId` int(11) NOT NULL,
  `LicenceTypeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `demo_result`
--

CREATE TABLE `demo_result` (
  `Id` int(11) NOT NULL,
  `QuestionId` int(11) NOT NULL,
  `Body` varchar(200) NOT NULL,
  `RightAnswer` varchar(100) NOT NULL,
  `ActualAnswer` varchar(100) NOT NULL,
  `StudentId` bigint(20) NOT NULL,
  `ExamNumber` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exam_date`
--

CREATE TABLE `exam_date` (
  `Id` int(11) NOT NULL,
  `ApplicantId` bigint(20) NOT NULL,
  `IsSuccess` varchar(10) NOT NULL,
  `DateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exam_question`
--

CREATE TABLE `exam_question` (
  `Id` int(11) NOT NULL,
  `ApplicantId` bigint(20) NOT NULL,
  `QuestionId` int(11) NOT NULL,
  `RightAnswer` int(11) NOT NULL,
  `ActualAnswer` int(11) NOT NULL,
  `DateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `Id` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `LicenceId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `grouptype`
--

CREATE TABLE `grouptype` (
  `Id` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `GroupId` varchar(45) NOT NULL,
  `NoOfQuestions` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `Id` int(11) NOT NULL,
  `Number` int(11) DEFAULT NULL,
  `applicantId` bigint(20) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `isPaid` varchar(10) DEFAULT NULL,
  `isRefund` varchar(10) DEFAULT NULL,
  `paymentUser` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `Id` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `ID` int(11) NOT NULL,
  `Name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`ID`, `Name`) VALUES
(1, 'Arabic'),
(2, 'English');

-- --------------------------------------------------------

--
-- Table structure for table `licencetype`
--

CREATE TABLE `licencetype` (
  `Id` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `SuccessPercentage` float DEFAULT NULL,
  `NoOfQuestions` int(11) NOT NULL,
  `MandNo` int(11) NOT NULL,
  `Time` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `monitor`
--

CREATE TABLE `monitor` (
  `Id` int(11) NOT NULL,
  `ApplicantId` bigint(20) NOT NULL,
  `PcId` int(11) NOT NULL,
  `Time` time DEFAULT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nationality`
--

CREATE TABLE `nationality` (
  `Id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pc`
--

CREATE TABLE `pc` (
  `Id` int(20) NOT NULL,
  `Number` int(20) DEFAULT NULL,
  `IsOccupied` varchar(20) DEFAULT NULL,
  `IP` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `Id` int(11) NOT NULL,
  `LanguageId` int(11) NOT NULL,
  `GroupId` int(11) NOT NULL,
  `GroupTypeId` int(11) NOT NULL,
  `Body` varchar(100) NOT NULL,
  `SoundPath` mediumblob,
  `VideoPath` mediumblob,
  `ImagePath` mediumblob,
  `IsActive` varchar(10) NOT NULL,
  `LicenceId` int(11) NOT NULL,
  `IsMandatory` varchar(10) DEFAULT NULL,
  `IsVisible` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `question_special`
--

CREATE TABLE `question_special` (
  `Id` int(11) NOT NULL,
  `LanguageId` int(11) NOT NULL,
  `GroupId` int(11) NOT NULL,
  `GroupTypeId` int(11) NOT NULL,
  `Body` varchar(100) NOT NULL,
  `SoundPath` mediumblob,
  `VideoPath` mediumblob,
  `ImagePath` mediumblob,
  `IsActive` varchar(10) NOT NULL,
  `LicenceId` int(11) NOT NULL,
  `IsAnswer` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `Id` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `IsActive` varchar(10) NOT NULL,
  `IpAddress` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`Id`, `Name`, `IsActive`, `IpAddress`) VALUES
(1, 'Karwa', 'true', '192.168.1.103');

-- --------------------------------------------------------

--
-- Table structure for table `supervisor`
--

CREATE TABLE `supervisor` (
  `Id` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Military_Number` int(11) DEFAULT NULL,
  `SchoolId` int(11) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `Id` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `SchoolId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trainer`
--

INSERT INTO `trainer` (`Id`, `Name`, `SchoolId`) VALUES
(1, 'Jhon', 1);

-- --------------------------------------------------------

--
-- Table structure for table `uilanguage`
--

CREATE TABLE `uilanguage` (
  `Id` int(11) NOT NULL,
  `LanguageID` int(11) DEFAULT NULL,
  `TitleMain` varchar(30) DEFAULT NULL,
  `NoofQuestion` varchar(50) DEFAULT NULL,
  `ExamTime` varchar(20) DEFAULT NULL,
  `Finish` varchar(30) DEFAULT NULL,
  `ConfirmMessage` varchar(100) DEFAULT NULL,
  `Start` varchar(30) DEFAULT NULL,
  `ApplicantName` varchar(50) DEFAULT NULL,
  `SSN` varchar(50) DEFAULT NULL,
  `Visa` varchar(50) DEFAULT NULL,
  `Next` varchar(45) DEFAULT NULL,
  `RemainTime` varchar(30) DEFAULT NULL,
  `TypeOfExam` varchar(45) DEFAULT NULL,
  `TrialCount` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `UserType` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id`, `Username`, `Password`, `UserType`) VALUES
(1, 'rusaidmrd', 'password', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `applicant`
--
ALTER TABLE `applicant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applicant_old`
--
ALTER TABLE `applicant_old`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `applicantlicencetype`
--
ALTER TABLE `applicantlicencetype`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `demo_result`
--
ALTER TABLE `demo_result`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `exam_date`
--
ALTER TABLE `exam_date`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `exam_question`
--
ALTER TABLE `exam_question`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `grouptype`
--
ALTER TABLE `grouptype`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `licencetype`
--
ALTER TABLE `licencetype`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `monitor`
--
ALTER TABLE `monitor`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `nationality`
--
ALTER TABLE `nationality`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `pc`
--
ALTER TABLE `pc`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `question_special`
--
ALTER TABLE `question_special`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `supervisor`
--
ALTER TABLE `supervisor`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `uilanguage`
--
ALTER TABLE `uilanguage`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `applicant`
--
ALTER TABLE `applicant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `applicantlicencetype`
--
ALTER TABLE `applicantlicencetype`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `demo_result`
--
ALTER TABLE `demo_result`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exam_date`
--
ALTER TABLE `exam_date`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exam_question`
--
ALTER TABLE `exam_question`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `grouptype`
--
ALTER TABLE `grouptype`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `licencetype`
--
ALTER TABLE `licencetype`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `monitor`
--
ALTER TABLE `monitor`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nationality`
--
ALTER TABLE `nationality`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pc`
--
ALTER TABLE `pc`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `question_special`
--
ALTER TABLE `question_special`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `supervisor`
--
ALTER TABLE `supervisor`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trainer`
--
ALTER TABLE `trainer`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `uilanguage`
--
ALTER TABLE `uilanguage`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `explorecalifornia`
--
CREATE DATABASE IF NOT EXISTS `explorecalifornia` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `explorecalifornia`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `userName`, `password`) VALUES
(1, 'explorerone', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `explorers`
--

CREATE TABLE `explorers` (
  `explorerId` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `userName` varchar(15) NOT NULL,
  `password` varchar(10) NOT NULL,
  `tours` varchar(29) NOT NULL,
  `bio` varchar(4096) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `explorers`
--

INSERT INTO `explorers` (`explorerId`, `firstName`, `lastName`, `dob`, `email`, `address`, `city`, `state`, `zipcode`, `userName`, `password`, `tours`, `bio`) VALUES
(1, 'Jackie', 'Smith', '1985-07-10', 'jackiesmith@somewhere.com', '123 Main St.', 'Somewhere', 'CA', '90123', 'jackies', 'password', '1,3,5', 'I\'ve lived in CA for over 20 years!'),
(2, 'David', 'Jones', '1965-11-28', 'davidjones@somewhere.com', '456 Jones Ave.', 'Smallville', 'CA', '90456', 'davidj', 'password', '3,5,8', 'I love riding bicycles!'),
(3, 'Jenny', 'Flores', '1950-02-03', 'jennyf@somewhere.com', '987 Topeka Ave.', 'Bigtown', 'CA', '90543', 'jennyf', 'password', '2,3,4,', 'I\'m heading to the beach!');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `packageId` int(11) NOT NULL,
  `packageTitle` varchar(50) NOT NULL,
  `packageDescription` varchar(4096) NOT NULL,
  `packageGraphic` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`packageId`, `packageTitle`, `packageDescription`, `packageGraphic`) VALUES
(1, 'Backpack Cal', 'Explore California our favorite way...by foot! Get outdoors and into the millions of acres of forests, desert, and spectacular scenery that California is famous for. We have a wide range of backpacking tour options, from single day-trips to week long guided excursions. Find a comfortable pair of shoes and come hiking with us! ', 'back_bug.gif'),
(2, 'California Calm', 'Looking for a little relaxation? California Calm is our hand-picked collection of incredible California Spas and therapy retreats. Enjoy unbelievable massage treatments, beauty regimens, and active getaways. We\'ve combed the entire state to find the finest spa experiences available...imagine that, we\'ve even made choosing a spa retreat relaxing! ', 'calm_desc_bug.gif'),
(3, 'California Hotsprings', 'Let\'s be honest, you have no idea what a hot spring is...do you? Well, we do, and we can\'t wait for you to experience the relaxing warmth of "nature\'s hot-tubs!" We offer packages that range from all-inclusive hot spring resorts to camping opportunities next to some of the country\'s last remaining primitive springs.', 'springs_desc_bug.gif'),
(4, 'Cycle California', 'Whether you are a hard-core mountain biking enthusiast, or just looking for a cool way to see the many scenic towns and vistas of our great state, Cycle California has a package for you! Explore the thousand of miles of biking trails from Big Sur all the way to the Southern California coast. Packages range from bring-your-own bike to full bike rental and travel days. ', 'cycle_desc_bug.gif'),
(5, 'From Desert to Sea', 'Our most wide-ranging tour option! Come explore California from the stunning deserts all the way to our beautiful coast. Along the way you\'ll travel through breathtaking mountain ranges and some of the nation\'s most fertile farmland as you see why California is regarded as the most diverse state in the nation! Come see ALL that California has to offer! ', 'desert_desc_bug.gif'),
(6, 'Kids California', 'Over and over again our customer support people would hear, "but what if we have kids?" when describing a tour. Then it hit us...why not create tours specifically for kids?! California is an amazing playground for everyone and should be experienced by all. From amazing museums, outstanding parks, Disney, and kid-centered nature experiences, Kids California truly has it all! ', 'kids_desc_bug.gif'),
(7, 'Nature Watch', 'If you love the outdoors, nature, and the environment, California is the place for you! Our eco-tours range from watching seals and whales to exploring the desert for rare lizards and fauna. As inspirational as they are educational, our Nature Watch packages bring you the full range of California\'s natural beauty. ', 'nature_desc_bug.gif'),
(8, 'Snowboard Cali', 'California has some of the best snowboarding in the US and at Explore California we\'ve combed the runs to offer you the best resorts in the state. We even offer multi-resort packages for those that just can\'t get enough of that pack and grind. See you on the slopes!', 'snow_desc_bug.gif'),
(9, 'Taste of California', 'Tour of the wine country? Tour of the olive groves? We couldn\'t decide so we put them together in one of our most amazing tour packages ever. Taste of California immerses you in the serene, romantic lifestyle of the California wine country and olive groves. Along the way you\'ll experience some of the best cuisine in the world, all made from fresh local ingredients by some of the nation\'s most renown chefs. Bon Appetit! ', 'taste_desc_bug.gif');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `stateId` varchar(2) NOT NULL,
  `stateName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`stateId`, `stateName`) VALUES
('AK', 'Alaska'),
('AL', 'Alabama'),
('AR', 'Arkansas'),
('AZ', 'Arizona'),
('CA', 'California'),
('CO', 'Colorado'),
('CT', 'Connecticut'),
('DC', 'District of Columbia'),
('DE', 'Delaware'),
('FL', 'Florida'),
('GA', 'Georgia'),
('HI', 'Hawaii'),
('IA', 'Iowa'),
('ID', 'Idaho'),
('IL', 'Illinois'),
('IN', 'Indiana'),
('KA', 'Kansas'),
('KY', 'Kentucky'),
('LA', 'Louisiana'),
('MA', 'Massachusetts'),
('MD', 'Maryland'),
('ME', 'Maine'),
('MI', 'Michigan'),
('MN', 'Minnesota'),
('MO', 'Missouri'),
('MT', 'Montana'),
('NC', 'North Carolina'),
('ND', 'North Dakota'),
('NE', 'Nebraska'),
('NH', 'New Hampshire'),
('NJ', 'New Jersey'),
('NM', 'New Mexico'),
('NV', 'Nevada'),
('NY', 'New York'),
('OH', 'Ohio'),
('OK', 'Oklahoma'),
('OR', 'Oregon'),
('PA', 'Pennsylvania'),
('RI', 'Rhode Island'),
('SC', 'South Carolina'),
('SD', 'South Dakota'),
('TN', 'Tennessee'),
('TX', 'Texas'),
('UT', 'Utah'),
('VA', 'Virginia'),
('VT', 'Vermont'),
('WA', 'Washington'),
('WI', 'Wisconsin'),
('WV', 'West Virginia'),
('WY', 'Wyoming');

-- --------------------------------------------------------

--
-- Table structure for table `tours`
--

CREATE TABLE `tours` (
  `tourId` int(11) NOT NULL,
  `packageId` int(11) NOT NULL,
  `tourName` varchar(50) NOT NULL,
  `blurb` varchar(1024) NOT NULL,
  `description` varchar(4096) NOT NULL,
  `price` double NOT NULL,
  `difficulty` varchar(10) NOT NULL,
  `graphic` varchar(20) NOT NULL,
  `length` int(11) NOT NULL,
  `region` varchar(50) NOT NULL,
  `keywords` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tours`
--

INSERT INTO `tours` (`tourId`, `packageId`, `tourName`, `blurb`, `description`, `price`, `difficulty`, `graphic`, `length`, `region`, `keywords`) VALUES
(1, 1, 'Big Sur Retreat', 'Big Sur is big country. The Big Sur Retreat takes you to the most majestic part of the Pacific Coast and show you the secret trails.', '"The region know as Big Sur is like Yosemite\'s younger cousin, with all the redwood scaling, rock climbing and, best of all, hiking that the larger park has to offer. Robison Jeffers once said, ""Big Sur is the greatest meeting of land and sea in the world,"" but the highlights are only accessible on foot. Our 3-day tour allows you to choose from multiple hikes led by experienced guides during the day, while comfortably situated in the evenings at the historic Big Sur River Inn. Take a tranquil walk to the coastal waterfall at Julia Pfeiffer Burns State Par or hike to the Married Redwoods. If you\'re prepared for a more strenuous climb, try Ollason\'s Peak in Toro Park. An optional 4th day includes admission to the Henry Miller Library and the Point Reyes Lighthouse."', 750, 'Medium', 'map_bigsur.gif', 3, 'Central Coast', 'Hiking, National Parks, Big Sur'),
(2, 1, 'In the Steps of John Muir', 'Follow in the steps on John Muir, famous naturalist and founder of the Sierra Club, and walk the same trails he helped blaze in and around Yosemite National Park.', '"John Muir famously walked from San Francisco to Yosemite, an astounding 300 miles, and this tour is designed to trace his steps-- at least part of the way. This tour is not for the faint of heart though. This is a true backpacker\'s adventure, 37 miles in 3 days. Along the way, you\'ll bear witness to the classic monuments of Yosemite, such as Vernal Falls, Nevada Falls, Half Dome, Cathedral Peak, Tuolumne Meadows and Mt. Lyell. At Nevada Falls, the trail becomes narrow and from then on, you\'ll be privy to a ""secret"" Yosemite, including a rarely seen face of Half Dome. John Muir Trail tickets are required- and hard to come by- but Explore California has you covered. We\'ll also provide a checklist so that you come prepared with the right equipment and a seasoned guide for your tour."', 600, 'Difficult', 'map_yosemite.gif', 3, 'Northern California', 'Hiking, National Parks, Yosemite, John Muir, Camping'),
(3, 1, 'The Death Valley Survivor\'s Trek', 'Hot stuff? Need more of a challenge? Take this tour to the hottest place in North America: Death Valley.', '"This 2 day, 1 night tour takes you deep into the heart of Death Valley National Park. Due to extreme temperatures (120 degrees and higher) in the summer months, this tour is only offered November through April.  This overnighter is no picnic though. Our guide will lead you on a 12 mile, off-trail hike down Death Valley Wash and into the backcountry for an overnight, hard terrain camping. Luckily, 12 miles takes you out of range of almost any city lights, something that draws thousands of star gazers to Death Valley ever year. If you can survive the 12 miles back, take advantage of the location to stop in at Scotty\'s Castle, a genuine castle built by the eccentric and wealthy Walter Scott for his wife. This tour will make you truly appreciate modern luxuries."', 250, 'Difficult', 'map_valley.gif', 2, 'Inland Empire', 'Hiking, Desert, Camping, Mojave, Death Valley'),
(4, 1, 'The Mt. Whitney Climbers Tour', 'Climb to the sky! The Mt. Whitney Climbers Tour takes you to the top of this 14,000 ft. of mountain in 4 days- our longest and most strenuous backpacking tour.', 'Backpackers and hikers taking the Mt. Whitney Climbers Tour won\'t need hooks and rappelling gear, but they will need to be on the look out for majestic sunrises, giant granite peaks and everything from brown bears to marmots. You\'ll approach the towering peak from the trailhead on the western face, starting 6,000 feet above sea level. The Mt. Whitney Trail extends 11 miles and another 8 feet up to the peak. While no expensive training is required, you\'ll still need planning, permits, and preparation. Explore California will set you up with a trail permit, a two night camping pass, and an expert guide. We\'ll also help outfit you with the correct gear and make sure you are prepared for the length and elevation gain of the climb.', 650, 'Difficult', 'map_whitney.gif', 4, 'Northern California', 'Hiking, Climbing, Backpacking, Mt. Whitney'),
(5, 1, 'Channel Islands Excursion', 'The chain known as the Channel Islands offer some of the most diverse and unique landscape on the Pacific coast. No motor vehicles are allowed on the islands, which makes this daytrip hiking package the best and most interesting way to visit.', 'The Channel Islands Excursion starts with a ferry from beautiful Ventura to the nearest island in the strand, Santa Cruz. You\'ll spend the day wandering the rocky coasts, sea anemone and barnacle studded shoreline, and wildflower-strewn meadows of the islands. Visit the herd of wild buffalo housed on Santa Catalina and keep an eye peeled for the endangered island fox. Take a break for lunch on Catalina in the quaint, turn of the century styled Avalon and make sure to visit the Art Deco Catalina Casino. Before ferrying home, visit the botanical gardens or climb to one of the islands\' high points and do some inexpensive whale watching. Blue whale season extends the late spring through summer months. (The Whaling Tour, run by Island Packers, is also available for an additional cost.)', 150, 'Easy', 'map_channel.gif', 1, 'Southern California', 'Channel Islands, Boating, Whale watching, Hiking'),
(6, 2, 'Day Spa Package', 'Trying to pack some serious relaxation into a short timeframe? Try our Day Spa Package, a full 8 hour immersive experience in seductive the Ojai Valley that will ease away months\' worth of tension.', 'The Day Spa Package: it\'s all in the name. One day, one spa, but not just any day or any other spa. The Ojai Valley Inn & Spa is recognized by Trip Advisor as the World\' #1 spa and among the top 10 by USA Today. Your day of relaxation starts with a kuyam, a treatment combing cleansing desert clay, dry heat, inhalation and Chumash guided meditation. Choose from among several massage services, from Swedish to deep tissue, and body treatments, including the refreshing Pixie Tangerine & Pomegranate Scrub. Finish with a lavender manicure and pedicure or a "gentleman\'s facial." Couples can enjoy joint massages, and expectant mothers should treat themselves to one of the nurturing prenatal treatments. In total, the package includes 5 straight hours of treatments, reserving time for a delicious spa lunch and time to linger by one of the many pools. This day will be one you think of for weeks.', 550, 'Easy', 'map_ojai.gif', 1, 'Southern California', 'Spa, Relaxation, Ojai, Art, Yoga'),
(7, 2, 'Restoration Package', 'The Restoration Package is a 2 day balm for the tired soul. Choose from among three destinations that uniquely combine world-class spa services and attention to the spirit, in locations of unparalleled natural beauty.', 'California is no stranger to luxury (think Rodeo Drive) but we also offer a myriad of ways to not only pamper the body, but the spirit as well. Choose from among 3 options designed to help you relax and restore in the Restoration Package. Reconnect with nature and with yourself at the San Juan Spa, our Orange County Oasis; go backwoods, literally, on our Yosemite Yoga Retreat; or take comfort in our Napa Valley Validation spa sessions. Perfect for couples, the tireless mother or father you want to thank, or just yourself, this tour will immerse you in serenity.', 900, 'Easy', 'map_various.gif', 2, 'Varies', 'Spa, Relaxation, Art, Yoga'),
(8, 2, 'Huntington Library and Pasadena Retreat Tour', 'This package is perfect for those who want to be pampered, but don\'t just want to rest on their laurels all day. Stimulate your mind visiting the Huntington Library\'s art and gardens and then settle back for some dining and primping at the Beauty Bar.', 'This package is a rewarding for the mind and the soul. Visit the grounds of the incredible Huntington Library and Gardens, with over 200 acres of roses, waterways, cactus gardens and other exotic species. Have lunch in the famous Tea Room and then go inside the fabulous Art Deco buildings to survey the art collection. Afterwards, visit the Beauty Bar\'s Pasadena location and enjoy a meal and drinks while having your nails buffed and your feet soaked.', 225, 'Easy', 'map_pasadena.gif', 1, 'Southern California', 'Spa, Relaxation, Art, Yoga'),
(9, 3, 'Avila Beach Hot springs', 'Spend a weekend in a rustic log cabin, within walking distance of the historic Avila Hot Springs and minutes from the beach.', '"Chumash have occupied Avila Beach for centuries, but it wasn\'t until the late 19th century that the rest of California realized its ideal climate, proximity to the ocean and artesian springs made Avila Beach an ideal resort town. The hot springs in Avila are really unique, creating pools that hover at a natural 104 degrees, which draws aficionados from far and wide.  You\'ll stay at the historic Avila Hot Springs Resort, situated between oak-covered foothills that keep the morning fog away and make a natural year round air conditioner, which will enhance a nice morning, afternoon, or evening swim. This package include a two night stay in a private cabin above the springs, and a 3 day pass to the fresh water pool and 400 sq feet hot mineral pool. Optional day trips include two hour kayaking tours (we love the Cave Expedition) from Central Coast Kayaks and docent-led trips from the Point San Luis Lighthouse down the Pechos Trail. "', 1000, 'Easy', 'map_avilabeach.gif', 3, 'Central Coast', 'Hot springs, hiking, cabin, beach, kayaking, hiking'),
(10, 3, 'Matilija Hot springs', 'Visit the Matilija Sanctuary, located above the tranquil Ojai Valley, and indulge in the waters that flow from the natural sulfur springs.', 'Matilija Hot Springs has long been known to locals in this small community as a place to take a hot midnight dip in the middle of winter or a leisurely summer day, leaping between the sulfur pools and the cold creek nearby. Matilija Sanctuary, however, contains private springs that can only be accessed by special guests, including members of Explore California. Choose from a 3 or 4 day stay. Besides the complimentary nightly fireside music and the on-site crafts lodge other activities include day trips to downtown Ojai for shopping in it\'s Spanish revival style arcade and hiking in the East End, an Eden-esque experience if we\'ve ever had one.', 1000, 'Easy', 'map_ojai.gif', 3, 'Central Coast', 'Hot springs, Ojai, hiking, swimming, rustic, nature'),
(11, 4, 'Amgen Tour of California Special', 'This year only, we’re also offering a special package that allows serious cyclists to follow behind a competitor in the AMGEN bike race, a race that mimics the conditions in the Tour de France. Spots are limited so reserve your seat now!', 'The AMGEN Tour of California is the largest cycling event in the US, over 750 miles and includes cycling world champions, Tour de France competitors, and Olympic athletes. It\'s an 8-leg tour, designed to mimic the various conditions in the Tour de Trance, and Explore California has the unique pleasure of being able to offer 50 of our members spots behind the peloton, or main group of racers, on two legs of the two. This is a special, one-time only offer. Customers should be in physical and mental shape to complete this two-week ride. Be prepared to complete a detailed questionnaire about skill level and any existing health problems.', 6000, 'Difficult', 'map_northerncal.gif', 14, 'Northern California', 'Cycling, Sports'),
(12, 4, 'Monterey to Santa Barbara Tour', 'Ditch the four wheel drive and hop on two, for this exploration of the Pacific coast with other bicycling enthusiasts. Overnight stops take you from Carmel to Lompoc, so you can take in everything from rolling vineyards to the Channel Islands.', 'This tour takes you along the best spots on the California coastline, including overnight stops in Carmel, Big Sur, San Luis Obispo, Lompoc and Santa Barbara. Cyclists of all abilities can join this scenic tour of the Pacific coast. Side trips include the famous 17 Mile Drive in cypress studded Carmel, and visits to wineries around Paso Robles and Solvang, many featured in the movie Sideways. If you tire along the way, take a break in one of our luxury equipped companion cars, which follows riders along every leg of the trip. Dine with the group or request private reservations at any one of the fining dining spots our reservationists recommend. Private accommodations are provided for the overnight stays. Breaks before and after lunch provide plenty of time for sightseeing and shopping.', 2500, 'Medium', 'map_various.gif', 6, 'Varies', 'Cycling'),
(13, 4, 'Cycle California: My Way', 'Cycle California your way! Choose a route, length and distance that fits your skill level, take advantage of our partnership with the AMGEN tour, and a group of riders with common interests. We tailor this package for you, down to the mile.', '"Cycling is a fantastic way to see California and Cycle California: My Way is a customizable package that celebrates that fact. Guided and unguided routes are available and, as with all our packages, we tailor the outings to your comfort and skill level. This is a great package for families who want to see California outside of a car (and traffic!). The most popular variety is the 6-day Monterey to Santa Barbara tour but this year only, we’re also offering a special package this year that allows serious cyclists to follow behind a competitor in the AMGEN bike race, a race that mimics the conditions in the Tour de France. Spots are limited so call now to reserve your seat now! Choose your level of experience, desired distance, and location and we\'ll give you a call back to plot your route and confirm your reservation."', 1200, 'Varies', 'map_various.gif', 0, 'Varies', 'Cycling'),
(14, 5, '2 Days Adrift the Salton Sea', 'The Salton Sea, 25% saltier than the Pacific, has been a tourist destination since the 1920s. See what attracts people to this desert oasis.', 'The Salton Sea is saltier than the Pacific, an unusual feat for inland body of water. And even though its salinity has risen over the years, due in part to lack of outflows and pollution from agricultural runoff, it has attracted a small, but dedicated population. The sea itself offers recreational opportunities including boating, camping, off-roading, hiking, use of personal watercraft, photography and bird watching. The sea has been termed a "crown jewel of avian biodiversity," being a major resting stop on the Pacific Flyway, a migratory path for birds. 2 Days Adrift the Salton Sea includes two nights accommodations at the Bombay Beach Inn, boat rental at the Salton City Harbor, and a guided fishing tour.', 350, '2', 'map_saltonsea.gif', 2, 'Southern California', 'Boating, Fishing, Bird watching, Desert, Sea, Eco-Tour'),
(15, 5, 'Mojave to Malibu', 'Join us for one of Explore California\'s exclusive "motorcades," Mojave to Malibu - a motorcycle tour from the outskirts of the Mojave desert down to the Malibu coast.', 'Only experienced road hogs need apply! The tour group will meet at Old Glory Motorcycle Company in Lancaster, CA to retrofit and get ready for the day\'s ride. The pack takes the Angeles Crest Highway, through Angeles National Forest, stopping at biker-friendly Newcomb Ranch for drinks and grub. Winding your way down through L.A., you\'ll take a side trip through Griffith Park, home of the observatory and that classic scene from Rebel without a Cause. After cruising Hollywood Boulevard, the tour makes its way through Santa Monica, through Topanga Canyon and ends in Malibu, where you can grab world-class seafood and burgers from the roadside diner, Paradise Cove Beach Cafe.', 200, 'Difficult', 'map_southerncal.gif', 1, 'Southern California', 'Motorcycle, Cycling, Mountains, Desert, Sea'),
(16, 5, 'Joshua Tree: Best of the West Tour', 'See Joshua Trees\' backcountry on a guided tour from the safety and security of an open-air, all-terrain vehicle, and see some of the historic spots of California\'s once wild, Wild West frontier.', '"Joshua Tree: Best of the West Tour is a day-long adventure through this grandiose national park and a snippet of wild west history from the back of an open-air all-terrain vehicle. This is a great opportunity for photo hunters to shots of the coyotes, eagles and Big Horn sheep native to the area. Multiple stops includes a visit to the Rock Gardens, a 200 million year old legacy of the San Andreas Fault. The tour stops last at Pioneertown, originally built as a motion picture set in the 1940s, but has since becomes part of California\'s history in its own right, as a living signpost of our fascination with the legends of the Wild West. Enjoy mesquite smoked barbeque and marvel at the ""bullet holes"" and functional hitching posts. The tour ends with a stop at Sunset Point, where on a clear day, you can see all the way to Mexico.     "', 150, 'Easy', 'map_southerncal.gif', 1, 'Southern California', 'Hiking, Desert, Sea, California History, Theme park'),
(17, 6, 'Kids L.A. Tour', 'Los Angeles for the young (and young at heart!) Go beyond the concrete jungle and discover just what a playground L.A. can be. ', 'The Island of the Blue Dolphins Tour starts with a ferry from beautiful Ventura to the Channel Islands, home of the "Lone Woman of San Nicolas Island," who was the inspiration for the Newbery Medal winning children\'s book. Your Island Packers ferry guide will point out local fish and fauna, and the right time of year, you might even catch a glimpse of a dolphin or a blue whale. Once onshore, hike and look out for the herd of wild buffalo housed on Santa Catalina. Also keep an eye peeled for the endangered island fox. Enjoy a kid-friendly picnic lunch prepared by the Avalon Beach Cafe at the botanical gardens or climb to one of the islands\' high points and survey the California coast from the perspective of the heroine. On the trip back to land, the ferry stops in Santa Barbara, and you\'ll have the chance to visit the famous mission where Karana lived after being rescued. One last stop for salt taffy and knick knacks at the pier and the ferry will deliver you safely back to Ventura, with your own copy of the book to take home and read as a family.', 200, 'Easy', 'map_losangeles.gif', 1, 'Southern California', 'California History, Kid friendly, Museum, Hiking, Animals '),
(18, 7, 'Endangered Species Expedition', 'California boasts the largest number of unique species in the continental United States, which makes a “natural” destination for nature lovers. For those who want to get a glimpse of California’s at-risk flora and fauna, and our efforts to preserve it, take the Endangered Species Expedition.', 'Taking a cue from the Nature Conservancy, we’ve selected 15 state parks and preserves that are shining examples of conservation in action. Just one example is the Guadalupe-Nipomo Dunes Preserve, 18 miles of Earths most biodiverse coastal dune-lagoon ecosystem. Activities include camping, hiking, horseback riding, boating and bird watching. The tour package includes 2 nights of camping and 3 days admission to the park of your choice. We can also arrange for RV rentals. This is a great package for families who want to pass down a great experience and an education to the next generation, while participating in preserving a part of their future.', 600, 'Medium', 'map_various.gif', 3, 'Central Coast', 'Eco Tour, Camping, Animals, Boating, Hiking'),
(19, 7, 'Fossil Tour', 'The Fossil Tour to the Mojave Desert and La Brea Tar Pits is ideal for budding archeologists.', 'Hunting for trilobites? Searching for prehistoric shark teeth? We can show you where to find them! The Fossil Tour explores not just the history, but the ancient past of what we know as California. In our own backyard, we have access to a fossil record hundreds of millions of years old. Trilobites are extinct marine arthropods (think  lobster) that lived in the part of the Pacific that is now the Mojave Desert. With an experienced hunter, you\'ll be bussed out to search for these little desert "crabs" and visit the Calico City dig, site of a disputed findings of early man living in California to 100,000 years go. Paleontology buffs will be fascinated by the remains of this dig, presided over by none other than Louis Leaky himself. Enjoy an "on the dig" meal and then return to Los Angeles for a night at the Cinema Suites bed and breakfast, a short walk from the world famous La Brea Tar Pits. Spend the second day touring the museum\'s fossil collection, watch archeologists at work, an wonder at the still active pits of tar that trapped and preserved hundreds of animals. After this tour, you\'ll start to wonder what you can uncover in your own backyard!', 500, 'Medium', 'map_various.gif', 2, 'Varies', 'Eco Tour, California History, Animals, Museum'),
(20, 7, 'Coastal Experience', 'Coastal Experience takes you to the famous Monterey Aquarium and to the enchanted Channel Islands, which hosts such unique and endangered species as the Santa Cruz fox. ', 'For 25 years, the Monterey Bay Aquarium has aspired to protect oceans for future generations by inspiring young and old with the oceans\' beauty and wonder. Explore California\'s Coastal Experience Tour takes you on a behind the scenes tour of this world famous aquarium and then on a jaunt farther south to another aquatic eco-system, the Channel Islands. At the aquarium, take a private tour and learn how the tanks are maintained, watch feedings, view the newest specimens before they are available for public view and interact with the staff. Afterwards, enjoy the rest of the exhibits, like the Secret Lives of Seahorses, and visit the shark tank, the sea otter habitat, and  the kelp forests. Next, hop on a cruise from Monterey to the Channel Islands. The boat docks outside Santa Barbara and you\'ll take a small ferry to the islands. Try snorkeling in the reefs, or take a whale watching side trip and experience the life aquatic a natural. ', 1500, 'Easy', 'map_monterey.gif', 4, 'Central Coast', 'Eco Tour, California History, Animals, Boating, Hiking'),
(21, 8, 'Mammoth Mountain Adventure', 'With over 400 inches of annual snowfall, Mammoth Mountain turns winter into a 3 season event! Learn to ski, snowboard or even snowshoe across the thousands of acres of this winter wonderland.', 'The Mammoth Mountain Adventure is 4 days of wild, winter fun. Take a lesson the first day from the Ski & Snowboard School, led by grizzly pro instructors. This tour includes a 4 full day lift pass, so when you\'re ready, you can take on any one of the 150 trails over Mammoth\'s epic terrain. Equipment rentals are included, so you can pack light. Need a break? Take a scenic gondola to the summit of Mammoth Mountain, 11,000 feet in all, or take a Snowcat tour of the backcountry. Enjoy dinners at the Mammoth Mountain Inn, a snowball\'s throw from the main lodge, where you\'ll also be provided 3 night\'s complimentary lodging. This package is available October through early June, but lift tickets are rare, so book now.', 800, 'Difficult', 'map_mammoth.gif', 4, 'Southern California', 'Skiing, Snowboarding, Cabin, Hiking, Mountains'),
(22, 8, 'Mountain High Lift-off', 'Mountain High was established in 1929, but continues to be among the top five mountain resorts in the state. Experience what draws hundreds of thousands of visitors to this snow destination each season. The Mountain High Lift-off is the weekender\'s ski spectacular, perfect for couples who need a retreat.', 'Mountain High is only an hour from Los Angeles, but once you arrive, you\'ll feel like you\'re in another world. The Mountain High Lift-off is the weekender\'s ski spectacular, perfect for couples who need a retreat, featuring two days of premium runs with an all access Express Lift ticket, available exclusively through Explore California. No more waiting in line and guaranteed admittance even when the resort sells out. Accommodations are provided at the Larks Nest Cabin, a vintage charmer featuring a stone fireplace, clawfoot tub, and full kitchen. Dine at the Wrightwood Inn\'s cozy mountain pub, or grab a sandwich from the Evergreen Cafe and Raccoon Saloon. Equipment rental and transportation from Los Angeles International Airport is included.', 800, 'Difficult', 'map_southerncal.gif', 3, 'Southern California', 'Skiing, Snowboarding, Cabin, Hiking, Mountains'),
(23, 9, 'Olive Garden Tour', 'Take a quiet day to explore the lush hills and countryside around beautiful Ojai, California. You\'ll visit Ojai Olive and tour the grounds, walk through the olive groves, and enjoy a once-in-a-lifetime lunch amongst the Ojai hills, featuring homemade tapas made from the olives on-site!', 'Ojai Olive is a small, family-run olive orchard, which has been pressing their own special, fragrant olive oil for over 10 years. Immerse yourself in this ancient practice, which is both an art and an edible. The Ojai Olive tour offers begins outside with the history of the grove, an explanation of the olive varieties, their maturing process, the harvesting, a visit to the tree nursery, and more. They then take you inside the barn and explain the process of making the olive oil. Lastly, stop in the tasting room and find out how different curing and separation processes can result in such unique flavors: citrus, hints of pepper, grass. Take a break with a picnic lunch provided by Azu restaurant, makers of authentic Spanish style tapas with a California flair. Included are brioche with olive tapenade, featuring black and green olives from Ojai Olive and prepared by the chef especially for this tour.', 75, 'Easy', 'map_ojai.gif', 1, 'Southern California', 'Tasting, Olive Oil, California History, Picnic, Nature, Farming'),
(24, 9, 'Oranges & Apples Tour', 'This three day tour is a taste of some of California\'s finest fruits. The first day features apple picking, a smoking barbeque and a hayride at a small farm in the historic Oak Glen, and the second take you\'ll drive to sample the only growing place in the world for pixie tangerines, Ojai, California.', 'Oak Glen is a tiny hamlet located in the foothill of the San Bernadino Mountain, only 90 minutes from LA, but the climate makes it perfect for stone fruits, such as pears, peaches, and nectarines. However, the jewel of this town is the apple. You\'ll start the day at Riley\'s Apple Farm, where you can pick and press as many apples as you can carry. Take a hayride around the farm property and, a fun treat for kids, visit the barn animals. Feast on apple-wood smoked BBQ featuring tri-tip, ribs and chicken apple sausage. Lodging is provided at the quaint Craftin Hills Inn. The next day, it\'s a short backwoods drive to Ojai, CA, where you\'ll receive a private tour and picnic lunch at the Churchill Brenneis Orchard. Owners Jim Churchill and Lisa Brenneis are knowledgeable and warm, and you\'ll leave with a glow and the most delicious tiny tangerines you\'ve ever tasted. Spend a restful night at the Lavender Inn in beautiful downtown Ojai before returning to the regular pace.', 350, 'Easy', 'map_southerncal.gif', 3, 'Southern California', 'Tasting, Olive Oil, California History, Picnic, Nature, Farming'),
(25, 9, 'Hot Salsa Tour', 'Spice addict? Southern California is know for its heat! Try this three day tour of some of the hottest chilies, salsas, and picantes north of the Mexican border.', 'The Hot Salsa Tour is scheduled around the preeminent salsa event in the country, the annual Oxnard Salsa Festival. Enjoy spicy food, hot music and Oxnard’s cool ocean breezes in this two-day celebration of everything salsa- the food, the music and the dance. Enjoy salsa tasting from dozens of competitors- or enter your own concoction in the amateur competition. Flavors range from fresh & fruity, hot & smoky, sweet & spicy. Shop from dozens of boutique vendors. Take a seat, or shake a leg, in front of three stages, featuring everything from jazz bands to rockabilly. The second day you\'ll really be prepared to tango, after taking an evening salsa lesson from the Arthur Murray Dance Studio. If things get too hot, you can cool your heels at the luxurious Mandalay Beach Hotel and Resort and refresh yourself by the pool or take advantage of the private beach access. This yearly special is something no hot tamale wants to miss!', 400, 'Easy', 'map_southerncal.gif', 3, 'Southern California', 'Tasting, Oranges, Apples, California History, Picnic, Nature, Farming'),
(26, 9, 'A Week of Wine', 'Spend a week in wine country. Watch the evolution of a wine from harvesting to corking, in the heart of Sonoma Valley, considered the birthplace of wine-making in California. ', 'Immerse yourself in the culture and lifestyle of a California winery. Spend 5 days in your private guest villa at the Stockbridge Winery, located in scenic Sonoma. You\'ll spend your days wandering the vineyards, touring the presses and cellars, and assisting staff in making America\'s favorite wine. Enjoy Tuscan-style meals served al fresco, overlooking the gorgeous countryside. Day trips include dinner in Sausalito, hiking in the redwood forests, and lunch in downtown San Francisco.', 850, 'Easy', 'map_winecountry.gif', 5, 'Napa/Sonoma Counties', 'Winery, hiking, relaxing, cooking, Napa Valley');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `explorers`
--
ALTER TABLE `explorers`
  ADD PRIMARY KEY (`explorerId`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`packageId`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`stateId`);

--
-- Indexes for table `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`tourId`),
  ADD KEY `packageId` (`packageId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `explorers`
--
ALTER TABLE `explorers`
  MODIFY `explorerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `packageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tours`
--
ALTER TABLE `tours`
  MODIFY `tourId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;--
-- Database: `falconradar`
--
CREATE DATABASE IF NOT EXISTS `falconradar` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `falconradar`;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--
-- in use(#1146 - Table 'falconradar.location' doesn't exist)
-- Error reading data: (#1146 - Table 'falconradar.location' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `sign`
--
-- in use(#1146 - Table 'falconradar.sign' doesn't exist)
-- Error reading data: (#1146 - Table 'falconradar.sign' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `violation`
--
-- in use(#1146 - Table 'falconradar.violation' doesn't exist)
-- Error reading data: (#1146 - Table 'falconradar.violation' doesn't exist)
--
-- Database: `gm_admin`
--
CREATE DATABASE IF NOT EXISTS `gm_admin` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gm_admin`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` text,
  `file` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;--
-- Database: `holoteq_tab`
--
CREATE DATABASE IF NOT EXISTS `holoteq_tab` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `holoteq_tab`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--
-- in use(#1146 - Table 'holoteq_tab.admin' doesn't exist)
-- Error reading data: (#1146 - Table 'holoteq_tab.admin' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `area`
--
-- in use(#1146 - Table 'holoteq_tab.area' doesn't exist)
-- Error reading data: (#1146 - Table 'holoteq_tab.area' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `car`
--
-- in use(#1146 - Table 'holoteq_tab.car' doesn't exist)
-- Error reading data: (#1146 - Table 'holoteq_tab.car' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `carimage`
--
-- in use(#1146 - Table 'holoteq_tab.carimage' doesn't exist)
-- Error reading data: (#1146 - Table 'holoteq_tab.carimage' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `delay`
--
-- in use(#1146 - Table 'holoteq_tab.delay' doesn't exist)
-- Error reading data: (#1146 - Table 'holoteq_tab.delay' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `language`
--
-- in use(#1146 - Table 'holoteq_tab.language' doesn't exist)
-- Error reading data: (#1146 - Table 'holoteq_tab.language' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `late`
--
-- in use(#1146 - Table 'holoteq_tab.late' doesn't exist)
-- Error reading data: (#1146 - Table 'holoteq_tab.late' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--
-- in use(#1146 - Table 'holoteq_tab.lesson' doesn't exist)
-- Error reading data: (#1146 - Table 'holoteq_tab.lesson' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `lesson_bk`
--
-- in use(#1146 - Table 'holoteq_tab.lesson_bk' doesn't exist)
-- Error reading data: (#1146 - Table 'holoteq_tab.lesson_bk' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `lessondetail`
--
-- in use(#1146 - Table 'holoteq_tab.lessondetail' doesn't exist)
-- Error reading data: (#1146 - Table 'holoteq_tab.lessondetail' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `scheduler`
--
-- in use(#1146 - Table 'holoteq_tab.scheduler' doesn't exist)
-- Error reading data: (#1146 - Table 'holoteq_tab.scheduler' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `student`
--
-- in use(#1146 - Table 'holoteq_tab.student' doesn't exist)
-- Error reading data: (#1146 - Table 'holoteq_tab.student' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `studentimage`
--
-- in use(#1146 - Table 'holoteq_tab.studentimage' doesn't exist)
-- Error reading data: (#1146 - Table 'holoteq_tab.studentimage' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--
-- in use(#1146 - Table 'holoteq_tab.trainer' doesn't exist)
-- Error reading data: (#1146 - Table 'holoteq_tab.trainer' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `trainerimage`
--
-- in use(#1146 - Table 'holoteq_tab.trainerimage' doesn't exist)
-- Error reading data: (#1146 - Table 'holoteq_tab.trainerimage' doesn't exist)
--
-- Database: `laraval_app`
--
CREATE DATABASE IF NOT EXISTS `laraval_app` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laraval_app`;
--
-- Database: `laraval_contact_manager`
--
CREATE DATABASE IF NOT EXISTS `laraval_contact_manager` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laraval_contact_manager`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `laravel_ajax_crud`
--
CREATE DATABASE IF NOT EXISTS `laravel_ajax_crud` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laravel_ajax_crud`;

-- --------------------------------------------------------

--
-- Table structure for table `blog_post`
--

CREATE TABLE `blog_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog_post`
--

INSERT INTO `blog_post` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Title 1', 'description 1', '2016-12-28 07:07:53', '2016-12-28 07:07:53');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_12_28_095202_create_blog_post_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_post`
--
ALTER TABLE `blog_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_post`
--
ALTER TABLE `blog_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `multiple`
--
CREATE DATABASE IF NOT EXISTS `multiple` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `multiple`;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(12) NOT NULL,
  `name` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `name`) VALUES
(1, 'Alloyweels,foglights, Hid lights, roof rack, Side Skirts, Spoiler, Spotlights');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;--
-- Database: `mydb`
--
CREATE DATABASE IF NOT EXISTS `mydb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mydb`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `firstName` varchar(20) DEFAULT NULL,
  `lastName` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`firstName`, `lastName`, `email`, `password`) VALUES
('ASDF', 'ASDF', 'admin@gmail.com', 'admin'),
('asdf', 'asdf', 'admin@gmail.com', 'admin'),
('Rusaid', 'Mohamed', 'rdrusaid77@gmail.com', 'rusaid');
--
-- Database: `oophp`
--
CREATE DATABASE IF NOT EXISTS `oophp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `oophp`;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `car_id` int(10) UNSIGNED NOT NULL,
  `make_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `yearmade` year(4) NOT NULL,
  `mileage` mediumint(8) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`car_id`, `make_id`, `yearmade`, `mileage`, `price`, `description`) VALUES
(1, 5, 2007, 113688, '13550.00', 'Green Chrysler 300. Only one owner, very carefully maintained. Top of the line, and beautifully styled, this is an outstanding ride with great performance.'),
(2, 2, 2007, 126570, '7545.00', 'Red Ford Focus. "Great bargain as a family car."'),
(3, 12, 2012, 517, '20755.00', 'Demo model that\'s hardly been out on the road, this red Chevrolet Cruze is just a dream, with just about every option you could ask for. Great fuel economy, too.'),
(4, 16, 2010, 116626, '10554.00', 'Red Camry in good running condition. Sound electrics and bodywork. Clean interior, appears never to have been smoked in.'),
(5, 7, 2011, 24694, '26951.00', 'Space grey BMW 3 series with beige leather interior. BMW Factory Certified with a 6 year/100,000 mile warranty from in-service date.'),
(6, 11, 2005, 95496, '8554.00', 'Black Jaguar S-Type in perfect working condition. Good electrics and bodywork. Low mileage. New tires recently fitted.'),
(7, 5, 2004, 75500, '6005.00', 'Black Sebring LX convertible. Very low mileage. Excellent ride. A must-see bargain.'),
(8, 4, 2001, 100145, '9550.00', 'Black SLK-Class convertible. Immaculate interior. Power top and power seats. Runs like new.'),
(9, 2, 1999, 102500, '4550.00', 'Metallic red Mustang convertible. Economy car, very easy on fuel. No negative history. No rust or damage on paintwork.'),
(10, 16, 2002, 173658, '6550.00', 'So much to like about this Silver Toyota 4Runner. Runs well, good paint, tires, nice sound system.'),
(11, 3, 2005, 122250, '11550.00', 'Black Cadillac SRX. Only one owner. Beautiful SUV.'),
(12, 17, 2002, 155500, '4305.00', 'Silver Passat. Only one owner. Leather interior. Rare bargain.'),
(13, 1, 1952, 46383, '22055.00', 'Burgundy Studebaker Roadster with newly rebuilt engine and wide whitewall tires. Three-speed manual transmission. Runs and drives amazingly.'),
(14, 10, 2006, 124209, '9120.00', 'White Santa Fe. Only one owner. Leather interior and bodywork are in great shape.'),
(15, 10, 2012, 9811, '24554.00', 'Silver Genesis with beige leather and wood trim interior. Great handling and comfort. Low, low mileage. Luxury at an affordable price.'),
(16, 14, 2005, 130500, '7505.00', 'Five-speed manual black Civic. Super clean, with 6 CD changer. This one, you must see!'),
(17, 15, 2007, 84947, '14554.00', 'Audi A4 Quattro. Gray with gray leather interior, and glass roof. Excellent value.'),
(18, 6, 1972, 77600, '28055.00', 'Citroen D Super with 5 speed manual transmission in fantastic shape. Extremely well maintained, and has obviously been treasured by its owner. A real European classic.'),
(19, 8, 2012, 19361, '14553.00', 'Yellow Fiat 500 POP. Immaculate interior and bodywork. Electrics in perfect order. Tires only slightly worn.'),
(20, 12, 2002, 160550, '4545.00', 'Blue Impala LS with gray interior. Ideal economical vehicle with good gas mileage. Dependable engine, new tires. Price includes 6 month/8,500 mile warranty.'),
(21, 9, 2005, 94995, '8150.00', 'Gold Pontiac Bonneville with low mileage. Great condition.'),
(22, 5, 2006, 102300, '7105.00', 'Green Town & Country sports van.'),
(23, 8, 2012, 5238, '16050.00', 'Pearl white Fiat 500 sport hatchback. Power glass sunroof and power windows. Only one owner.'),
(24, 17, 2005, 70388, '14055.00', 'Shadow blue Touareg in excellent condition. Heated leather seats, sun roof, and navigation. Really low mileage. '),
(25, 13, 2012, 35000, '15550.00', 'Tan Altima. Low mileage. Excellent condition.'),
(26, 2, 2004, 108694, '10980.00', 'Top of the line black Expedition XLT 5.4 liter 4WD with every conceivable option. A truly exceptional SUV.'),
(27, 2, 2005, 123059, '8000.00', 'Blue Ford Escape. Excellent condition. A real bargain.'),
(28, 13, 2010, 32791, '20505.00', 'Red Pathfinder 4WD. Only one owner. Nicely equipped with just about every feature you could want, including third-row seats.'),
(29, 14, 2002, 124334, '6004.00', 'Silver Accord with sunroof, CD player, and all new tires. Excellent condition.'),
(30, 14, 2011, 27345, '14000.00', 'Dark gray Civic. Only one owner, very low mileage. Great fuel economy.'),
(31, 12, 2011, 34256, '12000.00', 'Dark gray Malibu. Interior and bodywork in good condition. Low mileage.'),
(32, 15, 2003, 93494, '10000.00', 'Silver Audi A6 with tan interior. Two previous owners. Mechanically sound and good bodywork. New tires.'),
(33, 3, 2005, 139534, '11505.00', 'Pearl white Cadillac SRX. Electrics, engine, and bodywork all in excellent condition. Only one owner. Tires have about 3/4 of their life span left.'),
(34, 7, 2011, 33784, '25904.00', 'White 3 Series 328i. Low mileage. Bodywork in mint condition. AM/FM stereo, trip computer, power sunroof.'),
(35, 5, 2012, 7834, '16560.00', 'White Chrysler 200 with black interior. Exceptionally low mileage ');

-- --------------------------------------------------------

--
-- Table structure for table `makes`
--

CREATE TABLE `makes` (
  `make_id` smallint(5) UNSIGNED NOT NULL,
  `make` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `makes`
--

INSERT INTO `makes` (`make_id`, `make`) VALUES
(1, 'Studebaker'),
(2, 'Ford'),
(3, 'Cadillac'),
(4, 'Mercedes Benz'),
(5, 'Chrysler'),
(6, 'Citroen'),
(7, 'BMW'),
(8, 'Fiat'),
(9, 'Pontiac'),
(10, 'Hyundai'),
(11, 'Jaguar'),
(12, 'Chevrolet'),
(13, 'Nissan'),
(14, 'Honda'),
(15, 'Audi'),
(16, 'Toyota'),
(17, 'Volkswagen');

-- --------------------------------------------------------

--
-- Table structure for table `names`
--

CREATE TABLE `names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `meaning` varchar(50) NOT NULL,
  `gender` enum('girl','boy','unisex') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `names`
--

INSERT INTO `names` (`id`, `name`, `meaning`, `gender`) VALUES
(1, 'Alice', 'noble, light', 'girl'),
(2, 'Aubrey', 'ruler of elves', 'unisex'),
(3, 'Harry', 'power, ruler', 'boy'),
(4, 'Isabella', 'devoted to God', 'girl'),
(5, 'Jack', 'God is gracious', 'boy'),
(6, 'Jesse', 'gift', 'unisex'),
(7, 'Leslie', 'garden of hollies', 'unisex'),
(8, 'Oliver', 'olive tree', 'boy'),
(9, 'Oscar', 'spear of the gods', 'boy'),
(10, 'Sophia', 'wisdom', 'girl');

-- --------------------------------------------------------

--
-- Table structure for table `savings`
--

CREATE TABLE `savings` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(15) NOT NULL,
  `balance` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `savings`
--

INSERT INTO `savings` (`id`, `name`, `balance`) VALUES
(1, 'John White', '1000.00'),
(2, 'Jane Black', '1000.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `yearmade` (`yearmade`),
  ADD KEY `make_id` (`make_id`);

--
-- Indexes for table `makes`
--
ALTER TABLE `makes`
  ADD PRIMARY KEY (`make_id`);

--
-- Indexes for table `names`
--
ALTER TABLE `names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `savings`
--
ALTER TABLE `savings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `car_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `makes`
--
ALTER TABLE `makes`
  MODIFY `make_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `names`
--
ALTER TABLE `names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `savings`
--
ALTER TABLE `savings`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`make_id`) REFERENCES `makes` (`make_id`);
--
-- Database: `photo_gallery`
--
CREATE DATABASE IF NOT EXISTS `photo_gallery` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `photo_gallery`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `author` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `photo_id`, `created`, `author`, `body`) VALUES
(9, 3, '2017-07-20 10:03:16', 'Rusaid', 'This is my comment'),
(10, 1, '2017-07-20 10:03:56', 'Mohamed', 'This is test comment'),
(13, 1, '2017-07-24 10:08:17', 'Rusaid', 'this is my new comment'),
(14, 3, '2017-07-24 10:12:22', 'Aravinth', 'This is my website'),
(15, 3, '2017-07-24 10:14:54', 'Musthaq', 'This is not my website'),
(16, 3, '2017-07-24 10:17:38', 'Abdull Malik', 'This is not my website too'),
(17, 3, '2017-07-24 10:19:53', 'Thasneem', 'Ha ha i will create new one'),
(18, 1, '2017-07-25 11:34:04', 'Abdull Malik', 'This is malik\'s comment');

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `size` int(11) NOT NULL,
  `caption` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`id`, `filename`, `type`, `size`, `caption`) VALUES
(1, '1.jpg', 'image/jpeg', 67953, 'test'),
(3, 'Flat-Style-Business-Template-PSD-cssauthor.com_.jpg', 'image/jpeg', 168093, 'flat design'),
(5, '39319928-developer-wallpapers.png', 'image/png', 219708, 'lpapers'),
(6, 'pexels-photo-29475.jpg', 'image/jpeg', 383790, 'lap');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `first_name`, `last_name`) VALUES
(1, 'rdrusaid77@gmail.com', 'rusaid', 'Rusaid', 'Mohamed'),
(13, 'rusaidmrd@gmail.com', 'password', 'Rusaid', 'MRD'),
(12, 'john@example.com', 'rusaid123456', 'John', 'Doe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photo_id` (`photo_id`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;--
-- Database: `simple_register`
--
CREATE DATABASE IF NOT EXISTS `simple_register` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `simple_register`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(12) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `email`, `password`) VALUES
(3, 'Rusaid', 'Rusaid', 'rdrusaid77@gmail.com', 'rusaid'),
(6, 'Rusaid', 'Mohamed', 'rusaidmrd@gmail.com', 'rrrrrrrrrrrrr');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;--
-- Database: `social`
--
CREATE DATABASE IF NOT EXISTS `social` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `social`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_12_25_072819_create_users_table', 1),
(2, '2016_12_25_124638_create_posts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `created_at`, `updated_at`, `body`, `user_id`) VALUES
(1, '2016-12-25 10:18:42', '2016-12-25 10:18:42', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta facilis illo laudantium, iusto reiciendis id eveniet impedit esse quis voluptatum et ipsa, odio tempora architecto numquam doloremque ut corrupti fuga?', 1),
(4, '2016-12-25 12:01:17', '2016-12-25 12:01:17', 'test', 2),
(5, '2016-12-26 03:24:09', '2016-12-26 03:24:09', 'A post', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `created_at`, `updated_at`, `email`, `first_name`, `password`, `remember_token`) VALUES
(1, '2016-12-25 06:28:06', '2016-12-25 12:00:15', 'rdrusaid77@gmail.com', 'Rusaid', '$2y$10$CDSTZeRFiaOP1mmDF/Qh0u5mhkxQWMi4hO2iKmvYhSZMj9qCQbPBO', 'XPu8eaEMIb1NDMRHJYS9pO0U4xYtC19KB0ff8PZH0qPavrm6xJELmiKDqkHR'),
(2, '2016-12-25 07:18:16', '2016-12-25 07:18:16', 'rusaidmrd@gmail.com', 'Rusaid Mohamed', '$2y$10$zAEU1vSG87VfHfpdVYZpreKrB0oGMC1i7vD5CZL.Mi2uHzbbr6pTO', NULL),
(3, '2016-12-25 07:34:56', '2016-12-25 07:34:56', 'asamfarook@gmail.com', 'asam', '$2y$10$yOBCIR1lIodxB8gPYU87XeL5hSEndhMOM61QOQNGamZYGpoNFw462', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;--
-- Database: `task`
--
CREATE DATABASE IF NOT EXISTS `task` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `task`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_12_28_104119_create_tasks_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(2, 'hey', 'hi my naem is rubnsm ', NULL, '2016-12-28 09:31:17'),
(3, 'title3', 'description 13', NULL, NULL),
(4, 'title4', 'description 14', NULL, NULL),
(5, 'Test', 'desccc', '2016-12-28 08:32:10', '2016-12-28 08:32:10'),
(6, 'The Best article', 'theeeee besttttt articlkeeeeee', '2016-12-28 08:34:00', '2016-12-28 08:34:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `todoapp2016`
--
CREATE DATABASE IF NOT EXISTS `todoapp2016` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `todoapp2016`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_12_22_124404_create_projects_table', 1),
('2016_12_22_124414_create_tasks_table', 1),
('2016_12_22_124424_create_subtasks_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8_unicode_ci NOT NULL,
  `duedate` date NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subtasks`
--

CREATE TABLE `subtasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `task_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8_unicode_ci NOT NULL,
  `duedate` date NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8_unicode_ci NOT NULL,
  `duedate` date NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_user_id_index` (`user_id`);

--
-- Indexes for table `subtasks`
--
ALTER TABLE `subtasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subtasks_task_id_index` (`task_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_project_id_index` (`project_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subtasks`
--
ALTER TABLE `subtasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `traffic`
--
CREATE DATABASE IF NOT EXISTS `traffic` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `traffic`;

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `phone_no` int(15) NOT NULL,
  `fax_no` int(15) DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL,
  `area_no` int(11) NOT NULL,
  `street_no` int(11) NOT NULL,
  `building_no` int(11) NOT NULL,
  `city` varchar(45) NOT NULL,
  `po_box` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `phone_no`, `fax_no`, `website`, `area_no`, `street_no`, `building_no`, `city`, `po_box`, `school_id`) VALUES
(44, 70457636, 662247968, '', 12, 456, 55, 'Alsadd', 12800, 3);

-- --------------------------------------------------------

--
-- Table structure for table `basic`
--

CREATE TABLE `basic` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `image` blob,
  `about` text,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `language` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `language`) VALUES
(5, 'Arabic'),
(6, 'English'),
(7, 'Urdu'),
(8, 'Hindi'),
(9, 'Tamil'),
(10, 'Malayalam'),
(11, 'Sinhala'),
(12, 'Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `date-of-est` datetime DEFAULT NULL,
  `image` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`id`, `name`, `email`, `password`, `date-of-est`, `image`) VALUES
(3, 'United Driving School', 'united@gmail.com', 'password', NULL, NULL),
(19, 'Karwa', 'karwa@gmail.com', 'password', NULL, NULL),
(20, 'karwa@gmail.com', 'rusaidmrd', 'passwordfghjf', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `school_lang`
--

CREATE TABLE `school_lang` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_lang`
--

INSERT INTO `school_lang` (`id`, `school_id`, `lang_id`) VALUES
(17, 19, 0),
(37, 3, 5),
(38, 3, 8),
(47, 19, 7),
(48, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic`
--
ALTER TABLE `basic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_lang`
--
ALTER TABLE `school_lang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `basic`
--
ALTER TABLE `basic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `school_lang`
--
ALTER TABLE `school_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;--
-- Database: `uscenter`
--
CREATE DATABASE IF NOT EXISTS `uscenter` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `uscenter`;

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(2, 2, 'mf8ICfuQu0c9rywl2XFn06mesRf1IYzU', 1, '2016-12-27 16:32:14', '2016-12-27 16:29:36', '2016-12-27 16:32:14'),
(4, 4, 'km4YzWEWfd7zMvP8xgeNyNzQcrSxqXqN', 1, '2016-12-28 03:55:49', '2016-12-28 03:55:19', '2016-12-28 03:55:49'),
(8, 8, 'xmLdA8NsBeIxw1VibWOCrI1Gwqqyi6xL', 1, '2017-01-02 07:19:58', '2017-01-02 07:19:17', '2017-01-02 07:19:58');

-- --------------------------------------------------------

--
-- Table structure for table `category_types`
--

CREATE TABLE `category_types` (
  `id` int(12) NOT NULL,
  `cat_type_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_types`
--

INSERT INTO `category_types` (`id`, `cat_type_name`) VALUES
(1, 'Job'),
(2, 'Marriage lub'),
(3, 'Car'),
(4, 'Real State'),
(5, 'More');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_07_02_230147_migration_cartalyst_sentinel', 1);

-- --------------------------------------------------------

--
-- Table structure for table `persistences`
--

CREATE TABLE `persistences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(5, 2, '5R6DaQg2Ap2wmjw9FDcwEKyq8blNyyzd', '2016-12-28 04:55:03', '2016-12-28 04:55:03'),
(6, 2, 'RmdzsuaF5KK0HRosduJWZelwFHVTBFtd', '2016-12-28 09:39:00', '2016-12-28 09:39:00'),
(7, 2, 'HjjrgiORqeAPHcIx50DsdXnmBwd7gKBe', '2016-12-28 13:39:15', '2016-12-28 13:39:15'),
(8, 2, 'iiNJKod8cFWi7o7tv1kdIFWoHCAbDnf3', '2016-12-29 04:06:20', '2016-12-29 04:06:20'),
(16, 8, 'P0wYjI1zgTwnmxNBYWC9gwOBZks0amxV', '2017-01-02 08:46:40', '2017-01-02 08:46:40');

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(2, 2, '2016-12-27 16:29:37', '2016-12-27 16:29:37'),
(3, 2, '2016-12-28 03:52:15', '2016-12-28 03:52:15'),
(4, 2, '2016-12-28 03:55:19', '2016-12-28 03:55:19'),
(5, 2, '2016-12-28 03:57:43', '2016-12-28 03:57:43'),
(6, 2, '2016-12-28 04:01:02', '2016-12-28 04:01:02'),
(7, 2, '2016-12-28 04:02:45', '2016-12-28 04:02:45'),
(8, 1, '2017-01-02 07:19:17', '2017-01-02 07:19:17');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', NULL, NULL, NULL),
(2, 'user', 'User', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(1, NULL, 'global', NULL, '2016-12-27 17:03:01', '2016-12-27 17:03:01'),
(2, NULL, 'ip', '::1', '2016-12-27 17:03:01', '2016-12-27 17:03:01'),
(3, NULL, 'global', NULL, '2016-12-27 17:03:13', '2016-12-27 17:03:13'),
(4, NULL, 'ip', '::1', '2016-12-27 17:03:13', '2016-12-27 17:03:13'),
(5, 1, 'user', NULL, '2016-12-27 17:03:13', '2016-12-27 17:03:13'),
(6, NULL, 'global', NULL, '2017-01-02 06:50:33', '2017-01-02 06:50:33'),
(7, NULL, 'ip', '::1', '2017-01-02 06:50:33', '2017-01-02 06:50:33'),
(8, 2, 'user', NULL, '2017-01-02 06:50:33', '2017-01-02 06:50:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_web` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_news_our` tinyint(1) NOT NULL DEFAULT '0',
  `is_news_partner` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `last_login`, `first_name`, `last_name`, `company_name`, `company_web`, `phone_no`, `street`, `city`, `is_news_our`, `is_news_partner`, `created_at`, `updated_at`) VALUES
(2, 'rusaidmrd@gmail.com', '$2y$10$gZuU5wu2bKZdU9KzaoDEYe18/gMhhfcOTvLipq3mKI.UOKQaQf0Rm', NULL, '2017-01-02 06:50:45', 'Rusaid', 'Mohamed', 'Mrdevstudio', 'www.mrdevstudio.com', '76457636', '114, nikagolla,yatawatta', 'Matale', 0, 0, '2016-12-27 16:29:36', '2017-01-02 06:50:45'),
(3, 'rd.rusaid@yahoo.com', '$2y$10$Lm1m3Qf04PG5FvMseevVUOUIp6R6oLn2JTI.Us5Ohy2ojwPg0ilFy', NULL, NULL, 'Rusaid', 'Mohamed', NULL, NULL, NULL, NULL, NULL, 0, 0, '2016-12-28 03:52:15', '2016-12-28 03:52:15'),
(4, 'yeba@stromox.com', '$2y$10$4jR7NPSEHGephN4Y/MmrxOdzLnCOIYDtcNvR67r1qnmfXGnKlqbMa', NULL, NULL, 'Rusaid', 'Rusaid', NULL, NULL, NULL, NULL, NULL, 0, 0, '2016-12-28 03:55:19', '2016-12-28 03:55:19'),
(5, 'yucovelipa@9me.site', '$2y$10$..gLE/v3X...GjBYLew.puig/5sNHGEylP5GdXugBxjSDC2eoFz2y', NULL, NULL, 'Mohamed', 'yahomo', NULL, NULL, NULL, NULL, NULL, 0, 0, '2016-12-28 03:57:42', '2016-12-28 03:57:42'),
(6, 'kaxataxeze@dr69.site', '$2y$10$A7mIL0.Fp.LYTteu4kidjuDGsDQzLs046FnU2JMa44V3QhAPEkWXy', NULL, NULL, 'Mohamed', 'Kahatex', NULL, NULL, NULL, NULL, NULL, 0, 0, '2016-12-28 04:01:02', '2016-12-28 04:01:02'),
(7, 'tifikelav@fulvie.com', '$2y$10$oe0sgBWdlnYNFGC3EZxIgelwZ0MnyA8MvStesvK75Kslxir8qWpJK', NULL, NULL, 'Mohamed', 'Tifikel', NULL, NULL, NULL, NULL, NULL, 0, 0, '2016-12-28 04:02:45', '2016-12-28 04:02:45'),
(8, 'rdrusaid77@gmail.com', '$2y$10$D1/mOl/tbOHW8MgbwbSSE.TgzOaC.nkC4rzCy.Q4/rrIUcKIOPoBi', NULL, '2017-01-02 08:46:40', 'Admin', 'Rusaid', NULL, NULL, NULL, NULL, NULL, 0, 0, '2017-01-02 07:19:17', '2017-01-02 08:46:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_types`
--
ALTER TABLE `category_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `category_types`
--
ALTER TABLE `category_types`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;--
-- Database: `wassit`
--
CREATE DATABASE IF NOT EXISTS `wassit` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wassit`;

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `about_id` int(32) NOT NULL,
  `about_content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `car_details`
--

CREATE TABLE `car_details` (
  `car_detail_id` int(32) NOT NULL,
  `car_id` int(32) NOT NULL,
  `exterior_color` varchar(255) NOT NULL,
  `door_count` varchar(255) NOT NULL,
  `transmission` varchar(255) NOT NULL,
  `release_year` varchar(255) NOT NULL,
  `engine_size` varchar(255) NOT NULL,
  `mileage` varchar(255) NOT NULL,
  `car_condition` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `exterior_feature` text NOT NULL,
  `interior_feature` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `car_id` int(32) NOT NULL,
  `car_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `car_make` varchar(255) CHARACTER SET utf8 NOT NULL,
  `car_model` varchar(255) CHARACTER SET utf8 NOT NULL,
  `fuel_type` varchar(255) CHARACTER SET utf8 NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `car_desc` text CHARACTER SET utf8 NOT NULL,
  `date_today` datetime DEFAULT NULL,
  `company_email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `exterior_color` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `door_count` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `transmission` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `release_year` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `engine_size` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `mileage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `car_condition` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `exterior_feature` text CHARACTER SET utf8,
  `interior_feature` text CHARACTER SET utf8,
  `main_image` text CHARACTER SET utf8,
  `image_1` text CHARACTER SET utf8,
  `image_2` text CHARACTER SET utf8,
  `image_3` text CHARACTER SET utf8,
  `image_4` text CHARACTER SET utf8,
  `image_5` text CHARACTER SET utf8,
  `status` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'pending',
  `car_only_for` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'none',
  `seen` int(11) NOT NULL DEFAULT '0',
  `lang_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`car_id`, `car_name`, `car_make`, `car_model`, `fuel_type`, `price`, `car_desc`, `date_today`, `company_email`, `exterior_color`, `door_count`, `transmission`, `release_year`, `engine_size`, `mileage`, `car_condition`, `city`, `exterior_feature`, `interior_feature`, `main_image`, `image_1`, `image_2`, `image_3`, `image_4`, `image_5`, `status`, `car_only_for`, `seen`, `lang_id`) VALUES
(19, 'Toyota Hilux 2016', 'Toyota', 'Toyota Hilux 2016', 'Petrol', '57000', '', '2016-12-21 14:53:39', 'rdrusaid77@gmail.com', '', '', 'Automatic', '', '', '', 'Used', 'newyork', 'Alloy Weels,Fog Lights,HID Lights,Spoiler', 'Navigation System,Onboard Hard Drive,Sunroof', '', '', '', '', '', '', 'active', '', 1, 1),
(23, 'Nissan Pathfinder', '', 'Nissan Pathfinder', '', '250000', '', '2016-12-21 14:53:39', 'rdrusaid77@gmail.com', '', '', '', '', '', '', '', '', '', '', 'car3.jpg', '', '', '', '', '', 'pending', '', 1, 1),
(21, 'Mercedes A Class', 'Audi', 'Mercedes A Class', 'Select', '450000', '', '2016-12-21 14:53:39', 'rdrusaid77@gmail.com', '', '', 'Select', '', '', '', 'Select', '', '', '', 'car4.jpg', '', '', '', '', '', 'pending', '', 1, 1),
(22, 'BMW 2014', 'Audi', 'BMW 2014', 'Select', '850000', '', '2016-12-21 14:53:39', 'rdrusaid77@gmail.com', '', '', 'Select', '', '', '', 'Select', '', '', '', 'car5.jpg', '', '', '', '', '', 'pending', '', 1, 1),
(38, 'kjhkj', '', 'jhgjh', '', '', '', '2017-02-21 11:46:56', 'rdrusaid77@gmail.com', '', '', '', '', '', '', '', '', '', 'Ipod/USB Compatible,Power Seats,Sunroof', '', '', '', '', '', '', 'pending', 'Select', 1, 1),
(39, 'fhggh', '', 'jkhkj', '', '', '', '2017-02-21 11:48:15', 'rdrusaid77@gmail.com', '', '', '', '', '', '', '', '', 'Tinted Glass,Winch', 'A/C Front', '', '', '', '', '', '', 'pending', 'Select', 1, 1),
(37, 'hghjghj', '', 'bnvhgfhjju', '', '', '', '2017-02-21 11:45:28', 'rdrusaid77@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'pending', 'Select', 1, 1),
(36, 'hghjghj', '', 'bnvhgfhjju', '', '', '', '2017-02-21 11:45:10', 'rdrusaid77@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'pending', 'Select', 1, 1),
(40, 'fhggh', '', 'jkhkj', '', '', '', '2017-02-21 11:48:46', 'rdrusaid77@gmail.com', '', '', '', '', '', '', '', '', 'Tinted Glass,Winch', 'A/C Front', '', '', '', '', '', '', 'pending', 'Select', 1, 1),
(41, 'hghh', '', 'sdfs', '', '', '', '2017-02-21 12:44:32', 'rdrusaid77@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'pending', 'Select', 1, 1),
(49, 'rt', '', 'rtrtr', '', '', '', '2017-02-21 14:56:53', 'rdrusaid77@gmail.com', '', '', '', '', '', '', '', '', '', '', '20161020_130456.jpg', '', '', '', '', '', 'pending', 'Select', 1, 1),
(44, 'dd', '', 'dfgdf', '', '', '', '2017-02-21 14:51:55', 'rdrusaid77@gmail.com', '', '', '', '', '', '', '', '', '', '', '20161020_130120.jpg', '', '', '', '', '', 'pending', 'Select', 1, 1),
(52, 'sdds', '', 'sds', '', '', '', '2017-02-22 09:59:41', 'rdrusaid77@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '20161020_130120.jpg', '', '', '', '', 'pending', 'Select', 1, 1),
(53, 'asdas', '', 'asdfasd', '', '', '', '2017-02-22 10:02:08', 'rdrusaid77@gmail.com', '', '', '', '', '', '', '', '', '', '', '20161020_130120.jpg', '', '', '', '', '', 'pending', 'Select', 1, 1),
(50, 'xzcvzx', '', 'zxcvzxv', '', '', '', '2017-02-21 14:58:05', 'rdrusaid77@gmail.com', '', '', '', '', '', '', '', '', '', '', '20161020_130125.jpg', '20161020_130517.jpg', '20161020_130534.jpg', '', '', '', 'active', 'Select', 1, 1),
(54, 'sdfsddf', '', 'sdfddf', '', '', '', '2017-02-22 10:03:00', 'rdrusaid77@gmail.com', '', '', '', '', '', '', '', '', '', '', '20161020_130120.jpg', '', '', '', '', '', 'pending', 'Select', 1, 1),
(55, 'zsdfs', '', 'asdfs', '', '', '', '2017-02-22 10:22:44', 'rdrusaid77@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '16178867_10206514575743616_4560566435020164005_o.jpg', '', 'pending', 'Select', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(4) NOT NULL,
  `cat_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cat_image` text NOT NULL,
  `cat_type_id` int(4) NOT NULL,
  `lang_id` int(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`, `cat_image`, `cat_type_id`, `lang_id`) VALUES
(26, 'Audi', 'car_logo_PNG1640.png', 1, 1),
(13, 'Apartment', 'Shape-63.png', 2, 1),
(6, 'Programming', 'job180.png', 3, 1),
(7, 'Medicine', 'job182.png', 3, 1),
(28, 'Toyota', 'car_logo_PNG1665.png', 1, 1),
(25, 'BMW', 'car_logo_PNG1641.png', 1, 1),
(14, 'Villas', 'Shape-70.png', 2, 1),
(15, 'Shops', 'Shape-49.png', 2, 1),
(16, 'Buildings', 'Shape-62.png', 2, 1),
(18, 'Furnished Apartment', 'Shape-64.png', 2, 1),
(29, 'Citroen', 'car_logo_PNG1636.png', 1, 1),
(30, 'Fiat', 'car_logo_PNG1637.png', 1, 1),
(31, 'Alpha', 'car_logo_PNG1638.png', 1, 1),
(32, 'Honda', 'car_logo_PNG1643.png', 1, 1),
(33, 'Chevrolet', 'car_logo_PNG1644.png', 1, 1),
(34, 'Hyundai', 'car_logo_PNG1645.png', 1, 1),
(35, 'Infinity', 'car_logo_PNG1646.png', 1, 1),
(36, 'Jaquar', 'car_logo_PNG1647.png', 1, 1),
(37, 'Jeep', 'car_logo_PNG1648.png', 1, 1),
(38, 'KIA', 'car_logo_PNG1649.png', 1, 1),
(39, 'Lancer', 'car_logo_PNG1650.png', 1, 1),
(40, 'Lexus', 'car_logo_PNG1651.png', 1, 1),
(41, 'Mini', 'car_logo_PNG1652.png', 1, 1),
(42, 'Rover', 'car_logo_PNG1653.png', 1, 1),
(43, 'Mazda', 'car_logo_PNG1654.png', 1, 1),
(44, 'Mercedes', 'car_logo_PNG1655.png', 1, 1),
(45, 'Mistubitshi', 'car_logo_PNG1656.png', 1, 1),
(46, 'Nissan', 'car_logo_PNG1658.png', 1, 1),
(47, 'Peagoet', 'car_logo_PNG1659.png', 1, 1),
(48, 'Renault', 'car_logo_PNG1660.png', 1, 1),
(49, 'Siat', 'car_logo_PNG1661.png', 1, 1),
(51, 'Porsche', 'car_logo_PNG1663.png', 1, 1),
(52, 'Skoda', 'car_logo_PNG1664.png', 1, 1),
(53, 'Ford', 'car_logo_PNG1666.png', 1, 1),
(54, 'VW', 'car_logo_PNG1667.png', 1, 1),
(55, 'Volvo', 'car_logo_PNG1668.png', 1, 1),
(56, 'Subaru', 'car_logo_PNG1669.png', 1, 1),
(57, 'Law Firm', 'job184.png', 3, 1),
(58, 'Secretary', 'job189.png', 3, 1),
(59, 'Engineering', 'job186.png', 3, 1),
(60, 'Accountant', 'job192.png', 3, 1),
(61, 'Sales', 'job194.png', 3, 1),
(62, 'Education', 'job196.png', 3, 1),
(63, 'Private Lessons', 'job198.png', 3, 1),
(64, 'Technician', 'job102.png', 3, 1),
(65, 'Drivers', 'job104.png', 3, 1),
(66, 'Tourism', 'job106.png', 3, 1),
(67, 'Partnership', 'job109.png', 3, 1),
(68, 'Workers', 'job111.png', 3, 1),
(69, 'Beauty', 'job113.png', 3, 1),
(70, 'Fine Arts', 'job114.png', 3, 1),
(71, 'Designers', 'job114.png', 3, 1),
(72, 'Other', 'job116.png', 3, 1),
(73, 'Motorbike', '', 4, 1),
(74, 'Electricals', '', 4, 1),
(75, 'Furnitures', '', 4, 1),
(76, 'Personal Items', '', 4, 1),
(77, 'Bus', '', 4, 1),
(78, 'Trucks', '', 4, 1),
(79, 'Pickups', '', 4, 1),
(80, 'Mobiles', '', 4, 1),
(81, 'Laptops', '', 4, 1),
(82, 'Computers', '', 4, 1),
(83, 'Sports Tool', '', 4, 1),
(84, 'Spare Parts', '', 4, 1),
(85, 'Professional Equipment', '', 4, 1),
(86, 'Heavy Equipment', '', 4, 1),
(87, 'Industrial Equipment', '', 4, 1),
(88, 'Musical Instruments', '', 4, 1),
(89, 'Pets', '', 4, 1),
(90, 'Other', '', 4, 1),
(92, 'شقق', 'Shape-63.png', 8, 2),
(93, 'فلل', 'Shape-70.png', 8, 2),
(94, 'محلات', 'Shape-49.png', 8, 2),
(95, 'عمارات', 'Shape-62.png', 8, 2),
(96, 'شقق مفروشة', 'Shape-64.png', 8, 2),
(97, 'برمجة', 'job180.png', 9, 2),
(98, 'طب', 'job182.png', 9, 2),
(99, 'محاماة', 'job184.png', 9, 2),
(100, 'سكرتير', 'job189.png', 9, 2),
(101, 'هندسة', 'job186.png', 9, 2),
(102, 'محاسب', 'job192.png', 9, 2),
(103, 'مبيعات', 'job194.png', 9, 2),
(104, 'تعليم', 'job196.png', 9, 2),
(105, 'دروس خصوصية', 'job198.png', 9, 2),
(106, 'فنيين', 'job102.png', 9, 2),
(107, 'سائقين', 'job104.png', 9, 2),
(108, 'سياحة', 'job106.png', 9, 2),
(109, 'عمال شراكة', 'job109.png', 9, 2),
(110, 'عمال', 'job111.png', 9, 2),
(111, 'تجميل', 'job113.png', 9, 2),
(112, 'فنون جميلة', 'job114.png', 9, 2),
(113, 'مصممين', 'job114.png', 9, 2),
(114, ' وظائف أخرى', 'job116.png', 9, 2),
(115, 'دراجة نارية', '', 10, 2),
(116, 'كهربائيات', '', 10, 2),
(117, 'أغراض شخصية', '', 10, 2),
(118, 'حافلة', '', 10, 2),
(119, 'شاحنات', '', 10, 2),
(120, 'بيكاب', '', 10, 2),
(121, ' هولتف', '', 10, 2),
(122, 'أجهزة كمبيوتر محمولة', '', 10, 2),
(123, ' أجهزة كمبيوتر', '', 10, 2),
(124, ' أداة الرياضة', '', 10, 2),
(125, ' قطع', '', 10, 2),
(126, ' معدات للمحترفين', '', 10, 2),
(127, 'معدات ثقيلة', '', 10, 2),
(128, ' معدات صناعية', '', 10, 2),
(129, 'الات موسيقية', '', 10, 2),
(130, ' حيوانات اليفة', '', 10, 2),
(131, ' إعلانات مبوبة أخرى', '', 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `category_types`
--

CREATE TABLE `category_types` (
  `cat_type_id` int(3) NOT NULL,
  `cat_type_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `lang_id` int(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_types`
--

INSERT INTO `category_types` (`cat_type_id`, `cat_type_name`, `lang_id`) VALUES
(1, 'Car', 1),
(2, 'Property', 1),
(3, 'Job', 1),
(4, 'Classifieds', 1),
(5, 'Marriage', 1),
(6, 'Job Seeker', 1),
(7, 'سيارات', 2),
(8, 'عقارات', 2),
(9, 'وظائف', 2),
(10, 'إعلانات مبوبة', 2),
(11, 'نادي الزواج', 2),
(12, 'طالب عمل', 2);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(12) NOT NULL,
  `comment_post_id` int(12) NOT NULL,
  `comment_author` varchar(255) CHARACTER SET utf8 NOT NULL,
  `comment_email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `comment_content` text CHARACTER SET utf8 NOT NULL,
  `comment_date` datetime NOT NULL,
  `lang_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_date`, `lang_id`) VALUES
(4, 2, 'Mohamed Rusaid', 'rdrusaid77@gmail.com', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '2017-01-11 16:16:43', 1),
(64, 2, 'Raza husain', 'razahusain@gmail.com', 'dcfcfdf', '2017-01-17 18:13:16', 1),
(65, 2, 'muad Mazahir', 'muadmazahir@gmail.com', 'dfgcfgb', '2017-01-17 18:15:25', 1),
(62, 2, 'afsd', 'asdfsd', 'asdfasd', '2017-01-17 17:37:23', 1),
(63, 2, 'ghgh', 'ghjktgjh', 'ghjkh', '2017-01-17 17:59:38', 1),
(61, 2, 'dfgdf', 'dfghdf', 'dfghdfghdftgd', '2017-01-17 17:11:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `inq_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `phone_no` varchar(255) CHARACTER SET utf8 NOT NULL,
  `location` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `r_date` date DEFAULT NULL,
  `destination` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `interest` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `extra` text CHARACTER SET utf8,
  `lang_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`inq_id`, `name`, `email`, `phone_no`, `location`, `r_date`, `destination`, `interest`, `extra`, `lang_id`) VALUES
(2, 'Mohamed Rusaid', 'rdrusaid77@gmail.com', '+1 584 4848 4888', '114,Nikagolla, Yatawatta, Matale', '2017-02-08', 'Matale', 'Eating Out', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `job_seekers`
--

CREATE TABLE `job_seekers` (
  `job_seeker_id` int(32) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `job_seeker_gender` varchar(255) NOT NULL,
  `job_category1` varchar(255) NOT NULL,
  `position` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `field_of_study` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `uni` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `degree_level` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `prof_pic` text CHARACTER SET utf8,
  `location` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cv` text CHARACTER SET utf8,
  `about_me` text CHARACTER SET utf8,
  `status` varchar(255) CHARACTER SET utf8 DEFAULT 'pending',
  `company_email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `seeker_only_for` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date_today` datetime DEFAULT NULL,
  `seen` int(11) NOT NULL DEFAULT '0',
  `lang_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_seekers`
--

INSERT INTO `job_seekers` (`job_seeker_id`, `name`, `job_seeker_gender`, `job_category1`, `position`, `field_of_study`, `uni`, `degree_level`, `prof_pic`, `location`, `country`, `cv`, `about_me`, `status`, `company_email`, `seeker_only_for`, `date_today`, `seen`, `lang_id`) VALUES
(2, 'Rusaid', 'Male', 'Programming', 'Web Developer', 'IT ', 'SLIIT ', 'Certification (Diploma)', '2219225-austin-carr-profile.jpg', 'Matale', 'Sri Lanka ', 'Data Overview.pdf', '', 'active', 'rdrusaid77@gmail.com', '1 Week', '2017-01-08 14:18:03', 1, 1),
(5, 'Safraz Ahmed', 'Male', 'Sales', 'Doctor', 'Medicine', 'Colombo University', 'Bachelor\'s Degree', '402730e84c6706c1f1ef41c3dfea8a3be70fb187-big.jpg', 'Colombo', 'Sri Lanka', '', '', 'pending', 'rdrusaid77@gmail.com', '2 Weeks', '2017-01-11 09:15:57', 1, 1),
(6, 'Malik', 'Male', 'Drivers', 'Accountant', 'Business', 'NIBM', 'Bachelor\'s Degree', 'more3.jpg', 'Chilaw', 'Sri Lanka', '', 'sdgsd', 'pending', 'rdrusaid77@gmail.com', '1 Week', '2017-01-11 10:18:53', 1, 1),
(12, 'sdfgdf', 'Female', 'Programming', 'sgd', 'sdgsd', '', '', '', 'sdfsdf', 'Qatar', '', '', 'active', 'rdrusaid77@gmail.com', 'Select', '2017-01-30 16:08:43', 1, 1),
(11, 'Jack Kallis', 'Male', 'Education', 'Cricketer', 'Sports', '', 'Master\'s Degree', '', 'South Africa', 'Qatar', '', '', 'pending', 'rdrusaid77@gmail.com', '1 Week', '2017-01-30 15:27:11', 1, 1),
(14, 'Zameer', 'Female', 'Accountant', 'Accountant', 'Business', '', 'Bachelor\'s Degree', '16178867_10206514575743616_4560566435020164005_o.jpg', 'Alsadd', 'Qatar', 'CURRICULAM VITAE.docx', '', 'pending', 'rdrusaid77@gmail.com', '3 Weeks', '2017-02-01 13:49:02', 1, 1),
(22, 'testing me', 'Male', 'Designers', 'Web Designer', 'IT', '', 'Bachelor\'s Degree', '', 'Doha', 'Qatar', '', '', 'pending', 'rdrusaid77@gmail.com', 'Select', '2017-03-15 10:13:08', 1, 1),
(23, 'Malik Roshan', 'Male', 'Medicine', 'Pharmacist', 'Medicine', '', 'Master\'s Degree', 'image.jpg', 'Colombo', 'Sri Lanka ', 'CURRICULAM VITAE.docx', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', 'active', 'rdrusaid77@gmail.com', 'Select', '2017-03-15 15:59:35', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `job_id` int(32) NOT NULL,
  `job_title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `job_category` varchar(255) CHARACTER SET utf8 NOT NULL,
  `job_location` varchar(255) CHARACTER SET utf8 NOT NULL,
  `contract_type` varchar(255) CHARACTER SET utf8 NOT NULL,
  `job_desc` text CHARACTER SET utf8 NOT NULL,
  `salary` float NOT NULL,
  `company_email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'pending',
  `date_today` datetime DEFAULT NULL,
  `job_only_for` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'none',
  `seen` int(3) NOT NULL DEFAULT '0',
  `lang_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`job_id`, `job_title`, `job_category`, `job_location`, `contract_type`, `job_desc`, `salary`, `company_email`, `status`, `date_today`, `job_only_for`, `seen`, `lang_id`) VALUES
(12, 'ios developer', 'Programming', 'Newyork', 'Full time', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2500, 'rdrusaid77@gmail.com', 'active', '2017-01-04 16:07:08', '1 Month', 1, 0),
(22, 'Driver', 'Drivers', 'Colombo', 'Full time', 'sdfsdff', 2500, 'rdrusaid77@gmail.com', 'pending', '2017-01-23 10:07:04', '3 Weeks', 1, 0),
(21, 'Web Designer', 'Designers', 'Colombo', 'Full time', 'asdfasdfa', 3000, 'rdrusaid77@gmail.com', 'pending', '2017-01-23 10:06:19', '1 Week', 1, 0),
(20, 'Doctor', 'Medecine', 'Qatar', 'Full time', 'fddf', 2500, 'rdrusaid77@gmail.com', 'pending', '2017-01-11 10:17:57', '1 Week', 1, 0),
(18, 'Web developer', 'Programming', 'Qatar', 'Full time', 'sdfsdsdf', 2500, 'rdrusaid77@gmail.com', 'pending', '2017-01-10 17:05:11', '1 Week', 1, 0),
(23, 'Accountant', 'Accountant', 'Qatar', 'Part time', 'fghjfghdfgh', 2500, 'rdrusaid77@gmail.com', 'pending', '2017-01-26 09:58:42', '1 Week', 1, 1),
(31, 'Web developer', 'Programming', 'Nikagolla', 'Full time', '', 2500, 'rdrusaid77@gmail.com', 'pending', '2017-01-30 14:47:03', '1 Week', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` int(12) NOT NULL,
  `lang_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`) VALUES
(1, 'English'),
(2, 'Arabic');

-- --------------------------------------------------------

--
-- Table structure for table `medical_inq`
--

CREATE TABLE `medical_inq` (
  `inq_id` int(11) NOT NULL,
  `request` varchar(255) CHARACTER SET utf8 NOT NULL,
  `contact` text CHARACTER SET utf8 NOT NULL,
  `lang_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_inq`
--

INSERT INTO `medical_inq` (`inq_id`, `request`, `contact`, `lang_id`) VALUES
(3, 'Treatment Type', 'Name : Rusaid\r\nPhone :45752125', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mrgs`
--

CREATE TABLE `mrgs` (
  `mrg_id` int(32) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `family_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sex` varchar(255) CHARACTER SET utf8 NOT NULL,
  `year_of_birth` varchar(255) CHARACTER SET utf8 NOT NULL,
  `country` varchar(255) NOT NULL,
  `your_pic` text CHARACTER SET utf8 NOT NULL,
  `nationality` varchar(255) CHARACTER SET utf8 NOT NULL,
  `location` varchar(255) CHARACTER SET utf8 NOT NULL,
  `eyes_color` varchar(255) CHARACTER SET utf8 NOT NULL,
  `hair_color` varchar(255) CHARACTER SET utf8 NOT NULL,
  `skin_color` varchar(255) CHARACTER SET utf8 NOT NULL,
  `height` varchar(255) CHARACTER SET utf8 NOT NULL,
  `weight` varchar(255) CHARACTER SET utf8 NOT NULL,
  `religion` varchar(255) CHARACTER SET utf8 NOT NULL,
  `education` varchar(255) CHARACTER SET utf8 NOT NULL,
  `hobbies` varchar(255) CHARACTER SET utf8 NOT NULL,
  `requirements` text CHARACTER SET utf8 NOT NULL,
  `additional_details` text CHARACTER SET utf8 NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'pending',
  `company_email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `date_today` datetime DEFAULT NULL,
  `ad_only_for` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'none',
  `seen` int(11) NOT NULL DEFAULT '0',
  `lang_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mrgs`
--

INSERT INTO `mrgs` (`mrg_id`, `name`, `family_name`, `sex`, `year_of_birth`, `country`, `your_pic`, `nationality`, `location`, `eyes_color`, `hair_color`, `skin_color`, `height`, `weight`, `religion`, `education`, `hobbies`, `requirements`, `additional_details`, `status`, `company_email`, `date_today`, `ad_only_for`, `seen`, `lang_id`) VALUES
(1, 'Mohamed Rusaid', 'Naju ', 'Male', '1990', 'USA', '2219225-austin-carr-profile.jpg', 'Sri Lankan', 'Matale', 'black', 'black', 'black', '175 cm', '75 kg', 'Islam', '', '', '', '', 'active', 'rdrusaid77@gmail.com', '2017-01-05 15:04:37', '1 Week', 1, 1),
(6, 'Shawn Tok', 'Shawn', 'Male', '1992', 'Arab Country', 'Shawn_Tok_Profile.jpg', 'Japanise', 'Tokyo', 'Black', 'Black', 'White', '170 cm', '80 kg', '', '', 'Swimmng, Shopping, Drive, Pet, Yoga', '"I want brown bread... no, that is diesel oil..."\r\n"So I was raised in Europe, where History comes from ..."\r\n"NON !!! La Plume de mon oncle n est pas Bingibangibungi !!!"\r\n', 'o prove my point, I’m sure you’ve heard of the statistic that over 50% of the population is overweight. But you probably haven’t heard that being so-called overweight in your 50’s is the healthiest. Here’s the articles that proves it:-', 'active', 'steven@gemail.com', '2017-01-08 15:58:02', '2 Weeks', 1, 1),
(5, 'sdfs', 'sdfs', 'Male', 'sdf', 'Arab Country', '', 'sdf', '', '', '', '', '', '', '', '', '', '', '', 'pending', 'rdrusaid77@gmail.com', '2017-01-08 13:37:29', '2 Weeks', 1, 1),
(7, 'Sara Taylor', 'Taylor', 'Female', '1991', 'USA', '4110482-profile-pics.jpg', 'european', 'London', 'blue', 'Brown', 'white', '170', '60', 'Christianity', '', 'Movies, Music, Video gaming, Dance, Cooking', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', 'active', 'steven@gemail.com', '2017-01-08 16:12:55', '1 Month', 1, 1),
(9, 'Zafry', 'zza', 'Male', '1985', 'USA', 'more4.jpg', '', '', '', '', '', '', '', '', '', '', '', '', 'pending', 'rdrusaid77@gmail.com', '2017-01-11 10:19:29', '2 Weeks', 1, 1),
(14, 'Zameer', '', 'Male', '', 'Arab Country', '16178867_10206514575743616_4560566435020164005_o.jpg', '', '', '', '', '', '', '', '', '', '', '', '', 'pending', 'rdrusaid77@gmail.com', '2017-02-01 16:05:39', 'Select', 1, 1),
(21, 'Aravinth', '', 'Male', '', 'Arab Country', '', '', '', '', '', '', '', '', '', '', '', '', '', 'pending', 'rdrusaid77@gmail.com', '2017-03-08 10:13:05', 'Select', 1, 1),
(22, 'Ishrath', '', 'Male', '', 'USA', '', '', '', '', '', '', '', '', '', '', '', '', '', 'pending', 'rdrusaid77@gmail.com', '2017-03-08 10:18:47', 'Select', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `post_cat_id` int(11) NOT NULL,
  `post_cat_name` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`post_cat_id`, `post_cat_name`) VALUES
(1, 'Travelling to usa'),
(2, 'Clearing and shipping'),
(3, 'Leisure Tourism'),
(4, 'Medical Tourism ');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(32) NOT NULL,
  `post_title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `post_author` varchar(255) CHARACTER SET utf8 NOT NULL,
  `post_date` datetime NOT NULL,
  `post_content` text CHARACTER SET utf8 NOT NULL,
  `post_comment_count` int(11) NOT NULL DEFAULT '0',
  `post_status` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'pending',
  `post_views_count` int(11) NOT NULL DEFAULT '0',
  `lang_id` int(11) NOT NULL DEFAULT '1',
  `post_cat_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_author`, `post_date`, `post_content`, `post_comment_count`, `post_status`, `post_views_count`, `lang_id`, `post_cat_id`) VALUES
(2, 'Need help getting started? You are just a click away from knowing all the mandatory requirements for travel to USA.', 'Admin', '2017-02-06 09:38:07', '<p>From its beginnings, our firm has focused on assisting entrepreneurs, business owners and investors attain their immigration goals.</p>\r\n\r\n<p>We assist clients from all over the world come to the United States and establish new businesses, acquire existing businesses and make investments in a manner that enables our clients to obtain an applicable visa.</p>\r\n\r\n<h3><strong>Visas for Investors &amp; Entrepreneurs: The Key Players</strong></h3>\r\n\r\n<ul>\r\n	<li>B-1 Visas</li>\r\n	<li>EB-5 Visas</li>\r\n	<li>Traety Traders Visas (E-1)</li>\r\n	<li>Entrepreneur / Business Visa (E-2)</li>\r\n	<li>L-1 Visas</li>\r\n	<li>US Visas for Indian&nbsp;Entrepreneur, Business Owners and Investors</li>\r\n</ul>\r\n\r\n<h3>&nbsp;<strong>Which Visa Meets Your Business and Personal Needs?</strong></h3>\r\n\r\n<p>Every case and every client&rsquo;s business is different. The choice of which visa is most appropriate has to be a decision made after an enormous amount of interaction and consultation with each client. This choice varies by type of business, industry and the personal circumstances and long-term goals of each client. Sometimes the choice between certain visa types is not finalized until we have completed the asset tracing and&nbsp;business plan&nbsp;preparation in a case.</p>\r\n\r\n<p><strong>100% Approval Rate for&nbsp;EB-5,&nbsp;L-1&nbsp;E-2<a href="http://www.usimmigrationadvisor.com/e-2-treaty-investor.html">&nbsp;</a>and&nbsp;E-1<a href="http://www.usimmigrationadvisor.com/e-1-treaty-trader.html">&nbsp;</a>Visas to Date</strong></p>\r\n\r\n<p>While there can never be guarantees in immigration cases, in our fifteen years of experience we have never had an&nbsp;EB-5,&nbsp;L-1,&nbsp;E-2<a href="http://www.usimmigrationadvisor.com/e-2-treaty-investor.html">&nbsp;</a>or&nbsp;E-1<a href="http://www.usimmigrationadvisor.com/e-1-treaty-trader.html">&nbsp;</a>visa application denied. We believe the reason for this is that rather than use &ldquo;stock&rdquo; solutions we truly work with individuals to sculpt a unique solution to their immigration needs.</p>\r\n\r\n<h3><strong>Use of a B1 Visas in Business Immigration Strategy</strong></h3>\r\n\r\n<p>A B1 visa can be a very flexible way for an investor or business owner to conduct due diligence on starting their business in the United States. While it is unlawful for the holder of a B1 visa to manage or operate their business while in B1 visa status they can conduct business meetings, investigate setting-up a business and meet with potential employees, vendors and clients.</p>\r\n\r\n<p>Clients in B-1 status whose plans change and who wish to remain in the United States after entering the country on a B-1 visa can apply for change of status to E-2, E-1, L-1 or EB-5 Status.&nbsp; There are however complex issues associated with intent and visa misuse to navigate and we recommend that anyone contemplating this strategy to consult with an experienced immigration lawyer.</p>\r\n\r\n<h3><strong>Business Plans Critical &ndash; Our Advantage</strong></h3>\r\n\r\n<p>Whether you are establishing or expanding a business or investing in a business for visa purposes a solid&nbsp;business plan&nbsp;is likely to be the most critical part of your application. While most law firms outsource this service our firm believes the business plan far too critical to outsource to a vendor. All of our supervising lawyers have MBA degrees and major consulting firm experience in addition to over a decade of successful legal practice. Our lawyers work with a team of business analysts to produce what we believe to be the very best immigration&nbsp;business plans&nbsp;in the United States that, to date, have resulted in the approval of every case our team has filed.</p>\r\n\r\n<h3><strong>Our Difference -- We Understand Your Business Needs</strong></h3>\r\n\r\n<p>We believe that it is critical that a business immigration lawyer has an appreciation for the business needs of our clients. Accordingly, in addition to over a decade of legal experience, all our business and investment immigration lawyers have MBA degrees from the Wharton School of Business and meaningful experience on the business side.</p>\r\n\r\n<h3><strong>Permanent Residency (Green Cards)</strong></h3>\r\n\r\n<ul>\r\n	<li>Overview of Permanent Residency for Investors (EB-5)&nbsp;</li>\r\n	<li>EB-5 Application Process</li>\r\n	<li>List of Approved EB-5Regional Investment Centers</li>\r\n	<li>Moving from an L-1 or E visa to a Green Card</li>\r\n</ul>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><strong>Moving from an L-1 or E visa to a Green Card</strong></h3>\r\n\r\n<p>It is a myth that E visa holders cannot transition to green cards. While a transition from an E visa to a green card is usually made through the EB-5 program we have accomplished this through other routes. E visas need to be set-up and managed in a very carefully and in a very precise way in order to position a client to later move to the EB-5 program. Too often we are approached by clients who did not receive appropriate advice on this topic and are consequently unable to transition to the EB-5 program.</p>\r\n\r\n<p>Transitioning from an L-1 visa to a green card is considerably easier and can be accomplished through a work-based petition in addition to use of the EB-5 program.</p>\r\n\r\n<ul>\r\n	<li>E-1 Treaty Trader</li>\r\n	<li>E-2 Treaty Investor</li>\r\n	<li>Overview of EB-5 Investor Visas</li>\r\n	<li>E Visas for Korean Nationals</li>\r\n	<li>E Visas for Egyptian National<a href="http://www.usimmigrationadvisor.com/e-visas-for-egyptian-nationals.html">s</a></li>\r\n</ul>\r\n', 53, 'active', 363, 1, '1'),
(3, 'How to Ship and Import Goods from Overseas to the USA', 'Admin', '2017-02-09 09:12:29', '<h1><strong>10 Questions Your Freight Forwarder/Customs Broker Need Answered to Quote the Shipping Cost from China or Other Countries to the USA</strong></h1>\r\n\r\n<h2 style="text-align:center"><strong>How to Import to the US</strong></h2>\r\n\r\n<p><strong>The same questions we ask below will apply if you are importing from</strong>&nbsp;China, Brazil, Turkey, South Africa, Vietnam, or any other country in the world to the USA. We also have a customs broker that will handle the customs clearance of your goods as well. If you are new to importing and have just finished a Kickstarter or Indiegogo campaign or are importing directly without any online campaign, please read below to learn more about how to import to the U.S. :</p>\r\n\r\n<p><strong>TIP</strong>: Make sure you DO NOT ship your goods without speaking with your Customs Broker or Freight Forwarder first. Failure to do so can result in a monetary penalties, inspections and delays for not filing&nbsp;Importer Security Filing (ISF) 10+2&nbsp;at least 48 hours before your cargo is loaded onto the vessel.</p>\r\n\r\n<p>This post is focused on the shipping and logistics of your goods from origin to final destination and does not involve sourcing, finance or any other aspect of international trade with your overseas supplier; this port is simply about what information we need to provide you an accurate freight quote:</p>\r\n\r\n<h2>10 Questions to Answer for an Accurate Import Quote:</h2>\r\n\r\n<p>1. Mode of Transport: Ocean Freight or Air Freight? If Ocean Freight, do you need LCL (less than container), FCL (full container, 20&rsquo;/40&rsquo;/45&rsquo;/Flat Rack, Refrigerated etc.), Oversized, and Out of Gauge, or RORO service. If Air Freight, specify how urgent the shipment is so the quote reflects a faster or slower air freight service which also affects the price.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2. What is the commodity you are shipping? (e.g. food, kitchenware, machinery, etc) Please be specific because there may be a license or special clearance required to import your goods such as an FDA clearance.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3. Which of the following mode of service do you need: port to port, door to port, port to door, door to door? Also, when is the planned shipped date?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>4. How is the cargo packaged? Is it in pallets, loose boxes, or other packaging? How many pieces in total? Provide dimensions/weight/# of pieces of the cargo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>5. What are the Incoterms between seller and buyer? Please see this link for an&nbsp;Explanation of Incoterms. When sending us your request please input the incoterms with your supplier before the location in which you are responsible to take over the freight. If the freight terms are Ex-Works from factory, please include the factory address overseas. If FOB or FCA, please send us the seaport, airport or warehouse in which you are responsible to take over the freight. We don&rsquo;t suggest shipping on CFR/CIF/DAP/DDP terms with your overseas supplier, because you, as the importer will have less control over your shipment, many times the freight charges are higher, the destination charges are definitely higher (if it&rsquo;s an LCL shipment) and operationally it is inefficient for your destination forwarder or customs broker.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>6. What is the final destination address of the cargo? Please specify if final delivery location is a business with a dock, a business without a dock or residence. If it is a residence, do you require inside delivery? Do you have a pallet jack when our trucker arrives or must he bring one?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>7. Do you need us to handle any fulfillment/repackaging services? (e.g. relabeling, amazon fulfillment or other fulfillment delivery). If so, please specify what services (e.g. labeling only, repackaging into new boxes, etc) and the addresses of specific fulfillment centers we need to deliver. Please also include the number of packages, dimensions, and weight of the cargo going to each fulfillment center.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>8. What is the&nbsp;Harmonized Tariff Schedule (HTS) Code&nbsp;of the cargo and the Total Value? If you include a commercial invoice or pro forma invoice, this will help to clarify the HTS code. We need this information so we quote you on duties/taxes as well. Your supplier can provide you this information if they are experienced in exporting from China.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>9. Do you already have a Continuous Bond? If not, don&rsquo;t worry, we will explain what this is and how much it costs. You can read more about Continuous Bonds on the&nbsp;US Customs&nbsp;website.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>10. How often do you plan to ship (e.g. once per year, once per month, etc)?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The most basic documents that are required to handle customs clearance of your cargo can include:</strong></p>\r\n\r\n<p>1. Commercial Invoice / Pro Forma Invoice &nbsp;2. Packing List &nbsp;3. Certificate of Origin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>There are many other documents that can be required, but this applies to most general shipments of goods that don&rsquo;t require any additional certificates or special government approval.</p>\r\n\r\n<p>Once we have this information we will get back to you with our quote proposal within 2 business days.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3 style="text-align:start"><strong><span style="font-size:small"><span style="font-family:arial,sans-serif"><span style="color:#000000">Contact us for more details :</span></span></span></strong></h3>\r\n\r\n<p style="text-align:start"><span style="font-size:small"><span style="font-family:arial,sans-serif"><span style="color:#000000">Leave us a message. *This is NOT a QUOTE form *For General Inquiries only</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 'active', 24, 1, '2'),
(4, 'We cover a whole spectrum of activities, from visiting a tourist attraction and going to a health club to eating in a restaurant or travelling abroad.', 'Admin', '2017-02-09 11:13:37', '<p>&nbsp;</p>\r\n\r\n<h3>What&rsquo;s on&nbsp;</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Attractions</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Countryside and parks</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Libraries&nbsp;</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Museum and heritage&nbsp;&nbsp;</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Sport and leisure</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Theatre and arts&nbsp;</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Eating out</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Activities</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Community centers</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Shopping</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Allotments</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Planning an event</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Contact us for more details :</strong></h2>\r\n\r\n<h3><strong>Leave us a message.</strong></h3>\r\n\r\n<p><strong>*This is NOT a QUOTE form *</strong></p>\r\n\r\n<p><strong>For General Inquiries only</strong></p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 'active', 78, 1, '3'),
(7, 'We offer importing and exporting, clearing and forwarding services', 'Admin', '2017-02-09 09:17:39', '<h1><strong>We Make Imports Simple</strong></h1>\r\n\r\n<p>We act as your guide through the often complicated import process. Each step of the way we act on your behalf, clearing your goods through U.S. Customs, making sure they are in 100% compliance with U.S. Customs rules and regulations, paying duties and tariffs, and ultimately shipping your goods to their final destination. Our logistics and importing experts take great pride and care in helping importers of all experience levels. From first time importers of startups to large volume importers in big industry, we handle each with great care.</p>\r\n\r\n<h3 style="margin-left:0in; margin-right:0in">Import Services</h3>\r\n\r\n<ul style="list-style-type:disc">\r\n	<li>Customs Clearance</li>\r\n	<li>Continuous Bond</li>\r\n	<li>Duty Drawbacks</li>\r\n	<li>Line Release Entry</li>\r\n	<li>Import Consulting</li>\r\n	<li>Informal/Formal entry</li>\r\n</ul>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><strong>Contact us for more details :</strong></h3>\r\n\r\n<p>Leave us a message. *This is NOT a QUOTE form *For General Inquiries only</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 'active', 3, 1, '2'),
(5, 'Want to receive the best medical care with affordable prices? Contact us for more details', 'Admin', '2017-02-08 13:08:57', '<h2><strong>Here&rsquo;s how we help you</strong></h2>\r\n\r\n<p>1-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Explore and Research top Hospitals &amp; Destinations</p>\r\n\r\n<p>2-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Request a quote</p>\r\n\r\n<p>3-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;We will match your request with the top Hospitals/ Providers</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Explore Your Options</strong></h2>\r\n', 0, 'active', 14, 1, '4'),
(8, 'نغطي مجموعة كاملة من الأنشطة، من زيارة المعالم السياحية والذهاب إلى النوادي لتناول الطعام في أحد المطاعم أو السفر إلى الخارج.', 'Admin', '2017-02-09 12:22:31', '<h3>أحدث الأماكن</h3>\r\n\r\n<h3>الأماكن المشهورة</h3>\r\n\r\n<h3>الريف والحدائق</h3>\r\n\r\n<h3>المكاتب</h3>\r\n\r\n<h3>&nbsp;المتاحف والأماكن الاثرية</h3>\r\n\r\n<h3>الرياضة والترفيه</h3>\r\n\r\n<h3>&nbsp;المسارح والفنون</h3>\r\n\r\n<h3>المطاعم</h3>\r\n\r\n<h3>انشطة</h3>\r\n\r\n<h3>مراكز تجمع</h3>\r\n\r\n<h3>تسوق</h3>\r\n\r\n<h3>مخصصات</h3>\r\n\r\n<h3>التخطيط لأي حدث</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>اتصل بنا للمزيد من التفاصيل</h2>\r\n\r\n<h3>. * هذا ليس للسعر * للاستفسارات العامة فقط</h3>\r\n', 0, 'active', 8, 2, '3'),
(9, 'بحاجة الى مساعدة؟ هنا جميع المعلومات والمتطلبات الإلزامية للسفر الى أميركا.', 'Admin', '2017-02-09 11:21:12', '<p>From its beginnings, our firm has focused on assisting entrepreneurs, business owners and investors attain their immigration goals.</p>\r\n\r\n<p>We assist clients from all over the world come to the United States and establish new businesses, acquire existing businesses and make investments in a manner that enables our clients to obtain an applicable visa.</p>\r\n\r\n<h3><strong>Visas for Investors &amp; Entrepreneurs: The Key Players</strong></h3>\r\n\r\n<ul>\r\n	<li>B-1 Visas</li>\r\n	<li>EB-5 Visas</li>\r\n	<li>Traety Traders Visas (E-1)</li>\r\n	<li>Entrepreneur / Business Visa (E-2)</li>\r\n	<li>L-1 Visas</li>\r\n	<li>US Visas for Indian&nbsp;Entrepreneur, Business Owners and Investors</li>\r\n</ul>\r\n\r\n<h3>&nbsp;<strong>Which Visa Meets Your Business and Personal Needs?</strong></h3>\r\n\r\n<p>Every case and every client&rsquo;s business is different. The choice of which visa is most appropriate has to be a decision made after an enormous amount of interaction and consultation with each client. This choice varies by type of business, industry and the personal circumstances and long-term goals of each client. Sometimes the choice between certain visa types is not finalized until we have completed the asset tracing and&nbsp;business plan&nbsp;preparation in a case.</p>\r\n\r\n<p><strong>100% Approval Rate for&nbsp;EB-5,&nbsp;L-1&nbsp;E-2<a href="http://www.usimmigrationadvisor.com/e-2-treaty-investor.html">&nbsp;</a>and&nbsp;E-1<a href="http://www.usimmigrationadvisor.com/e-1-treaty-trader.html">&nbsp;</a>Visas to Date</strong></p>\r\n\r\n<p>While there can never be guarantees in immigration cases, in our fifteen years of experience we have never had an&nbsp;EB-5,&nbsp;L-1,&nbsp;E-2<a href="http://www.usimmigrationadvisor.com/e-2-treaty-investor.html">&nbsp;</a>or&nbsp;E-1<a href="http://www.usimmigrationadvisor.com/e-1-treaty-trader.html">&nbsp;</a>visa application denied. We believe the reason for this is that rather than use &ldquo;stock&rdquo; solutions we truly work with individuals to sculpt a unique solution to their immigration needs.</p>\r\n\r\n<h3><strong>Use of a B1 Visas in Business Immigration Strategy</strong></h3>\r\n\r\n<p>A B1 visa can be a very flexible way for an investor or business owner to conduct due diligence on starting their business in the United States. While it is unlawful for the holder of a B1 visa to manage or operate their business while in B1 visa status they can conduct business meetings, investigate setting-up a business and meet with potential employees, vendors and clients.</p>\r\n\r\n<p>Clients in B-1 status whose plans change and who wish to remain in the United States after entering the country on a B-1 visa can apply for change of status to E-2, E-1, L-1 or EB-5 Status.&nbsp; There are however complex issues associated with intent and visa misuse to navigate and we recommend that anyone contemplating this strategy to consult with an experienced immigration lawyer.</p>\r\n\r\n<h3><strong>Business Plans Critical &ndash; Our Advantage</strong></h3>\r\n\r\n<p>Whether you are establishing or expanding a business or investing in a business for visa purposes a solid&nbsp;business plan&nbsp;is likely to be the most critical part of your application. While most law firms outsource this service our firm believes the business plan far too critical to outsource to a vendor. All of our supervising lawyers have MBA degrees and major consulting firm experience in addition to over a decade of successful legal practice. Our lawyers work with a team of business analysts to produce what we believe to be the very best immigration&nbsp;business plans&nbsp;in the United States that, to date, have resulted in the approval of every case our team has filed.</p>\r\n\r\n<h3><strong>Our Difference -- We Understand Your Business Needs</strong></h3>\r\n\r\n<p>We believe that it is critical that a business immigration lawyer has an appreciation for the business needs of our clients. Accordingly, in addition to over a decade of legal experience, all our business and investment immigration lawyers have MBA degrees from the Wharton School of Business and meaningful experience on the business side.</p>\r\n\r\n<h3><strong>Permanent Residency (Green Cards)</strong></h3>\r\n\r\n<ul>\r\n	<li>Overview of Permanent Residency for Investors (EB-5)&nbsp;</li>\r\n	<li>EB-5 Application Process</li>\r\n	<li>List of Approved EB-5Regional Investment Centers</li>\r\n	<li>Moving from an L-1 or E visa to a Green Card</li>\r\n</ul>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><strong>Moving from an L-1 or E visa to a Green Card</strong></h3>\r\n\r\n<p>It is a myth that E visa holders cannot transition to green cards. While a transition from an E visa to a green card is usually made through the EB-5 program we have accomplished this through other routes. E visas need to be set-up and managed in a very carefully and in a very precise way in order to position a client to later move to the EB-5 program. Too often we are approached by clients who did not receive appropriate advice on this topic and are consequently unable to transition to the EB-5 program.</p>\r\n\r\n<p>Transitioning from an L-1 visa to a green card is considerably easier and can be accomplished through a work-based petition in addition to use of the EB-5 program.</p>\r\n\r\n<ul>\r\n	<li>E-1 Treaty Trader</li>\r\n	<li>E-2 Treaty Investor</li>\r\n	<li>Overview of EB-5 Investor Visas</li>\r\n	<li>E Visas for Korean Nationals</li>\r\n	<li>E Visas for Egyptian National<a href="http://www.usimmigrationadvisor.com/e-visas-for-egyptian-nationals.html">s</a></li>\r\n</ul>\r\n', 0, 'active', 3, 2, '1'),
(10, 'نقدم جميع خدمات الشحن لعملائنا', 'Admin', '2017-02-09 12:24:56', '<p dir="RTL" style="margin-left:0in; margin-right:0in; text-align:right"><span style="font-size:12pt"><span style="background-color:#ffffff"><span style="font-family:Arial,sans-serif">لعمليات الشحن المسهلة</span></span></span></p>\r\n\r\n<p dir="RTL" style="margin-left:0in; margin-right:0in; text-align:right"><span style="font-size:12pt"><span style="background-color:#ffffff"><span style="font-family:Arial,sans-serif">نعمل على عمليات تخليص البضائع والشحن الخاص بك التي تكون في كثير من الأحيان معقدة. نتصرف نيابة عنك في كل خطوة . هدفنا تخليص البضائع من الجمارك ، والتأكد من أنها تتوافق 100٪ مع قواعد الولايات المتحدة للجمارك واللوائح، ودفع الرسوم والتعريفات الجمركية، وفي نهاية المطاف شحن البضائع إلى وجهتها النهائية. نهتم بجميع الخدمات اللوجستية</span></span></span></p>\r\n\r\n<p style="margin-left:0in; margin-right:0in">&nbsp;</p>\r\n\r\n<p dir="RTL" style="margin-left:0in; margin-right:0in; text-align:right"><span style="font-size:12pt"><span style="background-color:#ffffff"><span style="font-family:Arial,sans-serif">خدمات</span></span></span></p>\r\n\r\n<p dir="RTL" style="margin-left:0in; margin-right:0in; text-align:right"><span style="font-size:12pt"><span style="background-color:#ffffff"><span dir="LTR">&bull; </span><span style="font-family:Arial,sans-serif">التخليص الجمركي</span></span></span></p>\r\n\r\n<p dir="RTL" style="margin-left:0in; margin-right:0in; text-align:right"><span style="font-size:12pt"><span style="background-color:#ffffff"><span dir="LTR">&bull; </span><span style="font-family:Arial,sans-serif">بوند المستمر</span></span></span></p>\r\n\r\n<p dir="RTL" style="margin-left:0in; margin-right:0in; text-align:right"><span style="font-size:12pt"><span style="background-color:#ffffff"><span dir="LTR">&bull; </span><span style="font-family:Arial,sans-serif">الإصدار</span></span></span></p>\r\n\r\n<p dir="RTL" style="margin-left:0in; margin-right:0in; text-align:right"><span style="font-size:12pt"><span style="background-color:#ffffff"><span dir="LTR">&bull; </span><span style="font-family:Arial,sans-serif">استشارات استيراد</span></span></span></p>\r\n\r\n<p dir="RTL" style="margin-left:0in; margin-right:0in; text-align:right"><span style="font-size:12pt"><span style="background-color:#ffffff"><span style="font-family:Arial,sans-serif">ل</span><span style="font-family:Arial,sans-serif">لاتصال بنا للحصول على مزيد من التفاصيل</span><span dir="LTR">:</span></span></span></p>\r\n\r\n<p dir="RTL" style="margin-left:0in; margin-right:0in; text-align:right"><span style="font-size:12pt"><span style="background-color:#ffffff"><span style="font-family:Arial,sans-serif">ترك لنا رسالة. * هذا ليس </span><span style="font-family:Arial,sans-serif">للسعر</span><span dir="LTR"> * </span><span style="font-family:Arial,sans-serif">للاستفسارات العامة فقط</span></span></span></p>\r\n', 0, 'active', 13, 2, '2'),
(11, 'ترغب في الحصول على أفضل رعاية طبية بأسعار معقولة؟ اتصال بنا للحصول على مزيد من التفاصيل', 'Admin', '2017-02-09 13:33:48', '<h2>هنا كيف يمكننا مساعدتك</h2>\r\n\r\n<p>1- &nbsp; &nbsp; &nbsp;والعيادات لطلبك&nbsp;&nbsp;البحث&nbsp;عن أفضل&nbsp;المستشفيات</p>\r\n\r\n<p>2- &nbsp; &nbsp; &nbsp;طلب لائحة الأسعار</p>\r\n\r\n<p>3- &nbsp; &nbsp; &nbsp;مطابقة طلبك بالأنسب</p>\r\n\r\n<h3><strong>استكشف الخيارات الأنسب لك</strong></h3>\r\n', 0, 'active', 4, 2, '4');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(32) NOT NULL,
  `product_type` varchar(255) CHARACTER SET utf8 NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 NOT NULL,
  `location` varchar(255) CHARACTER SET utf8 NOT NULL,
  `product_pic` text CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'pending',
  `company_email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `product_only_for` varchar(255) CHARACTER SET utf8 NOT NULL,
  `date_today` datetime DEFAULT NULL,
  `seen` int(11) NOT NULL DEFAULT '0',
  `lang_id` int(11) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_type`, `product_name`, `price`, `location`, `product_pic`, `description`, `status`, `company_email`, `product_only_for`, `date_today`, `seen`, `lang_id`) VALUES
(4, 'Laptops', 'Dell xps 3', '2500', 'Nikagolla Yatawatta,Matale', 'more2.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'active', 'rdrusaid77@gmail.com', '3 Weeks', '2017-01-09 13:59:42', 1, 1),
(5, 'Personal Items', 'purse', '254', 'London', 'more1.jpg', '', 'pending', 'rdrusaid77@gmail.com', '3 Weeks', '2017-01-11 09:35:25', 1, 1),
(6, 'Moterbike', 'Ducati', '25585', 'Qatar', 'more4.jpg', 'xcbxc', 'pending', 'rdrusaid77@gmail.com', '1 Week', '2017-01-11 10:21:13', 1, 1),
(9, 'Electricals', 'test', '', '', '16178867_10206514575743616_4560566435020164005_o.jpg', '', 'pending', 'rdrusaid77@gmail.com', 'Select', '2017-02-22 17:57:48', 1, 1),
(8, 'Motorbike', 'sdsd', '', '', '', '', 'pending', 'rdrusaid77@gmail.com', 'Select', '2017-02-22 15:56:37', 1, 1),
(10, 'Motorbike', 'dfghcf', '', '', '16178867_10206514575743616_4560566435020164005_o.jpg', '', 'pending', 'rdrusaid77@gmail.com', 'Select', '2017-02-22 17:59:37', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `props`
--

CREATE TABLE `props` (
  `prop_id` int(32) NOT NULL,
  `prop_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `prop_address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `prop_city` varchar(255) CHARACTER SET utf8 NOT NULL,
  `prop_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `prop_desc` text CHARACTER SET utf8,
  `bed_rooms` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `total_rooms` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `bath_rooms` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `total_floors` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `living_area` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `prop_for` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `indoor_check` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `outdoor_check` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `company_email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `main_image` text CHARACTER SET utf8,
  `image_1` text CHARACTER SET utf8,
  `image_2` text CHARACTER SET utf8,
  `image_3` text CHARACTER SET utf8,
  `image_4` text CHARACTER SET utf8,
  `image_5` text CHARACTER SET utf8,
  `status` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'pending',
  `date_today` datetime DEFAULT NULL,
  `prop_only_for` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'none',
  `seen` int(11) NOT NULL DEFAULT '0',
  `lang_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `props`
--

INSERT INTO `props` (`prop_id`, `prop_name`, `prop_address`, `prop_city`, `prop_type`, `price`, `prop_desc`, `bed_rooms`, `total_rooms`, `bath_rooms`, `total_floors`, `living_area`, `prop_for`, `indoor_check`, `outdoor_check`, `company_email`, `main_image`, `image_1`, `image_2`, `image_3`, `image_4`, `image_5`, `status`, `date_today`, `prop_only_for`, `seen`, `lang_id`) VALUES
(2, 'Apartment', '115,king Street Newyork', 'Kandy', 'Apartment', '450000', '', '4', '8', '8', '3', '1111', 'For Rent', 'Air Conditioning,Internet,Electricity,Phone,Hot Water', 'Garage,Balcony,Rooftop terrace', 'rdrusaid77@gmail.com', 'real1.jpg', '', '', '', '', '', 'active', '2016-12-21 15:45:38', 'free', 1, 1),
(3, 'Ground', 'Doha', 'Doha', 'Apartment', '560000', '', '5', '8', '5', '2', '2222', 'For Sale', 'Intercom,Air Conditioning,Water,Lift', 'Garage,Secure Parking,Water Tank', 'rdrusaid77@gmail.com', 'real3.jpg', '', '', '', '', '', 'pending', '2016-12-21 15:45:38', 'free', 1, 1),
(4, 'Flat', 'Colombo', 'Colombo', 'Villas', '20000', '', '4', '6', '3', '2', '1111', 'For Sale', 'Water,Electricity,Lift,Phone,Maid Quarters', '', 'rdrusaid77@gmail.com', 'real2.jpg', '', '', '', '', '', 'pending', '2016-12-21 15:45:38', 'free', 1, 1),
(22, 'Rusaid', 'nikagolla', '', '', '', '', '', '', '', '', '', '', '', '', 'rdrusaid77@gmail.com', '', '', '', '', '', '', 'pending', '2017-02-22 12:43:03', 'Select', 1, 1),
(23, 'dfghjdf', 'dfghfg', '', '', '', '', '4564', '454', '4545', '454', '', '', '', '', 'rdrusaid77@gmail.com', '', '', '', '', '', '', 'pending', '2017-02-22 15:06:34', 'Select', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `inq_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `phone_no` varchar(255) CHARACTER SET utf8 NOT NULL,
  `location` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `other` text CHARACTER SET utf8 NOT NULL,
  `lang_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`inq_id`, `name`, `email`, `phone_no`, `location`, `company`, `reason`, `other`, `lang_id`) VALUES
(1, 'Mohamed Rusaid', 'rdrusaid77@gmail.com', '+1 584 4848 4888', '114,Nikagolla, Yatawatta, Matale', 'Holoteq', 'General Importing Questions', 'sdrgsdgfs', 1),
(2, 'قثقثق', 'rdrusaid77@gmail.com', '6565', 'سبسسيبس لبا صثق لل', 'صثب', 'General Importing Questions', 'ثقل لبىل لؤاىلب ', 2);

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `social_id` int(32) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `link` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(5) NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `user_password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `user_email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `email_code` varchar(32) CHARACTER SET utf8 NOT NULL,
  `user_type` varchar(255) CHARACTER SET utf8 DEFAULT 'user',
  `user_date` date NOT NULL,
  `company_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone_no` varchar(52) DEFAULT NULL,
  `address_1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address_2` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `postel_code` varchar(32) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `news_our` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'no',
  `news_partner` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'no',
  `seen` int(11) NOT NULL DEFAULT '0',
  `lang_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `user_password`, `user_email`, `email_code`, `user_type`, `user_date`, `company_name`, `phone_no`, `address_1`, `address_2`, `city`, `postel_code`, `active`, `news_our`, `news_partner`, `seen`, `lang_id`) VALUES
(38, 'Rusaid', 'Mohamed', 'rusaid', 'rdrusaid77@gmail.com', 'b305f06afb71feef0ed8fecb9be51691', 'admin', '2016-12-06', 'holoteq', '7045367636', '114, Nikagolla,', 'Yatawatta', 'Matale', '21000', 1, 'no', 'no', 1, 1),
(80, 'Rusaid', 'MRD', 'rusaid', 'rusaidmrd@gmail.com', 'a720136b94296fd829c99018d99a1a3d', 'user', '2017-03-12', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'no', 'no', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `car_details`
--
ALTER TABLE `car_details`
  ADD PRIMARY KEY (`car_detail_id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`car_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `category_types`
--
ALTER TABLE `category_types`
  ADD PRIMARY KEY (`cat_type_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`inq_id`);

--
-- Indexes for table `job_seekers`
--
ALTER TABLE `job_seekers`
  ADD PRIMARY KEY (`job_seeker_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `medical_inq`
--
ALTER TABLE `medical_inq`
  ADD PRIMARY KEY (`inq_id`);

--
-- Indexes for table `mrgs`
--
ALTER TABLE `mrgs`
  ADD PRIMARY KEY (`mrg_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`post_cat_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `props`
--
ALTER TABLE `props`
  ADD PRIMARY KEY (`prop_id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`inq_id`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `about_id` int(32) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `car_details`
--
ALTER TABLE `car_details`
  MODIFY `car_detail_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `car_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT for table `category_types`
--
ALTER TABLE `category_types`
  MODIFY `cat_type_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `inq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `job_seekers`
--
ALTER TABLE `job_seekers`
  MODIFY `job_seeker_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `job_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `medical_inq`
--
ALTER TABLE `medical_inq`
  MODIFY `inq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mrgs`
--
ALTER TABLE `mrgs`
  MODIFY `mrg_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `post_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `props`
--
ALTER TABLE `props`
  MODIFY `prop_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `inq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `social_id` int(32) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
