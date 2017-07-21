-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2017 at 10:40 AM
-- Server version: 5.6.25
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dynapac_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE IF NOT EXISTS `announcements` (
  `description` varchar(2000) NOT NULL,
  `ID` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`description`, `ID`) VALUES
('welcome to dynapac', 0);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(6) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `width` int(4) DEFAULT NULL,
  `height` int(4) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `category` varchar(15) DEFAULT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `cdesc` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `path` varchar(60) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5469 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `type`, `size`, `width`, `height`, `date`, `category`, `cname`, `cdesc`, `tag`, `path`) VALUES
(5460, 'Flash_01.zip', 'application/octet-stream', '8053 KB', 0, 0, '2017-07-18', 'Flash', 'Flash', 'Flash', 'Flash', 'uploads/Flash/Flash_01.zip'),
(5461, 's7hsw_v_001_01_en.mp4', 'video/mp4', '1914 KB', 0, 0, '2017-07-19', 'Videos', 'video', 'video', 'Video', 'uploads/Videos/s7hsw_v_001_01_en.mp4'),
(5462, 'Working with Diversity.zip', 'application/octet-stream', '20517 KB', 0, 0, '2017-07-19', 'Captivate', 'Working with Diversity', 'Working with Diversity', 'Working with Diversity', 'uploads/Captivate/Working with Diversity.zip'),
(5463, 'Mission Profile M01_LMS.zip', 'application/octet-stream', '9786 KB', 0, 0, '2017-07-19', 'Storyline', 'story', 'story', 'story', 'uploads/Storyline/Mission Profile M01_LMS.zip'),
(5465, 's7hsw.mp4', 'video/mp4', '1914 KB', 0, 0, '2017-07-19', 'Videos', 'video', 'video', 'vidoes', 'uploads/Videos/s7hsw.mp4'),
(5466, 'MP.zip', 'application/octet-stream', '9786 KB', 0, 0, '2017-07-19', 'Storyline', 'story', 'story', 'story', 'uploads/Storyline/MP.zip'),
(5467, 'PDF.pdf', 'application/pdf', '871 KB', 0, 0, '2017-07-19', 'Pdf', 'pdf1', 'pdf1', 'pdf1', 'uploads/Pdf/PDF.pdf'),
(5468, 'Flash.zip', 'application/octet-stream', '8053 KB', 0, 0, '2017-07-20', 'Flash', 'Flash', 'Flash', 'Flash', 'uploads/Flash/Flash.zip');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `emp_id` varchar(15) NOT NULL,
  `username` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `password` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `type` varchar(10) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `security_txt` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`emp_id`, `username`, `password`, `type`, `mail`, `security_txt`, `status`) VALUES
('CHRP/PUNE-001', 'Ajay', 'chrpindia', 'User', 'ajay.kumar@chrp-india.com', 'Ajay_CHRP/PUNE-001', 'Approve'),
('100', 'sridhar', 'sridhar', 'User', 'b.sridhar@chrp-india.com', 'chrpindia', 'Approve'),
('044', 'kalpana', 'chrpindia', 'Manager', 'kalpana.k@chrp-india.com', '123456', 'Approve'),
('123456', 'nio', '27101989', 'User', 'nilesh.animo99@gmail.com', 'nil', 'Pending'),
('CHRP/HYD-065', 'Praveen', 'chrpIndia', 'Admin', 'praveen.b@chrp-india.com', 'praveen1234', 'Approve'),
('CHRP / HYD - 01', 'shashi', 'chrpindia', 'Admin', 'shashikanth.g@chrp-india.com', '1234', 'Approve'),
('CHRP-EX-001', 'Srividya', 'chrpindiA', 'User', 'srividya_v@hotmail.com', 'Srividya_CHRP-EX-001', 'Approve'),
('CHRP', 'User', '1111', 'User', 'user@chrp-india.com', 'chrpindia', 'Approve');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `mail` (`mail`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5469;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
