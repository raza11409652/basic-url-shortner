-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2017 at 05:03 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `link`
--

-- --------------------------------------------------------

--
-- Table structure for table `dataset`
--

CREATE TABLE `dataset` (
  `id` int(11) NOT NULL,
  `originalurl` varchar(500) NOT NULL,
  `userkey` varchar(10) NOT NULL,
  `shortenlink` varchar(128) NOT NULL,
  `ipaddress` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dataset`
--

INSERT INTO `dataset` (`id`, `originalurl`, `userkey`, `shortenlink`, `ipaddress`) VALUES
(1, 'https://www.sitepoint.com/community/t/how-can-i-generate-unique-alphanumeric/108972/3', 'TS3391', 'localhost/open/ruthvik/?r=TS3391', '::1'),
(2, 'https://www.sitepoint.com/community/t/how-can-i-generate-unique-alphanumeric/108972/3', 'khalid', 'localhost/open/ruthvik/?r=khalid', '::1'),
(3, 'https://www.google.co.in/search?q=get+ip+in+php&oq=get+ip+in+php&aqs=chrome..69i57j0l5.2761j0j4&sourceid=chrome&ie=UTF-8', 'raza', 'localhost/open/ruthvik/?r=raza', '::1'),
(4, 'https://www.google.co.in/search?q=get+ip+in+php&oq=get+ip+in+php&aqs=chrome..69i57j0l5.2761j0j4&sourceid=chrome&ie=UTF-8', 'JD1281', 'localhost/open/ruthvik/?r=JD1281', '::1'),
(5, 'https://www.google.co.in/search?q=get+ip+in+php&oq=get+ip+in+php&aqs=chrome..69i57j0l5.2761j0j4&sourceid=chrome&ie=UTF-8', 'SK8436', 'localhost/open/ruthvik/?r=SK8436', '::1'),
(6, 'https://stackoverflow.com/questions/15699101/get-the-client-ip-address-using-php', 'FO9280', 'localhost/open/ruthvik/?r=FO9280', '::1'),
(7, 'https://www.sitepoint.com/community/t/how-can-i-generate-unique-alphanumeric/108972/3', 'XG6585', 'localhost/open/ruthvik/?r=XG6585', '::1'),
(8, 'https://stackoverflow.com/questions/15699101/get-the-client-ip-address-using-php', 'GU8084', 'localhost/open/ruthvik/?r=GU8084', '::1'),
(9, 'https://stackoverflow.com/questions/15699101/get-the-client-ip-address-using-php', 'HG9431', 'localhost/open/ruthvik/?r=HG9431', '::1'),
(10, 'https://stackoverflow.com/questions/15699101/get-the-client-ip-address-using-php', 'hello', 'localhost/open/ruthvik/?r=hello', '::1'),
(11, 'https://stackoverflow.com/questions/15699101/get-the-client-ip-address-using-php', 'WP7960', 'localhost/open/ruthvik/?r=WP7960', '::1'),
(12, 'http://fontawesome.io/icon/external-link/', 'fa', 'localhost/open/ruthvik/?r=fa', '::1'),
(13, 'http://fontawesome.io/icon/external-link/', 'f', 'localhost/open/ruthvik/?r=f', '::1'),
(14, 'https://stackoverflow.com/questions/6364289/clear-form-fields-with-jquery', 'LQ8687', 'localhost/open/ruthvik/?r=LQ8687', '::1'),
(15, 'https://accounts.google.com/ServiceLogin/signinchooser?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin', 'gmail', 'localhost/open/ruthvik/?r=gmail', '::1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dataset`
--
ALTER TABLE `dataset`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dataset`
--
ALTER TABLE `dataset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
