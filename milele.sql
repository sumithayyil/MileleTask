-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 18, 2023 at 11:38 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `milele`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars_color`
--

CREATE TABLE `cars_color` (
  `colors_id` int(11) NOT NULL,
  `colors_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars_color`
--

INSERT INTO `cars_color` (`colors_id`, `colors_name`) VALUES
(1, 'black'),
(2, 'blue'),
(3, 'white');

-- --------------------------------------------------------

--
-- Table structure for table `cars_sfx`
--

CREATE TABLE `cars_sfx` (
  `sfx_id` int(11) NOT NULL,
  `sfx_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars_sfx`
--

INSERT INTO `cars_sfx` (`sfx_id`, `sfx_name`) VALUES
(1, 'A1'),
(2, 'B1'),
(3, 'C1');

-- --------------------------------------------------------

--
-- Table structure for table `cars_variant`
--

CREATE TABLE `cars_variant` (
  `variant_id` int(11) NOT NULL,
  `variant_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars_variant`
--

INSERT INTO `cars_variant` (`variant_id`, `variant_name`) VALUES
(1, 'SomeCar_1'),
(2, 'SomeCar_2'),
(3, 'SomeCar_3');

-- --------------------------------------------------------

--
-- Table structure for table `car_model`
--

CREATE TABLE `car_model` (
  `model_id` int(11) NOT NULL,
  `model_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car_model`
--

INSERT INTO `car_model` (`model_id`, `model_name`) VALUES
(1, 'Model One'),
(2, 'Model Two'),
(3, 'Model Three');

-- --------------------------------------------------------

--
-- Table structure for table `t_cars`
--

CREATE TABLE `t_cars` (
  `cars_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `steering_id` int(11) NOT NULL,
  `car_model` varchar(255) NOT NULL,
  `car_sfx` varchar(255) NOT NULL,
  `car_variant` varchar(255) NOT NULL,
  `car_color` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_cars`
--

INSERT INTO `t_cars` (`cars_id`, `supplier_id`, `seller_id`, `steering_id`, `car_model`, `car_sfx`, `car_variant`, `car_color`, `quantity`, `created_date`, `date`) VALUES
(1, 1, 2, 1, '1', '1', '1', '2', 10, '2023-05-13 16:35:45', '2023-01-13'),
(2, 2, 1, 2, '2', '2', '2', '1', 30, '2023-01-13 16:35:45', '2023-02-13'),
(3, 2, 1, 2, '3', '2', '2', '1', 50, '2023-12-13 16:35:45', '2023-03-14'),
(4, 3, 1, 3, '1', '3', '3', '3', 15, '2023-11-13 16:35:45', '2023-04-14'),
(5, 3, 2, 1, '2', '2', '1', '3', 12, '2022-10-13 16:35:45', '2023-05-14'),
(6, 4, 3, 2, '2', '3', '3', '1', 22, '2023-01-13 16:35:45', '2023-06-12'),
(7, 3, 2, 1, '3', '1', '2', '3', 15, '2023-03-13 16:35:45', '2023-07-14'),
(8, 2, 3, 2, '2', '1', '3', '1', 17, '2023-02-13 16:35:45', '2023-08-14'),
(9, 1, 2, 3, '1', '3', '1', '2', 8, '2023-01-13 16:35:45', '2023-09-14'),
(10, 1, 1, 1, '1', '1', '1', '1', 14, '2023-12-13 16:35:45', '2023-10-14'),
(11, 1, 1, 1, '1', '1', '1', '1', 16, '2023-12-13 16:35:45', '2023-11-14'),
(12, 2, 2, 2, '2', '2', '2', '2', 18, '2023-06-13 16:35:45', '2023-12-14'),
(13, 2, 2, 2, '2', '2', '2', '2', 14, '2023-07-13 16:35:45', '2023-01-14'),
(14, 2, 2, 2, '2', '2', '2', '2', 19, '2023-08-13 16:35:45', '2023-02-14'),
(15, 2, 2, 2, '2', '2', '2', '2', 14, '2023-09-13 16:35:45', '2023-03-14'),
(16, 2, 2, 2, '2', '2', '2', '2', 14, '2023-10-13 16:35:45', '2023-04-14'),
(17, 1, 1, 1, '1', '1', '1', '1', 190, '2023-11-13 16:35:45', '2023-05-14'),
(18, 1, 1, 1, '1', '1', '1', '1', 190, '2023-03-13 16:35:45', '2023-06-14'),
(19, 1, 1, 1, '1', '1', '1', '1', 190, '2023-02-13 16:35:45', '2023-07-14'),
(20, 1, 1, 1, '1', '1', '1', '1', 200, '2023-05-13 16:35:45', '2023-08-14'),
(21, 2, 2, 2, '2', '2', '2', '2', 35, '2023-01-13 16:35:45', '2023-08-13'),
(22, 3, 3, 3, '3', '3', '3', '3', 55, '2023-01-13 16:35:45', '2023-09-13'),
(23, 2, 2, 2, '1', '1', '1', '1', 550, '2023-01-13 16:35:45', '2023-10-13'),
(24, 1, 1, 1, '2', '2', '2', '2', 500, '2023-01-13 16:35:45', '2023-11-13'),
(25, 1, 1, 1, '2', '2', '2', '2', 500, '2023-01-13 16:35:45', '2023-12-13'),
(27, 2, 2, 2, '2', '2', '2', '2', 600, '2023-01-13 16:35:45', '2023-01-13'),
(28, 2, 2, 2, '2', '2', '2', '2', 300, '2023-02-13 16:35:45', '2023-02-13'),
(29, 2, 2, 2, '2', '2', '2', '2', 100, '2023-03-13 16:35:45', '2023-03-13'),
(30, 2, 2, 2, '2', '2', '2', '2', 140, '2023-04-13 16:35:45', '2023-04-13'),
(31, 2, 2, 2, '2', '2', '2', '2', 160, '2023-05-13 16:35:45', '2023-05-13'),
(32, 2, 2, 2, '2', '2', '2', '2', 110, '2023-05-13 16:35:45', '2023-06-13'),
(33, 2, 2, 2, '2', '2', '2', '2', 120, '2023-05-13 16:35:45', '2023-07-13');

-- --------------------------------------------------------

--
-- Table structure for table `t_steering_types`
--

CREATE TABLE `t_steering_types` (
  `steering_id` int(11) DEFAULT NULL,
  `steering_type` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_steering_types`
