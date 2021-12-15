-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 15, 2021 at 09:01 AM
-- Server version: 5.5.68-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rachel_wnm608`
--

-- --------------------------------------------------------

--
-- Table structure for table `track_users`
--

CREATE TABLE `track_users` (
  `id` int(13) NOT NULL,
  `name` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(32) NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_users`
--

INSERT INTO `track_users` (`id`, `name`, `username`, `email`, `password`, `img`, `date_create`) VALUES
(1, 'Roslyn Ball3', 'user1', 'user1@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1639467332.429_0181-03_linda_dong.jpg', '2020-11-06 12:53:08'),
(2, 'Barnett Leach', 'user2', 'user2@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/710fff?text=user2', '2020-11-08 06:53:18'),
(3, 'Danielle Owens', 'user3', 'user3@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/847fff?text=user3', '2021-07-31 02:52:00'),
(4, 'Deann Glass', 'user4', 'user4@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/985fff?text=user4', '2020-12-10 08:02:18'),
(5, 'Bradley Gardner2', 'user5', 'user5@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/993fff?text=user5', '2021-10-02 03:13:57'),
(6, 'Manuela Mosley', 'user6', 'user6@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/961fff?text=user6', '2020-11-08 04:09:12'),
(7, 'Kelli Duran', 'user7', 'user7@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/731fff?text=user7', '2020-01-24 11:15:55'),
(8, 'Goff Garrett', 'user8', 'user8@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/881fff?text=user8', '2020-02-18 11:54:11'),
(9, 'Marcie Byrd', 'user9', 'user9@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/827fff?text=user9', '2021-10-21 11:50:46'),
(10, 'Aida Barry', 'user10', 'user10@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/854fff?text=user10', '2020-12-30 01:25:34'),
(11, 'Lady Gaga', 'user0', 'test@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1639545942.0091_SABC-News-lady-gaga-Reuters.jpg', '2021-12-14 23:49:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `track_users`
--
ALTER TABLE `track_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `track_users`
--
ALTER TABLE `track_users`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
