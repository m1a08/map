-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 16, 2015 at 08:57 AM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `map`
--

-- --------------------------------------------------------

--
-- Table structure for table `loc_details`
--

CREATE TABLE IF NOT EXISTS `loc_details` (
  `user_name` varchar(30) NOT NULL,
  `address` varchar(500) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loc_details`
--

INSERT INTO `loc_details` (`user_name`, `address`, `latitude`, `longitude`) VALUES
('chalsi', 'A-11, Subhash Nagar, Jaipur, Rajasthan, India', 26.9308, 75.803),
('mridul', 'Agra, Uttar Pradesh, India', 27.1767, 78.0081),
('tarun', 'Jamuna Dairy, Jaipur, Rajasthan, India', 26.9037, 75.7717);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
