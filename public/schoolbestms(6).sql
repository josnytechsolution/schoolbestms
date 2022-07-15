-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2022 at 02:51 AM
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
(1, 'App\\User', 1, 1, 'created', 'App\\User', NULL, '{\"slug\":\"14fe9f396b8744cbb61325596f5711ed\",\"name\":\"Nyutu Gitau\",\"email\":\"nyutujoseph115@gmail.com\",\"contact\":\"0714730671\",\"is_client\":true,\"created_by\":1,\"updated_at\":\"2022-05-05 13:37:14\",\"created_at\":\"2022-05-05 13:37:14\",\"id\":2}', 'https://account.schoolbest.net/admin/my-clients', '102.220.168.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', '2022-05-05 10:37:14', NULL),
(2, 'App\\User', 1, 1, 'created', 'App\\Client', NULL, '{\"slug\":\"6f94605207d64101af4fb073b538fc83\",\"client_no\":\"SBC1001\",\"first_name\":\"Nyutu\",\"last_name\":\"Gitau\",\"email\":\"nyutujoseph115@gmail.com\",\"contact\":\"0714730671\",\"reg_date\":\"2022-05-01\",\"company_name\":\"Josnytech Solution\",\"postal_address\":\"P. O. Box 56785-00100, Nairobi\",\"county\":\"Nairobi City\",\"country\":\"Kenya\",\"current_session_id\":\"1\",\"user_id\":2,\"raw_password\":97645066,\"logo\":{},\"created_by\":1,\"updated_at\":\"2022-05-05 13:37:14\",\"created_at\":\"2022-05-05 13:37:14\",\"id\":1}', 'https://account.schoolbest.net/admin/my-clients', '102.220.168.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', '2022-05-05 10:37:14', NULL),
(3, 'App\\User', 1, 1, 'created', 'App\\Project', NULL, '{\"slug\":\"b2895137d5534cfab9744dd26973ed4b\",\"client_id\":\"1\",\"package_id\":\"1\",\"current_session_id\":\"1\",\"project_no\":\"SB2201\",\"name\":\"Josnytech SchoolBEST\",\"reg_date\":\"2022-05-01\",\"payment_method\":\"mpesa\",\"billing_cycle\":\"termly\",\"expected\":10000,\"paid\":0,\"balance\":10000,\"next_due_date\":\"2022-05-20\",\"next_invoice_date\":\"2022-05-10\",\"created_by\":1,\"updated_at\":\"2022-05-05 13:38:58\",\"created_at\":\"2022-05-05 13:38:58\",\"id\":1}', 'https://account.schoolbest.net/admin/schoolbest-projects', '102.220.168.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', '2022-05-05 10:38:58', NULL),
(4, 'App\\User', 1, 1, 'created', 'App\\User', NULL, '{\"slug\":\"c4337a21f9f7404bb2143fff3ad1712a\",\"name\":\"Carol Wambui\",\"email\":\"carol.barneys@gmail.com\",\"contact\":\"0722470091\",\"is_client\":true,\"created_by\":1,\"updated_at\":\"2022-05-05 14:10:03\",\"created_at\":\"2022-05-05 14:10:03\",\"id\":3}', 'https://account.schoolbest.net/admin/my-clients', '102.220.168.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', '2022-05-05 11:10:03', NULL),
(5, 'App\\User', 1, 1, 'created', 'App\\User', NULL, '{\"slug\":\"96e56beb6cbf4dbdb9465442552c96b7\",\"name\":\"Carol Wambui\",\"email\":\"carol.barneys@gmail.com\",\"contact\":\"0722470091\",\"is_client\":true,\"created_by\":1,\"updated_at\":\"2022-05-05 14:12:09\",\"created_at\":\"2022-05-05 14:12:09\",\"id\":6}', 'https://account.schoolbest.net/admin/my-clients', '102.220.168.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', '2022-05-05 11:12:09', NULL),
(6, 'App\\User', 1, 1, 'created', 'App\\User', NULL, '{\"slug\":\"5849ee685898484a848e944219a8c05c\",\"name\":\"Carol Wambui\",\"email\":\"carol.barneys@gmail.com\",\"contact\":\"0722470091\",\"is_client\":true,\"created_by\":1,\"updated_at\":\"2022-05-05 14:15:37\",\"created_at\":\"2022-05-05 14:15:37\",\"id\":7}', 'https://account.schoolbest.net/admin/my-clients', '102.220.168.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', '2022-05-05 11:15:37', NULL),
(7, 'App\\User', 1, 1, 'created', 'App\\User', NULL, '{\"slug\":\"786f1097e05e4b61a5acdab32ba057d8\",\"name\":\"Carol Wambui\",\"email\":\"carol.barneys@gmail.com\",\"contact\":\"0722470091\",\"is_client\":true,\"created_by\":1,\"updated_at\":\"2022-05-05 14:19:48\",\"created_at\":\"2022-05-05 14:19:48\",\"id\":8}', 'https://account.schoolbest.net/admin/my-clients', '102.220.168.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', '2022-05-05 11:19:48', NULL),
(8, 'App\\User', 1, 1, 'created', 'App\\User', NULL, '{\"slug\":\"949f21a3d8804be8a7a5668ec97acb2a\",\"name\":\"Carol Wambui\",\"email\":\"carol.barneys@gmail.com\",\"contact\":\"0722470091\",\"is_client\":true,\"created_by\":1,\"updated_at\":\"2022-05-05 14:22:35\",\"created_at\":\"2022-05-05 14:22:35\",\"id\":9}', 'https://account.schoolbest.net/admin/my-clients', '102.220.168.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', '2022-05-05 11:22:35', NULL),
(9, 'App\\User', 1, 1, 'created', 'App\\User', NULL, '{\"slug\":\"138a2fbbd1ce47a3b01e610f0a8aa8ce\",\"name\":\"Carol Wambui\",\"email\":\"carol.barneys@gmail.com\",\"contact\":\"0722470091\",\"is_client\":true,\"created_by\":1,\"updated_at\":\"2022-05-05 14:24:40\",\"created_at\":\"2022-05-05 14:24:40\",\"id\":10}', 'https://account.schoolbest.net/admin/my-clients', '102.220.168.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', '2022-05-05 11:24:40', NULL),
(10, 'App\\User', 1, 1, 'created', 'App\\Client', NULL, '{\"slug\":\"47131f71107d49ff9d0edc9a209216ae\",\"client_no\":\"SBC1002\",\"first_name\":\"Carol\",\"last_name\":\"Wambui\",\"email\":\"carol.barneys@gmail.com\",\"contact\":\"0722470091\",\"reg_date\":\"2021-10-31\",\"on_email\":0,\"on_phone\":0,\"company_name\":\"Barneys House School\",\"postal_address\":\"P. O. Box 7743-00508, Nairobi\",\"county\":\"Machakos\",\"country\":\"Kenya\",\"current_session_id\":\"1\",\"user_id\":10,\"raw_password\":87526264,\"logo\":{},\"created_by\":1,\"updated_at\":\"2022-05-05 14:24:40\",\"created_at\":\"2022-05-05 14:24:40\",\"id\":2}', 'https://account.schoolbest.net/admin/my-clients', '102.220.168.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', '2022-05-05 11:24:40', NULL),
(11, 'App\\User', 1, 1, 'created', 'App\\User', NULL, '{\"slug\":\"322d803e343f4df7a1f7b6baff1f38e8\",\"name\":\"Marsden Awori\",\"email\":\"marsden.k.awori@gmail.com\",\"contact\":\"0721639817\",\"is_client\":true,\"created_by\":1,\"updated_at\":\"2022-05-05 14:28:54\",\"created_at\":\"2022-05-05 14:28:54\",\"id\":11}', 'https://account.schoolbest.net/admin/my-clients', '102.220.168.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', '2022-05-05 11:28:54', NULL),
(12, 'App\\User', 1, 1, 'created', 'App\\Client', NULL, '{\"slug\":\"1198266998f643d99384207281ce2e93\",\"client_no\":\"SBC1003\",\"first_name\":\"Marsden\",\"last_name\":\"Awori\",\"email\":\"marsden.k.awori@gmail.com\",\"contact\":\"0721639817\",\"reg_date\":\"2022-04-25\",\"on_email\":0,\"on_phone\":0,\"company_name\":\"Rayzon Schools\",\"postal_address\":\"Milimani, Kitale, 30200\",\"county\":\"Trans Nzoia\",\"country\":\"Kenya\",\"current_session_id\":\"1\",\"user_id\":11,\"raw_password\":90122255,\"logo\":{},\"created_by\":1,\"updated_at\":\"2022-05-05 14:28:54\",\"created_at\":\"2022-05-05 14:28:54\",\"id\":3}', 'https://account.schoolbest.net/admin/my-clients', '102.220.168.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', '2022-05-05 11:28:54', NULL),
(13, 'App\\User', 1, 1, 'created', 'App\\User', NULL, '{\"slug\":\"786dc040bf864c3a95d1ec625828a414\",\"name\":\"Catherine Kabiro\",\"email\":\"mabetwinkling@yahoo.com\",\"contact\":\"0722801302\",\"is_client\":true,\"created_by\":1,\"updated_at\":\"2022-05-05 14:34:09\",\"created_at\":\"2022-05-05 14:34:09\",\"id\":12}', 'https://account.schoolbest.net/admin/my-clients', '102.220.168.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', '2022-05-05 11:34:09', NULL),
(14, 'App\\User', 1, 1, 'created', 'App\\Client', NULL, '{\"slug\":\"c83cda59ceae4ba19692c7767cc73618\",\"client_no\":\"SBC1004\",\"first_name\":\"Catherine\",\"last_name\":\"Kabiro\",\"email\":\"mabetwinkling@yahoo.com\",\"contact\":\"0722801302\",\"reg_date\":\"2022-01-10\",\"on_email\":0,\"on_phone\":0,\"company_name\":\"Mabe Twinkling Stars School\",\"postal_address\":\"P. O. Box 61147-00200 Nairobi\",\"county\":\"Nairobi City\",\"country\":\"Kenya\",\"current_session_id\":\"1\",\"user_id\":12,\"raw_password\":17340874,\"logo\":{},\"created_by\":1,\"updated_at\":\"2022-05-05 14:34:09\",\"created_at\":\"2022-05-05 14:34:09\",\"id\":4}', 'https://account.schoolbest.net/admin/my-clients', '102.220.168.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', '2022-05-05 11:34:09', NULL),
(15, 'App\\User', 1, 1, 'created', 'App\\Project', NULL, '{\"slug\":\"061749778233486cb1b8c43b95b9ff3e\",\"client_id\":\"2\",\"package_id\":\"1\",\"current_session_id\":\"1\",\"project_no\":\"SB2202\",\"name\":\"SBBARNEYS\",\"reg_date\":\"2021-10-31\",\"payment_method\":\"mpesa\",\"billing_cycle\":\"termly\",\"expected\":10000,\"paid\":0,\"balance\":10000,\"next_due_date\":\"2022-05-10\",\"next_invoice_date\":\"2022-04-30\",\"created_by\":1,\"updated_at\":\"2022-05-05 14:37:08\",\"created_at\":\"2022-05-05 14:37:08\",\"id\":2}', 'https://account.schoolbest.net/admin/schoolbest-projects', '102.220.168.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', '2022-05-05 11:37:08', NULL),
(16, 'App\\User', 1, 1, 'created', 'App\\Project', NULL, '{\"slug\":\"5c684bb70282409aa400c6c620e30e22\",\"client_id\":\"4\",\"package_id\":\"3\",\"current_session_id\":\"1\",\"project_no\":\"SB2203\",\"name\":\"SBMABE\",\"reg_date\":\"2022-01-10\",\"payment_method\":\"mpesa\",\"billing_cycle\":\"termly\",\"expected\":20000,\"paid\":0,\"balance\":20000,\"next_due_date\":\"2022-05-10\",\"next_invoice_date\":\"2022-04-30\",\"created_by\":1,\"updated_at\":\"2022-05-05 14:38:19\",\"created_at\":\"2022-05-05 14:38:19\",\"id\":3}', 'https://account.schoolbest.net/admin/schoolbest-projects', '102.220.168.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', '2022-05-05 11:38:19', NULL),
(17, 'App\\User', 1, 1, 'created', 'App\\Project', NULL, '{\"slug\":\"e65227b8849e441b9f026b121cddc0be\",\"client_id\":\"3\",\"package_id\":\"1\",\"current_session_id\":\"1\",\"project_no\":\"SB2204\",\"name\":\"SBRAYZON\",\"reg_date\":\"2022-04-25\",\"payment_method\":\"mpesa\",\"billing_cycle\":\"termly\",\"expected\":10000,\"paid\":0,\"balance\":10000,\"next_due_date\":\"2022-05-10\",\"next_invoice_date\":\"2022-04-30\",\"created_by\":1,\"updated_at\":\"2022-05-05 14:39:29\",\"created_at\":\"2022-05-05 14:39:29\",\"id\":4}', 'https://account.schoolbest.net/admin/schoolbest-projects', '102.220.168.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', '2022-05-05 11:39:29', NULL),
(18, 'App\\User', 1, 1, 'updated', 'App\\Package', '{\"id\":1,\"slug\":\"6a863ea2-8ef1-4ede-8aa3-56825ad8b195\",\"name\":\"Starter\",\"description\":\"Level 1 Package\",\"monthly\":\"2500\",\"termly\":\"10000\",\"yearly\":\"30000\",\"max_students\":\"250\",\"specification\":\"{\\\"campuses\\\":\\\"1\\\",\\\"students\\\":\\\"250\\\",\\\"storage\\\":\\\"7\\\",\\\"bulksms\\\":\\\"YES\\\",\\\"emailing\\\":\\\"YES\\\",\\\"transport\\\":\\\"YES\\\",\\\"mpesa\\\":\\\"YES\\\",\\\"bank\\\":\\\"YES\\\",\\\"expenditure\\\":\\\"YES\\\",\\\"staff\\\":\\\"YES\\\",\\\"payroll\\\":\\\"YES\\\",\\\"portal\\\":\\\"NO\\\"}\",\"created_by\":1,\"created_at\":\"2022-05-03 21:29:37\",\"updated_by\":1,\"updated_at\":\"2022-07-13 21:41:01\"}', '{\"id\":1,\"slug\":\"6a863ea2-8ef1-4ede-8aa3-56825ad8b195\",\"name\":\"Starter\",\"description\":\"Level 1 Package\",\"monthly\":\"2500\",\"termly\":\"10000\",\"yearly\":\"30000\",\"max_students\":\"250\",\"specification\":\"{\\\"campuses\\\":\\\"1\\\",\\\"students\\\":\\\"250\\\",\\\"storage\\\":\\\"7\\\",\\\"bulksms\\\":\\\"YES\\\",\\\"emailing\\\":\\\"YES\\\",\\\"transport\\\":\\\"YES\\\",\\\"mpesa\\\":\\\"YES\\\",\\\"bank\\\":\\\"YES\\\",\\\"expenditure\\\":\\\"YES\\\",\\\"staff\\\":\\\"YES\\\",\\\"payroll\\\":\\\"YES\\\",\\\"portal\\\":\\\"NO\\\"}\",\"created_by\":1,\"created_at\":\"2022-05-03 21:29:37\",\"updated_by\":1,\"updated_at\":\"2022-07-13 21:41:01\"}', 'http://dev.schoolbestms/admin/schoolbest-packages/6a863ea2-8ef1-4ede-8aa3-56825ad8b195', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', '2022-07-13 21:41:01', NULL),
(19, 'App\\User', 1, 1, 'updated', 'App\\Package', '{\"id\":2,\"slug\":\"2e6365dc-c3d8-43de-a536-bb5976206254\",\"name\":\"Standard\",\"description\":\"Level 2 Package\",\"monthly\":\"3750\",\"termly\":\"15000\",\"yearly\":\"45000\",\"max_students\":\"400\",\"specification\":\"{\\\"campuses\\\":\\\"1\\\",\\\"students\\\":\\\"400\\\",\\\"storage\\\":\\\"15\\\",\\\"bulksms\\\":\\\"YES\\\",\\\"emailing\\\":\\\"YES\\\",\\\"transport\\\":\\\"YES\\\",\\\"mpesa\\\":\\\"YES\\\",\\\"bank\\\":\\\"YES\\\",\\\"expenditure\\\":\\\"YES\\\",\\\"staff\\\":\\\"YES\\\",\\\"payroll\\\":\\\"YES\\\",\\\"portal\\\":\\\"NO\\\"}\",\"created_by\":1,\"created_at\":\"2022-05-03 22:21:45\",\"updated_by\":1,\"updated_at\":\"2022-07-13 21:41:18\"}', '{\"id\":2,\"slug\":\"2e6365dc-c3d8-43de-a536-bb5976206254\",\"name\":\"Standard\",\"description\":\"Level 2 Package\",\"monthly\":\"3750\",\"termly\":\"15000\",\"yearly\":\"45000\",\"max_students\":\"400\",\"specification\":\"{\\\"campuses\\\":\\\"1\\\",\\\"students\\\":\\\"400\\\",\\\"storage\\\":\\\"15\\\",\\\"bulksms\\\":\\\"YES\\\",\\\"emailing\\\":\\\"YES\\\",\\\"transport\\\":\\\"YES\\\",\\\"mpesa\\\":\\\"YES\\\",\\\"bank\\\":\\\"YES\\\",\\\"expenditure\\\":\\\"YES\\\",\\\"staff\\\":\\\"YES\\\",\\\"payroll\\\":\\\"YES\\\",\\\"portal\\\":\\\"NO\\\"}\",\"created_by\":1,\"created_at\":\"2022-05-03 22:21:45\",\"updated_by\":1,\"updated_at\":\"2022-07-13 21:41:18\"}', 'http://dev.schoolbestms/admin/schoolbest-packages/2e6365dc-c3d8-43de-a536-bb5976206254', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', '2022-07-13 21:41:18', NULL),
(20, 'App\\User', 1, 1, 'updated', 'App\\Package', '{\"id\":3,\"slug\":\"23a258b8-2251-4bdb-888e-6fbcc01a488c\",\"name\":\"Premium\",\"description\":\"Level 3 Package\",\"monthly\":\"5000\",\"termly\":\"20000\",\"yearly\":\"60000\",\"max_students\":\"750\",\"specification\":\"{\\\"campuses\\\":\\\"2\\\",\\\"students\\\":\\\"750\\\",\\\"storage\\\":\\\"20\\\",\\\"bulksms\\\":\\\"YES\\\",\\\"emailing\\\":\\\"YES\\\",\\\"transport\\\":\\\"YES\\\",\\\"mpesa\\\":\\\"YES\\\",\\\"bank\\\":\\\"YES\\\",\\\"expenditure\\\":\\\"YES\\\",\\\"staff\\\":\\\"YES\\\",\\\"payroll\\\":\\\"YES\\\",\\\"portal\\\":\\\"YES\\\"}\",\"created_by\":1,\"created_at\":\"2022-05-03 22:25:16\",\"updated_by\":1,\"updated_at\":\"2022-07-13 21:41:24\"}', '{\"id\":3,\"slug\":\"23a258b8-2251-4bdb-888e-6fbcc01a488c\",\"name\":\"Premium\",\"description\":\"Level 3 Package\",\"monthly\":\"5000\",\"termly\":\"20000\",\"yearly\":\"60000\",\"max_students\":\"750\",\"specification\":\"{\\\"campuses\\\":\\\"2\\\",\\\"students\\\":\\\"750\\\",\\\"storage\\\":\\\"20\\\",\\\"bulksms\\\":\\\"YES\\\",\\\"emailing\\\":\\\"YES\\\",\\\"transport\\\":\\\"YES\\\",\\\"mpesa\\\":\\\"YES\\\",\\\"bank\\\":\\\"YES\\\",\\\"expenditure\\\":\\\"YES\\\",\\\"staff\\\":\\\"YES\\\",\\\"payroll\\\":\\\"YES\\\",\\\"portal\\\":\\\"YES\\\"}\",\"created_by\":1,\"created_at\":\"2022-05-03 22:25:16\",\"updated_by\":1,\"updated_at\":\"2022-07-13 21:41:24\"}', 'http://dev.schoolbestms/admin/schoolbest-packages/23a258b8-2251-4bdb-888e-6fbcc01a488c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', '2022-07-13 21:41:24', NULL),
(21, 'App\\User', 1, 1, 'updated', 'App\\Package', '{\"id\":4,\"slug\":\"19b6a7f3-20c3-4b48-90a9-ecb5e83d6090\",\"name\":\"Professional\",\"description\":\"Level 4 Package\",\"monthly\":\"7500\",\"termly\":\"30000\",\"yearly\":\"90000\",\"max_students\":\"1500\",\"specification\":\"{\\\"campuses\\\":\\\"3\\\",\\\"students\\\":\\\"1500\\\",\\\"storage\\\":\\\"30\\\",\\\"bulksms\\\":\\\"YES\\\",\\\"emailing\\\":\\\"YES\\\",\\\"transport\\\":\\\"YES\\\",\\\"mpesa\\\":\\\"YES\\\",\\\"bank\\\":\\\"YES\\\",\\\"expenditure\\\":\\\"YES\\\",\\\"staff\\\":\\\"YES\\\",\\\"payroll\\\":\\\"YES\\\",\\\"portal\\\":\\\"YES\\\"}\",\"created_by\":1,\"created_at\":\"2022-05-03 22:28:29\",\"updated_by\":1,\"updated_at\":\"2022-07-13 21:41:29\"}', '{\"id\":4,\"slug\":\"19b6a7f3-20c3-4b48-90a9-ecb5e83d6090\",\"name\":\"Professional\",\"description\":\"Level 4 Package\",\"monthly\":\"7500\",\"termly\":\"30000\",\"yearly\":\"90000\",\"max_students\":\"1500\",\"specification\":\"{\\\"campuses\\\":\\\"3\\\",\\\"students\\\":\\\"1500\\\",\\\"storage\\\":\\\"30\\\",\\\"bulksms\\\":\\\"YES\\\",\\\"emailing\\\":\\\"YES\\\",\\\"transport\\\":\\\"YES\\\",\\\"mpesa\\\":\\\"YES\\\",\\\"bank\\\":\\\"YES\\\",\\\"expenditure\\\":\\\"YES\\\",\\\"staff\\\":\\\"YES\\\",\\\"payroll\\\":\\\"YES\\\",\\\"portal\\\":\\\"YES\\\"}\",\"created_by\":1,\"created_at\":\"2022-05-03 22:28:29\",\"updated_by\":1,\"updated_at\":\"2022-07-13 21:41:29\"}', 'http://dev.schoolbestms/admin/schoolbest-packages/19b6a7f3-20c3-4b48-90a9-ecb5e83d6090', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', '2022-07-13 21:41:29', NULL);

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
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
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

INSERT INTO `clients` (`id`, `slug`, `client_no`, `first_name`, `last_name`, `email`, `contact`, `on_email`, `on_phone`, `reg_date`, `company_name`, `postal_address`, `county`, `country`, `current_session_id`, `is_active`, `user_id`, `raw_password`, `logo`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, '6f94605207d64101af4fb073b538fc83', 'SBC1001', 'Nyutu', 'Gitau', 'nyutujoseph115@gmail.com', '0714730671', 0, 0, '2022-05-01', 'Josnytech Solution', 'P. O. Box 56785-00100, Nairobi', 'Nairobi City', 'KE', 1, 1, 2, '97645066', 'storage/clients/1757148677.png', 1, '2022-05-05 13:37:14', NULL, '2022-05-05 13:37:14'),
(2, '47131f71107d49ff9d0edc9a209216ae', 'SBC1002', 'Carol', 'Wambui', 'carol.barneys@gmail.com', '0722470091', 0, 0, '2021-10-31', 'Barneys House School', 'P. O. Box 7743-00508, Nairobi', 'Machakos', 'KE', 1, 1, 10, '87526264', 'storage/clients/636623614.png', 1, '2022-05-05 14:24:40', NULL, '2022-05-05 14:24:40'),
(3, '1198266998f643d99384207281ce2e93', 'SBC1003', 'Marsden', 'Awori', 'marsden.k.awori@gmail.com', '0721639817', 0, 0, '2022-04-25', 'Rayzon Schools', 'Milimani, Kitale, 30200', 'Trans Nzoia', 'KE', 1, 1, 11, '90122255', 'storage/clients/346501935.jpg', 1, '2022-05-05 14:28:54', NULL, '2022-05-05 14:28:54'),
(4, 'c83cda59ceae4ba19692c7767cc73618', 'SBC1004', 'Catherine', 'Kabiro', 'mabetwinkling@yahoo.com', '0722801302', 0, 0, '2022-01-10', 'Mabe Twinkling Stars School', 'P. O. Box 61147-00200 Nairobi', 'Nairobi City', 'KE', 1, 1, 12, '17340874', 'storage/clients/1417484408.png', 1, '2022-05-05 14:34:09', NULL, '2022-05-05 14:34:09');

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

--
-- Dumping data for table `company_profiles`
--

INSERT INTO `company_profiles` (`id`, `name`, `motto`, `postal`, `physical`, `contact1`, `contact2`, `email1`, `email2`, `website`, `logo`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Josnytech Solution', '\"Doing Things For You Only We Can\"', 'P.O. Box 56785-00100, Nairobi', NULL, '0720871499', '0714730671', 'info@schoolbest.co.ke', 'info@josnytechsolution.com', 'www.schoolbest.co.ke', 'storage/profile/josnytech-logo.png', 1, '2022-07-14 11:12:54', NULL, NULL);

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
  `start_date` date DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `current_sessions`
--

INSERT INTO `current_sessions` (`id`, `slug`, `name`, `term`, `year`, `status`, `start_date`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'term-1-2022', 'TERM 1 2022', 'TERM 1', 2022, 'Active', '2022-04-25', 1, '2022-04-08 07:31:30', NULL, '2022-04-08 07:31:30'),
(2, 'term-2-2022', 'TERM 2 2022', 'TERM 2', 2022, 'Future', '2022-07-11', 1, '2022-04-08 07:39:27', NULL, '2022-04-08 07:39:27'),
(3, 'term-3-2022', 'TERM 3 2022', 'TERM 3', 2022, 'Future', '2022-09-26', 1, '2022-04-09 11:38:19', NULL, '2022-04-09 11:38:19');

-- --------------------------------------------------------

--
-- Table structure for table `message_outboxes`
--

CREATE TABLE `message_outboxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `mpesa_payment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `externalMessageId` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `messageId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusCode` int(11) DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_at` datetime DEFAULT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `message_outboxes`
--

INSERT INTO `message_outboxes` (`id`, `code`, `client_id`, `mpesa_payment_id`, `externalMessageId`, `messageId`, `message`, `phone`, `statusCode`, `status`, `delivered_at`, `target`, `created_at`, `updated_at`) VALUES
(1, 'a7e923c60a2044aea1b27a5858a989cb', 1, NULL, NULL, '6577e50700694875a20d9fc60f183112', 'Dear JOSEPH GITAU, Your payment of Ksh 50 for SCHOOLBEST has been received. You have underpaid by Ksh 9,950. Kindly clear the balance. Thank you', '254714730671', NULL, NULL, NULL, 'mpesa', '2022-05-05 13:42:27', '2022-05-05 13:42:27'),
(2, '2d729396d0174e84a9c12a42e78e1d1a', 1, NULL, NULL, 'e3f7063deaeb48f98365a0ffd58c8634', 'Dear JOSEPH GITAU, Your payment of Ksh 20 for SCHOOLBEST has been received. You have underpaid by Ksh 9,930. Kindly clear the balance. Thank you', '254714730671', NULL, NULL, NULL, 'mpesa', '2022-05-05 15:02:55', '2022-05-05 15:02:55'),
(3, 'b72bf1d648ed467f8ff0c4d0bfa1ad50', 3, 3, '1fbacbf47bc04dba82719b62545052e0', '822f7c54454e499388ec03be96352088', 'Dear MERCELINE OCHIENG, Your payment of Ksh 10,000 for SCHOOLBEST - TERM 1 2022 has been received. Thank you for using our services.', '254713799280', 1020, 'SenderName Blacklisted', '2022-05-08 15:32:06', 'mpesa', '2022-05-08 15:31:06', '2022-05-08 15:47:56'),
(4, 'b8fce3455d9544a4ae589e87220803d7', 1, NULL, NULL, 'd6448a3695b14ebf8a4c5ce4273a68c0', 'Dear JOSEPH GITAU, Your payment of Ksh 2,000 for SCHOOLBEST has been received. You have underpaid by Ksh 8,000. Kindly clear the balance. Thank you', '254714730671', NULL, NULL, NULL, 'mpesa', '2022-07-13 20:15:51', '2022-07-13 20:15:51'),
(5, 'cd781caa47124eabbac0ca6786ed04f3', 1, NULL, NULL, '48b2538adcfb474cac30a3067cac8bdb', 'Dear JOSEPH GITAU, Your payment of Ksh 1,000 for SCHOOLBEST has been received. You have underpaid by Ksh 7,000. Kindly clear the balance. Thank you', '254714730671', NULL, NULL, NULL, 'mpesa', '2022-07-13 20:21:54', '2022-07-13 20:21:54'),
(6, '3c7a2348defe48dda28bc567ea9e67b5', 1, NULL, NULL, '3bcb5f4e711543e4935bd476c9d76918', 'Dear JOSEPH GITAU, Your payment of Ksh 1,000 for SCHOOLBEST has been received. You have underpaid by Ksh 6,000. Kindly clear the balance. Thank you', '254714730671', NULL, NULL, NULL, 'mpesa', '2022-07-13 20:45:40', '2022-07-13 20:45:40'),
(7, 'e9223e4d29b14c419f7098a95bb0e0c0', 1, NULL, NULL, '48ca15707e624193825cc926616c75d1', 'Dear JOSEPH GITAU, Your payment of Ksh 500 for SCHOOLBEST has been received. You have underpaid by Ksh 5,500. Kindly clear the balance. Thank you', '254714730671', NULL, NULL, NULL, 'mpesa', '2022-07-14 07:54:02', '2022-07-14 07:54:02'),
(8, 'ad7a6c535fc641d49b35f3656bc1bcf5', 1, NULL, NULL, 'ee00bebd01394c8085548245e96a7c1b', 'Dear JOSEPH GITAU, Your payment of Ksh 500 for SCHOOLBEST has been received. You have underpaid by Ksh 5,000. Kindly clear the balance. Thank you', '254714730671', NULL, NULL, NULL, 'mpesa', '2022-07-14 07:57:25', '2022-07-14 07:57:25'),
(9, '953adf115de241d48e775887638846fb', 1, NULL, NULL, '59015797c3f74da5a0eb0e144ab7df68', 'Dear JOSEPH GITAU, Your payment of Ksh 5,000 for SCHOOLBEST has been received. Thank you', '254714730671', NULL, NULL, NULL, 'mpesa', '2022-07-14 13:11:02', '2022-07-14 13:11:02'),
(10, '7aa2d0a64e3e4c95923790300e3bb64d', 1, NULL, NULL, '199d82f48f404893ba5612ea521d865b', 'Dear JOSEPH GITAU, Your payment of Ksh 5,000 for SCHOOLBEST has been received. You have underpaid by Ksh 15,000. Kindly clear the balance. Thank you', '254714730671', NULL, NULL, NULL, 'mpesa', '2022-07-14 14:14:06', '2022-07-14 14:14:06'),
(11, '116a81f999044235b86e44f014456efd', 1, NULL, NULL, 'a12b4344e7bc452d927ff7cbcdf3a263', 'Dear JOSEPH GITAU, Your payment of Ksh 1,000 for SCHOOLBEST has been received. You have underpaid by Ksh 14,000. Kindly clear the balance. Thank you', '254714730671', NULL, NULL, NULL, 'mpesa', '2022-07-14 14:24:12', '2022-07-14 14:24:12'),
(12, '41f76d0019f94ab2b63217dadf779a17', 1, NULL, NULL, '230c33dfabb04d3daa2c00ac67cea1e2', 'Dear JOSEPH GITAU, Your payment of Ksh 1,000 for SCHOOLBEST has been received. You have underpaid by Ksh 13,000. Kindly clear the balance. Thank you', '254714730671', NULL, NULL, NULL, 'mpesa', '2022-07-14 14:39:21', '2022-07-14 14:39:21'),
(13, 'af4060a8b3bb452e84349ca378f98cec', 1, NULL, NULL, '31dc5c303a3343ceb581d51ab3a68113', 'Dear JOSEPH GITAU, Your payment of Ksh 1,000 for SCHOOLBEST has been received. You have underpaid by Ksh 6,000. Kindly clear the balance. Thank you', '254714730671', NULL, NULL, NULL, 'mpesa', '2022-07-14 15:30:37', '2022-07-14 15:30:37'),
(14, '8e16a208216346bb9683a34eafe6bce5', 1, NULL, NULL, 'd0414381a5394a29a496d8187d37c641', 'Dear JOSEPH GITAU, Your payment of Ksh 1,000 for SCHOOLBEST has been received. You have underpaid by Ksh 5,000. Kindly clear the balance. Thank you', '254714730671', NULL, NULL, NULL, 'mpesa', '2022-07-14 15:34:32', '2022-07-14 15:34:32'),
(15, '6c34898135564b2ea7d9a63937883c7f', 1, NULL, NULL, 'f76337b0218141a6b544d54288770416', 'Dear JOSEPH GITAU, Your payment of Ksh 1,000 for SCHOOLBEST has been received. You have underpaid by Ksh 4,000. Kindly clear the balance. Thank you', '254714730671', NULL, NULL, NULL, 'mpesa', '2022-07-14 15:46:31', '2022-07-14 15:46:31'),
(16, 'a75156d24cb940fe941b1113852e664f', 1, NULL, NULL, '758a17629ecf4461b002ffa621fac080', 'Dear JOSEPH GITAU, Your payment of Ksh 2,000 for SCHOOLBEST has been received. You have underpaid by Ksh 8,000. Kindly clear the balance. Thank you', '254714730671', NULL, NULL, NULL, 'mpesa', '2022-07-14 19:10:29', '2022-07-14 19:10:29'),
(17, '2bbfca26e60645eeb3796e7a2c52aaf5', 1, NULL, NULL, 'ef7573bfd50d4a168686d7fada8ee76b', 'Dear JOSEPH GITAU, Your payment of Ksh 8,000 for SCHOOLBEST has been received. Thank you', '254714730671', NULL, NULL, NULL, 'mpesa', '2022-07-14 19:24:38', '2022-07-14 19:24:38'),
(18, '02e2a502e9cb4631bb5194efa20a3056', 1, NULL, NULL, '2d6061f0c17c447b84b94054a004b812', 'Dear JOSEPH GITAU, Your payment of Ksh 5,000 for SCHOOLBEST has been received. Thank you', '254714730671', NULL, NULL, NULL, 'mpesa', '2022-07-14 19:29:07', '2022-07-14 19:29:07');

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
(13, '2022_05_04_215410_create_notifications_table', 7),
(14, '2022_05_17_220642_create_transaction_statuses_table', 8),
(15, '2022_07_14_100119_create_payments_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `mpesa_payments`
--

CREATE TABLE `mpesa_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `current_session_id` bigint(20) UNSIGNED NOT NULL,
  `transTime` text COLLATE utf8mb4_unicode_ci,
  `transAmount` text COLLATE utf8mb4_unicode_ci,
  `businessShortCode` text COLLATE utf8mb4_unicode_ci,
  `billRefNumber` text COLLATE utf8mb4_unicode_ci,
  `invoiceNumber` text COLLATE utf8mb4_unicode_ci,
  `orgAccountBalance` text COLLATE utf8mb4_unicode_ci,
  `thirdPartyTransID` text COLLATE utf8mb4_unicode_ci,
  `MSISDN` text COLLATE utf8mb4_unicode_ci,
  `firstName` text COLLATE utf8mb4_unicode_ci,
  `lastName` text COLLATE utf8mb4_unicode_ci,
  `middleName` text COLLATE utf8mb4_unicode_ci,
  `transID` text COLLATE utf8mb4_unicode_ci,
  `transactionType` text COLLATE utf8mb4_unicode_ci,
  `is_used` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mpesa_payments`
--

INSERT INTO `mpesa_payments` (`id`, `project_id`, `current_session_id`, `transTime`, `transAmount`, `businessShortCode`, `billRefNumber`, `invoiceNumber`, `orgAccountBalance`, `thirdPartyTransID`, `MSISDN`, `firstName`, `lastName`, `middleName`, `transID`, `transactionType`, `is_used`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '20220505134224', '50.00', '4052251', 'SB2201', '', '50.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'QE55HDYTXJ', 'Pay Bill', 1, '2022-05-05 13:42:27', '2022-05-05 13:42:27'),
(2, 1, 1, '20220505145843', '20.00', '4052251', 'SB2201', '', '120.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'QE50HJC3MC', 'Pay Bill', 1, '2022-05-05 15:02:55', '2022-05-05 15:02:55'),
(3, 4, 1, '20220508142637', '10000.00', '4052251', 'SBRAYZON', '', '10000.00', '', '254713799280', 'MERCELINE', 'OCHIENG', 'AKINYI', 'QE88NGZD60', 'Pay Bill', 1, '2022-05-08 15:31:06', '2022-05-08 15:31:06'),
(4, 1, 1, '20220714001243', '2000.00', '4052251', 'SB2201', '', '105700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKJ7HLOGYE', 'Pay Bill', 1, '2022-07-13 20:13:47', '2022-07-13 20:13:47'),
(5, 1, 1, '20220714001243', '2000.00', '4052251', 'SB2201', '', '105700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKJ7HPOGYE', 'Pay Bill', 1, '2022-07-13 20:15:51', '2022-07-13 20:15:51'),
(6, 1, 1, '20220714002243', '1000.00', '4052251', 'SB2201', '', '105700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKK7HPOGYE', 'Pay Bill', 1, '2022-07-13 20:21:53', '2022-07-13 20:21:54'),
(7, 1, 1, '20220714002243', '1000.00', '4052251', 'SB2201', '', '105700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKK7HPOSYE', 'Pay Bill', 1, '2022-07-13 20:45:39', '2022-07-13 20:45:39'),
(8, 1, 1, '20220714082243', '500.00', '4052251', 'SB2201', '', '105700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKK7HPOSY8', 'Pay Bill', 1, '2022-07-14 07:54:02', '2022-07-14 07:54:02'),
(9, 1, 1, '20220714082243', '500.00', '4052251', 'SB2201', '', '105700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKK7HPOFG8', 'Pay Bill', 1, '2022-07-14 07:57:25', '2022-07-14 07:57:25'),
(10, 1, 1, '20220714191043', '5000.00', '4052251', 'SB2201', '', '111700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKL7HPOFGK', 'Pay Bill', 1, '2022-07-14 13:11:02', '2022-07-14 13:11:02'),
(11, 1, 1, '20220714201043', '5000.00', '4052251', 'SB2201', '', '116700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKL7HPOFFG1', 'Pay Bill', 1, '2022-07-14 14:14:06', '2022-07-14 14:14:06'),
(12, 1, 1, '20220714201043', '1000.00', '4052251', 'SB2201', '', '117700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKL7HPOFFG2', 'Pay Bill', 1, '2022-07-14 14:24:12', '2022-07-14 14:24:12'),
(13, 1, 1, '20220714201043', '1000.00', '4052251', 'SB2201', '', '117700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKL7HPOFFG3', 'Pay Bill', 1, '2022-07-14 14:39:21', '2022-07-14 14:39:21'),
(14, 1, 1, '20220714205124', '1000.00', '4052251', 'SB2201', '', '117700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKL7HPOFFG5', 'Pay Bill', 1, '2022-07-14 14:41:00', '2022-07-14 14:41:00'),
(15, 1, 1, '20220714205521', '1000.00', '4052251', 'SB2201', '', '117700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKL7HPOFFG6', 'Pay Bill', 1, '2022-07-14 14:51:25', '2022-07-14 14:51:25'),
(16, 1, 1, '20220714205521', '1000.00', '4052251', 'SB2201', '', '117700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKL7HPOFFG7', 'Pay Bill', 1, '2022-07-14 14:55:50', '2022-07-14 14:55:51'),
(17, 1, 1, '20220714205521', '1000.00', '4052251', 'SB2201', '', '117700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKL7HPOFFG8', 'Pay Bill', 1, '2022-07-14 14:58:07', '2022-07-14 14:58:07'),
(18, 1, 1, '20220714205521', '1000.00', '4052251', 'SB2201', '', '117700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKL7HPOFFGH', 'Pay Bill', 1, '2022-07-14 15:17:22', '2022-07-14 15:17:22'),
(19, 1, 1, '20220714205521', '1000.00', '4052251', 'SB2201', '', '117700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKL7HPOFFG0', 'Pay Bill', 1, '2022-07-14 15:20:56', '2022-07-14 15:20:56'),
(20, 1, 1, '20220714205521', '1000.00', '4052251', 'SB2201', '', '117700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKL7HPOFF10', 'Pay Bill', 1, '2022-07-14 15:30:37', '2022-07-14 15:30:37'),
(21, 1, 1, '20220714205521', '1000.00', '4052251', 'SB2201', '', '117700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKL7GHOFF10', 'Pay Bill', 1, '2022-07-14 15:34:31', '2022-07-14 15:34:31'),
(22, 1, 1, '20220714205521', '1000.00', '4052251', 'SB2201', '', '117700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKL7GHOFK10', 'Pay Bill', 1, '2022-07-14 15:46:31', '2022-07-14 15:46:31'),
(23, 1, 1, '20220714205521', '1000.00', '4052251', 'SB2201', '', '117700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKL7GHORK10', 'Pay Bill', 1, '2022-07-14 16:36:32', '2022-07-14 16:36:32'),
(24, 1, 1, '20220714205521', '1000.00', '4052251', 'SB2201', '', '117700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKL7GHORK11', 'Pay Bill', 1, '2022-07-14 16:39:26', '2022-07-14 16:39:26'),
(25, 1, 1, '20220714205521', '1000.00', '4052251', 'SB2201', '', '117700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKL7GHORK101', 'Pay Bill', 1, '2022-07-14 17:41:33', '2022-07-14 17:41:33'),
(26, 1, 1, '20220714235521', '2000.00', '4052251', 'SB2201', '', '117700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKL7GHORK18T', 'Pay Bill', 1, '2022-07-14 18:04:59', '2022-07-14 18:04:59'),
(27, 1, 1, '20220714235821', '2000.00', '4052251', 'SB2201', '', '117700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKL7GHORK180', 'Pay Bill', 1, '2022-07-14 19:10:28', '2022-07-14 19:10:29'),
(28, 1, 1, '20220714235821', '8000.00', '4052251', 'SB2201', '', '117700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKL7GHORK187', 'Pay Bill', 1, '2022-07-14 19:24:38', '2022-07-14 19:24:38'),
(29, 1, 1, '20220715012821', '5000.00', '4052251', 'SB2201', '', '117700.00', '', '254714730671', 'JOSEPH', 'GITAU', 'NYUTU', 'OKL7GHORK1BO', 'Pay Bill', 1, '2022-07-14 19:29:07', '2022-07-14 19:29:07');

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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
  `max_students` int(11) NOT NULL DEFAULT '0',
  `specification` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `slug`, `name`, `description`, `monthly`, `termly`, `yearly`, `max_students`, `specification`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, '6a863ea2-8ef1-4ede-8aa3-56825ad8b195', 'Starter', 'Level 1 Package', 2500, 10000, 30000, 250, '{\"campuses\":\"1\",\"students\":\"250\",\"storage\":\"7\",\"bulksms\":\"YES\",\"emailing\":\"YES\",\"transport\":\"YES\",\"mpesa\":\"YES\",\"bank\":\"YES\",\"expenditure\":\"YES\",\"staff\":\"YES\",\"payroll\":\"YES\",\"portal\":\"NO\"}', 1, '2022-05-03 18:29:37', 1, '2022-07-13 18:41:01'),
(2, '2e6365dc-c3d8-43de-a536-bb5976206254', 'Standard', 'Level 2 Package', 3750, 15000, 45000, 400, '{\"campuses\":\"1\",\"students\":\"400\",\"storage\":\"15\",\"bulksms\":\"YES\",\"emailing\":\"YES\",\"transport\":\"YES\",\"mpesa\":\"YES\",\"bank\":\"YES\",\"expenditure\":\"YES\",\"staff\":\"YES\",\"payroll\":\"YES\",\"portal\":\"NO\"}', 1, '2022-05-03 19:21:45', 1, '2022-07-13 18:41:18'),
(3, '23a258b8-2251-4bdb-888e-6fbcc01a488c', 'Premium', 'Level 3 Package', 5000, 20000, 60000, 750, '{\"campuses\":\"2\",\"students\":\"750\",\"storage\":\"20\",\"bulksms\":\"YES\",\"emailing\":\"YES\",\"transport\":\"YES\",\"mpesa\":\"YES\",\"bank\":\"YES\",\"expenditure\":\"YES\",\"staff\":\"YES\",\"payroll\":\"YES\",\"portal\":\"YES\"}', 1, '2022-05-03 19:25:16', 1, '2022-07-13 18:41:24'),
(4, '19b6a7f3-20c3-4b48-90a9-ecb5e83d6090', 'Professional', 'Level 4 Package', 7500, 30000, 90000, 1500, '{\"campuses\":\"3\",\"students\":\"1500\",\"storage\":\"30\",\"bulksms\":\"YES\",\"emailing\":\"YES\",\"transport\":\"YES\",\"mpesa\":\"YES\",\"bank\":\"YES\",\"expenditure\":\"YES\",\"staff\":\"YES\",\"payroll\":\"YES\",\"portal\":\"YES\"}', 1, '2022-05-03 19:28:29', 1, '2022-07-13 18:41:29');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `mpesa_payment_id` bigint(20) UNSIGNED NOT NULL,
  `current_session_id` bigint(20) UNSIGNED NOT NULL,
  `ref_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expected` int(11) NOT NULL,
  `paid` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `receipt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `slug`, `project_id`, `mpesa_payment_id`, `current_session_id`, `ref_no`, `expected`, `paid`, `balance`, `receipt`, `created_at`, `updated_at`) VALUES
(1, '90e2beb8c3a1497eae5930ff58825013', 1, 8, 1, 'SB2201', 6000, 500, 5500, NULL, '2022-07-14 10:54:02', NULL),
(2, '58691675ad874ae5b9485ab6dedcff39', 1, 9, 1, 'OKK7HPOFG8', 5500, 500, 5000, NULL, '2022-07-14 10:57:25', '2022-07-14 15:46:59'),
(3, '1ee5963259b34c8fb40fe9b98eeab7cb', 1, 10, 1, 'OKL7HPOFGK', 5000, 5000, 0, NULL, '2022-07-14 16:11:02', NULL),
(4, '3fae59eac0364d41a17870af771a3548', 1, 11, 1, 'OKL7HPOFFG1', 20000, 5000, 15000, NULL, '2022-07-14 17:14:06', NULL),
(5, 'ae9132eb9dd9436bbf845cff6c58b4fa', 1, 12, 1, 'OKL7HPOFFG2', 15000, 1000, 14000, NULL, '2022-07-14 17:24:12', NULL),
(6, '39cd05fecb7f4649a6726d6ae29882dc', 1, 13, 1, 'OKL7HPOFFG3', 14000, 1000, 13000, NULL, '2022-07-14 17:39:21', NULL),
(7, '9cec301980fb4098bf5ca3c1e7773995', 1, 14, 1, 'OKL7HPOFFG5', 13000, 1000, 12000, NULL, '2022-07-14 17:41:00', NULL),
(8, 'e3eb14963e07463eac359f07faf6b7c3', 1, 15, 1, 'OKL7HPOFFG6', 12000, 1000, 11000, NULL, '2022-07-14 17:51:25', NULL),
(9, '65dbded9a1214b339d7a3339aa8d86ee', 1, 16, 1, 'OKL7HPOFFG7', 11000, 1000, 10000, NULL, '2022-07-14 17:55:51', NULL),
(10, 'f03acf4ef4ca4af8a7e207b402a8f8fc', 1, 17, 1, 'OKL7HPOFFG8', 10000, 1000, 9000, NULL, '2022-07-14 17:58:07', NULL),
(11, '1619d8ee5e1a46cabde336fcabe7977e', 1, 18, 1, 'OKL7HPOFFGH', 9000, 1000, 8000, NULL, '2022-07-14 18:17:22', NULL),
(12, '05eb9ba193f84623b33d26a3cb9e46ec', 1, 19, 1, 'OKL7HPOFFG0', 8000, 1000, 7000, NULL, '2022-07-14 18:20:56', NULL),
(13, '2f834d47f381499eb8d34f8964f96d71', 1, 20, 1, 'OKL7HPOFF10', 7000, 1000, 6000, NULL, '2022-07-14 18:30:37', NULL),
(14, '8345458fde824d908ad085acbae2d718', 1, 21, 1, 'OKL7GHOFF10', 6000, 1000, 5000, NULL, '2022-07-14 18:34:32', NULL),
(15, 'e7f611007a3d4d14a7fe26709c72372c', 1, 22, 1, 'OKL7GHOFK10', 5000, 1000, 4000, NULL, '2022-07-14 18:46:31', NULL),
(16, 'dcb3650d9d92452894d2356c9fa803eb', 1, 23, 1, 'OKL7GHORK10', 4000, 1000, 3000, NULL, '2022-07-14 19:36:32', NULL),
(17, '8248238147374c4ca053dcf57b000d3d', 1, 24, 1, 'OKL7GHORK11', 3000, 1000, 2000, NULL, '2022-07-14 19:39:26', NULL),
(18, '398111f26ada49f08e2782802efa8941', 1, 25, 1, 'OKL7GHORK101', 2000, 1000, 1000, 'storage/receipts/schoolbest-OKL7GHORK101-receipt.pdf', '2022-07-14 20:41:33', '2022-07-14 17:42:06'),
(19, 'e301a7359cf649779bf33b74e3d666d1', 1, 26, 1, 'OKL7GHORK18T', 1000, 2000, -1000, 'storage/receipts/schoolbest-OKL7GHORK18T-receipt.pdf', '2022-07-14 21:04:59', '2022-07-14 18:05:32'),
(20, 'a344c9ea5e0e40ca98c7bb9cfa7d26a0', 1, 27, 1, 'OKL7GHORK180', 10000, 2000, 8000, 'storage/receipts/schoolbest-OKL7GHORK180-receipt.pdf', '2022-07-14 22:10:29', '2022-07-14 19:11:04'),
(21, '7da01f7d7ec14f0382f00e05aac4a94b', 1, 28, 1, 'OKL7GHORK187', 8000, 8000, 0, 'storage/receipts/schoolbest-OKL7GHORK187-receipt.pdf', '2022-07-14 22:24:38', '2022-07-14 19:25:14'),
(22, '2ecb4a5857b942f0b49dc04f0f267270', 1, 29, 1, 'OKL7GHORK1BO', 5000, 5000, 0, 'storage/receipts/schoolbest-OKL7GHORK1BO-receipt.pdf', '2022-07-14 22:29:07', '2022-07-14 19:29:40');

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
  `alias` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_date` date NOT NULL,
  `students` int(11) NOT NULL DEFAULT '0',
  `max_students` int(11) NOT NULL DEFAULT '0',
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_cycle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expected` int(11) NOT NULL,
  `paid` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `next_due_date` date DEFAULT NULL,
  `next_invoice_date` date DEFAULT NULL,
  `termination_date` date DEFAULT NULL,
  `site` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `suspend_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `slug`, `client_id`, `package_id`, `current_session_id`, `project_no`, `alias`, `name`, `reg_date`, `students`, `max_students`, `payment_method`, `billing_cycle`, `expected`, `paid`, `balance`, `next_due_date`, `next_invoice_date`, `termination_date`, `site`, `is_active`, `suspend_reason`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'b2895137d5534cfab9744dd26973ed4b', 1, 1, 1, 'SB2201', NULL, 'Josnytech SchoolBEST', '2022-05-01', 0, 1500, 'mpesa', 'termly', 30000, 30000, 0, '2022-07-22', '2022-07-20', '2022-07-26', 'demo.schoolbest.co.ke', 1, NULL, 1, '2022-05-05 13:38:58', NULL, '2022-07-14 19:29:07'),
(2, '061749778233486cb1b8c43b95b9ff3e', 2, 1, 1, 'SB2202', 'SBBARNEYS', 'SBBARNEYS', '2021-10-31', 0, 250, 'mpesa', 'termly', 10000, 0, 10000, '2022-07-22', '2022-07-20', '2022-07-26', 'barneyshouse.schoolbest.net', 1, NULL, 1, '2022-05-05 14:37:08', NULL, '2022-05-05 14:37:08'),
(3, '5c684bb70282409aa400c6c620e30e22', 4, 3, 1, 'SB2203', 'SBMABE', 'SBMABE', '2022-01-10', 0, 750, 'mpesa', 'termly', 20000, 0, 20000, '2022-07-22', '2022-07-20', '2022-07-26', 'mabetwinkling.schoolbest.net', 1, NULL, 1, '2022-05-05 14:38:19', NULL, '2022-05-05 14:38:19'),
(4, 'e65227b8849e441b9f026b121cddc0be', 3, 1, 1, 'SB2204', 'SBRAYZON', 'SBRAYZON', '2022-04-25', 0, 250, 'mpesa', 'termly', 10000, 0, 10000, '2022-07-22', '2022-07-20', '2022-07-26', 'rayzonschool.schoolbest.net', 1, NULL, 1, '2022-05-05 14:39:29', NULL, '2022-05-08 15:31:06');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_statuses`
--

CREATE TABLE `transaction_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `result_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result_desc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `originator_conversation_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conversation_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receipt_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conversationid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finalised_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debit_party_charges` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debit_account_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `initiated_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `originator_conversationid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit_party_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debit_party_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_statuses`
--

INSERT INTO `transaction_statuses` (`id`, `result_code`, `result_desc`, `originator_conversation_id`, `conversation_id`, `transaction_id`, `receipt_no`, `conversationid`, `finalised_time`, `amount`, `transaction_status`, `reason_type`, `transaction_reason`, `debit_party_charges`, `debit_account_type`, `initiated_time`, `originator_conversationid`, `credit_party_name`, `debit_party_name`, `created_at`, `updated_at`) VALUES
(1, '0', 'The service request is processed successfully.', '46618-55483383-1', 'AG_20220518_20100a9fa8bfa38b5353', 'QEI0000000', 'QE88NGZD60', NULL, '20220508142621', '10000', 'Completed', 'Pay Utility', NULL, NULL, 'MMF Account For Customer', '20220508142621', NULL, '4052251 - JOSNYTECH SOLUTION.', '0713799280 - merceline akinyi ochieng', '2022-05-18 02:14:11', '2022-05-18 02:14:11'),
(2, '0', 'The service request is processed successfully.', '82114-51508748-1', 'AG_20220518_20102b80bc3d692da332', 'QEI0000000', 'QE50HJC3MC', NULL, '20220505145843', '20', 'Completed', 'Pay Bill Online', NULL, NULL, 'MMF Account For Customer', '20220505145843', NULL, '4052251 - JOSNYTECH SOLUTION.', '254714730671 - JOSEPH GITAU', '2022-05-18 02:20:51', '2022-05-18 02:20:51'),
(3, '0', 'The service request is processed successfully.', '97164-6356803-1', 'AG_20220518_2030059aac34d1ae2ac8', 'QEI0000000', 'QE55HDYTXJ', NULL, '20220505134224', '50', 'Completed', 'Pay Bill Online', NULL, NULL, 'MMF Account For Customer', '20220505134224', NULL, '4052251 - JOSNYTECH SOLUTION.', '254714730671 - JOSEPH GITAU', '2022-05-18 02:27:42', '2022-05-18 02:27:42'),
(4, '0', 'The service request is processed successfully.', '46613-55490838-1', 'AG_20220518_2010530db3a653921421', 'QEI0000000', 'QE55HDYTXJ', NULL, '20220505134224', '50', 'Completed', 'Pay Bill Online', NULL, NULL, 'MMF Account For Customer', '20220505134224', NULL, '4052251 - JOSNYTECH SOLUTION.', '254714730671 - JOSEPH GITAU', '2022-05-18 02:29:22', '2022-05-18 02:29:22'),
(5, '0', 'The service request is processed successfully.', '3186-54413373-1', 'AG_20220518_20504ea5d99ea1eae547', 'QEI0000000', 'QE55HDYTXJ', NULL, '20220505134224', '50', 'Completed', 'Pay Bill Online', NULL, NULL, 'MMF Account For Customer', '20220505134224', NULL, '4052251 - JOSNYTECH SOLUTION.', '254714730671 - JOSEPH GITAU', '2022-05-18 02:40:22', '2022-05-18 02:40:22'),
(6, '0', 'The service request is processed successfully.', '63590-12771033-1', 'AG_20220518_20506a7aa4f8eb7e769e', 'QEI0000000', 'QE55HDYTXJ', NULL, '20220505134224', '50', 'Completed', 'Pay Bill Online', NULL, NULL, 'MMF Account For Customer', '20220505134224', NULL, '4052251 - JOSNYTECH SOLUTION.', '254714730671 - JOSEPH GITAU', '2022-05-18 02:40:34', '2022-05-18 02:40:34'),
(7, '0', 'The service request is processed successfully.', '45737-7430239-1', 'AG_20220518_202006637612304aca98', 'QEI0000000', 'QE55HDYTXJ', NULL, '20220505134224', '50', 'Completed', 'Pay Bill Online', NULL, NULL, 'MMF Account For Customer', '20220505134224', NULL, '4052251 - JOSNYTECH SOLUTION.', '254714730671 - JOSEPH GITAU', '2022-05-18 02:41:58', '2022-05-18 02:41:58'),
(8, '0', 'The service request is processed successfully.', '46623-55497053-1', 'AG_20220518_20201a2751de72147298', 'QEI0000000', 'QE55HDYTXJ', NULL, '20220505134224', '50', 'Completed', 'Pay Bill Online', NULL, NULL, 'MMF Account For Customer', '20220505134224', NULL, '4052251 - JOSNYTECH SOLUTION.', '254714730671 - JOSEPH GITAU', '2022-05-18 02:42:07', '2022-05-18 02:42:07'),
(9, '0', 'The service request is processed successfully.', '82127-51517149-1', 'AG_20220518_205040e9b37d599fb0e4', 'QEI0000000', 'QE50HJC3MC', NULL, '20220505145843', '20', 'Completed', 'Pay Bill Online', NULL, NULL, 'MMF Account For Customer', '20220505145843', NULL, '4052251 - JOSNYTECH SOLUTION.', '254714730671 - JOSEPH GITAU', '2022-05-18 02:43:18', '2022-05-18 02:43:18'),
(10, '0', 'The service request is processed successfully.', '77287-22554677-1', 'AG_20220518_204014d49a9210124063', 'QEI0000000', 'QE50HJC3MC', NULL, '20220505145843', '20', 'Completed', 'Pay Bill Online', NULL, NULL, 'MMF Account For Customer', '20220505145843', NULL, '4052251 - JOSNYTECH SOLUTION.', '254714730671 - JOSEPH GITAU', '2022-05-18 02:43:28', '2022-05-18 02:43:28'),
(11, '0', 'The service request is processed successfully.', '82120-51519324-1', 'AG_20220518_20407f129db557ac99d2', 'QEI0000000', 'QE55HDYTXJ', NULL, '20220505134224', '50', 'Completed', 'Pay Bill Online', NULL, NULL, 'MMF Account For Customer', '20220505134224', NULL, '4052251 - JOSNYTECH SOLUTION.', '254714730671 - JOSEPH GITAU', '2022-05-18 02:49:06', '2022-05-18 02:49:06'),
(12, '0', 'The service request is processed successfully.', '50247-51517161-1', 'AG_20220518_201066d3fe34d2930216', 'QEI0000000', 'QE55HDYTXJ', NULL, '20220505134224', '50', 'Completed', 'Pay Bill Online', NULL, NULL, 'MMF Account For Customer', '20220505134224', NULL, '4052251 - JOSNYTECH SOLUTION.', '254714730671 - JOSEPH GITAU', '2022-05-18 02:49:34', '2022-05-18 02:49:34'),
(13, '0', 'The service request is processed successfully.', '10769-54409351-1', 'AG_20220518_20300e24834ede91dfbc', 'QEI0000000', 'QE88NGZD60', NULL, '20220508142621', '10000', 'Completed', 'Pay Utility', NULL, NULL, 'MMF Account For Customer', '20220508142621', NULL, '4052251 - JOSNYTECH SOLUTION.', '0713799280 - merceline akinyi ochieng', '2022-05-18 02:50:28', '2022-05-18 02:50:28'),
(14, '0', 'The service request is processed successfully.', '63606-12776820-1', 'AG_20220518_20307807955622d172e6', 'QEI0000000', 'QE50HJC3MC', NULL, '20220505145843', '20', 'Completed', 'Pay Bill Online', NULL, NULL, 'MMF Account For Customer', '20220505145843', NULL, '4052251 - JOSNYTECH SOLUTION.', '254714730671 - JOSEPH GITAU', '2022-05-18 02:52:44', '2022-05-18 02:52:44');

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
(1, '4c80a6b2c05a4a73b301231492055ae0', 'Joseph Gitau', 'josnytechsolution@gmail.com', '2022-05-05 13:34:57', '$2y$10$/NtQqQlbJ6NUan7niMeUNu0WvS6seNTPtc6jqoEFyr1tWnzpAxVnW', '0720871499', 1, 1, 0, 1, NULL, 1, '2022-05-05 10:32:23', NULL, '2022-05-05 13:34:57'),
(2, '14fe9f396b8744cbb61325596f5711ed', 'Nyutu Gitau', 'nyutujoseph115@gmail.com', '2022-05-05 13:47:35', '$2y$10$7Crs1UCnTai8ho8PzM0SPewDrsCcxNHKUfDqjxNyfKGzipQzOXzt6', '0714730671', 0, 0, 1, 1, NULL, 1, '2022-05-05 13:37:14', NULL, '2022-05-05 13:47:35'),
(10, '138a2fbbd1ce47a3b01e610f0a8aa8ce', 'Carol Wambui', 'carol.barneys@gmail.com', NULL, '$2y$10$dNicjJu86mzN.tbu1qjeqOCRkbskJwWqRcR4/HLO37AqirjCNYFH6', '0722470091', 0, 0, 1, 1, NULL, 1, '2022-05-05 14:24:40', NULL, '2022-05-05 14:24:40'),
(11, '322d803e343f4df7a1f7b6baff1f38e8', 'Marsden Awori', 'marsden.k.awori@gmail.com', NULL, '$2y$10$abomlPP19v5Sicn7B.zhhOowaCIdwsDeEktSYcMJCvF5XCk/K8Wmu', '0721639817', 0, 0, 1, 1, NULL, 1, '2022-05-05 14:28:54', NULL, '2022-05-05 14:28:54'),
(12, '786dc040bf864c3a95d1ec625828a414', 'Catherine Kabiro', 'mabetwinkling@yahoo.com', NULL, '$2y$10$uxv65OJYSDLKGODyd2yTwuIXQ68LL06WQJ/aNKlkpX5LfyyQSUIWO', '0722801302', 0, 0, 1, 1, NULL, 1, '2022-05-05 14:34:09', NULL, '2022-05-05 14:34:09');

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
  ADD KEY `message_outboxes_client_id_foreign` (`client_id`),
  ADD KEY `message_outboxes_mpesa_payment_id_foreign` (`mpesa_payment_id`);

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
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_slug_unique` (`slug`),
  ADD KEY `payments_project_id_foreign` (`project_id`),
  ADD KEY `payments_mpesa_payment_id_foreign` (`mpesa_payment_id`),
  ADD KEY `payments_current_session_id_foreign` (`current_session_id`);

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
-- Indexes for table `transaction_statuses`
--
ALTER TABLE `transaction_statuses`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `company_profiles`
--
ALTER TABLE `company_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `current_sessions`
--
ALTER TABLE `current_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `message_outboxes`
--
ALTER TABLE `message_outboxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mpesa_payments`
--
ALTER TABLE `mpesa_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaction_statuses`
--
ALTER TABLE `transaction_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_current_session_id_foreign` FOREIGN KEY (`current_session_id`) REFERENCES `current_sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_mpesa_payment_id_foreign` FOREIGN KEY (`mpesa_payment_id`) REFERENCES `mpesa_payments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

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
