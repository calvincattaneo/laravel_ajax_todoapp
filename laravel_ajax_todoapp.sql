-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 06-Mar-2017 às 15:12
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
('2017_02_24_192330_create_todo_lists_table', 2);

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
(1, 'Todo list 0', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ultrices mauris, ac posuere metus venenatis ac', 1, NULL, NULL),
(2, 'Todo list 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ultrices mauris, ac posuere metus venenatis ac', 2, NULL, NULL),
(3, 'Todo list 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ultrices mauris, ac posuere metus venenatis ac', 1, NULL, NULL),
(4, 'Todo list 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ultrices mauris, ac posuere metus venenatis ac', 2, NULL, NULL),
(5, 'Todo list 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ultrices mauris, ac posuere metus venenatis ac', 1, NULL, NULL),
(6, 'Todo list 5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ultrices mauris, ac posuere metus venenatis ac', 2, NULL, NULL),
(7, 'Todo list 6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ultrices mauris, ac posuere metus venenatis ac', 2, NULL, NULL),
(8, 'Todo list 7', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ultrices mauris, ac posuere metus venenatis ac', 1, NULL, NULL),
(9, 'Todo list 8', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ultrices mauris, ac posuere metus venenatis ac', 2, NULL, NULL),
(10, 'Todo list 9', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ultrices mauris, ac posuere metus venenatis ac', 1, NULL, NULL),
(11, 'My first todo list', 'This is my first todo list', 1, '2017-03-06 17:11:25', '2017-03-06 17:11:25');

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
(1, 'john', 'john@mail.com', '$2y$10$IgaeSFhOiUJ0kEZ5OrxT9.kjdTT2STwJ9YkaimubLo.habGk1M2H6', 'VzC5y2NlZWy6voe43mbo0NSMEYcp0zDG6ATrkbl1YSnJjZ2vcs46z3fUCT5g', NULL, '2017-02-24 22:16:49'),
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
-- AUTO_INCREMENT for table `todo_lists`
--
ALTER TABLE `todo_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
