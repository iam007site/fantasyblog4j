# Host: localhost  (Version: 5.5.27)
# Date: 2016-04-08 21:51:10
# Generator: MySQL-Front 5.3  (Build 4.198)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "p_post"
#

DROP TABLE IF EXISTS `p_post`;
CREATE TABLE `p_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT '0',
  `title` varchar(500) NOT NULL DEFAULT '',
  `content` longtext,
  `category` varchar(50) NOT NULL DEFAULT '',
  `visist_time` int(11) NOT NULL DEFAULT '0',
  `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8 COMMENT='post table';

#
# Data for table "p_post"
#


#
# Structure for table "p_post_tag"
#

DROP TABLE IF EXISTS `p_post_tag`;
CREATE TABLE `p_post_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `num` int(11) NOT NULL DEFAULT '0',
  `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8 COMMENT='post tag table';

#
# Data for table "p_post_tag"
#


#
# Structure for table "test"
#

DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100005 DEFAULT CHARSET=utf8 COMMENT='for test';

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
) ENGINE=InnoDB AUTO_INCREMENT=100001 DEFAULT CHARSET=utf8 COMMENT='user table';

#
# Data for table "u_user"
#

INSERT INTO `u_user` VALUES (100000,'test','4bb048b9b6ca1e7065bf10f570b64b4741ba8940','ea32e267bc689739','test@test','test',1,'','2016-04-07 22:07:04','2016-04-07 22:07:04','2016-04-07 22:07:04');
