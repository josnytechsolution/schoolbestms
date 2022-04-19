-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2022 at 01:44 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schoolbestms`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_trails`
--

CREATE TABLE `audit_trails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `current_session_id` bigint(20) UNSIGNED NOT NULL,
  `event` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auditable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_values` text COLLATE utf8mb4_unicode_ci,
  `new_values` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_trails`
--

INSERT INTO `audit_trails` (`id`, `user_type`, `user_id`, `current_session_id`, `event`, `auditable_type`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `created_at`, `updated_at`) VALUES
(1, 'App\\User', 1, 1, 'created', 'App\\CurrentSession', NULL, '{\"slug\":\"term-1-2022\",\"name\":\"TERM 1 2022\",\"term\":\"TERM 1\",\"year\":\"2022\",\"created_by\":1,\"updated_at\":\"2022-04-08 10:31:30\",\"created_at\":\"2022-04-08 10:31:30\",\"id\":1}', 'http://dev.schoolbestms/admin/financial-sessions', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', '2022-04-08 10:31:30', NULL),
(2, 'App\\User', 1, 1, 'created', 'App\\CurrentSession', NULL, '{\"slug\":\"term-2-2022\",\"name\":\"TERM 2 2022\",\"term\":\"TERM 2\",\"year\":\"2022\",\"created_by\":1,\"updated_at\":\"2022-04-08 10:39:27\",\"created_at\":\"2022-04-08 10:39:27\",\"id\":2}', 'http://dev.schoolbestms/admin/financial-sessions', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', '2022-04-08 10:39:27', NULL),
(3, 'App\\User', 1, 1, 'created', 'App\\CurrentSession', NULL, '{\"slug\":\"term-3-2022\",\"name\":\"TERM 3 2022\",\"term\":\"TERM 3\",\"year\":\"2022\",\"created_by\":1,\"updated_at\":\"2022-04-09 14:38:19\",\"created_at\":\"2022-04-09 14:38:19\",\"id\":3}', 'http://dev.schoolbestms/admin/financial-sessions', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', '2022-04-09 14:38:19', NULL),
(4, 'App\\User', 1, 1, 'created', 'App\\User', NULL, '{\"slug\":\"79fb1851c7704d6e8a477612d9eef505\",\"name\":\"John Doe\",\"email\":\"NYUTUJOSEPH115@GMAIL.COM\",\"contact\":\"254714730671\",\"created_by\":1,\"updated_at\":\"2022-04-09 15:46:44\",\"created_at\":\"2022-04-09 15:46:44\",\"id\":2}', 'http://dev.schoolbestms/admin/system-users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', '2022-04-09 15:46:44', NULL),
(5, 'App\\User', 1, 1, 'updated', 'App\\User', '{\"id\":2,\"slug\":\"79fb1851c7704d6e8a477612d9eef505\",\"name\":\"John Doe\",\"email\":\"NYUTUJOSEPH115@GMAIL.COM\",\"email_verified_at\":null,\"contact\":\"254714730671\",\"is_super\":0,\"is_admin\":0,\"is_client\":1,\"is_active\":1,\"created_by\":1,\"created_at\":\"2022-04-09 15:46:44\",\"updated_by\":null,\"updated_at\":\"2022-04-09 15:46:44\"}', '{\"id\":2,\"slug\":\"79fb1851c7704d6e8a477612d9eef505\",\"name\":\"John Doe\",\"email\":\"nyutujoseph115@gmail.com\",\"email_verified_at\":null,\"contact\":\"254714730671\",\"is_super\":0,\"is_admin\":0,\"is_client\":1,\"is_active\":1,\"created_by\":1,\"created_at\":\"2022-04-09 15:46:44\",\"updated_by\":1,\"updated_at\":\"2022-04-09 16:46:51\"}', 'http://dev.schoolbestms/admin/system-users/79fb1851c7704d6e8a477612d9eef505', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', '2022-04-09 16:46:51', NULL),
(6, 'App\\User', 1, 1, 'updated', 'App\\User', '{\"id\":1,\"slug\":\"4c80a6b2c05a4a73b301231492055ae0\",\"name\":\"Joseph Gitau\",\"email\":\"josnytechsolution@gmail.com\",\"email_verified_at\":\"2022-04-08 09:38:06\",\"contact\":\"254720871499\",\"is_super\":1,\"is_admin\":1,\"is_client\":0,\"is_active\":1,\"created_by\":1,\"created_at\":\"2022-04-08 09:37:46\",\"updated_by\":null,\"updated_at\":\"2022-04-08 09:38:06\"}', '{\"id\":1,\"slug\":\"4c80a6b2c05a4a73b301231492055ae0\",\"name\":\"Joseph Gitau\",\"email\":\"josnytechsolution@gmail.com\",\"email_verified_at\":\"2022-04-08 09:38:06\",\"contact\":\"254720871499\",\"is_super\":1,\"is_admin\":1,\"is_client\":0,\"is_active\":1,\"created_by\":1,\"created_at\":\"2022-04-08 09:37:46\",\"updated_by\":1,\"updated_at\":\"2022-04-09 17:03:13\"}', 'http://dev.schoolbestms/admin/system-users/4c80a6b2c05a4a73b301231492055ae0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', '2022-04-09 17:03:13', NULL),
(7, 'App\\User', 1, 1, 'created', 'App\\User', NULL, '{\"slug\":\"33d8345f77794416be41ee9fab01a499\",\"name\":\"Joseph Gitau\",\"email\":\"schoolbestms@gmail.com\",\"contact\":\"0720871491\",\"is_client\":true,\"created_by\":1,\"updated_at\":\"2022-04-19 23:40:20\",\"created_at\":\"2022-04-19 23:40:20\",\"id\":5}', 'http://dev.schoolbestms/admin/my-clients', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', '2022-04-19 23:40:20', NULL),
(8, 'App\\User', 1, 1, 'created', 'App\\User', NULL, '{\"slug\":\"ea2af1dc6d194346a698cac4a2f74150\",\"name\":\"Joseph Gitau\",\"email\":\"schoolbestms@gmail.com\",\"contact\":\"0720871491\",\"is_client\":true,\"created_by\":1,\"updated_at\":\"2022-04-19 23:42:19\",\"created_at\":\"2022-04-19 23:42:19\",\"id\":6}', 'http://dev.schoolbestms/admin/my-clients', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', '2022-04-19 23:42:19', NULL),
(9, 'App\\User', 1, 1, 'created', 'App\\Client', NULL, '{\"slug\":\"d31bae4b2e7e4d209b37a807b9c0ac74\",\"client_no\":\"SBC1001\",\"first_name\":\"Joseph\",\"last_name\":\"Gitau\",\"email\":\"schoolbestms@gmail.com\",\"contact\":\"0720871491\",\"reg_date\":\"2022-04-20\",\"company_name\":\"Josnytech Solution\",\"postal_address\":\"56785 - 00100, Nairobi\",\"county\":\"Nairobi City\",\"country\":\"Kenya\",\"current_session_id\":\"1\",\"user_id\":6,\"raw_password\":90850160,\"logo\":{},\"created_by\":1,\"updated_at\":\"2022-04-19 23:42:19\",\"created_at\":\"2022-04-19 23:42:19\",\"id\":1}', 'http://dev.schoolbestms/admin/my-clients', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', '2022-04-19 23:42:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `on_email` tinyint(1) NOT NULL DEFAULT '0',
  `on_phone` tinyint(1) NOT NULL DEFAULT '0',
  `reg_date` date NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `county` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'KE',
  `current_session_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'isActive',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `raw_password` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `slug`, `client_no`, `first_name`, `last_name`, `email`, `contact`, `on_email`, `on_phone`, `reg_date`, `company_name`, `postal_address`, `county`, `country`, `current_session_id`, `status`, `user_id`, `raw_password`, `logo`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'd31bae4b2e7e4d209b37a807b9c0ac74', 'SBC1001', 'Joseph', 'Gitau', 'schoolbestms@gmail.com', '0720871491', 0, 0, '2022-04-20', 'Josnytech Solution', '56785 - 00100, Nairobi', 'Nairobi City', 'KE', 1, 'isActive', 6, '90850160', 'storage/clients\\58435423.png', 1, '2022-04-19 20:42:19', NULL, '2022-04-19 20:42:19');

