#2014.9.25
#alter table game_character add arena_realcount int(11) default 0;

#2014.9.30
#alter table game_character add last_update_time bigint(20) default 0;

#2014.10.24
#alter table game_character add friend_powercount int(11) default 0;
#alter table game_character add friend_powerlogs blob NOT NULL;
#alter table game_character add combat_value int(11) default 0;
#alter table game_character drop column friend_powercount;
#alter table game_character drop column friend_powerlogs;
#alter table game_character drop column combat_value;

#2014.11.05
#alter table game_character add `shouchong` tinyint(5) default 0;

#2014.11.10
#alter table game_character add loginreward blob NOT NULL;

#2014.11.10
#ALTER TABLE game_account ADD `create_time` BIGINT(20) DEFAULT 0;
#ALTER TABLE game_character ADD `create_time` BIGINT(20) DEFAULT 0;
#ALTER TABLE game_partner CHANGE status pos TINYINT;
#UPDATE game_partner, game_battle_slot SET game_partner.pos = game_battle_slot.pos WHERE game_battle_slot.partner_guid = game_partner.guid;
#ALTER TABLE game_character ADD INDEX index_arena_rank (arena_rank);

#2014.11.17
#alter table game_character add fengshen blob NOT NULL;

#2014.11.20
#ALTER TABLE game_character ADD `cb_camp` tinyint(5) NOT NULL DEFAULT -1;
#ALTER TABLE game_character ADD `cb_exploit` int(11) NOT NULL DEFAULT 0;
#ALTER TABLE game_character ADD `cb_battle_count` int(11) NOT NULL DEFAULT 0;
#ALTER TABLE game_character ADD `cb_running_count` int(11) NOT NULL DEFAULT 0;
#ALTER TABLE game_character ADD `cb_battle` tinyint(5) NOT NULL DEFAULT 0;
#ALTER TABLE game_character ADD `cb_recover_time` bigint(20) NOT NULL DEFAULT 0;
#ALTER TABLE game_character ADD `cb_last_id` int(11) NOT NULL DEFAULT 0;
#ALTER TABLE game_character ADD `cb_last_rank` int(11) NOT NULL DEFAULT 0;
#ALTER TABLE game_character ADD `cb_last_result` tinyint(5) NOT NULL DEFAULT 0;
#ALTER TABLE game_character ADD `fuben_next_id` int(11) NOT NULL DEFAULT 0;

#ALTER TABLE game_character DROP COLUMN `cb_camp`;
#ALTER TABLE game_character DROP COLUMN `cb_exploit`;
#ALTER TABLE game_character DROP COLUMN `cb_battle_count`;
#ALTER TABLE game_character DROP COLUMN `cb_running_count`;
#ALTER TABLE game_character DROP COLUMN `cb_battle`;
#ALTER TABLE game_character DROP COLUMN `cb_recover_time`;
#alter table game_character add fengshen blob NOT NULL;

#2014.11.24
#alter table game_character add `buymoneybojilevel` tinyint(5) default 2;

#2014.12.01
#ALTER TABLE game_character ADD `cb_total_count` int(11) NOT NULL DEFAULT 0;
#ALTER TABLE game_character ADD `cb_win_count` int(11) NOT NULL DEFAULT 0;

#2014.12.03
#ALTER TABLE game_character ADD `cb_report_data` blob NOT NULL;

/*CREATE TABLE `game_fabao` (
  `charguid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '角色guid',
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '法宝guid',
  `configid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '配置id',
  `level` int(20) unsigned NOT NULL DEFAULT '1' COMMENT '等级',
  `exp` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '经验',
  `pos` tinyint(5) NOT NULL DEFAULT '0' COMMENT '法宝装备的位置',
  `piece` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '法宝碎片数',
  PRIMARY KEY (`guid`),
  index index_charguid (charguid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;*/

#2015.01.06
#ALTER TABLE game_character ADD `level_reward_index` int(11) NOT NULL DEFAULT 0;
#ALTER TABLE game_character add heishi blob NOT NULL;

