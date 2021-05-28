-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2021 at 06:31 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `node_mysql_passport`
--

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--
USE node_mysql_passport;

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
('Jpd49587oLzwZbiQNxjE8gbPjhwWTBa-', 1622226455, '{\"cookie\":{\"originalMaxAge\":86399999,\"expires\":\"2021-05-28T18:27:34.565Z\",\"httpOnly\":true,\"path\":\"/\"},\"flash\":{},\"userId\":1,\"user\":{\"id\":1,\"firstname\":\"Hibat-Allah\",\"lastname\":\"Sadiki\",\"email\":\"sadikihibat@gmail.com\",\"roles\":\"client\"}}'),
('qq_n-eqDfuz3RyrrMnlQEmqPZVvUesOs', 1622304610, '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2021-05-29T16:10:09.645Z\",\"httpOnly\":true,\"path\":\"/\"},\"flash\":{},\"userId\":7,\"user\":{\"id\":7,\"firstname\":\"d\",\"lastname\":\"mhemed\",\"email\":\"mhhemed@gmail.com\",\"roles\":\"client\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `roles` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `firstname`, `lastname`, `email`, `password`, `roles`) VALUES
(1, '', '', '', '', 'conducteur'),
(2, '', '', '', '', 'client'),
(3, 'kaoutar', 'enneffad', 'kaoutarenn99@gmail.com', '$2b$10$99FCU6v3pF4/4PxsTQhSf.mW21wO5J0U2nI8uB/V/Ddqdh.ff5YsC', 'conducteur'),
(4, 'kaoutar', 'enneffad', 'kaoxutarenn99@gmail.com', '$2b$10$FYoDmsBduqb7J8ZzYYCW1umlDD0ST4A3GQQATaS/tP1IoGcZFb7Iu', 'conducteur'),
(5, 'kaoutarr', 'enneffad', 'kaoutar@gmail.com', '$2b$10$dz2M1hmyPRuHHdZ0EtwOfOD6LBz.5uBXZrrqCXYlH6pFXeOEkbBo.', 'client'),
(7, 'd', 'mhemed', 'mhhemed@gmail.com', '$2b$10$brUV.3NpfJZXSOy4oKtZ0.PzjJALefTM0Sa3kQPA/nMV53Sw/pn.O', 'client');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
