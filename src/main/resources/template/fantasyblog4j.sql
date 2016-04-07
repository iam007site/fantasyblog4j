# Host: localhost  (Version: 5.5.27)
# Date: 2016-04-07 22:58:27
# Generator: MySQL-Front 5.3  (Build 4.198)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "test"
#

DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8 COMMENT='for test';

#
# Data for table "test"
#

INSERT INTO `test` VALUES (100000,'hsq','1312'),(100001,'hsq','1312'),(100002,'hsq','1312'),(100003,'hsq','1312'),(100004,'hsq','1312');

#
# Structure for table "u_user"
#

DROP TABLE IF EXISTS `u_user`;
CREATE TABLE `u_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `salt` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `nickname` varchar(255) NOT NULL DEFAULT '',
  `enable` tinyint(1) NOT NULL DEFAULT '0',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_login_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8 COMMENT='user table';

#
# Data for table "u_user"
#

INSERT INTO `u_user` VALUES (100000,'test','4bb048b9b6ca1e7065bf10f570b64b4741ba8940','ea32e267bc689739','test@test','test',1,'','2016-04-07 22:07:04','2016-04-07 22:07:04','2016-04-07 22:07:04');
