--
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `first_name`, `last_name`) VALUES
(2, 'John', 'Smith'),
(3, 'Carol', 'Ferrari'),
(4, 'Darrell', 'Mitten'),
(5, 'Elizbeth', 'Noyes'),
(6, 'Edna', 'William'),
(7, 'Roy', 'Hise'),
(8, 'Sheila', 'Aguinaldo'),
(9, 'Peter', 'Goad'),
(10, 'Kenneth', 'Simons'),
(12, 'William', 'Soliz');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;
