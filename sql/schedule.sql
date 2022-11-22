DELIMITER \\
#该表所在的数据库名称
USE `bttn_mmd_dev`\\

CREATE EVENT
IF NOT EXISTS `daily_generate_partition` ON SCHEDULE EVERY 1 DAY #执行周期，还有天、月等等
STARTS '2022-10-31 01:00:00' ON COMPLETION PRESERVE ENABLE COMMENT 'Creating partitions' DO

BEGIN
	#调用刚才创建的存储过程，第一个参数是数据库名称，第二个参数是表名称
	CALL cus_partition('bttn_mmd_dev', 'khbqsj');
END\\
DELIMITER ;
