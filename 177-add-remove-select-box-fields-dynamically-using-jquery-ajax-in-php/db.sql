--
-- Database: `testing4`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_items`
--

CREATE TABLE IF NOT EXISTS `tbl_order_items` (
  `order_items_id` int(11) NOT NULL,
  `order_id` varchar(150) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `item_quantity` int(11) NOT NULL,
  `item_unit` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_unit`
--

CREATE TABLE IF NOT EXISTS `tbl_unit` (
  `unit_id` int(11) NOT NULL,
  `unit_name` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_unit`
--

INSERT INTO `tbl_unit` (`unit_id`, `unit_name`) VALUES
(1, 'Bags'),
(2, 'Bottles'),
(3, 'Box'),
(4, 'Dozens'),
(5, 'Feet'),
(6, 'Gallon'),
(7, 'Grams'),
(8, 'Inch'),
(9, 'Kg'),
(10, 'Liters'),
(11, 'Meter'),
(12, 'Nos'),
(13, 'Packet'),
(14, 'Rolls');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_order_items`
--
ALTER TABLE `tbl_order_items`
  ADD PRIMARY KEY (`order_items_id`);

--
-- Indexes for table `tbl_unit`
--
ALTER TABLE `tbl_unit`
  ADD PRIMARY KEY (`unit_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_order_items`
--
ALTER TABLE `tbl_order_items`
  MODIFY `order_items_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_unit`
--
ALTER TABLE `tbl_unit`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
