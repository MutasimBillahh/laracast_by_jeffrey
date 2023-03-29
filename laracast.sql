-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2023 at 09:44 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laracast`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cruds`
--

CREATE TABLE `cruds` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cruds`
--

INSERT INTO `cruds` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'tamim', '2022-12-11 04:39:52', '2022-12-11 04:39:52'),
(2, 'tamim4', '2022-12-11 04:48:37', '2022-12-11 04:48:37'),
(3, 'Marilia Campos', '2022-12-11 05:40:28', '2022-12-11 05:40:28'),
(4, 'Marilia Campos3', '2022-12-11 06:07:49', '2022-12-11 06:07:49'),
(5, 'Marilia Campos4', '2022-12-11 06:08:02', '2022-12-11 06:08:02'),
(6, 'Marilia Campos5', '2022-12-11 06:12:44', '2022-12-11 06:12:44'),
(7, 'Marilia Campos86', '2022-12-11 06:13:17', '2022-12-11 07:24:38'),
(11, 'Zach Stockton', NULL, NULL);

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
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2022_12_03_141900_create_posts_table', 1),
(8, '2022_12_05_124713_create_comments_table', 1),
(9, '2022_12_11_101824_create_cruds_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 3, 'my first', 'Get started with Bootstrap, the world’s most popular framework for building responsive, mobile-first sites, with jsDelivr and a template starter page.\r\n\r\nGet started with Bootstrap, the world’s most popular framework for building responsive, mobile-first sites, with jsDelivr and a template starter page.\r\n\r\nGet started with Bootstrap, the world’s most popular framework for building responsive, mobile-first sites, with jsDelivr and a template starter page.\r\n\r\nGet started with Bootstrap, the world’s most popular framework for building responsive, mobile-first sites, with jsDelivr and a template starter page.\r\n\r\nGet started with Bootstrap, the world’s most popular framework for building responsive, mobile-first sites, with jsDelivr and a template starter page.\r\n\r\nGet started with Bootstrap, the world’s most popular framework for building responsive, mobile-first sites, with jsDelivr and a template starter page.\r\n\r\nGet started with Bootstrap, the world’s most popular framework for building responsive, mobile-first sites, with jsDelivr and a template starter page.\r\n\r\nGet started with Bootstrap, the world’s most popular framework for building responsive, mobile-first sites, with jsDelivr and a template starter page.\r\n\r\nGet started with Bootstrap, the world’s most popular framework for building responsive, mobile-first sites, with jsDelivr and a template starter page.\r\n\r\nGet started with Bootstrap, the world’s most popular framework for building responsive, mobile-first sites, with jsDelivr and a template starter page.\r\n\r\nGet started with Bootstrap, the world’s most popular framework for building responsive, mobile-first sites, with jsDelivr and a template starter page.', '2021-05-05 18:00:00', '2022-12-06 03:56:16'),
(2, 3, 'My Second Post', 'Get started with Bootstrap, the world’s most popular framework for building responsive, mobile-first sites, with jsDelivr and a template starter page.\r\n\r\nGet started with Bootstrap, the world’s most popular framework for building responsive, mobile-first sites, with jsDelivr and a template starter page.\r\n\r\nGet started with Bootstrap, the world’s most popular framework for building responsive, mobile-first sites, with jsDelivr and a template starter page.\r\n\r\nGet started with Bootstrap, the world’s most popular framework for building responsive, mobile-first sites, with jsDelivr and a template starter page.', '2022-04-06 04:04:29', '2022-12-06 04:04:29'),
(4, 4, 'Tamim\'s Thouth', 'Get started with Bootstrap, the world’s most popular framework for building responsive, mobile-first sites, with jsDelivr and a template starter page.\r\n\r\nGet started with Bootstrap, the world’s most popular framework for building responsive, mobile-first sites, with jsDelivr and a template starter page.\r\n\r\nGet started with Bootstrap, the world’s most popular framework for building responsive, mobile-first sites, with jsDelivr and a template starter page.\r\n\r\nGet started with Bootstrap, the world’s most popular framework for building responsive, mobile-first sites, with jsDelivr and a template starter page.\r\n\r\nGet started with Bootstrap, the world’s most popular framework for building responsive, mobile-first sites, with jsDelivr and a template starter page.', '2022-12-06 04:45:42', '2022-12-06 04:45:42'),
(5, 4, 'Tamimmmmmmmmmmm', 'Get started with Bootstrap, the world’s most popular framework for building responsive, mobile-first sites, with jsDelivr and a template starter page.\r\n\r\nGet started with Bootstrap, the world’s most popular framework for building responsive, mobile-first sites, with jsDelivr and a template starter page.\r\n\r\nGet started with Bootstrap, the world’s most popular framework for building responsive, mobile-first sites, with jsDelivr and a template starter page.\r\n\r\n', '2021-05-07 14:09:31', '2022-12-06 14:09:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'tamim', 'stoolsshoop@gmail.com', '123', 'd4sPm8t2DCdoe66k9lXWfNcjsEBoTcdNrqFEmQ73h2FjK8kddc227z0BYasP', '2022-12-06 03:27:47', '2022-12-06 03:27:47'),
(3, 'Zach Stockton', 'tamim@gmail.com', '1234', 'eufUwiGr1KwHn7kFfCJP9k3Bv7zkmHd28yXtdxiThGsNG6rfWVfX3oQCSApq', '2022-12-06 03:38:28', '2022-12-06 03:38:28'),
(4, 'Tamim', 'tamimss@gmail.com', '123', '8fGElGXIPuPflQ15jJTLH1xssP6CnbjmBLpqLyMU9D1gKiDBZ82aHa3qEqjq', '2022-12-06 04:44:00', '2022-12-06 04:44:00'),
(5, 'Tamim2', 'tamim2@gmail.com', '123', NULL, '2022-12-07 08:48:59', '2022-12-07 08:48:59'),
(6, 'abc', 'abc@ab.bf', '123', 'bvTRkwOhhXGIgShnTlKQnUYhVYgEgxmOmZxAoPwCfWjBOJc8r0RyraMqI1Lm', '2022-12-07 08:53:54', '2022-12-07 08:53:54'),
(7, 'tamim4', 'tamim4@gmail.com', '123', NULL, '2022-12-07 09:15:58', '2022-12-07 09:15:58'),
(8, 'tamim4', 'tamim4@example.com', '123', NULL, '2022-12-07 09:28:59', '2022-12-07 09:28:59'),
(9, 'test', 'test@example.com', '12345', 'OdTY0EfD62WuID7yLwAkOg9xjRUTSGWaH2fDKjgmNgJCaIsoxfIiInSeHTUG', '2022-12-08 08:54:20', '2022-12-08 08:54:20'),
(10, 'Tamim85', 'tamim85@gmail.com', '123456', NULL, '2022-12-08 09:01:39', '2022-12-08 09:01:39'),
(12, 'Mesad', 'mesad@gmail.com', '123456789', NULL, '2022-12-08 09:04:06', '2022-12-08 09:04:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cruds`
--
ALTER TABLE `cruds`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cruds`
--
ALTER TABLE `cruds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
