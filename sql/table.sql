-- 界面资源配置表
select * from jmzypz;
-- 应用定义表
select * from yydybo;
-- 资源应用关系表
select * from zyyygx;
-- 界面对象展示定义表
select * from jmdxzs;
-- 界面对象要素定义表
select * from jmdxys;
-- 接口定义表
select * from jkdybo;
-- 参数定义表
select * from csdybo;
-- 营销活动定义表
select * from yxhddy;
-- 操作日志表
select * from czrzbo;
-- 活动对象字段表
select * from hddxzd;
-- 字段与值关系表
select * from zdyzgx;
-- 对象字段值表
select * from dxzdzo;
-- 活动方账户表
select * from hdfzhb;
-- 活动方账户明细表
select * from hdfmxb;
-- 客户方账户表
select * from khfzhb;
-- 客户方账户明细表
select * from khfmxb;
-- 活动扩展定义表
select * from hdkzdy;
-- 抽奖栅格设置表
select * from cjsgsz;
-- 奖品优先级表
select * from jpyxjb;
-- 活动画布关系表
select * from hdhbgx;
-- 画布定义表
select * from hbdybo;
-- 画布策略定义表
select * from hbcldy;
-- 条件组定义表
select * from tjzdyb;
-- 条件明细定义表
select * from tjmxdy;
-- 关系映射表
select * from gxysbo;
-- 活动参与客户表
select * from hdcykh;
-- 指标标签定义表
select * from zbbqdy;
-- 指标标签映射表
select * from zbbqys;
-- 客户特征定义表
select * from khtzdy;
-- 界面资源配置表
select * from jmzypz;
-- 页面元素结构表
select * from ymysjg;
-- 页面元素定义表
select * from ymysdy;
-- 元素数据定义表
select * from yssjdy;
-- 活动收藏关系表
select * from hdscgx;
-- 标签定义表
select * from bqdybo;
-- 客户标签数据表
select * from khbqsj;
-- 标签应用场景表
select * from bqyybo;
-- 场景类别定义表
select * from cjlbdy;
-- 标签类别映射表
select * from bqlbys;
-- 标签定义表
select * from bqdybo;
-- 标签初始定义表
select * from bqcsdy;
-- 标签值定义表
select * from bqzdyb;















-- 界面资源配置表数据
INSERT INTO `jmzypz` (`jmzybhoo`, `jmzymcoo`, `last_updated_stamp`, `last_updated_tx_stamp`, `created_stamp`, `created_tx_stamp`) VALUES ('JM00000003', '营销活动基本信息页面', NULL, NULL, NULL, NULL);

