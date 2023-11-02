-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2023 at 03:12 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctor`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) NOT NULL,
  `url` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `photo`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Admins/XGYlhaoJWuV9MHPlWSM6xNWprBDa7uT6l6h6MF8e.jpg', NULL, '2023-11-01 13:06:12', '2023-11-01 13:06:12');

-- --------------------------------------------------------

--
-- Table structure for table `about_us_translations`
--

CREATE TABLE `about_us_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_us_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(2) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us_translations`
--

INSERT INTO `about_us_translations` (`id`, `about_us_id`, `locale`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Test Aboutus  Edit', 'Test Aboutus&nbsp; Edit&nbsp;', '2023-11-01 13:06:12', '2023-11-01 13:13:05'),
(2, 1, 'ar', 'تعديل', 'تغديل&nbsp;', '2023-11-01 13:06:12', '2023-11-01 13:13:05');

-- --------------------------------------------------------

--
-- Table structure for table `accommodations`
--

CREATE TABLE `accommodations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reservation_id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 => cabin, 2 => suite',
  `accommodation_num` int(10) UNSIGNED NOT NULL,
  `guest_name` varchar(191) DEFAULT NULL,
  `adults_count` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `children_count` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `child1_age` tinyint(3) UNSIGNED DEFAULT NULL COMMENT '1 => free, 2 => 50%',
  `child2_age` tinyint(3) UNSIGNED DEFAULT NULL COMMENT '1 => free, 2 => 50%',
  `cabin_price` decimal(8,2) NOT NULL,
  `suite_price` decimal(8,2) NOT NULL,
  `single_cabin_price` decimal(8,2) NOT NULL,
  `single_suite_price` decimal(8,2) NOT NULL,
  `total_price` decimal(8,2) NOT NULL,
  `discount` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) DEFAULT NULL COMMENT 'null => pending, 0 => failed, 1 => success',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accommodations`
--

INSERT INTO `accommodations` (`id`, `reservation_id`, `type`, `accommodation_num`, `guest_name`, `adults_count`, `children_count`, `child1_age`, `child2_age`, `cabin_price`, `suite_price`, `single_cabin_price`, `single_suite_price`, `total_price`, `discount`, `status`, `created_at`, `updated_at`) VALUES
(10, 10, 1, 407, 'qwe', 2, 0, NULL, NULL, 2400.00, 4800.00, 1920.00, 4800.00, 2400.00, 0, 1, '2020-11-04 19:18:48', '2020-11-04 19:19:00'),
(12, 12, 1, 409, 'ahmed', 2, 0, NULL, NULL, 5600.00, 11200.00, 4480.00, 11200.00, 5600.00, 0, 1, '2020-11-05 18:11:53', '2020-11-05 18:12:28'),
(13, 12, 1, 406, 'test', 2, 1, 2, NULL, 5600.00, 11200.00, 4480.00, 11200.00, 7000.00, 0, 1, '2020-11-05 18:11:53', '2020-11-05 18:12:28'),
(14, 13, 1, 407, 'MOhamed', 1, 0, NULL, NULL, 3200.00, 6400.00, 2560.00, 6400.00, 2560.00, 0, 1, '2020-11-05 18:47:24', '2020-11-05 18:51:51'),
(51, 48, 1, 104, 'Aiman Hamada', 2, 0, NULL, NULL, 2.00, 0.00, 2.00, 0.00, 2.00, 0, 1, '2021-08-22 16:56:05', '2021-08-22 16:56:36'),
(52, 49, 1, 406, 'Emmanuel Rojas', 2, 0, NULL, NULL, 3200.00, 6400.00, 2560.00, 6400.00, 3200.00, 0, 1, '2021-09-11 03:43:12', '2021-09-11 03:44:35'),
(55, 51, 1, 404, 'Thomas Mooney, Johanna Mooney', 2, 0, NULL, NULL, 2400.00, 4800.00, 1920.00, 4800.00, 2400.00, 0, 1, '2021-09-23 07:06:17', '2021-09-23 07:06:37'),
(56, 51, 1, 410, 'Tate Mooney, Keefe Mooney', 2, 0, NULL, NULL, 2400.00, 4800.00, 1920.00, 4800.00, 2400.00, 0, 1, '2021-09-23 07:06:17', '2021-09-23 07:06:37'),
(86, 64, 1, 416, 'LUIZ FELIPE', 2, 0, NULL, NULL, 2400.00, 4800.00, 1920.00, 4800.00, 2400.00, 0, 1, '2021-11-03 18:29:55', '2021-11-03 18:32:16'),
(91, 69, 1, 403, 'Heath Clayton', 2, 0, NULL, NULL, 2400.00, 4800.00, 1920.00, 4800.00, 2400.00, 0, 1, '2021-11-10 10:38:58', '2021-11-10 10:39:20'),
(114, 91, 1, 403, 'Brandon Cook', 2, 0, NULL, NULL, 2400.00, 4800.00, 1920.00, 4800.00, 2400.00, 0, 1, '2022-02-01 13:08:45', '2022-02-01 13:09:35'),
(121, 95, 1, 410, 'Thomas Stults Jr.', 2, 0, NULL, NULL, 3200.00, 6400.00, 2560.00, 6400.00, 3200.00, 0, 1, '2022-02-09 22:32:30', '2022-02-09 22:33:36'),
(127, 99, 1, 403, 'Candice Johnson', 1, 0, NULL, NULL, 2400.00, 4800.00, 1920.00, 4800.00, 1920.00, 0, 1, '2022-03-04 10:24:39', '2022-03-04 10:26:10'),
(128, 99, 1, 404, 'Christina Rodriguez', 1, 0, NULL, NULL, 2400.00, 4800.00, 1920.00, 4800.00, 1920.00, 0, 1, '2022-03-04 10:24:39', '2022-03-04 10:26:10'),
(131, 102, 1, 305, 'REIJI NAKAJIMA', 1, 0, NULL, NULL, 1800.00, 3600.00, 1440.00, 3600.00, 1440.00, 0, 1, '2022-03-08 14:33:49', '2022-03-08 14:34:09'),
(137, 106, 1, 404, 'Andre Stuart', 2, 0, NULL, NULL, 3200.00, 6400.00, 2560.00, 6400.00, 3200.00, 0, 1, '2022-03-11 02:00:27', '2022-03-11 02:01:02'),
(151, 117, 1, 305, 'Edgar Alvarez', 2, 0, NULL, NULL, 1800.00, 3600.00, 1440.00, 3600.00, 1800.00, 0, 1, '2022-04-09 10:47:30', '2022-04-09 10:48:44'),
(155, 121, 1, 305, 'Shana Doherty', 2, 0, NULL, NULL, 2400.00, 4800.00, 1920.00, 4800.00, 2400.00, 0, 1, '2022-04-29 14:24:02', '2022-04-29 14:25:38'),
(161, 125, 1, 403, 'kevin brauti; adleigh brauti', 1, 1, 2, NULL, 2400.00, 4800.00, 1920.00, 4800.00, 2520.00, 0, 1, '2022-05-02 23:16:46', '2022-05-02 23:18:06'),
(162, 125, 1, 404, 'amber brauti; Isla brauti', 1, 1, 2, NULL, 2400.00, 4800.00, 1920.00, 4800.00, 2520.00, 0, 1, '2022-05-02 23:16:46', '2022-05-02 23:18:06'),
(177, 135, 1, 305, 'Kevin Ross', 2, 0, NULL, NULL, 2400.00, 4800.00, 1920.00, 4800.00, 2400.00, 0, 1, '2022-05-10 08:32:17', '2022-05-10 08:33:54'),
(178, 136, 1, 404, 'Matt Neubauer', 2, 0, NULL, NULL, 3200.00, 6400.00, 2560.00, 6400.00, 3200.00, 0, 1, '2022-05-10 16:55:59', '2022-05-10 16:56:49'),
(184, 142, 1, 403, 'Susan Hutchins ', 2, 0, NULL, NULL, 2400.00, 4800.00, 1920.00, 4800.00, 2400.00, 0, 1, '2022-05-24 05:46:58', '2022-05-24 05:49:58'),
(192, 148, 1, 416, 'Duda Porto Mr & Mrs', 2, 0, NULL, NULL, 1800.00, 3600.00, 1440.00, 3600.00, 1800.00, 0, 1, '2022-05-31 02:14:20', '2022-05-31 02:16:16'),
(204, 155, 1, 306, 'Ganesan Abbu', 2, 0, NULL, NULL, 3200.00, 6400.00, 2560.00, 6400.00, 3200.00, 0, 1, '2022-06-27 10:01:17', '2022-06-27 10:02:07'),
(210, 160, 1, 416, 'Keith Weng, Wan Agus', 1, 1, 2, NULL, 4000.00, 8000.00, 3200.00, 8000.00, 4200.00, 0, 1, '2022-07-10 14:23:03', '2022-07-10 14:23:24'),
(211, 160, 1, 410, 'Gwenn Weng, Ake Pangestuti', 2, 0, NULL, NULL, 4000.00, 8000.00, 3200.00, 8000.00, 4000.00, 0, 1, '2022-07-10 14:23:03', '2022-07-10 14:23:24'),
(212, 161, 1, 403, 'Elizabeth Stronach', 2, 0, NULL, NULL, 2400.00, 4800.00, 1920.00, 4800.00, 2400.00, 0, 1, '2022-07-17 02:40:03', '2022-07-17 02:40:39'),
(213, 162, 1, 404, 'Rahul Dutta and Ankita Dutta', 2, 0, NULL, NULL, 4000.00, 8000.00, 3200.00, 8000.00, 4000.00, 0, 1, '2022-07-18 09:08:17', '2022-07-18 09:09:31'),
(219, 168, 2, 401, 'Lisa and Ben Stoller', 2, 0, NULL, NULL, 3200.00, 6400.00, 2560.00, 6400.00, 6400.00, 0, 1, '2022-07-24 04:46:57', '2022-07-24 04:47:21'),
(264, 194, 1, 305, 'GUSTAVO GEMI BRAVO DA SILVA and REBECA DE ARAUJO BRAVO', 2, 0, NULL, NULL, 2640.00, 5280.00, 2112.00, 5280.00, 2640.00, 0, 1, '2022-09-09 03:41:14', '2022-09-09 03:43:54'),
(265, 195, 1, 410, 'Sarah McGovern', 2, 0, NULL, NULL, 6160.00, 12320.00, 4928.00, 12320.00, 6160.00, 0, 1, '2022-09-13 00:02:26', '2022-09-13 00:03:34'),
(271, 197, 1, 403, 'Frank Yang', 2, 0, NULL, NULL, 3520.00, 7040.00, 2816.00, 7040.00, 3520.00, 0, 1, '2022-09-13 05:23:02', '2022-09-13 05:27:13'),
(272, 197, 1, 410, 'Frank Yang', 2, 0, NULL, NULL, 3520.00, 7040.00, 2816.00, 7040.00, 3520.00, 0, 1, '2022-09-13 05:23:02', '2022-09-13 05:27:13'),
(273, 197, 1, 416, 'Frank Yang', 2, 0, NULL, NULL, 3520.00, 7040.00, 2816.00, 7040.00, 3520.00, 0, 1, '2022-09-13 05:23:02', '2022-09-13 05:27:13'),
(274, 197, 1, 310, 'Frank Yang', 2, 0, NULL, NULL, 3520.00, 7040.00, 2816.00, 7040.00, 3520.00, 0, 1, '2022-09-13 05:23:02', '2022-09-13 05:27:13'),
(275, 197, 1, 306, 'Frank Yang', 2, 0, NULL, NULL, 3520.00, 7040.00, 2816.00, 7040.00, 3520.00, 0, 1, '2022-09-13 05:23:02', '2022-09-13 05:27:13'),
(283, 202, 1, 403, 'Ray Chang', 2, 0, NULL, NULL, 3700.00, 7400.00, 2960.00, 7400.00, 3700.00, 0, 1, '2022-09-19 16:27:22', '2022-09-19 16:28:58'),
(290, 206, 1, 305, 'Kai Xiao, Jingling Li', 2, 0, NULL, NULL, 3470.00, 6930.00, 2775.00, 6930.00, 3470.00, 0, 1, '2022-09-21 07:50:15', '2022-09-21 07:50:44'),
(296, 210, 1, 410, 'Mohammad Saikat, Cynthia Protiva', 2, 0, NULL, NULL, 3700.00, 7400.00, 2960.00, 7400.00, 3700.00, 0, 1, '2022-09-26 00:12:20', '2022-09-26 00:12:41'),
(308, 219, 1, 404, 'Shaheen Khan', 1, 1, 2, NULL, 3470.00, 6930.00, 2775.00, 6930.00, 3642.50, 0, 1, '2022-10-10 05:04:28', '2022-10-10 05:07:15'),
(309, 219, 1, 410, 'Aloke Mishra', 2, 0, NULL, NULL, 3470.00, 6930.00, 2775.00, 6930.00, 3470.00, 0, 1, '2022-10-10 05:04:28', '2022-10-10 05:07:15'),
(317, 224, 1, 305, 'Frank Yang', 2, 0, NULL, NULL, 3700.00, 7400.00, 2960.00, 7400.00, 3700.00, 0, 1, '2022-10-12 03:01:41', '2022-10-12 03:02:27'),
(318, 224, 1, 316, 'Frank Yang', 2, 0, NULL, NULL, 3700.00, 7400.00, 2960.00, 7400.00, 3700.00, 0, 1, '2022-10-12 03:01:41', '2022-10-12 03:02:27'),
(324, 229, 1, 305, 'Laura Esmanhoto Bertol', 2, 0, NULL, NULL, 2775.00, 5550.00, 2220.00, 5550.00, 2775.00, 0, 1, '2022-10-16 07:21:51', '2022-10-16 07:24:35'),
(325, 230, 1, 403, 'Maryam Sadeghi and Nayan Savla', 2, 0, NULL, NULL, 3470.00, 6930.00, 2775.00, 6930.00, 3470.00, 0, 1, '2022-10-21 02:06:33', '2022-10-21 02:12:51'),
(326, 230, 1, 416, 'Hossein Sadeghi, Soraya Sadeghi, and Kian Johnson', 2, 1, 2, NULL, 3470.00, 6930.00, 2775.00, 6930.00, 4337.50, 0, 1, '2022-10-21 02:06:33', '2022-10-21 02:12:51'),
(327, 230, 1, 310, 'Parrish Sadeghi, Mark Johnson, and Shayda Johnson', 2, 1, 2, NULL, 3470.00, 6930.00, 2775.00, 6930.00, 4337.50, 0, 1, '2022-10-21 02:06:33', '2022-10-21 02:12:51'),
(328, 231, 1, 403, 'Cheryl Ogilvie', 2, 0, NULL, NULL, 3700.00, 7400.00, 2960.00, 7400.00, 3700.00, 0, 1, '2022-10-27 07:02:09', '2022-10-27 07:03:07'),
(342, 244, 1, 404, 'Benjamin Rohling', 2, 0, NULL, NULL, 3700.00, 7400.00, 2960.00, 7400.00, 3700.00, 0, 1, '2022-10-30 12:46:53', '2022-10-30 12:50:06'),
(343, 244, 1, 410, 'Sibylle Rohling', 1, 1, 2, NULL, 3700.00, 7400.00, 2960.00, 7400.00, 3885.00, 0, 1, '2022-10-30 12:46:53', '2022-10-30 12:50:06'),
(344, 245, 1, 416, 'Puren Guzel Kircay - Mert Zafer Kircay', 2, 0, NULL, NULL, 2775.00, 5550.00, 2220.00, 5550.00, 2775.00, 0, 1, '2022-10-30 19:36:00', '2022-10-30 19:37:26'),
(349, 248, 1, 416, 'Irma Botero and Ciro Arevalo', 2, 0, NULL, NULL, 3700.00, 7400.00, 2960.00, 7400.00, 3700.00, 0, 1, '2022-11-01 02:53:00', '2022-11-01 02:58:40'),
(350, 248, 1, 410, 'Gabriel Arevalo and Felipe Arevalo', 2, 0, NULL, NULL, 3700.00, 7400.00, 2960.00, 7400.00, 3700.00, 0, 1, '2022-11-01 02:53:00', '2022-11-01 02:58:40'),
(351, 248, 1, 404, 'Mateo Arevalo', 1, 0, NULL, NULL, 3700.00, 7400.00, 2960.00, 7400.00, 2960.00, 0, 1, '2022-11-01 02:53:00', '2022-11-01 02:58:40'),
(352, 249, 1, 404, 'Charlie True Jr', 1, 1, 1, NULL, 3700.00, 7400.00, 2960.00, 7400.00, 2960.00, 0, 1, '2022-11-01 04:41:20', '2022-11-01 04:42:03'),
(355, 252, 1, 410, 'Katia Enríquez', 2, 0, NULL, NULL, 3700.00, 7400.00, 2960.00, 7400.00, 3700.00, 0, 1, '2022-12-12 08:12:41', '2022-12-12 08:14:31'),
(357, 254, 1, 403, 'Jordan Robinson', 2, 0, NULL, NULL, 2775.00, 5550.00, 2220.00, 5550.00, 2775.00, 0, 1, '2022-12-13 06:33:37', '2022-12-13 06:34:46'),
(412, 306, 1, 403, 'Jeffrey Hao Hu, Xingyue Heng', 2, 0, NULL, NULL, 2775.00, 5550.00, 2220.00, 5550.00, 2775.00, 0, 1, '2023-01-05 23:20:23', '2023-01-05 23:21:37'),
(415, 309, 1, 416, 'John Taylor, Cynthia Dommisse', 2, 0, NULL, NULL, 3300.00, 6600.00, 2640.00, 6600.00, 3300.00, 0, 1, '2023-01-10 08:15:27', '2023-01-10 08:20:21'),
(417, 311, 1, 418, 'Richard and Pamela Hinds', 2, 0, NULL, NULL, 3300.00, 6600.00, 2640.00, 6600.00, 3300.00, 0, 1, '2023-01-10 20:06:54', '2023-01-10 20:07:26'),
(429, 316, 1, 310, 'Alejandro velez', 2, 1, 2, NULL, 2775.00, 5550.00, 2220.00, 5550.00, 3468.75, 0, 1, '2023-01-19 17:57:51', '2023-01-19 18:01:37'),
(459, 334, 1, 410, 'Kanley & Vanessa', 2, 0, NULL, NULL, 2775.00, 5550.00, 2220.00, 5550.00, 2775.00, 0, 1, '2023-01-23 21:40:51', '2023-01-23 21:44:32'),
(482, 353, 1, 418, 'Erika Kutrieb', 2, 0, NULL, NULL, 2775.00, 5550.00, 2220.00, 5550.00, 2497.50, 10, 1, '2023-01-30 03:34:52', '2023-01-30 03:36:20'),
(483, 353, 1, 416, 'Benson Kutrieb', 2, 0, NULL, NULL, 2775.00, 5550.00, 2220.00, 5550.00, 2497.50, 10, 1, '2023-01-30 03:34:52', '2023-01-30 03:36:20'),
(486, 356, 1, 403, 'Martin Čarnogursky', 2, 0, NULL, NULL, 2775.00, 5550.00, 2220.00, 5550.00, 2775.00, 0, 1, '2023-01-30 17:51:26', '2023-01-30 17:52:54'),
(552, 422, 1, 305, 'Lucile Orgerit', 2, 0, NULL, NULL, 2775.00, 5550.00, 2220.00, 5550.00, 2775.00, 0, 1, '2023-01-31 17:35:33', '2023-01-31 17:36:32'),
(553, 423, 1, 418, 'Daniel Klein', 2, 0, NULL, NULL, 2775.00, 5550.00, 2220.00, 5550.00, 2775.00, 0, 1, '2023-02-02 04:48:04', '2023-02-02 04:51:25'),
(554, 423, 1, 416, 'Leon Klein', 1, 2, 1, 2, 2775.00, 5550.00, 2220.00, 5550.00, 2913.75, 0, 1, '2023-02-02 04:48:04', '2023-02-02 04:51:25'),
(564, 431, 1, 410, 'Jan Oravec, Shuo Wang', 2, 0, NULL, NULL, 2775.00, 5550.00, 2220.00, 5550.00, 2775.00, 0, 1, '2023-02-05 06:23:38', '2023-02-05 06:24:11'),
(565, 431, 1, 416, 'Diwen Xia, Lianwen Xia', 2, 0, NULL, NULL, 2775.00, 5550.00, 2220.00, 5550.00, 2775.00, 0, 1, '2023-02-05 06:23:38', '2023-02-05 06:24:11'),
(570, 435, 1, 314, 'Ashley De Rosa & Rocco Moschetta', 2, 0, NULL, NULL, 2775.00, 5550.00, 2220.00, 5550.00, 2775.00, 0, 1, '2023-02-09 22:59:42', '2023-02-09 23:02:18'),
(597, 451, 1, 305, 'Heloisa Bagolin, Renato Bernardelli, Martin Bernardelli', 2, 1, 1, NULL, 3700.00, 7400.00, 2960.00, 7400.00, 3700.00, 0, 1, '2023-02-12 22:11:33', '2023-02-12 22:13:22'),
(599, 453, 1, 316, 'Joana Aguiar', 1, 0, NULL, NULL, 3700.00, 7400.00, 2960.00, 7400.00, 2960.00, 0, 1, '2023-02-12 22:41:39', '2023-02-12 22:42:35'),
(602, 456, 1, 410, 'Patrick & Kathleen Wells', 2, 0, NULL, NULL, 4400.00, 8800.00, 3520.00, 8800.00, 4400.00, 0, 1, '2023-02-15 10:10:00', '2023-02-15 10:10:44'),
(603, 457, 1, 403, 'Ash Karia ', 2, 0, NULL, NULL, 2775.00, 5550.00, 2220.00, 5550.00, 2775.00, 0, 1, '2023-02-16 21:38:56', '2023-02-16 21:46:42'),
(609, 461, 1, 314, 'Susan Ly-Gui', 2, 0, NULL, NULL, 2775.00, 5550.00, 2220.00, 5550.00, 2775.00, 0, 1, '2023-02-23 22:00:11', '2023-02-23 22:06:43'),
(610, 461, 1, 316, 'Gwyneth Ly', 2, 0, NULL, NULL, 2775.00, 5550.00, 2220.00, 5550.00, 2775.00, 0, 1, '2023-02-23 22:00:11', '2023-02-23 22:06:43'),
(611, 462, 1, 405, 'Ferran Pacheco / Cristina Bosquet', 2, 0, NULL, NULL, 2775.00, 5550.00, 2220.00, 5550.00, 2775.00, 0, 1, '2023-02-26 23:18:06', '2023-02-26 23:21:31'),
(613, 464, 1, 418, 'Norberto & Anna Benitez', 2, 0, NULL, NULL, 3300.00, 6600.00, 2640.00, 6600.00, 3300.00, 0, 1, '2023-02-27 23:13:02', '2023-02-27 23:13:55'),
(614, 464, 1, 314, 'Jeff Andres & Jameyra Roman', 2, 0, NULL, NULL, 3300.00, 6600.00, 2640.00, 6600.00, 3300.00, 0, 1, '2023-02-27 23:13:02', '2023-02-27 23:13:55'),
(615, 464, 1, 310, 'Mary Daniel & Ann Benitez', 2, 0, NULL, NULL, 3300.00, 6600.00, 2640.00, 6600.00, 3300.00, 0, 1, '2023-02-27 23:13:02', '2023-02-27 23:13:55'),
(621, 470, 1, 403, 'Vishal Tandon, Adhya Pai Tandon', 2, 0, NULL, NULL, 4200.00, 8400.00, 3360.00, 8400.00, 4200.00, 0, 1, '2023-02-28 10:05:53', '2023-02-28 10:07:33'),
(623, 472, 2, 401, 'Neal Colton', 2, 0, NULL, NULL, 5600.00, 11200.00, 4480.00, 11200.00, 11200.00, 0, 1, '2023-03-02 03:49:14', '2023-03-02 03:50:43'),
(624, 473, 1, 418, 'Bill & Kara Colton', 2, 0, NULL, NULL, 5600.00, 11200.00, 4480.00, 11200.00, 5600.00, 0, 1, '2023-03-02 03:54:32', '2023-03-02 03:55:01'),
(625, 473, 1, 416, 'Gabe and Julian Colton', 2, 0, NULL, NULL, 5600.00, 11200.00, 4480.00, 11200.00, 5600.00, 0, 1, '2023-03-02 03:54:32', '2023-03-02 03:55:01'),
(629, 477, 1, 305, 'ANTHONY GIBBONS and FRANCES HORODELSKI', 2, 0, NULL, NULL, 4400.00, 8800.00, 3520.00, 8800.00, 4400.00, 0, 1, '2023-03-03 06:01:32', '2023-03-03 06:03:14'),
(633, 480, 1, 403, 'Ray Steinmetz, & Victoria Corcoran', 2, 0, NULL, NULL, 6000.00, 12000.00, 4800.00, 12000.00, 6000.00, 0, 1, '2023-03-10 22:36:15', '2023-03-10 22:37:48'),
(634, 480, 1, 305, 'Alexandra Steinmetz & Sam Hiltner', 2, 0, NULL, NULL, 6000.00, 12000.00, 4800.00, 12000.00, 6000.00, 0, 1, '2023-03-10 22:36:15', '2023-03-10 22:37:48'),
(635, 480, 1, 314, 'Jesica Steinmetz & Jack Coster', 2, 0, NULL, NULL, 6000.00, 12000.00, 4800.00, 12000.00, 6000.00, 0, 1, '2023-03-10 22:36:15', '2023-03-10 22:37:48'),
(656, 491, 1, 410, 'Mikiya Ito', 2, 0, NULL, NULL, 2775.00, 5550.00, 2220.00, 5550.00, 2775.00, 0, 1, '2023-03-13 17:04:56', '2023-03-13 17:07:46'),
(663, 498, 1, 418, 'Dirk Vander Eyken', 2, 0, NULL, NULL, 3300.00, 6600.00, 2640.00, 6600.00, 3300.00, 0, 1, '2023-03-19 15:00:12', '2023-03-19 15:02:04'),
(664, 499, 1, 416, 'Sophia Schettini y Juan Martin Schettini', 2, 0, NULL, NULL, 4400.00, 8800.00, 3520.00, 8800.00, 3960.00, 10, 1, '2023-03-19 17:39:31', '2023-03-19 17:40:20'),
(665, 499, 1, 418, 'Karina Musa Juri y Juan Jorge Schettini', 2, 0, NULL, NULL, 4400.00, 8800.00, 3520.00, 8800.00, 3960.00, 10, 1, '2023-03-19 17:39:31', '2023-03-19 17:40:20'),
(667, 501, 1, 403, 'Nassrin Golzari', 2, 0, NULL, NULL, 2775.00, 5550.00, 2220.00, 5550.00, 971.25, 65, 1, '2023-03-20 21:03:03', '2023-03-20 21:04:19'),
(671, 505, 1, 314, 'Eden and Jacqlin Hall', 2, 0, NULL, NULL, 4400.00, 8800.00, 3520.00, 8800.00, 4400.00, 0, 1, '2023-03-23 15:08:15', '2023-03-23 15:09:22'),
(677, 511, 1, 403, 'Arthur Lin', 2, 0, NULL, NULL, 2775.00, 5550.00, 2220.00, 5550.00, 2775.00, 0, 1, '2023-03-27 10:56:51', '2023-03-27 10:57:58'),
(695, 529, 1, 305, 'HIROSHI ', 2, 0, NULL, NULL, 4500.00, 9000.00, 3600.00, 9000.00, 4500.00, 0, 1, '2023-03-28 14:45:40', '2023-03-28 14:47:08'),
(701, 532, 1, 418, 'moemen maria kenzy', 2, 1, 1, NULL, 2775.00, 5550.00, 2220.00, 5550.00, 2497.50, 10, 1, '2023-03-30 19:11:04', '2023-03-30 19:12:54'),
(702, 532, 1, 403, 'amjad yusra yusuf', 2, 1, 1, NULL, 2775.00, 5550.00, 2220.00, 5550.00, 2497.50, 10, 1, '2023-03-30 19:11:04', '2023-03-30 19:12:54'),
(703, 532, 1, 314, 'anasa humra zayd', 2, 1, 2, NULL, 2775.00, 5550.00, 2220.00, 5550.00, 3121.88, 10, 1, '2023-03-30 19:11:04', '2023-03-30 19:12:54'),
(704, 532, 1, 305, 'asiya ashraf zara', 2, 1, 2, NULL, 2775.00, 5550.00, 2220.00, 5550.00, 3121.88, 10, 1, '2023-03-30 19:11:04', '2023-03-30 19:12:54'),
(719, 540, 1, 410, 'Usman Mazhar', 2, 0, NULL, NULL, 2775.00, 5550.00, 2220.00, 5550.00, 2775.00, 0, 1, '2023-04-07 04:11:18', '2023-04-07 04:12:29'),
(720, 540, 1, 416, 'Christina Kang', 2, 0, NULL, NULL, 2775.00, 5550.00, 2220.00, 5550.00, 2775.00, 0, 1, '2023-04-07 04:11:18', '2023-04-07 04:12:29'),
(724, 542, 1, 403, 'Jodi Kasper', 2, 0, NULL, NULL, 4400.00, 8800.00, 3520.00, 8800.00, 4400.00, 0, 1, '2023-04-08 23:28:03', '2023-04-08 23:30:12'),
(761, 570, 1, 416, 'Seiyu Hosono & Masayo Kawaguchi', 2, 0, NULL, NULL, 3300.00, 6600.00, 2640.00, 6600.00, 3300.00, 0, 1, '2023-04-13 20:18:31', '2023-04-13 20:19:50'),
(775, 584, 1, 310, 'Peggy Reilly Tharp, Matthew Tharp', 2, 0, NULL, NULL, 3700.00, 7400.00, 2960.00, 7400.00, 3700.00, 0, 1, '2023-04-24 07:16:05', '2023-04-24 07:17:21'),
(784, 593, 1, 403, 'Sabrina Spruill', 1, 0, NULL, NULL, 3300.00, 6600.00, 2640.00, 6600.00, 2640.00, 0, 1, '2023-05-04 20:06:03', '2023-05-04 20:16:47'),
(810, 605, 1, 418, 'Kartikey Agarwal Shivani Singh', 2, 0, NULL, NULL, 4400.00, 8800.00, 3520.00, 8800.00, 4400.00, 0, 1, '2023-06-02 21:33:08', '2023-06-02 21:34:54'),
(811, 605, 1, 416, 'Karmanya Agarwal Arjun Agarwal', 2, 0, NULL, NULL, 4400.00, 8800.00, 3520.00, 8800.00, 4400.00, 0, 1, '2023-06-02 21:33:08', '2023-06-02 21:34:54'),
(812, 606, 1, 406, 'Michael Holscher', 2, 0, NULL, NULL, 3300.00, 6600.00, 2640.00, 6600.00, 3300.00, 0, 1, '2023-06-03 02:45:55', '2023-06-03 02:46:57'),
(814, 608, 1, 410, 'Erik Tame Chidan ', 2, 0, NULL, NULL, 4400.00, 8800.00, 3520.00, 8800.00, 4400.00, 0, 1, '2023-06-10 00:47:11', '2023-06-10 00:48:46'),
(816, 610, 1, 416, 'Ana Newell Ayoub', 2, 0, NULL, NULL, 2775.00, 5550.00, 2220.00, 5550.00, 2775.00, 0, 1, '2023-06-10 10:49:38', '2023-06-10 10:50:31'),
(817, 611, 1, 410, 'Alex Costantini', 2, 0, NULL, NULL, 2775.00, 5550.00, 2220.00, 5550.00, 2497.50, 10, 1, '2023-06-12 01:16:51', '2023-06-12 01:17:18'),
(824, 616, 1, 410, 'Summer Mills', 2, 0, NULL, NULL, 5600.00, 11200.00, 4480.00, 11200.00, 5600.00, 0, 1, '2023-06-19 02:13:35', '2023-06-19 02:14:30'),
(835, 623, 1, 410, 'Stephen and Belinda Paddon', 2, 0, NULL, NULL, 8470.00, 16940.00, 6775.00, 16940.00, 8470.00, 0, 1, '2023-06-25 12:10:56', '2023-06-25 12:13:06'),
(840, 627, 1, 314, 'TAKAAKI HAYAMA', 1, 0, NULL, NULL, 3630.00, 7620.00, 2905.00, 7620.00, 2905.00, 0, 1, '2023-07-01 17:14:48', '2023-07-01 17:16:25'),
(845, 631, 1, 416, 'SORAYA', 2, 0, NULL, NULL, 3630.00, 7620.00, 2905.00, 7620.00, 3630.00, 0, 1, '2023-07-06 19:54:32', '2023-07-06 20:01:25'),
(872, 645, 1, 314, 'Satpreet and Navneet Sekhon', 2, 0, NULL, NULL, 3630.00, 7620.00, 2905.00, 7620.00, 3630.00, 0, 1, '2023-07-10 10:22:57', '2023-07-10 10:23:52'),
(873, 645, 1, 410, 'Dheeraj Kamra and Rekha Kamra', 2, 0, NULL, NULL, 3630.00, 7620.00, 2905.00, 7620.00, 3630.00, 0, 1, '2023-07-10 10:22:57', '2023-07-10 10:23:52'),
(883, 654, 1, 418, 'Saugata Gupta, Reema Sen', 2, 0, NULL, NULL, 4500.00, 9000.00, 3600.00, 9000.00, 4500.00, 0, 1, '2023-07-18 19:47:58', '2023-07-18 19:49:19'),
(884, 654, 1, 416, 'Sanjana Gupta', 1, 0, NULL, NULL, 4500.00, 9000.00, 3600.00, 9000.00, 3600.00, 0, 1, '2023-07-18 19:47:58', '2023-07-18 19:49:19'),
(894, 664, 1, 416, 'Lucien Back and Warren Bridges', 2, 0, NULL, NULL, 4840.00, 9680.00, 3875.00, 9680.00, 4840.00, 0, 1, '2023-08-03 00:30:25', '2023-08-03 00:33:51'),
(895, 17, 1, 410, 'Quia quis sint volu', 1, 0, 5, 6, 1.00, 1.00, 1.00, 1.00, 1.00, 0, NULL, '2023-08-27 10:37:02', '2023-08-27 10:37:02'),
(896, 18, 1, 410, 'Quia quis sint volu', 1, 0, 5, 6, 1.00, 1.00, 1.00, 1.00, 1.00, 0, NULL, '2023-08-27 10:38:58', '2023-08-27 10:38:58'),
(897, 19, 1, 410, 'Quia quis sint volu', 1, 0, 5, 6, 1.00, 1.00, 1.00, 1.00, 1.00, 0, NULL, '2023-08-28 08:52:48', '2023-08-28 08:52:48'),
(898, 20, 1, 410, 'Quia quis sint volu', 1, 0, 5, 6, 1.00, 1.00, 1.00, 1.00, 1.00, 0, NULL, '2023-08-28 08:53:48', '2023-08-28 08:53:48'),
(899, 21, 1, 410, 'Quia quis sint volu', 1, 0, 5, 6, 1.00, 1.00, 1.00, 1.00, 1.00, 0, NULL, '2023-10-10 05:19:40', '2023-10-10 05:19:40');

-- --------------------------------------------------------

--
-- Table structure for table `additional_trips`
--

CREATE TABLE `additional_trips` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `img` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `additional_trips`
--

INSERT INTO `additional_trips` (`id`, `price`, `img`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 600.00, 'Admins/iAgw8Q7xYanOvzmG5qardd0gDOu0iUZ8vpGJpbBO.jpg', '2023-08-21 11:11:30', '2023-08-21 11:11:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `additional_trip_translations`
--

CREATE TABLE `additional_trip_translations` (
  `trans_id` int(10) UNSIGNED NOT NULL,
  `additional_trip_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(2) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `additional_trip_translations`
