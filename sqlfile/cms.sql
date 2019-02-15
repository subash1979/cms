-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 15, 2019 at 05:57 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', '1234', '04-02-2019 11:09:50 AM');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
CREATE TABLE IF NOT EXISTS `branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branchName` varchar(255) NOT NULL,
  `branchShortcode` tinytext NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `branchName`, `branchShortcode`, `postingDate`, `updationDate`) VALUES
(1, 'CHENNAI', 'CHE', '2016-10-18 11:35:02', ''),
(2, 'CHERUTHONY', 'CHER', '2016-10-18 11:35:58', '28-03-2017 03:40:02 PM'),
(3, 'COCHIN', 'COC', '2017-03-28 07:20:36', ''),
(4, 'COIMBATORE', 'CBE', '2017-06-11 10:54:12', ''),
(5, 'CUMBUM', 'CUM', '2019-02-07 09:21:55', NULL),
(6, 'KANJIRIPALLY', 'KRPLY', '2019-02-07 09:21:55', NULL),
(7, 'KATTAPANA', 'KTPNA', '2019-02-07 09:22:54', NULL),
(8, 'KUMILY', 'KMLY', '2019-02-07 09:22:54', NULL),
(9, 'MAIN BRANCH', 'MAIN', '2019-02-07 09:24:00', NULL),
(10, 'MUTTAM', 'MTM', '2019-02-07 09:24:00', NULL),
(11, 'NEDUMKANDAM', 'NDKM', '2019-02-07 09:25:57', NULL),
(12, 'PALA', 'PLA', '2019-02-07 09:25:57', NULL),
(13, 'THENI', 'THE', '2019-02-07 09:25:57', NULL),
(14, 'THODUPUZHA', 'TDPA', '2019-02-07 09:25:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` longtext NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Mobile no De-registration', 'DC Mate', '2017-03-28 07:10:55', ''),
(2, 'Route change', 'Collector route change', '2017-06-11 10:54:06', ''),
(3, 'Mobile no registration', 'DC Mate ', '2019-02-04 05:40:58', NULL),
(4, 'Client Mobile No Approval', 'Client mobile number approval request ', '2019-02-07 09:44:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyName` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `companyName`) VALUES
(1, 'Anson Chits India Pvt Ltd'),
(2, 'Anson Tamilnadu '),
(3, 'Anson Fincorp'),
(4, 'Anson Nidhi'),
(5, 'Anson Financial Services');

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

DROP TABLE IF EXISTS `complaintremark`;
CREATE TABLE IF NOT EXISTS `complaintremark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'Hi this for demo', '2017-04-01 17:29:19'),
(2, 9, 'in process', 'hiiiiiiiiiiiiiiiiiiii', '2017-04-01 18:37:59'),
(3, 3, 'in process', 'test', '2017-05-02 15:57:43'),
(4, 19, 'closed', 'case solved', '2017-06-11 11:18:33'),
(5, 1, 'closed', 'This sample text for testing', '2018-09-05 17:08:26'),
(6, 5, 'closed', 'asadsdx', '2019-02-11 07:03:28');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Online SHopping', '2017-03-28 07:11:07', ''),
(2, 1, 'E-wllaet', '2017-03-28 07:11:20', ''),
(3, 3, 'old', '2019-02-04 05:41:31', NULL),
(4, 3, 'new', '2019-02-04 05:41:41', NULL),
(5, 4, 'Edit subscriber', '2019-02-07 09:46:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

DROP TABLE IF EXISTS `tblcomplaints`;
CREATE TABLE IF NOT EXISTS `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `complaintType` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `company` varchar(200) NOT NULL,
  `complaintDetails` mediumtext NOT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`complaintNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `branch`, `company`, `complaintDetails`, `complaintFile`, `regDate`, `status`) VALUES
(1, 1, 1, 'E-wllaet', 'General Query', 'Punjab', '', 'test demo test demo test demotest demotest demotest demotest demotest demotest demotest demotest demo', NULL, '2017-03-30 16:52:40', 'closed'),
(2, 1, 1, 'Online SHopping', 'General Query', 'Punjab', '', 'sample text for demo', '', '2017-03-30 17:05:56', 'in process'),
(3, 1, 1, 'Online SHopping', ' Complaint', 'Punjab', '', 'wetwetwe', '', '2017-03-30 17:07:51', 'in process'),
(4, 1, 1, 'E-wllaet', 'General Query', 'Haryana', '', 'fdsf,msd,f  f f', '2. Compendium Selected Paper.doc', '2017-03-30 17:13:14', 'closed'),
(5, 1, 1, 'E-wllaet', ' Complaint', 'Punjab', '', 'hfghfgh', '1 (3).jpg', '2017-03-30 17:14:55', 'closed'),
(6, 1, 1, 'E-wllaet', ' Complaint', 'Punjab', '', 'hfghfgh', '1 (3).jpg', '2017-03-30 17:20:16', NULL),
(7, 1, 1, 'E-wllaet', ' Complaint', 'Punjab', '', 'hfghfgh', '1 (3).jpg', '2017-03-30 17:20:56', NULL),
(8, 1, 1, 'E-wllaet', ' Complaint', 'Punjab', '', 'hfghfgh', '1 (3).jpg', '2017-03-30 17:23:05', NULL),
(9, 1, 1, 'E-wllaet', ' Complaint', 'Punjab', '', 'hfghfgh', '1 (3).jpg', '2017-03-30 17:25:09', 'in process'),
(10, 1, 1, 'E-wllaet', ' Complaint', 'Punjab', '', 'hfghfgh', '1 (3).jpg', '2017-03-30 17:27:24', NULL),
(11, 1, 1, 'Online SHopping', 'General Query', 'Haryana', '', 'fsdfsdfsdf', 'avatar-1.jpg.png', '2017-03-30 17:36:32', NULL),
(12, 1, 1, 'Online SHopping', 'General Query', 'Haryana', '', 'fsdfsdfsdf', 'avatar-1.jpg.png', '2017-03-30 17:37:09', NULL),
(13, 1, 1, 'Online SHopping', 'General Query', 'Haryana', '', 'fsdfsdfsdf', 'avatar-1.jpg.png', '2017-03-30 17:39:57', NULL),
(14, 1, 1, 'Online SHopping', ' Complaint', 'Haryana', '', 'cvcx', 'doctorslog.sql', '2017-03-30 17:41:19', NULL),
(15, 1, 1, 'E-wllaet', 'General Query', 'Punjab', '', 'fsdfsdf', '', '2017-03-30 17:42:38', NULL),
(16, 1, 1, 'E-wllaet', 'General Query', 'Punjab', '', 'fsdfsdf', '', '2017-03-31 01:54:07', NULL),
(17, 5, 1, 'E-wllaet', ' Complaint', 'fsdfs', '', 'test test', '', '2017-06-11 10:57:49', NULL),
(18, 5, 1, 'Online SHopping', ' Complaint', 'Uttar Pradesh', '', 'rtytry', 'About Us.docx', '2017-06-11 11:08:47', NULL),
(19, 6, 1, 'Online SHopping', ' Complaint', 'Uttar Pradesh', '', 'Test@123 dfds fsd fs gs gsd g sg g g sgstwerwe ewtw tw', 'About Us.docx', '2017-06-11 11:15:24', 'closed'),
(20, 1, 1, 'E-wllaet', 'General Query', 'fsdfs', '', 'gdgsdgsd', '', '2018-05-24 18:26:23', NULL),
(21, 1, 1, 'Online SHopping', 'General Query', 'Uttar Pradesh', '', 'fsdfs', '', '2018-05-24 18:26:55', NULL),
(22, 1, 1, 'Online SHopping', 'General Query', 'Uttar Pradesh', '', 'fsdfs', '', '2018-05-24 18:27:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-28 17:04:36', '', 1),
(2, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-29 15:02:26', '', 1),
(3, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-30 14:58:00', '', 1),
(4, 0, 'dsad', 0x3a3a3100000000000000000000000000, '2017-03-31 17:39:07', '', 0),
(5, 0, 'dwerwer', 0x3a3a3100000000000000000000000000, '2017-03-31 17:41:22', '', 0),
(6, 0, 'ffert', 0x3a3a3100000000000000000000000000, '2017-03-31 17:41:29', '', 0),
(7, 0, 'ewrwe', 0x3a3a3100000000000000000000000000, '2017-03-31 17:42:12', '', 0),
(8, 0, 'ewrwe', 0x3a3a3100000000000000000000000000, '2017-03-31 17:47:51', '', 0),
(9, 0, 'ewrwe', 0x3a3a3100000000000000000000000000, '2017-03-31 17:47:54', '', 0),
(10, 0, 'fsdfsdff', 0x3a3a3100000000000000000000000000, '2017-03-31 17:48:11', '', 0),
(11, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-31 17:49:25', '', 1),
(12, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-04-01 18:52:35', '02-04-2017 12:24:41 AM', 1),
(13, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-04-01 18:58:09', '02-04-2017 12:50:42 AM', 1),
(14, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-04-01 19:38:15', '02-04-2017 01:08:19 AM', 1),
(15, 0, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-04-02 18:50:20', '', 0),
(16, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-04-02 18:50:28', '03-04-2017 12:26:50 AM', 1),
(17, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-05-02 18:01:26', '', 1),
(18, 0, 'test@gm.com', 0x3a3a3100000000000000000000000000, '2017-06-11 10:48:50', '', 0),
(19, 5, 'abc@abc.com', 0x3a3a3100000000000000000000000000, '2017-06-11 10:56:30', '11-06-2017 04:39:15 PM', 1),
(20, 6, 'xyz@xyz.com', 0x3a3a3100000000000000000000000000, '2017-06-11 11:13:28', '11-06-2017 04:45:46 PM', 1),
(21, 6, 'xyz@xyz.com', 0x3a3a3100000000000000000000000000, '2017-06-11 11:19:45', '11-06-2017 04:50:02 PM', 1),
(22, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2018-05-24 18:26:07', '', 1),
(23, 0, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2018-09-05 17:05:22', '', 0),
(24, 0, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2018-09-05 17:05:32', '', 0),
(25, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2018-09-05 17:07:12', '04-02-2019 11:52:36 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `branchcode` varchar(255) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `branch`, `branchcode`, `userImage`, `regDate`, `status`) VALUES
(1, 'Anuj Kumar', 'anuj.lpu1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 9999857860, '', '', NULL, '2017-03-28 11:44:52', 1),
(2, 'anson chits', 'anson@gmail.com', '12345', 8547633052, 'NEDUMKANDAM', '', '0412c29576c708cf0155e8de242169b1.jpg', '2019-02-04 06:27:04', 1),
(3, 'ssa', 'admin@gmail.com', 'admin', 9999999999, NULL, NULL, NULL, '2019-02-11 07:04:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users1`
--

DROP TABLE IF EXISTS `users1`;
CREATE TABLE IF NOT EXISTS `users1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `branchcode` varchar(255) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users1`
--

INSERT INTO `users1` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `branch`, `branchcode`, `userImage`, `regDate`, `status`) VALUES
(1, 'Anuj Kumar', 'anuj.lpu1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 9999857860, 'Uttar Pradesh', 'India', NULL, '2017-03-28 11:44:52', 1),
(2, 'anson chits', 'anson@gmail.com', '12345', 8547633052, 'kerala', 'india', NULL, '2019-02-04 06:27:04', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