--

INSERT INTO `t_steering_types` (`steering_id`, `steering_type`, `created_date`) VALUES
(1, 'Left Hand Driven (LHD)', '2023-02-13 16:11:51'),
(2, 'Right Hand Driven (RHD)', '2023-02-13 16:11:51');

-- --------------------------------------------------------

--
-- Table structure for table `t_suppliers`
--

CREATE TABLE `t_suppliers` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_suppliers`
--

INSERT INTO `t_suppliers` (`supplier_id`, `supplier_name`, `created_date`) VALUES
(1, 'supplier one', '2023-02-13 16:02:54'),
(2, 'supplier two', '2023-02-13 16:02:54'),
(3, 'supplier three', '2023-02-13 16:02:54'),
(4, 'supplier four', '2023-02-13 16:02:54');

-- --------------------------------------------------------

--
-- Table structure for table `t_whole_sellers`
--

CREATE TABLE `t_whole_sellers` (
  `seller_id` int(11) NOT NULL,
  `seller_name` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_whole_sellers`
--

INSERT INTO `t_whole_sellers` (`seller_id`, `seller_name`, `created_date`) VALUES
(1, 'seller one', '2023-02-13 16:26:32'),
(2, 'seller two', '2023-02-13 16:26:32'),
(3, 'seller three', '2023-02-13 16:26:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars_color`
--
ALTER TABLE `cars_color`
  ADD PRIMARY KEY (`colors_id`);

--
-- Indexes for table `cars_sfx`
--
ALTER TABLE `cars_sfx`
  ADD PRIMARY KEY (`sfx_id`);

--
-- Indexes for table `cars_variant`
--
ALTER TABLE `cars_variant`
  ADD PRIMARY KEY (`variant_id`);

--
-- Indexes for table `car_model`
--
ALTER TABLE `car_model`
  ADD PRIMARY KEY (`model_id`);

--
-- Indexes for table `t_cars`
--
ALTER TABLE `t_cars`
  ADD PRIMARY KEY (`cars_id`);

--
-- Indexes for table `t_suppliers`
--
ALTER TABLE `t_suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `t_whole_sellers`
--
ALTER TABLE `t_whole_sellers`
  ADD PRIMARY KEY (`seller_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars_color`
--
ALTER TABLE `cars_color`
  MODIFY `colors_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cars_sfx`
--
ALTER TABLE `cars_sfx`
  MODIFY `sfx_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cars_variant`
--
ALTER TABLE `cars_variant`
  MODIFY `variant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `car_model`
--
ALTER TABLE `car_model`
  MODIFY `model_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t_cars`
--
ALTER TABLE `t_cars`
  MODIFY `cars_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `t_suppliers`
--
ALTER TABLE `t_suppliers`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `t_whole_sellers`
--
ALTER TABLE `t_whole_sellers`
  MODIFY `seller_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
