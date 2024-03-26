-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2024 at 04:20 PM
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
-- Database: `utsppl`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `street` varchar(200) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `country` varchar(100) NOT NULL,
  `postal_code` varchar(10) DEFAULT NULL,
  `contact_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `street`, `city`, `province`, `country`, `postal_code`, `contact_id`, `created_at`, `updated_at`) VALUES
(1, 'kedunggalar', 'ngawi', 'jawa timur', 'indonesia', '23458', 1, '2024-03-25 20:18:40', '2024-03-25 20:18:40'),
(2, 'ketintang', 'surabaya', 'jawa timur', 'indonesia', '23456', 2, '2024-03-26 00:17:26', '2024-03-26 01:24:00'),
(5, 'kedunggalar', 'ngawi', 'jawa timur', 'Indonesia', '23459', 2, '2024-03-26 01:48:43', '2024-03-26 01:48:43'),
(6, 'ketintang', 'ngawi', 'jawa timur', 'Indonesia', '23457', 2, '2024-03-26 06:49:09', '2024-03-26 06:49:20'),
(7, 'kedunggalar', 'ngawi', 'jawa timur', 'Indonesia', '23456', 4, '2024-03-26 06:58:22', '2024-03-26 06:58:22'),
(8, 'kedunggalar', 'ngawi', 'jawa timur', 'Indonesia', '33345', 6, '2024-03-26 07:35:04', '2024-03-26 07:35:16'),
(9, 'Nirwana', 'surabaya', 'jawa timur', 'Indonesia', '23456', 6, '2024-03-26 07:35:32', '2024-03-26 07:35:32'),
(10, 'kedunggalar', 'ngawi', 'jawa timur', 'Indonesia', '23455', 7, '2024-03-26 07:53:45', '2024-03-26 07:53:53'),
(11, 'jetis', 'surabaya', 'jawa timur', 'Indonesia', '33345', 7, '2024-03-26 07:54:06', '2024-03-26 07:54:06');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `first_name`, `last_name`, `email`, `phone`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Shabrina Zahra', 'Aulia', 'zarah@gmail.com', '0895187766933', 1, '2024-03-25 20:18:18', '2024-03-25 20:18:18'),
(2, 'Amanda', 'khoiromaul', 'amanda22@gmail.com', '087664567788', 2, '2024-03-26 00:17:00', '2024-03-26 01:49:09'),
(4, 'Shabrina Zahra', 'Aulia', 'shabrina@gmail.com', '089765441876123', 4, '2024-03-26 06:57:44', '2024-03-26 06:57:44'),
(5, 'Amanda', 'Hariyanti', 'Nura45@gmail.com', '089518822933', 4, '2024-03-26 06:57:59', '2024-03-26 06:57:59'),
(6, 'Dina', 'Hariyanti', 'Dina67@gmail.com', '089518675889', 3, '2024-03-26 07:29:26', '2024-03-26 07:29:37'),
(7, 'Shabrina Zahra', 'Aulia', 'zarah@gmail.com', '086543678098', 3, '2024-03-26 07:48:27', '2024-03-26 07:48:27');

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_08_05_111839_create_users_table', 1),
(3, '2023_08_13_044638_create_contacts_table', 1),
(4, '2023_08_13_045550_create_addresses_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `token`, `created_at`, `updated_at`) VALUES
(1, 'brina26', '$2y$10$fK25HvSrW7uO2xwRjMT/c.jUizIEoPxOYcIvtbscI8bUJT7d2ortu', 'shabrina', NULL, '2024-03-25 20:16:49', '2024-03-25 20:16:49'),
(2, 'amanda22', '$2y$10$rCsbDw01HPjKR4JdJBVjXeN3X0gP7Fng1QRXyZZ7Dmq.uMr.Md5mW', 'amanda', NULL, '2024-03-25 23:39:08', '2024-03-26 06:49:37'),
(3, 'Dina67', '$2y$10$PWK0Idw76j6qhDt9Q8VV/uHpC5Jut8mf9DIOZ2tqvz/LfBYyM3AIW', 'DinaHariyanti', NULL, '2024-03-26 00:18:54', '2024-03-26 07:53:11'),
(4, 'zahra26', '$2y$10$7M9tlXNkJJmlDjTV8u4EyuI/I33K.kWfeQo0/U0fScA44mdpdK5ES', 'brina', NULL, '2024-03-26 06:56:53', '2024-03-26 06:58:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_contact_id_foreign` (`contact_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_token_unique` (`token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`);

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
