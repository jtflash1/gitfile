-- ccms
select * from zbdybo; -- where ZBBHOOOO = 'KEHU_NLIN'; -- 指标定义表
select * from sjzbys; -- 指标映射表
select * from zbywlb; -- 指标业务类别表
select * from zbycgl; -- 指标应用表===指标应用场景关联表
select * from zbyycj; -- 指标应用表===指标应用场景表
select * from zbyclx; -- 指标应用场景类型表
select * from bqjgbo; -- 标签结构定义表
select * from bqzxxd; -- 标签值定义表
select * from khbqbo; -- 客户标签表
select * from gjssrz; -- 高级搜索使用日志表
select * from gjsssy; -- 高级搜索使用输入项日志表
select * from qslydy; -- 取数来源定义表

select * from yxhdpg order by CREATED_STAMP desc; -- 营销活动评估表 CampaignEvaluation
select * from yxhdnr order by CREATED_STAMP desc; -- 营销活动内容 MarketingCampaignContent
select * from yxnrst order by CREATED_STAMP desc; -- 营销内容实体 MarketingContent
select * from yghdbo; -- 员工活动表


select * from jr_ccms.hlwyxb order by CREATED_STAMP desc; -- 互联网营销表
select * from jr_ccms.qdsjtj order by CREATED_STAMP desc;; -- 渠道数据统计表 20220712155650867
select * from jr_ccms.hdcykh order by XLBSOOOO asc; -- 互联网营销参与客户表


-- 营销活动基本信息
select * from schdjb;

-- 码值表
select * from mzbooo where MZDLJOOO = 'CD007500'; -- 202203221402241829865

-- 营销活动产品表
select * from yxhdcp order by created_stamp desc;

-- 营销活动主动式渠道表
select * from yxhdqd;

-- 营销活动接触式渠道表
select * from yxhdbd;

-- 营销活动产品表 yxhdcp
select * from yxhdcp order by CREATED_STAMP desc;

-- 营销要求表
select * from yxyqbo;

-- 活动客户表
select * from hdkhbo where yxhdbsoo = '202208012046266730600';
select * from hdkhbo where ZTBSOOOO='Y' order by created_stamp desc;
select * from hdkhbo where ZTBSOOOO='Y' and yxhdbsoo = '202208311614421187996';
-- alter table hdkhbo add COLUMN SJGJSJOO DATETIME(3) DEFAULT NULL COMMENT '商机跟进时间' after sjztoooo; 
-- alter table hdkhbo add COLUMN sjlyoooo VARCHAR(60) DEFAULT NULL COMMENT '商机来源' after shangjlx; 
-- alter table hdkhbo add COLUMN CLZTOOOO VARCHAR(60) DEFAULT NULL COMMENT '处理状态' after llbgbsoo; 
-- show full processlist
-- kill 283672;
-- drop table hdkhbo;
-- show create table hdkhbo;
-- alter table hdkhbo rename to hdkhbo_cp;

-- 商机信息表名称
-- select * from sjkhst;

-- 商机跟进记录表
select * from sjgjjl;

-- 营销导入客户结果表
select * from yxdrkh where YXHDBSOO='202205111354079717824';

-- 营销工作任务表
select * from yxgzrw;

-- 客户商机跟进表
select * from khsjgj;

-- 营销联络信息表
select * from yxllxx where YXHDBSOO = '202208311524011910290';
select * from yxllxx where YXHDBSOO = '202208311614421187996';


-- select * from yxyqbo;
select * from yxyqbo;

-- 过度营销控制表
select * from gdyxkz;


-- 客户表	Party
select * from KHBOOO;