-- 页面元素结构表数据
INSERT INTO `ymysjg` (`ymysjgbh`, `jmzybhoo`, `ymyswzho`, `ymzswzlo`, `ymzssfxs`, `last_updated_stamp`, `last_updated_tx_stamp`, `created_stamp`, `created_tx_stamp`) VALUES ('10000000', 'JM00000003', '1', '1', 'N', NULL, NULL, NULL, NULL);
INSERT INTO `ymysjg` (`ymysjgbh`, `jmzybhoo`, `ymyswzho`, `ymzswzlo`, `ymzssfxs`, `last_updated_stamp`, `last_updated_tx_stamp`, `created_stamp`, `created_tx_stamp`) VALUES ('10000001', 'JM00000003', '2', '1', 'Y', NULL, NULL, NULL, NULL);
INSERT INTO `ymysjg` (`ymysjgbh`, `jmzybhoo`, `ymyswzho`, `ymzswzlo`, `ymzssfxs`, `last_updated_stamp`, `last_updated_tx_stamp`, `created_stamp`, `created_tx_stamp`) VALUES ('10000002', 'JM00000003', '2', '2', 'Y', NULL, NULL, NULL, NULL);
INSERT INTO `ymysjg` (`ymysjgbh`, `jmzybhoo`, `ymyswzho`, `ymzswzlo`, `ymzssfxs`, `last_updated_stamp`, `last_updated_tx_stamp`, `created_stamp`, `created_tx_stamp`) VALUES ('10000003', 'JM00000003', '3', '1', 'Y', NULL, NULL, NULL, NULL);
INSERT INTO `ymysjg` (`ymysjgbh`, `jmzybhoo`, `ymyswzho`, `ymzswzlo`, `ymzssfxs`, `last_updated_stamp`, `last_updated_tx_stamp`, `created_stamp`, `created_tx_stamp`) VALUES ('10000004', 'JM00000003', '3', '2', 'Y', NULL, NULL, NULL, NULL);
INSERT INTO `ymysjg` (`ymysjgbh`, `jmzybhoo`, `ymyswzho`, `ymzswzlo`, `ymzssfxs`, `last_updated_stamp`, `last_updated_tx_stamp`, `created_stamp`, `created_tx_stamp`) VALUES ('10000005', 'JM00000003', '4', '1', 'Y', NULL, NULL, NULL, NULL);
INSERT INTO `ymysjg` (`ymysjgbh`, `jmzybhoo`, `ymyswzho`, `ymzswzlo`, `ymzssfxs`, `last_updated_stamp`, `last_updated_tx_stamp`, `created_stamp`, `created_tx_stamp`) VALUES ('10000006', 'JM00000003', '5', '1', 'Y', NULL, NULL, NULL, NULL);
INSERT INTO `ymysjg` (`ymysjgbh`, `jmzybhoo`, `ymyswzho`, `ymzswzlo`, `ymzssfxs`, `last_updated_stamp`, `last_updated_tx_stamp`, `created_stamp`, `created_tx_stamp`) VALUES ('10000007', 'JM00000003', '6', '1', 'Y', NULL, NULL, NULL, NULL);
INSERT INTO `ymysjg` (`ymysjgbh`, `jmzybhoo`, `ymyswzho`, `ymzswzlo`, `ymzssfxs`, `last_updated_stamp`, `last_updated_tx_stamp`, `created_stamp`, `created_tx_stamp`) VALUES ('10000008', 'JM00000003', '6', '2', 'Y', NULL, NULL, NULL, NULL);

