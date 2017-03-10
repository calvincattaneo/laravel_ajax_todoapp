-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 10-Mar-2017 às 18:07
-- Versão do servidor: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_ajax_todoapp`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_02_24_192330_create_todo_lists_table', 2),
('2017_03_09_123608_create_tasks_table', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `todo_list_id` int(10) UNSIGNED NOT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `todo_list_id`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 'The task 1 of todo list 1', 1, NULL, '2016-05-02 11:01:00', '2016-05-02 11:01:00'),
(2, 'The task 2 of todo list 1', 1, '2016-05-02 11:00:00', '2016-05-02 11:02:00', '2016-05-02 11:02:00'),
(3, 'The task 1 of todo list 2', 2, NULL, '2016-05-03 11:01:00', '2016-05-03 11:01:00'),
(4, 'The task 2 of todo list 2', 2, NULL, '2016-05-03 11:02:00', '2016-05-03 11:02:00'),
(5, 'The task 3 of todo list 2', 2, '2016-05-03 11:00:00', '2016-05-03 11:03:00', '2016-05-03 11:03:00'),
(6, 'The task 1 of todo list 3', 3, NULL, '2016-05-04 11:01:00', '2016-05-04 11:01:00'),
(7, 'The task 2 of todo list 3', 3, NULL, '2016-05-04 11:02:00', '2016-05-04 11:02:00'),
(8, 'The task 1 of todo list 4', 4, NULL, '2016-05-05 11:01:00', '2016-05-05 11:01:00'),
(9, 'The task 1 of todo list 5', 5, NULL, '2016-05-06 11:01:00', '2016-05-06 11:01:00'),
(10, 'The task 2 of todo list 5', 5, NULL, '2016-05-06 11:02:00', '2016-05-06 11:02:00'),
(11, 'The task 1 of todo list 6', 6, NULL, '2016-05-07 11:01:00', '2017-03-10 17:17:48'),
(13, 'The task 3 of todo list 6', 6, '2016-05-07 11:00:00', '2016-05-07 11:03:00', '2016-05-07 11:03:00'),
(14, 'The task 1 of todo list 7', 7, NULL, '2016-05-08 11:01:00', '2016-05-08 11:01:00'),
(15, 'The task 1 of todo list 8', 8, '2016-05-09 11:00:00', '2016-05-09 11:01:00', '2016-05-09 11:01:00'),
(16, 'The task 2 of todo list 8', 8, NULL, '2016-05-09 11:02:00', '2016-05-09 11:02:00'),
(17, 'The task 1 of todo list 9', 9, '2016-05-10 11:00:00', '2016-05-10 11:01:00', '2016-05-10 11:01:00'),
(18, 'The task 2 of todo list 9', 9, '2016-05-10 11:00:00', '2016-05-10 11:02:00', '2016-05-10 11:02:00'),
(19, 'The task 3 of todo list 9', 9, NULL, '2016-05-10 11:03:00', '2016-05-10 11:03:00'),
(20, 'The task 4 of todo list 9', 9, NULL, '2016-05-10 11:04:00', '2016-05-10 11:04:00'),
(21, 'The task 5 of todo list 9', 9, NULL, '2016-05-10 11:05:00', '2016-05-10 11:05:00'),
(22, 'The task 1 of todo list 10', 10, NULL, '2016-05-11 11:01:00', '2017-03-10 17:19:05'),
(27, 'The task 5 of todo list 10', 10, '2017-03-10 17:37:31', '2017-03-10 16:30:17', '2017-03-10 17:37:31'),
(29, 'The task 2 of todo list 7', 7, NULL, '2017-03-10 16:42:06', '2017-03-10 16:42:06'),
(30, 'The task 3 of todo list 7', 7, NULL, '2017-03-10 16:42:18', '2017-03-10 16:42:18'),
(31, 'The task 4 of todo list 6', 6, NULL, '2017-03-10 16:42:48', '2017-03-10 16:42:48');

-- --------------------------------------------------------

--
-- Estrutura da tabela `todo_lists`
--

CREATE TABLE `todo_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `todo_lists`
--

INSERT INTO `todo_lists` (`id`, `title`, `description`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Todo list 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ultrices mauris, ac posuere metus venenatis ac', 2, '2016-05-02 11:00:00', '2016-05-02 11:00:00'),
(2, 'Todo list 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ultrices mauris, ac posuere metus venenatis ac', 2, '2016-05-03 11:00:00', '2016-05-03 11:00:00'),
(3, 'Todo list 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ultrices mauris, ac posuere metus venenatis ac', 2, '2016-05-04 11:00:00', '2016-05-04 11:00:00'),
(4, 'Todo list 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ultrices mauris, ac posuere metus venenatis ac', 2, '2016-05-05 11:00:00', '2016-05-05 11:00:00'),
(5, 'Todo list 5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ultrices mauris, ac posuere metus venenatis ac', 2, '2016-05-06 11:00:00', '2016-05-06 11:00:00'),
(6, 'Todo list 6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ultrices mauris, ac posuere metus venenatis ac', 1, '2016-05-07 11:00:00', '2016-05-07 11:00:00'),
(7, 'Todo list 7', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ultrices mauris, ac posuere metus venenatis ac', 1, '2016-05-08 11:00:00', '2016-05-08 11:00:00'),
(8, 'Todo list 8', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ultrices mauris, ac posuere metus venenatis ac', 2, '2016-05-09 11:00:00', '2016-05-09 11:00:00'),
(9, 'Todo list 9', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ultrices mauris, ac posuere metus venenatis ac', 2, '2016-05-10 11:00:00', '2016-05-10 11:00:00'),
(10, 'Todo list 10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ultrices mauris, ac posuere metus venenatis ac', 1, '2016-05-11 11:00:00', '2016-05-11 11:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'john', 'john@mail.com', '$2y$10$IgaeSFhOiUJ0kEZ5OrxT9.kjdTT2STwJ9YkaimubLo.habGk1M2H6', 'o5f0dUvKlle84epNDDVmVbZgVeWWA1KXpdiDIMyRlnWLBhUKi6NCaJEPK8XG', NULL, '2017-03-10 17:43:35'),
(2, 'jane', 'jane@mail.com', '$2y$10$Ciid7Y11gWXvIPya1TtErOzJvfGLymyz/Vh822zG5TGFAARkHLG9e', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_todo_list_id_foreign` (`todo_list_id`);

--
-- Indexes for table `todo_lists`
--
ALTER TABLE `todo_lists`
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
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `todo_lists`
--
ALTER TABLE `todo_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_todo_list_id_foreign` FOREIGN KEY (`todo_list_id`) REFERENCES `todo_lists` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
