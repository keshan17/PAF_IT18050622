-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2020 at 07:54 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctor_details`
--

CREATE TABLE `doctor_details` (
  `doc_id` int(10) NOT NULL,
  `doc_name` varchar(45) NOT NULL,
  `doc_nic` varchar(20) NOT NULL,
  `doc_email` varchar(45) NOT NULL,
  `doc_number` int(10) NOT NULL,
  `doc_password` varchar(45) NOT NULL,
  `doc_date` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor_details`
--

INSERT INTO `doctor_details` (`doc_id`, `doc_name`, `doc_nic`, `doc_email`, `doc_number`, `doc_password`, `doc_date`) VALUES
(82, 'doc', '6464', 'keshan@gmail.com', 123, '234r', '2020-48-06 08:48:30'),
(86, 'doc keshan', '9751220v', 'keshan@gmail.com', 718078500, '12345', '2020-06-06 11:06:53'),
(87, 'keshan', '9785778255', 'keshan@gmail.com', 718078500, '7654321', '2020-11-06 11:11:58'),
(88, 'anjalee', '908493282', 'anjalee@gmail.com', 716568161, '67890', '2020-12-06 11:12:23'),
(89, 'isuru', '678232434', 'isuru@gmail', 715684282, '678io', '2020-12-06 11:12:46'),
(90, 'vidula', '78958516', 'vidula@gmail.com', 718526466, '67890-', '2020-13-06 11:13:18'),
(91, 'udesh bandra', '995842822', 'udesh@gmail.com', 714568478, '999999', '2020-13-06 11:13:38');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_details`
--

CREATE TABLE `hospital_details` (
  `hos_id` int(11) NOT NULL,
  `hos_name` varchar(45) NOT NULL,
  `hos_nic` varchar(10) NOT NULL,
  `hos_email` varchar(20) NOT NULL,
  `hos_number` int(10) NOT NULL,
  `hos_password` varchar(45) NOT NULL,
  `hos_date` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital_details`
--

INSERT INTO `hospital_details` (`hos_id`, `hos_name`, `hos_nic`, `hos_email`, `hos_number`, `hos_password`, `hos_date`) VALUES
(60, 'test', '6464', 'j%40gmail.com', 4444, '123', '2020-30-06 07:30:56'),
(62, 'asiri hospital user', '787882412', 'asiri@gmail.com', 71456825, '345', '2020-11-06 11:11:22');

-- --------------------------------------------------------

--
-- Table structure for table `patient_details`
--

CREATE TABLE `patient_details` (
  `patient_id` int(11) NOT NULL,
  `patient_name` varchar(45) NOT NULL,
  `patient_nic` varchar(10) NOT NULL,
  `patient_email` varchar(45) NOT NULL,
  `patient_number` int(10) NOT NULL,
  `patient_pwd` varchar(45) NOT NULL,
  `patient_date` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_details`
--

INSERT INTO `patient_details` (`patient_id`, `patient_name`, `patient_nic`, `patient_email`, `patient_number`, `patient_pwd`, `patient_date`) VALUES
(58, 'patient12', '12345', 'j%2540gmail.com', 0, '44444', '2020-31-06 04:31:07'),
(62, 'test patient', '979797852', 'keshi@gmail.com', 718078500, 'keshan', '2020-07-06 11:07:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor_details`
--
ALTER TABLE `doctor_details`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `hospital_details`
--
ALTER TABLE `hospital_details`
  ADD PRIMARY KEY (`hos_id`);

--
-- Indexes for table `patient_details`
--
ALTER TABLE `patient_details`
  ADD PRIMARY KEY (`patient_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctor_details`
--
ALTER TABLE `doctor_details`
  MODIFY `doc_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `hospital_details`
--
ALTER TABLE `hospital_details`
  MODIFY `hos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `patient_details`
--
ALTER TABLE `patient_details`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