--

INSERT INTO `additional_trip_translations` (`trans_id`, `additional_trip_id`, `locale`, `name`, `location`, `details`) VALUES
(9, 3, 'en', 'Engkish', 'Cairo', 'Testing'),
(10, 3, 'es', 'Spain', 'Spain', 'Testing');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bollares', 'doctor-admin@email.com', NULL, '$2y$10$eN2p5kNxVBrbfPPtvUkjieF18uVEW4F.96cPdkMixMV52.BZKoYFa', NULL, '2023-07-17 08:15:44', '2023-07-17 08:15:44'),
(2, 'Admin Admin', 'admin@email.com', NULL, '$2y$10$ypgHzuorK8PhDCID1tDZM.Mz1psomkCf6ys5pFSCPWlWy68w9B/QS', NULL, '2023-08-13 06:45:43', '2023-10-31 21:09:06'),
(3, 'editor', 'editor@email.com', NULL, '$2y$10$VHuFiRfD8i3fjYU6Ty9ImufSfGF6Ewdks5Kx1.xmy5g1vlIIleGGG', NULL, '2023-08-13 06:46:18', '2023-08-13 06:46:18');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `updated_at`) VALUES
(3, '2023-10-30 16:28:50', '2023-10-30 16:28:50'),
(4, '2023-10-30 16:29:30', '2023-10-30 16:29:30'),
(5, '2023-10-30 16:30:03', '2023-10-30 16:30:03'),
(6, '2023-10-30 16:30:33', '2023-10-30 16:30:33');

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(2) NOT NULL,
  `title` text NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `locale`, `title`, `description`, `created_at`, `updated_at`) VALUES
