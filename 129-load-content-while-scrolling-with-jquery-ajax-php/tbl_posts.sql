-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2019 at 04:36 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_posts`
--

CREATE TABLE `tbl_posts` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_description` text NOT NULL,
  `post_author` varchar(250) NOT NULL,
  `post_url` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_posts`
--

INSERT INTO `tbl_posts` (`post_id`, `post_title`, `post_description`, `post_author`, `post_url`) VALUES
(1, 'Simple jQuery Add, Update, Delete with PHP and MySQL', '\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse consequat mi sed velit scelerisque tincidunt. Nam at elementum risus. Cras quis felis quam. Aenean bibendum sodales malesuada. Etiam gravida aliquam justo, sollicitudin posuere quam pharetra eu. Aliquam luctus, risus at vestibulum malesuada, metus elit tempor nunc, non sollicitudin tortor velit in sem. Nunc ac massa risus. In eu ligula vel nisl aliquam rhoncus. Cras vitae pharetra ligula. Integer tempus odio in massa semper, in finibus nibh consectetur. Quisque eleifend neque in molestie congue. Sed in sagittis metus.', 'Test', 'http://goo.gl/IL6NTr'),
(2, '15 Free Bootstrap Admin Themes Demo and Download', '\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse consequat mi sed velit scelerisque tincidunt. Nam at elementum risus. Cras quis felis quam. Aenean bibendum sodales malesuada. Etiam gravida aliquam justo, sollicitudin posuere quam pharetra eu. Aliquam luctus, risus at vestibulum malesuada, metus elit tempor nunc, non sollicitudin tortor velit in sem. Nunc ac massa risus. In eu ligula vel nisl aliquam rhoncus. Cras vitae pharetra ligula. Integer tempus odio in massa semper, in finibus nibh consectetur. Quisque eleifend neque in molestie congue. Sed in sagittis metus.', 'abcd', 'http://goo.gl/1dBwEy'),
(3, 'Easy Ajax Image Upload with jQuery, PHP', '', '', 'http://goo.gl/jXZ6LY'),
(4, 'How to Send HTML Format eMails in PHP using PHPMailer', '', '', 'http://goo.gl/kQrzJP'),
(5, 'Ajax Bootstrap Signup Form with jQuery PHP and MySQL', '', '', 'http://goo.gl/yxKrha'),
(6, 'Submit PHP Form without Page Refresh using jQuery, Ajax', '', '', 'http://goo.gl/14vlBe'),
(7, 'How to Convert MySQL Rows into JSON Format in PHP', '', '', 'http://goo.gl/qgOiwB'),
(8, 'Designing Bootstrap Signup Form with jQuery Validation', '', '', 'http://goo.gl/nECERc'),
(9, 'Upload, Insert, Update, Delete an Image using PHP MySQL', '', '', 'http://goo.gl/HRJrDD'),
(10, 'Login Registration with Email Verification, Forgot Password using PHP', '', '', 'http://goo.gl/O9FKN1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_posts`
--
ALTER TABLE `tbl_posts`
  ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_posts`
--
ALTER TABLE `tbl_posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
