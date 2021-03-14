-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2021 at 05:48 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `heart_diet`
--

-- --------------------------------------------------------

--
-- Table structure for table `articals`
--

CREATE TABLE `articals` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image` varchar(250) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articals`
--

INSERT INTO `articals` (`id`, `title`, `description`, `image`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Artical', 'artical description', 'EcOudm26aV.1614014575.png', '1', '2021-02-18 22:55:48', '2021-02-22 17:22:56', NULL),
(2, 'fsdaf', 'fsadfsaf', 'j6N9rnWIju.1613669523.jpg', '1', '2021-02-18 23:02:03', '2021-02-18 17:32:18', '2021-02-18 17:32:18'),
(3, 'Test', 'lorem ipsum', 'tC6ewH5maj.1613752864.png', '1', '2021-02-19 22:10:54', '2021-02-19 16:41:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cholesterol` int(11) NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `title`, `description`, `cholesterol`, `image`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Eggs', 'Eggs are one of the most nutritious foods you can eat. They also happen to be high in cholesterol, with one large egg delivering 211 mg of cholesterol, or 70% of the RDI (11).\r\n\r\nPeople often avoid eggs out of fear that they may cause cholesterol to skyrocket. However, research shows that eggs don’t negatively impact cholesterol levels and that eating whole eggs can lead to increases in heart-protective HDL (12Trusted Source).\r\n\r\nAside from being rich in cholesterol, eggs are an excellent source of highly absorbable protein and loaded with beneficial nutrients like B vitamins, selenium and vitamin A (13).', 100, NULL, '1', '2021-02-17 23:11:49', NULL, NULL),
(2, 'Cheese', 'A 1-ounce (28-gram) serving of cheese provides 27 mg of cholesterol, or about 9% of the RDI (16).\r\n\r\nAlthough cheese is often associated with increased cholesterol, several studies have shown that full-fat cheese does not negatively impact cholesterol levels.\r\n\r\nOne 12-week study in 162 people found that a high intake of 80 grams or about 3 ounces of full-fat cheese per day did not raise “bad” LDL cholesterol, compared to the same amount of low-fat cheese or the equal number of calories from bread and jam (17Trusted Source).\r\n\r\nDifferent types of cheese vary in nutritional content, but most cheeses provide a good amount of calcium, protein, B vitamins and vitamin A (18, 19).\r\n\r\nSince cheese is high in calories, stick to the recommended serving size of 1–2 ounces at a time to keep portions in check.', 200, NULL, '1', '2021-02-17 23:12:04', NULL, NULL),
(3, 'Shellfish', 'Shellfish — including clams, crab and shrimp — are an excellent source of protein, B vitamins, iron and selenium (20, 21).\r\n\r\nThey’re also high in cholesterol. For example, a 3-ounce (85-gram) serving of shrimp provides 166 mg of cholesterol — which is over 50% of the RDI (22).\r\n\r\nAdditionally, shellfish contain bioactive components — such as carotenoid antioxidants and the amino acid taurine — that help prevent heart disease and lower “bad” LDL cholesterol (23Trusted Source, 24Trusted Source).\r\n\r\nPopulations that consume more seafood have demonstratively lower rates of heart disease, diabetes and inflammatory diseases like arthritis (25Trusted Source).', 300, NULL, '1', '2021-02-17 23:12:04', NULL, NULL),
(4, 'Pasture-Raised Steak', 'Eggs are one of the most nutritious foods you can eat. They also happen to be high in cholesterol, with one large egg delivering 211 mg of cholesterol, or 70% of the RDI (11).\r\n\r\nPeople often avoid eggs out of fear that they may cause cholesterol to skyrocket. However, research shows that eggs don’t negatively impact cholesterol levels and that eating whole eggs can lead to increases in heart-protective HDL (12Trusted Source).\r\n\r\nAside from being rich in cholesterol, eggs are an excellent source of highly absorbable protein and loaded with beneficial nutrients like B vitamins, selenium and vitamin A (13).', 400, NULL, '1', '2021-02-17 23:12:04', NULL, NULL),
(5, 'Organ Meats', 'Cholesterol-rich organ meats — such as heart, kidney and liver — are highly nutritious.\r\n\r\nFor example, chicken heart is an excellent source of the powerful antioxidant CoQ10, as well as vitamin B12, iron and zinc.\r\n\r\nIt’s also high in cholesterol, with a 2-ounce (56-gram) serving providing 105 mg of cholesterol, or 36% of the RDI (32).\r\n\r\nOne study in over 9,000 Korean adults found that those with a moderate intake of unprocessed meat — including organ meats — had a lower risk of developing heart disease than those with the lowest consumption (33Trusted Source).', 500, NULL, '1', '2021-02-17 23:12:04', NULL, NULL),
(6, 'Sardines', 'Eggs are one of the most nutritious foods you can eat. They also happen to be high in cholesterol, with one large egg delivering 211 mg of cholesterol, or 70% of the RDI (11).\r\n\r\nPeople often avoid eggs out of fear that they may cause cholesterol to skyrocket. However, research shows that eggs don’t negatively impact cholesterol levels and that eating whole eggs can lead to increases in heart-protective HDL (12Trusted Source).\r\n\r\nAside from being rich in cholesterol, eggs are an excellent source of highly absorbable protein and loaded with beneficial nutrients like B vitamins, selenium and vitamin A (13).Sardines are not only loaded with nutrients but also a tasty and convenient protein source that can be added to a wide variety of dishes.\r\n\r\nOne 3.75-ounce (92-gram) serving of these tiny fish contains 131 mg of cholesterol, or 44% of the RDI, but it also packs 63% of the RDI for vitamin D, 137% of the RDI for B12 and 35% of the RDI for calcium (34).\r\n\r\nWhat’s more, sardines are an excellent source of iron, selenium, phosphorus, zinc, copper, magnesium and vitamin E.', 600, NULL, '1', '2021-02-17 23:12:04', NULL, NULL),
(7, 'Full-Fat Yogurt', 'Full-fat yogurt is a cholesterol-rich food packed with nutrients like protein, calcium, phosphorus, B vitamins, magnesium, zinc and potassium.\r\n\r\nOne cup (245 grams) of full-fat yogurt contains 31.9 mg of cholesterol, or 11% of the RDI (35).\r\n\r\nRecent research shows that increased consumption of full-fat fermented dairy products is associated with reductions in “bad” LDL cholesterol and blood pressure, as well as lower risks of stroke, heart disease and diabetes (36Trusted Source).\r\n\r\nPlus, fermented dairy products like yogurt benefit intestinal health by positively impacting friendly gut bacteria (37Trusted Source).', 700, NULL, '1', '2021-02-17 23:12:04', NULL, NULL),
(8, 'Fried Foods', 'Fried foods — such as deep-fried meats and cheese sticks — are high-cholesterol and should be avoided whenever possible.\r\n\r\nThat’s because they’re loaded with calories and can contain trans fats, which increase heart disease risk and are detrimental to your health in many other ways (38Trusted Source).\r\n\r\nPlus, high consumption of fried foods has been linked to an increased risk of heart disease, obesity and diabetes (39Trusted Source, 40Trusted Source).', 800, NULL, '1', '2021-02-17 23:12:04', NULL, NULL),
(9, 'Eggs', 'Eggs are one of the most nutritious foods you can eat. They also happen to be high in cholesterol, with one large egg delivering 211 mg of cholesterol, or 70% of the RDI (11).\r\n\r\nPeople often avoid eggs out of fear that they may cause cholesterol to skyrocket. However, research shows that eggs don’t negatively impact cholesterol levels and that eating whole eggs can lead to increases in heart-protective HDL (12Trusted Source).\r\n\r\nAside from being rich in cholesterol, eggs are an excellent source of highly absorbable protein and loaded with beneficial nutrients like B vitamins, selenium and vitamin A (13).', 100, NULL, '1', '2021-02-17 23:11:49', NULL, NULL),
(10, 'Cheese', 'A 1-ounce (28-gram) serving of cheese provides 27 mg of cholesterol, or about 9% of the RDI (16).\r\n\r\nAlthough cheese is often associated with increased cholesterol, several studies have shown that full-fat cheese does not negatively impact cholesterol levels.\r\n\r\nOne 12-week study in 162 people found that a high intake of 80 grams or about 3 ounces of full-fat cheese per day did not raise “bad” LDL cholesterol, compared to the same amount of low-fat cheese or the equal number of calories from bread and jam (17Trusted Source).\r\n\r\nDifferent types of cheese vary in nutritional content, but most cheeses provide a good amount of calcium, protein, B vitamins and vitamin A (18, 19).\r\n\r\nSince cheese is high in calories, stick to the recommended serving size of 1–2 ounces at a time to keep portions in check.', 200, NULL, '1', '2021-02-17 23:12:04', NULL, NULL),
(11, 'Shellfish', 'Shellfish — including clams, crab and shrimp — are an excellent source of protein, B vitamins, iron and selenium (20, 21).\r\n\r\nThey’re also high in cholesterol. For example, a 3-ounce (85-gram) serving of shrimp provides 166 mg of cholesterol — which is over 50% of the RDI (22).\r\n\r\nAdditionally, shellfish contain bioactive components — such as carotenoid antioxidants and the amino acid taurine — that help prevent heart disease and lower “bad” LDL cholesterol (23Trusted Source, 24Trusted Source).\r\n\r\nPopulations that consume more seafood have demonstratively lower rates of heart disease, diabetes and inflammatory diseases like arthritis (25Trusted Source).', 300, NULL, '1', '2021-02-17 23:12:04', NULL, NULL),
(12, 'Pasture-Raised Steak', 'Eggs are one of the most nutritious foods you can eat. They also happen to be high in cholesterol, with one large egg delivering 211 mg of cholesterol, or 70% of the RDI (11).\r\n\r\nPeople often avoid eggs out of fear that they may cause cholesterol to skyrocket. However, research shows that eggs don’t negatively impact cholesterol levels and that eating whole eggs can lead to increases in heart-protective HDL (12Trusted Source).\r\n\r\nAside from being rich in cholesterol, eggs are an excellent source of highly absorbable protein and loaded with beneficial nutrients like B vitamins, selenium and vitamin A (13).', 400, NULL, '1', '2021-02-17 23:12:04', NULL, NULL),
(13, 'Organ Meats', 'Cholesterol-rich organ meats — such as heart, kidney and liver — are highly nutritious.\r\n\r\nFor example, chicken heart is an excellent source of the powerful antioxidant CoQ10, as well as vitamin B12, iron and zinc.\r\n\r\nIt’s also high in cholesterol, with a 2-ounce (56-gram) serving providing 105 mg of cholesterol, or 36% of the RDI (32).\r\n\r\nOne study in over 9,000 Korean adults found that those with a moderate intake of unprocessed meat — including organ meats — had a lower risk of developing heart disease than those with the lowest consumption (33Trusted Source).', 500, NULL, '1', '2021-02-17 23:12:04', NULL, NULL),
(14, 'Sardines', 'Eggs are one of the most nutritious foods you can eat. They also happen to be high in cholesterol, with one large egg delivering 211 mg of cholesterol, or 70% of the RDI (11).\r\n\r\nPeople often avoid eggs out of fear that they may cause cholesterol to skyrocket. However, research shows that eggs don’t negatively impact cholesterol levels and that eating whole eggs can lead to increases in heart-protective HDL (12Trusted Source).\r\n\r\nAside from being rich in cholesterol, eggs are an excellent source of highly absorbable protein and loaded with beneficial nutrients like B vitamins, selenium and vitamin A (13).Sardines are not only loaded with nutrients but also a tasty and convenient protein source that can be added to a wide variety of dishes.\r\n\r\nOne 3.75-ounce (92-gram) serving of these tiny fish contains 131 mg of cholesterol, or 44% of the RDI, but it also packs 63% of the RDI for vitamin D, 137% of the RDI for B12 and 35% of the RDI for calcium (34).\r\n\r\nWhat’s more, sardines are an excellent source of iron, selenium, phosphorus, zinc, copper, magnesium and vitamin E.', 600, NULL, '1', '2021-02-17 23:12:04', NULL, NULL),
(15, 'Full-Fat Yogurt', 'Full-fat yogurt is a cholesterol-rich food packed with nutrients like protein, calcium, phosphorus, B vitamins, magnesium, zinc and potassium.\r\n\r\nOne cup (245 grams) of full-fat yogurt contains 31.9 mg of cholesterol, or 11% of the RDI (35).\r\n\r\nRecent research shows that increased consumption of full-fat fermented dairy products is associated with reductions in “bad” LDL cholesterol and blood pressure, as well as lower risks of stroke, heart disease and diabetes (36Trusted Source).\r\n\r\nPlus, fermented dairy products like yogurt benefit intestinal health by positively impacting friendly gut bacteria (37Trusted Source).', 700, NULL, '1', '2021-02-17 23:12:04', NULL, NULL),
(16, 'Fried Foods', 'Fried foods — such as deep-fried meats and cheese sticks — are high-cholesterol and should be avoided whenever possible.\r\n\r\nThat’s because they’re loaded with calories and can contain trans fats, which increase heart disease risk and are detrimental to your health in many other ways (38Trusted Source).\r\n\r\nPlus, high consumption of fried foods has been linked to an increased risk of heart disease, obesity and diabetes (39Trusted Source, 40Trusted Source).', 8001, 'AXhWxenNDY.1613667780.jpg', '1', '2021-02-17 23:12:04', '2021-02-18 17:07:36', NULL),
(17, 'fsafa', 'fsafdsaf', 34234, '3RkclNbDzB.1613668734.jpg', '1', '2021-02-18 22:48:54', '2021-02-18 17:19:12', '2021-02-18 17:19:12'),
(18, 'rewr', 'sdfsfsdf', 243, 'Z7H49tnIvj.1613752969.png', '1', '2021-02-19 22:12:49', '2021-02-19 16:43:21', '2021-02-19 16:43:21');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `sender_id` int(11) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) DEFAULT NULL,
  `is_read` enum('0','1') NOT NULL DEFAULT '0',
  `notification_id` bigint(20) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `meta_data` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `body`, `sender_id`, `receiver_id`, `is_read`, `notification_id`, `type`, `meta_data`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Your product like byRakesh Purohit', 'POCO X3 (Shadow Gray, 128 GB)  (6 GB RAM)', 3, 0, '0', NULL, NULL, 'a:0:{}', '2020-12-18 08:21:43', NULL, NULL),
