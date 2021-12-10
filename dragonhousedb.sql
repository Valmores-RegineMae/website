-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2021 at 06:26 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dragonhousedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `rating` tinyint(1) NOT NULL,
  `submit_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `page_id`, `name`, `content`, `rating`, `submit_date`) VALUES
(15, 1, 'Regine', 'very good', 5, '2021-12-02 10:08:38'),
(16, 1, 'Irish', 'Nice website!', 4, '2021-12-02 10:09:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblaccomodation`
--

CREATE TABLE `tblaccomodation` (
  `ACCOMID` int(11) NOT NULL,
  `ACCOMODATION` varchar(30) NOT NULL,
  `ACCOMDESC` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblaccomodation`
--

INSERT INTO `tblaccomodation` (`ACCOMID`, `ACCOMODATION`, `ACCOMDESC`) VALUES
(12, 'Activities', '-----'),
(13, 'Weekend', '48 hours'),
(15, 'Weekdays', '-------');

-- --------------------------------------------------------

--
-- Table structure for table `tblauto`
--

CREATE TABLE `tblauto` (
  `autoid` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblauto`
--

INSERT INTO `tblauto` (`autoid`, `start`, `end`) VALUES
(1, 11127, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblfirstpartition`
--

CREATE TABLE `tblfirstpartition` (
  `FirstPID` int(11) NOT NULL,
  `FirstPTitle` text NOT NULL,
  `FirstPImage` varchar(99) NOT NULL,
  `FirstPSubTitle` text NOT NULL,
  `FirstPDescription` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfirstpartition`
--

INSERT INTO `tblfirstpartition` (`FirstPID`, `FirstPTitle`, `FirstPImage`, `FirstPSubTitle`, `FirstPDescription`) VALUES
(1, 'Welcome to Burnay Sands Beach Resort', '5page-img1.png', 'Beach House Studio', '----');

-- --------------------------------------------------------

--
-- Table structure for table `tblguest`
--

CREATE TABLE `tblguest` (
  `GUESTID` int(11) NOT NULL,
  `REFNO` int(11) NOT NULL,
  `G_FNAME` varchar(30) NOT NULL,
  `G_LNAME` varchar(30) NOT NULL,
  `G_CITY` varchar(90) NOT NULL,
  `G_ADDRESS` varchar(90) NOT NULL,
  `DBIRTH` date NOT NULL,
  `G_PHONE` varchar(20) NOT NULL,
  `G_NATIONALITY` varchar(30) NOT NULL,
  `G_COMPANY` varchar(90) NOT NULL,
  `G_CADDRESS` varchar(90) NOT NULL,
  `G_TERMS` tinyint(4) NOT NULL,
  `G_EMAIL` varchar(99) NOT NULL,
  `G_UNAME` varchar(255) NOT NULL,
  `G_PASS` varchar(255) NOT NULL,
  `ZIP` int(11) NOT NULL,
  `LOCATION` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblguest`
--

INSERT INTO `tblguest` (`GUESTID`, `REFNO`, `G_FNAME`, `G_LNAME`, `G_CITY`, `G_ADDRESS`, `DBIRTH`, `G_PHONE`, `G_NATIONALITY`, `G_COMPANY`, `G_CADDRESS`, `G_TERMS`, `G_EMAIL`, `G_UNAME`, `G_PASS`, `ZIP`, `LOCATION`) VALUES
(11122, 0, 'Akane Aoi', 'da', '', 'fasfas', '2021-12-01', '(+63) 9367789916', 'Filipino', 'asda', 'asd', 1, 'jsu@gamil.com', 'Meow', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 9000, ''),
(11123, 0, 'Akane Aoi', 'Go', '', '12-29th Street', '2021-12-09', '(+63) 9367789916', 'Japanese', 'ITComp', 'Lapasan', 1, 'Minecraft@yahoo.com', '2018100043', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 9000, ''),
(11124, 0, 'Kento', 'Nanami', '', '12-29th Street', '2021-12-01', '(+63) 9367789916', 'Japanese', 'ITComp', 'Lapasan', 1, 'Minecraft@yahoo.com', 'nanami', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 9000, ''),
(11125, 0, 'Sunako', 'Sawa', '', '12-29th Street', '2021-12-01', '(+63) 9367789916', 'Japanese', 'ITComp', 'Lapasan', 1, 'Minecraft@yahoo.com', 'meow', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 9000, ''),
(11126, 0, 'sd', 'as', '', '12-29th Street', '2021-12-01', '(+63) 9367789916', 'Filipino', 'ITComp', 'Lapasan', 1, 'jsu@gamil.com', 'meowk', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 9000, '');

-- --------------------------------------------------------

--
-- Table structure for table `tblmeal`
--

CREATE TABLE `tblmeal` (
  `MealID` int(11) NOT NULL,
  `MealType` varchar(90) NOT NULL,
  `MealPrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmeal`
--

INSERT INTO `tblmeal` (`MealID`, `MealType`, `MealPrice`) VALUES
(4, 'Lunch', 10),
(7, 'HB', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tblpayment`
--

CREATE TABLE `tblpayment` (
  `SUMMARYID` int(11) NOT NULL,
  `TRANSDATE` datetime NOT NULL,
  `CONFIRMATIONCODE` varchar(30) NOT NULL,
  `PQTY` int(11) NOT NULL,
  `GUESTID` int(11) NOT NULL,
  `SPRICE` double NOT NULL,
  `MSGVIEW` tinyint(1) NOT NULL,
  `STATUS` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpayment`
--

INSERT INTO `tblpayment` (`SUMMARYID`, `TRANSDATE`, `CONFIRMATIONCODE`, `PQTY`, `GUESTID`, `SPRICE`, `MSGVIEW`, `STATUS`) VALUES
(1, '2021-12-06 05:04:31', '78fa0e43', 1, 11122, 12000, 0, 'Pending'),
(2, '2021-12-06 07:39:20', '6xjn7sdq', 1, 11123, 300, 0, 'Pending'),
(3, '2021-12-07 03:53:51', '4oy8qkhr', 3, 11124, 18000, 0, 'Pending'),
(4, '2021-12-07 04:24:56', 'eg8ei4fs', 1, 11125, 300, 0, 'Pending'),
(5, '2021-12-07 11:35:41', 'ekv04hwe', 1, 11126, 1, 0, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `tblreservation`
--

CREATE TABLE `tblreservation` (
  `RESERVEID` int(11) NOT NULL,
  `CONFIRMATIONCODE` varchar(50) NOT NULL,
  `TRANSDATE` date NOT NULL,
  `ROOMID` int(11) NOT NULL,
  `ARRIVAL` datetime NOT NULL,
  `DEPARTURE` datetime NOT NULL,
  `RPRICE` double NOT NULL,
  `GUESTID` int(11) NOT NULL,
  `PRORPOSE` varchar(30) NOT NULL,
  `STATUS` varchar(11) NOT NULL,
  `BOOKDATE` datetime NOT NULL,
  `REMARKS` text NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblreservation`
--

INSERT INTO `tblreservation` (`RESERVEID`, `CONFIRMATIONCODE`, `TRANSDATE`, `ROOMID`, `ARRIVAL`, `DEPARTURE`, `RPRICE`, `GUESTID`, `PRORPOSE`, `STATUS`, `BOOKDATE`, `REMARKS`, `USERID`) VALUES
(1, '78fa0e43', '2021-12-06', 12, '2021-12-04 00:00:00', '2021-12-04 00:00:00', 12000, 11122, 'Travel', 'Pending', '0000-00-00 00:00:00', '', 0),
(2, '6xjn7sdq', '2021-12-06', 17, '2021-12-06 00:00:00', '2021-12-06 00:00:00', 300, 11123, 'Travel', 'Pending', '0000-00-00 00:00:00', '', 0),
(3, '4oy8qkhr', '2021-12-07', 12, '2021-12-06 00:00:00', '2021-12-06 00:00:00', 12000, 11124, 'Travel', 'Pending', '0000-00-00 00:00:00', '', 0),
(4, '4oy8qkhr', '2021-12-07', 19, '2021-12-01 00:00:00', '2021-12-01 00:00:00', 5000, 11124, 'Travel', 'Pending', '0000-00-00 00:00:00', '', 0),
(5, '4oy8qkhr', '2021-12-07', 18, '2021-12-09 00:00:00', '2021-12-01 00:00:00', 1000, 11124, 'Travel', 'Pending', '0000-00-00 00:00:00', '', 0),
(6, 'eg8ei4fs', '2021-12-07', 17, '2021-12-09 00:00:00', '2021-12-01 00:00:00', 300, 11125, 'Travel', 'Pending', '0000-00-00 00:00:00', '', 0),
(7, 'ekv04hwe', '2021-12-07', 24, '2021-12-07 00:00:00', '2021-12-07 00:00:00', 1, 11126, 'Travel', 'Pending', '0000-00-00 00:00:00', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblroom`
--

CREATE TABLE `tblroom` (
  `ROOMID` int(11) NOT NULL,
  `ROOMNUM` int(11) NOT NULL,
  `ACCOMID` int(11) NOT NULL,
  `ROOM` varchar(30) NOT NULL,
  `ROOMDESC` varchar(255) NOT NULL,
  `NUMPERSON` int(11) NOT NULL,
  `PRICE` double NOT NULL,
  `ROOMIMAGE` varchar(255) NOT NULL,
  `OROOMNUM` int(11) NOT NULL,
  `RoomTypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblroom`
--

INSERT INTO `tblroom` (`ROOMID`, `ROOMNUM`, `ACCOMID`, `ROOM`, `ROOMDESC`, `NUMPERSON`, `PRICE`, `ROOMIMAGE`, `OROOMNUM`, `RoomTypeID`) VALUES
(12, 0, 15, 'Beach House Studio', 'Max of 10pax, 3 year old are exempted', 10, 12000, 'rooms/202112050843_FB1.jpg', 0, 0),
(15, 1, 13, 'Beach House Studio', 'Overnight max of 10 pax capacity', 10, 13200, 'rooms/202112050840_FB4.jpg', 1, 0),
(17, 1, 12, 'Kayaks', 'For rental', 5, 300, 'rooms/202112050846_Kayaks&Snorkling.png', 1, 0),
(18, 1, 12, 'Snorkling Gears', 'Rental', 5, 1000, 'rooms/202112050851_SnorklingEquipment.jpg', 1, 0),
(19, 1, 12, 'Boating Tour & Fishing', 'Rental', 10, 5000, 'rooms/202112050855_boat rental.jpg', 1, 0),
(20, 1, 12, 'Bonfire Activity', 'Rental', 10, 1000, 'rooms/202112050857_FB34.jpg', 1, 0),
(21, 1, 12, 'Outdoor Camping w/ Tents', 'Rental', 10, 1500, 'rooms/202112050858_CampingTents.png', 1, 0),
(24, 1, 13, 'Samok', 'dasda', 1, 1, 'rooms/202112070846_ea072f01e261351f850a3d7574ac016e.jpg', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblroomtype`
--

CREATE TABLE `tblroomtype` (
  `RoomTypeID` int(11) NOT NULL,
  `RoomType` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblslideshow`
--

CREATE TABLE `tblslideshow` (
  `SlideID` int(11) NOT NULL,
  `SlideImage` text NOT NULL,
  `SlideCaption` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblslideshow`
--

INSERT INTO `tblslideshow` (`SlideID`, `SlideImage`, `SlideCaption`) VALUES
(15, 'images.jpg', ''),
(16, 'slide-image-3.jpg', ''),
(17, 'header-bg1.jpg', ''),
(18, 'slide-image-3.jpg', ''),
(19, 'Desert.jpg', ''),
(20, 'Koala.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbltitle`
--

CREATE TABLE `tbltitle` (
  `TItleID` int(11) NOT NULL,
  `Title` text NOT NULL,
  `Subtitle` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltitle`
--

INSERT INTO `tbltitle` (`TItleID`, `Title`, `Subtitle`) VALUES
(1, 'Dragon House', '24hrs.');

-- --------------------------------------------------------

--
-- Table structure for table `tbluseraccount`
--

CREATE TABLE `tbluseraccount` (
  `USERID` int(11) NOT NULL,
  `UNAME` varchar(30) NOT NULL,
  `USER_NAME` varchar(30) NOT NULL,
  `UPASS` varchar(90) NOT NULL,
  `ROLE` varchar(30) NOT NULL,
  `PHONE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluseraccount`
--

INSERT INTO `tbluseraccount` (`USERID`, `UNAME`, `USER_NAME`, `UPASS`, `ROLE`, `PHONE`) VALUES
(1, 'Anonymous', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 912856478);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting_contact`
--

CREATE TABLE `tbl_setting_contact` (
  `SetCon_ID` int(11) NOT NULL,
  `SetConLocation` varchar(99) NOT NULL,
  `SetConEmail` varchar(99) NOT NULL,
  `SetConContactNo` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_setting_contact`
--

INSERT INTO `tbl_setting_contact` (`SetCon_ID`, `SetConLocation`, `SetConEmail`, `SetConContactNo`) VALUES
(1, 'Guanzon Street, Kabankalan Catholic College Kabankalan City, 6111 philippines', 'kcc_1927@yahoo.com', '(034)471-24-79');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblaccomodation`
--
ALTER TABLE `tblaccomodation`
  ADD PRIMARY KEY (`ACCOMID`);

--
-- Indexes for table `tblauto`
--
ALTER TABLE `tblauto`
  ADD PRIMARY KEY (`autoid`);

--
-- Indexes for table `tblfirstpartition`
--
ALTER TABLE `tblfirstpartition`
  ADD PRIMARY KEY (`FirstPID`);

--
-- Indexes for table `tblguest`
--
ALTER TABLE `tblguest`
  ADD PRIMARY KEY (`GUESTID`);

--
-- Indexes for table `tblmeal`
--
ALTER TABLE `tblmeal`
  ADD PRIMARY KEY (`MealID`);

--
-- Indexes for table `tblpayment`
--
ALTER TABLE `tblpayment`
  ADD PRIMARY KEY (`SUMMARYID`),
  ADD UNIQUE KEY `CONFIRMATIONCODE` (`CONFIRMATIONCODE`),
  ADD KEY `GUESTID` (`GUESTID`);

--
-- Indexes for table `tblreservation`
--
ALTER TABLE `tblreservation`
  ADD PRIMARY KEY (`RESERVEID`),
  ADD KEY `ROOMID` (`ROOMID`),
  ADD KEY `GUESTID` (`GUESTID`),
  ADD KEY `CONFIRMATIONCODE` (`CONFIRMATIONCODE`);

--
-- Indexes for table `tblroom`
--
ALTER TABLE `tblroom`
  ADD PRIMARY KEY (`ROOMID`),
  ADD KEY `ACCOMID` (`ACCOMID`);

--
-- Indexes for table `tblroomtype`
--
ALTER TABLE `tblroomtype`
  ADD PRIMARY KEY (`RoomTypeID`);

--
-- Indexes for table `tblslideshow`
--
ALTER TABLE `tblslideshow`
  ADD PRIMARY KEY (`SlideID`);

--
-- Indexes for table `tbltitle`
--
ALTER TABLE `tbltitle`
  ADD PRIMARY KEY (`TItleID`);

--
-- Indexes for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  ADD PRIMARY KEY (`USERID`);

--
-- Indexes for table `tbl_setting_contact`
--
ALTER TABLE `tbl_setting_contact`
  ADD PRIMARY KEY (`SetCon_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblaccomodation`
--
ALTER TABLE `tblaccomodation`
  MODIFY `ACCOMID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblauto`
--
ALTER TABLE `tblauto`
  MODIFY `autoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblfirstpartition`
--
ALTER TABLE `tblfirstpartition`
  MODIFY `FirstPID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblguest`
--
ALTER TABLE `tblguest`
  MODIFY `GUESTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11127;

--
-- AUTO_INCREMENT for table `tblmeal`
--
ALTER TABLE `tblmeal`
  MODIFY `MealID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpayment`
--
ALTER TABLE `tblpayment`
  MODIFY `SUMMARYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblreservation`
--
ALTER TABLE `tblreservation`
  MODIFY `RESERVEID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblroom`
--
ALTER TABLE `tblroom`
  MODIFY `ROOMID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tblroomtype`
--
ALTER TABLE `tblroomtype`
  MODIFY `RoomTypeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblslideshow`
--
ALTER TABLE `tblslideshow`
  MODIFY `SlideID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbltitle`
--
ALTER TABLE `tbltitle`
  MODIFY `TItleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_setting_contact`
--
ALTER TABLE `tbl_setting_contact`
  MODIFY `SetCon_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
