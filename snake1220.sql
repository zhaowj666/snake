/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.53 : Database - snake
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

/*Table structure for table `snake_art_tag` */

DROP TABLE IF EXISTS `snake_art_tag`;

CREATE TABLE `snake_art_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `article_id` int(11) NOT NULL DEFAULT '0' COMMENT '文章ID',
  `tag_id` smallint(6) NOT NULL DEFAULT '0' COMMENT '标签ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `snake_art_tag` */

insert  into `snake_art_tag`(`id`,`article_id`,`tag_id`) values (2,1,4);

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `snake_articles` */

insert  into `snake_articles`(`id`,`title`,`description`,`keywords`,`thumbnail`,`content`,`add_time`) values (4,'每天一个linux命令（1）：ls','ls命令用来显示目标列表，在Linux中是使用率较高的命令。ls命令的输出信息可以进行彩色加亮显示，以分区不同类型的文件。','linux,ls','/upload/20171217/fcccccfddb4bc7e935ff51373e393379.jpg','<p><span style=\"font-family: 宋体, SimSun; font-size: 16px;\">ls命令用来显示目录列表，在linux中是使用率较高的命令。ls命令的输出可以进行彩色加亮显示，以区分不同类型的文件。<br/></span></p><p><br/></p><p><span style=\"font-family: 宋体, SimSun; font-size: 16px;\">ls : 不带任何参数，显示文件和目录，不显示隐藏文件，如 . ..等</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 16px;\">ls -a :列出所有文件，包括隐藏文件，如. 或以.开头的文件<br/></span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 16px;\">ls -l：列出文件或目录的详细信息。此命令可简写为 ll；</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 16px;\">&nbsp; &nbsp; drwxr-xr-x 3 zwj zwj 4096 Sep 16 09:39 test</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 16px;\">&nbsp; &nbsp;详解：第一列：第一个字母为d时，表示为目录，为-时表示文件；第2-4位字母表示该文件或目录拥有者的权限，第5-7位表示该目录拥有者所在组的权限，第9-10位表示其他人的权限；<br/></span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 16px;\">&nbsp; &nbsp;第二列：表示该目录下还有几个子目录或文件，包括其本身；<br/></span></p><p style=\"margin: 10px auto; padding: 0px; line-height: 1.5; font-size: 13px; font-family: verdana, &quot;ms song&quot;, 宋体, Arial, 微软雅黑, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: 宋体, SimSun; font-size: 16px;\">&nbsp; &nbsp;第三列：代表文件或者目录的所有者。</span></p><p style=\"margin: 10px auto; padding: 0px; line-height: 1.5; font-size: 13px; font-family: verdana, &quot;ms song&quot;, 宋体, Arial, 微软雅黑, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: 宋体, SimSun; font-size: 16px;\">&nbsp; &nbsp;第四列：代表文件或者目录的所有组。</span></p><p style=\"margin: 10px auto; padding: 0px; line-height: 1.5; font-size: 13px; font-family: verdana, &quot;ms song&quot;, 宋体, Arial, 微软雅黑, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: 宋体, SimSun; font-size: 16px;\">&nbsp; &nbsp;第五列：代表文件或者目录的大小，单位为字节（byte）</span></p><p style=\"margin: 10px auto; padding: 0px; line-height: 1.5; font-size: 13px; font-family: verdana, &quot;ms song&quot;, 宋体, Arial, 微软雅黑, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: 宋体, SimSun; font-size: 16px;\">&nbsp; &nbsp;第六/七/八列：代表文件或者目录的最后修改时间（月/日/时间）（使用[stat 文件名或者目录名] 用以查看文件或者目录的访问时间access，文件或者目录的修改时间modify，文件或者目录的状态改变时间change）</span></p><p style=\"margin: 10px auto; padding: 0px; line-height: 1.5; font-size: 13px; font-family: verdana, &quot;ms song&quot;, 宋体, Arial, 微软雅黑, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: 宋体, SimSun; font-size: 16px;\"> &nbsp; &nbsp;第九列：代表文件名或者目录名</span></p><p style=\"margin: 10px auto; padding: 0px; line-height: 1.5; font-size: 13px; font-family: verdana, &quot;ms song&quot;, 宋体, Arial, 微软雅黑, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: 宋体, SimSun; font-size: 16px;\">ls -t:以修改时间排序列出</span></p><p style=\"margin: 10px auto; padding: 0px; line-height: 1.5; white-space: normal; background-color: rgb(255, 255, 255);\"><font face=\"宋体, SimSun\">ls -d:显示当前所在目录自身属性，不显示其子目录和文件的属性；</font></p><p style=\"margin: 10px auto; padding: 0px; line-height: 1.5; white-space: normal; background-color: rgb(255, 255, 255);\"><font face=\"宋体, SimSun\">ls -h:与l配合使用，ls -lh:显示更容易理解的方式显示文件信息，如文件大小以k/m/g为单位<br/></font></p><p style=\"margin: 10px auto; padding: 0px; line-height: 1.5; white-space: normal; background-color: rgb(255, 255, 255);\"><font face=\"宋体, SimSun\">ls -R:显示所有子目录及文件</font></p>','2017-12-17 23:03:22'),(5,'每天一个linux命令（2）：cd','linux最基本的命令','linux,cd','/upload/20171218/4e74c078cae8f2919c2003f632be5198.jpg','<p>cd ：切换至目录<br/></p><p>&nbsp;&nbsp;&nbsp;&nbsp;cd / &nbsp; &nbsp;:切换至根目录下<br/></p><p>&nbsp;&nbsp;&nbsp;&nbsp;cd ../ &nbsp;：切换到上层目录<br/></p><p>&nbsp;&nbsp;&nbsp;&nbsp;cd ./目录1/目录2/ &nbsp;切换至当前目录下的某个子目录下<br/></p><p>&nbsp;&nbsp;&nbsp;&nbsp;cd /目录1/目录2/ &nbsp; 切换至根目录下的某个子目录下<br/></p><p>&nbsp;&nbsp;&nbsp;&nbsp;cd - &nbsp; &nbsp;返回进入此目录之前的目录；一直使用此命令，会在两个目录来回切换，并不会一直回退<br/></p><p>&nbsp;&nbsp;&nbsp;&nbsp;cd &nbsp;从任何目录返回至home目录<br/></p><p>&nbsp; &nbsp;&nbsp;<img src=\"/upload/image/20171218/1513603754727237.png\" title=\"1513603754727237.png\" alt=\"blob.png\"/></p>','2017-12-18 21:33:18'),(6,'linux 自动备份脚本','数据库自动备份','linux,mysql,备份','/upload/20171218/27f6b3fa8cbfe1fe6cdacf40842a26b6.jpg','<p><span style=\"font-weight: bold;\">备份脚本：</span></p><p>#!/bin/bash</p><p># MYSQLDBUSERNAME是MySQL数据库的用户名，可自定义</p><p>MYSQLDBUSERNAME=username</p><p># MYSQLDBPASSWORD是MySQL数据库的密码，可自定义</p><p>MYSQLDBPASSWORD=XXXXX</p><p># MYSQBASEDIR是MySQL数据库的安装目录，--prefix=$MYSQBASEDIR，可自定义</p><p>MYSQBASEDIR=/usr/local/mysql</p><p># MYSQL是mysql命令的绝对路径，可自定义</p><p>MYSQL=$MYSQBASEDIR/bin/mysql</p><p># MYSQLDUMP是mysqldump命令的绝对路径，可自定义</p><p>MYSQLDUMP=$MYSQBASEDIR/bin/mysqldump</p><p># BACKDIR是数据库备份的存放地址，可以自定义修改成远程地址</p><p>BACKDIR=/practice_test/crontabTestData/db/</p><p># 获取当前时间，格式为：年-月-日，用于生成以这种时间格式的目录名称</p><p>DATEFORMATTYPE1=$(date +%Y-%m-%d)</p><p># 获取当前时间，格式为：年月日时分秒，用于生成以这种时间格式的文件名称</p><p>DATEFORMATTYPE2=$(date +%Y%m%d%H%M%S)</p><p># 如果存在MYSQBASEDIR目录，则将MYSQDATADIR设置为$MYSQBASEDIR/data，具体是什么路径，就把data改成什么路径，否则将MYSQBASEDIR设定为/var/lib/mysql，可自定义</p><p>[ -d $MYSQBASEDIR ] &amp;&amp; MYSQDATADIR=$MYSQBASEDIR/data || MYSQDATADIR=/var/lib/mysql</p><p># 如果mysql命令存在并可执行，则继续，否则将MYSQL设定为mysql，默认路径下的mysql</p><p>[ -x $MYSQL ] || MYSQL=mysql</p><p># 如果mysqldump命令存在并可执行，则继续，否则将MYSQLDUMP设定为mysqldump，默认路径下的mysqldump</p><p>[ -x $MYSQLDUMP ] || MYSQLDUMP=mysqldump</p><p># 如果不存在备份目录则创建这个目录</p><p>[ -d ${BACKDIR} ] || mkdir -p ${BACKDIR}</p><p>[ -d ${BACKDIR}/${DATEFORMATTYPE1} ] || mkdir ${BACKDIR}/${DATEFORMATTYPE1}</p><p># 获取MySQL中有哪些数据库，根据mysqldatadir下的目录名字来确认，此处可以自定义，TODO</p><p>DBLIST=`ls -p $MYSQDATADIR | grep / |tr -d /`</p><p># 从数据库列表中循环取出数据库名称，执行备份操作</p><p>for DBNAME in $DBLIST</p><p># mysqldump skip one table</p><p># -- Warning: Skipping the data of table mysql.event. Specify the --events option explicitly.</p><p># mysqldump --ignore-table=mysql.event</p><p># http://serverfault.com/questions/376904/mysqldump-skip-one-table</p><p># --routines，备份存储过程和函数</p><p># --events，跳过mysql.event表</p><p># --triggers，备份触发器</p><p># --single-transaction，针对InnoDB，在单次事务中通过转储所有数据库表创建一个一致性的快照，此选项会导致自动锁表，因此不需要--lock-all-tables</p><p># --flush-logs，在dump转储前刷新日志</p><p># --ignore-table，忽略某个表，--ignore-table=database.table</p><p># --master-data=2 ，如果启用MySQL复制功能，则可以添加这个选项</p><p># 将dump出的sql语句用gzip压缩到一个以时间命名的文件</p><p>do ${MYSQLDUMP} --user=${MYSQLDBUSERNAME} --password=${MYSQLDBPASSWORD} --routines --events --triggers --single-transaction --flush-logs --ignore-table=mysql.event --databases ${DBNAME} | gzip &gt; ${BACKDIR}/${DATEFORMATTYPE1}/${DBNAME}-backup-${DATEFORMATTYPE2}.sql.gz</p><p># 检查执行结果，如果错误代码为0则输出成功，否则输出失败</p><p>[ $? -eq 0 ] &amp;&amp; echo &quot;${DBNAME} has been backuped successful&quot; || echo &quot;${DBNAME} has been backuped failed&quot;</p><p># 等待5s，可自定义</p><p>/bin/sleep 5</p><p>done</p><p><br/></p>','2017-12-18 22:14:19'),(7,'每天一个linux命令（3）：pwd','pwd 命令来查看”当前工作目录“的完整路径。','linux,pwd','/upload/20171220/b89ee204e3627849afbf27e605835b8c.jpg','<p style=\"margin: 0 auto 0 28px;padding: 0px;text-indent: 28px;color: rgb(51, 51, 51);font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 13.3333px;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"padding: 0px; font-family: 宋体, SimSun; font-size: 16px; color: rgb(0, 0, 0);\"></span></p><p style=\"margin: 10px auto; font-family: verdana, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>语法</strong></p><p style=\"margin: 10px auto; font-family: verdana, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 14px;\">pwd [ -L | -P ]</span></p><p style=\"margin: 10px auto; font-family: verdana, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>描述</strong></p><p style=\"margin: 10px auto; font-family: verdana, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-family: 宋体, SimSun; font-size: 16px;\">pwd 命令将当前目录的全路径名称（从根目录）写入标准输出。全部目录使用 /（斜线）分隔。第一个 / 表示根目录，最后一个目录是当前目录。</span></p><p style=\"margin: 10px auto; font-family: verdana, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>标志</strong></p><p style=\"margin: 10px auto; font-family: verdana, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-family: 宋体, SimSun; font-size: 16px;\">-L</span></p><p style=\"margin: 10px auto; font-family: verdana, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-family: 宋体, SimSun; font-size: 16px;\">如果 PWD 环境变量包含了不包含文件名 .（点）或 ..（点点）的当前目录的绝对路径名，则显示 PWD 环境变量的值。否则，-L 标志与 -P 标志一样运行。</span></p><p style=\"margin: 10px auto; font-family: verdana, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-family: 宋体, SimSun; font-size: 16px;\">-P</span></p><p style=\"margin: 10px auto; font-family: verdana, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-family: 宋体, SimSun; font-size: 16px;\">显示当前目录的绝对路径名。与 -P 标志一起显示的绝对路径不包含在路径名的绝对路径中涉及到符号链接类型的文件的名称。</span></p><p style=\"margin: 10px auto; font-family: verdana, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"margin: 0 auto 0 28px;padding: 0px;text-indent: 28px;color: rgb(51, 51, 51);font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 13.3333px;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"color: rgb(0, 0, 0); padding: 0px; font-size: 14px; font-family: 宋体;\"></span><br/></p><p><br/></p>','2017-12-20 21:41:51'),(8,'每天一个linux命令（4）：mkdir','mkdir用来创建指定名称的目录（文件夹），要求执行创建的用户拥有写权限，并且不能创建已有的目录。','linux,mkdir','/upload/20171220/883aa3ab559fdd0d3144a3eb9cbd0b4c.jpg','<p><span style=\"font-family: 宋体, SimSun;\"><span style=\"color: rgb(51, 51, 51); font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">通过&nbsp;</span>mkdir</span><span style=\"font-family:Times New Roman\">&nbsp;</span><span style=\"font-family:宋体\">命令可以实现在指定位置创建以&nbsp;</span><span style=\"font-family:Times New Roman\">DirName(</span><span style=\"font-family:宋体\">指定的文件名</span><span style=\"font-family:Times New Roman\">)</span><span style=\"font-family:宋体\">命名的文件夹或目录。要创建文件夹或目录的用户必须对所创建的文件夹的父文件夹具有写权限。并且，所创建的文件夹</span><span style=\"font-family:Times New Roman\">(</span><span style=\"font-family:宋体\">目录</span><span style=\"font-family:Times New Roman\">)</span><span style=\"font-family:宋体\">不能与其父目录</span><span style=\"font-family:Times New Roman\">(</span><span style=\"font-family:宋体\">即父文件夹</span><span style=\"font-family:Times New Roman\">)</span><span style=\"font-family:宋体\">中的文件名重名，即同一个目录下不能有同名的</span><span style=\"font-family:Times New Roman\">(</span><span style=\"font-family:宋体\">区分大小写</span><span style=\"font-family:Times New Roman\">)</span><span style=\"font-family:宋体\">。</span></p><p><span style=\"font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); text-indent: 28px;\">&nbsp;&nbsp;&nbsp;&nbsp;-m,&nbsp;--mode=</span><span style=\"font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); text-indent: 28px;\">模式，设定权限</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); text-indent: 28px; font-family: &quot;Times New Roman&quot;;\">&lt;</span><span style=\"font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); text-indent: 28px;\">模式</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); text-indent: 28px; font-family: &quot;Times New Roman&quot;;\">&gt;&nbsp;(</span><span style=\"font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); text-indent: 28px;\">类似&nbsp;</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); text-indent: 28px; font-family: &quot;Times New Roman&quot;;\">chmod)</span><span style=\"font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); text-indent: 28px;\">，而不是&nbsp;</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); text-indent: 28px; font-family: &quot;Times New Roman&quot;;\">rwxrwxrwx&nbsp;</span><span style=\"font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); text-indent: 28px;\">减&nbsp;</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); text-indent: 28px; font-family: &quot;Times New Roman&quot;;\">umask</span></p><p style=\"margin: 0 auto 0 28px;padding: 0px;text-indent: 28px;color: rgb(51, 51, 51);font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 13.3333px;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\";padding: 0px;font-size: 14px;font-family: 宋体\">-p,&nbsp;--parents&nbsp;&nbsp;</span><span style=\";padding: 0px;color: rgb(42, 42, 42);font-size: 14px;font-family: &#39;Segoe UI&#39;;background-color: rgb(245, 250, 255)\">可以是一个路径名称。此时若路径中的某些目录尚不存在<span style=\"font-family:Segoe UI\">,</span><span style=\"font-family:宋体\">加上此选项后</span><span style=\"font-family:Segoe UI\">,</span><span style=\"font-family:宋体\">系统将自动建立好那些尚不存在的目录</span><span style=\"font-family:Segoe UI\">,</span><span style=\"font-family:宋体\">即一次可以建立多个目录</span><span style=\"font-family:Segoe UI\">;</span></span><span style=\";padding: 0px;font-size: 14px;font-family: &#39;Times New Roman&#39;\">&nbsp;</span></p><p style=\"margin: 0 auto 0 28px;padding: 0px;text-indent: 28px;color: rgb(51, 51, 51);font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 13.3333px;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\";padding: 0px;font-size: 14px;font-family: 宋体\">-v,&nbsp;--verbose&nbsp;&nbsp;<span style=\"font-family:宋体\">每次创建新目录都显示信息</span></span></p><p style=\"margin: 0 auto 0 28px;padding: 0px;text-indent: 28px;color: rgb(51, 51, 51);font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 13.3333px;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\";padding: 0px;font-size: 14px;font-family: 宋体\">&nbsp; &nbsp;--help&nbsp;&nbsp;&nbsp;<span style=\"font-family:宋体\">显示此帮助信息并退出</span></span></p><p style=\"margin: 0 auto 0 28px;padding: 0px;text-indent: 28px;color: rgb(51, 51, 51);font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 13.3333px;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\";padding: 0px;font-size: 14px;font-family: 宋体\">&nbsp; &nbsp;--version&nbsp;&nbsp;<span style=\"font-family:宋体\">输出版本信息并退出</span></span></p><p><br/></p><p><span style=\"font-family:宋体\"><img src=\"/upload/image/20171220/1513777853911370.png\" title=\"1513777853911370.png\" alt=\"blob.png\"/></span></p><p><span style=\"font-family:宋体\">创建多级目录：mkdir -p test1/test2</span></p><p><font face=\"宋体\">创建制定权限的目录：mkdir -m 777 t3</font></p><p><font face=\"宋体\"><img src=\"/upload/image/20171220/1513778143134646.png\" title=\"1513778143134646.png\" alt=\"blob.png\"/></font></p><p><font face=\"宋体\"><img src=\"/upload/image/20171220/1513778353399076.png\" title=\"1513778353399076.png\" alt=\"blob.png\"/></font></p>','2017-12-20 21:59:19'),(16,'每天一个linux命令（5）：','XXX','linux','/upload/20171220/cf6c2198ca8dc3b2ab77d4177cbbe107.jpg','<p>fsedf</p>','2017-12-20 23:17:16');

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

insert  into `snake_user`(`id`,`user_name`,`password`,`login_times`,`last_login_ip`,`last_login_time`,`real_name`,`status`,`role_id`) values (1,'admin','21232f297a57a5a743894a0e4a801fc3',55,'127.0.0.1',1513776595,'admin',1,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
