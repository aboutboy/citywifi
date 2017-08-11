-- TuanPhp SQL Dump Program
-- 
-- DATE : 2014-08-14 17:09:07
-- Vol : 1
DROP TABLE IF EXISTS `sp_access`;
CREATE TABLE `sp_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `g` varchar(20) NOT NULL COMMENT '项目',
  `m` varchar(20) NOT NULL COMMENT '模块',
  `a` varchar(20) NOT NULL COMMENT '方法',
  KEY `groupId` (`role_id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_ad`;
CREATE TABLE `sp_ad` (
  `ad_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ad_name` varchar(255) NOT NULL,
  `ad_content` text,
  `status` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ad_id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_admin_panel`;
CREATE TABLE `sp_admin_panel` (
  `menuid` mediumint(8) unsigned NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` char(32) DEFAULT NULL,
  `url` char(255) DEFAULT NULL,
  `datetime` int(10) unsigned DEFAULT '0',
  UNIQUE KEY `userid` (`menuid`,`userid`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_asset`;
CREATE TABLE `sp_asset` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `_unique` varchar(14) NOT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `filepath` varchar(200) NOT NULL,
  `uploadtime` int(11) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  `meta` text,
  `suffix` varchar(50) DEFAULT NULL,
  `download_times` int(6) NOT NULL,
  PRIMARY KEY (`aid`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_comments`;
CREATE TABLE `sp_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_table` varchar(100) NOT NULL,
  `post_id` int(11) unsigned NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `to_uid` int(11) NOT NULL DEFAULT '0',
  `full_name` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `content` text NOT NULL,
  `type` smallint(1) NOT NULL DEFAULT '1',
  `parentid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `status` smallint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `comment_post_ID` (`post_id`),
  KEY `comment_approved_date_gmt` (`status`),
  KEY `comment_parent` (`parentid`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_guestbook`;
CREATE TABLE `sp_guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `msg` text NOT NULL,
  `createtime` datetime NOT NULL,
  `status` smallint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_links`;
CREATE TABLE `sp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '_blank',
  `link_description` text NOT NULL,
  `link_status` int(2) NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_rel` varchar(255) DEFAULT '',
  `listorder` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_status`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_members`;
CREATE TABLE `sp_members` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login_name` varchar(25) NOT NULL,
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nickname` varchar(50) NOT NULL,
  `user_pic_url` varchar(300) NOT NULL,
  `user_pic_assetid` int(8) NOT NULL,
  `sign_words` varchar(200) NOT NULL,
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `last_login_ip` varchar(16) NOT NULL,
  `last_login_time` int(12) NOT NULL,
  `create_time` int(12) NOT NULL,
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `user_nicename` (`user_nickname`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_menu`;
CREATE TABLE `sp_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `app` char(20) NOT NULL COMMENT '应用名称app',
  `model` char(20) NOT NULL DEFAULT '',
  `action` char(20) NOT NULL DEFAULT '',
  `data` char(50) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `icon` varchar(50) DEFAULT NULL,
  `remark` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序ID',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parentid` (`parentid`),
  KEY `model` (`model`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('239','0','Admin','Setting','default','','0','1','设置','cogs','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('308','307','Wx','Answeradmin','index','','1','1','默认回复','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('309','307','Wx','Answeradmin','fixed','','1','1','固定回复','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('310','307','Wx','Answeradmin','robot','','1','1','智能回复','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('51','0','Admin','Content','default','','0','1','内容管理','th','','10');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('307','305','Wx','Answeradmin','index','','1','1','回复设置','','','20');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('245','51','Admin','Term','index','','0','1','分类管理','','','2');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('314','312','Wx','Collectadmin','answer','','1','1','回复数量','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('299','260','Api','Oauthadmin','setting','','1','1','第三方登陆','leaf','','4');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('252','239','Admin','Setting','userdefault','','0','1','个人信息','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('253','252','Admin','User','userinfo','','1','1','修改信息','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('254','252','Admin','Setting','password','','1','1','修改密码','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('313','312','Wx','Collectadmin','location','','1','1','地理位置','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('260','0','Admin','Extension','default','','0','1','扩展工具','cloud','','30');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('262','260','Admin','Slide','default','','1','1','幻灯片','','','1');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('264','262','Admin','Slide','index','','1','1','幻灯片管理','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('265','260','Admin','Ad','index','','1','1','网站广告','','','2');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('317','312','Wx','Collectadmin','users','','1','1','关注趋势','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('316','312','Wx','Collectadmin','userlist','','1','1','粉丝列表','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('268','262','Admin','Slidecat','index','','1','1','幻灯片分类','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('270','260','Admin','Link','index','','0','1','友情链接','','','3');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('312','305','Wx','Collectadmin','location','','1','1','数据分析','','','30');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('277','51','Admin','Page','index','','1','1','页面管理','','','3');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('301','300','Admin','Page','recyclebin','','1','1','页面回收','','','1');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('302','300','Admin','Post','recyclebin','','1','1','文章回收','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('305','0','Wx','Indexadmin','default','','1','1','微信管理','tags','','20');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('300','51','Admin','Recycle','default','','1','1','回收站','','','4');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('284','239','Admin','Setting','site','','1','1','网站信息','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('285','51','Admin','Post','index','','1','1','文章管理','','','1');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('286','0','Member','Indexadmin','default','','1','1','用户管理','group','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('287','289','Member','Indexadmin','index','','1','1','本站用户','leaf','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('288','289','Api','Oauthadmin','index','','1','1','第三方用户','leaf','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('289','286','Member','Indexadmin','default1','','1','1','用户组','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('290','286','Member','Indexadmin','default3','','1','1','管理组','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('291','290','Admin','Rbac','index','','1','1','角色管理','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('292','290','Admin','User','index','','1','1','管理员','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('293','0','Admin','Menu','default','','1','1','菜单管理','list','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('294','293','Admin','Navcat','default1','','1','1','前台菜单','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('295','294','Admin','Nav','index','','1','1','菜单管理','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('296','294','Admin','Navcat','index','','1','1','菜单分类','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('297','293','Admin','Menu','index','','1','1','后台菜单','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('298','239','Admin','Setting','clearcache','','1','1','清除缓存','','','1');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('318','305','Wx','Menuadmin','index','','1','1','菜单管理','','','30');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('319','260','Admin','Backup','default','','1','1','备份管理','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('480','292','Admin','User','delete','','1','0','删除管理员','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('479','292','Admin','User','edit','','1','0','编辑管理员','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('478','292','Admin','User','add','','1','0','添加管理员','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('477','245','Admin','Term','delete','','1','0','删除分类','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('476','245','Admin','Term','edit','','1','0','编辑分类','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('475','245','Admin','Term','add','','1','0','添加分类','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('474','268','Admin','Slidecat','delete','','1','0','删除分类','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('473','268','Admin','Slidecat','edit','','1','0','编辑分类','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('472','268','Admin','Slidecat','add','','1','0','添加分类','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('471','264','Admin','Slide','delete','','1','0','删除幻灯片','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('470','264','Admin','Slide','edit','','1','0','编辑幻灯片','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('469','264','Admin','Slide','add','','1','0','添加幻灯片','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('467','291','Admin','Rbac','member','','1','0','成员管理','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('465','291','Admin','Rbac','authorize','','1','0','权限设置','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('464','291','Admin','Rbac','roleedit','','1','0','编辑角色','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('463','291','Admin','Rbac','roledelete','','1','1','删除角色','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('462','291','Admin','Rbac','roleadd','','1','1','添加角色','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('458','302','Admin','Post','restore','','1','0','文章还原','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('457','302','Admin','Post','clean','','1','0','彻底删除','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('456','285','Admin','Post','move','','1','0','批量移动','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('455','285','Admin','Post','check','','1','0','文章审核','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('454','285','Admin','Post','delete','','1','0','删除文章','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('452','285','Admin','Post','edit','','1','0','编辑文章','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('451','285','Admin','Post','add','','1','0','添加文章','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('450','301','Admin','Page','clean','','1','0','彻底删除','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('449','301','Admin','Page','restore','','1','0','页面还原','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('448','277','Admin','Page','delete','','1','0','删除页面','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('446','277','Admin','Page','edit','','1','0','编辑页面','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('445','277','Admin','Page','add','','1','0','添加页面','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('444','296','Admin','Navcat','delete','','1','0','删除分类','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('443','296','Admin','Navcat','edit','','1','0','编辑分类','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('442','296','Admin','Navcat','add','','1','0','添加分类','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('441','295','Admin','Nav','delete','','1','0','删除菜单','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('440','295','Admin','Nav','edit','','1','0','编辑菜单','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('439','295','Admin','Nav','add','','1','0','添加菜单','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('436','297','Admin','Menu','export_menu','','1','0','菜单备份','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('434','297','Admin','Menu','edit','','1','0','编辑菜单','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('433','297','Admin','Menu','delete','','1','0','删除菜单','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('432','297','Admin','Menu','lists','','1','0','所有菜单','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('430','270','Admin','Link','delete','','1','0','删除友情链接','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('429','270','Admin','Link','edit','','1','0','编辑友情链接','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('428','270','Admin','Link','add','','1','0','添加友情链接','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('424','319','Admin','Backup','download','','1','0','下载备份','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('423','319','Admin','Backup','del_backup','','1','0','删除备份','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('422','319','Admin','Backup','import','','1','0','数据备份导入','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('421','319','Admin','Backup','restore','','1','1','数据还原','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('420','265','Admin','Ad','delete','','1','0','删除广告','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('419','265','Admin','Ad','edit','','1','0','编辑广告','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('418','265','Admin','Ad','add','','1','0','添加广告','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('482','288','Api','Oauthadmin','delete','','1','0','删除第三方用户','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('483','287','Member','Indexadmin','delete','','1','0','删除用户','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('488','310','Wx','Answeradmin','split','','1','0','分词','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('490','318','Wx','Menuadmin','createmenu','','1','0','生成微信菜单','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('492','318','Wx','Menuadmin','add','','1','0','添加微信菜单','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('493','318','Wx','Menuadmin','delete','','1','0','删除微信菜单','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('494','318','Wx','Menuadmin','edit','','1','0','编辑微信菜单','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('495','305','Wx','Indexadmin','index','','1','1','账号信息','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('496','319','Admin','Backup','index','','1','1','数据备份','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('497','418','Admin','Ad','add_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('498','419','Admin','Ad','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('499','428','Admin','Link','add_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('500','429','Admin','Link','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('501','536','Admin','Menu','add_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('502','434','Admin','Menu','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('503','439','Admin','Nav','add_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('504','440','Admin','Nav','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('505','442','Admin','Navcat','add_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('506','443','Admin','Navcat','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('507','445','Admin','Page','add_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('508','446','Admin','Page','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('509','451','Admin','Post','add_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('510','452','Admin','Post','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('511','462','Admin','Rbac','roleadd_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('512','464','Admin','Rbac','roleedit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('513','465','Admin','Rbac','authorize_post','','1','0','提交设置','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('514','284','Admin','Setting','site_post','','1','0','提交修改','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('515','254','Admin','Setting','password_post','','1','0','提交修改','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('516','469','Admin','Slide','add_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('517','470','Admin','Slide','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('518','472','Admin','Slidecat','add_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('519','473','Admin','Slidecat','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('520','475','Admin','Term','add_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('521','476','Admin','Term','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('522','478','Admin','User','add_post','','1','0','提交保存','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('523','479','Admin','User','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('524','253','Admin','User','userinfo_post','','1','0','提交修改','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('525','299','Api','Oauthadmin','setting_post','','1','0','提交设置','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('526','533','Admin','Mailer','index','','1','1','SMTP配置','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('527','526','Admin','Mailer','index_post','','1','0','提交配置','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('528','533','Admin','Mailer','active','','1','1','邮件模板','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('529','528','Admin','Mailer','active_post','','1','0','提交模板','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('533','239','Admin','Mailer','default','','1','1','邮箱配置','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('538','308','Wx','Answeradmin','index_post','','1','0','默认回复和欢迎辞设置','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('536','297','Admin','Menu','add','','1','0','添加菜单','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('539','309','Wx','Answeradmin','fixed_post','','1','0','固定回答设置','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('541','310','Wx','Answeradmin','robot_post','','1','0','机器人问题集设置','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('542','495','Wx','Indexadmin','index_post','','1','0','账号信息修改提交','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('543','492','Wx','Menuadmin','add_post','','1','0',' 添加微信菜单提交','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('544','494','Wx','Menuadmin','edit_post','','1','0','提交编辑微信菜单','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('546','496','Admin','Backup','index_post','','1','0','提交数据备份','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('547','270','Admin','Link','listorders','','1','0','友情链接排序','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('548','297','Admin','Menu','listorders','','1','0','后台菜单排序','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('549','295','Admin','Nav','listorders','','1','0','前台导航排序','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('550','277','Admin','Page','listorders','','1','0','页面排序','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('551','285','Admin','Post','listorders','','1','0','文章排序','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('552','264','Admin','Slide','listorders','','1','0','幻灯片排序','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('553','245','Admin','Term','listorders','','1','0','文章分类排序','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('554','51','Api','Guestbookadmin','index','','1','1','所有留言','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('555','554','Api','Guestbookadmin','delete','','1','0','删除网站留言','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('556','318','Wx','Menuadmin','listorders','','1','0','微信菜单排序','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('557','51','Comment','Commentadmin','index','','1','1','评论管理','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('559','557','Comment','Commentadmin','delete','','1','0','删除评论','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('560','557','Comment','Commentadmin','check','','1','0','评论审核','','','0');
DROP TABLE IF EXISTS `sp_nav`;
CREATE TABLE `sp_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `target` varchar(50) DEFAULT NULL,
  `href` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  `listorder` int(6) DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('1','1','0','首页','','home','','1','1','0-1');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('2','1','0','联系我们','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"1\";}}','','1','4','0-2');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('3','1','0','产品与服务','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"2\";}}','','1','2','0-3');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('4','1','0','企业新闻','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"6\";}}','','1','3','0-4');
DROP TABLE IF EXISTS `sp_nav_cat`;
CREATE TABLE `sp_nav_cat` (
  `navcid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `remark` text,
  PRIMARY KEY (`navcid`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_nav_cat ( `navcid`, `name`, `active`, `remark` ) VALUES  ('1','主导航','1','主导航');
DROP TABLE IF EXISTS `sp_oauth_member`;
CREATE TABLE `sp_oauth_member` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `_from` varchar(20) NOT NULL,
  `_name` varchar(30) NOT NULL,
  `head_img` varchar(200) NOT NULL,
  `lock_to_id` int(20) NOT NULL,
  `create_time` int(12) NOT NULL,
  `last_login_time` int(12) NOT NULL,
  `last_login_ip` varchar(16) NOT NULL,
  `login_times` int(6) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `access_token` varchar(60) NOT NULL,
  `expires_date` int(12) NOT NULL,
  `openid` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_options`;
CREATE TABLE `sp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_options ( `option_id`, `option_name`, `option_value`, `autoload` ) VALUES  ('1','site_options','{\"site_name\":\"\\u5357\\u4eac\\u5b8f\\u4fe1\\u4e00\\u7f51\\u4fe1\\u606f\\u79d1\\u6280\",\"site_host\":\"http:\\/\\/www.live186.com\\/\",\"site_root\":\"\\/\",\"site_tpl\":\"simpleboot\",\"site_adminstyle\":\"flat\",\"site_icp\":\"\\u82cfICP\\u590714019686\\u53f7\",\"site_admin_email\":\"2312708932@qq.com\",\"site_tongji\":\"\",\"site_copyright\":\"\",\"site_seo_title\":\"\\u5357\\u4eac\\u5b8f\\u4fe1\\u4e00\\u7f51\\u4fe1\\u606f\\u79d1\\u6280\",\"site_seo_keywords\":\"\",\"site_seo_description\":\"\",\"urlmode\":\"0\",\"html_suffix\":\"\"}','1');
DROP TABLE IF EXISTS `sp_postmeta`;
CREATE TABLE `sp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_posts`;
CREATE TABLE `sp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned DEFAULT '0',
  `post_keywords` varchar(150) NOT NULL,
  `post_date` datetime DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext,
  `post_title` text,
  `post_excerpt` text,
  `post_status` int(2) DEFAULT '1',
  `comment_status` int(2) DEFAULT '1',
  `post_modified` datetime DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext,
  `post_parent` bigint(20) unsigned DEFAULT '0',
  `post_type` int(2) DEFAULT NULL,
  `post_mime_type` varchar(100) DEFAULT '',
  `comment_count` bigint(20) DEFAULT '0',
  `smeta` text,
  PRIMARY KEY (`ID`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_posts ( `ID`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta` ) VALUES  ('1','1','','2014-08-12 17:07:53','<p>南京宏信一网信息科技有限公司</p><p>联系人：张经理</p><p>电话：13072560581</p><p>办公地址：南京市江宁区科学园街道文鼎广场6幢218号</p><p><iframe class=\"ueditor_baidumap\" src=\"http://www.live186.com/statics/js/ueditor/dialogs/map/show.html#center=118.905635,31.921962&zoom=16&width=530&height=340&markers=118.905635,31.921962&markerStyles=l,A\" frameborder=\"0\" width=\"534\" height=\"344\"></iframe></p>','联系我们','欢迎任何联系我们！','1','1','2014-08-12 17:07:21','','0','2','','0','{\"thumb\":\"\",\"template\":\"page\"}');
INSERT INTO sp_posts ( `ID`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta` ) VALUES  ('2','1','生活 wifi 餐饮','2014-08-13 00:15:13','<p><span style=\";font-weight:bold;font-size:29px;font-family:&#39;仿宋&#39;\"></span></p><p style=\"margin-top: 10px; margin-bottom: 10px;\"><span style=\"font-family: 宋体, SimSun;\">&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size: 24px; color: rgb(255, 0, 0);\">【186生活网】</span><span style=\"font-size: 20px;\">是个以商户利益为主开发的WiFi推广系统，帮助本地不同商户之间利用WiFi互相做广告。比百度推广极少的资金，更精准的锁定本地潜在客户，定向推送您的广告。</span></span></p><p style=\"margin-top: 10px; margin-bottom: 10px;\"><span style=\"font-size: 20px; font-family: 宋体, SimSun;\">&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size: 20px; font-family: 宋体, SimSun; color: rgb(255, 0, 0);\">客户走到哪儿，您的广告就跟到哪儿。。。</span></span></p><p><br/></p><p style=\"margin-top: 10px; margin-bottom: 10px;\"><span style=\"font-size: 20px; font-family: 宋体, SimSun;\">案例介绍：</span></p><p style=\"margin-bottom: 10px; margin-top: 10px;\"><span style=\"font-size: 20px; font-family: 宋体, SimSun;\">&nbsp;&nbsp;&nbsp;&nbsp;张先生开了一家【湾岛咖啡】餐厅，【186生活网】为张先生安装了WiFi推广设备，并绑定了张先生的微信账号。</span></p><p style=\"margin-bottom: 10px; margin-top: 10px;\"><span style=\"font-size: 20px; font-family: 宋体, SimSun;\">&nbsp;&nbsp;&nbsp;&nbsp;张先生<span style=\"font-size: 20px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; color: rgb(255, 0, 0);\">发送微信</span>“us#新店开张，办卡7折”给【186生活网】的公众账号，<span style=\"font-size: 20px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; color: rgb(255, 0, 0);\">即可实时修改自己商铺的广告</span>。</span></p><p><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">&nbsp;</span></p><p style=\";text-align:center\"><img src=\"http://www.live186.com/data/upload/ueditor/2014081303344853eb151873aba.PNG\" title=\"IMG_0013.PNG\"/></p><p><br/></p><p><br/></p><p style=\"text-align: left; margin-bottom: 10px;\"><span style=\";font-weight:bold;font-size:21px;font-family:&#39;仿宋&#39;\"></span><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">&nbsp;&nbsp;&nbsp;&nbsp;客户王先生今天来到了【湾岛咖啡】，他连上餐厅的WiFi后，弹出<span style=\"font-family: 宋体, SimSun; color: rgb(255, 0, 0);\">认证页面，首页排名第一的就是【湾岛咖啡】的广告</span>。</span><span style=\";color:rgb(255,0,0);font-weight:bold;font-size:20px;font-family:&#39;仿宋&#39;\"></span></p><p style=\";text-align:center\"><img src=\"http://www.live186.com/data/upload/ueditor/2014081303344853eb151874a60.PNG\" title=\"IMG_0014.PNG\" style=\"width: 466px; height: 794px;\"/><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">&nbsp;</span><span style=\"font-family: 宋体; font-size: 14px;\">&nbsp;</span></p><p><span style=\"font-family: 宋体; font-size: 14px;\"><br/></span></p><p><span style=\"font-family: 宋体; font-size: 14px;\"><br/></span></p><p style=\"margin-top: 10px; margin-bottom: 10px;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 宋体;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family: 宋体, SimSun; text-indent: 43px;\">客户王先生点击左上角后的“我要上网”后，即可正常上网。此时客户王先生已经成为【湾岛咖啡】的锁定客户。</span></span></p><p style=\";text-align:center\"><span style=\"font-family: 仿宋; font-size: 21px; font-weight: bold; text-indent: 43px;\"><img src=\"http://www.live186.com/data/upload/ueditor/2014081303344853eb15187561d.PNG\" title=\"IMG_0012.PNG\" style=\"width: 451px; height: 828px;\"/></span></p><p><span style=\"font-family: 仿宋; font-size: 21px; font-weight: bold; text-indent: 43px;\"><br/></span></p><p><span style=\"font-family: 仿宋; font-size: 21px; font-weight: bold; text-indent: 43px;\"><br/></span></p><p style=\"margin-top: 10px; margin-bottom: 10px;\"><span style=\"font-size: 20px; font-family: 宋体, SimSun;\">&nbsp;&nbsp;&nbsp;&nbsp;第二天，客户王先生去【宏文教育】新街口分校上课，他连上学校的WiFi后，弹出<span style=\"font-size: 20px; font-family: 宋体, SimSun; color: rgb(255, 0, 0);\">认证页面，首页排名第二的还是【湾岛咖啡】的广告</span>。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px;\"><span style=\"font-size: 20px; font-family: 宋体, SimSun;\">&nbsp;&nbsp;&nbsp;&nbsp;于是他决定今晚去【湾岛咖啡】吃饭，顺便办理一张会员卡。</span></p><p style=\"text-indent: 40px; text-align: center;\"><img src=\"http://www.live186.com/data/upload/ueditor/2014081303344853eb1518761cf.PNG\" title=\"IMG_0015.PNG\" style=\"width: 470px; height: 843px;\"/><span style=\";color:rgb(255,0,0);font-weight:bold;font-size:20px;font-family:&#39;仿宋&#39;\">&nbsp;</span></p><p style=\"text-indent: 40px;\"><span style=\";color:rgb(255,0,0);font-weight:bold;font-size:20px;font-family:&#39;仿宋&#39;\"><br/></span></p><p style=\"text-indent: 40px;\"><span style=\";color:rgb(255,0,0);font-weight:bold;font-size:20px;font-family:&#39;仿宋&#39;\"><br/></span></p><p style=\"margin-top: 10px; margin-bottom: 10px;\"><span style=\"font-size: 20px; font-family: 宋体, SimSun;\">&nbsp;&nbsp;&nbsp;&nbsp;一个月后，由于【湾岛咖啡】的知名度逐渐提高，生意逐渐稳定。于是老板张先生修改了广告为&quot;本周饮料半价&quot;。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px;\"><span style=\"font-size: 20px; font-family: 宋体, SimSun;\">&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size: 20px; font-family: 宋体, SimSun; color: rgb(255, 0, 0);\">随时修改，即时生效</span></span></p><p style=\"text-indent: 43px; text-align: center; margin-top: 10px; margin-bottom: 10px;\"><img src=\"http://www.live186.com/data/upload/ueditor/53eb157f458cf.PNG\" title=\"IMG_0020.PNG\"/><span style=\";font-weight:bold;font-size:21px;font-family:&#39;仿宋&#39;\">&nbsp;</span></p><p style=\"text-indent: 43px; margin-top: 10px; margin-bottom: 10px;\"><span style=\"text-indent: 28px;\">&nbsp;&nbsp;&nbsp;&nbsp;</span></p><p style=\"text-indent: 43px; margin-top: 10px; margin-bottom: 10px;\"><span style=\"text-indent: 28px;\"><br/></span></p><p style=\"text-indent: 43px; margin-top: 10px; margin-bottom: 10px;\"><span style=\"text-indent: 28px; font-family: 宋体, SimSun; font-size: 20px;\">当天晚上，客户王先生和朋友去【温莎KTV】唱歌，他连上WiFi后，弹出<span style=\"text-indent: 28px; font-family: 宋体, SimSun; font-size: 20px; color: rgb(255, 0, 0);\">认证页面，首页排名第三的就是【湾岛咖啡】最新的广告</span>。</span></p><p style=\"text-indent:59px;text-align:center\"><img src=\"http://www.live186.com/data/upload/ueditor/53eb154d51bee.PNG\" title=\"IMG_0021.PNG\" style=\"width: 453px; height: 838px;\"/><span style=\";color:rgb(255,0,0);font-weight:bold;font-size:29px;font-family:&#39;仿宋&#39;\">&nbsp;</span></p><p style=\"text-indent: 59px;\"><span style=\";color:rgb(255,0,0);font-weight:bold;font-size:29px;font-family:&#39;仿宋&#39;\"><br/></span></p><p style=\"text-indent:59px\"><br/></p><p><span style=\";color:rgb(255,0,0);font-weight:bold;font-size:24px;font-family:&#39;仿宋&#39;\">注意事项：</span></p><p><span style=\"color:rgb(255,0,0);font-weight:bold;font-size:24px;font-family:&#39;仿宋&#39;\">1.&nbsp;商户经营者可以选择屏蔽和自己存在竞争关系的商户广告，即同行竞争关系商户之间不互相做广告。</span></p><p><span style=\"color:rgb(255,0,0);font-weight:bold;font-size:24px;font-family:&#39;仿宋&#39;\">2.&nbsp;微信修改广告内容，24小时服务，不限次数。</span></p><p style=\";text-align:justify\"><span style=\";color:rgb(255,0,0);font-weight:bold;font-size:24px;font-family:&#39;仿宋&#39;\">&nbsp;</span></p><p style=\";text-align:justify\"><span style=\";color:rgb(255,0,0);font-weight:bold;font-size:24px;font-family:&#39;仿宋&#39;\">费用：</span></p><p style=\";text-align:justify\"><span style=\"color:rgb(255,0,0);font-weight:bold;font-size:24px;font-family:&#39;仿宋&#39;\">1.&nbsp;一般室内WiFi、，只需一个手掌大的WiFi设备即可，成本99元/台（可做普通无线路由器使用）。首签6个月以上合作协议，免费赠送一台。</span></p><p style=\"text-align: justify;\"><span style=\"color:rgb(255,0,0);font-weight:bold;font-size:24px;font-family:&#39;仿宋&#39;\">2. 截止2014年12月低，【186生活网】的合作商户免服务费，免费期后商户可自由选择是否继续使用。</span></p>','WiFi推广系统','【186生活网】是个以商户利益为主开发的WiFi推广系统，帮助本地不同商户之间利用WiFi互相做广告。
比百度推广极少的资金，更精准的锁定本地潜在客户，定向推送您的广告。
客户走到哪儿，您的广告就跟到哪儿。。。','1','1','2014-08-13 00:14:18','','0','','','0','{\"thumb\":\"53ea41caae018.jpg\",\"photo\":[{\"url\":\"53ea4014ed9ec.jpg\",\"alt\":\"ffew logo\"}]}');
INSERT INTO sp_posts ( `ID`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta` ) VALUES  ('12','1','','2014-08-13 15:45:30','<p>&nbsp;&nbsp;&nbsp;&nbsp;国内高端技术企业研发团队，将复杂的技术压缩进成本99元的微型设备中，将商家的前期投入风险减小到0。</p>','成熟的技术，打造超低的价格','','1','1','2014-08-13 15:41:33','','0','','','0','{\"thumb\":\"\"}');
INSERT INTO sp_posts ( `ID`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta` ) VALUES  ('3','1','','2014-08-13 14:18:57','<p>&nbsp; &nbsp; 张先生开了一家【湾岛咖啡】餐厅，【186生活网】为张先生安装了WiFi推广设备，并绑定了张先生的微信账号。</p><p>&nbsp; &nbsp; 张先生<span style=\"color: rgb(255, 0, 0);\">发送微信</span>“us#新店开张，办卡7折”给【186生活网】的公众账号，<span style=\"color: rgb(255, 0, 0);\">即可实时修改自己商铺的广告</span>。</p>','No.1','','1','1','2014-08-13 12:41:57','','0','','','0','{\"thumb\":\"53eaedb1198e1.PNG\"}');
INSERT INTO sp_posts ( `ID`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta` ) VALUES  ('5','1','','2014-08-13 14:15:10','<p>&nbsp; &nbsp; 客户王先生今天在【湾岛咖啡】附近办事，他的手机搜索到了餐厅的免费WiFi信号，连上后，弹出<span style=\"color: rgb(255, 0, 0);\">认证页面，首页排名第一的就是【湾岛咖啡】的广告</span>。</p><p>&nbsp; &nbsp; 点击左上角后的“我要上网”后，即可正常上网。此时客户王先生已经成为【湾岛咖啡】的锁定客户。</p>','No.2','','1','1','2014-08-13 12:54:41','','0','','','0','{\"thumb\":\"53eaefab60b94.PNG\"}');
INSERT INTO sp_posts ( `ID`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta` ) VALUES  ('9','1','','2014-08-13 12:59:56','<p>&nbsp; &nbsp; 一个月后，由于【湾岛咖啡】的知名度逐渐提高，生意逐渐稳定。于是老板张先生修改了广告内容为“本周饮料半价”。</p><p>&nbsp; &nbsp; 当天晚上，客户王先生和朋友去【温莎KTV】唱歌，他连上WiFi后，弹出<span style=\"color: rgb(255, 0, 0);\">认证页面，首页排名第三的就是【湾岛咖啡】最新的广告</span>。</p>','No.4','','1','1','2014-08-13 12:59:30','','0','','','0','{\"thumb\":\"53eb11b60172a.PNG\"}');
INSERT INTO sp_posts ( `ID`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta` ) VALUES  ('10','1','','2014-08-13 14:12:36','<p>&nbsp; &nbsp; 第二天，客户王先生去【宏文教育】新街口分校上课，他连上学校的WiFi后，弹出<span style=\"color: rgb(255, 0, 0);\">认证页面，首页排名第二的还是【湾岛咖啡】的广告</span>。</p><p>&nbsp; &nbsp; 于是他决定今晚去【湾岛咖啡】吃饭，顺便办理一张会员卡。</p>','No.3','','1','1','2014-08-13 14:08:50','','0','','','0','{\"thumb\":\"53eb011d24c56.PNG\"}');
INSERT INTO sp_posts ( `ID`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta` ) VALUES  ('11','1','','2014-08-13 14:18:42','<p style=\"text-align: left;\"><span style=\"font-size: 20px;\">&nbsp; &nbsp; 【186生活网】</span>是个以商户利益为主开发的WiFi推广系统，帮助本地不同商户之间利用WiFi互相做广告。比百度推广极少的资金，更精准的锁定潜在客户，定向推送您的广告。</p><p style=\"text-align: left;\">&nbsp; &nbsp; &nbsp;<span style=\"font-size: 18px;\">客户走到哪儿，您的广告就跟到哪儿。。。</span></p>','微信扫一扫','','1','1','2014-08-13 14:14:34','','0','','','0','{\"thumb\":\"53eb03d6ec67a.jpg\"}');
DROP TABLE IF EXISTS `sp_role`;
CREATE TABLE `sp_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '角色名称',
  `pid` smallint(6) DEFAULT NULL COMMENT '父角色ID',
  `status` tinyint(1) unsigned DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL COMMENT '更新时间',
  `listorder` int(3) NOT NULL DEFAULT '0' COMMENT '排序字段',
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`),
  KEY `status` (`status`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_role ( `id`, `name`, `pid`, `status`, `remark`, `create_time`, `update_time`, `listorder` ) VALUES  ('1','超级管理员','0','1','拥有网站最高管理员权限！','1329633709','1329633709','0');
DROP TABLE IF EXISTS `sp_role_user`;
CREATE TABLE `sp_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_slide`;
CREATE TABLE `sp_slide` (
  `slide_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slide_cid` bigint(20) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_pic` varchar(255) DEFAULT NULL,
  `slide_url` varchar(255) DEFAULT NULL,
  `slide_des` varchar(255) DEFAULT NULL,
  `slide_content` text,
  `slide_status` int(2) NOT NULL DEFAULT '1',
  `listorder` int(10) DEFAULT '0',
  PRIMARY KEY (`slide_id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_slide_cat`;
CREATE TABLE `sp_slide_cat` (
  `cid` bigint(20) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL,
  `cat_idname` varchar(255) NOT NULL,
  `cat_remark` text,
  `cat_status` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cid`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_term_relationships`;
CREATE TABLE `sp_term_relationships` (
  `tid` bigint(20) NOT NULL AUTO_INCREMENT,
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `listorder` int(10) NOT NULL DEFAULT '0',
  `status` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tid`),
  KEY `term_taxonomy_id` (`term_id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('90','2','2','0','1');
INSERT INTO sp_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('91','3','7','1','1');
INSERT INTO sp_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('93','5','7','2','1');
INSERT INTO sp_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('100','12','9','0','1');
INSERT INTO sp_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('97','9','7','4','1');
INSERT INTO sp_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('98','10','7','3','1');
INSERT INTO sp_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('99','11','8','0','1');
DROP TABLE IF EXISTS `sp_terms`;
CREATE TABLE `sp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT '',
  `slug` varchar(200) DEFAULT '',
  `taxonomy` varchar(32) DEFAULT '',
  `description` longtext,
  `parent` bigint(20) unsigned DEFAULT '0',
  `count` bigint(20) DEFAULT '0',
  `path` varchar(500) DEFAULT NULL,
  `seo_title` varchar(500) DEFAULT NULL,
  `seo_keywords` varchar(500) DEFAULT NULL,
  `seo_description` varchar(500) DEFAULT NULL,
  `list_tpl` varchar(50) DEFAULT NULL,
  `one_tpl` varchar(50) DEFAULT NULL,
  `listorder` int(5) NOT NULL DEFAULT '0',
  `status` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`term_id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('2','产品与服务','','article','','0','0','0-2','','','','list','article','0','1');
INSERT INTO sp_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('8','首页显示','','article','','0','0','0-8','','','','list','article','0','1');
INSERT INTO sp_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('6','企业新闻','','article','','0','0','0-6','','','','list','article','0','1');
INSERT INTO sp_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('7','186生活网','','article','','8','0','0-8-7','','','','list','contact','0','1');
INSERT INTO sp_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('9','业内优势','','article','','8','0','0-8-9','','','','list','article','0','1');
DROP TABLE IF EXISTS `sp_usermeta`;
CREATE TABLE `sp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_users`;
CREATE TABLE `sp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `last_login_ip` varchar(16) NOT NULL,
  `last_login_time` datetime NOT NULL,
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '1',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  `role_id` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_users ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `last_login_ip`, `last_login_time`, `create_time`, `user_activation_key`, `user_status`, `display_name`, `role_id` ) VALUES  ('1','admin','c535018ee94657ba172a6be125cca2f449826f9980ca89af','Kony','2312708932@qq.com','','218.94.117.234','2014-08-14 17:08:28','2014-08-12 05:00:31','','1','admin','1');
DROP TABLE IF EXISTS `sp_wx_answer`;
CREATE TABLE `sp_wx_answer` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `_key` varchar(30) NOT NULL,
  `_value` text NOT NULL,
  `belong` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_wx_answer ( `id`, `_key`, `_value`, `belong` ) VALUES  ('5','1','回复天气+城市名称查询当地近三天天气情况，如“天气上海”，支持语音查询','gh_ef34a6c9f774');
INSERT INTO sp_wx_answer ( `id`, `_key`, `_value`, `belong` ) VALUES  ('9','2','回复快递+快递名称+快递单号查询快递详情，如“快递申通768277296108”，支持语音查询','');
INSERT INTO sp_wx_answer ( `id`, `_key`, `_value`, `belong` ) VALUES  ('10','3','直接提交查询内容即可，支持语音哦。.','');
DROP TABLE IF EXISTS `sp_wx_answer_robot`;
CREATE TABLE `sp_wx_answer_robot` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `question` varchar(50) NOT NULL,
  `answer` text NOT NULL,
  `key1` varchar(20) NOT NULL,
  `key2` varchar(20) NOT NULL,
  `key3` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_wx_answer_robot ( `id`, `question`, `answer`, `key1`, `key2`, `key3` ) VALUES  ('2','你真可爱','谢谢夸奖','可爱','','');
INSERT INTO sp_wx_answer_robot ( `id`, `question`, `answer`, `key1`, `key2`, `key3` ) VALUES  ('3','你真聪明','谢谢夸奖','聪明','','');
INSERT INTO sp_wx_answer_robot ( `id`, `question`, `answer`, `key1`, `key2`, `key3` ) VALUES  ('4','你叫什么名字','我叫小T，是个智能机器人，我可是很聪明的哦~','你','什么','名字');
INSERT INTO sp_wx_answer_robot ( `id`, `question`, `answer`, `key1`, `key2`, `key3` ) VALUES  ('5','你几岁了','我才1岁，是个小萝莉','你','几','岁');
INSERT INTO sp_wx_answer_robot ( `id`, `question`, `answer`, `key1`, `key2`, `key3` ) VALUES  ('6','你好','你好啊','','','');
INSERT INTO sp_wx_answer_robot ( `id`, `question`, `answer`, `key1`, `key2`, `key3` ) VALUES  ('7','你好啊','你好','','','');
INSERT INTO sp_wx_answer_robot ( `id`, `question`, `answer`, `key1`, `key2`, `key3` ) VALUES  ('8','你吃饭了吗','亲，您搞错了吧？我是不需要吃饭的','你','吃饭','吗');
INSERT INTO sp_wx_answer_robot ( `id`, `question`, `answer`, `key1`, `key2`, `key3` ) VALUES  ('9','你吃过了吗','亲，您搞错了吧？俺是不需要吃饭滴','你','吃','吗');
INSERT INTO sp_wx_answer_robot ( `id`, `question`, `answer`, `key1`, `key2`, `key3` ) VALUES  ('10','你的爸爸妈妈呢','我没有','你','爸爸','妈妈');
INSERT INTO sp_wx_answer_robot ( `id`, `question`, `answer`, `key1`, `key2`, `key3` ) VALUES  ('11','我喜欢你','谢谢，我也喜欢你','我喜欢','你','');
INSERT INTO sp_wx_answer_robot ( `id`, `question`, `answer`, `key1`, `key2`, `key3` ) VALUES  ('12','我爱你','我也爱你','我爱你','','');
INSERT INTO sp_wx_answer_robot ( `id`, `question`, `answer`, `key1`, `key2`, `key3` ) VALUES  ('13','你家在哪','嘻嘻，我才不要告诉你呢','你家','在','哪');
INSERT INTO sp_wx_answer_robot ( `id`, `question`, `answer`, `key1`, `key2`, `key3` ) VALUES  ('14','你在干嘛','我在认真工作','你','在','嘛');
INSERT INTO sp_wx_answer_robot ( `id`, `question`, `answer`, `key1`, `key2`, `key3` ) VALUES  ('15','你在做什么','这都看不出来？我在认真工作','你','做','什么');
INSERT INTO sp_wx_answer_robot ( `id`, `question`, `answer`, `key1`, `key2`, `key3` ) VALUES  ('16','现在几点了','你看看手机就知道了','现在','几','点');
INSERT INTO sp_wx_answer_robot ( `id`, `question`, `answer`, `key1`, `key2`, `key3` ) VALUES  ('17','王八蛋','请不要说脏话','王八','蛋','');
INSERT INTO sp_wx_answer_robot ( `id`, `question`, `answer`, `key1`, `key2`, `key3` ) VALUES  ('18','我感冒了','呜呜~那我劝你多喝水，多运动。祝你早日康复！','我','感冒','');
INSERT INTO sp_wx_answer_robot ( `id`, `question`, `answer`, `key1`, `key2`, `key3` ) VALUES  ('19','我生病了','那你八成缺乏锻炼，记得多出去走走哦','我','生病','');
INSERT INTO sp_wx_answer_robot ( `id`, `question`, `answer`, `key1`, `key2`, `key3` ) VALUES  ('20','呵呵','你是在嘲笑我吗','','','');
INSERT INTO sp_wx_answer_robot ( `id`, `question`, `answer`, `key1`, `key2`, `key3` ) VALUES  ('21','嘿嘿','笑的让我很费解','','','');
INSERT INTO sp_wx_answer_robot ( `id`, `question`, `answer`, `key1`, `key2`, `key3` ) VALUES  ('22','哈哈','你在笑什么？没有什么好笑的吧','','','');
INSERT INTO sp_wx_answer_robot ( `id`, `question`, `answer`, `key1`, `key2`, `key3` ) VALUES  ('23','hello','hello !','','','');
INSERT INTO sp_wx_answer_robot ( `id`, `question`, `answer`, `key1`, `key2`, `key3` ) VALUES  ('24','hi','hi','','','');
INSERT INTO sp_wx_answer_robot ( `id`, `question`, `answer`, `key1`, `key2`, `key3` ) VALUES  ('25','嗨','嗨，您好啊！','','','');
INSERT INTO sp_wx_answer_robot ( `id`, `question`, `answer`, `key1`, `key2`, `key3` ) VALUES  ('26','在吗？','您好，在的','','','');
INSERT INTO sp_wx_answer_robot ( `id`, `question`, `answer`, `key1`, `key2`, `key3` ) VALUES  ('27','在吗','您好，在的','','','');
INSERT INTO sp_wx_answer_robot ( `id`, `question`, `answer`, `key1`, `key2`, `key3` ) VALUES  ('28','有人在吗','您好，在的','','','');
INSERT INTO sp_wx_answer_robot ( `id`, `question`, `answer`, `key1`, `key2`, `key3` ) VALUES  ('29','最近忙吗','恩，老加班','最近','忙','吗');
DROP TABLE IF EXISTS `sp_wx_answer_third`;
CREATE TABLE `sp_wx_answer_third` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `question` varchar(50) NOT NULL,
  `answer` text NOT NULL,
  `key1` varchar(20) NOT NULL,
  `key2` varchar(20) NOT NULL,
  `key3` varchar(20) NOT NULL,
  `belong` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_wx_config`;
CREATE TABLE `sp_wx_config` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `_key` varchar(30) NOT NULL,
  `_value` text NOT NULL,
  `belong` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_wx_config ( `id`, `_key`, `_value`, `belong` ) VALUES  ('1','ANSWER_DEFAULT_1','回复数字编号查询以下内容：
1.天气查询
2.快递查询
3.智能客服','gh_ef34a6c9f774');
INSERT INTO sp_wx_config ( `id`, `_key`, `_value`, `belong` ) VALUES  ('2','ANSWER_WELCOME','走过路过，幸好您没错过。精彩从此刻开始，谢谢您的关注！','gh_ef34a6c9f774');
INSERT INTO sp_wx_config ( `id`, `_key`, `_value`, `belong` ) VALUES  ('3','ANSWER_DEFAULT_2','回复数字编号查询以下内容：
1.天气查询
2.快递查询
3.智能客服','gh_ef34a6c9f774');
INSERT INTO sp_wx_config ( `id`, `_key`, `_value`, `belong` ) VALUES  ('4','ANSWER_DEFAULT_3','呸呸呸，你说的我完全没听懂','gh_ef34a6c9f774');
INSERT INTO sp_wx_config ( `id`, `_key`, `_value`, `belong` ) VALUES  ('5','ANSWER_DEFAULT_4','装作没听懂......','gh_ef34a6c9f774');
INSERT INTO sp_wx_config ( `id`, `_key`, `_value`, `belong` ) VALUES  ('11','WX_NUM','thinkcmf','');
INSERT INTO sp_wx_config ( `id`, `_key`, `_value`, `belong` ) VALUES  ('12','WX_INI_NUM',' ','');
INSERT INTO sp_wx_config ( `id`, `_key`, `_value`, `belong` ) VALUES  ('13','WX_TOKEN',' ','');
INSERT INTO sp_wx_config ( `id`, `_key`, `_value`, `belong` ) VALUES  ('14','WX_APPID',' ','');
INSERT INTO sp_wx_config ( `id`, `_key`, `_value`, `belong` ) VALUES  ('15','WX_APPSECRET',' ','');
INSERT INTO sp_wx_config ( `id`, `_key`, `_value`, `belong` ) VALUES  ('16','WX_ACCESS_TOKEN','','');
DROP TABLE IF EXISTS `sp_wx_menu`;
CREATE TABLE `sp_wx_menu` (
  `menu_id` int(5) NOT NULL AUTO_INCREMENT,
  `menu_type` varchar(10) DEFAULT NULL,
  `menu_name` varchar(10) NOT NULL,
  `event_key` varchar(200) NOT NULL,
  `view_url` varchar(300) NOT NULL,
  `parentid` int(5) NOT NULL DEFAULT '0',
  `listorder` varchar(5) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`menu_id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_wx_message_image`;
CREATE TABLE `sp_wx_message_image` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `message_id` varchar(20) NOT NULL,
  `from` varchar(30) NOT NULL,
  `to` varchar(30) NOT NULL,
  `url` text NOT NULL,
  `time` int(12) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_wx_message_location`;
CREATE TABLE `sp_wx_message_location` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `message_id` varchar(20) NOT NULL,
  `from` varchar(30) NOT NULL,
  `to` varchar(30) NOT NULL,
  `location_x` double NOT NULL,
  `location_y` double NOT NULL,
  `province` varchar(7) NOT NULL,
  `scale` int(3) NOT NULL,
  `label` varchar(200) NOT NULL,
  `time` int(12) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_wx_message_text`;
CREATE TABLE `sp_wx_message_text` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `message_id` varchar(20) NOT NULL,
  `from` varchar(30) NOT NULL,
  `to` varchar(30) NOT NULL,
  `content` varchar(150) NOT NULL,
  `time` int(12) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_wx_message_voice`;
CREATE TABLE `sp_wx_message_voice` (
  `voice_id` int(10) NOT NULL AUTO_INCREMENT,
  `message_id` int(64) NOT NULL,
  `media_id` varchar(20) NOT NULL,
  `from` varchar(30) NOT NULL,
  `to` varchar(30) NOT NULL,
  `text` varchar(100) NOT NULL,
  `format` varchar(10) NOT NULL,
  `time` int(12) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`voice_id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_wx_user`;
CREATE TABLE `sp_wx_user` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `openid` varchar(30) NOT NULL,
  `subscribe_time` int(12) NOT NULL,
  `nickname` varchar(80) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `language` varchar(30) NOT NULL,
  `city` varchar(10) NOT NULL,
  `province` varchar(30) NOT NULL,
  `country` varchar(15) NOT NULL,
  `headimgurl` varchar(200) NOT NULL,
  `unsubscribe_time` int(12) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `belong` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
