-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2020 at 06:20 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_id` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `uemail` varchar(50) DEFAULT NULL,
  `upass` varchar(50) DEFAULT NULL,
  `urole` int(11) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_on` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `fname`, `mname`, `lname`, `uemail`, `upass`, `urole`, `phone_no`, `created_on`, `updated_on`) VALUES
(1, 'nidhi', 'subash', 'singh556t5r6578', 'nidhis@gmail.com', '123456', 3, '344365', '2020-08-25 19:24:06', '2020-08-25 20:27:53'),
(2, 'pinky', 'amernath', 'singh', 'pinky@gmail.com', '123456', 2, NULL, '2020-08-25 19:24:06', '2020-08-25 19:24:06'),
(3, 'priyanka', 'indrajeet', 'singh', 'priya@gmail.com', '123456', 3, NULL, '2020-08-25 19:24:06', '2020-08-25 19:24:06'),
(4, 'amit', 'indrajeet', 'singh', 'amit@gmail.com', '123456', 4, NULL, '2020-08-25 19:24:06', '2020-08-25 19:24:06'),
(5, 'vipin', 'amernath', 'singh', 'vipin@gmail.com', '123456', 5, NULL, '2020-08-25 19:24:06', '2020-08-25 19:24:06'),
(7, 'Mira', 'shankar', 'Mehter', 'mira@gmail.com', '123456', 3, '03421345678', '2020-08-25 20:30:26', '2020-08-25 20:30:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_role_type`
--

CREATE TABLE `user_role_type` (
  `role_id` int(11) NOT NULL,
  `role_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role_type`
--

INSERT INTO `user_role_type` (`role_id`, `role_type`) VALUES
(1, 'project manager'),
(2, 'admin'),
(3, 'client'),
(4, 'task manager');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_role_type`
--
ALTER TABLE `user_role_type`
  ADD PRIMARY KEY (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_role_type`
--
ALTER TABLE `user_role_type`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
