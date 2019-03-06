-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2019 at 11:37 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nsh`
--

-- --------------------------------------------------------

--
-- Table structure for table `cashierslogin`
--

CREATE TABLE `cashierslogin` (
  `Name` varchar(150) NOT NULL,
  `upassword` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cashierslogin`
--

INSERT INTO `cashierslogin` (`Name`, `upassword`) VALUES
('stan', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `Employee_ID` varchar(150) NOT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `City` varchar(250) DEFAULT NULL,
  `Employee_Type` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`Employee_ID`, `Name`, `Address`, `City`, `Employee_Type`) VALUES
('123', 'morris', '12345', 'nyeri', 'Cashier'),
('999', 'you', '123', '56', 'Cashier');

-- --------------------------------------------------------

--
-- Table structure for table `kits`
--

CREATE TABLE `kits` (
  `ItemCode` varchar(150) NOT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `UnitPrice` varchar(150) DEFAULT NULL,
  `Quantiy` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kits`
--

INSERT INTO `kits` (`ItemCode`, `Name`, `UnitPrice`, `Quantiy`) VALUES
('112', 'kits', '2000', '200');

-- --------------------------------------------------------

--
-- Table structure for table `managerslogin`
--

CREATE TABLE `managerslogin` (
  `upassword` varchar(150) DEFAULT NULL,
  `Name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `managerslogin`
--

INSERT INTO `managerslogin` (`upassword`, `Name`) VALUES
('qwerty', 'ian');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ItemCode` varchar(150) NOT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `UnitPrice` varchar(150) DEFAULT NULL,
  `Quantity` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ItemCode`, `Name`, `UnitPrice`, `Quantity`) VALUES
('111', 'socks', '250', '200'),
('112', 'kits', '2000', '400'),
('113', 'shoes', '5000', '400'),
('114', 'Rackets', '1000', '300'),
('7683', 'helmets', '6700', '677');

-- --------------------------------------------------------

--
-- Table structure for table `rackets`
--

CREATE TABLE `rackets` (
  `ItemCode` varchar(150) NOT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `UnitPrice` varchar(150) DEFAULT NULL,
  `Quantiy` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rackets`
--

INSERT INTO `rackets` (`ItemCode`, `Name`, `UnitPrice`, `Quantiy`) VALUES
('113', 'rackets', '500', '240');

-- --------------------------------------------------------

--
-- Table structure for table `shoes`
--

CREATE TABLE `shoes` (
  `ItemCode` varchar(150) NOT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `UnitPrice` varchar(150) DEFAULT NULL,
  `Quantiy` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shoes`
--

INSERT INTO `shoes` (`ItemCode`, `Name`, `UnitPrice`, `Quantiy`) VALUES
('114', 'shoes', '5000', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `socks`
--

CREATE TABLE `socks` (
  `ItemCode` varchar(150) NOT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `UnitPrice` varchar(150) DEFAULT NULL,
  `Quantiy` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `socks`
--

INSERT INTO `socks` (`ItemCode`, `Name`, `UnitPrice`, `Quantiy`) VALUES
('111', 'socks', '101', '20.0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cashierslogin`
--
ALTER TABLE `cashierslogin`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`Employee_ID`);

--
-- Indexes for table `kits`
--
ALTER TABLE `kits`
  ADD PRIMARY KEY (`ItemCode`);

--
-- Indexes for table `managerslogin`
--
ALTER TABLE `managerslogin`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ItemCode`);

--
-- Indexes for table `rackets`
--
ALTER TABLE `rackets`
  ADD PRIMARY KEY (`ItemCode`);

--
-- Indexes for table `shoes`
--
ALTER TABLE `shoes`
  ADD PRIMARY KEY (`ItemCode`);

--
-- Indexes for table `socks`
--
ALTER TABLE `socks`
  ADD PRIMARY KEY (`ItemCode`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
