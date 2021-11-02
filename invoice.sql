-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2021 at 06:25 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invoice`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_details`
--

CREATE TABLE `bank_details` (
  `bank_id` int(10) NOT NULL,
  `trainer_id` int(10) NOT NULL,
  `acc_num` int(25) NOT NULL,
  `ifsc_code` varchar(30) NOT NULL,
  `bank_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank_details`
--

INSERT INTO `bank_details` (`bank_id`, `trainer_id`, `acc_num`, `ifsc_code`, `bank_name`) VALUES
(1, 1, 34567, 'ABC123', 'HDFC'),
(3, 10, 565, 'sbhdje345', 'canara'),
(5, 5, 4648315, 'wdvhw4', 'citi'),
(6, 4, 548441, 'jbqwuh54', 'sbi'),
(7, 7, 44846165, 'bdhb', 'icic'),
(8, 6, 48121, 'bdh4512', 'HDFC'),
(10, 3, 646884864, 'ebdj4647', 'citi'),
(11, 8, 845142, 'dhj547', 'HDFC'),
(12, 9, 45484321, 'bdhjb248', 'icic');

-- --------------------------------------------------------

--
-- Table structure for table `college_details`
--

CREATE TABLE `college_details` (
  `college_id` int(10) NOT NULL,
  `name` varchar(40) NOT NULL,
  `address` varchar(100) NOT NULL,
  `location` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `college_details`
--

INSERT INTO `college_details` (`college_id`, `name`, `address`, `location`) VALUES
(1, 'RNSIT', 'channasandra bangalore', 'Bangalore'),
(2, 'JSS', 'shrinivaspura', 'Bangalore'),
(3, 'BMS', 'banshankari', 'Bangalore'),
(4, 'SIT', 'valachil', 'Mangalore'),
(5, 'NITK', 'surathakal', 'Mangalore'),
(6, 'MIT', 'manipal', 'Mangalore'),
(7, 'RV', 'kengeri', 'Bangalore'),
(8, 'NIE', 'The National Institute of Engineering Mananthavady Road, Mysore – 570008', 'Mysore'),
(9, 'Sri Vidya', 'D.No: 39-33-2/3, HIG-96, RTA Office Road,, Madhavadhara Vuda Colony, Visakhapatnam ', 'Mysore'),
(10, 'SJBIT', 'BGS Institutions, Kengeri Main Road, Bangalore', 'Bangalore');

-- --------------------------------------------------------

--
-- Table structure for table `trainer_deatils`
--

CREATE TABLE `trainer_deatils` (
  `trainer_id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email_id` varchar(25) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `pan` varchar(10) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trainer_deatils`
--

INSERT INTO `trainer_deatils` (`trainer_id`, `name`, `email_id`, `phone_number`, `pan`, `location`) VALUES
(1, 'Nisha', 'nisham123@gmail.com', '12345678', '123456', 'Bangalore'),
(3, 'Sowmya', 'swms@gmail.com', '14246245', '446dehew', 'Bangalore'),
(4, 'pushpa', 'pushpa@gmail.com', '481487845', 'eefhe4478', 'mangalore'),
(5, 'nagaraj', 'nagaraj@gmail.com', '4885779', 'ehfjj154', 'mysore'),
(6, 'divya', 'divya@gmail.com', '7857653548', 'wbfjw4775', 'Mysore'),
(7, 'shashank', 'shashank@gmail.com', '458125554', 'bjsfu14', 'mangalore'),
(8, 'pallavi', 'pallavi@gmail.com', '5415148', 'hjbhd54', 'Bangalore'),
(9, 'monish', 'monish@gmail.com', '2198931', 'ejdhd7', 'Bangalore'),
(10, 'priyank', 'priyank@gmail.com', '35646345', 'sjndj4258', 'mysore');

-- --------------------------------------------------------

--
-- Table structure for table `training_details`
--

CREATE TABLE `training_details` (
  `t-id` int(10) NOT NULL,
  `college` varchar(40) NOT NULL,
  `s_date` date NOT NULL,
  `e_date` date NOT NULL,
  `timings` varchar(20) NOT NULL,
  `mode` varchar(20) NOT NULL,
  `remuneration` int(10) NOT NULL,
  `trainer_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `training_details`
--

INSERT INTO `training_details` (`t-id`, `college`, `s_date`, `e_date`, `timings`, `mode`, `remuneration`, `trainer_id`) VALUES
(1, 'SJBIT', '2021-04-01', '2021-04-07', 'MORNING', 'OFFLINE', 3500, 1),
(5, 'JSS', '2021-04-07', '2021-04-23', 'AFTERNOON', 'OFFLINE', 3500, 5),
(6, 'NIE', '2021-04-09', '2021-04-19', 'MORNING', 'OFFLINE', 3500, 3),
(7, 'SIT', '2021-04-22', '2021-04-30', 'MORNING', 'OFFLINE', 3500, 4),
(8, 'RNSIT', '2021-05-12', '2021-04-23', 'MORNING', 'OFFLINE', 3500, 7),
(9, 'MIT', '2021-05-21', '2021-04-29', 'AFTERNOON', 'OFFLINE', 3500, 6),
(10, 'NITK', '2021-06-17', '2021-04-27', 'MORNING', 'OFFLINE', 3500, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_details`
--
ALTER TABLE `bank_details`
  ADD PRIMARY KEY (`bank_id`),
  ADD KEY `fk_1` (`trainer_id`);

--
-- Indexes for table `college_details`
--
ALTER TABLE `college_details`
  ADD PRIMARY KEY (`college_id`);

--
-- Indexes for table `trainer_deatils`
--
ALTER TABLE `trainer_deatils`
  ADD PRIMARY KEY (`trainer_id`);

--
-- Indexes for table `training_details`
--
ALTER TABLE `training_details`
  ADD PRIMARY KEY (`t-id`),
  ADD KEY `fk_2` (`trainer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_details`
--
ALTER TABLE `bank_details`
  MODIFY `bank_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `college_details`
--
ALTER TABLE `college_details`
  MODIFY `college_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `trainer_deatils`
--
ALTER TABLE `trainer_deatils`
  MODIFY `trainer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `training_details`
--
ALTER TABLE `training_details`
  MODIFY `t-id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bank_details`
--
ALTER TABLE `bank_details`
  ADD CONSTRAINT `fk_1` FOREIGN KEY (`trainer_id`) REFERENCES `trainer_deatils` (`trainer_id`);

--
-- Constraints for table `training_details`
--
ALTER TABLE `training_details`
  ADD CONSTRAINT `fk_2` FOREIGN KEY (`trainer_id`) REFERENCES `trainer_deatils` (`trainer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
