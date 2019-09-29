--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `first_level_category`
--

CREATE TABLE `first_level_category` (
  `first_level_category_id` int(11) NOT NULL,
  `first_level_category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `first_level_category`
--

INSERT INTO `first_level_category` (`first_level_category_id`, `first_level_category_name`) VALUES
(1, 'Electronics & Electrical'),
(2, 'Apparel & Garments'),
(3, 'Automobile Parts'),
(4, 'Construction Material');

-- --------------------------------------------------------

--
-- Table structure for table `second_level_category`
--

CREATE TABLE `second_level_category` (
  `second_level_category_id` int(11) NOT NULL,
  `first_level_category_id` int(11) NOT NULL,
  `second_level_category_name` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `second_level_category`
--

INSERT INTO `second_level_category` (`second_level_category_id`, `first_level_category_id`, `second_level_category_name`) VALUES
(1, 1, 'Audio Video Equipment'),
(2, 1, 'Water Heater'),
(3, 1, 'Air Conditioner'),
(4, 2, 'Children Clothing'),
(5, 2, 'Women Wear'),
(6, 2, 'Men Wear'),
(7, 3, 'Auto Parts'),
(8, 3, 'Auto Accessories'),
(9, 3, 'Auto Electronics'),
(10, 4, 'Tiles'),
(11, 4, 'Plywood'),
(12, 4, 'Sanitaryware');

-- --------------------------------------------------------

--
-- Table structure for table `third_level_category`
--

CREATE TABLE `third_level_category` (
  `third_level_category_id` int(11) NOT NULL,
  `second_level_category_id` int(11) NOT NULL,
  `third_level_category_name` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `third_level_category`
--

INSERT INTO `third_level_category` (`third_level_category_id`, `second_level_category_id`, `third_level_category_name`) VALUES
(1, 1, 'Mini FM Radio'),
(2, 1, 'LCD TV'),
(3, 1, 'Music Player'),
(4, 2, 'Solar Water Heater'),
(5, 2, 'Thermic Fluid Heater'),
(6, 2, 'Portable Water Heater'),
(7, 3, 'Portable Air Conditioner'),
(8, 3, 'Air Conditioner Part'),
(9, 3, 'Commercial Air Conditioner'),
(10, 4, 'Baby Clothes'),
(11, 4, 'Kids Garments'),
(12, 4, 'Designer Clothes'),
(13, 5, 'Legging'),
(14, 5, 'Ladies Fashion Garments'),
(15, 5, 'Gown Dresses'),
(16, 6, 'Men Formal Wear'),
(17, 6, 'Mens Kurtas'),
(18, 6, 'Mens Lower'),
(19, 7, 'Car Shock Absorber'),
(20, 7, 'Glass Cleaning Wiper'),
(21, 7, 'Steering Lock'),
(22, 8, 'Grille Light'),
(23, 8, 'Automobile Couplings'),
(24, 8, 'Motorcycle Helmet'),
(25, 9, 'Car Audio System'),
(26, 9, 'Car Lcd'),
(27, 9, 'Car Stereos'),
(28, 10, 'Stone Tiles'),
(29, 10, 'Zig Zag Tiles'),
(30, 10, 'Granite Tiles'),
(31, 11, 'Flexible Plywood'),
(32, 11, 'Designer Plywood'),
(33, 11, 'Commercial Plywood'),
(34, 12, 'Brass Sanitary Fittings'),
(35, 12, 'Porcelain Toilet'),
(36, 12, 'Lavatory Basin'),
(37, 12, 'Kitchen Sink');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `first_level_category`
--
ALTER TABLE `first_level_category`
  ADD PRIMARY KEY (`first_level_category_id`);

--
-- Indexes for table `second_level_category`
--
ALTER TABLE `second_level_category`
  ADD PRIMARY KEY (`second_level_category_id`);

--
-- Indexes for table `third_level_category`
--
ALTER TABLE `third_level_category`
  ADD PRIMARY KEY (`third_level_category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `first_level_category`
--
ALTER TABLE `first_level_category`
  MODIFY `first_level_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `second_level_category`
--
ALTER TABLE `second_level_category`
  MODIFY `second_level_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `third_level_category`
--
ALTER TABLE `third_level_category`
  MODIFY `third_level_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

