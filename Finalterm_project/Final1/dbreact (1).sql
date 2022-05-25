-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2022 at 10:38 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbreact`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(25) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `phone`, `updated_at`, `created_at`) VALUES
(1, 'student', 's@gmail.com', '111111111', '2022-04-16', '2022-04-16'),
(2, 'faria', 'faria@gmail.com', '22222222222', '2022-04-16', '2022-04-16'),
(3, 'borna', 'borna@gmail.com', '333333333', '2022-04-16', '2022-04-16'),
(4, 'shoshi', 'shoshi@gmail.com', '44444444', '2022-04-16', '2022-04-16'),
(5, 'ria', 'ria@gmail.com', '55555', '2022-04-16', '2022-04-16'),
(6, 'faija', 'faija@gmail.com', '66666', '2022-04-16', '2022-04-16'),
(7, 'liza', 'liza@gmail.com', '7777777', '2022-04-16', '2022-04-16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'faria', 'faria@gmail.com', '$2y$10$mxJy9u1yQqVdOI8DUFPrDu5yxvNU2iWP8JoFKjzpwTB0T1r1LDZ.m'),
(2, 'faria1', 'faria1@gmail.com', '$2y$10$Ip3FTOcVTOcBGlIx0PQBGO7Q6BkaiWNIdgsNbsph/PRNh6X/dfYnW'),
(3, 'faria2', 'faria2@gmail.com', '$2y$10$Em3o1IUt55zSDJTgUGnx7eJcK1/j5gE0MSDhDAcUrJMDOOvpIEgei'),
(4, 'liza', 'liza@gmail.com', '$2y$10$kqWm75uqbwgtKngGtdnpiuCCxYjQjPRrKaGzqTOMN4WdJGzCF2dJO'),
(6, 'dipa', 'dipa@gmail.com', '$2y$10$19KisDilCmDT4vo4N54DnunFDaGCamVJwJ172bXfstC8enxtgbQEa'),
(7, 'dipa1', 'dipa1@gmail.com', '$2y$10$1m68We2ZkL/Vv80YoaZuZuy.xxQiZcO6Vs8alPEZo77rLKBMUeH82'),
(8, 'fari', 'fari@gmail.com', '$2y$10$xV3h7LAB0PO5xK48aLIxaeGHHDcviWJBljhgyc9fV2ReKiTIWh6ju'),
(15, 'faria2', 'faria2@gmail.com', '$2y$10$6.ateH2B4nJ.pkSLEs9S5.p3JNqOGHPThEATnXsMMjCvhRLJT7uti'),
(18, 'faria3', 'faria3@gmail.com', '$2y$10$y2GegNMccyTiK68hNRfZ9O7cHgCfuUSkA5e/4H//J8bFdDJ2Phi.S'),
(19, 'arifa', 'arifa@gmail.com', '$2y$10$JJhs4FDKE5WsNVU/eHHsDep1WzdCfnwhrmit7nK7MLHNQ54593BPK'),
(20, 'arifa', 'arifa@gmail.com', '$2y$10$LMwTj4z5G1X/3PDe9cfo7OViw0jzz/QF61fMiiRmqGQHPXnHHNv7O'),
(21, 'aaa', 'a@gmail.com', '$2y$10$OST/RhSFn6pEOeYygiHTne0OatRMGmcEnDgcTqOOsABQxZTNaLMwS'),
(22, 'aa', 'a@gmail.com', '$2y$10$/8BbMTnlv8OmBpcdDB0Y5.Xv9WF0VZ9z4kp7AMZvo1XmY0bnKXfmW'),
(24, 'ab', 'ab@gmail.com', '$2y$10$evpIpPjEY.4PovXlnK9AIe1GyzmnUPjtBd/qnC1BqmEXYwYR5J..C'),
(25, 'ab', 'ab@gmail.com', '$2y$10$SKPu9w0FstjhP98yukOn7OdvvZqcEMAaCbKbvLMcqXuoT3Kqp2NGK'),
(26, 'bbb', 'bbb@gmail.com', '$2y$10$w4Kx1a8A/p7hxJK7LTrGduRkQZDX2EakvXSvaU0MHhGvqKYg3r5NK'),
(28, 'aaa', 'aaa@gmail.com', '$2y$10$UIBi6BZFLAo1mNjxwxVx5ux6pEVaEygr8T5rUuKXpKw7UpBoK9PU.'),
(29, 'aaa', 'aaaeee@gmail.com', '$2y$10$wbTLWV.jnrLT.Rg2LmdVH.COj4YrULRBfEKHWT8m3ElLi2TniPMcW'),
(30, 'aaapp', 'aapppp@gmail.com', '$2y$10$SoVKNHEQeX3TLtYX.G7e2.Cg74/Ah.wQsyw9xktAysveH3YxDIxcK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