(7, 3, 'en', 'Cabin', 'Cabin', NULL, NULL),
(8, 3, 'es', 'Cabin', 'Cabin', NULL, NULL),
(9, 3, 'pt', 'Cabin', 'Cabin', NULL, NULL),
(10, 4, 'en', 'Entertainment', 'Enterrainment', NULL, NULL),
(11, 4, 'es', 'Entertainment', 'Enterrainment', NULL, NULL),
(12, 4, 'pt', 'Entertainment', 'Enterrainment', NULL, NULL),
(13, 5, 'en', 'Food and Drinks', 'Food and Drinks', NULL, NULL),
(14, 5, 'es', 'Food and Drinks', 'Food and Drinks', NULL, NULL),
(15, 5, 'pt', 'Food and Drinks', 'Food and Drinks', NULL, NULL),
(16, 6, 'en', 'Bathroom', 'Bathroom', NULL, NULL),
(17, 6, 'es', 'Bathroom', 'Bathroom', NULL, NULL),
(18, 6, 'pt', 'Bathroom', 'Bathroom', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `conditions`
--

CREATE TABLE `conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conditions`
--

INSERT INTO `conditions` (`id`, `created_at`, `updated_at`) VALUES
(2, '2023-10-23 11:09:05', '2023-10-23 11:09:05'),
(3, '2023-10-30 16:22:29', '2023-10-30 16:22:29'),
(4, '2023-10-30 16:22:59', '2023-10-30 16:22:59'),
(5, '2023-10-30 16:23:38', '2023-10-30 16:23:38'),
(6, '2023-10-30 16:24:41', '2023-10-30 16:24:41'),
(7, '2023-10-30 16:25:18', '2023-10-30 16:25:18'),
(8, '2023-10-30 16:25:49', '2023-10-30 16:25:49'),
(9, '2023-10-30 16:27:14', '2023-10-30 16:27:14');

-- --------------------------------------------------------

--
-- Table structure for table `condition_translations`
--

CREATE TABLE `condition_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `condition_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `condition_translations`
--

INSERT INTO `condition_translations` (`id`, `condition_id`, `locale`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 2, 'en', 'Test Condition English', 'Test Condition&nbsp;&nbsp;English', NULL, NULL),
(2, 2, 'es', 'Test Condition Sp', 'Test Condition&nbsp; Sp', NULL, NULL),
(3, 2, 'pt', 'Test Condition Pt', 'Test Condition Pt', NULL, NULL),
(4, 3, 'en', 'Responsibility', 'Purchaser acknowledges that AQUA THE DAHABEYA does not own, control, maintain or supervise any airlines, air carriers, motor coaches, taxis, ground carriers, hotels, restaurants, tour operators, sightseeing tours facilities, or other transportation, products, activities or services provided Pursuant to this Voucher, nor their providers or employees. Purchaser acknowledges and agrees that each such provider is an independent contractor who is not and shall not be considered an agent of AQUA THE DAHABEYA and that AQUA THE DAHABEYA makes no warranty or other representation regarding the suitability or safety of such providers or their conveyances, activities , facilities, products or services. All personal property and personal effects shall be at \"owner\'s risk\" at all times, and AQUA THE DAHABEYA shall not be responsible for any such property or personal effects. Purchasers are careful against the risk of leaving personal articles in their cabins, suites, or on conveyances. AQUA THE DAHABEYA does not assume any responsibility or liability for any items or personal effects lost or damaged during any activity. Lastly, in arranging for the transportation of passengers, excursions, hotels, accommodations, food, lodging, or any other activities, facilities, products, or services provided in connection with this Voucher, AQUA THE DAHABEYA does so only as a convenience to the Purchaser . Purchaser acknowledges and agrees that AQUA THE DAHABEYA shall not be responsible or liable for any loss, damage, injury, death, or other claim.', NULL, NULL),
(5, 3, 'es', 'Responsibility', 'Purchaser acknowledges that AQUA THE DAHABEYA does not own, control, maintain or supervise any airlines, air carriers, motor coaches, taxis, ground carriers, hotels, restaurants, tour operators, sightseeing tours facilities, or other transportation, products, activities or services provided Pursuant to this Voucher, nor their providers or employees. Purchaser acknowledges and agrees that each such provider is an independent contractor who is not and shall not be considered an agent of AQUA THE DAHABEYA and that AQUA THE DAHABEYA makes no warranty or other representation regarding the suitability or safety of such providers or their conveyances, activities , facilities, products or services. All personal property and personal effects shall be at \"owner\'s risk\" at all times, and AQUA THE DAHABEYA shall not be responsible for any such property or personal effects. Purchasers are careful against the risk of leaving personal articles in their cabins, suites, or on conveyances. AQUA THE DAHABEYA does not assume any responsibility or liability for any items or personal effects lost or damaged during any activity. Lastly, in arranging for the transportation of passengers, excursions, hotels, accommodations, food, lodging, or any other activities, facilities, products, or services provided in connection with this Voucher, AQUA THE DAHABEYA does so only as a convenience to the Purchaser . Purchaser acknowledges and agrees that AQUA THE DAHABEYA shall not be responsible or liable for any loss, damage, injury, death, or other claim.', NULL, NULL),
(6, 3, 'pt', 'Responsibility', 'Purchaser acknowledges that AQUA THE DAHABEYA does not own, control, maintain or supervise any airlines, air carriers, motor coaches, taxis, ground carriers, hotels, restaurants, tour operators, sightseeing tours facilities, or other transportation, products, activities or services provided Pursuant to this Voucher, nor their providers or employees. Purchaser acknowledges and agrees that each such provider is an independent contractor who is not and shall not be considered an agent of AQUA THE DAHABEYA and that AQUA THE DAHABEYA makes no warranty or other representation regarding the suitability or safety of such providers or their conveyances, activities , facilities, products or services. All personal property and personal effects shall be at \"owner\'s risk\" at all times, and AQUA THE DAHABEYA shall not be responsible for any such property or personal effects. Purchasers are careful against the risk of leaving personal articles in their cabins, suites, or on conveyances. AQUA THE DAHABEYA does not assume any responsibility or liability for any items or personal effects lost or damaged during any activity. Lastly, in arranging for the transportation of passengers, excursions, hotels, accommodations, food, lodging, or any other activities, facilities, products, or services provided in connection with this Voucher, AQUA THE DAHABEYA does so only as a convenience to the Purchaser . Purchaser acknowledges and agrees that AQUA THE DAHABEYA shall not be responsible or liable for any loss, damage, injury, death, or other claim.', NULL, NULL),
(7, 4, 'en', 'Prices', 'Prices for this Ground package are on a full board meal plan basis and include water and hot drinks. Incidental services, including laundry, room service, mini bar, alcoholic and soft drinks, spa, shops, medical and any other services outside the booked package, are not included in the price. Prices are quoted in Egyptian Pounds, including all taxes and applicable charges, with no hidden fees included. Prices are subject to change without notice.', NULL, NULL),
(8, 4, 'es', 'Prices', 'Prices for this Ground package are on a full board meal plan basis and include water and hot drinks. Incidental services, including laundry, room service, mini bar, alcoholic and soft drinks, spa, shops, medical and any other services outside the booked package, are not included in the price. Prices are quoted in Egyptian Pounds, including all taxes and applicable charges, with no hidden fees included. Prices are subject to change without notice.', NULL, NULL),
(9, 4, 'pt', 'Prices', 'Prices for this Ground package are on a full board meal plan basis and include water and hot drinks. Incidental services, including laundry, room service, mini bar, alcoholic and soft drinks, spa, shops, medical and any other services outside the booked package, are not included in the price. Prices are quoted in Egyptian Pounds, including all taxes and applicable charges, with no hidden fees included. Prices are subject to change without notice.', NULL, NULL),
(10, 5, 'en', 'Payment', '<div>None refundable 50% of the payment amount will be charged upon booking. The rest of the payment is due 90 days before the embarkation date.</div><div><br></div><div>The rest of the payment is due 90 days before the embarkation date.</div>', NULL, NULL),
(11, 5, 'es', 'Payment', '<div>None refundable 50% of the payment amount will be charged upon booking. The rest of the payment is due 90 days before the embarkation date.</div><div><br></div><div>The rest of the payment is due 90 days before the embarkation date.</div>', NULL, NULL),
(12, 5, 'pt', 'Payment', '<div>None refundable 50% of the payment amount will be charged upon booking. The rest of the payment is due 90 days before the embarkation date.</div><div><br></div><div>The rest of the payment is due 90 days before the embarkation date.</div>', NULL, NULL),
(13, 6, 'en', 'Cancellations', '<div>Reservations canceled 90-31 before arrival will be charged 50% cancellation fees.</div><div><br></div><div>Reservations canceled 30 days before arrival will be charged 100% of the due amount.</div><div><br></div><div>Different cancellation policies may apply for peak travel periods and some departures. Always refer to the booking confirmation form. · In case of a no-show, the total amount will be charged as cancellation fees.</div><div><br></div><div>· In case of a no-show, the total amount will be charged as cancellation fees.</div><div><br></div><div>· In case of Force Majeure cases such as war, strike, riot, epidemic, sudden legal changes, or any other reason beyond T/A well, no cancellation fees will be applied</div><div><br></div><div>In the event of strikes, lockouts, civil disturbances, weather, or any other reason beyond its control or the interests of the safety and/or comfort of Purchaser or others, AQUA THE DAHABEYA may, at its sole discretion, cancel any services provided hereunder and may, but is not obligated to, offer substitute hotels or services and shall not be liable for any loss whatsoever to the purchaser because of such cancellation or substitution.</div>', NULL, NULL),
(14, 6, 'es', 'Cancellations', '<div>Reservations canceled 90-31 before arrival will be charged 50% cancellation fees.</div><div><br></div><div>Reservations canceled 30 days before arrival will be charged 100% of the due amount.</div><div><br></div><div>Different cancellation policies may apply for peak travel periods and some departures. Always refer to the booking confirmation form. · In case of a no-show, the total amount will be charged as cancellation fees.</div><div><br></div><div>· In case of a no-show, the total amount will be charged as cancellation fees.</div><div><br></div><div>· In case of Force Majeure cases such as war, strike, riot, epidemic, sudden legal changes, or any other reason beyond T/A well, no cancellation fees will be applied</div><div><br></div><div>In the event of strikes, lockouts, civil disturbances, weather, or any other reason beyond its control or the interests of the safety and/or comfort of Purchaser or others, AQUA THE DAHABEYA may, at its sole discretion, cancel any services provided hereunder and may, but is not obligated to, offer substitute hotels or services and shall not be liable for any loss whatsoever to the purchaser because of such cancellation or substitution.</div>', NULL, NULL),
(15, 6, 'pt', 'Cancellations', '<div>Reservations canceled 90-31 before arrival will be charged 50% cancellation fees.</div><div><br></div><div>Reservations canceled 30 days before arrival will be charged 100% of the due amount.</div><div><br></div><div>Different cancellation policies may apply for peak travel periods and some departures. Always refer to the booking confirmation form. · In case of a no-show, the total amount will be charged as cancellation fees.</div><div><br></div><div>· In case of a no-show, the total amount will be charged as cancellation fees.</div><div><br></div><div>· In case of Force Majeure cases such as war, strike, riot, epidemic, sudden legal changes, or any other reason beyond T/A well, no cancellation fees will be applied</div><div><br></div><div>In the event of strikes, lockouts, civil disturbances, weather, or any other reason beyond its control or the interests of the safety and/or comfort of Purchaser or others, AQUA THE DAHABEYA may, at its sole discretion, cancel any services provided hereunder and may, but is not obligated to, offer substitute hotels or services and shall not be liable for any loss whatsoever to the purchaser because of such cancellation or substitution.</div>', NULL, NULL),
(16, 7, 'en', 'Children Policy', '<div>Children of all ages are welcome onboard. Interconnected Luxury Cabins are available for families. Extra beds and baby cots can be provided in Royal Suites.</div><div><br></div><div>Charter bookings: The charter price includes the children’s accommodation.</div><div><br></div><div>FIT bookings, children aged 7-12 will be charged 50% off the rates per person in a double Luxury Cabin (available in Suites only). Two children under 12 years old and two adults will be accommodated in two cabins and charged one double and one single cabin rate. Children 12 years of age and over will be charged full fare.</div>', NULL, NULL),
(17, 7, 'es', 'Children Policy', '<div>Children of all ages are welcome onboard. Interconnected Luxury Cabins are available for families. Extra beds and baby cots can be provided in Royal Suites.</div><div><br></div><div>Charter bookings: The charter price includes the children’s accommodation.</div><div><br></div><div>FIT bookings, children aged 7-12 will be charged 50% off the rates per person in a double Luxury Cabin (available in Suites only). Two children under 12 years old and two adults will be accommodated in two cabins and charged one double and one single cabin rate. Children 12 years of age and over will be charged full fare.</div>', NULL, NULL),
(18, 7, 'pt', 'Children Policy', '<div>Children of all ages are welcome onboard. Interconnected Luxury Cabins are available for families. Extra beds and baby cots can be provided in Royal Suites.</div><div><br></div><div>Charter bookings: The charter price includes the children’s accommodation.</div><div><br></div><div>FIT bookings, children aged 7-12 will be charged 50% off the rates per person in a double Luxury Cabin (available in Suites only). Two children under 12 years old and two adults will be accommodated in two cabins and charged one double and one single cabin rate. Children 12 years of age and over will be charged full fare.</div>', NULL, NULL),
(19, 8, 'en', 'Enforceability', 'Purchaser acknowledges and agrees that the terms and conditions herein are contractual and binding, not a mere recital. By accepting these conditions, the purchaser agrees to its terms and conditions.', NULL, NULL),
(20, 8, 'es', 'Enforceability', 'Purchaser acknowledges and agrees that the terms and conditions herein are contractual and binding, not a mere recital. By accepting these conditions, the purchaser agrees to its terms and conditions.', NULL, NULL),
(21, 8, 'pt', 'Enforceability', 'Purchaser acknowledges and agrees that the terms and conditions herein are contractual and binding, not a mere recital. By accepting these conditions, the purchaser agrees to its terms and conditions.', NULL, NULL),
(22, 9, 'en', 'Security and Non-confidentiality', 'Electronic data transmissions, including the Internet, are public media, and any use of such media is public, not private. Information related to or arising from such use is either public or the property of those collecting the information and not personal or private information.', NULL, NULL),
(23, 9, 'es', 'Security and Non-confidentiality', 'Electronic data transmissions, including the Internet, are public media, and any use of such media is public, not private. Information related to or arising from such use is either public or the property of those collecting the information and not personal or private information.', NULL, NULL),
(24, 9, 'pt', 'Security and Non-confidentiality', 'Electronic data transmissions, including the Internet, are public media, and any use of such media is public, not private. Information related to or arising from such use is either public or the property of those collecting the information and not personal or private information.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `title` text NOT NULL,
  `subject` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `title`, `subject`, `created_at`, `updated_at`) VALUES
(1, 'M Mohsen', 'm.mohsen@gmail.com', 'title', 'this is subject', '2023-08-07 05:42:13', '2023-08-07 05:42:13'),
(2, 'Osama', 'Osam@gmail.com', 'Message', 'Message', '2023-10-30 16:52:18', '2023-10-30 16:52:18'),
(3, 'ana', 'elitriby@gmail.com', 'moham', 'anajdbjh', '2023-10-30 16:58:11', '2023-10-30 16:58:11'),
(4, 'ana', 'elitriby@gmail.com', 'moham', 'anajdbjh', '2023-10-30 17:08:55', '2023-10-30 17:08:55'),
(5, 'hwjhwwh', 'jdhdhj@gmail.com', 'edkjwkjwj', 'ekjekjejk', '2023-10-30 18:29:43', '2023-10-30 18:29:43');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, '2023-08-16 09:18:52', '2023-08-16 09:18:52', NULL),
(5, '2023-08-16 09:47:53', '2023-08-16 09:52:36', '2023-08-16 09:52:36'),
(6, '2023-08-27 05:05:16', '2023-08-27 05:05:16', NULL),
(7, '2023-08-27 05:05:46', '2023-08-27 05:06:38', '2023-08-27 05:06:38'),
(8, '2023-10-31 21:12:04', '2023-10-31 21:12:47', '2023-10-31 21:12:47');

