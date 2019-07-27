--
-- Database: `testing1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `order_customer_name` varchar(255) NOT NULL,
  `order_item` varchar(255) NOT NULL,
  `order_value` double(12,2) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `order_customer_name`, `order_item`, `order_value`, `order_date`) VALUES
(1, 'David E. Gary', 'Shuttering Plywood', 1500.00, '2017-01-14'),
(2, 'Eddie M. Douglas', 'Aluminium Heavy Windows', 2000.00, '2017-01-08'),
(3, 'Oscar D. Scoggins', 'Plaster Of Paris', 150.00, '2016-12-29'),
(4, 'Clara C. Kulik', 'Spin Driller Machine', 350.00, '2016-12-30'),
(5, 'Christopher M. Victory', 'Shopping Trolley', 100.00, '2017-01-01'),
(6, 'Jessica G. Fischer', 'CCTV Camera', 800.00, '2017-01-02'),
(7, 'Roger R. White', 'Truck Tires', 2000.00, '2016-12-28'),
(8, 'Susan C. Richardson', 'Glass Block', 200.00, '2017-01-04'),
(9, 'David C. Jury', 'Casing Pipes', 500.00, '2016-12-27'),
(10, 'Lori C. Skinner', 'Glass PVC Rubber', 1800.00, '2016-12-30'),
(11, 'Shawn S. Derosa', 'Sony HTXT1 2.1-Channel TV', 180.00, '2017-01-03'),
(12, 'Karen A. McGee', 'Over-the-Ear Stereo Headphones ', 25.00, '2017-01-01'),
(13, 'Kristine B. McGraw', 'Tristar 10\" Round Copper Chef Pan with Glass Lid', 20.00, '2016-12-30'),
(14, 'Gary M. Porter', 'ROBO 3D R1 Plus 3D Printer', 600.00, '2017-01-02'),
(15, 'Sarah D. Hunter', 'Westinghouse Select Kitchen Appliances', 35.00, '2016-12-29'),
(16, 'Diane J. Thomas', 'SanDisk Ultra 32GB microSDHC', 12.00, '2017-01-05'),
(17, 'Helena J. Quillen', 'TaoTronics Dimmable Outdoor String Lights', 16.00, '2017-01-04'),
(18, 'Arlette G. Nathan', 'TaoTronics Bluetooth in-Ear Headphones', 25.00, '2017-01-03'),
(19, 'Ronald S. Vallejo', 'Scotchgard Fabric Protector, 10-Ounce, 2-Pack', 20.00, '2017-01-03'),
(20, 'Felicia L. Sorensen', 'Anker 24W Dual USB Wall Charger with Foldable Plug', 12.00, '2017-01-04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;
