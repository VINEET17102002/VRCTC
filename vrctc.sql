-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2021 at 05:58 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vrctc`
--

-- --------------------------------------------------------

--
-- Table structure for table `trains`
--

CREATE TABLE `trains` (
  `id` int(10) NOT NULL,
  `bookingFrom` varchar(50) NOT NULL,
  `bookingTo` varchar(50) NOT NULL,
  `bookingDate` varchar(50) NOT NULL,
  `bookingClass` varchar(50) NOT NULL,
  `bookingQuota` varchar(50) NOT NULL,
  `bookingPrice` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trains`
--

INSERT INTO `trains` (`id`, `bookingFrom`, `bookingTo`, `bookingDate`, `bookingClass`, `bookingQuota`, `bookingPrice`) VALUES
(1, 'Bandra Terminus', 'Gorakhpur', '2021-12-06', 'Sleeper (SL)', 'General', 625),
(2, 'Bandra Terminus', 'Gorakhpur', '2021-12-06', 'AC 3 Economy (3A)', 'General', 1200),
(3, 'Chennai', 'Jodhpur', '2021-12-10', 'AC III Tier', 'General', 1200),
(4, 'Chennai', 'Jodhpur', '2021-12-10', 'Exec. Chair Class (EC)', 'General', 400),
(5, 'Kalyan Junction', 'Gorakhpur', '2021-12-15', 'Sleeper (SL)', 'General', 315),
(6, 'Kalyan Junction', 'Gorakhpur', '2021-12-15', 'AC III Tier', 'General', 650);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `usermail` varchar(50) NOT NULL,
  `userpass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `usermail`, `userpass`) VALUES
(1, 'Rajesh', 'Rajesh@gmail.com', 'rajesh'),
(2, 'Upendra', 'Upendra@gmail.com', '2314eb3b25389c0e6f0f0cdba7b3db1f'),
(3, 'Manav', 'manav@gmail.com', '7de705319c1bc84d227d94ef8ca5cd94');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `trains`
--
ALTER TABLE `trains`
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
-- AUTO_INCREMENT for table `trains`
--
ALTER TABLE `trains`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