-- --------------------------------------------------------

--
-- Table structure for table `country_translations`
--

CREATE TABLE `country_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country_translations`
--

INSERT INTO `country_translations` (`id`, `country_id`, `locale`, `name`) VALUES
(1, 4, 'en', 'Egypt'),
(2, 4, 'es', 'Egypt edit'),
(3, 4, 'pt', 'Egypt edit'),
(4, 5, 'en', 'Test'),
(5, 5, 'es', 'Test'),
(6, 5, 'pt', 'Test'),
(7, 6, 'en', 'Spain'),
(8, 6, 'es', 'Spain'),
(9, 6, 'pt', 'Spain'),
(10, 7, 'en', 'Test Country edit'),
(11, 7, 'es', 'Test Country edit'),
(12, 7, 'pt', 'Test Country edit'),
(13, 8, 'en', 'Spain Edit'),
(14, 8, 'es', 'SpainEdit esp'),
(15, 8, 'pt', 'Spain');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `photo`, `created_at`, `updated_at`) VALUES
(44, '1691326769.LOGO-01.png', '2023-08-06 09:59:29', '2023-08-06 09:59:29'),
(46, '1691391982.LOGO-04.png', '2023-08-07 04:06:22', '2023-08-07 04:06:22'),
(63, '1691658700.social-media(1)1.png', '2023-08-10 06:11:41', '2023-08-10 06:11:41'),
(64, '1691658701.success1.png', '2023-08-10 06:11:41', '2023-08-10 06:11:41'),
(66, '1691658708.news1.png', '2023-08-10 06:11:48', '2023-08-10 06:11:48'),
(68, '1691658709.football1.png', '2023-08-10 06:11:49', '2023-08-10 06:11:49');

-- --------------------------------------------------------

--
-- Table structure for table `infos`
--

CREATE TABLE `infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `infos`
--

INSERT INTO `infos` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2, 'Key', 'Value', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `metas`
--

CREATE TABLE `metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metas`
--

INSERT INTO `metas` (`id`, `name`, `created_at`, `updated_at`) VALUES
(4, 'Metas update', '2023-08-17 06:23:03', '2023-08-17 06:48:50');

-- --------------------------------------------------------

--
-- Table structure for table `meta_translations`
--

CREATE TABLE `meta_translations` (
  `trans_id` int(10) UNSIGNED NOT NULL,
  `meta_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(2) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `keywords` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_translations`
--

INSERT INTO `meta_translations` (`trans_id`, `meta_id`, `locale`, `title`, `description`, `keywords`) VALUES
(10, 4, 'en', 'Metas update', 'play', 'Metas update'),
(11, 4, 'es', 'Metas update', 'play', 'Metas update'),
(12, 4, 'pt', 'Metas update', 'play', 'Metas update');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_17_105828_create_admins_table', 1),
(6, '2023_07_18_071923_create_permission_tables', 2),
(10, '2023_08_01_122448_create_social_media_table', 4),
(11, '2023_08_01_131054_create_coupons_table', 5),
(12, '2023_08_03_091155_create_sliders_table', 6),
(13, '2023_08_06_060910_create_settings_table', 7),
(14, '2023_08_06_073547_create_setting_translations_table', 8),
(15, '2023_08_06_082518_create_galleries_table', 9),
(16, '2023_08_07_072835_create_contact_us_table', 10),
(17, '2023_08_07_100259_create_pages_table', 11),
(18, '2023_08_07_100342_create_page_translations_table', 12),
(20, '2023_08_08_060743_create_facilites_table', 13),
(22, '2023_08_08_061549_create_facilite_translations_table', 15),
(23, '2023_08_08_110724_create_side_seeings_table', 16),
(24, '2023_08_08_110804_create_side_seeing_photos_table', 17),
(25, '2023_08_08_111422_create_side_seeing_translations_table', 18),
(26, '2023_08_13_100124_create_slider_translations_table', 19),
(27, '2023_08_14_091553_create_subscribers_table', 20),
(28, '2023_08_14_111524_create_newsletters_table', 21),
(29, '2023_08_14_113737_create_jobs_table', 22),
(30, '2023_08_16_094038_create_countries_table', 23),
(32, '2023_08_16_114626_create_country_translations_table', 24),
(33, '2023_08_16_134500_create_metas_table', 25),
(34, '2023_08_16_180944_create_meta_translations_table', 25),
(35, '2023_08_17_064912_create_infos_table', 26),
(36, '2023_08_17_101948_create_decks_table', 27),
(37, '2023_08_17_104818_create_deck_translations_table', 28),
(38, '2023_08_19_174156_create_partners_table', 29),
(39, '2023_08_20_094628_create_trip_categories_table', 30),
(40, '2023_08_20_101539_create_trip_category_translations_table', 31),
(41, '2023_08_20_130338_create_trips_table', 32),
(42, '2023_08_21_071606_create_reservations_table', 33),
(43, '2023_08_21_095043_create_additional_trips_table', 34),
(44, '2023_08_21_100806_create_additional_trip_translations_table', 35),
(45, '2023_08_22_072135_create_itineraries_table', 36),
(46, '2023_08_22_095620_create_itinerary_details_table', 37),
(47, '2023_08_22_103038_create_itineraries_table', 38),
(48, '2023_08_22_103233_create_itinerary_details_table', 39),
(49, '2023_08_22_103340_create_itinerary_detail_translations_table', 40),
(50, '2023_08_23_070059_create_uniques_table', 41),
(51, '2023_08_23_073102_create_uniques_table', 42),
(52, '2023_08_23_073236_create_unique_translations_table', 43),
(53, '2023_08_23_095832_create_open_dates_table', 44),
(54, '2023_08_23_110555_create_open_date_table', 45),
(55, '2023_08_23_110914_create_open_dates_table', 46),
(56, '2023_08_27_095744_create_accommodations_tables', 47),
(57, '2023_08_27_100107_create_accommodations_table', 48),
(58, '2023_08_27_101504_create_coupon_users_table', 49),
(59, '2023_08_27_102811_create_reserved_additional_trips_table', 50),
(60, '2023_10_04_100725_create_inspiration_table', 51),
(61, '2023_10_04_101058_create_inspiration_translations_table', 52),
(64, '2023_10_17_104704_create_page_photos_table', 53),
(65, '2023_10_18_091122_create_overviews_table', 54),
(66, '2023_10_18_095910_create_overview_translations_table', 55),
(67, '2023_10_18_112115_create_dinings_table', 56),
(68, '2023_10_18_112812_create_dining_translations_table', 57),
(69, '2023_10_18_122141_create_overviews_table', 58),
(70, '2023_10_18_122245_create_overview_translations_table', 59),
(71, '2023_10_18_123401_create_overview_photos', 60),
(73, '2023_10_18_125329_create_diings_table', 61),
(74, '2023_10_18_130413_create_table_dining', 62),
(75, '2023_10_18_130615_create_dining_table', 63),
(76, '2023_10_18_130911_create_dinings_table', 64),
(77, '2023_10_18_131022_create_dining_translations_table', 65),
(78, '2023_10_18_131133_create_dining_photos_table', 66),
(79, '2023_10_18_134822_create_experiences_table', 67),
(80, '2023_10_18_141447_create_experience_translations_table', 68),
(81, '2023_10_18_141936_create_experience_photos_table', 69),
(82, '2023_10_18_145258_create_cabins_table', 70),
(83, '2023_10_18_145545_create_cabin_translations_table', 71),
(84, '2023_10_18_145758_create_cabin_photos_table', 72),
(86, '2023_10_22_084728_create_inspirations_table', 73),
(87, '2023_10_22_085130_create_inspiration_translations_table', 74),
(88, '2023_10_22_090131_create_inspiration_photos_table', 75),
(89, '2023_08_08_111422_create_categories_table', 76),
(90, '2023_10_22_103925_create_categories_table', 77),
(91, '2023_10_22_104436_create_category_translations_table', 78),
(92, '2023_08_01_131054_create_categories_table', 79),
(93, '2023_08_01_131054_create_category_translations_table', 80),
(94, '2023_10_22_132753_create_facilites_table', 81),
(95, '2023_10_22_133055_create_facilite_translations_table', 82),
(96, '2023_10_22_143337_create_cabin_facilite_pivot_table', 83),
(97, '2023_10_23_132418_create_conditions_table', 84),
(99, '2023_10_23_133423_create_condition_translations_table', 85),
(100, '2023_10_24_095630_create_cabin_category_pivot', 86),
(105, '2023_10_25_095721_create_escapades_table', 91),
(106, '2023_10_25_100535_create_escapade_translations_table', 92),
(107, '2023_10_25_101348_create_escapade_photos_table', 93),
(110, '2023_10_25_104744_create_escapade_details_table', 94),
(111, '2023_10_25_105414_create_escapade_detail_translations_table', 95),
(112, '2023_10_25_110231_create_escapade_detai_photos_table', 96),
(113, '2023_10_24_132330_create_inspiration_details_table', 97),
(114, '2023_10_24_133748_create_inspiration_detail_photos_table', 98),
(115, '2023_10_24_181925_create_inspirat_detail_translations_table', 99),
(116, '2023_10_30_085129_create_cabinfeatures_table', 100),
(117, '2023_10_30_091020_create_cabin_feature_translations', 101),
(118, '2023_10_30_103800_create_questions_table', 102),
(119, '2023_10_30_104539_create_question_translations_table', 103),
(121, '2023_08_08_060825_create_facilite_photos_table', 104),
(122, '2023_11_01_135514_create_about_us_table', 105),
(123, '2023_11_01_143159_create_about_us_translations_table', 106),
(124, '2023_11_02_123220_create_services_table', 107),
(125, '2023_11_02_124458_create_service_translations_table', 108);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1),
(2, 'App\\Models\\Admin', 2),
(4, 'App\\Models\\Admin', 3);

-- --------------------------------------------------------

--
-- Table structure for table `overviews`
--

CREATE TABLE `overviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `overviews`
--

INSERT INTO `overviews` (`id`, `photo`, `url`, `created_at`, `updated_at`) VALUES
(9, 'Admins/hnOR2sGlr4n3N7qIkPXzGjH5dLekCtlAHkxsvgFC.jpg', NULL, '2023-11-01 10:58:12', '2023-11-01 10:58:12'),
(11, NULL, 'https://www.youtube.com/watch?v=bwx2Z69S0YA', '2023-11-02 07:32:11', '2023-11-02 09:40:14'),
(12, 'Admins/ltTTqJiXB7KpAecGTjJipYX5J3bMneCbq8hoVqAq.jpg', NULL, '2023-11-02 09:18:52', '2023-11-02 09:40:01');

-- --------------------------------------------------------

--
-- Table structure for table `overview_translations`
--

CREATE TABLE `overview_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `overview_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(2) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `overview_translations`
--

