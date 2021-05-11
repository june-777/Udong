DROP TABLE IF EXISTS `our_market`;

CREATE TABLE `our_market` (
	`om_id`	INT	NOT NULL,
	`user_id`	varchar(20)	NOT NULL,
	`user_sigg_id`	INT	NOT NULL,
	`om_subject`	varchar(40)	NOT NULL,
	`om_date`	datetime	NOT NULL,
	`om_content`	varchar(100)	NOT NULL,
	`om_cnt`	int	NOT NULL,
	`om_red`	int	NOT NULL
);

DROP TABLE IF EXISTS `om_comment`;

CREATE TABLE `om_comment` (
	`omc_id`	INT	NOT NULL,
	`om_id`	INT	NOT NULL,
	`omc_user`	varchar(20)	NOT NULL,
	`omc_comment`	varchar(50)	NOT NULL,
	`omc_time`	datetime	NOT NULL,
	`omc_class`	int	NOT NULL,
	`omc_order`	int	NOT NULL,
	`omc_groupnum`	int	NOT NULL
);

DROP TABLE IF EXISTS `chat_messages`;

CREATE TABLE `chat_messages` (
	`cm_id`	INT	NOT NULL,
	`cr_id`	int	NOT NULL,
	`user_id`	varchar(20)	NOT NULL,
	`sender_id`	varchar(20)	NOT NULL,
	`r_id`	varchar(100)	NOT NULL,
	`cm_msg`	varchar(50)	NOT NULL,
	`cm_time`	datetime	NOT NULL,
	`cm_read`	TINYINT	NOT NULL,
	`cm_img`	blob	NULL
);

DROP TABLE IF EXISTS `chat_rooms`;

CREATE TABLE `chat_rooms` (
	`cr_id`	int	NOT NULL,
	`cr_time`	datetime	NOT NULL,
	`cr_link`	varchar(100)	NOT NULL,
	`cr_cnt`	int	NOT NULL
);

DROP TABLE IF EXISTS `buddy_list`;

CREATE TABLE `buddy_list` (
	`bl_id`	int	NOT NULL,
	`bl_add_id`	varchar(20)	NOT NULL,
	`bl_target_id`	varchar(20)	NOT NULL,
	`bl_time`	datetime	NOT NULL
);

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
	`category_id`	VARCHAR(255)	NOT NULL,
	`category_name`	VARCHAR(255)	NOT NULL,
	`table_name`	VARCHAR(255)	NOT NULL
);

DROP TABLE IF EXISTS `resource`;

CREATE TABLE `resource` (
	`resource_id`	VARCHAR(255)	NOT NULL,
	`dir`	VARCHAR(255)	NOT NULL,
	`cartegory_id`	VARCHAR(255)	NOT NULL,
	`board_id`	VARCHAR(255)	NOT NULL
);

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
	`user_id`	varchar(20)	NOT NULL,
	`sigg_id`	INT	NOT NULL,
	`user_pw`	varchar(20)	NOT NULL,
	`user_name`	varchar(30)	NOT NULL,
	`user_region`	varchar(40)	NOT NULL,
	`user_age`	int	NOT NULL,
	`user_sex`	varchar(5)	NOT NULL,
	`user_mobile`	varchar(20)	NOT NULL,
	`user_nick`	varchar(20)	NOT NULL,
	`user_red`	int	NOT NULL,
	`user_cnt`	int	NOT NULL,
	`user_email`	varchar(30)	NOT NULL,
	`user_admin`	TINYINT	NOT NULL,
	`user_level`	varchar(20)	NOT NULL,
	`fcm_token`	text	NULL
);

DROP TABLE IF EXISTS `board`;

CREATE TABLE `board` (
	`b_id`	INT	NOT NULL	COMMENT 'NOT NULL',
	`user_id`	varchar(20)	NOT NULL,
	`user_sigg_id`	INT	NOT NULL,
	`b_subject`	varchar(40)	NOT NULL,
	`b_date`	datetime	NOT NULL,
	`b_content`	varchar(100)	NOT NULL,
	`b_cnt`	int	NOT NULL,
	`b_red`	int	NOT NULL
);

DROP TABLE IF EXISTS `sgroup_board`;

CREATE TABLE `sgroup_board` (
	`sb_id`	INT	NOT NULL,
	`user_id`	varchar(20)	NOT NULL,
	`user_sigg_id`	INT	NOT NULL,
	`sb_subject`	varchar(40)	NOT NULL,
	`sb_date`	datetime	NOT NULL,
	`sb_content`	varchar(100)	NOT NULL,
	`sb_cnt`	int	NOT NULL,
	`sb_red`	int	NOT NULL
);

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
	`news_id`	INT	NOT NULL,
	`user_id`	varchar(20)	NOT NULL,
	`user_sigg_id`	INT	NOT NULL,
	`news_subject`	varchar(40)	NOT NULL,
	`news_date`	datetime	NOT NULL,
	`news_content`	varchar(100)	NOT NULL
);

