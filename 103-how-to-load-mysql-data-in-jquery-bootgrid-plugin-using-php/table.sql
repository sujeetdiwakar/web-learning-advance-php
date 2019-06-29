--
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(250) NOT NULL,
  `student_phone` varchar(20) NOT NULL,
  `image` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`student_id`, `student_name`, `student_phone`, `image`) VALUES
(1, 'Pauline S. Rich', '412-735-0224', ''),
(2, 'Sarah C. White', '320-552-9961', ''),
(3, 'Samuel L. Leslie', '201-324-8264', ''),
(4, 'Norma R. Manly', '478-322-4715', ''),
(5, 'Kimberly R. Castro', '479-966-6788', ''),
(6, 'Elaine R. Davis', '701-685-8912', ''),
(7, 'Concepcion S. Gardner', '607-829-8758', ''),
(8, 'Patricia J. White', '803-789-0429', ''),
(9, 'Michael M. Bothwell', '214-585-0737', ''),
(10, 'Ronald C. Vansickle', '630-571-4107', ''),
(11, 'Clarence A. Rich', '904-459-3747', ''),
(12, 'Elizabeth W. Peterson', '404-380-9481', ''),
(13, 'Renee R. Hewitt', '323-350-4973', ''),
(14, 'John K. Love', '337-229-1983', ''),
(15, 'Teresa J. Rincon', '216-394-6894', ''),
(16, 'Erin S. Huckaby', '503-284-8652', ''),
(17, 'Gary M. Boyd', '0000000000', ''),
(18, 'Carl N. Fries', '000000000', ''),
(19, 'Judy R. Rogers', '606-279-9337', ''),
(20, 'Dan V. McLendon', '954-776-1615', ''),
(21, 'Jacqueline J. Sheffield', '703-375-7072', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;
