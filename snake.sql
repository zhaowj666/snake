/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.5.40 : Database - snake
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`snake` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `snake`;

/*Table structure for table `snake_articles` */

DROP TABLE IF EXISTS `snake_articles`;

CREATE TABLE `snake_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `title` varchar(155) NOT NULL COMMENT '文章标题',
  `description` varchar(255) NOT NULL COMMENT '文章描述',
  `keywords` varchar(155) NOT NULL COMMENT '文章关键字',
  `thumbnail` varchar(255) NOT NULL COMMENT '文章缩略图',
  `content` text NOT NULL COMMENT '文章内容',
  `add_time` datetime NOT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `snake_articles` */

insert  into `snake_articles`(`id`,`title`,`description`,`keywords`,`thumbnail`,`content`,`add_time`) values (3,'测试一下','本文章测试下项目安装情况','测试','/upload/20171129/46cafcd20b2c375d83ea81c3e6bde2a1.jpg','<p>1、放到空间沙发健康发送到</p><p>2、测试环境</p><p>3、熟悉TP5</p><p>4、。。。。</p>','2017-11-29 14:01:16');

/*Table structure for table `snake_node` */

DROP TABLE IF EXISTS `snake_node`;

CREATE TABLE `snake_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_name` varchar(155) NOT NULL DEFAULT '' COMMENT '节点名称',
  `control_name` varchar(155) NOT NULL DEFAULT '' COMMENT '控制器名',
  `action_name` varchar(155) NOT NULL COMMENT '方法名',
  `is_menu` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否是菜单项 1不是 2是',
  `type_id` int(11) NOT NULL COMMENT '父级节点id',
  `style` varchar(155) DEFAULT '' COMMENT '菜单样式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `snake_node` */

insert  into `snake_node`(`id`,`node_name`,`control_name`,`action_name`,`is_menu`,`type_id`,`style`) values (1,'用户管理','#','#',2,0,'fa fa-users'),(2,'管理员管理','user','index',2,1,''),(3,'添加管理员','user','useradd',1,2,''),(4,'编辑管理员','user','useredit',1,2,''),(5,'删除管理员','user','userdel',1,2,''),(6,'角色管理','role','index',2,1,''),(7,'添加角色','role','roleadd',1,6,''),(8,'编辑角色','role','roleedit',1,6,''),(9,'删除角色','role','roledel',1,6,''),(10,'分配权限','role','giveaccess',1,6,''),(11,'系统管理','#','#',2,0,'fa fa-desktop'),(12,'数据备份/还原','data','index',2,11,''),(13,'备份数据','data','importdata',1,12,''),(14,'还原数据','data','backdata',1,12,''),(15,'节点管理','node','index',2,1,''),(16,'添加节点','node','nodeadd',1,15,''),(17,'编辑节点','node','nodeedit',1,15,''),(18,'删除节点','node','nodedel',1,15,''),(19,'文章管理','articles','index',2,0,'fa fa-book'),(20,'文章列表','articles','index',2,19,''),(21,'添加文章','articles','articleadd',1,19,''),(22,'编辑文章','articles','articleedit',1,19,''),(23,'删除文章','articles','articledel',1,19,''),(24,'上传图片','articles','uploadImg',1,19,''),(25,'标签管理','#tag','#',2,0,'fa fa-bookmark'),(26,'标签云','tag','index',2,25,''),(27,'添加标签','tag','tagadd',1,25,'');

/*Table structure for table `snake_role` */

DROP TABLE IF EXISTS `snake_role`;

CREATE TABLE `snake_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `role_name` varchar(155) NOT NULL COMMENT '角色名称',
  `rule` varchar(255) DEFAULT '' COMMENT '权限节点数据',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `snake_role` */

insert  into `snake_role`(`id`,`role_name`,`rule`) values (1,'超级管理员','*'),(2,'系统维护员','1,2,3,4,5,6,7,8,9,10');

/*Table structure for table `snake_tag` */

DROP TABLE IF EXISTS `snake_tag`;

CREATE TABLE `snake_tag` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL DEFAULT '' COMMENT '标签名',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态 1正常 0删除 2禁用',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `snake_tag` */

insert  into `snake_tag`(`id`,`title`,`status`,`create_time`) values (1,'PHP',1,1512360418),(3,'Mysql',1,1512539690),(4,'Linux',1,1512541759);

/*Table structure for table `snake_user` */

DROP TABLE IF EXISTS `snake_user`;

CREATE TABLE `snake_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '密码',
  `login_times` int(11) NOT NULL DEFAULT '0' COMMENT '登陆次数',
  `last_login_ip` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '最后登录IP',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `real_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '真实姓名',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `role_id` int(11) NOT NULL DEFAULT '1' COMMENT '用户角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `snake_user` */

insert  into `snake_user`(`id`,`user_name`,`password`,`login_times`,`last_login_ip`,`last_login_time`,`real_name`,`status`,`role_id`) values (1,'admin','21232f297a57a5a743894a0e4a801fc3',51,'127.0.0.1',1512533040,'admin',1,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
