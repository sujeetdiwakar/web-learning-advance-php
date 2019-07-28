--
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sensors_data`
--

CREATE TABLE IF NOT EXISTS `tbl_sensors_data` (
  `sensors_data_id` int(11) NOT NULL,
  `sensors_temperature_data` varchar(30) NOT NULL,
  `sensors_data_date` date NOT NULL,
  `sensors_data_time` time NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=484 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sensors_data`
--

INSERT INTO `tbl_sensors_data` (`sensors_data_id`, `sensors_temperature_data`, `sensors_data_date`, `sensors_data_time`) VALUES
(339, '28', '2017-08-08', '10:00:00'),
(340, '26', '2017-08-07', '10:10:00'),
(341, '36', '2017-08-06', '10:20:00'),
(342, '31', '2017-08-05', '10:30:00'),
(343, '30', '2017-08-04', '10:40:00'),
(344, '27', '2017-08-03', '10:50:00'),
(345, '28', '2017-08-02', '11:00:00'),
(346, '25', '2017-08-01', '11:10:00'),
(347, '27', '2017-07-31', '11:20:00'),
(348, '27', '2017-07-30', '11:30:00'),
(349, '36', '2017-07-29', '11:40:00'),
(350, '30', '2017-07-28', '11:50:00'),
(351, '39', '2017-07-27', '12:00:00'),
(352, '36', '2017-07-26', '12:10:00'),
(353, '32', '2017-07-25', '12:20:00'),
(354, '33', '2017-08-09', '12:30:00'),
(355, '40', '2017-08-09', '12:40:00'),
(356, '33', '2017-08-09', '12:50:00'),
(357, '25', '2017-08-09', '13:00:00'),
(358, '33', '2017-08-09', '13:10:00'),
(359, '26', '2017-08-09', '13:20:00'),
(360, '38', '2017-07-24', '13:30:00'),
(361, '33', '2017-07-23', '13:40:00'),
(362, '37', '2017-07-22', '13:50:00'),
(363, '35', '2017-07-21', '14:00:00'),
(364, '39', '2017-07-20', '14:10:00'),
(365, '26', '2017-07-19', '14:20:00'),
(366, '29', '2017-07-18', '14:30:00'),
(367, '40', '2017-07-17', '14:40:00'),
(368, '40', '2017-07-16', '14:50:00'),
(369, '37', '2017-07-15', '15:00:00'),
(370, '28', '2017-07-14', '15:10:00'),
(371, '26', '2017-07-13', '15:20:00'),
(372, '32', '2017-07-12', '15:30:00'),
(373, '34', '2017-07-11', '15:40:00'),
(374, '31', '2017-07-10', '15:50:00'),
(375, '34', '2017-07-09', '16:00:00'),
(376, '37', '2017-07-08', '16:10:00'),
(377, '31', '2017-07-07', '16:20:00'),
(378, '36', '2017-07-06', '16:30:00'),
(379, '40', '2017-07-05', '16:40:00'),
(380, '27', '2017-07-04', '16:50:00'),
(381, '26', '2017-07-03', '17:00:00'),
(382, '38', '2017-07-02', '17:10:00'),
(383, '39', '2017-07-01', '17:20:00'),
(384, '33', '2017-06-30', '17:30:00'),
(385, '31', '2017-06-29', '17:40:00'),
(386, '38', '2017-06-28', '17:50:00'),
(387, '26', '2017-06-27', '18:00:00'),
(388, '32', '2017-06-26', '18:10:00'),
(389, '30', '2017-06-25', '18:20:00'),
(390, '27', '2017-06-24', '18:30:00'),
(391, '29', '2017-06-23', '18:40:00'),
(392, '39', '2017-06-22', '18:50:00'),
(393, '40', '2017-06-21', '19:00:00'),
(394, '39', '2017-06-20', '19:10:00'),
(395, '38', '2017-06-19', '19:20:00'),
(396, '25', '2017-06-18', '19:30:00'),
(397, '28', '2017-06-17', '19:40:00'),
(398, '37', '2017-06-16', '19:50:00'),
(399, '40', '2017-06-15', '20:00:00'),
(400, '40', '2017-06-14', '20:10:00'),
(401, '40', '2017-06-13', '20:20:00'),
(402, '25', '2017-06-12', '20:30:00'),
(403, '32', '2017-06-11', '20:40:00'),
(404, '34', '2017-06-10', '20:50:00'),
(405, '32', '2017-06-09', '21:00:00'),
(406, '25', '2017-06-08', '21:10:00'),
(407, '31', '2017-06-07', '21:20:00'),
(408, '39', '2017-06-06', '21:30:00'),
(409, '37', '2017-06-05', '21:40:00'),
(410, '30', '2017-06-04', '21:50:00'),
(411, '26', '2017-06-03', '22:00:00'),
(412, '38', '2017-06-02', '22:10:00'),
(413, '28', '2017-06-01', '22:20:00'),
(414, '40', '2017-05-31', '22:30:00'),
(415, '31', '2017-05-30', '22:40:00'),
(416, '34', '2017-05-29', '22:50:00'),
(417, '37', '2017-05-28', '23:00:00'),
(418, '33', '2017-05-27', '23:10:00'),
(419, '25', '2017-05-26', '23:20:00'),
(420, '27', '2017-05-25', '23:30:00'),
(421, '35', '2017-05-24', '23:40:00'),
(422, '30', '2017-05-23', '23:50:00'),
(423, '25', '2017-05-22', '00:00:00'),
(424, '35', '2017-05-21', '00:10:00'),
(425, '29', '2017-05-20', '00:20:00'),
(426, '38', '2017-05-19', '00:30:00'),
(427, '36', '2017-05-18', '00:40:00'),
(428, '32', '2017-05-17', '00:50:00'),
(429, '35', '2017-05-16', '01:00:00'),
(430, '35', '2017-05-15', '01:10:00'),
(431, '32', '2017-05-14', '01:20:00'),
(432, '35', '2017-05-13', '01:30:00'),
(433, '36', '2017-05-12', '01:40:00'),
(434, '39', '2017-05-11', '01:50:00'),
(435, '28', '2017-05-10', '02:00:00'),
(436, '28', '2017-05-09', '02:10:00'),
(437, '40', '2017-05-08', '02:20:00'),
(438, '35', '2017-05-07', '02:30:00'),
(439, '26', '2017-05-06', '02:40:00'),
(440, '36', '2017-05-05', '02:50:00'),
(441, '25', '2017-05-04', '03:00:00'),
(442, '28', '2017-05-03', '03:10:00'),
(443, '34', '2017-05-02', '03:20:00'),
(444, '28', '2017-05-01', '03:30:00'),
(445, '27', '2017-04-30', '03:40:00'),
(446, '25', '2017-04-29', '03:50:00'),
(447, '37', '2017-04-28', '04:00:00'),
(448, '39', '2017-04-27', '04:10:00'),
(449, '33', '2017-04-26', '04:20:00'),
(450, '38', '2017-04-25', '04:30:00'),
(451, '25', '2017-04-24', '04:40:00'),
(452, '28', '2017-04-23', '04:50:00'),
(453, '27', '2017-04-22', '05:00:00'),
(454, '26', '2017-04-21', '05:10:00'),
(455, '38', '2017-04-20', '05:20:00'),
(456, '32', '2017-04-19', '05:30:00'),
(457, '39', '2017-04-18', '05:40:00'),
(458, '33', '2017-04-17', '05:50:00'),
(459, '39', '2017-04-16', '06:00:00'),
(460, '34', '2017-04-15', '06:10:00'),
(461, '28', '2017-04-14', '06:20:00'),
(462, '31', '2017-04-13', '06:30:00'),
(463, '28', '2017-04-12', '06:40:00'),
(464, '40', '2017-04-11', '06:50:00'),
(465, '29', '2017-04-10', '07:00:00'),
(466, '32', '2017-04-09', '07:10:00'),
(467, '27', '2017-04-08', '07:20:00'),
(468, '28', '2017-04-07', '07:30:00'),
(469, '26', '2017-04-06', '07:40:00'),
(470, '29', '2017-04-05', '07:50:00'),
(471, '40', '2017-04-04', '08:00:00'),
(472, '26', '2017-04-03', '08:10:00'),
(473, '32', '2017-04-02', '08:20:00'),
(474, '34', '2017-04-01', '08:30:00'),
(475, '29', '2017-03-31', '08:40:00'),
(476, '35', '2017-03-30', '08:50:00'),
(477, '34', '2017-03-29', '09:00:00'),
(478, '26', '2017-03-28', '09:10:00'),
(479, '33', '2017-03-27', '09:20:00'),
(480, '27', '2017-03-26', '09:30:00'),
(481, '39', '2017-03-25', '09:40:00'),
(482, '34', '2017-03-24', '09:50:00'),
(483, '30', '2017-03-23', '10:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_sensors_data`
--
ALTER TABLE `tbl_sensors_data`
  ADD PRIMARY KEY (`sensors_data_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_sensors_data`
--
ALTER TABLE `tbl_sensors_data`
  MODIFY `sensors_data_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=484;