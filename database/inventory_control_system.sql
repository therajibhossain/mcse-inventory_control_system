-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 03, 2023 at 06:58 PM
-- Server version: 8.0.32-0ubuntu0.22.04.2
-- PHP Version: 8.1.2-1ubuntu2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_control_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `ch_favorites`
--

CREATE TABLE `ch_favorites` (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `favorite_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ch_messages`
--

CREATE TABLE `ch_messages` (
  `id` bigint NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint NOT NULL,
  `to_id` bigint NOT NULL,
  `body` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint UNSIGNED NOT NULL,
  `document_type` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'V',
  `document_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_purchase` timestamp NULL DEFAULT NULL,
  `total_purchases` int UNSIGNED NOT NULL DEFAULT '0',
  `total_paid` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `balance` decimal(8,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `document_type`, `document_id`, `name`, `email`, `phone`, `last_purchase`, `total_purchases`, `total_paid`, `created_at`, `updated_at`, `deleted_at`, `balance`) VALUES
(1, 'C', 2022005321, '3S Software Ltd.', '3SSoftwareLtd@yopmail.com', '8801822911624', NULL, 0, '0.00', '2023-02-03 18:29:06', '2023-02-03 18:29:06', NULL, '0.00'),
(2, 'C', 2021002383, '7 MARK', '7MARK@yopmail.com', '8801717375219', NULL, 0, '0.00', '2023-02-03 18:29:06', '2023-02-03 18:29:06', NULL, '0.00'),
(3, 'C', 2022005226, 'A D Khan Castle', 'ADKhanCastle@yopmail.com', '8801717375219', NULL, 0, '0.00', '2023-02-03 18:29:06', '2023-02-03 18:29:06', NULL, '0.00'),
(4, 'C', 2008000015, 'ACI Logistics Ltd.', 'ACILogisticsLtd@yopmail.com', '8801717375219', NULL, 0, '0.00', '2023-02-03 18:29:06', '2023-02-03 18:29:06', NULL, '0.00'),
(5, 'C', 0, 'ACS Textiles (BD) Ltd.', 'ACSTextiles(BD)Ltd@yopmail.com', '8801713037448', NULL, 0, '0.00', '2023-02-03 18:29:06', '2023-02-03 18:29:06', NULL, '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Bangladesh', NULL, NULL),
(2, 'India', NULL, NULL),
(3, 'Pakistan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kenzhekhans`
--

CREATE TABLE `kenzhekhans` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `usage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `availability` tinyint(1) NOT NULL DEFAULT '0',
  `product_category_id` bigint UNSIGNED NOT NULL,
  `price` decimal(10,1) UNSIGNED NOT NULL,
  `stock` int UNSIGNED NOT NULL DEFAULT '0',
  `weight` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `stock_defective` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ltm_translations`
--

CREATE TABLE `ltm_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  `key` text COLLATE utf8mb4_bin NOT NULL,
  `value` text COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_04_02_193005_create_translations_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2019_11_02_214601_create_clients_table_migration', 1),
(7, '2019_11_03_032131_create_products_categories_table_migration', 1),
(8, '2019_11_03_032132_create_kenzhekhans_table', 1),
(9, '2019_11_03_032233_create_products_table_migration', 1),
(10, '2019_11_04_000745_create_payment_methods_table_migration', 1),
(11, '2019_11_04_001238_create_sales_table_migration', 1),
(12, '2019_11_04_001246_create_sold_products_table_migration', 1),
(13, '2019_11_04_001339_create_providers_table_migration', 1),
(14, '2019_12_23_065221_create_transfers_table', 1),
(15, '2019_12_24_001440_create_transactions_table_migration', 1),
(16, '2020_01_15_193356_create_receipts_table', 1),
(17, '2020_01_15_193828_create_received_products_table', 1),
(18, '2020_01_20_191734_add_balance_column_clients_table', 1),
(19, '2022_02_04_054504_create_settings_table', 1),
(20, '2022_02_11_201323_create_countries_table', 1),
(21, '2022_02_17_231145_create_zoom_meetings_table', 1),
(22, '2022_02_17_999999_add_active_status_to_users', 1),
(23, '2022_02_17_999999_add_avatar_to_users', 1),
(24, '2022_02_17_999999_add_dark_mode_to_users', 1),
(25, '2022_02_17_999999_add_messenger_color_to_users', 1),
(26, '2022_02_17_999999_create_favorites_table', 1),
(27, '2022_02_17_999999_create_messages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'aamra-2015678 (DBBL)', 'Mirpur Circle-10, Dhaka-1216', '2023-02-03 18:29:06', '2023-02-03 18:29:06', NULL),
(2, 'aamra-50156986 (IBBL)', 'Mirpur Circle-10, Dhaka-1216', '2023-02-03 18:29:06', '2023-02-03 18:29:06', NULL),
(3, 'Petty Cash', 'Cash in hand', '2023-02-03 18:29:06', '2023-02-03 18:29:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `usage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `availability` tinyint(1) NOT NULL DEFAULT '0',
  `product_category_id` bigint UNSIGNED NOT NULL,
  `price` decimal(10,1) UNSIGNED NOT NULL,
  `stock` int UNSIGNED NOT NULL DEFAULT '0',
  `weight` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `stock_defective` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `country`, `product_code`, `usage`, `availability`, `product_category_id`, `price`, `stock`, `weight`, `stock_defective`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Smart Display', NULL, NULL, NULL, 'ADI001946', NULL, 0, 1, '100.0', 10, '1.00', 0, '2023-02-03 18:29:06', '2023-02-03 18:29:06', NULL),
(2, 'Kiosk 138 43\" HD43-F ', NULL, NULL, NULL, 'ADI001945', NULL, 0, 1, '200.0', 10, '1.00', 0, '2023-02-03 18:29:06', '2023-02-03 18:29:06', NULL),
(3, 'Accessories Power Supply 24', NULL, NULL, NULL, 'AMO001059', NULL, 0, 2, '300.0', 20, '2.00', 0, '2023-02-03 18:29:06', '2023-02-03 18:29:06', NULL),
(4, 'Accessories Mobile SIM 68', NULL, NULL, NULL, 'AMO001058', NULL, 0, 2, '400.0', 20, '2.00', 0, '2023-02-03 18:29:06', '2023-02-03 18:29:06', NULL),
(5, 'Data Center Civil 127 Cabinet', NULL, NULL, NULL, 'DCI001833', NULL, 0, 3, '400.0', 30, '3.00', 0, '2023-02-03 18:29:06', '2023-02-03 18:29:06', NULL),
(6, 'Data Center Civil 127 Chair', NULL, NULL, NULL, 'DCI001832', NULL, 0, 3, '500.0', 30, '3.00', 0, '2023-02-03 18:29:06', '2023-02-03 18:29:06', NULL),
(7, ' Station 5N', NULL, NULL, NULL, 'WWI001148', NULL, 0, 4, '400.0', 30, '3.00', 0, '2023-02-03 18:29:06', '2023-02-03 18:29:06', NULL),
(8, 'R5AC Lite', NULL, NULL, NULL, 'WWI001147', NULL, 0, 4, '500.0', 30, '3.00', 0, '2023-02-03 18:29:06', '2023-02-03 18:29:06', NULL),
(9, 'Switch Unmanaged ', NULL, NULL, NULL, 'SUN000791', NULL, 0, 5, '400.0', 30, '3.00', 0, '2023-02-03 18:29:06', '2023-02-03 18:29:06', NULL),
(10, 'Switch Unmanaged 6 JFS516', NULL, NULL, NULL, 'SUN000790', NULL, 0, 5, '500.0', 30, '3.00', 0, '2023-02-03 18:29:06', '2023-02-03 18:29:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Audio and Video Collaboration', '2023-02-03 18:29:06', '2023-02-03 18:29:06', NULL),
(2, 'Accessories', '2023-02-03 18:29:06', '2023-02-03 18:29:06', NULL),
(3, 'Data Center', '2023-02-03 18:29:06', '2023-02-03 18:29:06', NULL),
(4, 'Wireless', '2023-02-03 18:29:06', '2023-02-03 18:29:06', NULL),
(5, 'Switch', '2023-02-03 18:29:06', '2023-02-03 18:29:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `paymentinfo` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `finalized_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `received_products`
--

CREATE TABLE `received_products` (
  `id` bigint UNSIGNED NOT NULL,
  `receipt_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `kenzhekhan_id` bigint UNSIGNED NOT NULL,
  `stock` int NOT NULL,
  `stock_defective` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `finalized_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `theme` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sold_products`
--

CREATE TABLE `sold_products` (
  `id` bigint UNSIGNED NOT NULL,
  `sale_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `kenzhekhan_id` bigint UNSIGNED DEFAULT NULL,
  `qty` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` bigint UNSIGNED DEFAULT NULL,
  `sale_id` bigint UNSIGNED DEFAULT NULL,
  `provider_id` bigint UNSIGNED DEFAULT NULL,
  `transfer_id` bigint UNSIGNED DEFAULT NULL,
  `payment_method_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_method_id` bigint UNSIGNED NOT NULL,
  `receiver_method_id` bigint UNSIGNED NOT NULL,
  `sended_amount` decimal(10,2) NOT NULL,
  `received_amount` decimal(10,2) NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '0',
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `dark_mode` tinyint(1) NOT NULL DEFAULT '0',
  `messenger_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#2180f3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `image`, `code`, `is_admin`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `active_status`, `avatar`, `dark_mode`, `messenger_color`) VALUES
(1, 'Admin', 'admin@yopmail.com', '2023-02-03 18:29:05', '$2y$12$lNkhMUpXy0jNaMvKnvAM1OyDK.6vDgQmVT/2mtcvpDnqJBY/t3rwS', NULL, NULL, 'user_SwHiDDZI24Ew.jpg', NULL, '1', NULL, '2023-02-03 18:29:05', '2023-02-03 18:33:47', NULL, 0, 'avatar.png', 0, '#2180f3'),
(2, 'Staff', 'staff@yopmail.com', '2023-02-03 18:29:06', '$2y$12$WiqLAGwbDrZI4BnT437YGeC6P01MX7okhs84HgQ9C3ReRDfR1ZoQ.', NULL, NULL, NULL, NULL, '0', NULL, '2023-02-03 18:29:06', NULL, NULL, 0, 'avatar.png', 0, '#2180f3');

-- --------------------------------------------------------

--
-- Table structure for table `zoom_meetings`
--

CREATE TABLE `zoom_meetings` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `meeting_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` datetime NOT NULL,
  `duration` int NOT NULL COMMENT 'minutes',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'meeting password',
  `start_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ch_favorites`
--
ALTER TABLE `ch_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_messages`
--
ALTER TABLE `ch_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_document_id_unique` (`document_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kenzhekhans`
--
ALTER TABLE `kenzhekhans`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_product_category_id_foreign` (`product_category_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receipts_provider_id_foreign` (`provider_id`),
  ADD KEY `receipts_user_id_foreign` (`user_id`);

--
-- Indexes for table `received_products`
--
ALTER TABLE `received_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `received_products_receipt_id_foreign` (`receipt_id`),
  ADD KEY `received_products_product_id_foreign` (`product_id`),
  ADD KEY `received_products_kenzhekhan_id_foreign` (`kenzhekhan_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_user_id_foreign` (`user_id`),
  ADD KEY `sales_client_id_foreign` (`client_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sold_products`
--
ALTER TABLE `sold_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sold_products_sale_id_foreign` (`sale_id`),
  ADD KEY `sold_products_product_id_foreign` (`product_id`),
  ADD KEY `sold_products_kenzhekhan_id_foreign` (`kenzhekhan_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `transactions_client_id_foreign` (`client_id`),
  ADD KEY `transactions_sale_id_foreign` (`sale_id`),
  ADD KEY `transactions_provider_id_foreign` (`provider_id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_transfer_id_foreign` (`transfer_id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfers_sender_method_id_foreign` (`sender_method_id`),
  ADD KEY `transfers_receiver_method_id_foreign` (`receiver_method_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `zoom_meetings`
--
ALTER TABLE `zoom_meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zoom_meetings_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kenzhekhans`
--
ALTER TABLE `kenzhekhans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `received_products`
--
ALTER TABLE `received_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sold_products`
--
ALTER TABLE `sold_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zoom_meetings`
--
ALTER TABLE `zoom_meetings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kenzhekhans`
--
ALTER TABLE `kenzhekhans`
  ADD CONSTRAINT `kenzhekhans_id_foreign` FOREIGN KEY (`id`) REFERENCES `product_categories` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`);

--
-- Constraints for table `receipts`
--
ALTER TABLE `receipts`
  ADD CONSTRAINT `receipts_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`),
  ADD CONSTRAINT `receipts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `received_products`
--
ALTER TABLE `received_products`
  ADD CONSTRAINT `received_products_kenzhekhan_id_foreign` FOREIGN KEY (`kenzhekhan_id`) REFERENCES `kenzhekhans` (`id`),
  ADD CONSTRAINT `received_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `received_products_receipt_id_foreign` FOREIGN KEY (`receipt_id`) REFERENCES `receipts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sold_products`
--
ALTER TABLE `sold_products`
  ADD CONSTRAINT `sold_products_kenzhekhan_id_foreign` FOREIGN KEY (`kenzhekhan_id`) REFERENCES `kenzhekhans` (`id`),
  ADD CONSTRAINT `sold_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `sold_products_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `transactions_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `transactions_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`),
  ADD CONSTRAINT `transactions_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_transfer_id_foreign` FOREIGN KEY (`transfer_id`) REFERENCES `transfers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transfers`
--
ALTER TABLE `transfers`
  ADD CONSTRAINT `transfers_receiver_method_id_foreign` FOREIGN KEY (`receiver_method_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `transfers_sender_method_id_foreign` FOREIGN KEY (`sender_method_id`) REFERENCES `payment_methods` (`id`);

--
-- Constraints for table `zoom_meetings`
--
ALTER TABLE `zoom_meetings`
  ADD CONSTRAINT `zoom_meetings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