#2015.1.12
/*DROP TABLE IF EXISTS `game_legio`;
CREATE TABLE `game_legio` (
  `legio_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '军团guid',
  `legio_name` varchar(50) NOT NULL UNIQUE DEFAULT '' COMMENT '军团名称',
  `legio_level` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '军团等级',
  `legio_exp` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '军团经验',
  `legio_player_count` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '玩家总数',
  `legio_confine_flag` tinyint(5) unsigned NOT NULL DEFAULT '0' COMMENT '申请限制标记',
  `legio_confine_level` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '申请限制等级',
  `legio_apply_list` blob NOT NULL COMMENT '玩家申请列表',
  `legio_impeach_step` tinyint(5) unsigned NOT NULL DEFAULT '0' COMMENT '弹劾步骤',
  `legio_chief_day` tinyint(5) unsigned NOT NULL DEFAULT '0' COMMENT '首领离线天数',
  `legio_officer_day` tinyint(5) unsigned NOT NULL DEFAULT '0' COMMENT '官员离线天数',
  `legio_no_logio_day` tinyint(5) unsigned NOT NULL DEFAULT '0' COMMENT '无人登录天数',
  `legio_vote_day` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '投票天数',
  `legio_create_time` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `legio_notice` varchar(1000) NOT NULL DEFAULT '' COMMENT '军团公告',
  `legio_policy` tinyint(5) unsigned NOT NULL DEFAULT '0' COMMENT '军团方针',
  PRIMARY KEY (`legio_id`),
  index index_legio_name (legio_name)
) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=utf8;*/

#ALTER TABLE game_character ADD `jt_legio_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '军团guid';
#ALTER TABLE game_character ADD `jt_legio_post` tinyint(5) unsigned NOT NULL DEFAULT '0' COMMENT '军团职位';
#ALTER TABLE game_character ADD `jt_legio_credit` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '军团贡献';
#ALTER TABLE game_character ADD `jt_legio_total_credit` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '累积军团总贡献';
#ALTER TABLE game_character ADD `jt_entry_time` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '入团时间';
#ALTER TABLE game_character ADD `jt_vote_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '所投票玩家ID';
#ALTER TABLE game_character ADD `jt_manifesto` varchar(500) NOT NULL DEFAULT '' COMMENT '军团竞选宣言';


#2015.1.28
#ALTER TABLE game_character ADD `jt_store_data` blob NOT NULL COMMENT '军团商店数据';
#ALTER TABLE game_character ADD `jt_store_next_time` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '军团商店下次刷新时间';
#ALTER TABLE game_character ADD `jt_book_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '军团读书次数';
#ALTER TABLE game_legio ADD `legio_supply` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '军团物资';
#ALTER TABLE game_character ADD `jt_campaign` tinyint(5) unsigned NOT NULL DEFAULT '0' COMMENT '是否竞选';

#2015.2.4
#ALTER TABLE game_character ADD `lastfindtime` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '上次出巡恢复时间';

#2015.3.13
/*
DROP TABLE IF EXISTS `app_payment`;
CREATE TABLE `app_payment` (
  `transaction_id` varchar(30) NOT NULL DEFAULT '' COMMENT '交易ID',
  `product_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '产品ID',
  `quantity` tinyint(5) unsigned NOT NULL DEFAULT '0' COMMENT '数量',
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '角色guid',
  `finish_time` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '完成验证时间',
  index index_transaction_id (transaction_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE game_character ADD `jt_worship_type` tinyint(5) unsigned NOT NULL DEFAULT '0' COMMENT '军团供奉类型';
ALTER TABLE game_character ADD `jt_accredit_data` blob NOT NULL COMMENT '军团派驻伙伴列表';
ALTER TABLE game_character ADD `jt_rent_guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '租用军团伙伴的guid';
ALTER TABLE game_character ADD `jt_god_cd` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '天神CD时间';

ALTER TABLE game_legio ADD `legio_god_count` tinyint(5) unsigned NOT NULL DEFAULT '0' COMMENT '每周天神次数';
ALTER TABLE game_legio ADD `legio_god_step` tinyint(5) unsigned NOT NULL DEFAULT '0' COMMENT '天神步骤';
ALTER TABLE game_legio ADD `legio_god_type` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '天神类型';
ALTER TABLE game_legio ADD `legio_god_level` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '天神等级';
ALTER TABLE game_legio ADD `legio_god_health` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '天神剩余生命值';
ALTER TABLE game_legio ADD `legio_god_ranking` blob NOT NULL COMMENT '天神排名';
ALTER TABLE game_legio ADD `legio_god_bosslist` blob NOT NULL COMMENT '每日可选天神列表';*/