DROP TABLE IF EXISTS `region_prom`;

CREATE TABLE `region_prom` (
	`rp_id`	INT	NOT NULL,
	`user_id`	varchar(20)	NOT NULL,
	`user_sigg_id`	INT	NOT NULL,
	`rp_type`	varchar(20)	NOT NULL,
	`rp_subject`	varchar(40)	NOT NULL,
	`rp_content`	varchar(100)	NOT NULL,
	`rp_cnt`	int	NOT NULL	DEFAULT 0,
	`rp_like`	int	NOT NULL	DEFAULT 0,
	`rp_ulike`	int	NOT NULL	DEFAULT 0
);

DROP TABLE IF EXISTS `sido_areas`;

CREATE TABLE `sido_areas` (
	`sido_id`	INT	NOT NULL,
	`adm_code`	varchar(2)	NOT NULL,
	`name`	varchar(50)	NOT NULL,
	`version`	varchar(20)	NOT NULL
);

DROP TABLE IF EXISTS `sigg_areas`;

CREATE TABLE `sigg_areas` (
	`sigg_id`	INT	NOT NULL,
	`sido_id`	INT	NOT NULL,
	`adm_code`	varchar(5)	NOT NULL,
	`name`	varchar(50)	NOT NULL,
	`version`	timestamp	NOT NULL
);

DROP TABLE IF EXISTS `b_comment`;

CREATE TABLE `b_comment` (
	`bc_id`	INT	NOT NULL,
	`b_id`	INT	NOT NULL	COMMENT 'NOT NULL',
	`bc_user`	varchar(20)	NOT NULL,
	`bc_comment`	varchar(50)	NOT NULL,
	`bc_time`	datetime	NOT NULL,
	`bc_class`	int	NOT NULL,
	`bc_order`	int	NOT NULL,
	`bc_groupnum`	int	NOT NULL
);

DROP TABLE IF EXISTS `sb_comment`;

CREATE TABLE `sb_comment` (
	`sbc_id`	INT	NOT NULL,
	`sb_id`	INT	NOT NULL,
	`sbc_user`	varchar(20)	NOT NULL,
	`sbc_comment`	varchar(50)	NOT NULL,
	`sbc_time`	datetime	NOT NULL,
	`sbc_class`	int	NOT NULL,
	`sbc_order`	int	NOT NULL,
	`sbc_groupnum`	int	NOT NULL
);

DROP TABLE IF EXISTS `news_comment`;

CREATE TABLE `news_comment` (
	`nc_id`	INT	NOT NULL,
	`news_id`	INT	NOT NULL,
	`nc_user`	varchar(20)	NOT NULL,
	`nc_comment`	varchar(50)	NOT NULL,
	`nc_time`	datetime	NOT NULL,
	`nc_class`	int	NOT NULL,
	`nc_order`	int	NOT NULL,
	`nc_groupnum`	int	NOT NULL
);

DROP TABLE IF EXISTS `rp_comment`;

CREATE TABLE `rp_comment` (
	`rpc_id`	INT	NOT NULL,
	`rp_id`	INT	NOT NULL,
	`rpc_user`	varchar(20)	NOT NULL,
	`rpc_comment`	varchar(50)	NOT NULL,
	`rpc_time`	datetime	NOT NULL,
	`rpc_class`	int	NOT NULL,
	`rpc_order`	int	NOT NULL,
	`rpc_groupnum`	int	NOT NULL
);

DROP TABLE IF EXISTS `user_level`;

CREATE TABLE `user_level` (
	`uc_id`	int	NOT NULL,
	`uc_name`	varchar(20)	NOT NULL,
	`uc_criteria`	varchar(40)	NOT NULL
);

ALTER TABLE `our_market` ADD CONSTRAINT `PK_OUR_MARKET` PRIMARY KEY (
	`om_id`
);

ALTER TABLE `om_comment` ADD CONSTRAINT `PK_OM_COMMENT` PRIMARY KEY (
	`omc_id`
);

ALTER TABLE `chat_messages` ADD CONSTRAINT `PK_CHAT_MESSAGES` PRIMARY KEY (
	`cm_id`
);

ALTER TABLE `chat_rooms` ADD CONSTRAINT `PK_CHAT_ROOMS` PRIMARY KEY (
	`cr_id`
);

ALTER TABLE `buddy_list` ADD CONSTRAINT `PK_BUDDY_LIST` PRIMARY KEY (
	`bl_id`
);

ALTER TABLE `category` ADD CONSTRAINT `PK_CATEGORY` PRIMARY KEY (
	`category_id`
);

ALTER TABLE `resource` ADD CONSTRAINT `PK_RESOURCE` PRIMARY KEY (
	`resource_id`
);

