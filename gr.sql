-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 22, 2019 at 05:15 AM
-- Server version: 5.7.24
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grievancehck`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` varchar(10) NOT NULL,
  `pwd` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `pwd`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

DROP TABLE IF EXISTS `complaints`;
CREATE TABLE IF NOT EXISTS `complaints` (
  `rollno` varchar(10) NOT NULL,
  `complaint` text NOT NULL,
  `yearofstudy` varchar(15) NOT NULL,
  `program` varchar(10) NOT NULL,
  `gtype` varchar(30) NOT NULL,
  `raisedon` varchar(20) NOT NULL,
  `lastmodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(20) NOT NULL,
  `grievanceid` varchar(20) NOT NULL,
  `slno` int(11) NOT NULL AUTO_INCREMENT,
  `month` int(11) NOT NULL,
  PRIMARY KEY (`slno`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`rollno`, `complaint`, `yearofstudy`, `program`, `gtype`, `raisedon`, `lastmodified`, `status`, `grievanceid`, `slno`, `month`) VALUES
('00', 'uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu\r\n\r\n\r\n\r\nuuuuuuuuuuu\r\n\r\n\r\n\r\niiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii', '1', 'btech', 'scholarships', '22-04-2019 05:01:05', '2019-04-22 05:01:05', 'new', 'grievance00022', 22, 4),
('00', 'uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu\r\n\r\n\r\n\r\nuuuuuuuuuuu\r\n\r\n\r\n\r\niiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii', '1', 'btech', 'scholarships', '22-04-2019 04:49:16', '2019-04-22 04:49:17', 'new', 'grievance00021', 21, 4),
('00', 'uhg7g7', '2', 'mtech', 'examinations', '22-04-2019 04:36:06', '2019-04-22 04:36:07', 'rejected', 'grievance00001', 20, 4),
('00', 'very sad.............', '-', '-', 'examinations', '22-04-2019 05:06:51', '2019-04-22 05:06:51', 'new', 'grievance00023', 23, 4);

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

DROP TABLE IF EXISTS `details`;
CREATE TABLE IF NOT EXISTS `details` (
  `rollno` varchar(10) NOT NULL,
  `name` varchar(60) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL,
  PRIMARY KEY (`rollno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`rollno`, `name`, `mail`, `pwd`, `role`) VALUES
('ijii', 'kg', 's@gmail.com', '9', 'student'),
('00', 'Praneeth', 'k@gmail.com', '00', 'student'),
('1600A0525', 'jalandhar', 'gmalluru99@gmail.com', 'chanti123', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
