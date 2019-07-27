--
-- Database: `testing1`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Mobiles'),
(2, 'Computers'),
(3, 'Clothing'),
(4, 'Beauty Item'),
(5, 'Sports Item'),
(6, 'Toys Item'),
(7, 'Books'),
(8, 'Entertainment Item');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category`, `name`, `price`) VALUES
(1, 1, 'Save on BLU Advance 5.5 HD', 74.99),
(2, 2, 'Dell Inspiron 15.6" Gaming Laptop', 860.00),
(3, 3, 'Women''s Slim Sleeveless', 69.00),
(4, 4, 'Andis 1875-Watt Fold-N-Go Ionic Hair Dryer', 17.00),
(5, 5, 'GM Ripple Cricket Grip, Set Of 3', 66.00),
(6, 6, 'Barbie Fashions and Accessories', 12.00),
(7, 7, 'The Ministry of Utmost Happiness', 6.00),
(8, 8, 'The Great Gatsby (3D)', 8.00),
(9, 1, 'iVooMi Me 1+', 49.00),
(10, 2, 'Apple MacBook Air MQD32HN/A 13.3-inch Laptop 2017', 896.00),
(11, 3, 'Balenzia Premium Mercerised Cotton Loafer Socks', 5.00),
(12, 4, 'Organix Mantra Lemon Cold Pressed Essential Oil', 4.50),
(13, 5, 'SpeedArm Cricket Ball Thrower', 15.00),
(14, 6, 'Mattel Bounce Off Game, Multi Color', 10.00),
(15, 7, 'Seven Days With Her Boss', 5.00),
(16, 8, 'Supernatural Season 1-9 DVD', 22.00),
(17, 1, 'InFocus Turbo 5', 189.00),
(18, 2, 'HP 15-bg008AU 15.6-inch Laptop , Jack Black', 350.00),
(19, 3, 'Seven Rocks Men''s V-Neck Cotton Tshirt', 12.00),
(20, 4, 'Exel Elixir Sublime Antioxidant Serum Cream', 55.00),
(21, 5, 'Gray Nicolls Bat Repair Kit', 9.00),
(22, 6, 'Think Fun Rush Hour, Multi Color', 22.00),
(23, 7, 'Pregnancy Notes: Before, During & After', 5.00),
(24, 8, 'Sherlock Season - 4', 15.00),
(25, 1, 'Vivo Y53', 105.00),
(26, 2, 'Dell Inspiron 15-3567 15.6-inch Laptop', 356.00),
(27, 3, 'Fastrack Sport Sunglasses (Black) (P222GR1)', 14.00),
(28, 4, 'Exel Lotion with stabilized Tea Tree Oil', 28.00),
(29, 5, 'Burn Vinyl Hexagonal Dumbbell', 45.00),
(30, 6, 'Cup Cake Surprise Princess', 8.00),
(31, 7, 'Word Power Made Easy', 2.00),
(32, 8, 'Star Wars: The Force Awakens', 5.00),
(33, 1, 'Lenovo Vibe K5 (Gold, VoLTE update)', 65.00),
(34, 2, 'Lenovo 110 -15ACL 15.6-inch Laptop , Black', 225.00),
(35, 3, 'Zacharias Ankle Socks Pack of 12 Pair', 5.00),
(36, 4, 'Exel SUNSCREEN Broad Spectrum UVA & UVB', 26.00),
(37, 5, 'Burn 500124 Inter Lock Mat (Black)', 24.00),
(38, 6, 'Toyshine Devis Boy 9', 10.00),
(39, 7, 'Think and Grow Rich', 2.50),
(40, 8, 'The Jungle Book', 10.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