#2015.3.30
#ALTER TABLE game_character add arena_best_rank int(11) default 0;
#UPDATE game_character set arena_best_rank = arena_rank;

#2015.4.7
#ALTER TABLE game_item CHANGE `count` `count` int(11) unsigned NOT NULL DEFAULT '0';

#2015.4.8
#ALTER TABLE game_character ADD `jieluedata` blob NOT NULL COMMENT '劫掠数据';

/*
DROP TABLE IF EXISTS `game_jielue_danyao`;
CREATE TABLE `game_jielue_danyao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `charguid` bigint(20) NOT NULL,
  `configid` int(11) NOT NULL,
  `piece` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;*/

#2015.4.16
#ALTER TABLE game_character ADD `jt_war_reward` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '军团战奖励标记';
#ALTER TABLE game_legio ADD `legio_city_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '军团城池ID';
#ALTER TABLE game_legio ADD `legio_war_plan` tinyint(5) unsigned NOT NULL DEFAULT '0' COMMENT '军团战方针';
#ALTER TABLE game_legio ADD `legio_war_city` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '军团方针指定城池';
#ALTER TABLE game_legio ADD `legio_war_legio` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '军团方针指定军团';
#ALTER TABLE game_legio ADD `legio_war_result` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '军团战结果';
#ALTER TABLE game_legio ADD `legio_tablet_level` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '界碑等级';
#ALTER TABLE game_legio ADD `legio_specialty` blob NOT NULL COMMENT '城池特产数据';

#2015.4.21
#ALTER TABLE game_character drop column zxtdata;
#ALTER TABLE game_character ADD `zxtstar` int(11) signed NOT NULL DEFAULT '-1' COMMENT '占星台星数';
#ALTER TABLE game_partner ADD `zxlevel` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '占星等级';

#2015.6.1
/*
DROP TABLE IF EXISTS `soha_order`;
CREATE TABLE `soha_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `charguid` bigint(20) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `order_info` varchar(100) NOT NULL,
  `app_id` varchar(100) NOT NULL,
  `pay_time` bigint(20) NOT NULL,
  `user_id` char(50) NOT NULL,
  `role_id` char(50) NOT NULL,
  `area_id` char(50) NOT NULL,
  `price` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `platform` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;*/

#ALTER TABLE `game_partner` ADD COLUMN `combat_value` INTEGER(11) NOT NULL DEFAULT '0';

#2015.6.15
#ALTER TABLE game_character ADD `huodongdata` blob NOT NULL COMMENT '活动数据';

#2015.6.18
#ALTER TABLE game_character ADD `freeze` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '封停时间';
#ALTER TABLE game_character ADD `islock` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否被锁';

#2015.6.26
#ALTER TABLE game_character ADD `stop_talk_time` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '禁言结束时间';

#2015.6.17
#ALTER TABLE game_character ADD `rechargedata` blob NOT NULL COMMENT '充值奖励数据';

#2015.7.21
#ALTER TABLE game_character ADD `offlinebuygold` int(20) NOT NULL DEFAULT '0' COMMENT '下线时购买的元宝数';

#2015.8.10
#ALTER TABLE game_character ADD `formation` blob NOT NULL COMMENT '军阵数据';
#ALTER TABLE game_character ADD `plus_attr` blob NOT NULL COMMENT '增益数据';

#2015.8.19
ALTER TABLE game_character ADD `jt_store_refresh_times` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '本日军团商店手动刷新次数';
ALTER TABLE game_character CHANGE `cb_battle_count` `cb_battle_count` int(11) unsigned NOT NULL DEFAULT '3';
Update game_character SET cb_battle_count = 3, cb_recover_time = 0;