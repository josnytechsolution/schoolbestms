-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2022 at 11:07 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `old_values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
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
(6, 'App\\User', 1, 1, 'updated', 'App\\User', '{\"id\":1,\"slug\":\"4c80a6b2c05a4a73b301231492055ae0\",\"name\":\"Joseph Gitau\",\"email\":\"josnytechsolution@gmail.com\",\"email_verified_at\":\"2022-04-08 09:38:06\",\"contact\":\"254720871499\",\"is_super\":1,\"is_admin\":1,\"is_client\":0,\"is_active\":1,\"created_by\":1,\"created_at\":\"2022-04-08 09:37:46\",\"updated_by\":null,\"updated_at\":\"2022-04-08 09:38:06\"}', '{\"id\":1,\"slug\":\"4c80a6b2c05a4a73b301231492055ae0\",\"name\":\"Joseph Gitau\",\"email\":\"josnytechsolution@gmail.com\",\"email_verified_at\":\"2022-04-08 09:38:06\",\"contact\":\"254720871499\",\"is_super\":1,\"is_admin\":1,\"is_client\":0,\"is_active\":1,\"created_by\":1,\"created_at\":\"2022-04-08 09:37:46\",\"updated_by\":1,\"updated_at\":\"2022-04-09 17:03:13\"}', 'http://dev.schoolbestms/admin/system-users/4c80a6b2c05a4a73b301231492055ae0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', '2022-04-09 17:03:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `on_email` tinyint(1) NOT NULL DEFAULT 0,
  `on_phone` tinyint(1) NOT NULL DEFAULT 0,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `county` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'KE',
  `current_session_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'isActive',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
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
  `is_super` tinyint(1) NOT NULL DEFAULT 0,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `is_client` tinyint(1) NOT NULL DEFAULT 1,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `slug`, `name`, `email`, `email_verified_at`, `password`, `contact`, `is_super`, `is_admin`, `is_client`, `is_active`, `remember_token`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, '4c80a6b2c05a4a73b301231492055ae0', 'Joseph Gitau', 'josnytechsolution@gmail.com', '2022-04-08 06:38:06', '$2y$10$/NtQqQlbJ6NUan7niMeUNu0WvS6seNTPtc6jqoEFyr1tWnzpAxVnW', '254720871499', 1, 1, 0, 1, NULL, 1, '2022-04-08 06:37:46', 1, '2022-04-09 14:03:13'),
(2, '79fb1851c7704d6e8a477612d9eef505', 'John Doe', 'nyutujoseph115@gmail.com', NULL, '$2y$10$I7XibzniaUku/9HobABFPOfzxRKUgICuK/akhRE5JAJe8d7tUawy6', '254714730671', 0, 0, 1, 1, NULL, 1, '2022-04-09 12:46:44', 1, '2022-04-09 13:46:51');

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
  ADD UNIQUE KEY `clients_customer_no_unique` (`customer_no`),
  ADD UNIQUE KEY `clients_email_unique` (`email`),
  ADD UNIQUE KEY `clients_contact_unique` (`contact`),
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
