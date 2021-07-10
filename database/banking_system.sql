-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2021 at 07:40 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banking_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'sidhant patil', 'rahul', 4000, '2021-07-10 22:58:24'),
(2, 'saurabh borawake', 'riyaz', 7000, '2021-07-10 23:01:48'),
(3, 'rahul', 'anuj', 10000, '2021-07-10 23:02:22'),
(13, 'parsana', 'sreeyash', 10000, '2021-07-10 23:05:34'),
(14, 'parsana', 'tanmay', 30000, '2021-07-10 23:06:22'),
(15, 'saurabh borawake', 'tanmay', 15000, '2021-07-10 23:09:18'),
(16, 'saurabh borawake', 'sidhant patil', 10000, '2021-07-10 23:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `gender` varchar(155) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `gender`, `balance`) VALUES
(1, 'sidhant patil', 'sidhantpatil@gmail.com', 'Male', 56000),
(2, 'saurabh borawake', 'saurabh@gmail.com', 'male', 81750),
(3, 'rahul', 'willbertfl@gmail.com', 'Male', 94000),
(4, 'tanmay', 'tanmay@gmail.com', 'male', 57000),
(5, 'sreeyash', 'shreeyash@gmail.com', 'male', 70000),
(6, 'anuj', 'anuj@gmail.com', 'Male', 80000),
(7, 'parsana', 'parsana@gmail.com', 'male', 90000),
(8, 'ayub', 'ayub@gmail.com', 'Male', 80000),
(9, 'mayur', 'mayur@gmail.com', 'Male', 65000),
(10, 'riyaz', 'riyazt3el@gmail.com', 'Male', 87000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
