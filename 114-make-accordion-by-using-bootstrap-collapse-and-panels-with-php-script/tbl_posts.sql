 --  
 -- Table structure for table `tbl_posts`  
 --  
 CREATE TABLE IF NOT EXISTS `tbl_posts` (  
  `post_id` int(11) NOT NULL AUTO_INCREMENT,  
  `post_title` varchar(150) NOT NULL,  
  `post_desc` text NOT NULL,  
  PRIMARY KEY (`post_id`)  
 ) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;