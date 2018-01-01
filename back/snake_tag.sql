SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `snake_tag`;
CREATE TABLE `snake_tag` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL DEFAULT '' COMMENT '标签名',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态 1正常 0删除 2禁用',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

insert into `snake_tag`(`id`,`title`,`status`,`create_time`) values('1','PHP','1','1512360418');
insert into `snake_tag`(`id`,`title`,`status`,`create_time`) values('3','Mysql','1','1512539690');
insert into `snake_tag`(`id`,`title`,`status`,`create_time`) values('4','Linux','1','1512541759');
insert into `snake_tag`(`id`,`title`,`status`,`create_time`) values('5','jQuery','1','1513931666');
insert into `snake_tag`(`id`,`title`,`status`,`create_time`) values('6','性能','1','1514346408');
