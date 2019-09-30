
--
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `slug`
--

CREATE TABLE `slug` (
  `slug_id` int(11) NOT NULL,
  `slug_title` varchar(255) NOT NULL,
  `slug_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `slug`
--
ALTER TABLE `slug`
  ADD PRIMARY KEY (`slug_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `slug`
--
ALTER TABLE `slug`
  MODIFY `slug_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;
