-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 23, 2019 at 04:39 PM
-- Server version: 5.7.27-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ruby_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_admin_comments`
--

CREATE TABLE `active_admin_comments` (
  `id` bigint(20) NOT NULL,
  `namespace` varchar(255) DEFAULT NULL,
  `body` text,
  `resource_type` varchar(255) DEFAULT NULL,
  `resource_id` bigint(20) DEFAULT NULL,
  `author_type` varchar(255) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2019-09-23 13:12:33', '2019-09-23 13:12:33');

-- --------------------------------------------------------

--
-- Table structure for table `brouse_users`
--

CREATE TABLE `brouse_users` (
  `id` bigint(20) NOT NULL,
  `browse_name` int(11) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brouse_users`
--

INSERT INTO `brouse_users` (`id`, `browse_name`, `ip`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', '2019-09-23 13:23:25', '2019-09-23 13:23:25'),
(2, 0, '::1', '2019-09-23 13:23:34', '2019-09-23 13:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Movies', 'Top 10 movies of all time', '2019-09-23 13:31:47', '2019-09-23 13:31:47'),
(2, 'Sport', 'All sport events from all over the world', '2019-09-23 13:36:35', '2019-09-23 13:36:35'),
(3, 'Food', 'Some information for food', '2019-09-23 13:37:27', '2019-09-23 13:37:34');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `content` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `author`, `content`, `created_at`, `updated_at`, `post_id`, `category_id`) VALUES
(1, 'James Moriarty', 'Al Pacino!! ', '2019-09-23 13:35:43', '2019-09-23 13:35:43', 1, NULL),
(2, 'Jamie Vardy', 'Damn true', '2019-09-23 13:37:14', '2019-09-23 13:37:14', 2, NULL),
(3, 'Bill Richmond', 'I dont like meat, i prefer fish!', '2019-09-23 13:39:20', '2019-09-23 13:39:20', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `content`, `created_at`, `updated_at`, `category_id`, `file`) VALUES
(1, '9 things you never knew about the \'Godfather\' movies from the stars and director', 'On Saturday night, cast and crew from "The Godfather" and "The Godfather Part II" got together for a screening for the two films and a panel for the closing night of the Tribeca Film Festival — a festival that was started by "Godfather: Part II" star Robert De Niro.\r\nDe Niro, Diane Keaton, Al Pacino, James Caan, Robert Duvall, Talia Shire, and director Francis Ford Coppola were all on the panel honoring the 45th anniversary of "The Godfather" this year. Director Taylor Hackford led the conversation.', '2019-09-23 13:32:54', '2019-09-23 13:32:54', 1, 'movie.png'),
(2, 'Man City are best team in the world - Goal.com', 'The Reds may be European champions but Klopp has dismissed claims they are the top team on the continent\r\nJurgen Klopp says Liverpool are not the best team in Europe despite their Champions League success last season, as he believes rivals Manchester City are the best team on the planet.\r\n\r\nKlopp’s side became European champions for a sixth time courtesy of a 2-0 victory over Tottenham in June, 12 months on from their agonising defeat to Real Madrid in the 2018 final. Manchester City in contrast have not gone beyond the quarter-finals for the past four seasons.\r\n\r\nThe situation is different domestically, with Pep Guardiola’s side winning back-to-back Premier League titles including a domestic treble last time out.', '2019-09-23 13:36:53', '2019-09-23 13:36:53', 2, 'mc.jpg'),
(3, 'The Advantages Of Grass Fed Meat', 'Sometimes you don\'t know what you\'ve got until it\'s gone. Usually, an opening line like this would be the cue to start waxing lyrical about lost loves, but as you know that\'s not really my style. I am actually referring to high quality, grass fed beef and other organic, non-grain fed meat such as venison, buffalo, and even rabbit. And why am I whining about it being organic? Because at the start of this month I moved my family to beautiful Marbella, where the sun always shines, the air is clean, the fruit is fresh, and the meat just plain sucks.\r\n\r\nWe have gone from eating reasonably priced grass-fed beef fillet steaks, buffalo mince and beef steak burgers to crazily expensive imported steaks that taste watery and somehow a little bit chemical. What has obviously happened is that after several years of eating non-grain fed meat my palette has adapted/improved and I really struggle to stomach mass-produced meat now. The taste isn\'t really the thing, however, it is the health benefits both for myself and of course my two young children both of whom have been weaned on grass fed meats and have thrived on it and who know the balance of nature versus nurture, but both my children (aged 5 and 2) are off the percentage charts for their heights. I hope that this will give them an advantage in later life, although it is sometimes a little bit disconcerting when my 2 year old daughter is assumed to be a slightly backward 4 year old! ', '2019-09-23 13:38:45', '2019-09-23 13:38:45', 3, 'food.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20190920070127'),
('20190920070329'),
('20190920070425'),
('20190920071254'),
('20190920071525'),
('20190920071529'),
('20190920100559'),
('20190920113431'),
('20190920124713'),
('20190920143411'),
('20190923121729');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `created_at`, `updated_at`) VALUES
(1, 'just_n1ce@gmail.com', '$2a$11$4TM7Q.nzHTJLFFV4LtQ25egUVHO2XGrC.5nnTJt59pUh42/kJyCvO', NULL, NULL, NULL, '2019-09-23 13:25:48', '2019-09-23 13:25:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_admin_comments`
--
ALTER TABLE `active_admin_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_active_admin_comments_on_resource_type_and_resource_id` (`resource_type`,`resource_id`),
  ADD KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`),
  ADD KEY `index_active_admin_comments_on_namespace` (`namespace`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_admin_users_on_email` (`email`),
  ADD UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`);

--
-- Indexes for table `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `brouse_users`
--
ALTER TABLE `brouse_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_users_on_email` (`email`),
  ADD UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active_admin_comments`
--
ALTER TABLE `active_admin_comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `brouse_users`
--
ALTER TABLE `brouse_users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
