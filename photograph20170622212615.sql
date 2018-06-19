-- MySQL dump 10.13  Distrib 5.5.47, for Win32 (x86)
--
-- Host: localhost    Database: photograph
-- ------------------------------------------------------
-- Server version	5.5.47

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pg_admin`
--

DROP TABLE IF EXISTS `pg_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pg_admin` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '信息id',
  `username` varchar(30) NOT NULL COMMENT '用户名',
  `password` char(32) NOT NULL COMMENT '密码',
  `nickname` char(32) NOT NULL COMMENT '昵称',
  `checkadmin` int(3) NOT NULL COMMENT '审核',
  `loginip` char(20) NOT NULL COMMENT '登录IP',
  `logintime` int(10) unsigned NOT NULL COMMENT '登录时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pg_admin`
--

LOCK TABLES `pg_admin` WRITE;
/*!40000 ALTER TABLE `pg_admin` DISABLE KEYS */;
INSERT INTO `pg_admin` VALUES (1,'admin','c3284d0f94606de1fd2af172aba15bf3','ssssss',1,'0.0.0.0',1495075475),(5,'root','c3284d0f94606de1fd2af172aba15bf3','admin',1,'',1495457724),(26,'user ','c3284d0f94606de1fd2af172aba15bf3','',1,'0.0.0.0',1495457739),(27,'user5','c3284d0f94606de1fd2af172aba15bf3','admin',1,'0.0.0.0',1495457753),(29,'ppppp','ff92a240d11b05ebd392348c35f781b2','',1,'0.0.0.0',1494648070),(30,'绅士','c35a31da2eabccb38db1a37674c06077','绅士',1,'0.0.0.0',1494946773),(31,'绅士','c35a31da2eabccb38db1a37674c06077','绅士',1,'0.0.0.0',1494946796),(32,'admin','admin','ad',0,'',0);
/*!40000 ALTER TABLE `pg_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pg_fragment`
--

DROP TABLE IF EXISTS `pg_fragment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pg_fragment` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '碎片数据id',
  `title` varchar(30) NOT NULL COMMENT '碎片数据名称',
  `picurl` varchar(80) NOT NULL COMMENT '碎片数据缩略图',
  `linkurl` varchar(80) NOT NULL COMMENT '碎片数据连接',
  `content` mediumtext NOT NULL COMMENT '碎片数据内容',
  `posttime` int(10) unsigned NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pg_fragment`
--

LOCK TABLES `pg_fragment` WRITE;
/*!40000 ALTER TABLE `pg_fragment` DISABLE KEYS */;
/*!40000 ALTER TABLE `pg_fragment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pg_imgs`
--

DROP TABLE IF EXISTS `pg_imgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pg_imgs` (
  `id` mediumint(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '上传信息id',
  `infoimgid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `name` varchar(30) NOT NULL COMMENT '文件名称',
  `path` varchar(100) NOT NULL COMMENT '文件路径',
  `size` int(10) NOT NULL COMMENT '文件大小',
  `type` enum('image','soft','media') NOT NULL COMMENT '文件类型',
  `posttime` int(10) NOT NULL COMMENT '上传日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pg_imgs`
--

LOCK TABLES `pg_imgs` WRITE;
/*!40000 ALTER TABLE `pg_imgs` DISABLE KEYS */;
INSERT INTO `pg_imgs` VALUES (1,0,'1494856538.jpg','uploads/image/20170515/1494856538.jpg',72946,'image',1494850898),(4,0,'1494853543.jpg','uploads/image/20170515/1494853543.jpg',72946,'image',1494851565),(3,0,'1494859228.jpg','uploads/image/20170515/1494859228.jpg',31108,'image',1494850958),(5,0,'1494860641.jpg','uploads/image/20170515/1494860641.jpg',31108,'image',1494851568),(6,0,'1494858164.jpg','uploads/image/20170515/1494858164.jpg',72946,'image',1494852139),(7,0,'1495096408.jpg','uploads/image/20170518/1495096408.jpg',9438,'image',1495091123),(8,0,'1495098254.jpg','uploads/image/20170518/1495098254.jpg',25535,'image',1495091322),(9,0,'1495096998.jpg','uploads/image/20170518/1495096998.jpg',25535,'image',1495095850),(10,0,'1495099452.jpg','uploads/image/20170518/1495099452.jpg',59636,'image',1495095857);
/*!40000 ALTER TABLE `pg_imgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pg_info`
--

DROP TABLE IF EXISTS `pg_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pg_info` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '单页id',
  `classid` smallint(5) unsigned NOT NULL COMMENT '所属栏目id',
  `picurl` varchar(100) NOT NULL COMMENT '缩略图片',
  `content` mediumtext NOT NULL COMMENT '内容',
  `posttime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `checkinfo` tinyint(3) unsigned DEFAULT NULL COMMENT '审核状态',
  `address` varchar(100) NOT NULL DEFAULT '' COMMENT '地址',
  `telephone` varchar(50) NOT NULL DEFAULT '' COMMENT '电话号码',
  `fax` varchar(100) NOT NULL DEFAULT '' COMMENT '传真',
  `contacts` varchar(100) NOT NULL DEFAULT '0' COMMENT '联系人/电话号码',
  `zip` varchar(50) NOT NULL DEFAULT '' COMMENT '邮编',
  `mailbox` varchar(50) NOT NULL DEFAULT '0' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pg_info`
--

LOCK TABLES `pg_info` WRITE;
/*!40000 ALTER TABLE `pg_info` DISABLE KEYS */;
INSERT INTO `pg_info` VALUES (7,20,'2017-06-22/594b91024c5f9.jpg','<div class=\"row\">\r\n								<h2><b>我们的工作室</b></h2>\r\n				<p>据最近Alex排名显示，新华网在全球7亿多个网站中综合排名第70位，大幅领先美联社、路透社、法新社等通讯社主办的网站，国内综合排名第11位，稳居新闻门户网站首位。在中央网信办主管的《网络传播》杂志发布的中央重点新闻网站传播力榜单中，连续5个月稳居PC端传播力排名首位，10月、11月综合传播力排名首位，远超同类网站。\r\n				新华网的网络平台价值和品牌影响力得到各界广泛认可，温家宝同志连续三年接受中国政府网和新华网的联合专访，俄罗斯总理梅德韦杰夫、以色列总理内塔尼亚胡、哈萨克斯坦总统纳扎尔巴耶夫等有影响力的大国政要也通过新华网首次与全球网民在线交流。\r\n				新华网拥有众多中国新闻奖和中国互联网站获奖作品和品牌栏目，在2015年第二十五届中国新闻奖评选中，新华网参评的《国际传播：习近平的大外交》《网页设计：简政放权--持续改革再发力》和《新闻名专栏：数据新闻》获一等奖，获奖层级和数量均居中国网络媒体首位。此外，新华网还是“中国优秀文化网站”、“中国网站最具影响力品牌”、“中国新媒体年度十大品牌”、“中国新媒体创新年度品牌”等业内重要奖项的获得者。据最近Alex排名显示，新华网在全球7亿多个网站中综合排名第70位，大幅领先美联社、路透社、法新社等通讯社主办的网站，国内综合排名第11位，稳居新闻门户网站首位。在中央网信办主管的《网络传播》杂志发布的中央重点新闻网站传播力榜单中，连续5个月稳居PC端传播力排名首位，10月、11月综合传播力排名首位，远超同类网站。\r\n				新华网的网络平台价值和品牌影响力得到各界广泛认可，温家宝同志连续三年接受中国政府网和新华网的联合专访，俄罗斯总理梅德韦杰夫、以色列总理内塔尼亚胡、哈萨克斯坦总统纳扎尔巴耶夫等有影响力的大国政要也通过新华网首次与全球网民在线交流。\r\n				新华网拥有众多中国新闻奖和中国互联网站获奖作品和品牌栏目，在2015年第二十五届中国新闻奖评选中，新华网参评的《国际传播：习近平的大外交》《网页设计：简政放权--持续改革再发力》和《新闻名专栏：数据新闻》获一等奖，获奖层级和数量均居中国网络媒体首位。此外，新华网还是“中国优秀文化网站”、“中国网站最具影响力品牌”、“中国新媒体年度十大品牌”、“中国新媒体创新年度品牌”等业内重要奖项的获得者。</p>\r\n			</div>\r\n			<div class=\"row\">\r\n				<h4><b>新华网在全球7亿多个网站中综合排名第70位</b></h4>\r\n				<p>据最近Alex排名显示，新华网在全球7亿多个网站中综合排名第70位，大幅领先美联社、路透社、法新社等通讯社主办的网站，国内综合排名第11位，稳居新闻门户网站首位。在中央网信办主管的《网络传播》杂志发布的中央重点新闻网站传播力榜单中，连续5个月稳居PC端传播力排名首位，10月、11月综合传播力排名首位，远超同类网站。\r\n				新华网的网络平台价值和品牌影响力得到各界广泛认可，温家宝同志连续三年接受中国政府网和新华网的联合专访，俄罗斯总理梅德韦杰夫、以色列总理内塔尼亚胡、哈萨克斯坦总统纳扎尔巴耶夫等有影响力的大国政要也通过新华网首次与全球网民在线交流。\r\n				新华网拥有众多中国新闻奖和中国互联网站获奖作品和品牌栏目，在2015年第二十五届中国新闻奖评选中，新华网参评的《国际传播：习近平的大外交》《网页设计：简政放权--持续改革再发力》和《新闻名专栏：数据新闻》获一等奖，获奖层级和数量均居中国网络媒体首位。此外，新华网还是“中国优秀文化站最具影响力品名第70位，大幅领先美联社、路透社、法新社等通讯社主办的网站，国内综合排名第11位，稳居主管的《网络传播》杂志发布的中央\r\n网站获奖作品和品牌栏目，在2015年第二十五届中国新闻奖评选中，新华网参评的《国际传播：习近平的大外交》《网页设计：简政网络媒体首位。此外，新华网还是“中国优秀文化网站”、“中国网站最具影响力品牌”、“中国新媒体年度十大品牌”、“中国新媒体创新年度品牌”等业内重要奖项的获得者。</p>\r\n			</div>\r\n			<div class=\"row\">\r\n				<h4><b>新华网在全球7亿多个网站中综合排名第70位</b></h4>\r\n				<p>据最近Alex排名显示，新华网在全球7亿多个网站中综合排名第70位，大幅领先美联社、路透社、法新社等通讯社主办的网站，国内综\r\n				新华网拥有众多中国新闻奖和中国互联网站获奖作品和品牌栏目，在2015年第二十五届中国新闻站最具影响力品牌”、“中国新媒体年度十大品牌”、“中国新媒体创新年度品牌”等业内重要奖项的获得者。据最近、11月综合传播力排名首位，远超同类网站。\r\n				新华网的网络平台价值和品牌影响力得到各界广泛认可，温家宝同志连续三年接受中国政府网和新华网的联合专访，俄罗斯总理梅德韦杰夫、以色列总理内塔尼亚胡、哈萨克斯坦总统纳扎尔巴耶夫等有影响力的大国政要也通过新华网首次与全球网民在线交流。\r\n		简政放权--持续改革再发力》和《新闻名专栏：数据新闻》获一等奖，获奖层级和数量均居中国网络媒体首位。此外，新华网还是“中国优秀文化网站”、“中国网站最具影响力品牌”、“中国新媒体年度十大品牌”、“中国新媒体创新年度品牌”等业内重要奖项的获得者。</p>\r\n			</div>\r\n			<div class=\"row\">\r\n				<h4><b>新华网在全球7亿多个网站中综合排名第70位</b></h4>\r\n				<p>据最近Alex排名显示，新华网在全球7亿多个网站中综合排名第70位，11月综合传播力排名首位，远超同类网站。\r\n				新华新华网在全球7亿多个网站中综合排名第70位，大幅领先美联社、路透社、法新社等通讯\r\n			</div>',1498013954,2,'洛阳市凹凸科技有限公司','','0371-110110110','张三  18437555555','016542·','6354254@163.com');
/*!40000 ALTER TABLE `pg_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pg_infoclass`
--

DROP TABLE IF EXISTS `pg_infoclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pg_infoclass` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '栏目id',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '站点id',
  `infotype` tinyint(1) unsigned NOT NULL COMMENT '栏目类型',
  `classname` varchar(30) NOT NULL COMMENT '栏目名称',
  `linkurl` varchar(255) NOT NULL COMMENT '跳转链接',
  `picurl` varchar(100) NOT NULL COMMENT '缩略图片',
  `picwidth` varchar(5) NOT NULL COMMENT '缩略图宽度',
  `picheight` varchar(5) NOT NULL COMMENT '缩略图高度',
  `seotitle` varchar(80) NOT NULL COMMENT 'SEO标题',
  `keywords` varchar(50) NOT NULL COMMENT '关键词',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `orderid` smallint(5) unsigned NOT NULL COMMENT '排列排序',
  `checkinfo` tinyint(3) unsigned DEFAULT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pg_infoclass`
--

LOCK TABLES `pg_infoclass` WRITE;
/*!40000 ALTER TABLE `pg_infoclass` DISABLE KEYS */;
INSERT INTO `pg_infoclass` VALUES (16,1,0,'婚礼','','','','','','','',0,1),(17,1,0,'儿童','','','','','','','',0,1),(18,1,0,'美妆/搭配','','','','','','','',0,1),(19,1,0,'风景','','','','','','','',0,1),(20,1,0,'关于我们','','','','','','','',0,1),(21,1,0,'幻灯','','','','','','','',0,1),(22,1,0,'专辑','','','','','','','',0,1),(15,1,0,'旅行','','','','','','','',0,1);
/*!40000 ALTER TABLE `pg_infoclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pg_infoimg`
--

DROP TABLE IF EXISTS `pg_infoimg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pg_infoimg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '图片信息id',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '站点id',
  `classid` smallint(5) unsigned NOT NULL COMMENT '所属栏目id',
  `title` varchar(80) NOT NULL COMMENT '标题',
  `source` varchar(50) NOT NULL COMMENT '文章来源',
  `author` varchar(50) NOT NULL COMMENT '作者编辑',
  `linkurl` varchar(255) NOT NULL COMMENT '跳转链接',
  `keywords` varchar(50) NOT NULL COMMENT '关键词',
  `description` varchar(255) NOT NULL COMMENT '摘要',
  `content` mediumtext NOT NULL COMMENT '详细内容',
  `picurl` varchar(100) NOT NULL COMMENT '缩略图片',
  `picarr` text NOT NULL COMMENT '组图',
  `hits` mediumint(8) unsigned NOT NULL COMMENT '点击次数',
  `orderid` int(10) unsigned NOT NULL COMMENT '排列排序',
  `posttime` int(10) NOT NULL COMMENT '更新时间',
  `checkinfo` tinyint(3) unsigned DEFAULT NULL COMMENT '审核状态',
  `delstate` set('true') NOT NULL COMMENT '删除状态',
  `deltime` int(10) unsigned NOT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pg_infoimg`
--

LOCK TABLES `pg_infoimg` WRITE;
/*!40000 ALTER TABLE `pg_infoimg` DISABLE KEYS */;
INSERT INTO `pg_infoimg` VALUES (16,1,19,'abc','','user','','','									','				','2017-06-21/5949ddd3d4aae.jpg','',0,0,0,1,'',0),(17,1,17,'哈哈','','user','','','','				','2017-06-21/5949e009d2685.jpg','',0,0,0,1,'',0),(18,1,21,'首页幻灯','','杨','','','','','2017-06-21/594a14d46eb42.jpg','',0,0,0,1,'',0),(19,1,21,'首页幻灯','','杨','','','','','2017-06-21/594a153a96073.jpg','',0,0,0,1,'',0),(20,1,21,'首页幻灯','','user','','','','','2017-06-21/594a156132620.jpg','',0,0,0,1,'',0),(21,1,17,'娃娃','','张三','','','','','2017-06-21/594a3f7c831a0.jpg','',0,0,0,1,'',0),(22,1,19,'123','','123','','','','','2017-06-21/594a3fb2372c5.jpg','',0,0,0,1,'',0),(23,1,22,'专辑1','','user','','','','<p>形象打扮具有异性的特质，也保留着自身性别的特质，表现出阴阳融合的风格</p><p><br></p>				','2017-06-22/594b912572644.jpg','',0,0,0,1,'',0),(24,1,22,'专辑2','','YY','','','','<p>表现出阴阳融合的风格，形象打扮具有异性的特质，也保留着自身性别的特质，</p><p><br></p>				','2017-06-22/594b913791a57.jpg','',0,0,0,1,'',0),(25,1,22,'专辑3','','YY','','','','				<p>将阴柔和阳刚进行平衡的混合，创造出了独特崭新的风格</p><p><br></p>				','2017-06-22/594b914a99c12.jpg','',0,0,0,1,'',0),(26,1,17,'','','user','','','','asdasdasd','2017-06-22/594bb132d4273.jpg','',0,0,0,1,'',0),(27,1,17,'','','user','','','','22222222222222222222222222222222222222','2017-06-22/594bb1c68e56f.jpg','',0,0,0,1,'',0),(28,1,18,'','','user','','','','222222222222222222','2017-06-22/594bb1e594c02.jpg','',0,0,0,1,'',0),(29,1,15,'','','user','','','','我是一只小花猫','2017-06-22/594bb3bf43597.jpg','',0,0,0,1,'',0),(30,1,17,'','','user','','','','小猫','2017-06-22/594bc48b6adb8.jpg','',0,0,0,1,'',0),(31,1,15,'','','user','','','','小猫','2017-06-22/594bc4b897259.jpg','',0,0,0,1,'',0);
/*!40000 ALTER TABLE `pg_infoimg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pg_member`
--

DROP TABLE IF EXISTS `pg_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pg_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(32) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `enname` varchar(20) NOT NULL COMMENT '英文名',
  `avatar` varchar(100) NOT NULL COMMENT '头像',
  `sex` tinyint(1) unsigned NOT NULL COMMENT '性别',
  `intro` text NOT NULL COMMENT '个人说明',
  `email` varchar(40) NOT NULL COMMENT '电子邮件',
  `qqnum` varchar(20) NOT NULL COMMENT 'QQ号码',
  `mobile` varchar(20) NOT NULL COMMENT '手机',
  `telephone` varchar(20) NOT NULL COMMENT '固定电话',
  `enteruser` tinyint(3) unsigned DEFAULT NULL COMMENT '认证',
  `expval` int(10) NOT NULL COMMENT '经验值',
  `integral` int(10) unsigned NOT NULL COMMENT '积分',
  `regtime` int(10) unsigned NOT NULL COMMENT '注册时间',
  `regip` varchar(20) NOT NULL COMMENT '注册IP',
  `logintime` int(10) unsigned NOT NULL COMMENT '登录时间',
  `loginip` varchar(20) NOT NULL COMMENT '登录IP',
  `qqid` varchar(32) NOT NULL COMMENT '绑定QQ',
  `weiboid` varchar(32) NOT NULL COMMENT '绑定微博',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pg_member`
--

LOCK TABLES `pg_member` WRITE;
/*!40000 ALTER TABLE `pg_member` DISABLE KEYS */;
INSERT INTO `pg_member` VALUES (1,'user','123456789','TestUser','2017-06-22/594b92d5244ec.jpg',0,'','webmaster@phpmywind.com','','1111111111','22222222222',1,20,0,1350904403,'127.0.0.1',1498129482,'0.0.0.0','',''),(3,'123456','123456789','','',0,'','962100590@qq.com','','','',1,0,0,0,'',1496540594,'','',''),(12,'user123','yangguang','','',0,'','126542@qq.com','','','',NULL,0,0,0,'',1498129270,'0.0.0.0','','');
/*!40000 ALTER TABLE `pg_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pg_site`
--

DROP TABLE IF EXISTS `pg_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pg_site` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `webname` varchar(255) NOT NULL DEFAULT '' COMMENT '网站名称',
  `weburl` varchar(255) NOT NULL DEFAULT '' COMMENT '网站目录',
  `webpath` varchar(255) NOT NULL DEFAULT '' COMMENT '网站目录',
  `hotline` varchar(50) NOT NULL DEFAULT '' COMMENT '客服热线',
  `copyright` varchar(255) NOT NULL DEFAULT '' COMMENT '版权信息',
  `checkinfo` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '启用站点',
  `switchshow` varchar(255) NOT NULL DEFAULT '' COMMENT '关闭说明',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pg_site`
--

LOCK TABLES `pg_site` WRITE;
/*!40000 ALTER TABLE `pg_site` DISABLE KEYS */;
INSERT INTO `pg_site` VALUES (1,'洛阳市','https://localhost','/tp/PHOTO','110','                                                    \r\n                                                      2010 - 2017 phpMyWind.com All Rights Reserved                      \r\n                                                    \r\n          ',0,' \r\n                                                    \r\n                                                    对不起，网站维护，请稍后登录。网站维护期间对您造成的不便，请谅解！                                        \r\n                                                                       ');
/*!40000 ALTER TABLE `pg_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pg_usercomment`
--

DROP TABLE IF EXISTS `pg_usercomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pg_usercomment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '图片id',
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `uname` varchar(20) NOT NULL COMMENT '用户名',
  `body` text NOT NULL COMMENT '评论内容',
  `reply` text NOT NULL COMMENT '回复内容',
  `link` varchar(200) NOT NULL COMMENT '评论网址',
  `time` int(10) unsigned NOT NULL COMMENT '评论时间',
  `ip` varchar(30) NOT NULL COMMENT '评论ip',
  `isshow` tinyint(1) unsigned NOT NULL COMMENT '是否显示',
  `type` smallint(1) NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `to_uid` int(11) NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pg_usercomment`
--

LOCK TABLES `pg_usercomment` WRITE;
/*!40000 ALTER TABLE `pg_usercomment` DISABLE KEYS */;
INSERT INTO `pg_usercomment` VALUES (1,17,1,'1','1vvvvvvvvvvvv\n\n','水水水水水水水水水水水水水水水 ','1',1,'1',1,1,0),(5,24,1,'user','表现出阴阳融合的风格，形象打扮具有异性的特质，也保留着自身性别的特质，','','',0,'',1,1,0),(3,17,1,'1','3嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻','嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻','',0,'',1,1,0),(4,17,1,'1','4水水水水水水水水水水','凑凑凑凑凑凑凑凑凑凑凑凑凑凑凑 ','',0,'',1,1,0);
/*!40000 ALTER TABLE `pg_usercomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pg_userfavorite`
--

DROP TABLE IF EXISTS `pg_userfavorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pg_userfavorite` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '收藏id',
  `aid` int(10) unsigned NOT NULL COMMENT '信息id',
  `molds` tinyint(1) unsigned NOT NULL COMMENT '信息类型',
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `uname` varchar(20) NOT NULL COMMENT '用户名',
  `link` varchar(200) NOT NULL COMMENT '收藏网址',
  `time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏时间',
  `ip` varchar(30) NOT NULL COMMENT '评论ip',
  `isshow` tinyint(1) unsigned NOT NULL COMMENT '是否显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pg_userfavorite`
--

LOCK TABLES `pg_userfavorite` WRITE;
/*!40000 ALTER TABLE `pg_userfavorite` DISABLE KEYS */;
INSERT INTO `pg_userfavorite` VALUES (1,16,1,1,'1','1111111111111111111111111111',1,'1',1),(2,16,11,2,'11','11111111111111111',11,'11',1),(3,16,11,3,'11','111111111111',11,'11',1);
/*!40000 ALTER TABLE `pg_userfavorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pg_weblink`
--

DROP TABLE IF EXISTS `pg_weblink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pg_weblink` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '友情链接id',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '站点id',
  `classid` smallint(5) unsigned NOT NULL COMMENT '所属类别id',
  `parentid` smallint(5) unsigned NOT NULL COMMENT '所属类别父id',
  `parentstr` varchar(80) NOT NULL COMMENT '所属类别父id字符串',
  `webname` varchar(30) NOT NULL COMMENT '网站名称',
  `webnote` varchar(200) NOT NULL COMMENT '网站描述',
  `picurl` varchar(100) NOT NULL COMMENT '缩略图片',
  `linkurl` varchar(255) NOT NULL COMMENT '跳转链接',
  `orderid` smallint(5) unsigned NOT NULL COMMENT '排列排序',
  `posttime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `checkinfo` tinyint(3) unsigned DEFAULT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pg_weblink`
--

LOCK TABLES `pg_weblink` WRITE;
/*!40000 ALTER TABLE `pg_weblink` DISABLE KEYS */;
INSERT INTO `pg_weblink` VALUES (1,1,1,0,'0,','腾讯','生活精彩，在线更精彩','http://mat1.gtimg.com/www/iskin960/qqcomlogo.png','http://www.qq.com/',2,1326770776,1),(2,1,1,0,'0,','百度','百度一下，你就知道','http://www.baidu.com/img/baidu_sylogo1.gif','http://www.baidu.com/',2,1326770790,1),(3,1,1,0,'0,','phpMyWind','我们追求速度与舒适度','http://img.58cdn.com.cn/ds/qiye/admin/1.jpg','http://phpmywind.com/',3,2012,1),(4,1,1,0,'','堆糖网','','http://img.58cdn.com.cn/ds/qiye/admin/1.jpg','https://www.duitang.com',0,1970,1),(5,1,1,0,'','花瓣网','','http://img.58cdn.com.cn/ds/qiye/admin/1.jpg','http://huaban.com',0,1970,1);
/*!40000 ALTER TABLE `pg_weblink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pg_weblinktype`
--

DROP TABLE IF EXISTS `pg_weblinktype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pg_weblinktype` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '友情链接类型id',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '站点id',
  `parentid` smallint(5) unsigned NOT NULL COMMENT '类别父id',
  `parentstr` varchar(50) NOT NULL COMMENT '类别父id字符串',
  `classname` varchar(30) NOT NULL COMMENT '类别名称',
  `orderid` smallint(5) unsigned NOT NULL COMMENT '排列顺序',
  `checkinfo` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '审核状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pg_weblinktype`
--

LOCK TABLES `pg_weblinktype` WRITE;
/*!40000 ALTER TABLE `pg_weblinktype` DISABLE KEYS */;
INSERT INTO `pg_weblinktype` VALUES (1,1,0,'0,','默认分类',1,1);
/*!40000 ALTER TABLE `pg_weblinktype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-22 21:26:16
