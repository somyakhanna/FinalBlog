
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 18, 2017 at 06:22 AM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u733815187_prod`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(4, 'MohitPuri', 'Delhi@1234');

-- --------------------------------------------------------

--
-- Table structure for table `bloggers`
--

CREATE TABLE IF NOT EXISTS `bloggers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(75) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `bloggers`
--

INSERT INTO `bloggers` (`id`, `name`, `description`, `image`) VALUES
(1, 'Chetna Dhull', 'Stupid & lazy, sometimes crazy.Love to write , travel & explore new things. May not be perfect but always myself.Cheers. ', 'chetna.jpg'),
(2, 'Steven Lawrence', ' A 23-year-old aspiring writer. He Loves Watching Films. He is shy at first but once you get to know him, you''ll know he''s a fun crazy guy.', 'steven.jpg'),
(3, 'Tanishq Agarwal', 'Final year Aeronautical Engineer. Loves singing. Here to bring you the best of Delhi.', 'Tanishq.jpg'),
(4, 'Artika Singh', 'I speak too much and that''s an issue, but I''m okay. Oh, I also write.', 'artika.jpg'),
(5, 'Geeta Sowmya', '', 'geeta.jpg'),
(6, 'Naina Ruhail', 'Professionally an MBA, a freelance makeup artist and stylist, Naina collaborates with brands as an innovator bringing something new to each and every post she writes. She loves experimenting with her looks and is known in the social circle for her makeup skills.', 'naina.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cable`
--

CREATE TABLE IF NOT EXISTS `cable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `pic1` varchar(50) NOT NULL DEFAULT 'product1.jpg',
  `pic2` varchar(50) NOT NULL DEFAULT 'product.jpg',
  `pic3` varchar(50) NOT NULL DEFAULT 'product3.jpg',
  `pic4` varchar(50) NOT NULL DEFAULT 'product2.jpg',
  `size` varchar(20) NOT NULL,
  `typeid` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `cable`
--

INSERT INTO `cable` (`id`, `Name`, `pic1`, `pic2`, `pic3`, `pic4`, `size`, `typeid`) VALUES
(1, 'Perforated Cable Tray', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '30'),
(2, 'Ladder Type Cable Tray', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '56'),
(3, 'Race way', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '57'),
(4, 'Slotted Angle Rack', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '31'),
(5, 'Medium Rack', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '58'),
(6, 'Display Rack', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '60'),
(7, 'Pallete Rack', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '59');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `catid` int(11) NOT NULL AUTO_INCREMENT,
  `catname` varchar(100) NOT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`catid`, `catname`) VALUES
(4, 'LIFESTYLE'),
(5, 'FOOD & BEVERAGES'),
(6, 'HEALTH & WELLNESS'),
(7, 'ENTERTAINMENT'),
(8, 'TRAVEL & ADVENTURE'),
(9, 'ART,CULTURE & HERITAGE');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `cid` int(200) NOT NULL AUTO_INCREMENT,
  `postid` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `message` varchar(200) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`cid`, `postid`, `name`, `message`, `date`) VALUES
(10, 0, 'harry potter', 'Awesome series', '2017-08-05 12:44:24'),
(12, 0, 'Hiiiiiiiiiiiiiiiiii', 'Byeeeeeeeeeeee\r\n', '2017-08-05 12:58:38'),
(13, 1, 'a', 'asdfgh', '2017-08-05 15:04:03'),
(14, 15, 'mohit', 'hi thifnkgnfgkfgnfg', '2017-08-08 08:03:43'),
(15, 15, 'mohit puri', 'hi this is nice blog', '2017-08-08 08:18:46'),
(16, 30, 'mohit', ' kggto', '2017-08-12 03:17:28');

-- --------------------------------------------------------

--
-- Table structure for table `convention`
--

CREATE TABLE IF NOT EXISTS `convention` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `pic1` varchar(50) NOT NULL DEFAULT 'product3.jpg',
  `pic2` varchar(50) NOT NULL DEFAULT 'product2.jpg',
  `pic3` varchar(50) NOT NULL DEFAULT 'product1.jpg',
  `pic4` varchar(50) NOT NULL DEFAULT 'product.jpg',
  `size` varchar(30) NOT NULL,
  `typeid` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `convention`
--

INSERT INTO `convention` (`id`, `Name`, `pic1`, `pic2`, `pic3`, `pic4`, `size`, `typeid`) VALUES
(1, '36W', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '44'),
(2, '18W', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '44'),
(3, '40W', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '45'),
(4, '20W', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '45'),
(5, '36W', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '46'),
(6, '36W', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '47'),
(7, '18W', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '47'),
(8, '36W', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '48'),
(9, '18W', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '48'),
(10, '40W', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '48'),
(11, '20W', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '48'),
(12, '1x28', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '49'),
(13, '2x28', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '49'),
(14, '1x40', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '50'),
(15, '2x40', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '50'),
(16, '1x40', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '50'),
(17, '2x20', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '50'),
(18, '4 foot', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '51'),
(19, 'Kanimuda 4 foot', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '51'),
(20, 'Imported Aluminium 4 foot', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '51'),
(21, 'China Aluminium 4 foot', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '51'),
(22, '2 foot', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '51'),
(23, 'Kani muda 2 foot', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '51'),
(24, 'Imported Aluminium 2 foot', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '51'),
(25, 'China Aluminium 2 foot', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '51'),
(26, '1x11', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '52'),
(27, '1x36', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '52'),
(28, '1x40', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '52'),
(29, '2x18', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '52'),
(30, '2x11', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '52'),
(31, '2x36', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '52'),
(32, '2x40', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '52'),
(33, '4x18', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '52'),
(34, '2x2 2x36', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '53'),
(35, '1x11', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '54'),
(36, '1x36', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '54'),
(37, '1x40', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '54'),
(38, '2x18', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '54'),
(39, '2x11', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '54'),
(40, '2x36', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '54');

-- --------------------------------------------------------

--
-- Table structure for table `fan`
--

CREATE TABLE IF NOT EXISTS `fan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `pic1` varchar(50) NOT NULL DEFAULT 'product3.jpg',
  `pic2` varchar(50) NOT NULL DEFAULT 'product2.jpg',
  `pic3` varchar(50) NOT NULL DEFAULT 'product1.jpg',
  `pic4` varchar(50) NOT NULL DEFAULT 'product.jpg',
  `size` varchar(30) NOT NULL,
  `typeid` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `fan`
--

INSERT INTO `fan` (`id`, `Name`, `pic1`, `pic2`, `pic3`, `pic4`, `size`, `typeid`) VALUES
(1, 'Fan top al', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '11'),
(2, 'Fan top ms', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '11'),
(3, 'Fan top B1', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '12'),
(4, 'Fan top al', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '12'),
(5, 'Fan top ms', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '12'),
(6, 'Fan bottom al', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '13'),
(7, 'Fan Bottom ms', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '13'),
(8, 'Fan bottom B1', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '14'),
(9, 'Fan Bottom al', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '14'),
(10, 'Fan Bottom ms', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '14'),
(11, 'Fan Blade GP1', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '15'),
(12, 'Fan Blade GP2', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '15'),
(13, 'Fan Blade GP3', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '15'),
(14, 'Fan Blade GP4', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '15'),
(15, 'Fan Blade Al 1', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '16'),
(16, 'Fan Blade Al 2', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '16'),
(17, 'Fan Blade Al 3', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '16'),
(18, 'Fan Blade Al 4', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '16'),
(19, 'Fan Blade Al 5', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '16'),
(20, 'Fan Blade Al 6', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '16'),
(21, 'Fan Blade Al 7', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '16'),
(22, 'Fan Blade Al 8', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '16'),
(23, 'Fan Blade Al 9', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '16'),
(24, 'Shank 1', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '17'),
(25, 'Shank 2', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '17'),
(26, 'Shank 3', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '17'),
(27, 'Shank 4', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '17'),
(28, '9" inches', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '18'),
(29, '12" inches', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '18'),
(30, '15" inches', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '18'),
(31, '18" inches', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '18'),
(32, '9" inches', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '19'),
(33, '12" inches', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '19'),
(34, '15" inches', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '19'),
(35, '18" inches', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '19');

-- --------------------------------------------------------

--
-- Table structure for table `led`
--

CREATE TABLE IF NOT EXISTS `led` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `pic1` varchar(50) NOT NULL DEFAULT 'product1.jpg',
  `pic2` varchar(50) NOT NULL DEFAULT 'product.jpg',
  `pic3` varchar(50) NOT NULL DEFAULT 'product3.jpg',
  `pic4` varchar(50) NOT NULL DEFAULT 'product2.jpg',
  `size` varchar(30) NOT NULL,
  `typeid` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `led`
--

INSERT INTO `led` (`id`, `Name`, `pic1`, `pic2`, `pic3`, `pic4`, `size`, `typeid`) VALUES
(1, '12W-20W', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '32'),
(2, '24W--40W', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '32'),
(3, '50W-60W', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '32'),
(4, '80W-100W', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '32'),
(5, '120W-150W', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '32'),
(6, '10W-12W', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '33'),
(7, '20W-24W', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '33'),
(8, '40W', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '33'),
(9, '10W-20W', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '34'),
(10, '30W-40W', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '34'),
(11, '50W-60W', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '34'),
(12, '80W-100W', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '34'),
(13, '2x2', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '35'),
(14, '1x1', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '35'),
(15, '1x2', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '35'),
(16, '1x4', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '35'),
(17, '2x2', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '36'),
(18, '1x1', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '36'),
(19, '1x2', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '36'),
(20, '1x4', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '36'),
(21, 'LED Driver Plate 1', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '37'),
(22, 'LED Driver Plate 2', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '37'),
(23, 'LED Driver Plate 3', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '37'),
(24, 'For Plastic Mould', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '38'),
(25, '6 Watt', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '39'),
(26, '12 Watt', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '39'),
(27, '24 Watt', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '39'),
(28, '3 Watt', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '40'),
(29, '6 Watt', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '40'),
(30, '12 Watt', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '40'),
(31, '24 Watt', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '40'),
(32, '1x18', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '41'),
(33, '2x18', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '41'),
(34, '1x18', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '42'),
(35, '2x18', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '42'),
(36, '4 foot', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '43'),
(37, 'Kani Muda 4 foot', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '43'),
(38, 'Imported Aluminium 4 foot', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '43'),
(39, 'China Aluminium 4 foot', 'product1.jpg', 'product.jpg', 'product3.jpg', 'product2.jpg', '', '43');

-- --------------------------------------------------------

--
-- Table structure for table `ledstreetlight`
--

CREATE TABLE IF NOT EXISTS `ledstreetlight` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `pic1` varchar(50) NOT NULL DEFAULT 'product3.jpg',
  `pic2` varchar(50) NOT NULL DEFAULT 'product2.jpg',
  `pic3` varchar(50) NOT NULL DEFAULT 'product1.jpg',
  `pic4` varchar(50) NOT NULL DEFAULT 'product.jpg',
  `size` varchar(30) NOT NULL,
  `typeid` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `ledstreetlight`
--

INSERT INTO `ledstreetlight` (`id`, `Name`, `pic1`, `pic2`, `pic3`, `pic4`, `size`, `typeid`) VALUES
(1, 'Full Glass', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '1'),
(2, 'Acrylic Cover', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '1'),
(3, 'Frame', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '1'),
(4, 'Full Glass', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '2'),
(5, 'Acrylic Cover', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '2'),
(6, 'Frame', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '2'),
(7, 'Full Glass', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '3'),
(8, 'Frame', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '3'),
(9, 'Full Glass', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '4'),
(10, 'Frame', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '4'),
(11, 'Full Glass', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '5'),
(12, 'Frame', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '5');

-- --------------------------------------------------------

--
-- Table structure for table `mainproducts`
--

CREATE TABLE IF NOT EXISTS `mainproducts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(80) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Picture` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `mainproducts`
--

INSERT INTO `mainproducts` (`id`, `Name`, `Type`, `Picture`) VALUES
(1, 'MCB/TPN BOXES Single Door', 'MCB', 'mcbsingle.jpg'),
(2, 'MCB/TPN BOXES Single Door Taper Cover', 'MCB', 'mcbsingle.jpg'),
(3, 'MCB/TPN BOXES Double Door FRAME', 'MCB', 'mcbsingle.jpg'),
(4, 'MCB/TPN BOXES Slim FRAME Double Door ', 'MCB', 'mcbsingle.jpg'),
(5, 'MCB/TPN BOXES Double Door H-Type', 'MCB', 'mcbsingle.jpg'),
(6, 'Double Door H-Type Side Plate', 'MCB', 'mcbsingle.jpg'),
(7, 'MCB BOXES with Plastic Cover ', 'MCB', 'mcbsingle.jpg'),
(8, 'Double Door H-Type SidePlate Horizontal Stick', 'MCB', 'mcbsingle.jpg'),
(9, 'AC Box', 'MCB', 'mcbsingle.jpg'),
(10, 'Zinc Box in MCB Box ', 'MCB', 'mcbsingle.jpg'),
(11, 'Fan Top 189', 'fan', 'fantop.jpg'),
(12, 'Fan Top B1', 'fan', 'fantop.jpg'),
(13, 'Fan Bottom 189', 'fan', 'fantop.jpg'),
(14, 'Fan Bottom B1', 'fan', 'fantop.jpg'),
(15, 'Fan Blade GP', 'fan', 'fantop.jpg'),
(16, 'Fan Blade al', 'fan', 'fantop.jpg'),
(17, 'Shank', 'fan', 'fantop.jpg'),
(18, 'Fresh Air Blade', 'fan', 'fantop.jpg'),
(19, 'Fresh Air Frame', 'fan', 'fantop.jpg'),
(20, 'MCCB Box', 'misc', 'mccb.jpg'),
(21, 'Rotary Single Box', 'misc', 'mccb.jpg'),
(22, 'Rotary 3 Box', 'misc', 'mccb.jpg'),
(23, 'Pole Box', 'misc', 'mccb.jpg'),
(24, 'Meter Box', 'misc', 'mccb.jpg'),
(25, 'Submercial Box Panel', 'misc', 'mccb.jpg'),
(26, 'Main Switch Deep draw', 'misc', 'mccb.jpg'),
(27, 'Changeover Deep Draw', 'misc', 'mccb.jpg'),
(28, 'Bus Bar', 'misc', 'mccb.jpg'),
(29, 'Changeover Fabrication', 'misc', 'mccb.jpg'),
(30, 'Perforated Cable Tray', 'cable tray', 'mccb.jpg'),
(31, 'Slotted Angle Racks', 'storage racks', 'mccb.jpg'),
(32, 'LED Street Light', 'LED', 'ledpanel.jpg'),
(33, 'LED Dolphin Street Light', 'LED ', 'ledpanel.jpg'),
(34, 'LED Flood Light', 'LED', 'ledpanel.jpg'),
(35, 'LED Panel Concealed', 'LED', 'ledpanel.jpg'),
(36, 'LED Panel Surface', 'LED', 'ledpanel.jpg'),
(37, 'LED Driver Plate ', 'LED', 'ledpanel.jpg'),
(38, 'LED Cup Reflector for Plastic Mould', 'LED', 'ledpanel.jpg'),
(39, 'LED Back Plate Round', 'LED', 'ledpanel.jpg'),
(40, 'LED Back Plate Square', 'LED', 'ledpanel.jpg'),
(41, 'LED Box', 'LED', 'ledpanel.jpg'),
(42, 'LED Slim Box', 'LED', 'ledpanel.jpg'),
(43, 'Industrial Shade for LED Box', 'LED', 'ledpanel.jpg'),
(44, 'T8 Patti', 'Convention', 'patti.jpg'),
(45, 'T12 Patti', 'Convention', 'patti.jpg'),
(46, 'EESL Patti', 'Convention', 'patti.jpg'),
(47, 'Slim Mirolta', 'Convention', 'patti.jpg'),
(48, 'Round Mirolta', 'Convention', 'patti.jpg'),
(49, 'T5 Slim Box', 'Convention', 'patti.jpg'),
(50, 'T8 Tony Box Electronic', 'Convention', 'patti.jpg'),
(51, 'Industrial Shade for Tony Box', 'Convention', 'patti.jpg'),
(52, 'Mirror Optic Concealed', 'Convention', 'patti.jpg'),
(53, 'Wings', 'Convention', 'patti.jpg'),
(54, 'Mirror Optic Surface', 'Convention', 'patti.jpg'),
(55, 'Main Switch Fabrication', 'misc', 'mccb.jpg'),
(56, 'Ladder Type Cable Tray', 'cable tray', 'cabletray.jpg'),
(57, 'Race Way', 'cable tray', 'cabletray.jpg'),
(58, 'Medium Rack', 'storage racks', 'storage racks.jpg'),
(59, 'Pallete Rack', 'storage racks', 'storage racks.jpg'),
(60, 'Display Rack', 'storage racks', 'storage racks.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mcb`
--

CREATE TABLE IF NOT EXISTS `mcb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `pic1` varchar(50) NOT NULL DEFAULT 'product1.jpg',
  `pic2` varchar(50) NOT NULL DEFAULT 'product3.jpg',
  `pic3` varchar(50) NOT NULL DEFAULT 'product.jpg',
  `pic4` varchar(50) NOT NULL DEFAULT 'product2.jpg',
  `size` varchar(30) NOT NULL,
  `typeid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=92 ;

--
-- Dumping data for table `mcb`
--

INSERT INTO `mcb` (`id`, `name`, `pic1`, `pic2`, `pic3`, `pic4`, `size`, `typeid`) VALUES
(1, 'MCB 4 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '1'),
(2, 'MCB 6 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '1'),
(3, 'MCB 8 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '1'),
(4, 'MCB 10 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '1'),
(5, 'MCB 12 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '1'),
(6, 'MCB 16 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '1'),
(7, 'TPN 4 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '1'),
(8, 'TPN 6 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '1'),
(9, 'TPN 8 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '1'),
(10, 'TPN 12 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '1'),
(11, '2 pole', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '1'),
(12, '4 pole', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '1'),
(13, 'MCB 4 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '2'),
(14, 'MCB 6 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '2'),
(15, 'MCB 8 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '2'),
(16, 'MCB 10 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '2'),
(17, 'MCB 12 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '2'),
(18, 'MCB 16 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '2'),
(19, 'TPN 4 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '2'),
(20, 'TPN 6 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '2'),
(21, 'TPN 8 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '2'),
(22, 'TPN 12 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '2'),
(23, '2 pole', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '2'),
(24, '4 pole', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '2'),
(25, 'MCB 4 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '3'),
(26, 'MCB 6 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '3'),
(27, 'MCB 8 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '3'),
(28, 'MCB 10 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '3'),
(29, 'MCB 12 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '3'),
(30, 'MCB 16 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '3'),
(31, 'TPN 4 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '3'),
(32, 'TPN 6 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '3'),
(33, 'TPN 8 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '3'),
(34, 'TPN 12 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '3'),
(35, 'MCB 4 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '4'),
(36, 'MCB 6 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '4'),
(37, 'MCB 8 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '4'),
(38, 'MCB 10 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '4'),
(39, 'MCB 12 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '4'),
(40, 'MCB 16 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '4'),
(41, 'TPN 4 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '4'),
(42, 'TPN 6 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '4'),
(43, 'TPN 8 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '4'),
(44, 'TPN 12 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '4'),
(45, 'MCB 4 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '5'),
(46, 'MCB 6 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '5'),
(47, 'MCB 8 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '5'),
(48, 'MCB 10 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '5'),
(49, 'MCB 12 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '5'),
(50, 'MCB 16 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '5'),
(51, 'TPN 4 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '5'),
(52, 'TPN 6 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '5'),
(53, 'TPN 8 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '5'),
(54, 'TPN 12 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '5'),
(55, 'MCB 4 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '6'),
(56, 'MCB 6 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '6'),
(57, 'MCB 8 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '6'),
(58, 'MCB 10 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '6'),
(59, 'MCB 12 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '6'),
(60, 'MCB 16 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '6'),
(61, 'TPN 4 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '6'),
(62, 'TPN 6 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '6'),
(63, 'TPN 8 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '6'),
(64, 'TPN 12 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '6'),
(65, 'MCB 4 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '7'),
(66, 'MCB 6 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '7'),
(67, 'MCB 8 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '7'),
(68, 'MCB 12 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '7'),
(69, 'MCB 16 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '7'),
(70, 'MCB 4 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '8'),
(71, 'MCB 6 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '8'),
(72, 'MCB 8 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '8'),
(73, 'MCB 10 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '8'),
(74, 'MCB 12 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '8'),
(75, 'MCB 16 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '8'),
(76, 'TPN 4 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '8'),
(77, 'TPN 6 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '8'),
(78, 'TPN 8 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '8'),
(79, 'TPN 12 way', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '8'),
(80, 'AC Box 1', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '9'),
(81, 'AC Box 2', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '9'),
(82, 'AC Box 3', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '9'),
(83, 'AC Box 4', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '9'),
(84, 'Modular Zinc Box 3x3', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '10'),
(85, 'Modular Zinc Box 3x4', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '10'),
(86, 'Modular Zinc Box 3x5', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '10'),
(87, 'Modular Zinc Box 3x8', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '10'),
(88, 'Modular Zinc Box 3x9', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '10'),
(89, 'Modular Zinc Box 5x6', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '10'),
(90, 'Modular Zinc Box 6x8', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '10'),
(91, 'Modular Zinc Box 9x9', 'product1.jpg', 'product3.jpg', 'product.jpg', 'product2.jpg', '', '10');

-- --------------------------------------------------------

--
-- Table structure for table `misc`
--

CREATE TABLE IF NOT EXISTS `misc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `pic1` varchar(50) NOT NULL DEFAULT 'product3.jpg',
  `pic2` varchar(50) NOT NULL DEFAULT 'product2.jpg',
  `pic3` varchar(50) NOT NULL DEFAULT 'product1.jpg',
  `pic4` varchar(50) NOT NULL DEFAULT 'product.jpg',
  `size` varchar(30) NOT NULL,
  `typeid` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `misc`
--

INSERT INTO `misc` (`id`, `Name`, `pic1`, `pic2`, `pic3`, `pic4`, `size`, `typeid`) VALUES
(1, 'MCCB Box', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '20'),
(2, 'Rotary Single Box', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '21'),
(3, 'Rotary 3 Box', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '22'),
(4, 'Pole Box', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '23'),
(5, 'Meter Box', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '24'),
(6, 'Submercial Box Panel', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '25'),
(7, '15x250', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '26'),
(8, '30x250', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '26'),
(9, '30x250', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '27'),
(10, '50W', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '28'),
(11, '100W', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '28'),
(12, '200W', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '28'),
(13, '300W', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '28'),
(14, '400W', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '28'),
(15, '1', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '29'),
(16, '2', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '29'),
(17, '3', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '29'),
(25, '1', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '55'),
(26, '2', 'product3.jpg', 'product2.jpg', 'product1.jpg', 'product.jpg', '', '55');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `category` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `body` longtext NOT NULL,
  `author` varchar(200) NOT NULL,
  `imgname` varchar(400) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `category`, `date`, `body`, `author`, `imgname`) VALUES
(25, 'Ye nahi dekha to kya dekha !', 'ART,CULTURE & HERITAGE', 'AUGUST 1,2017', '<p>\r\nHistory well told is pleasing but history well perceived is exhilarating. Monuments are such testaments that speak volumes of bloodshed and sacrifices, rise and downfall of empires, advancement in generation and culture. They are the epitomes of modes of thoughts involved in the ancient era. Monuments in Delhi are one of those epic and unique history bearers that fascinate its sightseer unveiling humongous amounts of glory hidden within. Here is the list of megaliths for you to travel around.\r\n</p>\r\n<br><br>\r\n<h2 class="section-heading">India Gate</h2>\r\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/india2.jpg" alt="">\r\n                    </div>\r\n                    \r\n                    <span class="caption text-muted ">India Gate</span>\r\n\r\n<p>\r\nIndia Gate, the pride and embodiment of India, is built as a tribute to the martyrs to reminisce their valour and sacrifice in serving their country during the First World War. It is also called as "All India War Memorial" located astride Rajpath and its view is as that of an arch standing erect in all its glory. All along its stature, the gate bears the beautifully carved names of 82,000 soldiers who sacrificed their lives and the place whispers the aura of their gallantry. The tricolours of the Indian flag under the velvety sky illuminate the India Gate every evening and the sight alone makes it adorn the top position in the list of tourist sites in Delhi.\r\n</p>\r\n<br>\r\n<h2 class="section-heading">Red Fort</h2>\r\n                    <div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/red1.jpg" alt="">\r\n                    </div>\r\n                    \r\n                    <span class="caption text-muted ">Red Fort</span>\r\n<p>\r\nRed Fort is well known for its massive enclosing walls of red sandstone. Its architecture bellows the supremacy and royalty of Indo-Islamic and Mughal epoch. It nearly served for about 200 years as a main residence for the emperor of the Mughal dynasty and as the ceremonial and political centre of the Mughal state. The enormous building reflects a fusion of Timurid and Persian traditions. The Red Fort is the largest monument in Delhi and its importance is such that the Prime Minister of India hoists the tricoloured flag at the foremost entry of the fort. A sound and light show describing Mughal history is a tourist attraction in twilight and attracts thousands of individuals every year with its innovative architectural style.\r\n</p>\r\n<br>\r\n<h2 class="section-heading">Qutub Minar</h2>\r\n  <div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/qutub.jpg" alt="">\r\n                    </div>\r\n                    \r\n                    <span class="caption text-muted ">Qutub Minar</span>\r\n<p>\r\nAdorning the top position as the world''s highest minaret, Qutub Minar throngs with tourists and visitors every day. This slender tower of 240ft height, built by Qutub al-Din Aibak, the founder of the Delhi Sultanate, is a UNESCO World Heritage Site. Behold the magnificence of one of the earliest monuments whose flanges are dark Redstone throughout the tallness and are engraved with versus from Quran in Arabic and Nagari. The Mosque is located at the foot of Qutub Minar that is a part of Qutub Complex, comprising of an iron pillar that is more than 2000 years old but still has not rusted. Interesting, is it not? \r\n</P>\r\n<br>\r\n<br><h2 class="section-heading">Jantar Mantar</h2>\r\n  <div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/jantar.jpg" alt="">\r\n                    </div>\r\n                    \r\n                    <span class="caption text-muted ">jantar.jpg</span>\r\n<p>\r\nAt this megalith situated in Delhi, you will step into the world of a fine arts used as  calculation instruments in early era, dating nearly 200 years back. It is one of the five observatories constructed by Maharajah Sawaii Jai Singh II of Jaipur to serve the purpose of astronomical measurements. You will be baffled to know that though these monuments have captivated the attention of architects, artists and historians worldwide for its uniqueness, Jantar Mantar is still unknown to the large part of people. Its unique edifices that are far from comprehension to the neutral minds are a sight to monitor. \r\nAs the conclusion goes, be curious for the old stories of these places that offer a sanctuary for you to lose yourselves in their clutches.\r\n</P>\r\n', 'Geeta Sowmya', 'india2.jpg'),
(28, 'Indian Heritage in a Gallery of Pictures', 'ART,CULTURE & HERITAGE', 'JUNE 29,2017', '<p>\n"In every work of art the artist himself is present," were the insightful words quoted by Christian Morgenstern, a German author and a poet from Munich. Art is not what you see but what you make others see. So, what happens when there is a gallery of such mesmerizing art forms? It can be the very root to bring out your hidden creativity & get the inspiration you have been searching all this while.\n</P>\n<br><br>\n<p>\n<b>National Gallery of Modern Art </b>is one such place that retains both modern and contemporary Indian art. It is near India Gate, in the heart of Delhi .With thousands of modern paintings & sculptures by famous Indian as well as International artists, this is a place which makes your eyes pop out. \n</p>\n<br><br>\n<p>\nBut you can''t photograph same obviously, sob sob. Anyways such amazing artwork needs to be experienced in person to understand its worth. The National gallery of modern art exhibits some paintings which date back to 18th century. Whattttt ! So a great chance to see the transition of art over all those years.\n</p>\n<br><br>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/art1.jpg" alt="">\n                    </div>\n <span class="caption text-muted"> </span>\n\n<p>\nWhen I gazed at the paintings, it felt as if one look would never be enough to take in all the beauty & deep sense of shared expression evoked by them. I felt like, this place is highly underrated & have so much to offer to the youth. The artworks silently discuss varied topics without uttering a single word. Some paintings involved engineering, some logic, and some involved imagination of the minds but all sure to offer your heart the peace you sought for long .With paintings of various infamous artists like Thomas Daniell, Antonio Trindade, Amrita Sher-Gil, B.C. Sanyal and much more, this place is a treasure cove\n</p>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/art2.jpg" alt="">\n                    </div>\n <span class="caption text-muted"> </span>\n<br><br>\n<p>\nIt took me a whole day to fully explore this exhibit & believe me I am planning one more trip. One can buy art books and prints of paintings of their favourite artists as well, something to cherish by. So peek into India''s rich and diverse cultural heritage & take a break from the normal loud & haphazard life. Relax & let your inner self do the talking, no words required. \n</p>\n', 'Geeta Sowmya', 'art1.jpg'),
(29, 'I am not Sufi, but I follow the Sufi', 'ART,CULTURE & HERITAGE', 'AUGUST 1,2017', '<p>\n"What kind of music do you like"\n"Oh, I have all genre in my playlist - rock, pop, rap, blues & of course sufi"\n"Great, what kinda sufi you listen to"\n"Oh I have so many songs by Ustaad Rahat Fateh Ali Khan"\n''Facepalm''\n</p>\n<br><br>\n<p>\nWell sufi for most of our generation starts & ends with him. With the wish to show excellence in all fields & be a know it all we end up with bits & pieces of everything. Have you ever visited a pub with huge boards saying sufi night. Starts with Ustaad''s songs and ends up with old hindi songs or any other requests that comes from the high crowd. I had an experience once and trust me sitting at home with your own playlist was a much better option.\n</p>\n<br><br>\n<p>\nI''ll be honest, listening to ''Kun Faya Kun'' every single time is overwhelming. There is a soul attached to the song. So being inspired with movies like Rockstar & Delhi 6, I decided to visit Nizamuddin dargah on a Thursday evening to experience that vibrant music vibe. And my god it was electric, I literally had goose bumps at one point of time.\n</p>\n<br> <div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/culture1.jpg" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted">Culture</span>\n<p>\nThe dargah is named after Sheik Hazrat Nizamuddin Auliya (1236-1325). His grave and a hospice are situated here. The narrow streets leading to dargah sets the sufi mood. With the scent of rose petals, vibrant chaddars, grilled kebabs, lit incense sticks, the whole atmosphere is divine. I found people from all walks of life there. No hindus,  muslims or Christians, just God''s children who came to become one with the almighty.\n</p>\n<br><br>\n<p>\nAnd then started the music. I have no words to explain my emotions, just that I never felt so close to my inner self & God ever. \n</p>\n<br> <div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/culture2.jpg" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted">Culture</span><br>\n<p>\n\nThe clear & meaningful lyrics sung by vocalists sitting at the front playing the harmoniums and the percussionists & chorus singers at the back , the whole scenario was no less than a dream. The singing improvisation, the chanting, the high-low notes, the lights, the claps, the prayers, raised  hands asking for blessings somehow makes you wonder there is not much needed to stay happy, you just need to find your soul & it''s true journey. Just be true to self & you will feel the inner power.\n\n</p>\n<br><br>\n<p>\nThe qawwali timings are 7:00 pm - 8:15 pm and 8:45 pm to 10:30 pm every Thursday & Sunday. One more advice is to go in full clothes. It''s a religious place & we should respect it accordingly. \n</p>\n<br><br>\n<p>\nSo take a chance to understand your true self, forget the past & believe in your future. Stop being so hard on self all the time and go on this soulful journey to come out enlightened. \n</p>\n', 'Chetna Dhull', 'culture1.jpg'),
(30, 'To infinity & beyond!', 'ART,CULTURE & HERITAGE', 'AUGUST 2,2017', '<p>\nHave you ever sat doing absolutely nothing apart from gazing the vast & unending sky, making shapes out of stars? Of course everyone gets the spoon one cause it''s prominent enough to be spotted and it highlights the pole star. But what about others?\n</p>\n <div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/culture3.jpg" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted"> </span>\n<br>\n<p>\nBy the way I was watching Martian sometime back & the vast mysteries of space interests me. If the graphics look so mind boggling imagine how the actual view would be. What if I were an astronomer I wondered. But being a kid puzzled about his future and trying to fit in the horde I ended up doing mechanical engineering, which I remember nothing of. Lol.\n</p>\n<br><br>\n<p>\nSo to satisfy my hunger for Astronomy I decided to visit Nehru Planetarium in Delhi one day and boy it was an Out of the this World experience, cause it covers space ''pun intended''. So let me share some details about it. \n</p>\n<br><br>\n<p>\nEnough gyaan, here comes the fun part. So there are four shows where you can choose English or hindi as per your liking at just 50 rupees. Yeah you heard it right, all 3D epic sky watching at just 50.Try it out on month ends, if you know what I mean. \n</p>\n<br><br>\n<p>\nThe hallway houses the space museum which reminded me of the thermocole sheets I used up making solar projects, all of which ended up in small pieces scattered throughout the classroom once the grading was done. \n</p>\n<br><br>\n<p>\nSo the show started at 11.30 am  in the dome shaped sky theatre & the narrator took us through the journey of solar system on his Definiti optical star projector "Megastar" that can show 2 million stars.\n</p>\n <div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/culture4.jpg" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted"> </span><br>\n<p>\nThe hour long show taught me two things. First how big & vast our galaxy is, it really makes you wonder. Who knows there might be a real PK searching for his remote somewhere. Second never take a lousy friend along who will fall asleep on the extra cushy & comfy chairs with the soft background music and end up with his own musical snores.\n</p>\n<br><br>\n<p>\nOther major attractions include the Soyuz T-10 which carried India''s first cosmonaut Rakesh Sharma to space, along with his space suit and mission journal. Fascinating right. Science models, astronauts dresses, astrology models, telescope, concept of day and night and what not. It was an amazing experience.\n</p>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/culture5.jpg" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted"> </span><br><br>\n<p>\nI still sometime sit & think back that what if our school would have planned a trip there I could have been a real life Mark Watney but of course not wanting to be left alone on Mars. Just kidding, too lazy to study but oh it makes me wonder.\n</p>', 'Chetna Dhull', 'culture3.jpg'),
(31, 'Say you''ll never let me go!!', 'ENTERTAINMENT', 'AUGUST 3,2017', '<p>\nWake up EDM fans & smell the smoke, it&#39s none other than the grammy winners "The Chainsmokers". Excited? Well hold your horses till September & let them go loose then. They are performing at Mahalaxmi Race Course, Mumbai on 7th September & at India Exposition Mart, Greater Noida on 8th September. I know you have been waiting for "Something just like this". So "Don&#39t let me down" & grab your gang for the ultimate experience.\n</P>\n<br><br>\n<p>\nChainsmokers, will I have to sell my kidney to attend the concert. No bro! The tickets start at just 2,500/- & 1,999/- respectively for Mumbai & Delhi. Don''t rub your eyes, it''s what you read. Oh the cute tears of joy!\n</p>\n<br><br>\n<p>\nThey will be accompanied by other renowned acts such as Slushii, Getter, Rezz, Sam Feldt and Lost Kings. Don''t worry you don''t slip out of the cool category if you don''t know them all. But just check them out, you might be missing on some really good ones actually.\n</p>\n<br><br>\n<p>\nAnd like the Coldplay concert you might have to wait for them till the end, but you know the good things are worth the wait. And please try & ignore some of our wanna be Indian actors trying to pop & rock, yeah you might get a little dose of that. But nonetheless, you get chainsmokers, yeah ! \n\n\n</p>\n<br><br>\n<p>\nThe rocking duo of Andrew Taggart and Alex Pall''s music will make your hearts skip a beat and with the bass your problems will also drop. So leave all your worries behind and get on this soul satisfying journey to experience nirvana. Your ''me'' time for few hours, away from the daily hustle bustle.\n</p>\n<br><br>\n<p>\n"If we go down, then we go down together,let''s show them we are better". Get lost in the magic with few friends & few strangers. After all we live for these small moments. So make it your ecstasy & get high on music. Yay! \n</p>\n<br><br>\n<p>\nCheck out for bookings at below link<a href=''https://in.bookmyshow.com/concerts/road-to-ultra-india  ''> \nhttps://in.bookmyshow.com/concerts/road-to-ultra-india  \n</a>\n</p>\n<br><br>', 'Chetna Dhull', 'chain.jpg'),
(32, 'iSKATE, do you skate!', 'TRAVEL & ADVENTURE', 'AUGUST 03,2017', '<p>\nSo I and some friends of mine were roaming around one day unplanned, me in pyjamas, yeah I like being clumsy & hate dressing up. So we ended up at Ambience, the vella roamer''s paradise if you are in Gurgaon.\n</P>\n<br>\n<p>\n"Let''s go to Bluo''s" one of us jumped & rest were like not again. Then we heard a group passing by with one mocking others about not knowing how to skate. Taking a hint we finally ended up for ice skating at iSKATE.\n</p>\n <div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/adven1.jpg" alt="">\n                    </div>\n                    </a>\n                    <span class="caption text-muted"> </span>\n<br><br>\n<p>\nBought our tickets & booked 4.00-5.15 pm slot. One of us was comfortable as she did it before, two had never done skating. I ,on the other hand, used to skate as a child, so was totally confused & excited at the same time. Our slot started, we went in. The amount of ice & the mesmerizing blue lightings all around somehow made us forget that we were in a hot city with an outside temperature of 42 degrees.\n</p>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/adven2.jpg" alt="">\n                    </div>\n                    </a>\n                    <span class="caption text-muted"> Partner</span>\n<p>\nWe lined up, got our skates which looked totally different than my roller ones so took my friend''s help to put them on. People started getting on the ice covered floor and in an instant there was a train of people moving along the side railings. The expert ones started showing off their moves with a grin of superiority on their face. But I envied the children a little who had a personal penguin shaped support to skate along ,sob. \n</p>\n<br><br>\n<p>\nAnd then started the chain reaction of people falling, one here other there. Some slipping, some trying to support others and a few being victim of the falling ones in search of support. Tired of walking in the chain and after getting a little confident of the slipperiness, my childhood instincts kicked in and I decided to let go off the railing. Started with small movements, trying my best not to fall and yeah I completed my first round without any help. Cautious of not to have that same grin I went to my friends, caught hold of them & started skating in the middle, one slide at a time. And after two rounds out of nowhere we lost our balance & bam, our bums first kiss with the icy floor. It was chilling. I thanked I had pyjamas on as it was easier to get up rather than in a jeans.\n</p>\n<br><br>\n<p>\nAll the guides were also helping people skate, getting them up & teaching the knitty grittys of skating. And finally I caught an unattended alone penguin, waiting to be grabbed. With a few minutes left we went for the last round, two of us hung on the penguin, with eyes wide open to take it all in.\nLater people lined up at the food & beverage outlet and the souvenir shop where one can choose from skates, international branded merchandise & iSKATE souvenirs. \n\n</p>\n<br><br>\n<p>\nNot wanting it to end or at least get two hours in the session, we left the place discussing our slides & slips, the icy cool floor & the smiles people had after this beautiful experience.\n</p>\n\n', 'Chetna Dhull', 'adven1.jpg'),
(33, 'Break Taboos, Raise Hope !', 'LIFESTYLE', 'AUGUST 4,2017', '<p>The western culture entices our youth a lot but what does it offer which our culture lacks. We don''t miss anything but excess propagation of some theories in the society drag us behind, our self made taboos. Promoting our culture is one thing but twisting it to suit our self defined righteousness is not ethical. Let''s have a look at our self proclaimed taboos.</p>\n<br><br>\n<b><h3>1. Embracing ones sexuality</h3></b>\n<p>Someone''s different sexual preference is not unnatural or a disease. It''s how God made them and we should respect it like we respect all other god''s gifts.</p>\n <div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/lifestyle1.png" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted">Sexuality</span>\n<b><h3>2. Openly discussing sex</h3></b>\n<p>You are considered shameless if you discuss sex publicly but it''s a part of our lives. Not discussing it, especially with growing kids is what compels them to seek information from other sources. This kind of half-hearted information might ruin their life forever.</p>\n<br>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/lifestyle2.png" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted">Open Discussion</span>\n<b>3. Menstruation</b>\n<p>A girl undergoing menstruation is unclean, can''t visit a temple or take part in daily chores in certain parts of our society. It''s natural, not an option. You came into this world because of this natural cycle. If anything, take better cares of females in your life while they go through the pain cycle.</p>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/lifestyle3.png" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted">Menstruation</span><br>\n<b><h3>4. Choosing your partner</h3></b>\n<p>"When you go and purchase a chair, you try hundreds and choose the most comfortable one then why shy away when you are choosing a life partner", quoted SRK in Dear Zindagi.I don''t think it needs further explanation.</p>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/lifestyle4.png" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted">Partner</span><br>\n<b><h3>5. Opting not to marry</h3></b>\n<p>"Beta shaadi karlo, hamari zimedaari puri hogi". Sorry getting married just because our parents feel it''s their duty to settle us down is stupid. You should get married if you find someone worth spending the rest of your life not because you are coming of age.And if you don''t find one, living all by yourself is not a bad option.</p>\n<br><br>\n<b><h3>6. Inter-caste marriage</h3></b>\n<p>People shun it but I find it interesting. Getting to experience new customs & traditions is truly making a new beginning for you new life. After all we are all children to one religion, LOVE. These man-made rules should not be a reason to stop two people, madly in love, from being together.</p><br><br>\n<b><h3>7. Pre-marital sex</h3></b>\n<p>Having sex with someone before marriage doesn''t make you any less dignified than a virgin. Marriage is no green signal to have access to guilt free sex. If two mature individuals decide to go ahead with it, then it''s not immoral.</p><br><br>\n<b><h3>8. Having a free opinion</h3></b>\n<p>Try to have a different opinion from the horde and you''ll be suppressed. Free minded people are seen as a threat to the society as they dare to make changes .</p><br><br>\n<p>But you just don''t get scared."Fight for change? Thirst for difference? Start talking what men avoid talking about."  - Toba Beta</p>', 'Chetna Dhull', 'lifestyle.jpg'),
(35, 'Be the best version of yourself !', 'LIFESTYLE', 'July 7,2017', '<p>We all have a friend we haven''t spoken to in years but still know what''s going on in his life, that''s the power of social media. It''s an extension of your real life on your virtual space for the world to see. You can share your happiness, your blues, your swinging moods and of course pub check-ins when you are partying.</p><br>\n<p>This space is your splitting image, the one which you want to showcase to the world. There is no discrimination here. Everyone is free to express themselves irrespective of caste, color or creed. It knows no boundaries & no sense of judgement. The only thing they know is your name and how you express yourself.</p><br>\n<p>We see different people react differently to things. Few reactions shock us and few challenge our own logics and make us think. This is the result of diversity that is provided to us by the social media. You can relate to a person sitting far away or disagree with one you have known for long.</p><br>\n<p>With people of different perspective coming together expect a force so strong capable of changing things. People fight for truth, justice, equality & respect for all. They use it as a platform to support social causes, create awareness as well as help the ones in need. But sometimes things go haywire and same platform is used for things totally opposite. Cases of cyber-bullying, privacy invasion or supporting an anti-social cause, a lot of things which are disturbing & needs a check.</p><br>\n<p>People invoke the right to Freedom of speech but do you really think imposing your opinion on others is actually freedom. It''s not. You are free to express but it is also your duty to respect what others have to say. Sometimes people demand freedom of speech as a compensation for the freedom of thought which they seldom use.</p><br>\n<p>All I am saying is that it''s easy to get offended but all you have is your perspective while the truth is that there are a lot of things we still have to learn. Life is a journey and everyone you meet knows something you don''t. So break out of your cocoon, spread your wings & embrace new things & newer perspectives. And remember that one of the most sincere forms of respect is actually listening what another has to say. </p><br>\n', 'Chetna Dhull', 'lifestyle6.png'),
(36, 'Not all treasure is silver & gold mate !', 'LIFESTYLE', 'AUGUST 04,2017', '<p>Much is hyped about being a 90''s kid and I know the new generation is tired of hearing about it but the 90''s gen is always up for a nostalgic tour. So tag along & refresh your memories.</p><br><br>\n<h2 class="section-heading">The soul of our childhood "Cartoon Network"</h2>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/kid1.jpg" alt="">\n                    </div>\n                   \n                    <span class="caption text-muted">Cartoon Network</span>\n<br>\n<h2 class="section-heading">The brilliantly musical & lyrical - "Pop songs"</h2>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/kid2.jpg" alt="">\n                    </div>\n                   \n                    <span class="caption text-muted">Pop songs</span><br>\n<h2 class="section-heading">Ride for kings & queens- "Our scooty"</h2>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/kid3.jpg" alt="">\n                    </div>\n                   \n                    <span class="caption text-muted">Our Scooty</span>\n<h2 class="section-heading">Our summer vacations project "Video games"</h2>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/kid4.jpg" alt="">\n                    </div>\n                   \n                    <span class="caption text-muted">Video Games</span><br>\n<h2 class="section-heading">Our little wonder pack - "New mobiles"</h2>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/kid5.jpg" alt="">\n                    </div>\n                   \n                    <span class="caption text-muted">New Mobiles</span>\n<h2 class="section-heading">An escape from studies & reason for gang wars- "Street games"</h2>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/kid6.jpg" alt="">\n                    </div>\n                   \n                    <span class="caption text-muted">Street Games</span>\n<h2 class="section-heading">An extra tinch of excitement in our lives-"Mix tapes"</h2>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/kid7.jpg" alt="">\n                    </div>\n                   \n                    <span class="caption text-muted">Mix Tapes</span>\n<h2 class="section-heading">Our source of coolness amongst friends-" Walkmans"</h2>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/kid8.jpg" alt="">\n                    </div>\n                   \n                    <span class="caption text-muted">Walkmans</span>\n\n<h2 class="section-heading">A quota of creativeness -"Paper games"</h2>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/kid9.jpg" alt="">\n                    </div>\n                   \n                    <span class="caption text-muted">Paper Games</span>\n<h2 class="section-heading">A check for our patience -"Dial up connections"</h2>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/kid10.jpg" alt="">\n                    </div>\n                   \n                    <span class="caption text-muted">Dial Up</span>\n<p>And the list goes on. But ever wondered why we miss those days so badly though we have lot more today. I feel with the quantity of things adding on, the quality is lost. Kids no more feel the importance of small things as all is easily available. But to witness a color television after years of black & white viewing, to get a scooty after years of bicycling, to rent out cars on special trips, receiving a text message from a friend, to rent new video games from stores, waiting for your favourite shows on Doordarshan & our magical Sundays with saying "Sorry Shaktiman''s as soon as he uttered "Thehro, all seems lot more magical with time passing so swiftly.</p><br>\n<p>The nostalgia grows stronger with each passing day as our approach to daily life has become a lot more material. </p><br>\n<p>We siblings had teary eyes when our old video game set up worked recently after all those years. I never felt same with a new X-box or a mobile.</p><br>\n<p>Guess we all are just vintage souls refusing to move on & connect with this modernised world which can never replace what we left behind.</p>', 'Chetna Dhull', 'kid6.jpg'),
(37, 'Styles All Men Should Swear By!!!', 'LIFESTYLE', 'AUGUST 04,2017', '<i>You take out a shirt and a pair of pants and lay it on your bed. It looks perfectly matched but when you actually wear it''s¦nah!</i><br><br><br><br>\n<p>It can be confusing to pick the right shirt with the right pant, and if everything turns out perfectly, then there''s a good chance that the shoes will be a problem. We thought of something that could help you. Here are men whose fashion sense and style you can ALWAYS trust! Look up their pictures to dress casually or for an event or even when you''re picking your night suit.</p>\n<br><br>\n <div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/style1.jpg" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted">Milind Soman</span><br>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/style2.jpg" alt="">\n                    </div>\n                    \n                  \n                    <span class="caption text-muted">Scott Disick</span><br>\n<p>\nLike a good bottle of wine, he and his sense of style has become better with each passing year. His style is easy-breezy and casual. Perfect for an everyday look. \n</p>\n<br><br>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/style3.jpg" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted">Ryan Gosling</span><br>\n<p>\nWell that''s a well dressed family right there! Those of you don''t know, Scott Disick is a public personality, businessman and Kourtney Kardashian''s baby daddy. One good thing he does is use his money to dress perfectly. Head over to his Instagram for more tips (@letthelordbewithyou).\n</p>\n<br><br>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/style4.jpg" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted">Ryan Gosling </span><br>\n<br>\n<p>\nIf you can gather even 50 percent of his style quotient, you''ll make some hearts skip a beat or two. Pro tip: tan shoes are in fashion and bags can be very fashionable. \n</p>\n<br><br>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/style5.jpg" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted">Arjun Rampal</span><br>\n\n</p>\nHe NEVER fails to nail that formal tuxedo look, but just about everything else he does is amazing too. \n</p>', 'Artika Singh', 'style5.jpg'),
(38, 'The Ultimate First Date Ideas to Sweep Her Off Her Feet!', 'LIFESTYLE', 'AUGUST 4,2017', '<i>Running out of ideas and money to devise a perfect date? Donâ€™t worry, just read on.</i><br>\n<h2 class="section-heading">Go Bowling!!</h2>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/lifestyle5.png" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted">Go Bowling</span><br>\n<p>It''s a more refreshing date idea and not too many people in Delhi go bowling on a date. Itâ€™ll give you a chance to stay casual and comfortable and get to know your partner better and of course you have a shot at impressing her with your bowling skills!!<br>Where:<br>\n1. Yes Minister Pub and Bowling- Essex Farms, 4, Hauz Khas, New Delhi.<br>\n2. Smaaash- Cyber Hub, DLF Cyber City, Gurgaon.<br>\n3. Glued Entertainment- Dynamic House, Next to HP Petrol Pump, Sector 41, Noida.</p><br><br>\n<h2 class="section-heading">Long Walk</h2>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/lifestyle6.png" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted">Lodhi Gardens</span><br>\n<p>What gets better than a long walk and a good conversation? The date later can even extend to lunch or dinner as all the walking is sure to make you hungry! Just make sure you check the weather app before you plan this one though.<br>\nWhere:<br>\n1. Lodhi Gardens<br>\n2. Humayun''s Tomb<br>\n3. Lodhi Art District<br>\n4. Hauz Khas Village Fort<br>\n5. Kamla Nehru Ridge<br>\n6. Purana Qila</p><br><br>\n<h2 class="section-heading">Hit the Karaoke</h2>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/lifestyle7.png" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted">Karaoke</span><br>\n<p>Let yourself loose with a night of singing and dancing. Karaoke is always a good idea!!<br>Where:<br>\n1. My Bar Grill- Wednesdays 8 pm onwards<br>\n 28, 3rd Floor, Hauz Khas Village.<br>\n2. Fork You- Fridays 9pm onwards<br>\n 30, 1st Floor, Hauz Khas Village.<br>\n3. Raasta- Tuesday Nights 8 pm onwards<br>\n 30A, First Floor, Hauz Khas.</p><br><br>\n<h2 class="section-heading">A Little Bit of Theatre</h2>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/lifestyle8.png" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted">Theatre</span><br>\n<p>Catch a live gig or a play that you both can enjoy together!<br>Where:\n1. Akshara Theatre<br>\n2. Kamani Auditorium<br>\n3. Indian Habitat Centre</p><br>\n<p>Head over to www.planofaction.in for further details on events and plays and for tickets.</p><br><br>\n<h2 class="section-heading">Stay In!!</h2>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/lifestyle9.png" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted">Indoors</span><br>\n<p>Staying in the new cool thing. Spend your first date away from the hustle of the rest of the world. You donâ€™t even need to dress up! Just put on your pajamas (or not!), grab a movie, some pizza and you''re done!</p>', 'Artika Singh', 'lifestyle9.png'),
(39, 'One for the Rajma Chawal Lovers!', 'FOOD & BEVERAGES', 'AUGUST 05,2017', '<p>\nRajma Chawal is the dish no Indian can say no to. It has always been everyone''s favourite. There are some who can eat Rajma Chawal in all three meals. So this one''s dedicated to all you bhukkads, screw lean gotta love the bean. \n</p>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/rajmachawal.jpg" alt="">\n                    </div>\n                    \n<br><br>\n<p>\n\nHere are the things you can relate to if Rajma Chawal is the love of your life:\n</p>\n<br><br>\n<p>\n1. When in the worst mood ever, life sucks & it gets difficult to take a single step forward. Dragging yourself you ask you mom ''Khane mein kya hai?'' & your ears get the golden words ''Rajma chawal''. Who''s up & kicking, oh that''s you.\n</p>\n<br>\n<p>\n2. Your mother knows the way to your heart is with garam garma Rajma Chawal & expect the obvious bombardment of questions ''Koi pata rakhi/rakha hai kya, shaadi krle''\n</p>\n<br>\n<p>\n3. There are days when you went to a fancy restaurant, but all your heart really wanted is Rajma Chawal.What a drag.\n</p>\n<br>\n<p>\n4. That disappointing moment when you take a huge serving of Rajma Chawal in someone else''s home . ''Will it be enough for rest, screw it, let just no one see my plate, gulp gulp''.\n</p>\n<br>\n<p>\n5. When your mother is trying to convince you for a rishta & hit you with her best stroke i.e. rajma chawal.\n</p><br>\n<p>\n6. When you know there is Rajma Chawal for dinner at home &you skip meals so that you can pounce on the plate like a hungry tiger.\n</p>\n<br>\n<p>\n7. When your parents are screaming at you about something, but all you can think is ''tomorrow&#39s a good day for rajma chawal'' \n</p>\n<br>\n<p>\n8. You know your stomach''s gonna burst after the amount you served. ''Don&#39t judge me people, this could be my last meal''. Cut the drama, just eat.\n</p>\n<br>\n<p>\n9. How you visit all shaadis & curse that there is only ''chole'' like why won''t you make rajma bro!\n</p>\n<br>\n<p>\n10. Your ultimate goal in life is to marry the person who looks at you the way you look at Rajma Chawal.''I was searching you throughout my life''.\n</p>\n', 'Arushi Arora', 'rajma.png'),
(41, 'Top 5 Healthiest Foods in the World!', 'FOOD & BEVERAGES', 'JULY 25,2017', '<p style="text-align="center""><i>Now get fit, without even having to give up eating!!!</i>\r\n</p>\r\n<br>\r\n<p>\r\nWell one thing is eating &amp one is eating smart. Which one do you choose? Here are the food items that you should definitely include in your everyday meals!\r\n</p>\r\n<br>\r\n<h2 class="section-heading">Lemons</h2>\r\n<p>\r\n<br>\r\nHow to consume them?\r\n<br>\r\nLemons can add an amazing flavor to a couple of things, rice for instance can be cooked very well with lemon. Alternatively, you can add it to your green tea or have it \r\nwith a mix of hot water and honey.\r\n<br>\r\nWhy Lemon?\r\n<br>\r\nOne lemon a day fulfills a person&#39;s 100 percent vitamin C needs. It has been speculated that they can prevent cancer by slowing the growth of certain cells. They&#39;re also widely \r\nknown for their anti-oxidant properties.\r\n</p>\r\n<br>\r\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/hd5.jpg" alt="">\r\n                    </div>\r\n                    \r\n                    <span class="caption text-muted">Lemons</span>\r\n<br>\r\n<h2 class="section-heading">Broccoli</h2>\r\n<p>\r\n<br>\r\nHow to consume it?</p>\r\n<br>\r\n<p>\r\nIt definitely isn''t a favorite food item, especially among children. Some interesting ways to include it in your meals are to cook it with rice, mixed vegetables or even as a pizza topping!\r\n<br>\r\n\r\nWhy Broccoli?\r\n<br>\r\nIt is rich in Vitamin K, B1, B2, B6, B9, Amino Acid, Sodium, Potassium and is known to have more Vitamin E than olive oil. Basically itÃ¢â‚¬â„¢s really healthy!\r\n</p>\r\n<br>\r\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/hd1.jpg" alt="">\r\n                    </div>\r\n                    \r\n                    <span class="caption text-muted">Broccoli</span>\r\n<br>\r\n<h2 class="section-heading">Dark Chocolate</h2>\r\n<p><br>\r\nHow to consume it?\r\n<br>\r\nWell, unwrap the bar and eat it! But be careful not to eat too much at a time. Have a cube with a glass of milk. Use it to sweeten or flavor the milk.\r\n<br?\r\n\r\nWhy Dark Chocolate?\r\n<br>\r\nIt is a lesser known fact that dark chocolate is good for your heart. It is rich in antioxidants and flavonoids. It also helps in keeping a check on the blood pressure & stubborn cholesterol.\r\n\r\n\r\n</p><br>\r\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/hd4.jpg" alt="">\r\n                    </div>\r\n                    \r\n                    <span class="caption text-muted">Dark Chocolate</span>\r\n<br>\r\n<h2 class="section-heading">Potato (Surprise! Surprise!)\r\n\r\n</h2>\r\n<p>\r\n<br>\r\nHow to consume them?\r\n<br>\r\nWell, obviously not as chips from the packet. In fact potatoes in any packaged form will not bring you any benefits. Boiled potatoes in salads, or as hash browns or even as fries are the way to go!\r\nBaked potatoes taste good too!\r\n<br>\r\n\r\nWhy Potatoes? \r\n<br>\r\nPotatoes contain cell building folates, fight cancerous cells and help in making the immune system strong! \r\nThey also contain good carbs!\r\n<br>\r\n</p>\r\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/hd2.jpg" alt="">\r\n                    </div>\r\n                    \r\n                    <span class="caption text-muted">Potatoes</span>\r\n<h2 class="section-heading">Walnuts</h2>\r\n<p>\r\nHow to consume them?\r\n<br>\r\nEat it as it is. Garnish your oats with walnuts, bake them with cakes and bread or soak them in milk!\r\n<br>\r\n\r\nWhy walnuts?\r\n<br>\r\nThey contain Omega-3 Fatty Acids which are known to assist in maintaining cholesterol levels.\r\nThey may even prevent us from damage against the sun!\r\n<br>\r\n\r\n</p>\r\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/hd6.jpg" alt="">\r\n                    </div>\r\n                    \r\n                    <span class="caption text-muted">Walnuts</span>\r\n<br>\r\n', 'Artika Singh', 'hd3.jpg'),
(42, 'Eggy Peggy Recipes', 'FOOD & BEVERAGES', 'August 2,2017', '<p>This is for all foodies out there who would love to cook their own delicacies from around the world using just eggs. Here are a few quick and easy recipes of the food from around the globe.</p>\n\n<h2 class="section-heading">\n\n1.	French Toast\n\n</h2>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/71.jpg" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted">French Toast</span>\n<br>\n<p>\n\n<br>\nINGREDIENTS:<br>\n1	1 egg<br>\n2	1 teaspoon Vanilla extract (you can easily get it in the market)<br>\n3       1/4 cup milk<br>\n4	Butter (as per your requirement)<br>\n5	4 slices bread<br>\n6	salt to taste\n<br>\nMETHOD:<br>\n1	Beat the egg, vanilla extract and the salt (as per requirement) in a bowl and stir it in milk.<br>\n2	Dip the bread in the mixture making sure both sides are coated evenly.<br>\n3	Melt some butter on a pan and cook the slices on the pan.\n<br>\nTip: You can use pepper or oregano as per your taste.\n<br>\n</p>\n<h2 class="section-heading">\n2.	Spanish Omelet\n</h2>\n\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/68.jpg" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted">Spanish Omelet</span>\n<br>\n<p>\nINGREDIENTS:<br>\n1	3 small potatoes<br>\n2	4 eggs<br>\n3	1 onion<br>\n4	Salt<br>\n5	Olive oil<br>\n\nMETHOD:<br>\n1	Cut the potatoes and onions into small cubes.<br>\n2	Fry the potatoes until they get crunchy in olive oil and soak them with a paper towel.<br>\n3	Beat the eggs with salt.<br>\n4	Fry the onions in a pan until they are light brown.<br>\n5	Add the potatoes and the eggs.<br>\n6	Flip the omelet and let it cook for a while on low heat.<br>\n\nTip: You can use meat, cheese or veggies as per your taste.<br>\n</p>\n<h2 class="section-heading">\n3.	Russian Egg Salad\n</h2>\n\n\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/67.jpg" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted">Russian Egg Salad</span>\n\n<p>\n\nINGREDIENTS:<br>\n1	2 hard-boiled eggs<br>\n2	Cheese<br>\n3	Mayonnaise<br>\n4	Some garlic<br>\n\n METHOD:<br>\n1	Grate some garlic (as per your taste) in a bowl.<br>\n2	Grate cheese and the hard boiled eggs into the bowl.<br>\n3	Add mayonnaise and mix.<br>\n4	Serve it with fresh cut vegetables.<br>\n\nTip: Use the mix on sandwiches. It would taste great!<br> \n</p>\n<h2 class="section-heading">\n4.	Japanese Cheese Korokke\n\n</h2>\n\n\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/70.jpg" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted">Japanese Cheese Korokke</span>\n<br>\n<p>INGREDIENTS:<br>\n1	2 potatoes<br>\n2	1 onion<br>\n3	1 teaspoon milk powder<br>\n4	Butter<br>\n5	Mozzarella cheese (preffered) or any cheese of your likes<br>\n6	2 eggs<br>\n7	4 teaspoon flour<br>\n8	Bread crumbs<br>\n9       Salt and pepper to taste<br>\n\nMETHOD:<br>\n1	Boil the potatoes until they are cooked. Mash the potatoes.<br>\n2	Chop onion and sautÃ© it in butter<br>\n3	Add onion, milk powder, salt and pepper to the mashed potatoes.<br>\n4	Make small balls out of the mashed potatoes and stuff some cheese into it.<br>\n5	Drench the balls in egg, flour and bread crumbs. Refrigerate them for 30 minutes.<br>\n6	Deep fry in oil until they are golden brown.<br>\n\nTip: Make sure the balls are not soft after they are refrigerated, otherwise they will break off when deep fried.<br>\n</p>', 'Steven Lawrence', 'egg.jpg');
INSERT INTO `posts` (`id`, `title`, `category`, `date`, `body`, `author`, `imgname`) VALUES
(44, 'Have you been taking your vitamin D in the right quantity?', 'HEALTH & WELLNESS', 'Aug 14,2017', '<p>Vitamin D deficiency is found to be present in over 80 per cent to 90 per cent of Indians, causing a huge concern among the medical fraternity. \nIndian Medical Association (IMA)\n</p>\n<br>\n<p>It is a well-known fact that humans require an adequate quantity of vitamins and minerals to stay active and healthy. But the recent reports by IMA show how serious deficiency of vitamin D is, in our nation. </p>\n\n<br>\n<p>Vitamin D is fat-soluble vitamin found in yogurt, cereals, cheese and juice. It is required in our body to absorb calcium and phosphorous that we get from our food. Though, the fun fact is that there is a very little food that provides us vitamin D so the main source is sunlight. \n</p>\n<br>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/d4.jpg" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted"></span><br>\n<p>Symptoms of bone pain and muscle weakness can mean you have a vitamin D deficiency. However, for many people, the symptoms are subtle. Yet, even without symptoms, too little vitamin D can pose health risks. Low blood levels of the vitamin have been associated with the following:</p>\n<br>\n<p>\n1	Increased risk of death from cardiovascular disease\n2	Cognitive impairment in older adults\n3	Severe asthma in children\n4	Cancer\n</p>\n<br>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/d2.jpg" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted"></span><br>\n<br>\n<h2>Vitamin D deficiency can occur for a number of reasons:</h2>\n<br>\n<p>You don''t consume the recommended levels of the vitamin over time. This is likely if you follow a strict vegan diet, because most of the natural sources are animal-based, including fish and fish oils, egg yolks, fortified milk, and beef liver.</p>\n<br><br>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/d3.jpg" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted"></span><br>\n<br><br>\n<p>\nYour exposure to sunlight is limited. Because the body makes vitamin D when your skin is exposed to sunlight, you may be at risk of deficiency if you are homebound, live in northern latitudes, wear long robes or head coverings for religious reasons, or have an occupation that prevents sun exposure.\n</p>\n<br>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/d8.jpg" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted"></span><br>\n<br>\n<p>You have dark skin. The pigment melanin reduces the skin''s ability to make vitamin D in response to sunlight exposure. Some studies show that older adults with darker skin are at high risk of vitamin D deficiency.</p>\n<br>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/d9.jpg" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted"></span><br>\n<br>\n<p>Your kidneys cannot convert vitamin D to its active form. As people age, their kidneys are less able to convert vitamin D to its active form, thus increasing their risk of vitamin D deficiency.\n\n<br>\nYour digestive tract cannot adequately absorb vitamin D. certain medical problems, including Crohn''s disease, cystic fibrosis, and celiac disease, can affect your intestine''s ability to absorb vitamin D from the food you eat.\n</p>\n<br>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/d1.jpg" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted"></span><br>\n<br>\n<p>\nYou are obese. Vitamin D is extracted from the blood by fat cells, altering its release into the circulation. People with a body mass index of 30 or greater often have low blood levels of vitamin D.\n\n</p>\n<br>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/d7.jpg" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted"></span><br>\n<br>\n<p>Fact- The ''Rise and Shine'' campaign is a national drive of the IMA that aims at sensitising its 2.5 lakh members across  states and 1,700 branches over two years about the need to raise awareness about the vitamin D deficiency. It also aims at providing soft skills training to all doctors on topics such as public speaking, managing patient records online, adapting to the new mobile app culture, how to break the news of death to a patient''s family.</p>\n<br>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/d6.jpg" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted"></span><br>\n<br>\n\n<p>Too much isn''t good!<br>\nWhile being vitamin D deficient is a problem, there are disadvantages of too much vitamin D as well. An excess may cause health problems such as dehydration, vomiting, kidney damage and kidney stones.\nThough, it is nearly impossible to get too much vitamin D from sunlight or from foods (unless you take way too much cod liver oil). Nearly all vitamin D overdoses come from supplements.\n</p>\n<br>The Institute of Medicine''s expert committee (IOM) recommends getting the following amount of vitamin D from diet or supplements:\n</p><pre>\n1	Infants age 0 to 6 months: adequate intake, 400 IU/day; maximum safe upper level of intake, 1,000 IU/day\n2	Infants age 6 to 12 months: adequate intake, 400 IU/day; maximum safe upper level of intake, 1,500 IU/day\n3	Age 1-3 years: adequate intake, 600 IU/day; maximum safe upper level of intake, 2,500 IU/day\n4	Age 4-8 years: adequate intake, 600 IU/day; maximum safe upper level of intake, 3,000 IU/day\n5	Age 9-70: adequate intake, 600 IU/day; maximum safe upper level of intake, 4,000 IU/day\n6	Age 71+ years: adequate intake, 800 IU/day; maximum safe upper level of intake, 4,000 IU/day\n</pre>\n<br>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/d11.jpg" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted"></span>\n<br>\n<p>\nHypervitaminotic D is a rare but potentially serious condition. It occurs when you take in too much vitamin D. It''s usually the result of taking high-dose vitamin D supplements. Too much vitamin D can cause abnormally high levels of calcium in the blood. This can affect bones, tissues, and other organs. It can lead to high blood pressure, bone loss, and kidney damage if not treated.\n</p>\n<br>\n<div class="row"><img class="img-responsive col-xs-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1" src="img/d5.jpg" alt="">\n                    </div>\n                    \n                    <span class="caption text-muted"></span>\n<br>\n<p>\nToday, the deficiency of Vitamin D is a concern for India''s government because majority of population shows signs of deficiency. It is affecting nation''s development. That’s the reason why government is doing efforts to start the campaigns like ''Rise and Shine ''. \n</p>', 'Mehul Singh', 'd12.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE IF NOT EXISTS `subscribers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) NOT NULL,
  `email` varchar(400) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
