SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `snake_art_tag`;
CREATE TABLE `snake_art_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `article_id` int(11) NOT NULL DEFAULT '0' COMMENT '文章ID',
  `tag_id` smallint(6) NOT NULL DEFAULT '0' COMMENT '标签ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

insert into `snake_art_tag`(`id`,`article_id`,`tag_id`) values('2','1','4');
insert into `snake_art_tag`(`id`,`article_id`,`tag_id`) values('3','17','5');
insert into `snake_art_tag`(`id`,`article_id`,`tag_id`) values('4','18','1');
insert into `snake_art_tag`(`id`,`article_id`,`tag_id`) values('5','4','4');
insert into `snake_art_tag`(`id`,`article_id`,`tag_id`) values('6','5','4');
insert into `snake_art_tag`(`id`,`article_id`,`tag_id`) values('8','7','4');
insert into `snake_art_tag`(`id`,`article_id`,`tag_id`) values('12','16','4');
insert into `snake_art_tag`(`id`,`article_id`,`tag_id`) values('13','6','3');
insert into `snake_art_tag`(`id`,`article_id`,`tag_id`) values('14','6','4');
insert into `snake_art_tag`(`id`,`article_id`,`tag_id`) values('18','20','1');
