-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 21, 2023 at 01:33 AM
-- Server version: 10.6.12-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rocket_ssh`
--

-- --------------------------------------------------------

--
-- Table structure for table `cp_admins`
--

CREATE TABLE `cp_admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `credit` float NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `ctime` int(11) NOT NULL,
  `utime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `cp_admins`
--

INSERT INTO `cp_admins` (`id`, `username`, `password`, `fullname`, `role`, `credit`, `is_active`, `ctime`, `utime`) VALUES
(1, 'admin', '$2y$10$ZiEM0Flg8aEcAwv5Cb5v3.fhReAk8L1knxn5uKE0VsIdghIYKSZqO', 'مدیر پنل', 'admin', 0, 1, 1691287888, 1691525834);

-- --------------------------------------------------------

--
-- Table structure for table `cp_public_apis`
--

CREATE TABLE `cp_public_apis` (
  `id` int(11) NOT NULL,
  `name` varchar(110) NOT NULL,
  `api_key` varchar(100) NOT NULL,
  `ctime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cp_settings`
--

CREATE TABLE `cp_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `cp_settings`
--

INSERT INTO `cp_settings` (`id`, `name`, `value`) VALUES
(1, 'ssh_port', '22'),
(2, 'udp_port', '7300'),
(3, 'multiuser', '1'),
(4, 'app_version', '1.1'),
(5, 'connected_text', ''),
(6, 'domain_url', ''),
(7, 'fake_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `cp_traffics`
--

CREATE TABLE `cp_traffics` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `download` float NOT NULL,
  `upload` float NOT NULL,
  `total` float NOT NULL,
  `ctime` int(11) NOT NULL,
  `utime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `cp_traffics`
--

INSERT INTO `cp_traffics` (`id`, `username`, `download`, `upload`, `total`, `ctime`, `utime`) VALUES
(1, 'test', 0, 0, 0, 1692576578, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cp_users`
--

CREATE TABLE `cp_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `admin_uname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `desc` text NOT NULL,
  `limit_users` int(11) NOT NULL,
  `start_date` int(11) NOT NULL,
  `end_date` int(11) NOT NULL,
  `expiry_days` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `traffic` float NOT NULL,
  `ctime` int(11) NOT NULL,
  `utime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `cp_users`
--

INSERT INTO `cp_users` (`id`, `username`, `admin_uname`, `password`, `email`, `mobile`, `desc`, `limit_users`, `start_date`, `end_date`, `expiry_days`, `status`, `traffic`, `ctime`, `utime`) VALUES
(1, 'test', 'admin', '123456', '', '09121234567', '', 1, 1692576578, 1698006599, 62, 'active', 102400, 1692576578, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cp_admins`
--
ALTER TABLE `cp_admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `cp_public_apis`
--
ALTER TABLE `cp_public_apis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_key` (`api_key`);

--
-- Indexes for table `cp_settings`
--
ALTER TABLE `cp_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_traffics`
--
ALTER TABLE `cp_traffics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `cp_users`
--
ALTER TABLE `cp_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `admin_uname` (`admin_uname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cp_admins`
--
ALTER TABLE `cp_admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cp_public_apis`
--
ALTER TABLE `cp_public_apis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cp_settings`
--
ALTER TABLE `cp_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cp_traffics`
--
ALTER TABLE `cp_traffics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cp_users`
--
ALTER TABLE `cp_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
