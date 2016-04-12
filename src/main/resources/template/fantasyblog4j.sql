# Host: localhost  (Version: 5.5.27)
# Date: 2016-04-12 21:55:46
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
  `category` varchar(50) NOT NULL DEFAULT '',
  `visit_time` int(11) NOT NULL DEFAULT '0',
  `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100008 DEFAULT CHARSET=utf8 COMMENT='post table';

#
# Data for table "p_post"
#


#
# Structure for table "p_post_detail"
#

DROP TABLE IF EXISTS `p_post_detail`;
CREATE TABLE `p_post_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NOT NULL DEFAULT '0',
  `content` longtext,
  `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100008 DEFAULT CHARSET=utf8;

#
# Data for table "p_post_detail"
#


#
# Structure for table "p_post_tag"
#

DROP TABLE IF EXISTS `p_post_tag`;
CREATE TABLE `p_post_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT '0',
  `pid` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `num` int(11) NOT NULL DEFAULT '0',
  `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `user_post_tag_index` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=100021 DEFAULT CHARSET=utf8 COMMENT='post tag table';

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
) ENGINE=InnoDB AUTO_INCREMENT=100002 DEFAULT CHARSET=utf8 COMMENT='user table';

#
# Data for table "u_user"
#

INSERT INTO `u_user` VALUES (100001,'evilcoder','515a5e5ecc9012533810c50b8400f7066616fbf2','6ca1b4997efa157b','hsqmobile@gmail.com','evilcoder',1,'','2016-04-12 17:21:40','2016-04-12 17:21:40','2016-04-12 17:21:40');