-- 页面元素定义表数据
INSERT INTO `ymysdy` (`ymysdybh`, `ymysjgbh`, `ymysmcoo`, `sjymysbh`, `ymyslxoo`, `ymysmsoo`, `sfqhdjho`, `ymyscsoo`, `ymyscslx`, `sfgshcso`, `ysgshzfc`, `last_updated_stamp`, `last_updated_tx_stamp`, `created_stamp`, `created_tx_stamp`) VALUES ('YS1000000', '10000000', '基本信息:', NULL, 'TITLE', '标题', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ymysdy` (`ymysdybh`, `ymysjgbh`, `ymysmcoo`, `sjymysbh`, `ymyslxoo`, `ymysmsoo`, `sfqhdjho`, `ymyscsoo`, `ymyscslx`, `sfgshcso`, `ysgshzfc`, `last_updated_stamp`, `last_updated_tx_stamp`, `created_stamp`, `created_tx_stamp`) VALUES ('YS1000001', '10000001', '活动编号:', '10000000', 'TEXT', '文本框', 'Y', 'hdbhoooo', 'STRING', 'N', '', NULL, NULL, NULL, NULL);
INSERT INTO `ymysdy` (`ymysdybh`, `ymysjgbh`, `ymysmcoo`, `sjymysbh`, `ymyslxoo`, `ymysmsoo`, `sfqhdjho`, `ymyscsoo`, `ymyscslx`, `sfgshcso`, `ysgshzfc`, `last_updated_stamp`, `last_updated_tx_stamp`, `created_stamp`, `created_tx_stamp`) VALUES ('YS1000002', '10000002', '活动名称:', '10000000', 'TEXT', '文本框', 'Y', 'hdmcoooo', 'STRING', 'N', '', NULL, NULL, NULL, NULL);
INSERT INTO `ymysdy` (`ymysdybh`, `ymysjgbh`, `ymysmcoo`, `sjymysbh`, `ymyslxoo`, `ymysmsoo`, `sfqhdjho`, `ymyscsoo`, `ymyscslx`, `sfgshcso`, `ysgshzfc`, `last_updated_stamp`, `last_updated_tx_stamp`, `created_stamp`, `created_tx_stamp`) VALUES ('YS1000003', '10000003', '活动大类:', '10000000', 'SELECT', '下拉框', 'Y', 'hddloooo', 'STRING', 'N', '', NULL, NULL, NULL, NULL);
INSERT INTO `ymysdy` (`ymysdybh`, `ymysjgbh`, `ymysmcoo`, `sjymysbh`, `ymyslxoo`, `ymysmsoo`, `sfqhdjho`, `ymyscsoo`, `ymyscslx`, `sfgshcso`, `ysgshzfc`, `last_updated_stamp`, `last_updated_tx_stamp`, `created_stamp`, `created_tx_stamp`) VALUES ('YS1000004', '10000004', '活动类型:', '10000000', 'SELECT', '下拉框', 'Y', 'hdxloooo', 'STRING', 'N', '', NULL, NULL, NULL, NULL);
INSERT INTO `ymysdy` (`ymysdybh`, `ymysjgbh`, `ymysmcoo`, `sjymysbh`, `ymyslxoo`, `ymysmsoo`, `sfqhdjho`, `ymyscsoo`, `ymyscslx`, `sfgshcso`, `ysgshzfc`, `last_updated_stamp`, `last_updated_tx_stamp`, `created_stamp`, `created_tx_stamp`) VALUES ('YS1000005', '10000005', '活动品牌方:', '10000000', 'SELECT', '下拉框', 'Y', 'hdppfooo', 'STRING', 'N', '', NULL, NULL, NULL, NULL);
INSERT INTO `ymysdy` (`ymysdybh`, `ymysjgbh`, `ymysmcoo`, `sjymysbh`, `ymyslxoo`, `ymysmsoo`, `sfqhdjho`, `ymyscsoo`, `ymyscslx`, `sfgshcso`, `ysgshzfc`, `last_updated_stamp`, `last_updated_tx_stamp`, `created_stamp`, `created_tx_stamp`) VALUES ('YS1000006', '10000006', '活动简介:', '10000000', 'TEXTAREA', '文本域', 'Y', 'hdjjoooo', 'STRING', 'N', '', NULL, NULL, NULL, NULL);
INSERT INTO `ymysdy` (`ymysdybh`, `ymysjgbh`, `ymysmcoo`, `sjymysbh`, `ymyslxoo`, `ymysmsoo`, `sfqhdjho`, `ymyscsoo`, `ymyscslx`, `sfgshcso`, `ysgshzfc`, `last_updated_stamp`, `last_updated_tx_stamp`, `created_stamp`, `created_tx_stamp`) VALUES ('YS1000007', '10000007', '活动开始日期:', '10000000', 'DATE', '日期', 'Y', 'ksrqoooo', 'STRING', 'Y', 'yyyy-MM-dd', NULL, NULL, NULL, NULL);
INSERT INTO `ymysdy` (`ymysdybh`, `ymysjgbh`, `ymysmcoo`, `sjymysbh`, `ymyslxoo`, `ymysmsoo`, `sfqhdjho`, `ymyscsoo`, `ymyscslx`, `sfgshcso`, `ysgshzfc`, `last_updated_stamp`, `last_updated_tx_stamp`, `created_stamp`, `created_tx_stamp`) VALUES ('YS1000008', '10000008', '活动结束日期:', '10000000', 'DATE', '日期', 'Y', 'jsrqoooo', 'STRING', 'Y', 'yyyy-MM-dd', NULL, NULL, NULL, NULL);







INSERT INTO `hbcldy` (`hbcldybh`, `hbcldymc`, `hbcllxoo`, `hbclyxjo`, `hbtjzgxo`, `hbclmsoo`, `last_updated_stamp`, `last_updated_tx_stamp`, `created_stamp`, `created_tx_stamp`) VALUES ('CL20221011105432777', '结束', 'END', '1', 'AND', '用于结束规则', '2022-10-11 10:54:33', '2022-10-11 10:54:33', '2022-10-11 10:54:33', '2022-10-11 10:54:33');
INSERT INTO `gxysbo` (`ysjbhooo`, `ysjlxooo`, `mbsjbhoo`, `mbsjlxoo`, `gxlxoooo`, `mbsjsxoo`, `fzbhoooo`, `last_updated_stamp`, `last_updated_tx_stamp`, `created_stamp`, `created_tx_stamp`) VALUES ('CL20221011105432760', 'STRATEGY', 'CL20221011105432777', 'STRATEGY', 'STRATEGY_STRATEGY', '1', 'HD000000001', '2022-10-11 10:54:33', '2022-10-11 10:54:33', '2022-10-11 10:54:33', '2022-10-11 10:54:33');


show PROCESSLIST;