ALTER TABLE `user` ADD CONSTRAINT `PK_USER` PRIMARY KEY (
	`user_id`
);

ALTER TABLE `board` ADD CONSTRAINT `PK_BOARD` PRIMARY KEY (
	`b_id`
);

ALTER TABLE `sgroup_board` ADD CONSTRAINT `PK_SGROUP_BOARD` PRIMARY KEY (
	`sb_id`
);

ALTER TABLE `news` ADD CONSTRAINT `PK_NEWS` PRIMARY KEY (
	`news_id`
);

ALTER TABLE `region_prom` ADD CONSTRAINT `PK_REGION_PROM` PRIMARY KEY (
	`rp_id`
);

ALTER TABLE `sido_areas` ADD CONSTRAINT `PK_SIDO_AREAS` PRIMARY KEY (
	`sido_id`
);

ALTER TABLE `sigg_areas` ADD CONSTRAINT `PK_SIGG_AREAS` PRIMARY KEY (
	`sigg_id`
);

ALTER TABLE `b_comment` ADD CONSTRAINT `PK_B_COMMENT` PRIMARY KEY (
	`bc_id`
);

ALTER TABLE `sb_comment` ADD CONSTRAINT `PK_SB_COMMENT` PRIMARY KEY (
	`sbc_id`
);

ALTER TABLE `news_comment` ADD CONSTRAINT `PK_NEWS_COMMENT` PRIMARY KEY (
	`nc_id`
);

ALTER TABLE `rp_comment` ADD CONSTRAINT `PK_RP_COMMENT` PRIMARY KEY (
	`rpc_id`
);

ALTER TABLE `user_level` ADD CONSTRAINT `PK_USER_LEVEL` PRIMARY KEY (
	`uc_id`
);

ALTER TABLE `our_market` ADD CONSTRAINT `FK_user_TO_our_market_1` FOREIGN KEY (
	`user_id`
)
REFERENCES `user` (
	`user_id`
);

ALTER TABLE `om_comment` ADD CONSTRAINT `FK_our_market_TO_om_comment_1` FOREIGN KEY (
	`om_id`
)
REFERENCES `our_market` (
	`om_id`
);

ALTER TABLE `chat_messages` ADD CONSTRAINT `FK_chat_rooms_TO_chat_messages_1` FOREIGN KEY (
	`cr_id`
)
REFERENCES `chat_rooms` (
	`cr_id`
);

ALTER TABLE `chat_messages` ADD CONSTRAINT `FK_user_TO_chat_messages_1` FOREIGN KEY (
	`user_id`
)
REFERENCES `user` (
	`user_id`
);

ALTER TABLE `user` ADD CONSTRAINT `FK_sigg_areas_TO_user_1` FOREIGN KEY (
	`sigg_id`
)
REFERENCES `sigg_areas` (
	`sigg_id`
);

ALTER TABLE `board` ADD CONSTRAINT `FK_user_TO_board_1` FOREIGN KEY (
	`user_id`
)
REFERENCES `user` (
	`user_id`
);

ALTER TABLE `sgroup_board` ADD CONSTRAINT `FK_user_TO_sgroup_board_1` FOREIGN KEY (
	`user_id`
)
REFERENCES `user` (
	`user_id`
);

ALTER TABLE `news` ADD CONSTRAINT `FK_user_TO_news_1` FOREIGN KEY (
	`user_id`
)
REFERENCES `user` (
	`user_id`
);

ALTER TABLE `region_prom` ADD CONSTRAINT `FK_user_TO_region_prom_1` FOREIGN KEY (
	`user_id`
)
REFERENCES `user` (
	`user_id`
);

ALTER TABLE `sigg_areas` ADD CONSTRAINT `FK_sido_areas_TO_sigg_areas_1` FOREIGN KEY (
	`sido_id`
)
REFERENCES `sido_areas` (
	`sido_id`
);

ALTER TABLE `b_comment` ADD CONSTRAINT `FK_board_TO_b_comment_1` FOREIGN KEY (
	`b_id`
)
REFERENCES `board` (
	`b_id`
);

ALTER TABLE `sb_comment` ADD CONSTRAINT `FK_sgroup_board_TO_sb_comment_1` FOREIGN KEY (
	`sb_id`
)
REFERENCES `sgroup_board` (
	`sb_id`
);

ALTER TABLE `news_comment` ADD CONSTRAINT `FK_news_TO_news_comment_1` FOREIGN KEY (
	`news_id`
)
REFERENCES `news` (
	`news_id`
);

ALTER TABLE `rp_comment` ADD CONSTRAINT `FK_region_prom_TO_rp_comment_1` FOREIGN KEY (
	`rp_id`
)
REFERENCES `region_prom` (
	`rp_id`
);

