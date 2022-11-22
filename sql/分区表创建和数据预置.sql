-- 客户标签数据表
DROP TABLE
IF EXISTS `khbqsj`;

CREATE TABLE `khbqsj` (
	`khbhoooo` VARCHAR (60) NOT NULL COMMENT '客户编号',
	`sjrqoooo` date NOT NULL COMMENT '数据日期',
	`shengaoo` VARCHAR (60) DEFAULT NULL COMMENT '身高',
	`zzmmoooo` VARCHAR (60) DEFAULT NULL COMMENT '政治面貌',
	`hyztoooo` VARCHAR (60) DEFAULT NULL COMMENT '婚姻状况',
	`zgxloooo` VARCHAR (60) DEFAULT NULL COMMENT '学历',
	`jyzkoooo` VARCHAR (60) DEFAULT NULL COMMENT '就业状况',
	`xzoooooo` VARCHAR (60) DEFAULT NULL COMMENT '星座',
	`lszjcsoo` VARCHAR (60) DEFAULT NULL COMMENT '历史中奖次数',
	`drzjzgcs` VARCHAR (60) DEFAULT NULL COMMENT '历史单日中奖最高次数',
	`lszcjcso` VARCHAR (60) DEFAULT NULL COMMENT '历史总抽奖次数',
	`dczhxdpl` VARCHAR (60) DEFAULT NULL COMMENT '电池综合下单频率',
	`thlooooo` VARCHAR (60) DEFAULT NULL COMMENT '退货率',
	`dbzgzjje` VARCHAR (60) DEFAULT NULL COMMENT '历史单笔最高中奖金额',
	`hhlooooo` VARCHAR (60) DEFAULT NULL COMMENT '换货率',
	`yzhnlzso` VARCHAR (60) DEFAULT NULL COMMENT '已转化能量总数',
	`nlzhcjcs` VARCHAR (60) DEFAULT NULL COMMENT '能量已转化抽奖次数',
	`nlzhjfcs` VARCHAR (60) DEFAULT NULL COMMENT '能量已转化积分次数',
	`nlzhjfzl` VARCHAR (60) DEFAULT NULL COMMENT '能量已转化积分总量',
	`wsysxnls` VARCHAR (60) DEFAULT NULL COMMENT '未使用生效中能量总数',
	`wsysxnlz` VARCHAR (60) DEFAULT NULL COMMENT '未使用已失效能量总数',
	`yzhjfzso` VARCHAR (60) DEFAULT NULL COMMENT '已转化积分总数',
	`jfdhcsoo` VARCHAR (60) DEFAULT NULL COMMENT '使用积分兑换的次数',
	`yzhswgso` VARCHAR (60) DEFAULT NULL COMMENT '已转化实物个数',
	`yjshbzwo` VARCHAR (60) DEFAULT NULL COMMENT '已接收红包总额',
	`ytxzjeoo` VARCHAR (60) DEFAULT NULL COMMENT '已提现总金额',
	`drzgtxje` VARCHAR (60) DEFAULT NULL COMMENT '单日最高提现金额',
	`lsdcxdso` VARCHAR (60) DEFAULT NULL COMMENT '历史电池下单数',
	`fcoooooo` VARCHAR (60) DEFAULT NULL COMMENT '房产',
	`fcjzoooo` VARCHAR (60) DEFAULT NULL COMMENT '房产价值',
	`ccoooooo` VARCHAR (60) DEFAULT NULL COMMENT '车产',
	`ccjzoooo` VARCHAR (60) DEFAULT NULL COMMENT '车产价值',
	`fcsloooo` VARCHAR (60) DEFAULT NULL COMMENT '房产数量',
	`sfyyfzoo` VARCHAR (60) DEFAULT NULL COMMENT '是否拥有负债',
	`shzhskyh` VARCHAR (60) DEFAULT NULL COMMENT '商户账户收款银行方',
	`jyxxnooo` VARCHAR (60) DEFAULT NULL COMMENT '经营性效能',
	`last_updated_stamp` datetime DEFAULT NULL COMMENT '最后更新时间',
	`last_updated_tx_stamp` datetime DEFAULT NULL COMMENT '最后更新事务时间',
	`created_stamp` datetime DEFAULT NULL COMMENT '创建时间',
	`created_tx_stamp` datetime DEFAULT NULL COMMENT '创建事务时间',
	PRIMARY KEY (`khbhoooo`, `sjrqoooo`)
) ENGINE = INNODB DEFAULT charset = utf8 COMMENT = '指标标签映射表' PARTITION BY RANGE (
	(
		YEAR (sjrqoooo) * 100 + MONTH (sjrqoooo)
	) * 100 + DAY (sjrqoooo)
)(
	PARTITION p0
	VALUES
		LESS THAN (20201002) ENGINE = INNODB,
		PARTITION p1
	VALUES
		LESS THAN (20201003) ENGINE = INNODB,
		PARTITION p2
	VALUES
		LESS THAN (20201004) ENGINE = INNODB,
		PARTITION p3
	VALUES
		LESS THAN (20201005) ENGINE = INNODB,
		PARTITION p20221030
	VALUES
		LESS THAN (20221030) ENGINE = INNODB,
		PARTITION p20221031
	VALUES
		LESS THAN (20221031) ENGINE = INNODB,
		PARTITION p20221101
	VALUES
		LESS THAN (20221101) ENGINE = INNODB,
		PARTITION p20221102
	VALUES
		LESS THAN (20221102) ENGINE = INNODB
);

