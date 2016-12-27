CREATE TABLE `user_inf` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(10) DEFAULT NULL,
  `user_code` varchar(12) DEFAULT NULL,
  `user_no` varchar(12) DEFAULT NULL,
  `user_password` varchar(20) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8
