-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2022 at 06:04 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electrogrid`
--

-- --------------------------------------------------------

--
-- Table structure for table `accdetails`
--

CREATE TABLE `accdetails` (
  `accountid` int(10) NOT NULL,
  `accountno` int(10) NOT NULL,
  `premisesid` varchar(10) NOT NULL,
  `areaoffice` varchar(20) NOT NULL,
  `tarifftype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accdetails`
--

INSERT INTO `accdetails` (`accountid`, `accountno`, `premisesid`, `areaoffice`, `tarifftype`) VALUES
(2, 134567890, 'PKL2430', 'Kandy', 'industrail(I-2)'),
(3, 101008090, 'KAL345', 'Kundasale', 'Domestic(D-1)'),
(5, 23467894, 'JKl4678', 'Moratuwa', 'Government(G-2)');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `complaintid` int(10) NOT NULL,
  `accountno` int(10) NOT NULL,
  `username` varchar(200) NOT NULL,
  `userphone` int(10) NOT NULL,
  `complaint` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`complaintid`, `accountno`, `username`, `userphone`, `complaint`, `date`) VALUES
(23, 304360608, 'T.T.P Attanayke', 773456789, 'Bill not correct', '2022-04-25 13:39:53'),
(24, 101008090, 'E.K Alwis', 717913818, 'Bill not correct', '2022-04-25 13:39:16'),
(26, 304360610, 'D.A Dahanayake', 712345678, 'Transaction Not Processed', '2022-04-25 13:39:53');

-- --------------------------------------------------------

--
-- Table structure for table `cusdetails`
--

CREATE TABLE `cusdetails` (
  `userid` int(11) NOT NULL,
  `accountno` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `useremail` varchar(30) NOT NULL,
  `userphone` int(10) NOT NULL,
  `useraddress` varchar(30) NOT NULL,
  `usernic` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cusdetails`
--

INSERT INTO `cusdetails` (`userid`, `accountno`, `username`, `useremail`, `userphone`, `useraddress`, `usernic`) VALUES
(1, 23467894, 'W.D.P SILVA', 'sandu@gmail.com', 7898098, 'NO 23,GARDEN ROAD,KANDY', '200056778989'),
(3, 345655444, 'I.K Perera', 'isuri99@gmail.com', 714418750, '115-1/1 Jawatta Road, 05', '998978967v'),
(4, 1090897685, 'S.K Herath', 'sasika@gmail.com', 702666855, '346 Old Moor Street12 Colombo', '878978987v');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `transactionid` int(11) NOT NULL,
  `accountno` int(10) NOT NULL,
  `paymenttype` varchar(30) NOT NULL,
  `cardtype` varchar(30) NOT NULL,
  `amount` double(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`transactionid`, `accountno`, `paymenttype`, `cardtype`, `amount`) VALUES
(1, 23467894, 'card', 'Debit', 10000.00),
(0, 5678967, 'Card', 'Debit', 20000.00),
(0, 5678967, 'Card', 'Debit', 20000.00),
(0, 349023456, 'Debit', 'Credit ', 5000.00);

-- --------------------------------------------------------

--
-- Table structure for table `power`
--

CREATE TABLE `power` (
  `userid` int(10) NOT NULL,
  `accountno` int(10) NOT NULL,
  `period` varchar(10) NOT NULL,
  `nunits` int(10) NOT NULL,
  `unitrate` decimal(5,2) NOT NULL,
  `totunits` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `power`
--

INSERT INTO `power` (`userid`, `accountno`, `period`, `nunits`, `unitrate`, `totunits`) VALUES
(1, 23467894, 'January', 100, '100.00', '500.00'),
(0, 1045790909, 'January', 10, '100.00', '500.00'),
(0, 56789878, 'December', 4, '100.00', '400.00');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(10) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `RegisteredAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `userName`, `password`, `email`, `RegisteredAt`) VALUES
(1, 'S.M.P Peramuna', 'sandu@gmail.com', 'sandu@gmail.com', '2022-04-24 14:12:11'),
(2, 'sandu99', 'dd', 'sandunika@gmail.com', '2022-04-23 11:07:04'),
(3, 'H.D Alahakoon', 'isu20', 'isu20@gmail.com', '2022-04-24 14:13:07'),
(4, 'U.K Dissanayke', 'hiru50', 'hiru50@gmail.com', '2022-04-24 14:40:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accdetails`
--
ALTER TABLE `accdetails`
  ADD PRIMARY KEY (`accountid`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`complaintid`);

--
-- Indexes for table `cusdetails`
--
ALTER TABLE `cusdetails`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accdetails`
--
ALTER TABLE `accdetails`
  MODIFY `accountid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `complaintid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `cusdetails`
--
ALTER TABLE `cusdetails`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
