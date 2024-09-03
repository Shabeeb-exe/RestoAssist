-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 25, 2023 at 04:46 AM
-- Server version: 5.5.62
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restoassist`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_desgs`
--

DROP TABLE IF EXISTS `table_desgs`;
CREATE TABLE IF NOT EXISTS `table_desgs` (
  `id` int(2) NOT NULL,
  `desg` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_desgs`
--

INSERT INTO `table_desgs` (`id`, `desg`) VALUES
(1, 'Waiter'),
(2, 'Cashier');

-- --------------------------------------------------------

--
-- Table structure for table `table_items`
--

DROP TABLE IF EXISTS `table_items`;
CREATE TABLE IF NOT EXISTS `table_items` (
  `id` int(2) NOT NULL,
  `title` text NOT NULL,
  `price` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_items`
--

INSERT INTO `table_items` (`id`, `title`, `price`) VALUES
(2, 'Parotta', '10'),
(3, 'Chapathi', '12');

-- --------------------------------------------------------

--
-- Table structure for table `table_orders`
--

DROP TABLE IF EXISTS `table_orders`;
CREATE TABLE IF NOT EXISTS `table_orders` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone` text NOT NULL,
  `place` text NOT NULL,
  `order_table` text NOT NULL,
  `subtotal` float NOT NULL,
  `discount` float NOT NULL,
  `grandtotal` float NOT NULL,
  `date` date NOT NULL,
  `staff` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_orders`
--

INSERT INTO `table_orders` (`id`, `name`, `phone`, `place`, `order_table`, `subtotal`, `discount`, `grandtotal`, `date`, `staff`) VALUES
(2, 'Muhammed Shabeeb KT', '9744011164', 'Tirur', 'Table 1', 80, 5, 75, '2023-11-17', 'shabeebkt');

-- --------------------------------------------------------

--
-- Table structure for table `table_order_details`
--

DROP TABLE IF EXISTS `table_order_details`;
CREATE TABLE IF NOT EXISTS `table_order_details` (
  `id` int(11) NOT NULL,
  `item` text NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `total` float NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `table_staffs`
--

DROP TABLE IF EXISTS `table_staffs`;
CREATE TABLE IF NOT EXISTS `table_staffs` (
  `id` int(11) NOT NULL,
  `staff_id` text NOT NULL,
  `Img` text NOT NULL,
  `name` text NOT NULL,
  `desg` text NOT NULL,
  `phone` text NOT NULL,
  `mail` text NOT NULL,
  `dob` text NOT NULL,
  `user` text NOT NULL,
  `pass` text NOT NULL,
  `user_type` text NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_staffs`
--

INSERT INTO `table_staffs` (`id`, `staff_id`, `Img`, `name`, `desg`, `phone`, `mail`, `dob`, `user`, `pass`, `user_type`, `date`) VALUES
(2, 'RA-0056', '', 'Muhammed Shabeeb KT', 'Cashier', '9744011164', 'muhammedshabeebkt2016@gmail.com', '29-03-02', 'shabeebkt', '1234', 'Staff', '2023-11-21 09:37:33'),
(3, '', '', 'Admin', '', '', '', '29-03-02', 'admin', '4321', 'admin', '2023-11-21 09:37:33');

-- --------------------------------------------------------

--
-- Table structure for table `table_tables`
--

DROP TABLE IF EXISTS `table_tables`;
CREATE TABLE IF NOT EXISTS `table_tables` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `seats` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_tables`
--

INSERT INTO `table_tables` (`id`, `title`, `seats`) VALUES
(3, 'Table 1', 6),
(4, 'Table 2', 4);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