(2, 'Your product like byRakesh Purohit', 'POCO X3 (Shadow Gray, 128 GB)  (6 GB RAM)', 3, 0, '0', NULL, NULL, 'a:1:{s:2:\"id\";s:1:\"9\";}', '2020-12-18 08:23:50', NULL, NULL),
(3, 'New order place byRakesh Purohit', 'emutz Pink Teddy Bear With Cap - 12 Inch (Pink) - 12 inch  (Pink)', 3, 0, '0', NULL, NULL, 'a:1:{s:2:\"id\";s:2:\"14\";}', '2020-12-18 08:39:48', NULL, NULL),
(4, 'New order place byRakesh Purohit', 'emutz Pink Teddy Bear With Cap - 12 Inch (Pink) - 12 inch  (Pink)', 3, 0, '0', NULL, NULL, 'a:1:{s:2:\"id\";i:15;}', '2020-12-18 08:40:38', NULL, NULL),
(5, 'Successfully accepted byTony Stark', 'emutz Pink Teddy Bear With Cap - 12 Inch (Pink) - 12 inch  (Pink)', 2, 0, '0', NULL, NULL, 'a:1:{s:2:\"id\";s:1:\"3\";}', '2020-12-18 09:01:35', NULL, NULL),
(6, 'Order accepted byTony Stark', 'emutz Pink Teddy Bear With Cap - 12 Inch (Pink) - 12 inch  (Pink)', 2, 0, '0', NULL, NULL, 'a:1:{s:2:\"id\";s:1:\"3\";}', '2020-12-18 09:05:33', NULL, NULL),
(7, 'Order declined byTony Stark', 'emutz Pink Teddy Bear With Cap - 12 Inch (Pink) - 12 inch  (Pink)', 2, 0, '0', NULL, NULL, 'a:1:{s:2:\"id\";s:1:\"3\";}', '2020-12-18 09:07:37', NULL, NULL),
(8, 'Order accepted byTony Stark', 'emutz Pink Teddy Bear With Cap - 12 Inch (Pink) - 12 inch  (Pink)', 2, 0, '0', NULL, NULL, 'a:1:{s:2:\"id\";s:1:\"3\";}', '2020-12-18 09:07:57', NULL, NULL),
(9, 'Order accepted', 'Order accepted byA One Technology', 2, 0, '0', NULL, NULL, 'a:1:{s:2:\"id\";s:1:\"3\";}', '2020-12-18 09:23:34', NULL, NULL),
(10, 'Order accepted', 'Order accepted byA One Technology', 2, 0, '0', NULL, NULL, 'a:1:{s:2:\"id\";s:1:\"3\";}', '2020-12-18 10:44:04', NULL, NULL),
(11, 'Order accepted', 'Order accepted byA One Technology', 2, 0, '0', NULL, NULL, 'a:1:{s:2:\"id\";s:1:\"3\";}', '2020-12-18 10:54:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$mHVOfAYVnmJxHtjgGsxiVOInfjjREcaFMYXQhIbusUStkfOOw5Fxq', '2020-12-10 05:52:27'),
('wstkpeng@gmail.com', '$2y$10$PKZLjOGFgSjkqrzjSn4XKO6fgcPNeG2o7uAUeZpe0Z/fPrdx7y9Yy', '2020-12-12 09:39:48'),
('ivan.grceo@gmail.com', '$2y$10$D6Rcdrz7iuRRuztlFjkfV.E7KgxwKEtCGWA1sSYjI1xIldopSV4VG', '2020-12-14 05:19:55'),
('dcy89@hotmail.my', '$2y$10$2zmmHGAe/jPo4r9sX3rc/OKyGa.pkX.s5hA2EWQzr/8SpuQL2NoAi', '2020-12-14 06:07:53'),
('shivamyadav8959@gmail.com', '$2y$10$l96tcGZG1TXNrJZJQDaTDeXhlrRBIrHeEzDADZIxSZD0kUbmNgCjq', '2020-12-14 06:18:30'),
('ericshim8688@gmail.com', '$2y$10$WFKx1n49BEskOPhqeLF7Yet1pZP/6zeRfHGTI1GZ63oYTgNcyb0GG', '2020-12-14 06:21:08'),
('ericshim1988@gmail.com', '$2y$10$5/gWKACnNGpLLjKpZv8OreclwlJvCRgWcEouj7nlZx0TYQZ/1mDtq', '2020-12-14 06:21:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2' COMMENT '1 for Aamin, 2 for user',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` int(10) DEFAULT NULL,
  `device_type` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '1 for android, 2 for IOS',
  `device_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `social_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_type` enum('web','andoid','ios','') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_notify` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `deleted_reason` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `deactive_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `phone`, `profile_image`, `email_verified_at`, `password`, `city`, `address`, `zip_code`, `device_type`, `device_token`, `is_active`, `social_id`, `login_type`, `remember_token`, `is_notify`, `deleted_reason`, `deactive_reason`, `lat`, `lng`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', 'Heart Diet', 'admin@gmail.com', '999999999', NULL, NULL, '$2y$10$FAmAR44yqC5Qj/J6QRwHQeAy7ANfRDk3.lgdIbZ6VwpGZE5TC0RtS', NULL, NULL, NULL, '0', NULL, '1', '', NULL, 'J5V5inMynpaIEGxuTnOEY6mbCLnbUT1TForcsB7owDI4OS8rEofBiHx9irnh', '1', NULL, NULL, NULL, NULL, NULL, '2020-12-10 05:46:52', NULL),
(2, '2', 'Tony Stark', 'tony.stark1@gmail.com', '7896541258', 'U6OVC7ZeNC.1608202933.jpeg', NULL, '$2y$10$FAmAR44yqC5Qj/J6QRwHQeAy7ANfRDk3.lgdIbZ6VwpGZE5TC0RtS', 'Indore', '56/A Shivaji Nagar, Indore', 452010, '1', NULL, '0', '', NULL, NULL, '1', NULL, 'lorem ipsum', NULL, NULL, '2020-12-11 10:59:46', '2021-02-18 12:09:10', NULL),
(3, '2', 'Rakesh Purohit', 'john.smith@gmail.com', '8888888888', 'U6OVC7ZeNC.1608202933.jpeg', NULL, '$2y$10$FAmAR44yqC5Qj/J6QRwHQeAy7ANfRDk3.lgdIbZ6VwpGZE5TC0RtS', NULL, '56/A Shivaji Nagar, Indore', NULL, '1', NULL, '1', '', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2020-12-11 11:03:02', '2020-12-17 10:02:13', NULL),
(4, '2', 'ivangr', 'ivan.grceo@gmail.com', '0123383842', NULL, NULL, '$2y$10$FAmAR44yqC5Qj/J6QRwHQeAy7ANfRDk3.lgdIbZ6VwpGZE5TC0RtS', 'SRI PETALING', '37-2,JALAN RADIN BAGUS,BANDAR BARU SRI PETALING', 57000, '1', NULL, '0', '', NULL, NULL, '1', 'Lorem ipsum', 'Lorem ipsm', NULL, NULL, '2020-12-11 13:45:57', '2020-12-26 05:55:59', NULL),
(5, '2', 'ivangr', 'ocaivan@gmail.com', '0127173842', NULL, NULL, '$2y$10$FAmAR44yqC5Qj/J6QRwHQeAy7ANfRDk3.lgdIbZ6VwpGZE5TC0RtS', NULL, 'SERDANG VILLA', NULL, '1', NULL, '1', '', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2020-12-11 14:02:51', NULL, NULL),
(6, '2', 'wstkpeng', 'wstkpeng@gmail.com', '0123383860', NULL, NULL, '$2y$10$FAmAR44yqC5Qj/J6QRwHQeAy7ANfRDk3.lgdIbZ6VwpGZE5TC0RtS', NULL, 'a-15-10 galleria', NULL, '1', NULL, '1', '', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2020-12-12 10:18:44', NULL, NULL),
(7, '2', 'wstkpeng', 'wstkpen@gmail.com', '0123456789', NULL, NULL, '$2y$10$FAmAR44yqC5Qj/J6QRwHQeAy7ANfRDk3.lgdIbZ6VwpGZE5TC0RtS', 'abc', NULL, 1234, '1', NULL, '1', '', NULL, 'NmC2m4Yv4qiNaorzeYFFmgpq0rLqpCy4cuE6baLc0pyPABGkF2VvySHt1TwL', '1', NULL, NULL, NULL, NULL, '2020-12-12 10:29:24', '2020-12-26 12:49:58', NULL),
(8, '2', 'wstkpeng', 'wstkpe@gmail.com', '0123456788', NULL, NULL, '$2y$10$FAmAR44yqC5Qj/J6QRwHQeAy7ANfRDk3.lgdIbZ6VwpGZE5TC0RtS', 'abc', 'abc', 1234, '1', NULL, '1', '', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2020-12-12 10:30:03', NULL, NULL),
(9, '2', 'wstkpeng', 'wstkp@gmail.com', '0123456787', NULL, NULL, '$2y$10$FAmAR44yqC5Qj/J6QRwHQeAy7ANfRDk3.lgdIbZ6VwpGZE5TC0RtS', 'abc', 'abc', 1234, '1', NULL, '1', '', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2020-12-12 10:30:23', NULL, NULL),
(10, '2', 'abc', 'shivamyadav8959@gmail.com', '9876543210', NULL, NULL, '$2y$10$FAmAR44yqC5Qj/J6QRwHQeAy7ANfRDk3.lgdIbZ6VwpGZE5TC0RtS', '123', 'abc', 123, '1', NULL, '1', '', NULL, 'oFfPeLOnVa1oGgRoO8rtBmSu4VmjuWPCx7WBRAT2lA2lLY0Fg6W5AMllHskZ', '1', NULL, NULL, NULL, NULL, '2020-12-12 10:32:54', '2020-12-14 06:03:04', NULL),
(11, '2', 'Eric', 'ericshim1988@gmail.com', '0123433842', NULL, NULL, '$2y$10$FAmAR44yqC5Qj/J6QRwHQeAy7ANfRDk3.lgdIbZ6VwpGZE5TC0RtS', NULL, 'marshall11', NULL, '1', NULL, '1', '', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2020-12-14 06:41:51', NULL, NULL),
(12, '2', 'Dylan Yong', 'dcy89@hotmail.my', '0125383913', NULL, NULL, '$2y$10$FAmAR44yqC5Qj/J6QRwHQeAy7ANfRDk3.lgdIbZ6VwpGZE5TC0RtS', NULL, 'c 16-13, Jalan PJU 1a/3, Ara Damansara, 47301 Petaling Jaya, Selangor.', NULL, '1', NULL, '1', '', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2020-12-14 06:44:30', NULL, NULL),
(13, '2', 'ericshim8688@gmail.com', 'ericshim8688@gmail.com', '0128868707', NULL, NULL, '$2y$10$FAmAR44yqC5Qj/J6QRwHQeAy7ANfRDk3.lgdIbZ6VwpGZE5TC0RtS', 'Shah alam', 'kota kemuning', 40460, '1', NULL, '1', '', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2020-12-14 06:49:30', NULL, NULL),
(14, '2', 'Dylan Yong', 'dylancy89@gmail.com', '0125393632', NULL, NULL, '$2y$10$FAmAR44yqC5Qj/J6QRwHQeAy7ANfRDk3.lgdIbZ6VwpGZE5TC0RtS', 'Petaling jaya', 'c 16-13, Jalan PJU 1a /3, Ara Damansara, 47301 Petaling Jaya Selangor', 47301, '1', NULL, '1', '', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2020-12-14 06:51:41', '2020-12-19 06:26:39', NULL),
(15, '2', 'SaSa Cheok', 'sasacheok@gmail.com', '0173433842', NULL, NULL, '$2y$10$FAmAR44yqC5Qj/J6QRwHQeAy7ANfRDk3.lgdIbZ6VwpGZE5TC0RtS', NULL, 'No 32, Jln Sg Merbau 32/89, Greenville', NULL, '1', NULL, '1', '', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2020-12-14 06:59:53', NULL, NULL),
(16, '2', NULL, NULL, NULL, NULL, NULL, '$2y$10$FAmAR44yqC5Qj/J6QRwHQeAy7ANfRDk3.lgdIbZ6VwpGZE5TC0RtS', NULL, NULL, NULL, '1', NULL, '1', '', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2020-12-25 17:34:56', NULL, NULL),
(17, '2', 'Shivam', NULL, NULL, NULL, NULL, '$2y$10$FAmAR44yqC5Qj/J6QRwHQeAy7ANfRDk3.lgdIbZ6VwpGZE5TC0RtS', NULL, NULL, NULL, '1', NULL, '1', '', NULL, NULL, '1', NULL, NULL, '25.342432', '27.234434', '2020-12-25 17:36:04', '2020-12-25 12:48:43', NULL),
(18, '2', NULL, NULL, NULL, NULL, NULL, '$2y$10$FAmAR44yqC5Qj/J6QRwHQeAy7ANfRDk3.lgdIbZ6VwpGZE5TC0RtS', NULL, NULL, NULL, '1', NULL, '1', '242343242343324', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2020-12-25 18:09:34', '2020-12-25 12:39:46', NULL),
(19, '2', NULL, NULL, NULL, NULL, NULL, '$2y$10$FAmAR44yqC5Qj/J6QRwHQeAy7ANfRDk3.lgdIbZ6VwpGZE5TC0RtS', NULL, NULL, NULL, '1', NULL, '1', '2423432423433241', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2020-12-25 18:10:08', '2020-12-25 12:40:08', NULL),
(20, '2', 'shivan yadav', 'shivamyadav@gmail.com', '12345678', NULL, NULL, '$2y$10$y0pnJtBPjzr01QCOK5MQeeb5mL251b1hChHjPsDg5ipCuSUnk26i6', NULL, NULL, NULL, '0', NULL, '1', NULL, 'web', NULL, '1', NULL, NULL, NULL, NULL, '2020-12-27 10:24:21', NULL, NULL),
(21, '2', 'Shivam Yadav', 'shiavamyadav8959@gmail.com', '430543543', 'T7lxAFabbO.1609065140.jpg', NULL, '$2y$10$7Qn3uCQrcyvbTG5ov3gwk.5dtj5kYPToFTwHgxczj4wupAbCxtB7m', NULL, NULL, NULL, '0', NULL, '1', NULL, 'web', NULL, '1', NULL, NULL, NULL, NULL, '2020-12-27 10:32:20', NULL, NULL),
(22, '2', 'Tony Stark', 'tony@gmail.com', '24324234', '3S9Adk1Hgh.1609066223.png', NULL, '$2y$10$nZxZg1SQ.3rFv8XjIPgnaeG7Vdp5i7AB3fRLc8TM54Ldzmurt34tm', NULL, NULL, NULL, '0', NULL, '1', NULL, 'web', NULL, '1', NULL, NULL, NULL, NULL, '2020-12-27 10:50:23', NULL, NULL),
(23, '2', 'tarun sagar', 'rarun@gmail.com', '24249', NULL, NULL, '$2y$10$cmQ4FSiNdscKnY2pumcdeeCfObu/JeGh4di15/XjXm9qSPzyGK7pm', NULL, NULL, NULL, '0', NULL, '1', NULL, 'web', NULL, '1', NULL, NULL, NULL, NULL, '2020-12-27 10:52:48', NULL, NULL),
(24, '2', 'makhan tiwari', 'makhan@gmail.com', '32423424', '08EGavLRmX.1609066544.jpg', NULL, '$2y$10$Q../y8I6FaDaKKxhXSaTvuei6Fl49HDwMe76kTH6FKzv0OJwCaR5i', NULL, NULL, NULL, '0', NULL, '1', NULL, 'web', 'Esl0M3BbuvSwqqQ7hPtT0bZU1YU6KeS059peTbrB3Rkxv8rhbv3o0TogvnM5', '1', NULL, NULL, NULL, NULL, '2020-12-27 10:55:44', NULL, NULL),
(25, '2', NULL, NULL, NULL, NULL, NULL, '$2y$10$E5LrmCwT.DrNJ2EfPQt3/.mDuojI/EsCGIqU3MKjzQ3Q69Dz7jiyq', NULL, NULL, NULL, '1', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '2021-01-16 17:16:34', NULL, NULL),
(26, '2', NULL, NULL, NULL, NULL, NULL, '$2y$10$gtD3ziWH9lCJ//fL4hMOVO/AdNXbLuYRvqR/HqOsd7uzOsueCOYji', NULL, NULL, NULL, '1', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '2021-01-16 17:17:44', NULL, NULL),
(27, '2', NULL, NULL, NULL, NULL, NULL, '$2y$10$50vRpzmiRzLX30g/Xb3d5umxFLRK4H2i/HhSBCyF1RtH1gvQNSX3y', NULL, NULL, NULL, '1', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '2021-01-16 17:20:30', NULL, NULL),
(28, '2', NULL, NULL, NULL, NULL, NULL, '$2y$10$8tyi04vdLzEwDUzA7WgOVua0x.KrLOB9omNmM4J2u3epH41gon55u', NULL, NULL, NULL, '1', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '2021-01-16 17:33:05', NULL, NULL),
(32, '2', 'Tony Stark', 'tony.stark@gmail.com', NULL, NULL, NULL, '$2y$10$YhpRNjX1gLUd/OkVKd8ADeLsbnBCeaQbpGgH8H5nX8xfvKsa8zF0q', NULL, NULL, NULL, '1', '374289345767676738954305048', '1', NULL, NULL, 'cTCtoomU54XYXymKYdvr9pp5uxn6sEl8ipIYJirxZM0qN6QyoJ5zVqm8Cblz', '1', NULL, NULL, NULL, NULL, '2021-02-17 17:25:00', '2021-02-17 12:06:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_diets`
--

CREATE TABLE `user_diets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `food_id` int(11) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articals`
--
ALTER TABLE `articals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_diets`
--
ALTER TABLE `user_diets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articals`
--
ALTER TABLE `articals`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `user_diets`
--
ALTER TABLE `user_diets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
