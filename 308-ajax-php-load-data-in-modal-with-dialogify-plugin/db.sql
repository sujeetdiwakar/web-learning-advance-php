
--
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `gender` varchar(10) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `images` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`id`, `name`, `address`, `gender`, `designation`, `age`, `images`) VALUES
(6, 'Barbra K. Hurley', '1241 Canis Heights Drive\r\nLos Angeles, CA 90017', 'Female', 'Service technician', 26, 'image_35.jpg'),
(7, 'Antonio J. Forbes', '403 Snyder Avenue\r\nCharlotte, NC 28208', 'Male', 'Faller', 28, 'image_36.jpg'),
(8, 'Charles D. Horst', '1636 Walnut Hill Drive\r\nCincinnati, OH 45202', 'Male', 'Financial investigator', 29, 'image_37.jpg'),
(174, 'Martha B. Tomlinson', '4005 Bird Spring Lane, Houston, TX 77002', 'Female', 'Systems programmer', 28, 'image_44.jpg'),
(162, 'Jarrod D. Jones', '3827 Bingamon Road, Garfield Heights, OH 44125', 'Male', 'Manpower development advisor', 24, 'image_3.jpg'),
(192, 'Flora Reed', '4000 Hamilton Drive Cambridge, MD 21613', 'Female', 'Machine offbearer', 27, 'image_41.jpg'),
(193, 'Donna Case', '4781 Apple Lane Peoria, IL 61602', 'Female', 'Machine operator', 26, 'image_15.jpg'),
(194, 'William Lewter', '168 Little Acres Lane Decatur, IL 62526', 'Male', 'Process engineer', 25, 'image_46.jpg'),
(195, 'Nathaniel Leger', '3200 Harley Brook Lane Meadville, PA 16335', 'Male', 'Nurse', 21, 'image_34.jpg'),
(183, 'Steve John', '108, Vile Parle, CL', 'Male', 'Software Engineer', 29, 'image_47.jpg'),
(186, 'Louis C. Charmis', '1462 Juniper Drive\r\nBreckenridge, MI 48612', 'Male', 'Mental health counselor', 30, ''),
(200, 'June Barnard', '4465 Woodland Terrace Folsom, CA 95630', 'Female', 'Fishing vessel operator', 24, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;