INSERT INTO `overview_translations` (`id`, `overview_id`, `locale`, `title`, `description`, `created_at`, `updated_at`) VALUES
(22, 9, 'en', 'Test Overview Edit', '&nbsp;Test Overview Edit&nbsp;', NULL, NULL),
(23, 9, 'ar', 'صفحة مزاد مزادي تعديل', 'صفحة مزاد مزادي', NULL, NULL),
(24, 10, 'en', 'Test Overview', 'Test Overview&nbsp; Add&nbsp;', NULL, NULL),
(25, 10, 'ar', 'صفحة مزاد مزادي', 'صفحة مزاد مزادي', NULL, NULL),
(26, 11, 'en', 'Test Overview', 'Test Overview', NULL, NULL),
(27, 11, 'ar', 'صفحة مزاد مزادي', 'صفحة مزاد مزادي', NULL, NULL),
(28, 12, 'en', 'Test', 'Test&nbsp;', NULL, NULL),
(29, 12, 'ar', 'صفحة مزاد مزادي', 'صفحة مزاد مزادي', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_photos`
--

CREATE TABLE `page_photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `photo` text NOT NULL,
  `Witdh` int(11) DEFAULT 100,
  `height` int(11) DEFAULT 200,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_photos`
--

INSERT INTO `page_photos` (`id`, `page_id`, `photo`, `Witdh`, `height`, `created_at`, `updated_at`) VALUES
(5, 9, '1698569728.imageSlider.png', 100, 200, '2023-10-29 13:55:31', '2023-10-29 13:55:31'),
(6, 10, '1698569786.Homeimg.png', 100, 200, '2023-10-29 13:56:50', '2023-10-29 13:56:50'),
(7, 11, '1698572282.lbar.png', 100, 200, '2023-10-29 14:38:20', '2023-10-29 14:38:20'),
(8, 12, '1698582359.OverView.png', 100, 200, '2023-10-29 17:26:19', '2023-10-29 17:26:19'),
(9, 13, '1698582539.Itenariesimg.png', 100, 200, '2023-10-29 17:36:36', '2023-10-29 17:36:36'),
(10, 14, '1698588224.Itenariesimg.png', 100, 200, '2023-10-29 19:03:47', '2023-10-29 19:03:47'),
(11, 15, '1698675374.scape.jpg', 100, 200, '2023-10-30 19:16:21', '2023-10-30 19:16:21'),
(12, 16, '1698675451.din.png', 100, 200, '2023-10-30 19:17:35', '2023-10-30 19:17:35'),
(13, 17, '1698675536.Terms.png', 100, 200, '2023-10-30 19:18:59', '2023-10-30 19:18:59'),
(14, 17, '1698675573.gallery1.png', 100, 200, '2023-10-30 19:20:02', '2023-10-30 19:20:02'),
(15, 17, '1698675574.gallery3.png', 100, 200, '2023-10-30 19:20:02', '2023-10-30 19:20:02'),
(16, 17, '1698675576.gallery2.png', 100, 200, '2023-10-30 19:20:02', '2023-10-30 19:20:02'),
(17, 17, '1698675577.gallery4.png', 100, 200, '2023-10-30 19:20:02', '2023-10-30 19:20:02'),
(18, 17, '1698675581.gallery7.png', 100, 200, '2023-10-30 19:20:02', '2023-10-30 19:20:02'),
(19, 17, '1698675582.gallery5.png', 100, 200, '2023-10-30 19:20:02', '2023-10-30 19:20:02'),
(20, 17, '1698675585.gallery6.png', 100, 200, '2023-10-30 19:20:02', '2023-10-30 19:20:02'),
(21, 17, '1698675586.gallery8.png', 100, 200, '2023-10-30 19:20:02', '2023-10-30 19:20:02'),
(22, 17, '1698675598.gallery8.png', 100, 200, '2023-10-30 19:20:02', '2023-10-30 19:20:02'),
(23, 18, '1698675653.Terms.png', 100, 200, '2023-10-30 19:20:55', '2023-10-30 19:20:55'),
(24, 19, '1698675716.Terms.png', 100, 200, '2023-10-30 19:21:58', '2023-10-30 19:21:58'),
(25, 20, '1698675930.Sailing-by-Al-Silsila-Mountain.png', 100, 200, '2023-10-30 19:25:43', '2023-10-30 19:25:43'),
(26, 10, '1698740440.Accomod.png', 100, 200, '2023-10-31 13:23:33', '2023-10-31 13:23:33'),
(27, 21, '1698762715.Dining.png', 100, 200, '2023-10-31 19:33:51', '2023-10-31 19:33:51');

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

CREATE TABLE `page_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` longtext NOT NULL,
  `description` longtext DEFAULT NULL,
  `seo` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_translations`
--

INSERT INTO `page_translations` (`id`, `page_id`, `locale`, `title`, `description`, `seo`, `created_at`, `updated_at`) VALUES
(25, 9, 'en', 'Overview', NULL, NULL, '2023-10-29 13:55:31', '2023-10-29 13:55:31'),
(26, 9, 'es', 'Overview', NULL, NULL, '2023-10-29 13:55:31', '2023-10-29 13:55:31'),
(27, 9, 'pt', 'Overview', NULL, NULL, '2023-10-29 13:55:31', '2023-10-29 13:55:31'),
(28, 10, 'en', 'Unparalleled Comfort and Relaxation', '<div>Aqua’s opulent luxury cabins and suites radiate elegance and merge flawlessly with the colors of the surrounding tranquil, Southern Egyptian countryside, presenting you with the ideal Nile cruise experience in comfort and style.</div>', NULL, '2023-10-29 13:56:50', '2023-10-31 16:22:44'),
(29, 10, 'es', 'Unparalleled Comfort and Relaxation', '<div>Aqua’s opulent luxury cabins and suites radiate elegance and merge flawlessly with the colors of the surrounding</div><div>tranquil, Southern Egyptian countryside, presenting you with the ideal Nile cruise experience in comfort and style.</div>', NULL, '2023-10-29 13:56:50', '2023-10-29 13:56:50'),
(30, 10, 'pt', 'Unparalleled Comfort and Relaxation', '<div>Aqua’s opulent luxury cabins and suites radiate elegance and merge flawlessly with the colors of the surrounding</div><div>tranquil, Southern Egyptian countryside, presenting you with the ideal Nile cruise experience in comfort and style.</div>', NULL, '2023-10-29 13:56:50', '2023-10-29 13:56:50'),
(31, 11, 'en', 'Dining', 'Celebrate the essence of a refined gastronomic journey that blends traditional delicacies with avant-garde concepts. Culinary artistry, impeccable interior designs, and unexpected indulgences are at the heart of our excellence pillars.', NULL, '2023-10-29 14:38:20', '2023-10-29 14:38:20'),
(32, 11, 'es', 'Dining', 'Celebrate the essence of a refined gastronomic journey that blends traditional delicacies with avant-garde concepts. Culinary artistry, impeccable interior designs, and unexpected indulgences are at the heart of our excellence pillars.', NULL, '2023-10-29 14:38:20', '2023-10-29 14:38:20'),
(33, 11, 'pt', 'Dining', 'Celebrate the essence of a refined gastronomic journey that blends traditional delicacies with avant-garde concepts. Culinary artistry, impeccable interior designs, and unexpected indulgences are at the heart of our excellence pillars.', NULL, '2023-10-29 14:38:20', '2023-10-29 14:38:20'),
(34, 12, 'en', 'Experiences', '<div>Every moment spent onboard is a testament of Aqua’s unrivaled elegance, which blends perfectly with the local environment and culture of the stunning cities of Luxor and Aswan.</div><div><br></div>', NULL, '2023-10-29 17:26:19', '2023-10-29 17:26:19'),
(35, 12, 'es', 'Experiences', '<div>Every moment spent onboard is a testament of Aqua’s unrivaled elegance, which blends perfectly with the local environment and culture of the stunning cities of Luxor and Aswan.</div><div><br></div>', NULL, '2023-10-29 17:26:19', '2023-10-29 17:26:19'),
(36, 12, 'pt', 'Experiences', '<div>Every moment spent onboard is a testament of Aqua’s unrivaled elegance, which blends perfectly with the local environment and culture of the stunning cities of Luxor and Aswan.</div><div><br></div>', NULL, '2023-10-29 17:26:19', '2023-10-29 17:26:19'),
(37, 13, 'en', 'Itineraries', '<div>Wander through timeless treasures guided by the stories of the ancient Pharaohs with a carefully curated itinerary. To entice your thirst for Egypt’s historical marvels, our itineraries can be customized to your preference.</div>', NULL, '2023-10-29 17:36:36', '2023-10-31 16:37:08'),
(38, 13, 'es', 'Itineraries', '<div>Wander through timeless treasures guided by the stories of the ancient Pharaohs with a carefully curated itinerary.</div><div>To entice your thirst for Egypt’s historical marvels, our itineraries can be customized to your preference.</div><div><br></div>', NULL, '2023-10-29 17:36:36', '2023-10-29 17:36:36'),
(39, 13, 'pt', 'Itineraries', '<div>Wander through timeless treasures guided by the stories of the ancient Pharaohs with a carefully curated itinerary.</div><div>To entice your thirst for Egypt’s historical marvels, our itineraries can be customized to your preference.</div><div><br></div>', NULL, '2023-10-29 17:36:36', '2023-10-29 17:36:36'),
(40, 14, 'en', 'Itineraries', '<div>Wander through timeless treasures guided by the stories of the ancient Pharaohs with a carefully curated itinerary.</div><div>To entice your thirst for Egypt’s historical marvels, our itineraries can be customized to your preference.</div>', NULL, '2023-10-29 19:03:47', '2023-10-29 19:03:47'),
(41, 14, 'es', 'Itineraries', '<div>Wander through timeless treasures guided by the stories of the ancient Pharaohs with a carefully curated itinerary.</div><div>To entice your thirst for Egypt’s historical marvels, our itineraries can be customized to your preference.</div>', NULL, '2023-10-29 19:03:47', '2023-10-29 19:03:47'),
(42, 14, 'pt', 'Itineraries', '<div>Wander through timeless treasures guided by the stories of the ancient Pharaohs with a carefully curated itinerary.</div><div>To entice your thirst for Egypt’s historical marvels, our itineraries can be customized to your preference.</div>', NULL, '2023-10-29 19:03:47', '2023-10-29 19:03:47'),
(43, 15, 'en', 'Monumental Escapades', 'Monumental Escapades', NULL, '2023-10-30 19:16:21', '2023-10-30 19:16:21'),
(44, 15, 'es', 'Monumental Escapades', 'Monumental Escapades', NULL, '2023-10-30 19:16:21', '2023-10-30 19:16:21'),
(45, 15, 'pt', 'Monumental Escapades', 'Monumental Escapades', NULL, '2023-10-30 19:16:21', '2023-10-30 19:16:21'),
(46, 16, 'en', 'Inspiration', 'Inspiration', NULL, '2023-10-30 19:17:35', '2023-10-30 19:17:35'),
(47, 16, 'es', 'Inspiration', 'Inspiration', NULL, '2023-10-30 19:17:35', '2023-10-30 19:17:35'),
(48, 16, 'pt', 'Inspiration', 'Inspiration', NULL, '2023-10-30 19:17:35', '2023-10-30 19:17:35'),
(49, 17, 'en', 'Media Center', 'This is your space to explore Aqua the Dahabeya from every corner, and to dowload our factsheet and itinerary', NULL, '2023-10-30 19:18:59', '2023-10-30 19:18:59'),
(50, 17, 'es', 'Media Center', 'This is your space to explore Aqua the Dahabeya from every corner, and to dowload our factsheet and itinerary', NULL, '2023-10-30 19:18:59', '2023-10-30 19:18:59'),
(51, 17, 'pt', 'Media Center', 'This is your space to explore Aqua the Dahabeya from every corner, and to dowload our factsheet and itinerary', NULL, '2023-10-30 19:18:59', '2023-10-30 19:18:59'),
(52, 18, 'en', 'Frequently Asked Questions', 'We have listed some helpful information you may inquire about while planning your voyage. If you have additional questions, please contact our Reservation Services team at SMT@Aqua-cruises.com and they would be delighted to assist you.', NULL, '2023-10-30 19:20:55', '2023-10-30 19:20:55'),
(53, 18, 'es', 'Frequently Asked Questions', 'We have listed some helpful information you may inquire about while planning your voyage. If you have additional questions, please contact our Reservation Services team at SMT@Aqua-cruises.com and they would be delighted to assist you.', NULL, '2023-10-30 19:20:55', '2023-10-30 19:20:55'),
(54, 18, 'pt', 'Frequently Asked Questions', 'We have listed some helpful information you may inquire about while planning your voyage. If you have additional questions, please contact our Reservation Services team at SMT@Aqua-cruises.com and they would be delighted to assist you.', NULL, '2023-10-30 19:20:55', '2023-10-30 19:20:55'),
(55, 19, 'en', 'Terms and Conditions', 'Terms and Conditions', NULL, '2023-10-30 19:21:58', '2023-10-30 19:21:58'),
(56, 19, 'es', 'Terms and Conditions', 'Terms and Conditions', NULL, '2023-10-30 19:21:58', '2023-10-30 19:21:58'),
(57, 19, 'pt', 'Terms and Conditions', 'Terms and Conditions', NULL, '2023-10-30 19:21:58', '2023-10-30 19:21:58'),
(58, 20, 'en', 'Contact Us', 'Contact Us', NULL, '2023-10-30 19:25:43', '2023-10-30 19:25:43'),
(59, 20, 'es', 'Contact Us', 'Contact Us', NULL, '2023-10-30 19:25:43', '2023-10-30 19:25:43'),
(60, 20, 'pt', 'Contact Us', 'Contact Us', NULL, '2023-10-30 19:25:43', '2023-10-30 19:25:43'),
(61, 21, 'en', 'Cabin', 'Cabin', NULL, '2023-10-31 19:33:51', '2023-10-31 19:33:51'),
(62, 21, 'es', 'Cabin', 'Cabin', NULL, '2023-10-31 19:33:51', '2023-10-31 19:33:51'),
(63, 21, 'pt', 'Cabin', 'Cabin', NULL, '2023-10-31 19:33:51', '2023-10-31 19:33:51');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'View Admins', 'web', '2023-07-31 10:26:41', '2023-07-31 10:30:17'),
(2, 'Add Admin', 'web', '2023-07-31 10:27:05', '2023-07-31 10:27:05'),
(3, 'Edit Admin', 'web', '2023-07-31 10:27:21', '2023-07-31 10:27:21'),
(4, 'Delete Admin', 'web', '2023-07-31 10:27:31', '2023-07-31 10:27:31'),
(5, 'View Roles', 'web', '2023-07-31 10:27:52', '2023-07-31 10:27:52'),
(6, 'Add Role', 'web', '2023-07-31 10:28:01', '2023-07-31 10:28:01'),
(7, 'Edit Role', 'web', '2023-07-31 10:28:09', '2023-07-31 10:28:09'),
(8, 'Delete Role', 'web', '2023-07-31 10:28:18', '2023-07-31 10:28:18'),
(9, 'View Aboutus', 'web', '2023-08-01 03:42:34', '2023-08-01 03:42:34'),
(11, 'Edit Aboutus', 'web', '2023-08-01 03:42:59', '2023-08-01 03:42:59'),
(13, 'View Social', 'web', '2023-08-01 09:31:46', '2023-08-01 09:31:46'),
(14, 'Add Social', 'web', '2023-08-01 09:32:06', '2023-08-01 09:32:06'),
(15, 'Edit Social', 'web', '2023-08-01 09:32:15', '2023-08-01 09:32:15'),
(16, 'Delete Social', 'web', '2023-08-01 09:32:32', '2023-08-01 09:32:32'),
(21, 'View User', 'web', '2023-08-02 07:08:33', '2023-08-02 07:08:33'),
(23, 'Edit User', 'web', '2023-08-02 07:08:53', '2023-08-02 07:08:53'),
(25, 'View Slider', 'web', '2023-08-03 06:15:00', '2023-08-03 06:15:00'),
(26, 'Add Slider', 'web', '2023-08-03 06:15:11', '2023-08-03 06:15:11'),
(27, 'Edit Slider', 'web', '2023-08-03 06:15:22', '2023-08-03 06:15:22'),
(28, 'Delete Slider', 'web', '2023-08-03 06:15:34', '2023-08-03 08:12:33'),
(29, 'Send Email', 'web', '2023-08-03 09:23:45', '2023-08-03 09:23:45'),
(30, 'Edit Setting', 'web', '2023-08-06 03:18:47', '2023-08-06 03:18:47'),
(31, 'View Gallery', 'web', '2023-08-06 05:30:09', '2023-08-06 05:30:09'),
(32, 'Add Gallery', 'web', '2023-08-06 05:30:20', '2023-08-06 05:30:20'),
(34, 'Delete Gallery', 'web', '2023-08-06 05:37:25', '2023-08-06 05:37:25'),
(35, 'View Messages', 'web', '2023-08-07 05:45:07', '2023-08-13 02:59:19'),
(47, 'Delete SideSeeing', 'web', '2023-08-08 08:31:14', '2023-08-08 08:31:14'),
(49, 'View Subscriber', 'web', '2023-08-14 06:38:42', '2023-08-14 06:38:42'),
(50, 'View Newsletter', 'web', '2023-08-14 08:19:07', '2023-08-14 08:19:07'),
(51, 'Add Newsletter', 'web', '2023-08-14 08:19:19', '2023-08-14 08:19:19'),
(56, 'View Countries', 'web', '2023-08-16 04:32:55', '2023-08-16 04:32:55'),
(57, 'Add Countries', 'web', '2023-08-16 04:33:10', '2023-08-16 04:33:10'),
(58, 'Edit Countries', 'web', '2023-08-16 04:35:50', '2023-08-16 04:35:50'),
(59, 'Delete Countries', 'web', '2023-08-16 04:36:01', '2023-08-16 04:36:01'),
(60, 'View Pages', 'web', '2023-08-16 10:20:32', '2023-08-16 10:20:32'),
(61, 'Add Pages', 'web', '2023-08-16 10:20:43', '2023-08-16 10:20:43'),
(62, 'Edit Pages', 'web', '2023-08-16 10:20:58', '2023-08-16 10:20:58'),
(63, 'Delete Pages', 'web', '2023-08-16 10:21:11', '2023-08-16 10:21:11'),
(64, 'View Metas', 'web', '2023-08-16 15:15:45', '2023-08-16 15:15:45'),
(65, 'Add Metas', 'web', '2023-08-16 15:16:09', '2023-08-16 15:16:09'),
(66, 'Edit Metas', 'web', '2023-08-16 15:16:18', '2023-08-16 15:16:18'),
(67, 'Delete Metas', 'web', '2023-08-16 15:16:28', '2023-08-16 15:16:28'),
(68, 'View Infos', 'web', '2023-08-17 03:58:46', '2023-08-17 03:58:46'),
(69, 'Add Infos', 'web', '2023-08-17 03:58:59', '2023-08-17 03:58:59'),
(70, 'Edit Infos', 'web', '2023-08-17 03:59:10', '2023-08-17 03:59:10'),
(71, 'Delete Infos', 'web', '2023-08-17 03:59:20', '2023-08-17 03:59:20'),
(76, 'View Partner', 'web', '2023-08-19 17:54:52', '2023-08-19 17:54:52'),
(77, 'Add Partner', 'web', '2023-08-19 17:54:52', '2023-08-19 17:54:52'),
(78, 'Edit Partner', 'web', '2023-08-19 17:55:44', '2023-08-19 17:55:44'),
(79, 'Delete Partner', 'web', '2023-08-19 17:55:44', '2023-08-19 17:55:44'),
(104, 'View Unique', 'web', '2023-08-23 07:35:52', '2023-08-23 07:35:52'),
(105, 'Add Unique', 'web', '2023-08-23 07:35:52', '2023-08-23 07:35:52'),
(106, 'Edit Unique', 'web', '2023-08-23 07:36:47', '2023-08-23 07:36:47'),
(107, 'Delete Unique', 'web', '2023-08-23 07:36:47', '2023-08-23 07:36:47'),
(125, 'View Overview', 'web', '2023-10-18 06:50:25', '2023-10-18 06:50:25'),
(126, 'Add Overview', 'web', '2023-10-18 06:50:49', '2023-10-18 06:50:49'),
(127, 'Edit Overview', 'web', '2023-10-18 06:50:58', '2023-10-18 06:50:58'),
(128, 'Delete Overview', 'web', '2023-10-18 06:51:13', '2023-10-18 06:51:13'),
(141, 'View Category', 'web', '2023-10-22 07:47:43', '2023-10-22 07:47:43'),
(142, 'Add Category', 'web', '2023-10-22 07:47:51', '2023-10-22 07:47:51'),
(143, 'Edit Category', 'web', '2023-10-22 07:48:00', '2023-10-22 07:48:00'),
(144, 'Delete Category', 'web', '2023-10-22 07:48:15', '2023-10-22 07:48:15'),
(145, 'View Condition', 'web', '2023-10-23 10:52:22', '2023-10-23 10:52:22'),
(146, 'Add Condition', 'web', '2023-10-23 10:52:31', '2023-10-23 10:52:31'),
(147, 'Edit Condition', 'web', '2023-10-23 10:52:44', '2023-10-23 10:52:44'),
(148, 'Delete Condition', 'web', '2023-10-23 10:52:57', '2023-10-23 10:52:57'),
(165, 'View Question', 'web', '2023-10-30 18:25:58', '2023-10-30 18:25:58'),
(166, 'Add Question', 'web', '2023-10-30 18:26:11', '2023-10-30 18:26:11'),
(167, 'Edit Question', 'web', '2023-10-30 18:26:18', '2023-10-30 18:26:18'),
(168, 'Delete Question', 'web', '2023-10-30 18:26:28', '2023-10-30 18:26:28'),
(170, 'Add Aboutus', 'web', '2023-11-01 11:28:46', '2023-11-01 11:28:46'),
(171, 'Delete Aboutus', 'web', '2023-11-01 11:28:57', '2023-11-01 11:28:57'),
(172, 'Add Service', 'web', '2023-11-02 10:51:32', '2023-11-02 10:51:32'),
(173, 'View Service', 'web', '2023-11-02 10:51:40', '2023-11-02 10:51:40'),
(174, 'Edit Service', 'web', '2023-11-02 10:51:48', '2023-11-02 10:51:48'),
(175, 'Delete Service', 'web', '2023-11-02 10:52:00', '2023-11-02 10:52:00');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `created_at`, `updated_at`) VALUES
(2, '2023-10-31 15:42:43', '2023-10-31 15:42:43'),
(3, '2023-10-31 15:44:12', '2023-10-31 15:44:12'),
(4, '2023-10-31 15:49:27', '2023-10-31 15:49:27'),
(5, '2023-10-31 15:50:00', '2023-10-31 15:50:00'),
(6, '2023-10-31 15:53:02', '2023-10-31 15:53:02'),
(7, '2023-10-31 15:54:04', '2023-10-31 15:54:04'),
(8, '2023-10-31 15:54:40', '2023-10-31 15:54:40'),
(9, '2023-10-31 15:55:21', '2023-10-31 15:55:21'),
(10, '2023-10-31 15:56:04', '2023-10-31 15:56:04'),
(11, '2023-10-31 15:59:00', '2023-10-31 15:59:00'),
(12, '2023-10-31 16:01:09', '2023-10-31 16:01:09'),
(13, '2023-10-31 16:02:17', '2023-10-31 16:02:17'),
(14, '2023-10-31 16:02:47', '2023-10-31 16:02:47'),
(15, '2023-10-31 16:03:17', '2023-10-31 16:03:17'),
(16, '2023-10-31 16:03:50', '2023-10-31 16:03:50'),
(17, '2023-10-31 16:04:50', '2023-10-31 16:04:50'),
(18, '2023-10-31 16:05:59', '2023-10-31 16:05:59'),
(19, '2023-10-31 16:08:19', '2023-10-31 16:08:19'),
(20, '2023-10-31 16:08:50', '2023-10-31 16:08:50');

