DROP TABLE IF EXISTS `tbl_order`;

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_customer_name` varchar(255) NOT NULL,
  `order_item` varchar(255) NOT NULL,
  `order_value` double(12,2) NOT NULL,
  `order_date` date NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_order` */

insert  into `tbl_order`(`order_id`,`order_customer_name`,`order_item`,`order_value`,`order_date`) values 
(1,'David E. Gary','Shuttering Plywood',1500.00,'2019-06-14'),
(2,'Eddie M. Douglas','Aluminium Heavy Windows',2000.00,'2019-06-08'),
(3,'Oscar D. Scoggins','Plaster Of Paris',150.00,'2019-05-29'),
(4,'Clara C. Kulik','Spin Driller Machine',350.00,'2019-05-30'),
(5,'Christopher M. Victory','Shopping Trolley',100.00,'2019-06-01'),
(6,'Jessica G. Fischer','CCTV Camera',800.00,'2019-06-02'),
(7,'Roger R. White','Truck Tires',2000.00,'2019-05-28'),
(8,'Susan C. Richardson','Glass Block',200.00,'2019-06-04'),
(9,'David C. Jury','Casing Pipes',500.00,'2019-05-27'),
(10,'Lori C. Skinner','Glass PVC Rubber',1800.00,'2019-05-30'),
(11,'Shawn S. Derosa','Sony HTXT1 2.1-Channel TV',180.00,'2019-06-03'),
(12,'Karen A. McGee','Over-the-Ear Stereo Headphones ',25.00,'2019-06-01'),
(13,'Kristine B. McGraw','Tristar 10\" Round Copper Chef Pan with Glass Lid',20.00,'2019-05-30'),
(14,'Gary M. Porter','ROBO 3D R1 Plus 3D Printer',600.00,'2019-06-02'),
(15,'Sarah D. Hunter','Westinghouse Select Kitchen Appliances',35.00,'2019-05-29'),
(16,'Diane J. Thomas','SanDisk Ultra 32GB microSDHC',12.00,'2019-06-05'),
(17,'Helena J. Quillen','TaoTronics Dimmable Outdoor String Lights',16.00,'2019-06-04'),
(18,'Arlette G. Nathan','TaoTronics Bluetooth in-Ear Headphones',25.00,'2019-06-03'),
(19,'Ronald S. Vallejo','Scotchgard Fabric Protector, 10-Ounce, 2-Pack',20.00,'2019-06-03'),
(20,'Felicia L. Sorensen','Anker 24W Dual USB Wall Charger with Foldable Plug',12.00,'2019-06-04');
