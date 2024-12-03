-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2024 at 04:20 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `authorid` int(9) NOT NULL,
  `name` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`authorid`, `name`) VALUES
(113, 'BE'),
(114, 'Bruno'),
(115, 'BM'),
(117, 'ad'),
(118, 'Min'),
(119, 'Apolo'),
(120, 'Patola'),
(132, 'rey123');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookid` int(9) NOT NULL,
  `title` char(255) NOT NULL,
  `authorid` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookid`, `title`, `authorid`) VALUES
(154, 'labubu', 120),
(155, 'bukbok', 113);

-- --------------------------------------------------------

--
-- Table structure for table `books_authors`
--

CREATE TABLE `books_authors` (
  `collectionid` int(9) NOT NULL,
  `bookid` int(9) NOT NULL,
  `authorid` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books_authors`
--

INSERT INTO `books_authors` (`collectionid`, `bookid`, `authorid`) VALUES
(104, 155, 113);

-- --------------------------------------------------------

--
-- Table structure for table `jwt_tokens`
--

CREATE TABLE `jwt_tokens` (
  `id` int(11) NOT NULL,
  `token` text NOT NULL,
  `iat` int(11) NOT NULL,
  `exp` int(11) NOT NULL,
  `type` enum('access','refresh') NOT NULL,
  `used` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jwt_tokens`
--

INSERT INTO `jwt_tokens` (`id`, `token`, `iat`, `exp`, `type`, `used`, `created_at`) VALUES
(369, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzEzOTg2MDksImV4cCI6MTczMTQwMjIwOX0.WyxnTYhGB9Hk0syhBcCq2dP7rd0QdU8t7YwaS7utJLc', 0, 0, 'access', 1, '2024-11-12 16:03:29'),
(370, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzEzOTg2NDMsImV4cCI6MTczMTQwMjI0M30.DtaQjLLgT2wQnnHleFHD7Z9E1vaCMoPEFtulRfGtYmw', 0, 0, 'access', 1, '2024-11-12 16:04:03'),
(371, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzEzOTg2NzgsImV4cCI6MTczMTQwMjI3OH0.guXQ3pL9QxrXseKU_PxnFOaQS0-GYDMbrtot06JyMqw', 0, 0, 'access', 1, '2024-11-12 16:04:38'),
(372, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzEzOTg3MTMsImV4cCI6MTczMTQwMjMxM30.B3qA1CJBXlxWhYJYrjrUWQLu3QwVlpV5qUEe1Auk4j4', 0, 0, 'access', 1, '2024-11-12 16:05:13'),
(373, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzEzOTg3MzgsImV4cCI6MTczMTQwMjMzOH0.MXbzHv46STJzp9SQnVPC4qqA2rG6rdO-IMRe5S4FNKE', 0, 0, 'access', 0, '2024-11-12 16:05:38'),
(374, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzEzOTg4MDIsImV4cCI6MTczMTQwMjQwMn0.Y8989PJhTRtdkJPR9oFwq2kd5T51s-tTNutD0fdJA5Q', 0, 0, 'access', 1, '2024-11-12 16:06:42'),
(375, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzEzOTg4MjYsImV4cCI6MTczMTQwMjQyNn0.wwwzsBIwZ9FAH8fB-DVBoiAQmZ2ZR6vnAHYG28GPbPs', 0, 0, 'access', 0, '2024-11-12 16:07:06'),
(376, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzEzOTg4NTYsImV4cCI6MTczMTQwMjQ1Nn0.5B3Zjte1Nscj8ystBFXFgYXTGKOu6nTZUcAkS0J934A', 0, 0, 'access', 0, '2024-11-12 16:07:36'),
(377, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzEzOTkzNTUsImV4cCI6MTczMTQwMjk1NX0.2axb0D5KH4EfYVc8-5xifuYwJjzuWWiFdoxvuU-DUFI', 0, 0, 'access', 1, '2024-11-12 16:15:55'),
(378, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzEzOTkzODgsImV4cCI6MTczMTQwMjk4OH0.JnMLpSDKrMvRaVyh2enFxakz5_wGD-ID9Cwuq1TL0-Q', 0, 0, 'access', 1, '2024-11-12 16:16:28'),
(379, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzEzOTk0MTEsImV4cCI6MTczMTQwMzAxMX0.nwYq1qSTeAKdJsyOMG6CLscZ75LiXqaaE0suANThoRk', 0, 0, 'access', 1, '2024-11-12 16:16:51'),
(380, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzEzOTk0NDcsImV4cCI6MTczMTQwMzA0N30.QmMpyPU5tRRPBWdbdZcAZJ6KD15cf4TG5sw7Hj7_A4c', 0, 0, 'access', 1, '2024-11-12 16:17:27'),
(381, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzEzOTk0NjQsImV4cCI6MTczMTQwMzA2NH0.rUNWKLwFY8gUk-Tj09M-74zVCEnWFIFqmXe1DHsyI4U', 0, 0, 'access', 0, '2024-11-12 16:17:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(9) NOT NULL,
  `username` char(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `password`) VALUES
(119, 'kams', '$2y$10$kmncEVlXS4mdi.YpOV5ErOlUPakxCeWILb6zqVwxs8K5m6Oks7OMG'),
(120, 'kamilo', '$2y$10$13kGhqcNBtUki1MoMqzA3erhdsyU0Xln/bw3gcq5OND/O/BUY4xl6'),
(121, 'kamil', '$2y$10$nJO3R3233HOZjMDL/oCYXulFY7DWcA83R3khZoybYDvylKOcWO3Ta'),
(122, 'kamile', '$2y$10$cW1Tg5UswCE8Khmi5cC4yuEa43KWbcKVT.yzuuuE1HPZZQc0WgUFO'),
(123, 'camille', '$2y$10$XCNuY/gSxof8euFSst6H7uI0v88WrF8nipFSjy3fXukOBTX0cpEMG'),
(124, 'blanca', '$2y$10$GTzhxE0vvBvOrKznhtQueez.mJBU7UlyTvEwHrAKZe7QwOswaawOa'),
(125, 'tala', '$2y$10$EeWzqoycnJcC26mV6qoXb.yPfcxGZrndctG2OhL4rE6f/EtebKTYu'),
(126, 'tala', '$2y$10$VqJzcYxhw38JNTYmX0GUFOXR82PtUG4Fw2OgRB0v2fmKyukzEmVL6'),
(127, 'hana', '$2y$10$W1WisNY.7GvMkfN3VwGGkuUFDPdO3lsn00RnVQrUX9FMMb6qM4Hz2'),
(128, 'hana', '$2y$10$KrmPaHiJ3fA4/gxAifztyebDFMLnCjv.kxa5qcknt.TTqRX9APqnK'),
(129, 'hana', '$2y$10$I8IJkhmJrMzxl4DReE.4XezYpf/7op2.DQvW0rd4FjgjRyIhGK5wC'),
(130, 'rey', '$2y$10$rGOJnu2s3gzPC03xaMW1LuqNtiMwVsWJ/KRAVLxBcWH933h7KH7xi'),
(131, 'rey123', '$2y$10$gQAt7CZCV0sZxLnpn4.rU.TjGmFbTM9y8VuqFJLNZ2XJ5F4t6Kahy'),
(132, 'rey123', '$2y$10$GqUrDqPtr4lfApGcQ9crIev.LMQQ46rD/Dmm2oXbPYXKSIP0kizai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`authorid`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookid`),
  ADD KEY `authorid` (`authorid`);

--
-- Indexes for table `books_authors`
--
ALTER TABLE `books_authors`
  ADD PRIMARY KEY (`collectionid`),
  ADD KEY `authorid` (`authorid`),
  ADD KEY `bookid` (`bookid`);

--
-- Indexes for table `jwt_tokens`
--
ALTER TABLE `jwt_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `authorid` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookid` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `books_authors`
--
ALTER TABLE `books_authors`
  MODIFY `collectionid` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `jwt_tokens`
--
ALTER TABLE `jwt_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=382;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`authorid`) REFERENCES `authors` (`authorid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `books_authors`
--
ALTER TABLE `books_authors`
  ADD CONSTRAINT `books_authors_ibfk_1` FOREIGN KEY (`authorid`) REFERENCES `authors` (`authorid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `books_authors_ibfk_2` FOREIGN KEY (`bookid`) REFERENCES `books` (`bookid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