-- 人员表
select * from rybooo;
-- ALTER TABLE RYBOOO ADD COLUMN GHJLSSJM VARCHAR(60) DEFAULT NULL COMMENT '管户经理所属机构名称' AFTER GHJLSSJG; 
-- ALTER TABLE RYBOOO ADD COLUMN GHKHJLMC VARCHAR(60) DEFAULT NULL COMMENT '管户客户经理名称' AFTER GHKHJLBH;
-- ALTER TABLE RYBOOO ADD COLUMN LSNYRZBS VARCHAR(10) DEFAULT NULL COMMENT '绿色农业认证标识';
-- ALTER TABLE RYBOOO ADD COLUMN JMLXOOOO VARCHAR(60) DEFAULT NULL COMMENT '居民类型' AFTER HKXZOOOO;
-- ALTER TABLE RYBOOO ADD COLUMN SSJTKHHO VARCHAR(60) DEFAULT NULL COMMENT '集团客户编号' AFTER SFJTKHOO;
-- ALTER TABLE RYBOOO ADD COLUMN SSJTKHMC VARCHAR(255) DEFAULT NULL COMMENT '集团客户名称' AFTER SSJTKHHO;
-- ALTER TABLE RYBOOO ADD COLUMN MSBSOOOO VARCHAR(20) DEFAULT NULL COMMENT '免税标识' AFTER LSNYRZBS;
-- ALTER TABLE RYBOOO ADD COLUMN MSNFBSOO VARCHAR(20) DEFAULT NULL COMMENT '免税农业标识' AFTER MSBSOOOO;
-- ALTER TABLE RYBOOO ADD COLUMN KHXQDJOO VARCHAR(20) DEFAULT NULL COMMENT '客户洗钱等级' AFTER MSNFBSOO;



-- 客户证件表 PartyIdentification
select * from khzjbo;
-- 客户联系机制目的表 PartyContactMechPurpose
select * from khlxjz;
-- 电话号码表 TelecomNumber
select * from dhhmbo;
-- 邮政地址表 PostalAddress
select * from yzdzbo where DSRBHOOO = '8100100001' order by created_stamp desc;
-- 客户联系方式表 PartyContactMech
select * from khlxfs;
-- 联系机制表 ContactMech
select * from lxfsbo;
-- 客户管户表	PartyBelong
select * from KHGHBO order by CREATED_STAMP desc;
-- 对公客户信息实体	PartyGroup
select * from dgkhxx order by CREATED_STAMP desc;
-- alter table dgkhxx add COLUMN lsnyrzbs VARCHAR(10) DEFAULT NULL COMMENT '绿色农业认证标识' after cjjgmcoo;
-- 客户属性表 PartyAttribute
select * from khsxbo;
-- 客户关联关系 PartyRelationship
select * from khglgx;
-- 个人履历信息实体 PartyResume
select * from grllxx;
-- 个人经营信息表实体 PartyPerManaInfo
select * from grjyxx;
-- 企业经营信息表实体 PartyComManaInfo
-- select * from qyjyxx;
-- alter table grjyxx add COLUMN snzczeoo decimal(18,2) DEFAULT NULL COMMENT '上年资产总额(万元)' after snkhnczw; 
-- 客户关系类型表 PartyRelationshipType
-- select * from khgxlx;
-- 客户联络偏好表 CustContactPreference
select * from khllph;
-- 客户家庭信息实体 PartyFamily
select * from khjtxx;

desc qyjyxx;
show create table qyjyxx

-- ALTER TABLE `dgkhxx`
-- ADD COLUMN `lsnyrzbs`  varchar(10) DEFAULT NULL COMMENT '绿色农业认证标识' AFTER `CJJGMCOO`;



select * from CJBOOO;-- 场景表	存储场景相关信息
select * from CJMBGL;-- 场景任务模板关联表	存储场景跟任务模板关联信息
select * from RWMBBO;-- 任务模板表	存储任务模板的基本信息
select * from RWBQBO;-- 任务标签表	存储任务模板的状态标签信息
select * from RWMBGN;-- 任务模板关联功能表	存储任务模板与功能关联信息
select * from GRKHRW ORDER BY CREATED_STAMP desc;-- 个人客户任务关联表	存储个人任务相关信息
select * from GRRWGN ORDER BY CREATED_STAMP desc;-- 个人任务功能关联表	存储个人任务相关联的功能动作信息
select * from KHRWQK ORDER BY CREATED_STAMP desc;-- 客户任务完成情况登记表	存储客户的任务完成以及总数量信息


-- event
select * from scan_schedule order by CREATED_STAMP desc;
select * from runtime_data order by CREATED_STAMP desc;
select * from recurrence_info order by CREATED_STAMP desc;
select * from recurrence_rule order by CREATED_STAMP desc;
select * from job_sandbox order by CREATED_STAMP desc;
select * from batch_job_instance order by CREATED_STAMP desc;
select * from batch_job_templet order by CREATED_STAMP desc;
select * from batch_step_model order by CREATED_STAMP desc;
select * from batch_step_param order by CREATED_STAMP desc;
select * from dsfxtd order by CREATED_STAMP desc;

select * from sjdybo order by CREATED_STAMP desc;-- 事件定义表
select * from sjxygz order by CREATED_STAMP desc;-- 事件规则响应定义表