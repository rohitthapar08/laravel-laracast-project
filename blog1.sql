-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2018 at 08:38 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog1`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(25) UNSIGNED NOT NULL,
  `user_id` int(25) DEFAULT NULL,
  `post_id` int(25) NOT NULL,
  `body` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'RAAAAAAAHHH', '2018-07-05 06:27:23', '2018-07-05 06:27:23'),
(2, NULL, 2, 'aa', '2018-07-05 01:05:40', '2018-07-05 01:05:40'),
(3, NULL, 2, 'asasasas', '2018-07-05 01:05:47', '2018-07-05 01:05:47'),
(4, NULL, 6, 'sasasasas', '2018-07-05 01:06:58', '2018-07-05 01:06:58'),
(5, NULL, 7, 'arya is best', '2018-07-05 01:07:40', '2018-07-05 01:07:40');

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
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2018_06_29_043156_create_posts_table', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(25) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'hello', 'hello rohit', '2018-07-03 22:35:12', '0000-00-00 00:00:00'),
(2, 5, 'VICKY', 'ddsdsdsdsdsd', '2018-02-02 00:03:55', '2018-02-02 00:03:55'),
(3, 5, 'hello raj', 'my rAJ', '2018-07-02 00:04:37', '2018-07-02 00:04:37'),
(4, 6, 'hello raja', 'my rAJa', '2018-05-02 00:04:37', '2018-05-02 00:04:37'),
(5, 14, 'asasa', 'asas', '2018-07-03 04:56:13', '2018-07-03 04:56:13'),
(6, 14, 'dsdsdsdsd', 'sdsdsdsd', '2018-07-03 04:58:14', '2018-07-03 04:58:14'),
(7, 15, 'hello', 'myname isARYA', '2018-07-05 00:51:26', '2018-07-05 00:51:26');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `post_id` int(52) NOT NULL,
  `tag_id` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`post_id`, `tag_id`) VALUES
(1, 1),
(2, 1),
(3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(25) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'php', '2018-07-05 05:27:15', '0000-00-00 00:00:00'),
(2, 'tag', '2018-07-05 05:27:24', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'john@example.com', '$2y$10$lnF308twA9x.bQa.pN7sz.pKanaDBUrRGRCDmyMD9Wu3MpjvHX7Ka', NULL, '2018-06-29 06:43:58', '2018-06-29 06:43:58'),
(5, 'raj', 'raj@gmail.com', 'qwerty', 'bbUQVfeEpE3xH5HXBIYcsWYVLR35N0ot7OACi73TS51o3SgWHwLgRhavTsDC', '2018-07-02 00:02:28', '2018-07-02 00:02:28'),
(6, 'rohit', 'rohit@gmail.com', 'qwer', 'of2tE9pjJtcV8F5dwY540h2GHlVBTziSSSNN5zCGqMeS2tdkXtVTx6uK3IOU', '2018-07-02 00:06:48', '2018-07-02 00:06:48'),
(7, 'Mr. Marco Schoen III', 'marlee99@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'WEW8BHd0LW', '2018-07-02 03:58:30', '2018-07-02 03:58:30'),
(8, 'Simeon Mayer', 'wstanton@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ArGEhVI0JF', '2018-07-02 04:08:03', '2018-07-02 04:08:03'),
(9, 'Olga Robel', 'ogottlieb@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '73aUX9eXcH', '2018-07-02 04:11:33', '2018-07-02 04:11:33'),
(10, 'test', 'test@gmail.com', '1234', NULL, '2018-07-03 04:37:42', '2018-07-03 04:37:42'),
(11, 'testuser', 'testuser@gmail.com', '123', 'tCAotYNESkyWLfbOmyDDkSS4x0ZVWYvvbr7uODkNFhWr6LTaN0LjzNt8dPLr', '2018-07-03 04:39:53', '2018-07-03 04:39:53'),
(12, 'vvicky', 'vicky@gmail.com', '123', 'iz1EG4lU3d4Nuvo2663ouFh8JKZRD1NXc6X3cbgeoJTUcMXLlqfpuzYBMC6M', '2018-07-03 04:47:35', '2018-07-03 04:47:35'),
(13, 'sdsd', 'sdsd@gmail.com', '123', NULL, '2018-07-03 04:49:09', '2018-07-03 04:49:09'),
(14, 'assasa', 'asasa@dsds.com', '123', NULL, '2018-07-03 04:50:42', '2018-07-03 04:50:42'),
(15, 'arya', 'arya@gmail.com', '123', NULL, '2018-07-05 00:50:49', '2018-07-05 00:50:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
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
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
  MODIFY `id` int(25) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
