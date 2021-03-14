-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2021 at 02:57 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-test`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `category`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Nemo nihil repellendus fugiat.', 'Est aliquid voluptatem nesciunt.', 'Ad praesentium ut repudiandae sunt. Sunt nobis animi assumenda. Et aliquid distinctio voluptate molestiae nesciunt delectus nihil.', '2021-03-14 08:24:05', '2021-03-14 08:24:05'),
(2, 1, 'Praesentium qui quo voluptatem laudantium.', 'Alias blanditiis dolor ab non quia.', 'Commodi iusto nobis aut et quo fugiat est doloribus. Vel nobis velit assumenda voluptas itaque sapiente optio.', '2021-03-14 08:24:05', '2021-03-14 08:24:05'),
(3, 1, 'Aut qui totam amet voluptatem.', 'Eum eum asperiores velit ut nihil.', 'Quasi velit ad ad quia quibusdam. Est itaque nesciunt omnis voluptatem. Laborum beatae saepe tenetur atque sint quo.', '2021-03-14 08:24:05', '2021-03-14 08:24:05'),
(4, 1, 'Quis facilis voluptas recusandae libero alias.', 'A et alias consectetur et.', 'Deleniti aperiam molestiae qui rerum voluptas quis. Impedit doloribus temporibus ipsam nemo quo. Ut sit quia similique nulla. Voluptas dignissimos sit aut ab reiciendis ut. Corporis quaerat exercitationem a quidem.', '2021-03-14 08:24:05', '2021-03-14 08:24:05'),
(5, 1, 'Occaecati pariatur harum omnis non aspernatur.', 'Odio iure est vero laboriosam quia et.', 'Eum voluptate sapiente eos voluptatem cupiditate qui et. Rerum cupiditate ipsam atque quia. Sint qui quam sed et est ullam ullam labore.', '2021-03-14 08:24:05', '2021-03-14 08:24:05'),
(6, 1, 'Asperiores inventore qui aliquid ducimus distinctio ex.', 'Sapiente sed excepturi non commodi est sit.', 'Aliquam officiis eius veritatis veniam maiores consectetur mollitia quis. Placeat consequatur inventore expedita aspernatur. Quod aut vero qui nobis quod.', '2021-03-14 08:24:05', '2021-03-14 08:24:05'),
(7, 1, 'Et sequi quam quae iste ut cupiditate.', 'Enim et ipsum qui cum et magni ullam officia.', 'Quod nihil ratione ut at sed voluptatem ea. Necessitatibus qui id et ut ut sed. Id est quaerat qui est. Accusantium in explicabo tenetur commodi molestiae.', '2021-03-14 08:24:05', '2021-03-14 08:24:05'),
(8, 1, 'Maxime et magnam omnis tempora architecto.', 'Maiores in omnis labore doloremque.', 'Magni est corrupti et facilis et libero. Sed ratione dolores odit error qui perferendis et. Reiciendis officiis voluptatum sed.', '2021-03-14 08:24:05', '2021-03-14 08:24:05'),
(9, 1, 'Recusandae et earum ea similique doloribus cumque deleniti.', 'Nesciunt aperiam sit dolorem perspiciatis.', 'Possimus consectetur non voluptatibus cumque esse a at. Minima necessitatibus nostrum hic eligendi maiores. Aut porro dolorum sunt rerum expedita quia expedita.', '2021-03-14 08:24:05', '2021-03-14 08:24:05'),
(10, 1, 'Blanditiis aut ut sed qui sed nemo error.', 'Doloribus enim minima itaque repellendus veritatis in.', 'Nihil illum assumenda est quis molestiae sint aspernatur provident. Odit facilis et natus unde. Eaque est et quos quisquam.', '2021-03-14 08:24:05', '2021-03-14 08:24:05');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_14_114653_create_jobs_table', 2),
(5, '2021_03_14_125510_create_blog_table', 3);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `email_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `email_token`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '2021-03-14 08:25:21', NULL, '$2y$10$1vCsxNPBYzSY.llMofqzSOiez.oAtFncORgPLbwIQWcuK4LNSLl.q', NULL, '2021-03-14 08:24:05', '2021-03-14 08:25:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
