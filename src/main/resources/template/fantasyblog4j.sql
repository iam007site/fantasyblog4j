# Host: localhost  (Version: 5.5.27)
# Date: 2016-04-10 22:26:59
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
) ENGINE=InnoDB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8 COMMENT='post table';

#
# Data for table "p_post"
#

INSERT INTO `p_post` VALUES (100000,100000,'aaa','bb',0,'2016-04-10 15:33:26','2016-04-10 15:33:26'),(100001,100000,'aa','bbb',0,'2016-04-10 15:37:13','2016-04-10 15:37:13'),(100002,100000,'我爱老婆','我和老婆',0,'2016-04-10 15:49:35','2016-04-10 15:49:35'),(100003,100000,'lkaflafajlf','Bootstrap',0,'2016-04-10 21:28:52','2016-04-10 21:28:52');

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
) ENGINE=InnoDB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;

#
# Data for table "p_post_detail"
#

INSERT INTO `p_post_detail` VALUES (100000,100000,'<pre>Please write your blog here...fffffffff</pre><blockquote><p>afafafasf</p><p>afasfasf</p></blockquote><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p>','2016-04-10 15:33:26','2016-04-10 15:33:26'),(100001,100001,'<p>Please write your blog here...ffffaaaaaaaaaa</p><h1>dddd</h1><pre>afasfasfasfa<br>public static void main(){<br>&nbsp; &nbsp; System.out.println(\"Hello Word\");<br>}</pre>','2016-04-10 15:37:13','2016-04-10 15:37:13'),(100002,100002,'<p>Please write your blog here..我爱老婆</p>','2016-04-10 15:49:35','2016-04-10 15:49:35'),(100003,100003,'<p>fafsfasfasfcaffs</p><p>as<br>fas</p><p>faf</p><p>af</p><p>af</p><p>af</p><p>aF</p><p>af</p><p>aF</p><p>aF</p><p>aF</p><p>asF</p><p>aF</p><p>ff</p><p>f</p><p>F</p>','2016-04-10 21:28:52','2016-04-10 21:28:52');

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
) ENGINE=InnoDB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8 COMMENT='post tag table';

#
# Data for table "p_post_tag"
#

INSERT INTO `p_post_tag` VALUES (100000,100000,100000,'ccc',0,'2016-04-10 15:33:26','2016-04-10 15:33:26'),(100001,100000,100000,'ddd',0,'2016-04-10 15:33:26','2016-04-10 15:33:26'),(100002,100000,100000,'eee',0,'2016-04-10 15:33:26','2016-04-10 15:33:26'),(100003,100000,100001,'cc',0,'2016-04-10 15:37:13','2016-04-10 15:37:13'),(100004,100000,100001,'dd',0,'2016-04-10 15:37:13','2016-04-10 15:37:13'),(100005,100000,100001,'eee',0,'2016-04-10 15:37:13','2016-04-10 15:37:13'),(100006,100000,100002,'老婆大人',0,'2016-04-10 15:49:35','2016-04-10 15:49:35'),(100007,100000,100003,'afasfasf',0,'2016-04-10 21:28:52','2016-04-10 21:28:52'),(100008,100000,100003,'afafa',0,'2016-04-10 21:28:52','2016-04-10 21:28:52'),(100009,100000,100003,'fafaf',0,'2016-04-10 21:28:52','2016-04-10 21:28:52');

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
