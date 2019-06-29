--  
 -- Database: `crud`  
 --  
 CREATE DATABASE `crud` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;  
 USE `crud`;  
 -- --------------------------------------------------------  
 --  
 -- Table structure for table `users`  
 --  
 CREATE TABLE IF NOT EXISTS `users` (  
  `id` int(11) NOT NULL AUTO_INCREMENT,  
  `first_name` varchar(150) NOT NULL,  
  `last_name` varchar(150) NOT NULL,  
  PRIMARY KEY (`id`)  
 ) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;  
 --  
 -- Dumping data for table `users`  
 --  
 INSERT INTO `users` (`id`, `first_name`, `last_name`) VALUES  
 (17, 'Rosie', 'Peele'),  
 (18, 'Joseph', 'Harman'),  
 (19, 'John', 'Moss'),  
 (20, 'Lillie', 'Ferrari'),  
 (21, 'Yolanda', 'Green'),  
 (22, 'Cara', 'Gariepy');  