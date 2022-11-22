DELIMITER //
#该表所在数据库名称
USE `bttn_mmd_dev`//
DROP PROCEDURE IF EXISTS `cus_partition`//

CREATE PROCEDURE cus_partition (IN_SCHEMANAME VARCHAR(64), IN_TABLENAME VARCHAR(64))
BEGIN
#当前日期存在的分区的个数
DECLARE ROWS_CNT INT UNSIGNED ;
#目前日期，为当前日期的后一天
DECLARE TARGET_DATE TIMESTAMP;
#分区的名称，格式为p20180620
DECLARE PARTITIONNAME VARCHAR(9);
#当前分区名称的分区值上限，即为 PARTITIONNAME + 1
DECLARE PARTITION_ADD_DAY INT;
#分区起始日期
DECLARE START_DATE INT;
#最小分区日期
DECLARE MINDATE INT;
#最小分区名称
DECLARE MIN_PARTITIONNAME VARCHAR(9);
SET TARGET_DATE = NOW() + INTERVAL 1 DAY;
SET TARGET_DATE = TARGET_DATE + INTERVAL 1 DAY;
SET PARTITIONNAME = DATE_FORMAT( TARGET_DATE, 'p%Y%m%d' );
SET PARTITION_ADD_DAY = (YEAR (TARGET_DATE) * 100 + MONTH (TARGET_DATE)) * 100 + DAY (TARGET_DATE);
SET START_DATE = (YEAR (DATE(NOW() - INTERVAL 95 DAY)) * 100 + MONTH (DATE(NOW() - INTERVAL 95 DAY))) * 100 + DAY (DATE(NOW() - INTERVAL 95 DAY));

#获取当前表存在的分区数
SELECT COUNT(*) INTO ROWS_CNT FROM information_schema.partitions
WHERE table_schema = IN_SCHEMANAME AND table_name = IN_TABLENAME AND partition_name = PARTITIONNAME;

SELECT MIN(replace(partition_description, '''', '')) INTO MINDATE FROM information_schema.partitions
WHERE table_schema = IN_SCHEMANAME AND table_name = IN_TABLENAME;

SELECT partition_name INTO MIN_PARTITIONNAME FROM information_schema.partitions
WHERE table_schema = IN_SCHEMANAME AND table_name = IN_TABLENAME AND partition_description = MINDATE;

IF ROWS_CNT = 0 THEN
SET @SQL = CONCAT( 'ALTER TABLE `', IN_SCHEMANAME, '`.`', IN_TABLENAME, '`',
' ADD PARTITION (PARTITION ', PARTITIONNAME, " VALUES LESS THAN (
",PARTITION_ADD_DAY,") ENGINE = InnoDB);" );
PREPARE STMT FROM @SQL;
EXECUTE STMT;
#DEALLOCATE PREPARE STMT;
DEALLOCATE PREPARE STMT;
ELSE 
SELECT CONCAT("partition `", PARTITIONNAME, "` for table `",IN_SCHEMANAME, ".", IN_TABLENAME, "` already exists") AS result;
END IF;

BLOCK:WHILE (START_DATE - MINDATE >= 0) DO
	#SELECT MINDATE, MIN_PARTITIONNAME,@p_name;
	SELECT partition_name INTO MIN_PARTITIONNAME FROM information_schema.partitions
	WHERE table_schema = IN_SCHEMANAME AND table_name = IN_TABLENAME AND partition_description = MINDATE;
	#SELECT @p_name,MIN_PARTITIONNAME;
	IF (MIN_PARTITIONNAME = @p_name) THEN LEAVE BLOCK;
	END IF;
	SET @drop_sql = CONCAT( 'ALTER TABLE `', IN_SCHEMANAME, '`.`', IN_TABLENAME, '`', ' DROP PARTITION ', MIN_PARTITIONNAME );
	SET @p_name = MIN_PARTITIONNAME;
	PREPARE STMT FROM @drop_sql;
	EXECUTE STMT;
	DEALLOCATE PREPARE STMT;
	SET MINDATE = MINDATE + 1;
END WHILE BLOCK;

#SELECT ROWS_CNT,TARGET_DATE,PARTITIONNAME,PARTITION_ADD_DAY,START_DATE,MINDATE,MIN_PARTITIONNAME,START_DATE- MINDATE>0;

END//

DELIMITER

CALL cus_partition('bttn_mmd_dev', 'khbqsj');