-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2020 at 09:59 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `farmar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_register`
--

CREATE TABLE IF NOT EXISTS `admin_register` (
`id` int(100) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `idno` varchar(100) COLLATE utf8_bin NOT NULL,
  `gender` varchar(100) COLLATE utf8_bin NOT NULL,
  `contact_number` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin_register`
--

INSERT INTO `admin_register` (`id`, `name`, `idno`, `gender`, `contact_number`, `email`, `password`) VALUES
(1, 'মোছাঃ সুরাইয়া আক্তার আলো', '২৩৪৫৪১৫৫৪২৬৫', 'মহিলা', '০১২৩৪৫৬৭৮৯', 'sorayaalo01791@gmail.com', 'soraya');

-- --------------------------------------------------------

--
-- Table structure for table `officer_register`
--

CREATE TABLE IF NOT EXISTS `officer_register` (
`id` int(100) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `idno` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `officer_register`
--

INSERT INTO `officer_register` (`id`, `name`, `idno`, `email`, `password`) VALUES
(2, 'সোহেল রানা', '২৩৪১৬২৪৬২৫৫৩', 'sohelranacse@gmail.com', 'sohel');

-- --------------------------------------------------------

--
-- Table structure for table `problem`
--

CREATE TABLE IF NOT EXISTS `problem` (
`id` int(100) NOT NULL,
  `file` varchar(100) COLLATE utf8_bin NOT NULL,
  `text` varchar(500) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `problem`
--

INSERT INTO `problem` (`id`, `file`, `text`, `email`) VALUES
(24, 'download1.jpg', 'à¦œà¦«à§à¦²à¦¸à¦œà¦« à¦²à¦œà¦²à¦¸à¦œà¦«à§à¦²à¦¸à¦¦ à¦œà¦²à¦¸à¦œà¦«à§à¦²à¦¸à¦¦', 'ayratahrin@gmail.com'),
(25, '1.jpg', 'à¦—à¦¾à¦›à§‡à¦° à¦ªà¦¾à¦¤à¦¾ à¦•à¦¾à¦²à§‹\r\n', 'ayratahrin@gmail.com'),
(26, 'dhann.jpg', 'à¦ªà§‹à¦•à¦¾ à¦²à¦¾à¦—à¦›à§‡ à¦§à¦¾à¦¨ à¦‡ à¦•à¦¿ à¦­à¦¾à¦¬à§‡ à¦à¦‡ à¦ªà§‹à¦•à¦¾ à¦¥à§‡à¦•à§‡ à¦®à§à¦•à§à¦¤à¦¿ à¦ªà¦¾à¦¬à§‡ à¦§à¦¾à¦¨', 'raha@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `solution`
--

CREATE TABLE IF NOT EXISTS `solution` (
`ID` int(100) NOT NULL,
  `solution` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `solution`
--

INSERT INTO `solution` (`ID`, `solution`, `email`) VALUES
(3, 'পানি দিন\r\n', 'ayratahrin@gmail.com'),
(4, 'সার দিন ', 'mithunchandra40@gmail.com'),
(5, 'ক্যারাটা দিন \r\n', 'raha@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_register`
--

CREATE TABLE IF NOT EXISTS `user_register` (
`id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `idno` varchar(100) COLLATE utf8_bin NOT NULL,
  `gender` varchar(100) COLLATE utf8_bin NOT NULL,
  `age` varchar(100) COLLATE utf8_bin NOT NULL,
  `address` varchar(100) COLLATE utf8_bin NOT NULL,
  `contact_number` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_register`
--

INSERT INTO `user_register` (`id`, `name`, `idno`, `gender`, `age`, `address`, `contact_number`, `email`, `password`) VALUES
(1, 'আয়রা তাহরিম', '১২৩৪৫৬৭৮৭৬৫৪৫৬৭৮', ' মহিলা ', '১৪', 'বড়িয়া', '০১৭৩৯৯০৯৮১৯', 'ayratahrin@gmail.com', 'ayratahrin'),
(5, 'সুরাইয়া আলো ', '১২৩৪৫৬৭৮৭৬৫৪৫৬৭৮', ' মহিলা ', '১৭', 'বড়িয়া', '০১৭৯১৮৩৯৫৬৩', 'saalopust@gmail.com', 'alo123'),
(6, 'মিথুন চন্দ্র সূত্রধর', '১৯৯৭৮৩৬৩৯৭৩৮৭', 'পুরুষ', '২১', 'বগুড়া', '০১৭৩৯৯০৯৮১৯', 'mithunchandra40@gmail.com', 'mithun'),
(7, 'আয়রা তাহরিম', '১৯৯৭৮৩৬৩৯৭৩৮৭', ' মহিলা ', '২৩', 'ঢাকা', '০১৭৩৯৯০৯৮১৯', 'ayratahrin@gmail.com', 'য়ায়রা'),
(8, 'রাহা', '৩২৩৪৫৬৭৮৯৬৫', ' মহিলা ', '১৭', 'পাবনা', '০১৭৪৪৩২০৫৩১', 'raha@gmail.com', 'raha');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_register`
--
ALTER TABLE `admin_register`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `officer_register`
--
ALTER TABLE `officer_register`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `problem`
--
ALTER TABLE `problem`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `solution`
--
ALTER TABLE `solution`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_register`
--
ALTER TABLE `user_register`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_register`
--
ALTER TABLE `admin_register`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `officer_register`
--
ALTER TABLE `officer_register`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `problem`
--
ALTER TABLE `problem`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `solution`
--
ALTER TABLE `solution`
MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_register`
--
ALTER TABLE `user_register`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