-- --------------------------------------------------------

--
-- Table structure for table `company_profiles`
--

CREATE TABLE `company_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `physical` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `current_sessions`
--

CREATE TABLE `current_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `term` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` year(4) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Future',
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `current_sessions`
--

INSERT INTO `current_sessions` (`id`, `slug`, `name`, `term`, `year`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'term-1-2022', 'TERM 1 2022', 'TERM 1', 2022, 'Active', 1, '2022-04-08 07:31:30', NULL, '2022-04-08 07:31:30'),
(2, 'term-2-2022', 'TERM 2 2022', 'TERM 2', 2022, 'Future', 1, '2022-04-08 07:39:27', NULL, '2022-04-08 07:39:27'),
(3, 'term-3-2022', 'TERM 3 2022', 'TERM 3', 2022, 'Future', 1, '2022-04-09 11:38:19', NULL, '2022-04-09 11:38:19');

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
(1, '2022_04_07_230900_create_users_table', 1),
(2, '2022_04_07_231000_create_password_resets_table', 1),
(3, '2022_04_07_232048_create_company_profiles_table', 1),
(4, '2022_04_07_232600_create_current_sessions_table', 1),
(5, '2022_04_07_232714_create_audit_trails_table', 1),
(6, '2022_04_09_171441_create_clients_table', 2);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_super` tinyint(1) NOT NULL DEFAULT '0',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `is_client` tinyint(1) NOT NULL DEFAULT '1',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `slug`, `name`, `email`, `email_verified_at`, `password`, `contact`, `is_super`, `is_admin`, `is_client`, `is_active`, `remember_token`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, '4c80a6b2c05a4a73b301231492055ae0', 'Joseph Gitau', 'josnytechsolution@gmail.com', '2022-04-08 06:38:06', '$2y$10$/NtQqQlbJ6NUan7niMeUNu0WvS6seNTPtc6jqoEFyr1tWnzpAxVnW', '254720871499', 1, 1, 0, 1, NULL, 1, '2022-04-08 06:37:46', 1, '2022-04-09 14:03:13'),
(2, '79fb1851c7704d6e8a477612d9eef505', 'John Doe', 'nyutujoseph115@gmail.com', NULL, '$2y$10$I7XibzniaUku/9HobABFPOfzxRKUgICuK/akhRE5JAJe8d7tUawy6', '254714730671', 0, 0, 1, 1, NULL, 1, '2022-04-09 12:46:44', 1, '2022-04-09 13:46:51'),
(6, 'ea2af1dc6d194346a698cac4a2f74150', 'Joseph Gitau', 'schoolbestms@gmail.com', NULL, '$2y$10$1vDZWpI93KTnRXsmJzBIV.bbHtsY8F9h0qpjMxEVET9/klqkRihWi', '0720871491', 0, 0, 1, 1, NULL, 1, '2022-04-19 20:42:19', NULL, '2022-04-19 20:42:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_trails`
--
ALTER TABLE `audit_trails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_trails_user_id_foreign` (`user_id`),
  ADD KEY `audit_trails_current_session_id_foreign` (`current_session_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_slug_unique` (`slug`),
  ADD UNIQUE KEY `clients_email_unique` (`email`),
  ADD UNIQUE KEY `clients_contact_unique` (`contact`),
  ADD UNIQUE KEY `clients_client_no_unique` (`client_no`) USING BTREE,
  ADD KEY `clients_current_session_id_foreign` (`current_session_id`),
  ADD KEY `clients_user_id_foreign` (`user_id`);

--
-- Indexes for table `company_profiles`
--
ALTER TABLE `company_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `current_sessions`
--
ALTER TABLE `current_sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `current_sessions_slug_unique` (`slug`),
  ADD UNIQUE KEY `current_sessions_name_unique` (`name`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_slug_unique` (`slug`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_contact_unique` (`contact`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_trails`
--
ALTER TABLE `audit_trails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_profiles`
--
ALTER TABLE `company_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `current_sessions`
--
ALTER TABLE `current_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `audit_trails`
--
ALTER TABLE `audit_trails`
  ADD CONSTRAINT `audit_trails_current_session_id_foreign` FOREIGN KEY (`current_session_id`) REFERENCES `current_sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `audit_trails_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_current_session_id_foreign` FOREIGN KEY (`current_session_id`) REFERENCES `current_sessions` (`id`),
  ADD CONSTRAINT `clients_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
