/*
Navicat MySQL Data Transfer

Source Server         : MetalServer
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : metal

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2014-03-26 15:58:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for game_character_mail
-- ----------------------------
DROP TABLE IF EXISTS `game_master_log`;
CREATE TABLE `game_master_log` (
	`gmid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'GM帐号ID',
	`time` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '时间',
	`role_name` varchar(50) NOT NULL DEFAULT '' COMMENT '角色名',
	`type` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '操作类型',
	`info` blob NOT NULL COMMENT '记录信息',
  index index_gmid (gmid),
  index index_role_name (role_name),
  index index_type (type)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

