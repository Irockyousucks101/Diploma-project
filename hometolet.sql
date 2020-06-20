-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2019 at 03:20 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hometolet`
--

-- --------------------------------------------------------

--
-- Table structure for table `availablefor`
--

CREATE TABLE `availablefor` (
  `availid` int(3) NOT NULL,
  `availname` varchar(150) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `availablefor`
--

INSERT INTO `availablefor` (`availid`, `availname`, `status`) VALUES
(2, 'family', 1),
(3, 'couple ', 1),
(4, 'student', 1);

-- --------------------------------------------------------

--
-- Table structure for table `enquiryform`
--

CREATE TABLE `enquiryform` (
  `eid` int(3) NOT NULL,
  `ownerid` int(3) NOT NULL,
  `ename` varchar(150) NOT NULL,
  `contact` varchar(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `msg` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiryform`
--

INSERT INTO `enquiryform` (`eid`, `ownerid`, `ename`, `contact`, `email`, `msg`) VALUES
(1, 2, 'shailesh', '9826843913', 's.shailesh49@gmail.com', 'aaaa'),
(2, 2, 'shailesh', '9826843913', 's.shailesh49@gmail.com', 'aaaa');

-- --------------------------------------------------------

--
-- Table structure for table `houseentrydetail`
--

CREATE TABLE `houseentrydetail` (
  `hid` int(5) NOT NULL,
  `img` varchar(150) NOT NULL,
  `htypeid` int(2) NOT NULL,
  `price` int(7) NOT NULL,
  `vbuild` varchar(150) NOT NULL,
  `lid` int(3) NOT NULL,
  `area` int(5) NOT NULL,
  `hstatus` varchar(50) NOT NULL,
  `descp` varchar(250) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `owner` varchar(100) NOT NULL,
  `postday` date NOT NULL,
  `pid` int(3) NOT NULL,
  `owneremail` varchar(50) NOT NULL,
  `bathroom` varchar(6) NOT NULL,
  `intfacing` varchar(20) NOT NULL,
  `postedby` varchar(20) NOT NULL,
  `sid` int(3) NOT NULL,
  `availid` int(3) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `houseentrydetail`
--

INSERT INTO `houseentrydetail` (`hid`, `img`, `htypeid`, `price`, `vbuild`, `lid`, `area`, `hstatus`, `descp`, `contact`, `owner`, `postday`, `pid`, `owneremail`, `bathroom`, `intfacing`, `postedby`, `sid`, `availid`, `status`) VALUES
(1, 'feature1.jpg', 3, 33, 'Self Verified', 1, 2000, 'Furnished', 'dsfsdfsdf', '4444', 'ram', '2019-04-20', 2, 'ram@gmail.com', '1', 'North', '', 1, 1, 1),
(2, 'feature2.jpg', 3, 5000, 'Self Verified', 1, 2000, 'Furnished', 'dsfsdfsdf', '9826843913', 'ram', '2019-04-27', 2, 'ram@gmail.com', '1', 'North', 'owner', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `housetype`
--

CREATE TABLE `housetype` (
  `hid` int(4) NOT NULL,
  `htype` varchar(150) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `housetype`
--

INSERT INTO `housetype` (`hid`, `htype`, `status`) VALUES
(3, '2BHK', 1),
(4, '3BHK', 1),
(5, '4BHK', 1),
(6, '5BHK', 1),
(7, '1BHK', 1),
(8, ' 7BHK', 1);

-- --------------------------------------------------------

--
-- Table structure for table `locality`
--

CREATE TABLE `locality` (
  `lid` int(3) NOT NULL,
  `ltype` varchar(150) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locality`
--

INSERT INTO `locality` (`lid`, `ltype`, `status`) VALUES
(1, 'indore', 1),
(2, 'vijay nagar ', 1),
(3, 'palasia ', 1),
(4, 'gumasta nagar ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `propertytype`
--

CREATE TABLE `propertytype` (
  `pid` int(3) NOT NULL,
  `ptype` varchar(150) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `propertytype`
--

INSERT INTO `propertytype` (`pid`, `ptype`, `status`) VALUES
(2, 'flate', 1),
(3, ' bunglow', 1),
(4, ' convention center', 1);

-- --------------------------------------------------------

--
-- Table structure for table `society`
--

CREATE TABLE `society` (
  `sid` int(3) NOT NULL,
  `sname` varchar(150) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `society`
--

INSERT INTO `society` (`sid`, `sname`, `status`) VALUES
(1, 'royalpark', 1),
(2, 'Omax city', 1);

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `uid` int(3) NOT NULL,
  `uname` varchar(150) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`uid`, `uname`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `availablefor`
--
ALTER TABLE `availablefor`
  ADD PRIMARY KEY (`availid`);

--
-- Indexes for table `enquiryform`
--
ALTER TABLE `enquiryform`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `houseentrydetail`
--
ALTER TABLE `houseentrydetail`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `housetype`
--
ALTER TABLE `housetype`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `locality`
--
ALTER TABLE `locality`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `propertytype`
--
ALTER TABLE `propertytype`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `society`
--
ALTER TABLE `society`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `availablefor`
--
ALTER TABLE `availablefor`
  MODIFY `availid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `enquiryform`
--
ALTER TABLE `enquiryform`
  MODIFY `eid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `houseentrydetail`
--
ALTER TABLE `houseentrydetail`
  MODIFY `hid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `housetype`
--
ALTER TABLE `housetype`
  MODIFY `hid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `locality`
--
ALTER TABLE `locality`
  MODIFY `lid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `propertytype`
--
ALTER TABLE `propertytype`
  MODIFY `pid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `society`
--
ALTER TABLE `society`
  MODIFY `sid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `userlogin`
--
ALTER TABLE `userlogin`
  MODIFY `uid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
