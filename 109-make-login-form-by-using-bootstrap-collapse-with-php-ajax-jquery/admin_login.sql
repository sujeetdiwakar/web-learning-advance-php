 --  
 -- Table structure for table `admin_login`  
 --  
 CREATE TABLE IF NOT EXISTS `admin_login` (  
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,  
  `admin_name` varchar(250) NOT NULL,  
  `admin_password` varchar(250) NOT NULL,  
  PRIMARY KEY (`admin_id`)  
 ) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;  
 --  
 -- Dumping data for table `admin_login`  
 --  
 INSERT INTO `admin_login` (`admin_id`, `admin_name`, `admin_password`) VALUES  
 (1, 'admin', 'admin');  