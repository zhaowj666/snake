SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `snake_music`;
CREATE TABLE `snake_music` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '歌曲名称',
  `singer` varchar(30) NOT NULL DEFAULT '' COMMENT '歌手',
  `img_path` varchar(100) NOT NULL DEFAULT '' COMMENT '图片地址',
  `music_path` varchar(100) NOT NULL DEFAULT '' COMMENT '音乐地址',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

insert into `snake_music`(`id`,`title`,`singer`,`img_path`,`music_path`,`status`,`create_time`) values('1','一生所爱','卢冠廷','/upload/20171228/016037bc2c9ce7e2cf63d4e9909bd34a.png','p1lw004fl.bkt.clouddn.com/lmTJIPGiVF3sZPp5l5H56h9Ppfx1','1','1514420807');
insert into `snake_music`(`id`,`title`,`singer`,`img_path`,`music_path`,`status`,`create_time`) values('2','凉凉','杨宗纬 张碧晨','/upload/20171228/fc2c03a54cf7b249ce5c1ad02b4832b4.png','p1lw004fl.bkt.clouddn.com/liednXsck9_QWmdgnHYCwOaYx7jK','1','1514421807');
insert into `snake_music`(`id`,`title`,`singer`,`img_path`,`music_path`,`status`,`create_time`) values('4','悟空','戴荃','/upload/20171228/87f18a1c3c09ec3b9871fa8b69c6f24b.png','p1lw004fl.bkt.clouddn.com/FuIRvt-HlRmDe_M0Aft5wB3-SNSQ','1','1514431807');
insert into `snake_music`(`id`,`title`,`singer`,`img_path`,`music_path`,`status`,`create_time`) values('7','The Last of the Mohicans（最后的莫西干人）','Alborada Del Inka ','/upload/20171228/d3468514d28909174f444f35961db15a.png','p1lw004fl.bkt.clouddn.com/ln7IwI2OodmTId5cHWXSZzXsusEd','1','1514439506');
insert into `snake_music`(`id`,`title`,`singer`,`img_path`,`music_path`,`status`,`create_time`) values('9','光辉岁月 - 粤语','黄家驹','/upload/20171228/f3caaf1903c85583c33d457f465b1fb5.png','p1lw004fl.bkt.clouddn.com/lh7QCQF0pM_aBWjex5vloDpuR9oR','1','1514442499');
insert into `snake_music`(`id`,`title`,`singer`,`img_path`,`music_path`,`status`,`create_time`) values('10','刚好遇见你','李玉刚','/upload/20171229/5ff2cb0c6d9e3f1e86594112d10f32ea.png','p1lw004fl.bkt.clouddn.com/lvvQlq6O97jAor-UvRdcan_skVZN','1','1514555949');