INSERT INTO `bttn_mmd_dev`.`khbqsj` (`khbhoooo`, `sjrqoooo`, `khnloooo`, `xbdmoooo`, `mingzuoo`, `jgoooooo`, `szqyoooo`, `gjoooooo`, `lszjcsoo`, `drzgcjcs`, `khsxoooo`, `fwploooo`, `sblxoooo`, `llsdoooo`, `dlploooo`, `jtrksooo`, `znsloooo`, `gsgzoooo`, `cpphoooo`, `last_updated_stamp`, `last_updated_tx_stamp`, `created_stamp`, `created_tx_stamp`) VALUES ('1001520305', '2020-10-01', '22', 'MALE', '汉族', '2_265075|2_265408|2_267801', '2_265075|2_265408|2_267801', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `bttn_mmd_dev`.`khbqsj` (`khbhoooo`, `sjrqoooo`, `khnloooo`, `xbdmoooo`, `mingzuoo`, `jgoooooo`, `szqyoooo`, `gjoooooo`, `lszjcsoo`, `drzgcjcs`, `khsxoooo`, `fwploooo`, `sblxoooo`, `llsdoooo`, `dlploooo`, `jtrksooo`, `znsloooo`, `gsgzoooo`, `cpphoooo`, `last_updated_stamp`, `last_updated_tx_stamp`, `created_stamp`, `created_tx_stamp`) VALUES ('1001520305', '2020-10-02', '22', 'MALE', '汉族', '2_265075|2_265408|2_267801', '2_265075|2_265408|2_267801', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `bttn_mmd_dev`.`khbqsj` (`khbhoooo`, `sjrqoooo`, `khnloooo`, `xbdmoooo`, `mingzuoo`, `jgoooooo`, `szqyoooo`, `gjoooooo`, `lszjcsoo`, `drzgcjcs`, `khsxoooo`, `fwploooo`, `sblxoooo`, `llsdoooo`, `dlploooo`, `jtrksooo`, `znsloooo`, `gsgzoooo`, `cpphoooo`, `last_updated_stamp`, `last_updated_tx_stamp`, `created_stamp`, `created_tx_stamp`) VALUES ('1001520305', '2020-10-03', '22', 'MALE', '汉族', '2_265075|2_265408|2_267801', '2_265075|2_265408|2_267801', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `bttn_mmd_dev`.`khbqsj` (`khbhoooo`, `sjrqoooo`, `khnloooo`, `xbdmoooo`, `mingzuoo`, `jgoooooo`, `szqyoooo`, `gjoooooo`, `lszjcsoo`, `drzgcjcs`, `khsxoooo`, `fwploooo`, `sblxoooo`, `llsdoooo`, `dlploooo`, `jtrksooo`, `znsloooo`, `gsgzoooo`, `cpphoooo`, `last_updated_stamp`, `last_updated_tx_stamp`, `created_stamp`, `created_tx_stamp`) VALUES ('1001520305', '2020-10-04', '22', 'MALE', '汉族', '2_265075|2_265408|2_267801', '2_265075|2_265408|2_267801', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `bttn_mmd_dev`.`khbqsj` (`khbhoooo`, `sjrqoooo`, `khnloooo`, `xbdmoooo`, `mingzuoo`, `jgoooooo`, `szqyoooo`, `gjoooooo`, `lszjcsoo`, `drzgcjcs`, `khsxoooo`, `fwploooo`, `sblxoooo`, `llsdoooo`, `dlploooo`, `jtrksooo`, `znsloooo`, `gsgzoooo`, `cpphoooo`, `last_updated_stamp`, `last_updated_tx_stamp`, `created_stamp`, `created_tx_stamp`) VALUES ('1001520305', '2020-10-05', '22', 'MALE', '汉族', '2_265075|2_265408|2_267801', '2_265075|2_265408|2_267801', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `bttn_mmd_dev`.`khbqsj` (`khbhoooo`, `sjrqoooo`, `khnloooo`, `xbdmoooo`, `mingzuoo`, `jgoooooo`, `szqyoooo`, `gjoooooo`, `lszjcsoo`, `drzgcjcs`, `khsxoooo`, `fwploooo`, `sblxoooo`, `llsdoooo`, `dlploooo`, `jtrksooo`, `znsloooo`, `gsgzoooo`, `cpphoooo`, `last_updated_stamp`, `last_updated_tx_stamp`, `created_stamp`, `created_tx_stamp`) VALUES ('1001520305', '2022-10-30', '22', 'MALE', '汉族', '2_265075|2_265408|2_267801', '2_265075|2_265408|2_267801', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `bttn_mmd_dev`.`khbqsj` (`khbhoooo`, `sjrqoooo`, `khnloooo`, `xbdmoooo`, `mingzuoo`, `jgoooooo`, `szqyoooo`, `gjoooooo`, `lszjcsoo`, `drzgcjcs`, `khsxoooo`, `fwploooo`, `sblxoooo`, `llsdoooo`, `dlploooo`, `jtrksooo`, `znsloooo`, `gsgzoooo`, `cpphoooo`, `last_updated_stamp`, `last_updated_tx_stamp`, `created_stamp`, `created_tx_stamp`) VALUES ('1001520306', '2020-10-02', '22', 'MALE', '汉族', '2_265075|2_265408|2_267801', '2_265075|2_265408|2_267801', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);



SELECT
	partition_name,	
	partition_description AS val
FROM
	information_schema. PARTITIONS
WHERE
	table_name = 'khbqsj'
AND table_schema = 'bttn_mmd_dev' order by PARTITION_DESCRIPTION desc;