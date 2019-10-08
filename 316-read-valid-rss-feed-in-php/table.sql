--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `post_title` text,
  `post_description` text,
  `author` varchar(255) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `post_image` varchar(150) DEFAULT NULL,
  `post_url` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
