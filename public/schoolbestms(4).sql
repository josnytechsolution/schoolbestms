-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2022 at 09:48 PM
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
(6, 'App\\User', 1, 1, 'updated', 'App\\User', '{\"id\":1,\"slug\":\"4c80a6b2c05a4a73b301231492055ae0\",\"name\":\"Joseph Gitau\",\"email\":\"josnytechsolution@gmail.com\",\"email_verified_at\":\"2022-04-08 09:38:06\",\"contact\":\"254720871499\",\"is_super\":1,\"is_admin\":1,\"is_client\":0,\"is_active\":1,\"created_by\":1,\"created_at\":\"2022-04-08 09:37:46\",\"updated_by\":null,\"updated_at\":\"2022-04-08 09:38:06\"}', '{\"id\":1,\"slug\":\"4c80a6b2c05a4a73b301231492055ae0\",\"name\":\"Joseph Gitau\",\"email\":\"josnytechsolution@gmail.com\",\"email_verified_at\":\"2022-04-08 09:38:06\",\"contact\":\"254720871499\",\"is_super\":1,\"is_admin\":1,\"is_client\":0,\"is_active\":1,\"created_by\":1,\"created_at\":\"2022-04-08 09:37:46\",\"updated_by\":1,\"updated_at\":\"2022-04-09 17:03:13\"}', 'http://dev.schoolbestms/admin/system-users/4c80a6b2c05a4a73b301231492055ae0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', '2022-04-09 17:03:13', NULL),
(7, 'App\\User', 1, 1, 'created', 'App\\User', NULL, '{\"slug\":\"33d8345f77794416be41ee9fab01a499\",\"name\":\"Joseph Gitau\",\"email\":\"schoolbestms@gmail.com\",\"contact\":\"0720871491\",\"is_client\":true,\"created_by\":1,\"updated_at\":\"2022-04-19 23:40:20\",\"created_at\":\"2022-04-19 23:40:20\",\"id\":5}', 'http://dev.schoolbestms/admin/my-clients', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', '2022-04-19 23:40:20', NULL),
(8, 'App\\User', 1, 1, 'created', 'App\\User', NULL, '{\"slug\":\"ea2af1dc6d194346a698cac4a2f74150\",\"name\":\"Joseph Gitau\",\"email\":\"schoolbestms@gmail.com\",\"contact\":\"0720871491\",\"is_client\":true,\"created_by\":1,\"updated_at\":\"2022-04-19 23:42:19\",\"created_at\":\"2022-04-19 23:42:19\",\"id\":6}', 'http://dev.schoolbestms/admin/my-clients', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', '2022-04-19 23:42:19', NULL),
(9, 'App\\User', 1, 1, 'created', 'App\\Client', NULL, '{\"slug\":\"d31bae4b2e7e4d209b37a807b9c0ac74\",\"client_no\":\"SBC1001\",\"first_name\":\"Joseph\",\"last_name\":\"Gitau\",\"email\":\"schoolbestms@gmail.com\",\"contact\":\"0720871491\",\"reg_date\":\"2022-04-20\",\"company_name\":\"Josnytech Solution\",\"postal_address\":\"56785 - 00100, Nairobi\",\"county\":\"Nairobi City\",\"country\":\"Kenya\",\"current_session_id\":\"1\",\"user_id\":6,\"raw_password\":90850160,\"logo\":{},\"created_by\":1,\"updated_at\":\"2022-04-19 23:42:19\",\"created_at\":\"2022-04-19 23:42:19\",\"id\":1}', 'http://dev.schoolbestms/admin/my-clients', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', '2022-04-19 23:42:19', NULL),
(10, 'App\\User', 1, 1, 'created', 'App\\Client', '{\"id\":1,\"slug\":\"d31bae4b2e7e4d209b37a807b9c0ac74\",\"client_no\":\"SBC1001\",\"first_name\":\"Joseph\",\"last_name\":\"Gitau\",\"email\":\"schoolbestms@gmail.com\",\"contact\":\"0720871491\",\"on_email\":0,\"on_phone\":0,\"reg_date\":\"2022-04-20\",\"company_name\":\"Josnytech Solution\",\"postal_address\":\"56785 - 00100, Nairobi\",\"county\":\"Nairobi City\",\"country\":\"Kenya\",\"current_session_id\":1,\"is_active\":0,\"user_id\":6,\"raw_password\":\"90850160\",\"logo\":\"storage\\/clients\\\\58435423.png\",\"created_by\":1,\"created_at\":\"2022-04-19 23:42:19\",\"updated_by\":null,\"updated_at\":\"2022-04-19 23:42:19\"}', '{\"id\":1,\"slug\":\"d31bae4b2e7e4d209b37a807b9c0ac74\",\"client_no\":\"SBC1001\",\"first_name\":\"Joseph\",\"last_name\":\"Gitau\",\"email\":\"schoolbestms@gmail.com\",\"contact\":\"0720871491\",\"on_email\":0,\"on_phone\":0,\"reg_date\":\"2022-04-20\",\"company_name\":\"Josnytech Solution\",\"postal_address\":\"56785 - 00100, Nairobi\",\"county\":\"Nairobi City\",\"country\":\"Kenya\",\"current_session_id\":\"1\",\"is_active\":0,\"user_id\":6,\"raw_password\":\"90850160\",\"logo\":\"storage\\/clients\\\\58435423.png\",\"created_by\":1,\"created_at\":\"2022-04-19 23:42:19\",\"updated_by\":null,\"updated_at\":\"2022-04-19 23:42:19\"}', 'http://dev.schoolbestms/admin/my-clients/d31bae4b2e7e4d209b37a807b9c0ac74', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', '2022-05-03 13:37:08', NULL),
(11, 'App\\User', 1, 1, 'created', 'App\\Client', '{\"id\":1,\"slug\":\"d31bae4b2e7e4d209b37a807b9c0ac74\",\"client_no\":\"SBC1001\",\"first_name\":\"Joseph\",\"last_name\":\"Gitau\",\"email\":\"schoolbestms@gmail.com\",\"contact\":\"0720871491\",\"on_email\":0,\"on_phone\":0,\"reg_date\":\"2022-04-20\",\"company_name\":\"Josnytech Solution\",\"postal_address\":\"56785 - 00100, Nairobi\",\"county\":\"Nairobi City\",\"country\":\"Kenya\",\"current_session_id\":1,\"is_active\":0,\"user_id\":6,\"raw_password\":\"90850160\",\"logo\":\"storage\\/clients\\\\58435423.png\",\"created_by\":1,\"created_at\":\"2022-04-19 23:42:19\",\"updated_by\":null,\"updated_at\":\"2022-04-19 23:42:19\"}', '{\"id\":1,\"slug\":\"d31bae4b2e7e4d209b37a807b9c0ac74\",\"client_no\":\"SBC1001\",\"first_name\":\"Joseph\",\"last_name\":\"Gitau\",\"email\":\"schoolbestms@gmail.com\",\"contact\":\"0720871491\",\"on_email\":0,\"on_phone\":0,\"reg_date\":\"2022-04-20\",\"company_name\":\"Josnytech Solution\",\"postal_address\":\"56785 - 00100, Nairobi\",\"county\":\"Nairobi City\",\"country\":\"Kenya\",\"current_session_id\":\"1\",\"is_active\":0,\"user_id\":6,\"raw_password\":\"90850160\",\"logo\":\"storage\\/clients\\\\58435423.png\",\"created_by\":1,\"created_at\":\"2022-04-19 23:42:19\",\"updated_by\":null,\"updated_at\":\"2022-04-19 23:42:19\"}', 'http://dev.schoolbestms/admin/my-clients/d31bae4b2e7e4d209b37a807b9c0ac74', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', '2022-05-03 13:43:26', NULL),
(12, 'App\\User', 1, 1, 'created', 'App\\Client', '{\"id\":1,\"slug\":\"d31bae4b2e7e4d209b37a807b9c0ac74\",\"client_no\":\"SBC1001\",\"first_name\":\"Joseph\",\"last_name\":\"Gitau\",\"email\":\"schoolbestms@gmail.com\",\"contact\":\"0720871491\",\"on_email\":0,\"on_phone\":0,\"reg_date\":\"2022-04-20\",\"company_name\":\"Josnytech Solution\",\"postal_address\":\"56785 - 00100, Nairobi\",\"county\":\"Nairobi City\",\"country\":\"Kenya\",\"current_session_id\":1,\"is_active\":0,\"user_id\":6,\"raw_password\":\"90850160\",\"logo\":\"storage\\/clients\\\\58435423.png\",\"created_by\":1,\"created_at\":\"2022-04-19 23:42:19\",\"updated_by\":null,\"updated_at\":\"2022-04-19 23:42:19\"}', '{\"id\":1,\"slug\":\"d31bae4b2e7e4d209b37a807b9c0ac74\",\"client_no\":\"SBC1001\",\"first_name\":\"Joseph\",\"last_name\":\"Gitau\",\"email\":\"schoolbestms@gmail.com\",\"contact\":\"0720871491\",\"on_email\":0,\"on_phone\":0,\"reg_date\":\"2022-04-20\",\"company_name\":\"Josnytech Solution\",\"postal_address\":\"56785 - 00100, Nairobi\",\"county\":\"Nairobi City\",\"country\":\"Kenya\",\"current_session_id\":\"1\",\"is_active\":0,\"user_id\":6,\"raw_password\":\"90850160\",\"logo\":\"storage\\/clients\\\\58435423.png\",\"created_by\":1,\"created_at\":\"2022-04-19 23:42:19\",\"updated_by\":null,\"updated_at\":\"2022-04-19 23:42:19\"}', 'http://dev.schoolbestms/admin/my-clients/d31bae4b2e7e4d209b37a807b9c0ac74', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', '2022-05-03 13:48:12', NULL),
(13, 'App\\User', 1, 1, 'created', 'App\\Client', '{\"id\":1,\"slug\":\"d31bae4b2e7e4d209b37a807b9c0ac74\",\"client_no\":\"SBC1001\",\"first_name\":\"Joseph\",\"last_name\":\"Gitau\",\"email\":\"schoolbestms@gmail.com\",\"contact\":\"0720871491\",\"on_email\":0,\"on_phone\":0,\"reg_date\":\"2022-04-20\",\"company_name\":\"Josnytech Solution\",\"postal_address\":\"56785 - 00100, Nairobi\",\"county\":\"Nairobi City\",\"country\":\"Kenya\",\"current_session_id\":1,\"is_active\":0,\"user_id\":6,\"raw_password\":\"90850160\",\"logo\":\"storage\\/clients\\\\58435423.png\",\"created_by\":1,\"created_at\":\"2022-04-19 23:42:19\",\"updated_by\":null,\"updated_at\":\"2022-04-19 23:42:19\"}', '{\"id\":1,\"slug\":\"d31bae4b2e7e4d209b37a807b9c0ac74\",\"client_no\":\"SBC1001\",\"first_name\":\"Joseph\",\"last_name\":\"Gitau\",\"email\":\"schoolbestms@gmail.com\",\"contact\":\"0720871491\",\"on_email\":0,\"on_phone\":0,\"reg_date\":\"2022-04-20\",\"company_name\":\"Josnytech Solution\",\"postal_address\":\"56785 - 00100, Nairobi\",\"county\":\"Nairobi City\",\"country\":\"Kenya\",\"current_session_id\":\"1\",\"is_active\":0,\"user_id\":6,\"raw_password\":\"90850160\",\"logo\":\"storage\\/clients\\\\58435423.png\",\"created_by\":1,\"created_at\":\"2022-04-19 23:42:19\",\"updated_by\":null,\"updated_at\":\"2022-04-19 23:42:19\"}', 'http://dev.schoolbestms/admin/my-clients/d31bae4b2e7e4d209b37a807b9c0ac74', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', '2022-05-03 13:50:13', NULL),
(14, 'App\\User', 1, 1, 'created', 'App\\Client', '{\"id\":1,\"slug\":\"d31bae4b2e7e4d209b37a807b9c0ac74\",\"client_no\":\"SBC1001\",\"first_name\":\"Joseph\",\"last_name\":\"Gitau\",\"email\":\"schoolbestms@gmail.com\",\"contact\":\"0720871491\",\"on_email\":0,\"on_phone\":0,\"reg_date\":\"2022-04-20\",\"company_name\":\"Josnytech Solution\",\"postal_address\":\"56785 - 00100, Nairobi\",\"county\":\"Nairobi City\",\"country\":\"Kenya\",\"current_session_id\":1,\"is_active\":0,\"user_id\":6,\"raw_password\":\"90850160\",\"logo\":\"storage\\/clients\\\\58435423.png\",\"created_by\":1,\"created_at\":\"2022-04-19 23:42:19\",\"updated_by\":null,\"updated_at\":\"2022-04-19 23:42:19\"}', '{\"id\":1,\"slug\":\"d31bae4b2e7e4d209b37a807b9c0ac74\",\"client_no\":\"SBC1001\",\"first_name\":\"Joseph\",\"last_name\":\"Gitau\",\"email\":\"schoolbestms@gmail.com\",\"contact\":\"0720871491\",\"on_email\":1,\"on_phone\":0,\"reg_date\":\"2022-04-20\",\"company_name\":\"Josnytech Solution\",\"postal_address\":\"56785 - 00100, Nairobi\",\"county\":\"Nairobi City\",\"country\":\"Kenya\",\"current_session_id\":\"1\",\"is_active\":1,\"user_id\":6,\"raw_password\":\"90850160\",\"logo\":\"storage\\/clients\\\\58435423.png\",\"created_by\":1,\"created_at\":\"2022-04-19 23:42:19\",\"updated_by\":null,\"updated_at\":\"2022-05-03 14:00:25\"}', 'http://dev.schoolbestms/admin/my-clients/d31bae4b2e7e4d209b37a807b9c0ac74', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', '2022-05-03 14:00:25', NULL),
(15, 'App\\User', 1, 1, 'created', 'App\\Client', '{\"id\":1,\"slug\":\"d31bae4b2e7e4d209b37a807b9c0ac74\",\"client_no\":\"SBC1001\",\"first_name\":\"Joseph\",\"last_name\":\"Gitau\",\"email\":\"schoolbestms@gmail.com\",\"contact\":\"0720871491\",\"on_email\":1,\"on_phone\":0,\"reg_date\":\"2022-04-20\",\"company_name\":\"Josnytech Solution\",\"postal_address\":\"56785 - 00100, Nairobi\",\"county\":\"Nairobi City\",\"country\":\"Kenya\",\"current_session_id\":1,\"is_active\":1,\"user_id\":6,\"raw_password\":\"90850160\",\"logo\":\"storage\\/clients\\\\58435423.png\",\"created_by\":1,\"created_at\":\"2022-04-19 23:42:19\",\"updated_by\":null,\"updated_at\":\"2022-05-03 14:00:25\"}', '{\"id\":1,\"slug\":\"d31bae4b2e7e4d209b37a807b9c0ac74\",\"client_no\":\"SBC1001\",\"first_name\":\"Joseph\",\"last_name\":\"Gitau\",\"email\":\"schoolbestms@gmail.com\",\"contact\":\"0720871491\",\"on_email\":1,\"on_phone\":1,\"reg_date\":\"2022-04-20\",\"company_name\":\"Josnytech Solution\",\"postal_address\":\"56785 - 00100, Nairobi\",\"county\":\"Nairobi City\",\"country\":\"Kenya\",\"current_session_id\":\"1\",\"is_active\":1,\"user_id\":6,\"raw_password\":\"90850160\",\"logo\":\"storage\\/clients\\\\58435423.png\",\"created_by\":1,\"created_at\":\"2022-04-19 23:42:19\",\"updated_by\":null,\"updated_at\":\"2022-05-03 14:07:03\"}', 'http://dev.schoolbestms/admin/my-clients/d31bae4b2e7e4d209b37a807b9c0ac74', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', '2022-05-03 14:07:03', NULL),
(16, 'App\\User', 1, 1, 'created', 'App\\Client', '{\"id\":1,\"slug\":\"d31bae4b2e7e4d209b37a807b9c0ac74\",\"client_no\":\"SBC1001\",\"first_name\":\"Joseph\",\"last_name\":\"Gitau\",\"email\":\"schoolbestms@gmail.com\",\"contact\":\"0720871491\",\"on_email\":1,\"on_phone\":1,\"reg_date\":\"2022-04-20\",\"company_name\":\"Josnytech Solution\",\"postal_address\":\"56785 - 00100, Nairobi\",\"county\":\"Nairobi City\",\"country\":\"Kenya\",\"current_session_id\":1,\"is_active\":1,\"user_id\":6,\"raw_password\":\"90850160\",\"logo\":\"storage\\/clients\\\\58435423.png\",\"created_by\":1,\"created_at\":\"2022-04-19 23:42:19\",\"updated_by\":null,\"updated_at\":\"2022-05-03 14:07:03\"}', '{\"id\":1,\"slug\":\"d31bae4b2e7e4d209b37a807b9c0ac74\",\"client_no\":\"SBC1001\",\"first_name\":\"Joseph\",\"last_name\":\"Gitau\",\"email\":\"schoolbestms@gmail.com\",\"contact\":\"0720871491\",\"on_email\":1,\"on_phone\":0,\"reg_date\":\"2022-04-20\",\"company_name\":\"Josnytech Solution\",\"postal_address\":\"56785 - 00100, Nairobi\",\"county\":\"Nairobi City\",\"country\":\"Kenya\",\"current_session_id\":\"1\",\"is_active\":1,\"user_id\":6,\"raw_password\":\"90850160\",\"logo\":\"storage\\/clients\\\\58435423.png\",\"created_by\":1,\"created_at\":\"2022-04-19 23:42:19\",\"updated_by\":null,\"updated_at\":\"2022-05-03 14:07:09\"}', 'http://dev.schoolbestms/admin/my-clients/d31bae4b2e7e4d209b37a807b9c0ac74', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', '2022-05-03 14:07:09', NULL),
(17, 'App\\User', 1, 1, 'created', 'App\\Client', '{\"id\":1,\"slug\":\"d31bae4b2e7e4d209b37a807b9c0ac74\",\"client_no\":\"SBC1001\",\"first_name\":\"Joseph\",\"last_name\":\"Gitau\",\"email\":\"schoolbestms@gmail.com\",\"contact\":\"0720871491\",\"on_email\":1,\"on_phone\":0,\"reg_date\":\"2022-04-20\",\"company_name\":\"Josnytech Solution\",\"postal_address\":\"56785 - 00100, Nairobi\",\"county\":\"Nairobi City\",\"country\":\"Kenya\",\"current_session_id\":1,\"is_active\":1,\"user_id\":6,\"raw_password\":\"90850160\",\"logo\":\"storage\\/clients\\\\58435423.png\",\"created_by\":1,\"created_at\":\"2022-04-19 23:42:19\",\"updated_by\":null,\"updated_at\":\"2022-05-03 14:07:09\"}', '{\"id\":1,\"slug\":\"d31bae4b2e7e4d209b37a807b9c0ac74\",\"client_no\":\"SBC1001\",\"first_name\":\"Joseph\",\"last_name\":\"Gitau\",\"email\":\"schoolbestms@gmail.com\",\"contact\":\"0720871491\",\"on_email\":1,\"on_phone\":1,\"reg_date\":\"2022-04-20\",\"company_name\":\"Josnytech Solution\",\"postal_address\":\"56785 - 00100, Nairobi\",\"county\":\"Nairobi City\",\"country\":\"Kenya\",\"current_session_id\":\"1\",\"is_active\":1,\"user_id\":6,\"raw_password\":\"90850160\",\"logo\":\"storage\\/clients\\\\58435423.png\",\"created_by\":1,\"created_at\":\"2022-04-19 23:42:19\",\"updated_by\":null,\"updated_at\":\"2022-05-03 14:07:14\"}', 'http://dev.schoolbestms/admin/my-clients/d31bae4b2e7e4d209b37a807b9c0ac74', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', '2022-05-03 14:07:14', NULL),
(18, 'App\\User', 1, 1, 'created', 'App\\Package', NULL, '{\"slug\":\"6a863ea2-8ef1-4ede-8aa3-56825ad8b195\",\"name\":\"Starter\",\"description\":\"Level 1 Package\",\"monthly\":\"2500\",\"termly\":\"10000\",\"yearly\":\"30000\",\"specification\":\"{\\\"campuses\\\":\\\"1\\\",\\\"students\\\":\\\"250\\\",\\\"storage\\\":\\\"7\\\",\\\"bulksms\\\":\\\"YES\\\",\\\"emailing\\\":null,\\\"transport\\\":\\\"YES\\\",\\\"mpesa\\\":\\\"YES\\\",\\\"bank\\\":\\\"YES\\\",\\\"expenditure\\\":\\\"YES\\\",\\\"staff\\\":\\\"YES\\\",\\\"payroll\\\":\\\"YES\\\",\\\"portal\\\":\\\"YES\\\"}\",\"created_by\":1,\"updated_at\":\"2022-05-03 21:29:37\",\"created_at\":\"2022-05-03 21:29:37\",\"id\":1}', 'http://dev.schoolbestms/admin/schoolbest-packages', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', '2022-05-03 21:29:37', NULL),
(19, 'App\\User', 1, 1, 'created', 'App\\Package', NULL, '{\"slug\":\"2e6365dc-c3d8-43de-a536-bb5976206254\",\"name\":\"Standard\",\"description\":\"Level 2 Package\",\"monthly\":\"3750\",\"termly\":\"15000\",\"yearly\":\"45000\",\"specification\":\"{\\\"campuses\\\":\\\"1\\\",\\\"students\\\":\\\"400\\\",\\\"storage\\\":\\\"15\\\",\\\"bulksms\\\":\\\"YES\\\",\\\"emailing\\\":\\\"YES\\\",\\\"transport\\\":\\\"YES\\\",\\\"mpesa\\\":\\\"YES\\\",\\\"bank\\\":\\\"YES\\\",\\\"expenditure\\\":\\\"YES\\\",\\\"staff\\\":\\\"YES\\\",\\\"payroll\\\":\\\"YES\\\",\\\"portal\\\":\\\"YES\\\"}\",\"created_by\":1,\"updated_at\":\"2022-05-03 22:21:45\",\"created_at\":\"2022-05-03 22:21:45\",\"id\":2}', 'http://dev.schoolbestms/admin/schoolbest-packages', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', '2022-05-03 22:21:45', NULL),
(20, 'App\\User', 1, 1, 'created', 'App\\Package', NULL, '{\"slug\":\"23a258b8-2251-4bdb-888e-6fbcc01a488c\",\"name\":\"Premium\",\"description\":\"Level 3 Package\",\"monthly\":\"5000\",\"termly\":\"20000\",\"yearly\":\"60000\",\"specification\":\"{\\\"campuses\\\":\\\"2\\\",\\\"students\\\":\\\"750\\\",\\\"storage\\\":\\\"20\\\",\\\"bulksms\\\":\\\"YES\\\",\\\"emailing\\\":\\\"YES\\\",\\\"transport\\\":\\\"YES\\\",\\\"mpesa\\\":\\\"YES\\\",\\\"bank\\\":\\\"YES\\\",\\\"expenditure\\\":\\\"YES\\\",\\\"staff\\\":\\\"YES\\\",\\\"payroll\\\":\\\"YES\\\",\\\"portal\\\":\\\"YES\\\"}\",\"created_by\":1,\"updated_at\":\"2022-05-03 22:25:16\",\"created_at\":\"2022-05-03 22:25:16\",\"id\":3}', 'http://dev.schoolbestms/admin/schoolbest-packages', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', '2022-05-03 22:25:16', NULL),
(21, 'App\\User', 1, 1, 'created', 'App\\Package', NULL, '{\"slug\":\"19b6a7f3-20c3-4b48-90a9-ecb5e83d6090\",\"name\":\"Professional\",\"description\":\"Level 4 Package\",\"monthly\":\"7500\",\"termly\":\"30000\",\"yearly\":\"90000\",\"specification\":\"{\\\"campuses\\\":\\\"3\\\",\\\"students\\\":\\\"1500\\\",\\\"storage\\\":\\\"30\\\",\\\"bulksms\\\":\\\"YES\\\",\\\"emailing\\\":\\\"YES\\\",\\\"transport\\\":\\\"YES\\\",\\\"mpesa\\\":\\\"YES\\\",\\\"bank\\\":\\\"YES\\\",\\\"expenditure\\\":\\\"YES\\\",\\\"staff\\\":\\\"YES\\\",\\\"payroll\\\":\\\"YES\\\",\\\"portal\\\":\\\"YES\\\"}\",\"created_by\":1,\"updated_at\":\"2022-05-03 22:28:29\",\"created_at\":\"2022-05-03 22:28:29\",\"id\":4}', 'http://dev.schoolbestms/admin/schoolbest-packages', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', '2022-05-03 22:28:29', NULL),
(22, 'App\\User', 1, 1, 'updated', 'App\\Package', '{\"id\":4,\"slug\":\"19b6a7f3-20c3-4b48-90a9-ecb5e83d6090\",\"name\":\"Professional\",\"description\":\"Level 4 Package\",\"monthly\":7500,\"termly\":30000,\"yearly\":90000,\"specification\":\"{\\\"campuses\\\":\\\"3\\\",\\\"students\\\":\\\"1500\\\",\\\"storage\\\":\\\"30\\\",\\\"bulksms\\\":\\\"YES\\\",\\\"emailing\\\":\\\"YES\\\",\\\"transport\\\":\\\"YES\\\",\\\"mpesa\\\":\\\"YES\\\",\\\"bank\\\":\\\"YES\\\",\\\"expenditure\\\":\\\"YES\\\",\\\"staff\\\":\\\"YES\\\",\\\"payroll\\\":\\\"YES\\\",\\\"portal\\\":\\\"YES\\\"}\",\"created_by\":1,\"created_at\":\"2022-05-03 22:28:29\",\"updated_by\":null,\"updated_at\":\"2022-05-03 22:28:29\"}', '{\"id\":4,\"slug\":\"19b6a7f3-20c3-4b48-90a9-ecb5e83d6090\",\"name\":\"Professional\",\"description\":\"Level 4 Package\",\"monthly\":\"7500\",\"termly\":\"30000\",\"yearly\":\"90000\",\"specification\":\"{\\\"campuses\\\":\\\"3\\\",\\\"students\\\":\\\"1500\\\",\\\"storage\\\":\\\"30\\\",\\\"bulksms\\\":\\\"YES\\\",\\\"emailing\\\":\\\"YES\\\",\\\"transport\\\":\\\"YES\\\",\\\"mpesa\\\":\\\"YES\\\",\\\"bank\\\":\\\"YES\\\",\\\"expenditure\\\":\\\"YES\\\",\\\"staff\\\":\\\"YES\\\",\\\"payroll\\\":\\\"YES\\\",\\\"portal\\\":\\\"NO\\\"}\",\"created_by\":1,\"created_at\":\"2022-05-03 22:28:29\",\"updated_by\":1,\"updated_at\":\"2022-05-03 23:01:07\"}', 'http://dev.schoolbestms/admin/schoolbest-packages/19b6a7f3-20c3-4b48-90a9-ecb5e83d6090', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', '2022-05-03 23:01:07', NULL),
(23, 'App\\User', 1, 1, 'updated', 'App\\Package', '{\"id\":1,\"slug\":\"6a863ea2-8ef1-4ede-8aa3-56825ad8b195\",\"name\":\"Starter\",\"description\":\"Level 1 Package\",\"monthly\":2500,\"termly\":10000,\"yearly\":30000,\"specification\":\"{\\\"campuses\\\":\\\"1\\\",\\\"students\\\":\\\"250\\\",\\\"storage\\\":\\\"7\\\",\\\"bulksms\\\":\\\"YES\\\",\\\"emailing\\\":\\\"YES\\\",\\\"transport\\\":\\\"YES\\\",\\\"mpesa\\\":\\\"YES\\\",\\\"bank\\\":\\\"YES\\\",\\\"expenditure\\\":\\\"YES\\\",\\\"staff\\\":\\\"YES\\\",\\\"payroll\\\":\\\"YES\\\",\\\"portal\\\":\\\"YES\\\"}\",\"created_by\":1,\"created_at\":\"2022-05-03 21:29:37\",\"updated_by\":null,\"updated_at\":\"2022-05-03 21:29:37\"}', '{\"id\":1,\"slug\":\"6a863ea2-8ef1-4ede-8aa3-56825ad8b195\",\"name\":\"Starter\",\"description\":\"Level 1 Package\",\"monthly\":\"2500\",\"termly\":\"10000\",\"yearly\":\"30000\",\"specification\":\"{\\\"campuses\\\":\\\"1\\\",\\\"students\\\":\\\"250\\\",\\\"storage\\\":\\\"7\\\",\\\"bulksms\\\":\\\"YES\\\",\\\"emailing\\\":\\\"YES\\\",\\\"transport\\\":\\\"YES\\\",\\\"mpesa\\\":\\\"YES\\\",\\\"bank\\\":\\\"YES\\\",\\\"expenditure\\\":\\\"YES\\\",\\\"staff\\\":\\\"YES\\\",\\\"payroll\\\":\\\"YES\\\",\\\"portal\\\":\\\"NO\\\"}\",\"created_by\":1,\"created_at\":\"2022-05-03 21:29:37\",\"updated_by\":1,\"updated_at\":\"2022-05-03 23:01:18\"}', 'http://dev.schoolbestms/admin/schoolbest-packages/6a863ea2-8ef1-4ede-8aa3-56825ad8b195', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', '2022-05-03 23:01:18', NULL),
(24, 'App\\User', 1, 1, 'updated', 'App\\Package', '{\"id\":4,\"slug\":\"19b6a7f3-20c3-4b48-90a9-ecb5e83d6090\",\"name\":\"Professional\",\"description\":\"Level 4 Package\",\"monthly\":7500,\"termly\":30000,\"yearly\":90000,\"specification\":\"{\\\"campuses\\\":\\\"3\\\",\\\"students\\\":\\\"1500\\\",\\\"storage\\\":\\\"30\\\",\\\"bulksms\\\":\\\"YES\\\",\\\"emailing\\\":\\\"YES\\\",\\\"transport\\\":\\\"YES\\\",\\\"mpesa\\\":\\\"YES\\\",\\\"bank\\\":\\\"YES\\\",\\\"expenditure\\\":\\\"YES\\\",\\\"staff\\\":\\\"YES\\\",\\\"payroll\\\":\\\"YES\\\",\\\"portal\\\":\\\"NO\\\"}\",\"created_by\":1,\"created_at\":\"2022-05-03 22:28:29\",\"updated_by\":1,\"updated_at\":\"2022-05-03 23:01:07\"}', '{\"id\":4,\"slug\":\"19b6a7f3-20c3-4b48-90a9-ecb5e83d6090\",\"name\":\"Professional\",\"description\":\"Level 4 Package\",\"monthly\":\"7500\",\"termly\":\"30000\",\"yearly\":\"90000\",\"specification\":\"{\\\"campuses\\\":\\\"3\\\",\\\"students\\\":\\\"1500\\\",\\\"storage\\\":\\\"30\\\",\\\"bulksms\\\":\\\"YES\\\",\\\"emailing\\\":\\\"YES\\\",\\\"transport\\\":\\\"YES\\\",\\\"mpesa\\\":\\\"YES\\\",\\\"bank\\\":\\\"YES\\\",\\\"expenditure\\\":\\\"YES\\\",\\\"staff\\\":\\\"YES\\\",\\\"payroll\\\":\\\"YES\\\",\\\"portal\\\":\\\"YES\\\"}\",\"created_by\":1,\"created_at\":\"2022-05-03 22:28:29\",\"updated_by\":1,\"updated_at\":\"2022-05-03 23:01:28\"}', 'http://dev.schoolbestms/admin/schoolbest-packages/19b6a7f3-20c3-4b48-90a9-ecb5e83d6090', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', '2022-05-03 23:01:28', NULL),
(25, 'App\\User', 1, 1, 'updated', 'App\\Package', '{\"id\":2,\"slug\":\"2e6365dc-c3d8-43de-a536-bb5976206254\",\"name\":\"Standard\",\"description\":\"Level 2 Package\",\"monthly\":\"3750\",\"termly\":\"15000\",\"yearly\":\"45000\",\"specification\":\"{\\\"campuses\\\":\\\"1\\\",\\\"students\\\":\\\"400\\\",\\\"storage\\\":\\\"15\\\",\\\"bulksms\\\":\\\"YES\\\",\\\"emailing\\\":\\\"YES\\\",\\\"transport\\\":\\\"YES\\\",\\\"mpesa\\\":\\\"YES\\\",\\\"bank\\\":\\\"YES\\\",\\\"expenditure\\\":\\\"YES\\\",\\\"staff\\\":\\\"YES\\\",\\\"payroll\\\":\\\"YES\\\",\\\"portal\\\":\\\"NO\\\"}\",\"created_by\":1,\"created_at\":\"2022-05-03 22:21:45\",\"updated_by\":1,\"updated_at\":\"2022-05-03 23:02:51\"}', '{\"id\":2,\"slug\":\"2e6365dc-c3d8-43de-a536-bb5976206254\",\"name\":\"Standard\",\"description\":\"Level 2 Package\",\"monthly\":\"3750\",\"termly\":\"15000\",\"yearly\":\"45000\",\"specification\":\"{\\\"campuses\\\":\\\"1\\\",\\\"students\\\":\\\"400\\\",\\\"storage\\\":\\\"15\\\",\\\"bulksms\\\":\\\"YES\\\",\\\"emailing\\\":\\\"YES\\\",\\\"transport\\\":\\\"YES\\\",\\\"mpesa\\\":\\\"YES\\\",\\\"bank\\\":\\\"YES\\\",\\\"expenditure\\\":\\\"YES\\\",\\\"staff\\\":\\\"YES\\\",\\\"payroll\\\":\\\"YES\\\",\\\"portal\\\":\\\"NO\\\"}\",\"created_by\":1,\"created_at\":\"2022-05-03 22:21:45\",\"updated_by\":1,\"updated_at\":\"2022-05-03 23:02:51\"}', 'http://dev.schoolbestms/admin/schoolbest-packages/2e6365dc-c3d8-43de-a536-bb5976206254', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', '2022-05-03 23:02:51', NULL),
(26, 'App\\User', 1, 1, 'created', 'App\\Project', NULL, '{\"slug\":\"2da20d7d783d46e79e987ed7123efe57\",\"client_id\":\"1\",\"package_id\":\"1\",\"current_session_id\":\"1\",\"project_no\":\"SB2201\",\"name\":\"SchoolBest\",\"reg_date\":\"2022-05-04\",\"payment_method\":\"mpesa\",\"billing_cycle\":\"termly\",\"expected\":10000,\"paid\":0,\"balance\":10000,\"next_due_date\":\"2022-05-20\",\"next_invoice_date\":\"2022-05-10\",\"created_by\":1,\"updated_at\":\"2022-05-04 12:31:09\",\"created_at\":\"2022-05-04 12:31:09\",\"id\":1}', 'http://dev.schoolbestms/admin/schoolbest-projects', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', '2022-05-04 12:31:09', NULL),
(27, 'App\\User', 1, 1, 'updated', 'App\\Project', '{\"id\":1,\"slug\":\"2da20d7d783d46e79e987ed7123efe57\",\"client_id\":\"1\",\"package_id\":\"1\",\"current_session_id\":\"1\",\"project_no\":\"SB2201\",\"name\":\"SchoolBest\",\"reg_date\":\"2022-05-04\",\"payment_method\":\"mpesa\",\"billing_cycle\":\"termly\",\"expected\":10000,\"paid\":0,\"balance\":10000,\"next_due_date\":\"2022-05-20\",\"next_invoice_date\":\"2022-05-10\",\"termination_date\":null,\"is_active\":1,\"suspend_reason\":null,\"created_by\":1,\"created_at\":\"2022-05-04 12:31:09\",\"updated_by\":1,\"updated_at\":\"2022-05-04 13:14:40\"}', '{\"id\":1,\"slug\":\"2da20d7d783d46e79e987ed7123efe57\",\"client_id\":\"1\",\"package_id\":\"1\",\"current_session_id\":\"1\",\"project_no\":\"SB2201\",\"name\":\"SchoolBest\",\"reg_date\":\"2022-05-04\",\"payment_method\":\"mpesa\",\"billing_cycle\":\"termly\",\"expected\":10000,\"paid\":0,\"balance\":10000,\"next_due_date\":\"2022-05-20\",\"next_invoice_date\":\"2022-05-10\",\"termination_date\":null,\"is_active\":1,\"suspend_reason\":null,\"created_by\":1,\"created_at\":\"2022-05-04 12:31:09\",\"updated_by\":1,\"updated_at\":\"2022-05-04 13:14:40\"}', 'http://dev.schoolbestms/admin/schoolbest-projects/2da20d7d783d46e79e987ed7123efe57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', '2022-05-04 13:14:40', NULL),
(28, 'App\\User', 1, 1, 'deleted', 'App\\Project', '{\"id\":1,\"slug\":\"2da20d7d783d46e79e987ed7123efe57\",\"client_id\":1,\"package_id\":1,\"current_session_id\":1,\"project_no\":\"SB2201\",\"name\":\"SchoolBest\",\"reg_date\":\"2022-05-04\",\"payment_method\":\"mpesa\",\"billing_cycle\":\"termly\",\"expected\":10000,\"paid\":0,\"balance\":10000,\"next_due_date\":\"2022-05-20\",\"next_invoice_date\":\"2022-05-10\",\"termination_date\":null,\"is_active\":1,\"suspend_reason\":null,\"created_by\":1,\"created_at\":\"2022-05-04 12:31:09\",\"updated_by\":1,\"updated_at\":\"2022-05-04 13:14:40\"}', NULL, 'http://dev.schoolbestms/admin/schoolbest-projects/2da20d7d783d46e79e987ed7123efe57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', '2022-05-04 13:31:34', NULL),
(29, 'App\\User', 1, 1, 'created', 'App\\Project', NULL, '{\"slug\":\"6ad40968fbca439bb950d60892592f57\",\"client_id\":\"1\",\"package_id\":\"1\",\"current_session_id\":\"1\",\"project_no\":\"SB2201\",\"name\":\"SchoolBest\",\"reg_date\":\"2022-05-05\",\"payment_method\":\"mpesa\",\"billing_cycle\":\"termly\",\"expected\":10000,\"paid\":0,\"balance\":10000,\"next_due_date\":\"2022-05-10\",\"next_invoice_date\":\"2022-04-30\",\"created_by\":1,\"updated_at\":\"2022-05-04 21:15:48\",\"created_at\":\"2022-05-04 21:15:48\",\"id\":2}', 'http://dev.schoolbestms/admin/schoolbest-projects', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', '2022-05-04 21:15:48', NULL),
(30, 'App\\User', 1, 1, 'created', 'App\\Project', NULL, '{\"slug\":\"1d571b2fc17148d8b7d8c6851b1f549c\",\"client_id\":\"1\",\"package_id\":\"2\",\"current_session_id\":\"1\",\"project_no\":\"SB2202\",\"name\":\"School\",\"reg_date\":\"2022-05-01\",\"payment_method\":\"mpesa\",\"billing_cycle\":\"termly\",\"expected\":15000,\"paid\":0,\"balance\":15000,\"next_due_date\":\"2022-05-25\",\"next_invoice_date\":\"2022-05-15\",\"created_by\":1,\"updated_at\":\"2022-05-05 09:21:34\",\"created_at\":\"2022-05-05 09:21:34\",\"id\":3}', 'http://dev.schoolbestms/admin/schoolbest-projects', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', '2022-05-05 09:21:34', NULL),
(31, 'App\\User', 1, 1, 'created', 'App\\Project', NULL, '{\"slug\":\"3741d235b10e4c25927d070f1e625435\",\"client_id\":\"1\",\"package_id\":\"3\",\"current_session_id\":\"1\",\"project_no\":\"SB2203\",\"name\":\"My School\",\"reg_date\":\"2022-05-01\",\"payment_method\":\"mpesa\",\"billing_cycle\":\"termly\",\"expected\":20000,\"paid\":0,\"balance\":20000,\"next_due_date\":\"2022-05-30\",\"next_invoice_date\":\"2022-05-20\",\"created_by\":1,\"updated_at\":\"2022-05-05 09:24:23\",\"created_at\":\"2022-05-05 09:24:23\",\"id\":4}', 'http://dev.schoolbestms/admin/schoolbest-projects', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', '2022-05-05 09:24:24', NULL);

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
  `on_email` tinyint(1) NOT NULL DEFAULT 0,
  `on_phone` tinyint(1) NOT NULL DEFAULT 0,
  `reg_date` date NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `county` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'KE',
  `current_session_id` bigint(20) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `raw_password` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `slug`, `client_no`, `first_name`, `last_name`, `email`, `contact`, `on_email`, `on_phone`, `reg_date`, `company_name`, `postal_address`, `county`, `country`, `current_session_id`, `is_active`, `user_id`, `raw_password`, `logo`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'd31bae4b2e7e4d209b37a807b9c0ac74', 'SBC1001', 'Joseph', 'Gitau', 'schoolbestms@gmail.com', '0720871491', 1, 1, '2022-04-20', 'Josnytech Solution', '56785 - 00100, Nairobi', 'Nairobi City', 'KE', 1, 1, 6, '90850160', 'storage/clients\\58435423.png', 1, '2022-04-19 20:42:19', NULL, '2022-05-03 11:07:14');

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
-- Table structure for table `message_outboxes`
--

CREATE TABLE `message_outboxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `externalMessageId` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `messageId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusCode` int(11) DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_at` datetime DEFAULT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `message_outboxes`
--

INSERT INTO `message_outboxes` (`id`, `code`, `client_id`, `externalMessageId`, `messageId`, `message`, `phone`, `statusCode`, `status`, `delivered_at`, `target`, `created_at`, `updated_at`) VALUES
(1, '472fd833a21840e1b5d6e27c5bb3cd11', 1, NULL, '725caa97a189409fbe290b9e720c1668', 'Dear JOSEPH NYUTU GITAU, Your payment of Ksh 5,000 for SCHOOLBEST has been received. You have underpaid by Ksh 5,000. Kindly clear pay the balance. Thank you', '254714730671', NULL, NULL, NULL, 'mpesa', '2022-05-04 18:16:21', '2022-05-04 18:16:21'),
(2, '2d37dd6707c44c84a4ce524fdf4a7a4d', 1, NULL, '9b9499a9ba89449eb943c05c9bf6e7eb', 'Dear JOSEPH GITAU, Your payment of Ksh 500 for SCHOOLBEST has been received. You have underpaid by Ksh 4,500. Kindly clear the balance. Thank you', '254714730671', NULL, NULL, NULL, 'mpesa', '2022-05-04 19:15:04', '2022-05-04 19:15:04'),
(3, '34ef428211dd45cda3ea1334bf80e072', 1, NULL, 'c1c10c2791c74e4bbc51217003c0472e', 'Dear JOSEPH GITAU, Your payment of Ksh 500 for SCHOOLBEST has been received. You have underpaid by Ksh 4,000. Kindly clear the balance. Thank you', '254714730671', NULL, NULL, NULL, 'mpesa', '2022-05-04 19:16:36', '2022-05-04 19:16:36'),
(4, '5aba11d9f2b74874b0724bddd5b1869b', 1, NULL, '705f06c567e442c3af626dab37cc105b', 'Dear JOSEPH GITAU, Your payment of Ksh 600 for SCHOOLBEST has been received. You have underpaid by Ksh 3,400. Kindly clear the balance. Thank you', '254714730671', NULL, NULL, NULL, 'mpesa', '2022-05-04 19:55:25', '2022-05-04 19:55:25'),
(5, '751128a8990c46e8a54e71b7e1d74446', 1, NULL, '8e9d3e904d274c1eb37c3d840064bdb2', 'Dear JOSEPH GITAU, Your payment of Ksh 400 for SCHOOLBEST has been received. You have underpaid by Ksh 3,000. Kindly clear the balance. Thank you', '254714730671', NULL, NULL, NULL, 'mpesa', '2022-05-04 20:00:17', '2022-05-04 20:00:17');

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
(6, '2022_04_09_171441_create_clients_table', 2),
(7, '2022_05_03_144256_create_packages_table', 3),
(9, '2022_05_03_153059_create_projects_table', 4),
(10, '2022_05_04_140204_create_mpesa_payments_table', 5),
(11, '2022_05_04_142041_create_original_messages_table', 5),
(12, '2022_05_04_142142_create_message_outboxes_table', 6),
(13, '2022_05_04_215410_create_notifications_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `mpesa_payments`
--

CREATE TABLE `mpesa_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `current_session_id` bigint(20) UNSIGNED NOT NULL,
  `transTime` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transAmount` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `businessShortCode` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billRefNumber` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoiceNumber` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orgAccountBalance` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thirdPartyTransID` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MSISDN` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstName` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastName` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middleName` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transID` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transactionType` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_used` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mpesa_payments`
--

INSERT INTO `mpesa_payments` (`id`, `project_id`, `current_session_id`, `transTime`, `transAmount`, `businessShortCode`, `billRefNumber`, `invoiceNumber`, `orgAccountBalance`, `thirdPartyTransID`, `MSISDN`, `firstName`, `lastName`, `middleName`, `transID`, `transactionType`, `is_used`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '20220505001257', '5000.00', '4052251', 'SB2201', '', '105700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKJ7HLOGRE', 'Pay Bill', 1, '2022-05-04 18:16:21', '2022-05-04 18:16:21'),
(2, 2, 1, '20220505002257', '500.00', '4052251', 'SB2201', '', '105700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKJ7HLOGRD', 'Pay Bill', 1, '2022-05-04 19:15:04', '2022-05-04 19:15:04'),
(3, 2, 1, '20220505002257', '500.00', '4052251', 'SB2201', '', '105700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKJ7HLOGR3', 'Pay Bill', 1, '2022-05-04 19:16:36', '2022-05-04 19:16:36'),
(4, 2, 1, '20220505015457', '600.00', '4052251', 'SB2201', '', '105700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKJ7HLOGR4', 'Pay Bill', 1, '2022-05-04 19:55:25', '2022-05-04 19:55:25'),
(5, 2, 1, '20220505015657', '400.00', '4052251', 'SB2201', '', '105700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKJ7HLOGRY', 'Pay Bill', 1, '2022-05-04 20:00:17', '2022-05-04 20:00:17');

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

-- --------------------------------------------------------

--
-- Table structure for table `original_messages`
--

CREATE TABLE `original_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'isQueued',
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monthly` int(11) NOT NULL,
  `termly` int(11) NOT NULL,
  `yearly` int(11) NOT NULL,
  `specification` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `slug`, `name`, `description`, `monthly`, `termly`, `yearly`, `specification`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, '6a863ea2-8ef1-4ede-8aa3-56825ad8b195', 'Starter', 'Level 1 Package', 2500, 10000, 30000, '{\"campuses\":\"1\",\"students\":\"250\",\"storage\":\"7\",\"bulksms\":\"YES\",\"emailing\":\"YES\",\"transport\":\"YES\",\"mpesa\":\"YES\",\"bank\":\"YES\",\"expenditure\":\"YES\",\"staff\":\"YES\",\"payroll\":\"YES\",\"portal\":\"NO\"}', 1, '2022-05-03 18:29:37', 1, '2022-05-03 20:01:18'),
(2, '2e6365dc-c3d8-43de-a536-bb5976206254', 'Standard', 'Level 2 Package', 3750, 15000, 45000, '{\"campuses\":\"1\",\"students\":\"400\",\"storage\":\"15\",\"bulksms\":\"YES\",\"emailing\":\"YES\",\"transport\":\"YES\",\"mpesa\":\"YES\",\"bank\":\"YES\",\"expenditure\":\"YES\",\"staff\":\"YES\",\"payroll\":\"YES\",\"portal\":\"NO\"}', 1, '2022-05-03 19:21:45', 1, '2022-05-03 20:02:51'),
(3, '23a258b8-2251-4bdb-888e-6fbcc01a488c', 'Premium', 'Level 3 Package', 5000, 20000, 60000, '{\"campuses\":\"2\",\"students\":\"750\",\"storage\":\"20\",\"bulksms\":\"YES\",\"emailing\":\"YES\",\"transport\":\"YES\",\"mpesa\":\"YES\",\"bank\":\"YES\",\"expenditure\":\"YES\",\"staff\":\"YES\",\"payroll\":\"YES\",\"portal\":\"YES\"}', 1, '2022-05-03 19:25:16', NULL, '2022-05-03 19:25:16'),
(4, '19b6a7f3-20c3-4b48-90a9-ecb5e83d6090', 'Professional', 'Level 4 Package', 7500, 30000, 90000, '{\"campuses\":\"3\",\"students\":\"1500\",\"storage\":\"30\",\"bulksms\":\"YES\",\"emailing\":\"YES\",\"transport\":\"YES\",\"mpesa\":\"YES\",\"bank\":\"YES\",\"expenditure\":\"YES\",\"staff\":\"YES\",\"payroll\":\"YES\",\"portal\":\"YES\"}', 1, '2022-05-03 19:28:29', 1, '2022-05-03 20:01:28');

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
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `current_session_id` bigint(20) UNSIGNED NOT NULL,
  `project_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_date` date NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_cycle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expected` int(11) NOT NULL,
  `paid` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `next_due_date` date NOT NULL,
  `next_invoice_date` date NOT NULL,
  `termination_date` date DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `suspend_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `slug`, `client_id`, `package_id`, `current_session_id`, `project_no`, `name`, `reg_date`, `payment_method`, `billing_cycle`, `expected`, `paid`, `balance`, `next_due_date`, `next_invoice_date`, `termination_date`, `is_active`, `suspend_reason`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(2, '6ad40968fbca439bb950d60892592f57', 1, 1, 1, 'SB2201', 'SchoolBest', '2022-05-05', 'mpesa', 'termly', 10000, 7000, 3000, '2022-05-10', '2022-04-30', NULL, 1, NULL, 1, '2022-05-04 18:15:48', NULL, '2022-05-04 20:00:17'),
(3, '1d571b2fc17148d8b7d8c6851b1f549c', 1, 2, 1, 'SB2202', 'School', '2022-05-01', 'mpesa', 'termly', 15000, 0, 15000, '2022-05-25', '2022-05-15', NULL, 1, NULL, 1, '2022-05-05 06:21:34', NULL, '2022-05-05 06:21:34'),
(4, '3741d235b10e4c25927d070f1e625435', 1, 3, 1, 'SB2203', 'My School', '2022-05-01', 'mpesa', 'termly', 20000, 0, 20000, '2022-05-30', '2022-05-20', NULL, 1, NULL, 1, '2022-05-05 06:24:23', NULL, '2022-05-05 06:24:23');

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
-- Indexes for table `message_outboxes`
--
ALTER TABLE `message_outboxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_outboxes_client_id_foreign` (`client_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mpesa_payments`
--
ALTER TABLE `mpesa_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mpesa_payments_project_id_foreign` (`project_id`),
  ADD KEY `mpesa_payments_current_session_id_foreign` (`current_session_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `original_messages`
--
ALTER TABLE `original_messages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `original_messages_slug_unique` (`slug`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `packages_slug_unique` (`slug`),
  ADD UNIQUE KEY `packages_name_unique` (`name`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `projects_slug_unique` (`slug`),
  ADD UNIQUE KEY `projects_project_no_unique` (`project_no`),
  ADD KEY `projects_client_id_foreign` (`client_id`),
  ADD KEY `projects_package_id_foreign` (`package_id`),
  ADD KEY `projects_current_session_id_foreign` (`current_session_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

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
-- AUTO_INCREMENT for table `message_outboxes`
--
ALTER TABLE `message_outboxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `mpesa_payments`
--
ALTER TABLE `mpesa_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `original_messages`
--
ALTER TABLE `original_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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

--
-- Constraints for table `message_outboxes`
--
ALTER TABLE `message_outboxes`
  ADD CONSTRAINT `message_outboxes_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `mpesa_payments`
--
ALTER TABLE `mpesa_payments`
  ADD CONSTRAINT `mpesa_payments_current_session_id_foreign` FOREIGN KEY (`current_session_id`) REFERENCES `current_sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `mpesa_payments_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `projects_current_session_id_foreign` FOREIGN KEY (`current_session_id`) REFERENCES `current_sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `projects_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