-- --------------------------------------------------------

--
-- Table structure for table `question_translations`
--

CREATE TABLE `question_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(2) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_translations`
--

INSERT INTO `question_translations` (`id`, `question_id`, `locale`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Question 1', 'Answer', NULL, NULL),
(2, 1, 'es', 'Question1', 'Answer', NULL, NULL),
(3, 1, 'pt', 'Question1', 'Answer', NULL, NULL),
(4, 2, 'en', 'Question2', '<div>Sailing dates are scheduled every Sunday from Luxor to Aswan for five nights and every Friday from Aswan to Luxor for two nights.</div><div><br></div><div>For a seamless cruising experience, a tailored monumental tour and sightseeing can be arranged for charter bookings at different sailing dates, subject to availability during booking time.</div><div><br></div><div>Please contact us at SMT@Aqua-cruises.com and our Reservations team would be delighted to assist with your bookings and transfer arrangements.</div>', NULL, NULL),
(5, 2, 'es', 'Question 2', '<div>Sailing dates are scheduled every Sunday from Luxor to Aswan for five nights and every Friday from Aswan to Luxor for two nights.</div><div><br></div><div>For a seamless cruising experience, a tailored monumental tour and sightseeing can be arranged for charter bookings at different sailing dates, subject to availability during booking time.</div><div><br></div><div>Please contact us at SMT@Aqua-cruises.com and our Reservations team would be delighted to assist with your bookings and transfer arrangements.</div>', NULL, NULL),
(6, 2, 'pt', 'Question 2', '<div>Sailing dates are scheduled every Sunday from Luxor to Aswan for five nights and every Friday from Aswan to Luxor for two nights.</div><div><br></div><div>For a seamless cruising experience, a tailored monumental tour and sightseeing can be arranged for charter bookings at different sailing dates, subject to availability during booking time.</div><div><br></div><div>Please contact us at SMT@Aqua-cruises.com and our Reservations team would be delighted to assist with your bookings and transfer arrangements.</div>', NULL, NULL),
(7, 3, 'en', 'Make a Booking', '<div>Sailing dates are scheduled every Sunday from Luxor to Aswan for five nights and every Friday from Aswan to Luxor for two nights.</div><div><br></div><div>For a seamless cruising experience, a tailored monumental tour and sightseeing can be arranged for charter bookings at different sailing dates, subject to availability during booking time.</div><div><br></div><div>Please contact us at SMT@Aqua-cruises.com and our Reservations team would be delighted to assist with your bookings and transfer arrangements.</div><div><br></div>', NULL, NULL),
(8, 3, 'es', 'Make a Booking', '<div>Sailing dates are scheduled every Sunday from Luxor to Aswan for five nights and every Friday from Aswan to Luxor for two nights.</div><div><br></div><div>For a seamless cruising experience, a tailored monumental tour and sightseeing can be arranged for charter bookings at different sailing dates, subject to availability during booking time.</div><div><br></div><div>Please contact us at SMT@Aqua-cruises.com and our Reservations team would be delighted to assist with your bookings and transfer arrangements.</div><div><br></div>', NULL, NULL),
(9, 3, 'pt', 'Make a Booking', '<div>Sailing dates are scheduled every Sunday from Luxor to Aswan for five nights and every Friday from Aswan to Luxor for two nights.</div><div><br></div><div>For a seamless cruising experience, a tailored monumental tour and sightseeing can be arranged for charter bookings at different sailing dates, subject to availability during booking time.</div><div><br></div><div>Please contact us at SMT@Aqua-cruises.com and our Reservations team would be delighted to assist with your bookings and transfer arrangements.</div><div><br></div>', NULL, NULL),
(10, 4, 'en', 'Children Policy', '<div>Children are welcome at AQUA the Dahabeya. Minors must be accompanied by a parent or guardian over the age of 21 years old.</div><div><br></div><div>Babysitting services are not available on board.</div>', NULL, NULL),
(11, 4, 'es', 'Children Policy', '<div>Children are welcome at AQUA the Dahabeya. Minors must be accompanied by a parent or guardian over the age of 21 years old.</div><div><br></div><div>Babysitting services are not available on board.</div>', NULL, NULL),
(12, 4, 'pt', 'Children Policy', '<div>Children are welcome at AQUA the Dahabeya. Minors must be accompanied by a parent or guardian over the age of 21 years old.</div><div><br></div><div>Babysitting services are not available on board.</div>', NULL, NULL),
(13, 5, 'en', 'Booking Modification or Cancellation', '<div>Kindly refer to the confirmation email; Kindly refer to the confirmation email; you will find an edit button to modify or cancel your reservation or communicate with our Reservations Team at SMT@aqua-cruises.com.</div><div><br></div><div>you will find an edit button to modify or cancel your reservation or communicate with our Reservations Team at SMT@aqua-cruises.com.</div><div><br></div><div>Please note that a cancellation fee may apply.</div>', NULL, NULL),
(14, 5, 'es', 'Booking Modification or Cancellation', '<div>Kindly refer to the confirmation email; Kindly refer to the confirmation email; you will find an edit button to modify or cancel your reservation or communicate with our Reservations Team at SMT@aqua-cruises.com.</div><div><br></div><div>you will find an edit button to modify or cancel your reservation or communicate with our Reservations Team at SMT@aqua-cruises.com.</div><div><br></div><div>Please note that a cancellation fee may apply.</div>', NULL, NULL),
(15, 5, 'pt', 'Booking Modification or Cancellation', '<div>Kindly refer to the confirmation email; Kindly refer to the confirmation email; you will find an edit button to modify or cancel your reservation or communicate with our Reservations Team at SMT@aqua-cruises.com.</div><div><br></div><div>you will find an edit button to modify or cancel your reservation or communicate with our Reservations Team at SMT@aqua-cruises.com.</div><div><br></div><div>Please note that a cancellation fee may apply.</div>', NULL, NULL),
(16, 6, 'en', 'Airport Meet and Assist', 'If you booked airport transfers with us, our representative will be available to guide you to the arranged vehicle, assist with your luggage, and other airport pickup and drop-off procedures.', NULL, NULL),
(17, 6, 'es', 'Airport Meet and Assist', 'If you booked airport transfers with us, our representative will be available to guide you to the arranged vehicle, assist with your luggage, and other airport pickup and drop-off procedures.', NULL, NULL),
(18, 6, 'pt', 'Airport Meet and Assist', 'If you booked airport transfers with us, our representative will be available to guide you to the arranged vehicle, assist with your luggage, and other airport pickup and drop-off procedures.', NULL, NULL),
(19, 7, 'en', 'Passports / Visa', '<p style=\"box-sizing: inherit; margin-bottom: 1rem; color: rgb(47, 61, 76); font-family: Gothic; font-size: 16px; letter-spacing: 0.15008px; padding: 0px !important;\">Passports are required for all guests and must be valid for six months after the voyage’s completion date.</p><p style=\"box-sizing: inherit; margin-bottom: 1rem; color: rgb(47, 61, 76); font-family: Gothic; font-size: 16px; letter-spacing: 0.15008px; padding: 0px !important;\">In addition, guests should have visas and any other necessary documents according to Egyptian laws and regulations.</p>', NULL, NULL),
(20, 7, 'es', 'Passports / Visa', '<p style=\"box-sizing: inherit; margin-bottom: 1rem; color: rgb(47, 61, 76); font-family: Gothic; font-size: 16px; letter-spacing: 0.15008px; padding: 0px !important;\">Passports are required for all guests and must be valid for six months after the voyage’s completion date.</p><p style=\"box-sizing: inherit; margin-bottom: 1rem; color: rgb(47, 61, 76); font-family: Gothic; font-size: 16px; letter-spacing: 0.15008px; padding: 0px !important;\">In addition, guests should have visas and any other necessary documents according to Egyptian laws and regulations.</p>', NULL, NULL),
(21, 7, 'pt', 'Passports / Visa', '<p style=\"box-sizing: inherit; margin-bottom: 1rem; color: rgb(47, 61, 76); font-family: Gothic; font-size: 16px; letter-spacing: 0.15008px; padding: 0px !important;\">Passports are required for all guests and must be valid for six months after the voyage’s completion date.</p><p style=\"box-sizing: inherit; margin-bottom: 1rem; color: rgb(47, 61, 76); font-family: Gothic; font-size: 16px; letter-spacing: 0.15008px; padding: 0px !important;\">In addition, guests should have visas and any other necessary documents according to Egyptian laws and regulations.</p>', NULL, NULL),
(22, 8, 'en', 'Arrival And Departure Timing', '<div>Check-in will open for guests at 12:00 PM</div><div><br></div><div>Departure day checkout: 08:00 AM</div><div><br></div><div>We understand that arrival and departure times may vary according to the flight timing; please coordinate with the management team in case of early arrival or late departure for availability.</div><div><br></div><div>In this case, guests are welcome to enjoy the public areas while waiting with most services open for their comfort.</div>', NULL, NULL),
(23, 8, 'es', 'Arrival And Departure Timing', '<div>Check-in will open for guests at 12:00 PM</div><div><br></div><div>Departure day checkout: 08:00 AM</div><div><br></div><div>We understand that arrival and departure times may vary according to the flight timing; please coordinate with the management team in case of early arrival or late departure for availability.</div><div><br></div><div>In this case, guests are welcome to enjoy the public areas while waiting with most services open for their comfort.</div>', NULL, NULL),
(24, 8, 'pt', 'Arrival And Departure Timing', '<div>Check-in will open for guests at 12:00 PM</div><div><br></div><div>Departure day checkout: 08:00 AM</div><div><br></div><div>We understand that arrival and departure times may vary according to the flight timing; please coordinate with the management team in case of early arrival or late departure for availability.</div><div><br></div><div>In this case, guests are welcome to enjoy the public areas while waiting with most services open for their comfort.</div>', NULL, NULL),
(25, 9, 'en', 'Luggage', '<p style=\"box-sizing: inherit; margin-bottom: 1rem; color: rgb(47, 61, 76); font-family: Gothic; font-size: 16px; letter-spacing: 0.15008px; padding: 0px !important;\">Our cabins and suites are equipped with all amenities to allow guests to travel light.</p><p style=\"box-sizing: inherit; margin-bottom: 1rem; color: rgb(47, 61, 76); font-family: Gothic; font-size: 16px; letter-spacing: 0.15008px; padding: 0px !important;\">Luggage restrictions and fees can vary by airline, class of service, and destination or departure airport.</p><p style=\"box-sizing: inherit; margin-bottom: 1rem; color: rgb(47, 61, 76); font-family: Gothic; font-size: 16px; letter-spacing: 0.15008px; padding: 0px !important;\">For the most up-to-date luggage allowance policies and weight/size restrictions by airlines, we suggest you visit the websites of the selected airlines for your trip, most of which are updated regularly with the latest policies.</p><p style=\"box-sizing: inherit; margin-bottom: 1rem; color: rgb(47, 61, 76); font-family: Gothic; font-size: 16px; letter-spacing: 0.15008px; padding: 0px !important;\">All luggage must be securely packed and clearly labeled with your full name.</p><p style=\"box-sizing: inherit; margin-bottom: 1rem; color: rgb(47, 61, 76); font-family: Gothic; font-size: 16px; letter-spacing: 0.15008px; padding: 0px !important;\">Carry your Jewelry, fragile items, valuables, and important documents in your hand luggage.</p><p style=\"box-sizing: inherit; margin-bottom: 1rem; color: rgb(47, 61, 76); font-family: Gothic; font-size: 16px; letter-spacing: 0.15008px; padding: 0px !important;\">Upon arrival, our crew will affix luggage labels with your name and deliver the luggage directly to your luxury cabin or suite.</p>', NULL, NULL),
(26, 9, 'es', 'Luggage', '<p style=\"box-sizing: inherit; margin-bottom: 1rem; color: rgb(47, 61, 76); font-family: Gothic; font-size: 16px; letter-spacing: 0.15008px; padding: 0px !important;\">Our cabins and suites are equipped with all amenities to allow guests to travel light.</p><p style=\"box-sizing: inherit; margin-bottom: 1rem; color: rgb(47, 61, 76); font-family: Gothic; font-size: 16px; letter-spacing: 0.15008px; padding: 0px !important;\">Luggage restrictions and fees can vary by airline, class of service, and destination or departure airport.</p><p style=\"box-sizing: inherit; margin-bottom: 1rem; color: rgb(47, 61, 76); font-family: Gothic; font-size: 16px; letter-spacing: 0.15008px; padding: 0px !important;\">For the most up-to-date luggage allowance policies and weight/size restrictions by airlines, we suggest you visit the websites of the selected airlines for your trip, most of which are updated regularly with the latest policies.</p><p style=\"box-sizing: inherit; margin-bottom: 1rem; color: rgb(47, 61, 76); font-family: Gothic; font-size: 16px; letter-spacing: 0.15008px; padding: 0px !important;\">All luggage must be securely packed and clearly labeled with your full name.</p><p style=\"box-sizing: inherit; margin-bottom: 1rem; color: rgb(47, 61, 76); font-family: Gothic; font-size: 16px; letter-spacing: 0.15008px; padding: 0px !important;\">Carry your Jewelry, fragile items, valuables, and important documents in your hand luggage.</p><p style=\"box-sizing: inherit; margin-bottom: 1rem; color: rgb(47, 61, 76); font-family: Gothic; font-size: 16px; letter-spacing: 0.15008px; padding: 0px !important;\">Upon arrival, our crew will affix luggage labels with your name and deliver the luggage directly to your luxury cabin or suite.</p>', NULL, NULL),
(27, 9, 'pt', 'Luggage', '<p style=\"box-sizing: inherit; margin-bottom: 1rem; color: rgb(47, 61, 76); font-family: Gothic; font-size: 16px; letter-spacing: 0.15008px; padding: 0px !important;\">Our cabins and suites are equipped with all amenities to allow guests to travel light.</p><p style=\"box-sizing: inherit; margin-bottom: 1rem; color: rgb(47, 61, 76); font-family: Gothic; font-size: 16px; letter-spacing: 0.15008px; padding: 0px !important;\">Luggage restrictions and fees can vary by airline, class of service, and destination or departure airport.</p><p style=\"box-sizing: inherit; margin-bottom: 1rem; color: rgb(47, 61, 76); font-family: Gothic; font-size: 16px; letter-spacing: 0.15008px; padding: 0px !important;\">For the most up-to-date luggage allowance policies and weight/size restrictions by airlines, we suggest you visit the websites of the selected airlines for your trip, most of which are updated regularly with the latest policies.</p><p style=\"box-sizing: inherit; margin-bottom: 1rem; color: rgb(47, 61, 76); font-family: Gothic; font-size: 16px; letter-spacing: 0.15008px; padding: 0px !important;\">All luggage must be securely packed and clearly labeled with your full name.</p><p style=\"box-sizing: inherit; margin-bottom: 1rem; color: rgb(47, 61, 76); font-family: Gothic; font-size: 16px; letter-spacing: 0.15008px; padding: 0px !important;\">Carry your Jewelry, fragile items, valuables, and important documents in your hand luggage.</p><p style=\"box-sizing: inherit; margin-bottom: 1rem; color: rgb(47, 61, 76); font-family: Gothic; font-size: 16px; letter-spacing: 0.15008px; padding: 0px !important;\">Upon arrival, our crew will affix luggage labels with your name and deliver the luggage directly to your luxury cabin or suite.</p>', NULL, NULL),
(28, 10, 'en', 'On Call Doctor', '<div>Before sailing, we ask guests to ensure they are medically and physically fit for travel.</div><div><br></div><div>A doctor will be on call.</div><div><br></div><div>If the cruise is docked, the doctor may take up to 1 hour to arrive on board.</div><div><br></div><div>However, first responders are available onboard in case of emergencies.</div>', NULL, NULL),
(29, 10, 'es', 'On Call Doctor', '<div>Before sailing, we ask guests to ensure they are medically and physically fit for travel.</div><div><br></div><div>A doctor will be on call.</div><div><br></div><div>If the cruise is docked, the doctor may take up to 1 hour to arrive on board.</div><div><br></div><div>However, first responders are available onboard in case of emergencies.</div>', NULL, NULL),
(30, 10, 'pt', 'On Call Doctor', '<div>Before sailing, we ask guests to ensure they are medically and physically fit for travel.</div><div><br></div><div>A doctor will be on call.</div><div><br></div><div>If the cruise is docked, the doctor may take up to 1 hour to arrive on board.</div><div><br></div><div>However, first responders are available onboard in case of emergencies.</div>', NULL, NULL),
(31, 11, 'en', 'Prohibited items', '<div>Guests are not allowed to bring onboard the following items:</div><div><br></div><div>- Alcoholic or non-alcoholic beverages of any kind, including water, soda, and juices.</div><div><br></div><div>- Unsealed food items will not be allowed on board.</div><div><br></div><div>- Firearms, weapons of any kind, ammunition, explosive substances, or any goods of a dangerous nature.</div><div><br></div><div>- Irons / Ironing Boards and Steamers.</div><div><br></div><div>- Animals of any kind.</div><div><br></div><div>- Large Batteries, Emergency Position Indicating Radio Beacons (EPIRB), ham radios, satellite phones, transformers, lasers, and laser pointers are not allowed onboard.</div>', NULL, NULL),
(32, 11, 'es', 'Prohibited items', '<div>Guests are not allowed to bring onboard the following items:</div><div><br></div><div>- Alcoholic or non-alcoholic beverages of any kind, including water, soda, and juices.</div><div><br></div><div>- Unsealed food items will not be allowed on board.</div><div><br></div><div>- Firearms, weapons of any kind, ammunition, explosive substances, or any goods of a dangerous nature.</div><div><br></div><div>- Irons / Ironing Boards and Steamers.</div><div><br></div><div>- Animals of any kind.</div><div><br></div><div>- Large Batteries, Emergency Position Indicating Radio Beacons (EPIRB), ham radios, satellite phones, transformers, lasers, and laser pointers are not allowed onboard.</div>', NULL, NULL),
(33, 11, 'pt', 'Prohibited items', '<div>Guests are not allowed to bring onboard the following items:</div><div><br></div><div>- Alcoholic or non-alcoholic beverages of any kind, including water, soda, and juices.</div><div><br></div><div>- Unsealed food items will not be allowed on board.</div><div><br></div><div>- Firearms, weapons of any kind, ammunition, explosive substances, or any goods of a dangerous nature.</div><div><br></div><div>- Irons / Ironing Boards and Steamers.</div><div><br></div><div>- Animals of any kind.</div><div><br></div><div>- Large Batteries, Emergency Position Indicating Radio Beacons (EPIRB), ham radios, satellite phones, transformers, lasers, and laser pointers are not allowed onboard.</div>', NULL, NULL),
(34, 12, 'en', 'Dietary Preferences', '<p style=\"box-sizing: inherit; margin-bottom: 1rem; color: rgb(47, 61, 76); font-family: Gothic; font-size: 16px; letter-spacing: 0.15008px; padding: 0px !important;\">Our culinary team would be delighted to arrange any special dietary preference such as gluten-free, vegan food.</p><p style=\"box-sizing: inherit; margin-bottom: 1rem; color: rgb(47, 61, 76); font-family: Gothic; font-size: 16px; letter-spacing: 0.15008px; padding: 0px !important;\">Special requirements such as low sodium, or allergies should be communicated during booking time through your travel specialist or our Reservations Team at SMT@aqua-cruises.com.</p>', NULL, NULL),
(35, 12, 'es', 'Dietary Preferences', '<p style=\"box-sizing: inherit; margin-bottom: 1rem; color: rgb(47, 61, 76); font-family: Gothic; font-size: 16px; letter-spacing: 0.15008px; padding: 0px !important;\">Our culinary team would be delighted to arrange any special dietary preference such as gluten-free, vegan food.</p><p style=\"box-sizing: inherit; margin-bottom: 1rem; color: rgb(47, 61, 76); font-family: Gothic; font-size: 16px; letter-spacing: 0.15008px; padding: 0px !important;\">Special requirements such as low sodium, or allergies should be communicated during booking time through your travel specialist or our Reservations Team at SMT@aqua-cruises.com.</p>', NULL, NULL),
(36, 12, 'pt', 'Dietary Preferences', '<p style=\"box-sizing: inherit; margin-bottom: 1rem; color: rgb(47, 61, 76); font-family: Gothic; font-size: 16px; letter-spacing: 0.15008px; padding: 0px !important;\">Our culinary team would be delighted to arrange any special dietary preference such as gluten-free, vegan food.</p><p style=\"box-sizing: inherit; margin-bottom: 1rem; color: rgb(47, 61, 76); font-family: Gothic; font-size: 16px; letter-spacing: 0.15008px; padding: 0px !important;\">Special requirements such as low sodium, or allergies should be communicated during booking time through your travel specialist or our Reservations Team at SMT@aqua-cruises.com.</p>', NULL, NULL),
(37, 13, 'en', 'Money Matters', '<div>Most of the tourist establishments, sites, and souvenir shops accept US dollars. Having local currency fortipping or shopping in smaller souks or local restaurants is beneficial.</div><div><br></div><div>There are no restrictions on the amount of foreign currency or travelers’ cheques entering the country. However, passengers entering Egypt with Egyptian currency exceeding the equivalent of USD 1,000 must declare this on arrival.</div><div><br></div><div>Visa and Master cards are accepted on board.</div><div><br></div><div>Egyptian Pound (LE) is the currency unit in Egypt, divided into 100 piasters. Notes are issued in 5, 10, 20, 50, 100, and 200-pounds denominations. Coins are issued in denominations of LE 1 and 50 piasters.</div><div><br></div><div>All charges on board are in Egyptian pounds. Guests can pay in US Dollars, Euros, or Sterling. But please note: any change will be compensated in Egyptian pounds as no currency stock is available.</div>', NULL, NULL),
(38, 13, 'es', 'Money Matters', '<div>Most of the tourist establishments, sites, and souvenir shops accept US dollars. Having local currency fortipping or shopping in smaller souks or local restaurants is beneficial.</div><div><br></div><div>There are no restrictions on the amount of foreign currency or travelers’ cheques entering the country. However, passengers entering Egypt with Egyptian currency exceeding the equivalent of USD 1,000 must declare this on arrival.</div><div><br></div><div>Visa and Master cards are accepted on board.</div><div><br></div><div>Egyptian Pound (LE) is the currency unit in Egypt, divided into 100 piasters. Notes are issued in 5, 10, 20, 50, 100, and 200-pounds denominations. Coins are issued in denominations of LE 1 and 50 piasters.</div><div><br></div><div>All charges on board are in Egyptian pounds. Guests can pay in US Dollars, Euros, or Sterling. But please note: any change will be compensated in Egyptian pounds as no currency stock is available.</div>', NULL, NULL),
(39, 13, 'pt', 'Money Matters', '<div>Most of the tourist establishments, sites, and souvenir shops accept US dollars. Having local currency fortipping or shopping in smaller souks or local restaurants is beneficial.</div><div><br></div><div>There are no restrictions on the amount of foreign currency or travelers’ cheques entering the country. However, passengers entering Egypt with Egyptian currency exceeding the equivalent of USD 1,000 must declare this on arrival.</div><div><br></div><div>Visa and Master cards are accepted on board.</div><div><br></div><div>Egyptian Pound (LE) is the currency unit in Egypt, divided into 100 piasters. Notes are issued in 5, 10, 20, 50, 100, and 200-pounds denominations. Coins are issued in denominations of LE 1 and 50 piasters.</div><div><br></div><div>All charges on board are in Egyptian pounds. Guests can pay in US Dollars, Euros, or Sterling. But please note: any change will be compensated in Egyptian pounds as no currency stock is available.</div>', NULL, NULL),
(40, 14, 'en', 'Languages', '<div>The national language in Egypt is Arabic. However, tourists rarely find it a problem communicating as English is widely spoken in tourists’ sites and shops, in addition to Spanish and French as a second language.</div><div><br></div><div>Many staff in tourist areas also speak German or Italian.</div>', NULL, NULL),
(41, 14, 'es', 'Languages', '<div>The national language in Egypt is Arabic. However, tourists rarely find it a problem communicating as English is widely spoken in tourists’ sites and shops, in addition to Spanish and French as a second language.</div><div><br></div><div>Many staff in tourist areas also speak German or Italian.</div>', NULL, NULL),
(42, 14, 'pt', 'Languages', '<div>The national language in Egypt is Arabic. However, tourists rarely find it a problem communicating as English is widely spoken in tourists’ sites and shops, in addition to Spanish and French as a second language.</div><div><br></div><div>Many staff in tourist areas also speak German or Italian.</div>', NULL, NULL),
(43, 15, 'en', 'Weather', '<div>Egypt has year-round sun and almost no rain except in Alexandria, which has a more Mediterranean climate than the rest of the country.</div><div><br></div><div>Daytime temperatures range from pleasantly warm in the winter to very hot in the summer.</div><div><br></div><div>Northerly cities such as Cairo and Alexandria are generally about 5ºC cooler than southerly areas such as Luxor, Aswan, and Abu Simbel.</div><div><br></div><div>Nights in the desert can be significantly cold.</div>', NULL, NULL),
(44, 15, 'es', 'Weather', '<div>Egypt has year-round sun and almost no rain except in Alexandria, which has a more Mediterranean climate than the rest of the country.</div><div><br></div><div>Daytime temperatures range from pleasantly warm in the winter to very hot in the summer.</div><div><br></div><div>Northerly cities such as Cairo and Alexandria are generally about 5ºC cooler than southerly areas such as Luxor, Aswan, and Abu Simbel.</div><div><br></div><div>Nights in the desert can be significantly cold.</div>', NULL, NULL),
(45, 15, 'pt', 'Weather', '<div>Egypt has year-round sun and almost no rain except in Alexandria, which has a more Mediterranean climate than the rest of the country.</div><div><br></div><div>Daytime temperatures range from pleasantly warm in the winter to very hot in the summer.</div><div><br></div><div>Northerly cities such as Cairo and Alexandria are generally about 5ºC cooler than southerly areas such as Luxor, Aswan, and Abu Simbel.</div><div><br></div><div>Nights in the desert can be significantly cold.</div>', NULL, NULL),
(46, 16, 'en', 'Dress Code', '<div>The dress code style on board AQUA is set to match the relaxing lifestyle of a cruising vacation.</div><div><br></div><div>During the day for breakfast and lunch, the dress code is casual, wherein shirts, shoes, and bathing suit cover-ups are required when not at the pool.</div><div><br></div><div>During the evening, smart casual is required while dining.</div><div><br></div><div>Ball caps, hats, shorts, and flip-flops are prohibited during dinner service.</div><div><br></div><div>As in all countries with styles different from yours, it is courteous to respect local customs.</div><div><br></div><div>Shorts and beachwear should be worn only at the beach or hotel pool.</div><div><br></div><div>When visiting mosques, synagogues, and churches, women should wear modest dresses and avoid wearing strappy dresses, miniskirts, shorts, or low-necked dresses.</div><div><br></div><div>Shoes are not allowed inside mosques; therefore, a thick pair of socks would protect you from floors.</div>', NULL, NULL),
(47, 16, 'es', 'Dress Code', '<div>The dress code style on board AQUA is set to match the relaxing lifestyle of a cruising vacation.</div><div><br></div><div>During the day for breakfast and lunch, the dress code is casual, wherein shirts, shoes, and bathing suit cover-ups are required when not at the pool.</div><div><br></div><div>During the evening, smart casual is required while dining.</div><div><br></div><div>Ball caps, hats, shorts, and flip-flops are prohibited during dinner service.</div><div><br></div><div>As in all countries with styles different from yours, it is courteous to respect local customs.</div><div><br></div><div>Shorts and beachwear should be worn only at the beach or hotel pool.</div><div><br></div><div>When visiting mosques, synagogues, and churches, women should wear modest dresses and avoid wearing strappy dresses, miniskirts, shorts, or low-necked dresses.</div><div><br></div><div>Shoes are not allowed inside mosques; therefore, a thick pair of socks would protect you from floors.</div>', NULL, NULL),
(48, 16, 'pt', 'Dress Code', '<div>The dress code style on board AQUA is set to match the relaxing lifestyle of a cruising vacation.</div><div><br></div><div>During the day for breakfast and lunch, the dress code is casual, wherein shirts, shoes, and bathing suit cover-ups are required when not at the pool.</div><div><br></div><div>During the evening, smart casual is required while dining.</div><div><br></div><div>Ball caps, hats, shorts, and flip-flops are prohibited during dinner service.</div><div><br></div><div>As in all countries with styles different from yours, it is courteous to respect local customs.</div><div><br></div><div>Shorts and beachwear should be worn only at the beach or hotel pool.</div><div><br></div><div>When visiting mosques, synagogues, and churches, women should wear modest dresses and avoid wearing strappy dresses, miniskirts, shorts, or low-necked dresses.</div><div><br></div><div>Shoes are not allowed inside mosques; therefore, a thick pair of socks would protect you from floors.</div>', NULL, NULL),
(49, 17, 'en', 'Gratuities', 'Gratuities can be extended on a voluntary individual basis according to guests’ discretion.', NULL, NULL),
(50, 17, 'es', 'Gratuities', 'Gratuities can be extended on a voluntary individual basis according to guests’ discretion.', NULL, NULL),
(51, 17, 'pt', 'Gratuities', 'Gratuities can be extended on a voluntary individual basis according to guests’ discretion.', NULL, NULL),
(52, 18, 'en', 'Lost & Found', 'Guests who misplaced items can contact the Guest Services Desk. After the voyage, guests may email our team for assistance at SMT@aqua-cruises.com', NULL, NULL),
(53, 18, 'es', 'Lost & Found', 'Guests who misplaced items can contact the Guest Services Desk. After the voyage, guests may email our team for assistance at SMT@aqua-cruises.com', NULL, NULL),
(54, 18, 'pt', 'Lost & Found', 'Guests who misplaced items can contact the Guest Services Desk. After the voyage, guests may email our team for assistance at SMT@aqua-cruises.com', NULL, NULL),
(55, 19, 'en', 'Smoking Policy', 'Smoking, including use of cigarettes, e-cigarettes, and cigars, is permitted only at the Sun Deck.', NULL, NULL),
(56, 19, 'es', 'Smoking Policy', 'Smoking, including use of cigarettes, e-cigarettes, and cigars, is permitted only at the Sun Deck.', NULL, NULL),
(57, 19, 'pt', 'Smoking Policy', 'Smoking, including use of cigarettes, e-cigarettes, and cigars, is permitted only at the Sun Deck.', NULL, NULL),
(58, 20, 'en', 'Wheelchair & other Accessibility Information', '<div>Wheelchairs, an elevator, and a well-appointed accessible Aqua Luxury Cabin are available for guests with special needs.</div><div><br></div><div>Guests requiring specific assistance while on board are asked to please notify our team at SMT@aqua-cruises.com.</div>', NULL, NULL),
(59, 20, 'es', 'Wheelchair & other Accessibility Information', '<div>Wheelchairs, an elevator, and a well-appointed accessible Aqua Luxury Cabin are available for guests with special needs.</div><div><br></div><div>Guests requiring specific assistance while on board are asked to please notify our team at SMT@aqua-cruises.com.</div>', NULL, NULL),
(60, 20, 'pt', 'Wheelchair & other Accessibility Information', '<div>Wheelchairs, an elevator, and a well-appointed accessible Aqua Luxury Cabin are available for guests with special needs.</div><div><br></div><div>Guests requiring specific assistance while on board are asked to please notify our team at SMT@aqua-cruises.com.</div>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'web', '2023-07-31 10:19:00', '2023-07-31 10:19:00'),
(2, 'admin', 'web', '2023-07-31 10:32:58', '2023-07-31 10:32:58'),
(4, 'editor', 'web', '2023-08-13 06:45:05', '2023-08-13 06:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(9, 4),
(11, 1),
(11, 2),
(11, 4),
(13, 1),
(13, 2),
(13, 4),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(15, 4),
(16, 1),
(16, 2),
(17, 2),
(17, 4),
(18, 2),
(19, 2),
(19, 4),
(20, 2),
(21, 1),
(21, 2),
(21, 4),
(23, 1),
(23, 2),
(23, 4),
(25, 1),
(25, 2),
(25, 4),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(27, 4),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(40, 2),
(40, 4),
(41, 2),
(42, 2),
(42, 4),
(43, 2),
(44, 2),
(44, 4),
(45, 2),
(46, 2),
(46, 4),
(47, 1),
(47, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) NOT NULL,
  `url` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `photo`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Admins/ZASwiEEQWF6hccQYmMtZMy1zL3GKwR85SZWoJBO1.jpg', NULL, '2023-11-02 11:54:18', '2023-11-02 11:54:18');

-- --------------------------------------------------------

--
-- Table structure for table `service_translations`
--

CREATE TABLE `service_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(2) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_translations`
--

INSERT INTO `service_translations` (`id`, `service_id`, `locale`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Test Services', 'Test Services', '2023-11-02 11:54:18', '2023-11-02 11:54:18'),
(2, 1, 'ar', 'الصفحة الرئيسية لمزادي', 'الصفحة الرئيسية لمزادي', '2023-11-02 11:54:18', '2023-11-02 11:54:18');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_name` text NOT NULL,
  `logo` text NOT NULL,
  `footer_logo` text NOT NULL,
  `location` text NOT NULL,
  `points_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `app_name`, `logo`, `footer_logo`, `location`, `points_price`, `created_at`, `updated_at`) VALUES
(1, 'Doctor', 'Admins/a2ucsCUH93nT2AwP3KDIqbreUHjVa06mTftRsDsi.jpg', 'Admins/qv8NsZgCU1sHA9dTfOB6KyIrenqas8M4RDWeIR2U.jpg', 'https://www.googlemap.com/lol', 25, '2023-11-01 05:05:49', '2023-11-01 09:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `setting_translations`
--

CREATE TABLE `setting_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `footer_description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_translations`
--

INSERT INTO `setting_translations` (`id`, `setting_id`, `locale`, `footer_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'ar', '<p><strong>نظام الحجوزات رقم واحد</strong></p>', '2023-08-06 08:03:22', '2023-08-06 05:12:02'),
(2, 1, 'en', '<p><strong>#1 Booking System</strong></p>', '2023-08-06 08:03:22', '2023-08-06 05:12:02');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `media` longtext NOT NULL,
  `type` varchar(225) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `media`, `type`, `created_at`, `updated_at`) VALUES
(18, 'Admins/rkPoRFZievP8VR3wM0z6FXpq5kPppKC6chfoCPH2.jpg', 'image', '2023-11-01 10:28:23', '2023-11-01 10:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `slider_translations`
--

CREATE TABLE `slider_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_translations`
--

INSERT INTO `slider_translations` (`id`, `slider_id`, `locale`, `title`, `created_at`, `updated_at`) VALUES
(13, 15, 'en', 'Test Slider', '2023-10-31 18:57:41', '2023-10-31 18:57:41'),
(14, 15, 'es', 'Test Slider', '2023-10-31 18:57:41', '2023-10-31 18:57:41'),
(15, 15, 'pt', 'Test Slider', '2023-10-31 18:57:41', '2023-10-31 18:57:41'),
(16, 16, 'en', 'Test Sliders 2', '2023-10-31 19:05:50', '2023-10-31 19:05:50'),
(17, 16, 'es', 'Test Sliders 2', '2023-10-31 19:05:50', '2023-10-31 19:05:50'),
(18, 16, 'pt', 'Test Sliders 2', '2023-10-31 19:05:50', '2023-10-31 19:05:50'),
(19, 18, 'en', 'Test Slider', '2023-11-01 10:28:23', '2023-11-01 10:28:23'),
(20, 18, 'ar', 'اختبار', '2023-11-01 10:28:23', '2023-11-01 10:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(4, 'Facebook', 'https:/www.facebook.com', '2023-08-01 10:05:54', '2023-08-01 10:06:03'),
(5, 'Twitter', 'http://www.twitter.com', '2023-08-01 10:06:22', '2023-08-01 10:06:22');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'user@mail.com', '2023-08-14 06:31:40', '2023-08-14 06:31:40'),
(2, 'user1@mail.com', '2023-08-14 06:34:54', '2023-08-14 06:34:54'),
(3, 'user2@mail.com', '2023-08-14 06:35:02', '2023-08-14 06:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `reset_code` int(11) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `points` int(11) NOT NULL DEFAULT 0,
  `status` enum('1','2') NOT NULL DEFAULT '1',
  `country_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `code`, `reset_code`, `remember_token`, `points`, `status`, `country_id`, `created_at`, `updated_at`) VALUES
(4, 'M M Osman', 'm.m.osman@gmail.com', '2023-07-30 21:00:00', '$2y$10$sM2oI7KeHWDClkui9y/OR.cO.vijPBeaWEEhmBmBnJzIYlpB9Licq', 116637, 811139, NULL, 0, '2', 4, '2023-07-31 04:21:22', '2023-08-03 09:19:17'),
(5, 'M Mohsen', 'm.mohsen@gmail.com', NULL, '$2y$10$bVSjYLiFF1josrlkJr1NXO71N2/OmmSxbQwMiEdetSycz74y2/FqW', 777287, 280328, NULL, 0, '1', 5, '2023-07-31 10:03:47', '2023-08-09 02:53:56'),
(17, 'OsamaMohammed', 'osama.m.mohammed.yousry.98@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '1', 4, '2023-08-28 08:52:48', '2023-08-28 08:52:48'),
(21, 'OsamaMohammed', 'osama.m.mohammed2.yousry.98@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '1', 4, '2023-10-10 05:19:40', '2023-10-10 05:19:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_us_translations`
--
ALTER TABLE `about_us_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `about_us_translations_about_us_id_locale_unique` (`about_us_id`,`locale`),
  ADD KEY `about_us_translations_locale_index` (`locale`);

--
-- Indexes for table `accommodations`
--
ALTER TABLE `accommodations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accommodations_reservation_id_foreign` (`reservation_id`);

--
-- Indexes for table `additional_trips`
--
ALTER TABLE `additional_trips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `additional_trip_translations`
--
ALTER TABLE `additional_trip_translations`
  ADD PRIMARY KEY (`trans_id`),
  ADD UNIQUE KEY `additional_trip_translations_additional_trip_id_locale_unique` (`additional_trip_id`,`locale`),
  ADD KEY `additional_trip_translations_locale_index` (`locale`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_translations_category_id_locale_unique` (`category_id`,`locale`),
  ADD KEY `category_translations_locale_index` (`locale`);

--
-- Indexes for table `conditions`
--
ALTER TABLE `conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `condition_translations`
--
ALTER TABLE `condition_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `condition_translations_condition_id_foreign` (`condition_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_translations`
--
ALTER TABLE `country_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `country_translations_country_id_locale_unique` (`country_id`,`locale`),
  ADD KEY `country_translations_locale_index` (`locale`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `infos`
--
ALTER TABLE `infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `metas`
--
ALTER TABLE `metas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meta_translations`
--
ALTER TABLE `meta_translations`
  ADD PRIMARY KEY (`trans_id`),
  ADD UNIQUE KEY `meta_translations_meta_id_locale_unique` (`meta_id`,`locale`),
  ADD KEY `meta_translations_locale_index` (`locale`);

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
-- Indexes for table `overviews`
--
ALTER TABLE `overviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overview_translations`
--
ALTER TABLE `overview_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `overview_translations_overview_id_locale_unique` (`overview_id`,`locale`),
  ADD KEY `overview_translations_locale_index` (`locale`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_photos`
--
ALTER TABLE `page_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_photos_page_id_foreign` (`page_id`);

--
-- Indexes for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_foreign` (`page_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_translations`
--
ALTER TABLE `question_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `question_translations_question_id_locale_unique` (`question_id`,`locale`),
  ADD KEY `question_translations_locale_index` (`locale`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_translations`
--
ALTER TABLE `service_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `service_translations_service_id_locale_unique` (`service_id`,`locale`),
  ADD KEY `service_translations_locale_index` (`locale`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `setting_foreign` (`setting_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_translations`
--
ALTER TABLE `slider_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slider_foreign` (`slider_id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `country_id` (`country_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_us_translations`
--
ALTER TABLE `about_us_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `accommodations`
--
ALTER TABLE `accommodations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=900;

--
-- AUTO_INCREMENT for table `additional_trips`
--
ALTER TABLE `additional_trips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `additional_trip_translations`
--
ALTER TABLE `additional_trip_translations`
  MODIFY `trans_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `conditions`
--
ALTER TABLE `conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `condition_translations`
--
ALTER TABLE `condition_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `country_translations`
--
ALTER TABLE `country_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `infos`
--
ALTER TABLE `infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `metas`
--
ALTER TABLE `metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `meta_translations`
--
ALTER TABLE `meta_translations`
  MODIFY `trans_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `overviews`
--
ALTER TABLE `overviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `overview_translations`
--
ALTER TABLE `overview_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `page_photos`
--
ALTER TABLE `page_photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `question_translations`
--
ALTER TABLE `question_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service_translations`
--
ALTER TABLE `service_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_translations`
--
ALTER TABLE `setting_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `slider_translations`
--
ALTER TABLE `slider_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `about_us_translations`
--
ALTER TABLE `about_us_translations`
  ADD CONSTRAINT `about_us_translations_about_us_id_foreign` FOREIGN KEY (`about_us_id`) REFERENCES `about_us` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `additional_trip_translations`
--
ALTER TABLE `additional_trip_translations`
  ADD CONSTRAINT `additional_trip_translations_additional_trip_id_foreign` FOREIGN KEY (`additional_trip_id`) REFERENCES `additional_trips` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `condition_translations`
--
ALTER TABLE `condition_translations`
  ADD CONSTRAINT `condition_translations_condition_id_foreign` FOREIGN KEY (`condition_id`) REFERENCES `conditions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `country_translations`
--
ALTER TABLE `country_translations`
  ADD CONSTRAINT `country_translations_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_translations`
--
ALTER TABLE `service_translations`
  ADD CONSTRAINT `service_translations_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
