/*
Navicat MySQL Data Transfer

Source Server         : rdsfyqbyiquryq2.mysql.rds.aliyuncs.com
Source Server Version : 50518
Source Host           : rdsfyqbyiquryq2.mysql.rds.aliyuncs.com:3306
Source Database       : canyin

Target Server Type    : MYSQL
Target Server Version : 50518
File Encoding         : 65001

Date: 2015-05-14 18:44:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cm_authority_module
-- ----------------------------
DROP TABLE IF EXISTS `cm_authority_module`;
CREATE TABLE `cm_authority_module` (
  `cam_id` varchar(36) NOT NULL,
  `cam_level` varchar(32) DEFAULT NULL,
  `cam_link` varchar(256) DEFAULT NULL,
  `cam_name` varchar(128) DEFAULT NULL,
  `module_color` varchar(255) DEFAULT NULL,
  `module_icon` varchar(256) DEFAULT NULL,
  `module_status` varchar(32) DEFAULT NULL,
  `action_url` varchar(128) DEFAULT NULL,
  `module_desc` varchar(1024) DEFAULT NULL,
  `parent_cam_id` varchar(36) DEFAULT NULL,
  `show_seq` int(11) DEFAULT NULL,
  `fk_role_id` varchar(36) NOT NULL,
  `fk_auth_id` varchar(36) NOT NULL,
  `permission` varchar(128) DEFAULT NULL,
  `fk_parent_id` varchar(36) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`cam_id`),
  UNIQUE KEY `cam_id` (`cam_id`) USING BTREE,
  KEY `FK717AF21D31E504B4` (`fk_parent_id`) USING BTREE,
  KEY `FK717AF21DE883ECB9` (`create_by`) USING BTREE,
  KEY `FK717AF21D50AB25CC` (`update_by`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_authority_module
-- ----------------------------
INSERT INTO `cm_authority_module` VALUES ('00dfab35aa7248cca97a5efcea78cf4f', '4', null, '特价时段-删除', null, null, '1', '/cygl/specialpriceinterval/delete/**', null, 'a607c8eaa6d742a48e147bcd651356e7', '0', '', '', 'perms[specialpriceinterval:delete]', 'a607c8eaa6d742a48e147bcd651356e7', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('02801369617c49aca263dbf68fb02068', '3', null, '特价时段', 'color-1', 'magnet_3', '1', '/cygl/specialpriceinterval/list', '定义和管理特价时段，可制定各种灵活的特价时段方案，例如周末特价、上午特价、情人节特价等任意特价时段。', '3c52b97152524900b02e5caffe657297', '3', '', '', 'perms[specialpriceinterval:list]', '3c52b97152524900b02e5caffe657297', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('038f81490ff04326aaf19ffdbf7648db', '4', null, '结账抹零-删除', null, null, '1', '/sygl/cashSetting/delete/**', null, '4d85477b05bb4b888a50c47b2213ec55', '0', '', '', 'perms[cashSetting:delete]', '4d85477b05bb4b888a50c47b2213ec55', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('05910d9966ee4e04b9b15d5b32fdddc9', '4', null, '特价时段-修改', null, null, '1', '/cygl/specialpriceinterval/update/**', null, '02801369617c49aca263dbf68fb02068', '0', '', '', 'perms[specialpriceinterval:update]', '02801369617c49aca263dbf68fb02068', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('06f5921ad2a74ea8ac35640014256d07', '2', null, '餐台', 'color-1', 'magnet_1', '1', '', null, '7cc73ece3e2c4db3b032b1c443236a0d', '0', '', '', 'perms[frontdesk_index]', '7cc73ece3e2c4db3b032b1c443236a0d', null, null, null, null, '4', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('07f6032a-4c77-1031-8251-6ab85da93719', '4', null, '点餐-自定义菜', null, null, '1', '/bill/pop/userdefined/create/**', null, '402882303f7ea37f013f7ef1ff9a0005', '0', '', '', 'perms[frontdesk_bill_userdefined:create]', '402882303f7ea37f013f7ef1ff9a0005', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('0c858ca601244e39b81fe6d3071c556c', '4', null, '打印机-增加', null, null, '1', '/cygl/printer/create/**', null, 'bfc7b41b34564f4dbde7e39f67c3d0d7', '0', '', '', 'perms[printer:create]', 'bfc7b41b34564f4dbde7e39f67c3d0d7', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('0f56689b5e404c6e9536f43fd00da6b4', '4', null, '账单-增加', 'color-1', 'magnet_1', '1', '/sygl/dinerBill/create/', null, '53f0e04314da4b9ea148509f501a6e3c', '0', '', '', 'perms[dinerBill:create]', '53f0e04314da4b9ea148509f501a6e3c', null, null, null, null, '1', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('10cabbd4-273e-11e3-8ff7-080058000005', '2', null, '营收统计', 'color-1', 'magnet_1', '1', '', null, '40072da4-273d-11e3-8ff7-080058000005', '0', '', '', 'perms[report_ystj]', '40072da4-273d-11e3-8ff7-080058000005', null, null, null, null, '1', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('10dc9966-273e-11e3-8ff7-080058000005', '2', null, '用户满意度', 'color-1', 'magnet_1', '1', '', null, '40072da4-273d-11e3-8ff7-080058000005', '0', '', '', 'perms[report_yhmyd]', '40072da4-273d-11e3-8ff7-080058000005', null, null, null, null, '1', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('152a564766f3442cae7f18513c4b09e4', '4', null, '餐台-增加', null, null, '1', '/cygl/table/create/**', null, 'dbd0b01ed12f4f93a87ba62482ad5c65', '0', '', '', 'perms[table:create]', 'dbd0b01ed12f4f93a87ba62482ad5c65', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('1601eff4b893443b88f548598b741b37', '4', null, '交班记录-增加', null, null, '1', '/sygl/emploeeShiftList/create/**', null, 'e4e934d941c44e858036c38e249b59f8', '0', '', '', 'perms[emploeeShiftList:create]', 'e4e934d941c44e858036c38e249b59f8', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('164d2318-abf7-11e2-824b-001b783bdd64', '3', null, '前厅流水', 'color-2', 'magnet_16', '1', '/ctzh/orderSequence/list', '可查看前厅开台、下单、结账、转台、并台等操作的流水记录。', 'a66a72429c844fb88ecb53ea64138c99', '4', '', '', 'perms[orderSequence:list]', 'a66a72429c844fb88ecb53ea64138c99', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('1731150d-84ef-11e3-862a-080058000005', '3', null, '外卖销售统计', 'color-1', 'magnet_26', '1', '/report/yyfx/takeOutDinnerBillStat', '外卖销售统计', '6988bedb365244bebc9374e69b1d4f80', '1', '', '', 'perms[report_yyfx_takeOutDinnerBillStat:list]', '6988bedb365244bebc9374e69b1d4f80', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('176f6eebb03f4ab4b4d9b65d76a68751', '4', null, '挂账收款-增加', null, null, '1', '/sygl/credit/create/**', null, '2f36d94b325a4d57832923a77f3a0105', '0', '', '', 'perms[credit:create]', '2f36d94b325a4d57832923a77f3a0105', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('18010a5c864545c2b8129c833d460d0e', '4', null, '挂账收款-删除', null, null, '1', '/sygl/credit/delete/**', null, '2f36d94b325a4d57832923a77f3a0105', '0', '', '', 'perms[credit:delete]', '2f36d94b325a4d57832923a77f3a0105', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('19cb5177-abf9-11e2-824b-001b783bdd64', '3', null, '工作站', 'color-6', 'magnet_39', '1', '/xtgl/gzz/list', '管理和设置可以访问系统的工作站，默认全部工作站都可以访问。', 'd2e6a54520394d60aea2033592f35815', '3', '', '', 'perms[gzz:list]', 'd2e6a54520394d60aea2033592f35815', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('1a5c2da6ccab494ab58c8668b6356590', '3', null, '特殊操作内容', 'color-5', 'magnet_32', '1', '/sygl/speOpReason/list', '退菜、撤单、呼叫服务、取消预定等操作的内容设置，系统提供了部分默认内容，可根据需要自行添加和修改。', 'a8280787d6824a95a27918f331b13c02', '3', '', '', 'perms[speOpReason:list]', 'a8280787d6824a95a27918f331b13c02', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('1d86814a95904b8fabbabd05160853fc', '4', null, '餐台分区-查看', null, null, '1', '/ctzh/tableArea/read/**', null, '5be712e5bb5f4074a6dc85c12a6a6647', '0', '', '', 'perms[tableArea:read]', '5be712e5bb5f4074a6dc85c12a6a6647', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('1db23018-4c79-1031-8251-6ab85da93719', '4', null, '预定列表-审核确认', null, null, '1', '/order/pop/confirm/**', null, '402882303f7ea37f013f7ef30d40000a', '0', '', '', 'perms[frontdesk_order_confirm:create]', '402882303f7ea37f013f7ef30d40000a', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('1ed2f600-4c74-1031-8251-6ab85da93719', '4', null, '餐台-结账', null, null, '1', '/bill/payPage/**', null, '402882303f7ea37f013f7eeabfba0002', '0', '', '', 'perms[frontdesk_bill_payPage:create]', '402882303f7ea37f013f7eeabfba0002', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('1eeba2887af645ffb3ac681c233309a0', '3', null, '付款方式设置', 'color-5', 'magnet_35', '1', '/sygl/paymentType/list', '收银员可以接受的付款方式。系统提供了部分常用付款方式，可根据需要自行添加和修改。', 'a8280787d6824a95a27918f331b13c02', '6', '', '', 'perms[paymentType:list]', 'a8280787d6824a95a27918f331b13c02', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('20f57926-a371-11e3-84d5-080058000005', '4', null, '结账-抹零', null, null, '1', '/bill/pop/moling/**', null, '402882303f7ea37f013f7ef229790006', '0', '', '', 'perms[frontdesk_bill_moling:create]', '402882303f7ea37f013f7ef229790006', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('216b440b-273f-11e3-8ff7-080058000005', '3', null, '会员日营收统计', 'color-2', 'magnet_27', '1', '/report/ystj/memberReport/dayStat', '查看会员日营收统计', '10cabbd4-273e-11e3-8ff7-080058000005', '0', '', '', 'perms[report_ystj_memberReport_dayStat:list]', '10cabbd4-273e-11e3-8ff7-080058000005', null, null, null, null, '1', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('2239d24a8dcd40e2bd4af558a30aee49', '4', null, '付款方式-删除', null, null, '1', '/sygl/paymentType/delete/**', null, '1eeba2887af645ffb3ac681c233309a0', '0', '', '', 'perms[paymentType:delete]', '1eeba2887af645ffb3ac681c233309a0', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('226458eac11e47dc86cd17b4cb1dff28', '4', null, '特价菜肴-查看', null, null, '1', '/cygl/specialdishe/read/**', null, '6e04b81e80de4f05960074e07b5a9959', '0', '', '', 'perms[specialdishe:read]', '6e04b81e80de4f05960074e07b5a9959', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('22dd7621edc44ac0af19f818086d6d7b', '4', null, '员工-删除', null, null, '1', '/cygl/employee/delete/**', null, '68ae216ccbe044e9bc141247f46c2377', '0', '', '', 'perms[employee:delete]', '68ae216ccbe044e9bc141247f46c2377', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('22f90bed97744ef681e1ddd095863238', '4', null, '餐厅信息-查看', null, null, '1', '/ctzh/restaurant/read/**', null, '8a8947565ad94cffab43e36991bb7586', '0', '', '', 'perms[restaurant:read]', '8a8947565ad94cffab43e36991bb7586', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('251882b9a8ca463a9f8b2b1ced12fec0', '4', null, '会员特价-删除', null, null, '1', '/cygl/specialpriceinterval/delete/**', null, '8ec914e1805e44c08e53f876df04b318', '0', '', '', 'perms[specialpriceinterval:delete]', '8ec914e1805e44c08e53f876df04b318', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('26e69d0d-abf8-11e2-824b-001b783bdd64', '3', null, '退卡记录', 'color-3', 'magnet_25', '1', '/hygl/membershipcardoperation/list?cardOperationType=4', '会员退卡记录', 'e62a59d7d9f64a57a8aafa89ea1b497b', '6', '', '', 'perms[membershipcardoperation4:list]', 'e62a59d7d9f64a57a8aafa89ea1b497b', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('2a9f431a-4c73-1031-8251-6ab85da93719', '4', null, '餐台-催菜', null, null, '1', '/index/cuicai/**', null, '402882303f7ea37f013f7eeabfba0002', '0', '', '', 'perms[frontdesk_index_cuicai:create]', '402882303f7ea37f013f7eeabfba0002', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('2ccfecd252cf43a3b56fcd2871015bc4', '4', null, '会员信息-增加', null, null, '1', '/cygl/restmemberinfo/create/**', null, '8f0bea611fff48428b8b2989e941e0a0', '0', '', '', 'perms[restmemberinfo:create]', '8f0bea611fff48428b8b2989e941e0a0', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('2cedcf0f-7842-11e3-b651-080058000005', '3', null, '折扣方案使用排行', 'color-4', 'magnet_1', '1', '/report/yyfx/discountStat', null, 'dbc292f2-7841-11e3-b651-080058000005', '3', '', '', 'perms[main_syfx_discountStat:list]', 'dbc292f2-7841-11e3-b651-080058000005', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('2f36d94b325a4d57832923a77f3a0105', '3', null, '挂账收款', 'color-5', 'magnet_34', '1', '/sygl/credit/list', '挂账账单收款操作和记录管理。', 'a8280787d6824a95a27918f331b13c02', '5', '', '', 'perms[credit:list]', 'a8280787d6824a95a27918f331b13c02', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('34828bcd4d244745b088406be026bbbd', '4', null, '付款方式-修改', null, null, '1', '/sygl/paymentType/update/**', null, '1eeba2887af645ffb3ac681c233309a0', '0', '', '', 'perms[paymentType:update]', '1eeba2887af645ffb3ac681c233309a0', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('348c3238a5a84515a92b9d742f52ac03', '4', null, '会员信息-修改', null, null, '1', '/cygl/restmemberinfo/update/**', null, '8f0bea611fff48428b8b2989e941e0a0', '0', '', '', 'perms[restmemberinfo:update]', '8f0bea611fff48428b8b2989e941e0a0', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('350a5ac2e85f427ca30d0aed090daa81', '4', null, '特价菜肴-修改', null, null, '1', '/cygl/specialdishe/update/**', null, '6e04b81e80de4f05960074e07b5a9959', '0', '', '', 'perms[specialdishe:update]', '6e04b81e80de4f05960074e07b5a9959', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('360d11c47ac049179c3e055d464d692e', '4', null, '会员信息-删除', null, null, '1', '/cygl/restmemberinfo/delete/**', null, '8f0bea611fff48428b8b2989e941e0a0', '0', '', '', 'perms[restmemberinfo:delete]', '8f0bea611fff48428b8b2989e941e0a0', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('3648a69b32f243b49ec2493226a47d41', '4', null, '折扣方案-删除', null, null, '1', '/sygl/cashDiscount/delete/**', null, '50c6b1609b7c4d96b4558de62250a733', '0', '', '', 'perms[cashDiscount:delete]', '50c6b1609b7c4d96b4558de62250a733', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('36a68621734b406abd9853be818f0d43', '4', null, '打印机-删除', null, null, '1', '/cygl/printer/delete/**', null, 'bfc7b41b34564f4dbde7e39f67c3d0d7', '0', '', '', 'perms[printer:delete]', 'bfc7b41b34564f4dbde7e39f67c3d0d7', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('36c087c7-783e-11e3-b651-080058000005', '2', null, '原料管理', 'color-4', 'magnet_1', '1', '', null, 'a02d05483fd044b3896782fd3dfbcb2a', '3', '', '', 'perms[main_ylgl]', 'a02d05483fd044b3896782fd3dfbcb2a', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('3701dc06-84ef-11e3-862a-080058000005', '3', null, '餐台使用排行', 'color-1', 'magnet_26', '1', '/report/yyfx/tableStat', '餐台使用排行', '6988bedb365244bebc9374e69b1d4f80', '1', '', '', 'perms[report_yyfx_tableStat:list]', '6988bedb365244bebc9374e69b1d4f80', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('38d056b73e384a948fff9a0b0df0062d', '4', null, '餐厅信息-修改', null, null, '1', '/cygl/restaurant/update/**', null, '8a8947565ad94cffab43e36991bb7586', '0', '', '', 'perms[restaurant:update]', '8a8947565ad94cffab43e36991bb7586', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('3c25b0e3434c4be8abe15eb784175aaa', '4', null, '特价时段-修改', null, null, '1', '/cygl/specialpriceinterval/update/**', null, 'f88c5ecc80134da183e0bf59a7c5b82d', '0', '', '', 'perms[specialpriceinterval:update]', 'f88c5ecc80134da183e0bf59a7c5b82d', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('3c52b97152524900b02e5caffe657297', '2', null, '菜肴管理', 'color-1', 'magnet_1', '1', '', null, 'a02d05483fd044b3896782fd3dfbcb2a', '0', '', '', 'perms[main_cygl]', 'a02d05483fd044b3896782fd3dfbcb2a', null, null, null, null, '2', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('3f7f7233a41a457e8c1f2c4a280fa789', '4', null, '特价时段-增加', null, null, '1', '/cygl/specialpriceinterval/create/**', null, '02801369617c49aca263dbf68fb02068', '0', '', '', 'perms[specialpriceinterval:create]', '02801369617c49aca263dbf68fb02068', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('40072da4-273d-11e3-8ff7-080058000005', '1', null, '智能报表', 'color-1', 'magnet_1', '1', '', null, '40072da4-273d-11e3-8ff7-080058000005', '0', '', '', 'perms[report]', '402882303f7fe00c013f7fe4bde60003', null, null, null, null, '1', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('402882303f7ea37f013f7eeabfba0002', '3', null, '餐台展示', 'color-1', 'magnet_1', '1', '/index', null, '06f5921ad2a74ea8ac35640014256d07', '0', '', '', 'perms[frontdesk_index:list]', '06f5921ad2a74ea8ac35640014256d07', null, null, null, null, '1', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('402882303f7ea37f013f7ef16a6b0003', '2', null, '账单', 'color-1', 'magnet_1', '1', '', null, '7cc73ece3e2c4db3b032b1c443236a0d', '0', '', '', 'perms[frontdesk_bill]', '7cc73ece3e2c4db3b032b1c443236a0d', null, null, null, null, '4', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('402882303f7ea37f013f7ef1c19c0004', '3', null, '账单列表', 'color-1', 'magnet_1', '1', '/bill/list', null, '402882303f7ea37f013f7ef16a6b0003', '0', '', '', 'perms[frontdesk_bill:list]', '402882303f7ea37f013f7ef16a6b0003', null, null, null, null, '3', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('402882303f7ea37f013f7ef1ff9a0005', '3', null, '点餐', 'color-1', 'magnet_1', '1', '/bill/diancai', null, '402882303f7ea37f013f7ef16a6b0003', '0', '', '', 'perms[frontdesk_bill:diancai]', '402882303f7ea37f013f7ef16a6b0003', null, null, null, null, '2', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('402882303f7ea37f013f7ef229790006', '3', null, '结账', 'color-1', 'magnet_1', '1', '/bill/payPage', null, '402882303f7ea37f013f7ef16a6b0003', '0', '', '', 'perms[frontdesk_pay]', '402882303f7ea37f013f7ef16a6b0003', null, null, null, null, '2', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('402882303f7ea37f013f7ef27d930007', '2', null, '会员', 'color-1', 'magnet_1', '1', '', null, '7cc73ece3e2c4db3b032b1c443236a0d', '0', '', '', 'perms[frontdesk_member]', '7cc73ece3e2c4db3b032b1c443236a0d', null, null, null, null, '3', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('402882303f7ea37f013f7ef2ab9a0008', '3', null, '会员列表', 'color-1', 'magnet_1', '1', '/member', null, '402882303f7ea37f013f7ef27d930007', '0', '', '', 'perms[frontdesk_member:list]', '402882303f7ea37f013f7ef27d930007', null, null, null, null, '2', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('402882303f7ea37f013f7ef2db560009', '2', null, '预定', 'color-1', 'magnet_1', '1', '', null, '7cc73ece3e2c4db3b032b1c443236a0d', '0', '', '', 'perms[frontdesk_order]', '7cc73ece3e2c4db3b032b1c443236a0d', null, null, null, null, '3', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('402882303f7ea37f013f7ef30d40000a', '3', null, '预定列表', 'color-1', 'magnet_1', '1', '/order', null, '402882303f7ea37f013f7ef2db560009', '0', '', '', 'perms[frontdesk_order:list]', '402882303f7ea37f013f7ef2db560009', null, null, null, null, '2', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('402882303f7ea37f013f7ef381be000b', '2', null, '个人信息', 'color-1', 'magnet_1', '1', '', null, '7cc73ece3e2c4db3b032b1c443236a0d', '0', '', '', 'perms[frontdesk_employe]', '7cc73ece3e2c4db3b032b1c443236a0d', null, null, null, null, '3', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('402882303f7ea37f013f7ef3b1b4000c', '3', null, '交接班', 'color-1', 'magnet_1', '1', '/employe/shift', null, '402882303f7ea37f013f7ef381be000b', '0', '', '', 'perms[frontdesk_employe:shift]', '402882303f7ea37f013f7ef381be000b', null, null, null, null, '2', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('402882303f7ea37f013f7ef3e3de000d', '3', null, '修改密码', 'color-1', 'magnet_1', '1', '/employe/password', null, '402882303f7ea37f013f7ef381be000b', '0', '', '', 'perms[frontdesk_employe:password]', '402882303f7ea37f013f7ef381be000b', null, null, null, null, '2', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('402882303f7ea37f013f7ef42389000e', '2', null, '系统设置', 'color-1', 'magnet_1', '1', '', null, '7cc73ece3e2c4db3b032b1c443236a0d', '0', '', '', 'perms[frontdesk_system]', '7cc73ece3e2c4db3b032b1c443236a0d', null, null, null, null, '3', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('402882303f7ea37f013f7ef4566e000f', '3', null, '系统设置页面', 'color-1', 'magnet_1', '1', '/system/setting', null, '402882303f7ea37f013f7ef42389000e', '0', '', '', 'perms[frontdesk_system:setting]', '402882303f7ea37f013f7ef42389000e', null, null, null, null, '2', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('402882303f7fcc9d013f7fd560ea000f', '3', null, '退菜明细', 'color-3', 'magnet_27', '1', '/yygl/dishAnalyse/list', '查看退菜明细', '10dc9966-273e-11e3-8ff7-080058000005', '0', '', '', 'perms[dishAnalyse:list]', '10dc9966-273e-11e3-8ff7-080058000005', null, null, null, null, '1', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('402882303f7fe00c013f7fe4bde60003', '1', null, '移动终端', 'color-1', 'magnet_1', '1', '', null, '402882303f7fe00c013f7fe4bde60003', '0', '', '', 'perms[mobile]', '402882303f7fe00c013f7fe4bde60003', null, null, '402882303f7fa334013f7fa87ac90005', '2013-06-26 17:51:04', '1', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('402882303f7fe00c013f7fe628740004', '2', null, '餐桌', 'color-1', 'magnet_1', '1', '', null, '402882303f7fe00c013f7fe4bde60003', '0', '', '', 'perms[mobile_table]', '402882303f7fe00c013f7fe4bde60003', null, null, '402882303f7fa334013f7fa87ac90005', '2013-06-26 17:54:00', '2', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('402882303f7fe00c013f7fe69b470005', '2', null, '账单', 'color-1', 'magnet_1', '1', '', null, '402882303f7fe00c013f7fe4bde60003', '0', '', '', 'perms[mobile_bill]', '402882303f7fe00c013f7fe4bde60003', null, null, '402882303f7fa334013f7fa87ac90005', '2013-06-26 17:54:13', '2', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('402882303f7fe00c013f7fe6cea70006', '2', null, '消息中心', 'color-1', 'magnet_1', '1', '', null, '402882303f7fe00c013f7fe4bde60003', '0', '', '', 'perms[mobile_message]', '402882303f7fe00c013f7fe4bde60003', null, null, '402882303f7fa334013f7fa87ac90005', '2013-06-26 17:54:23', '2', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('402882303f7fe00c013f7fe6f4220007', '2', null, '更多', 'color-1', 'magnet_1', '1', '', null, '402882303f7fe00c013f7fe4bde60003', '0', '', '', 'perms[mobile_more]', '402882303f7fe00c013f7fe4bde60003', null, null, '402882303f7fa334013f7fa87ac90005', '2013-06-26 17:54:39', '2', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('428cc694397e48bfab27b9b9a8f8dca6', '4', null, '特价时段-删除', null, null, '1', '/cygl/specialpriceinterval/delete/**', null, 'a4c5e03fa8c44e6f8acb6761409f9d72', '0', '', '', 'perms[specialpriceinterval:delete]', 'a4c5e03fa8c44e6f8acb6761409f9d72', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('43ae6c72-4c79-1031-8251-6ab85da93719', '4', null, '预定列表-转开台', null, null, '1', '/order/pop/kaitai/create/**', null, '402882303f7ea37f013f7ef30d40000a', '0', '', '', 'perms[frontdesk_order_kaitai:create]', '402882303f7ea37f013f7ef30d40000a', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('46578f7ae5e8416e88fdabf006cbf916', '4', null, '特价时段-删除', null, null, '1', '/cygl/specialpriceinterval/delete/**', null, 'f88c5ecc80134da183e0bf59a7c5b82d', '0', '', '', 'perms[specialpriceinterval:delete]', 'f88c5ecc80134da183e0bf59a7c5b82d', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('46b8b6f7-7842-11e3-b651-080058000005', '3', null, '反结账分析', 'color-4', 'magnet_1', '1', '/report/syfx/resettleStat', null, 'dbc292f2-7841-11e3-b651-080058000005', '3', '', '', 'perms[main_syfx_discountStat:list]', 'dbc292f2-7841-11e3-b651-080058000005', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('4a831489-691b-11e3-ba84-080058000005', '3', null, '周统计', 'color-2', 'magnet_28', '1', '/report/ystj/weekStat', '每周统计各种收入汇总，可查看柱状图', '10cabbd4-273e-11e3-8ff7-080058000005', '2', '', '', 'perms[businessStat:dayStat]', '10cabbd4-273e-11e3-8ff7-080058000005', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('4a93ab45a6814682964ba3180c5f7831', '4', null, '员工-修改', null, null, '1', '/cygl/employee/update/**', null, '68ae216ccbe044e9bc141247f46c2377', '0', '', '', 'perms[employee:update]', '68ae216ccbe044e9bc141247f46c2377', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('4d2376d4-4c74-1031-8251-6ab85da93719', '4', null, '餐台-清台', null, null, '1', '/index/qingtai/**', null, '402882303f7ea37f013f7eeabfba0002', '0', '', '', 'perms[frontdesk_index_qingtai:create]', '402882303f7ea37f013f7eeabfba0002', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('4d85477b05bb4b888a50c47b2213ec55', '3', null, '结账抹零', 'color-5', 'magnet_31', '1', '/sygl/cashSetting/list', '前台收银员结账时默认的抹零设置', 'a8280787d6824a95a27918f331b13c02', '2', '', '', 'perms[cashSetting:list]', 'a8280787d6824a95a27918f331b13c02', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('4e1531bb-4c78-1031-8251-6ab85da93719', '4', null, '会员列表-快速发卡', null, null, '1', '/member/pop/jianka/**', null, '402882303f7ea37f013f7ef2ab9a0008', '0', '', '', 'perms[frontdesk_member_jianka:create]', '402882303f7ea37f013f7ef2ab9a0008', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('4fdd81cf4d6e4dea9e17c4581d10e9b5', '4', null, '餐台-查看', null, null, '1', '/ctzh/table/read/**', null, 'dbd0b01ed12f4f93a87ba62482ad5c65', '0', '', '', 'perms[table:read]', 'dbd0b01ed12f4f93a87ba62482ad5c65', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('50c6b1609b7c4d96b4558de62250a733', '3', null, '折扣方案', 'color-5', 'magnet_33', '1', '/sygl/cashDiscount/list', '收银员可以使用的折扣方案，可以指定使用的角色，也可以设置部分类型的菜肴不打折或者免费以及其它的折扣。系统提供了部分折扣，可根据需要自行添加和修改。', 'a8280787d6824a95a27918f331b13c02', '4', '', '', 'perms[cashDiscount:list]', 'a8280787d6824a95a27918f331b13c02', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('5186abaf-abf8-11e2-824b-001b783bdd64', '3', null, '退菜统计', 'color-3', 'magnet_26', '1', '/yygl/dishAnalyse/retreatList', '客户退菜汇总，可按周查看柱状图。', '10dc9966-273e-11e3-8ff7-080058000005', '1', '', '', 'perms[dishAnalyse:retreatList]', '10dc9966-273e-11e3-8ff7-080058000005', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('51d03e36-84ef-11e3-862a-080058000005', '3', null, '分时上座率', 'color-1', 'magnet_26', '1', '/report/yyfx/timeDivSeatOccupancyRateStat', '分时上座率', '6988bedb365244bebc9374e69b1d4f80', '1', '', '', 'perms[report_yyfx_timeDivSeatOccupancyRateStat:list]', '6988bedb365244bebc9374e69b1d4f80', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('52efca5650284dec914b6c95f87a67f2', '4', null, '挂账收款-修改', null, null, '1', '/sygl/credit/update/**', null, '2f36d94b325a4d57832923a77f3a0105', '0', '', '', 'perms[credit:update]', '2f36d94b325a4d57832923a77f3a0105', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('53f0e04314da4b9ea148509f501a6e3c', '3', null, '账单管理', 'color-5', 'magnet_30', '1', '/sygl/dinerBill/list', '账单的明细，历史记录以及反结账操作。', 'a8280787d6824a95a27918f331b13c02', '1', '', '', 'perms[dinerBill:list]', 'a8280787d6824a95a27918f331b13c02', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('5626dd53-4c79-1031-8251-6ab85da93719', '4', null, '预定列表-取消预定', null, null, '1', '/order/pop/cancle/**', null, '402882303f7ea37f013f7ef30d40000a', '0', '', '', 'perms[frontdesk_order_cancle:create]', '402882303f7ea37f013f7ef30d40000a', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('5670890f-4c85-1031-a77d-fd2ce3ecf404', '4', null, '餐台-并台', null, null, '1', '/index/pop/bingtai/**', null, '402882303f7ea37f013f7eeabfba0002', '0', '', '', 'perms[frontdesk_index_bingtai:create]', '402882303f7ea37f013f7eeabfba0002', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('58387ae428084f80a47ecff1d6870950', '4', null, '餐台-删除', null, null, '1', '/cygl/table/delete/**', null, 'dbd0b01ed12f4f93a87ba62482ad5c65', '0', '', '', 'perms[table:delete]', 'dbd0b01ed12f4f93a87ba62482ad5c65', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('587f35cdab374d918b0d0667efd45268', '4', null, '账单-查看', null, null, '1', '/sygl/dinerBill/read/**', null, '53f0e04314da4b9ea148509f501a6e3c', '0', '', '', 'perms[dinerBill:read]', '53f0e04314da4b9ea148509f501a6e3c', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('588076e3-7842-11e3-b651-080058000005', '3', null, '赠送菜肴统计', 'color-4', 'magnet_1', '1', '/report/yyfx/giveDishStat', null, 'dbc292f2-7841-11e3-b651-080058000005', '3', '', '', 'perms[main_syfx_giveDishStat:list]', 'dbc292f2-7841-11e3-b651-080058000005', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('5be712e5bb5f4074a6dc85c12a6a6647', '3', null, '餐台分区', 'color-2', 'magnet_14', '1', '/ctzh/tableArea/list', '根据餐厅的实际情况，可划分包间、大厅、一楼、二楼等不同的区域来管理。', 'a66a72429c844fb88ecb53ea64138c99', '2', '', '', 'perms[tableArea:list]', 'a66a72429c844fb88ecb53ea64138c99', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('5c373abb-7916-11e3-acad-080058000005', '3', null, '套餐分类', 'color-1', 'magnet_1', '3', '/cygl/dishesSetCategory/list', '菜肴套餐的分类信息管理，建议在添加菜肴之前先完善菜肴分类信息。', '3c52b97152524900b02e5caffe657297', '1', '', '', 'perms[dishesSetCategory:list]', '3c52b97152524900b02e5caffe657297', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('5ec7861a-4c76-1031-8251-6ab85da93719', '4', null, '账单列表-打印', null, null, '1', '/bill/pop/billPrint/**', null, '402882303f7ea37f013f7ef1c19c0004', '0', '', '', 'perms[frontdesk_bill_billPrint:create]', '402882303f7ea37f013f7ef1c19c0004', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('60f4cc218695454f95914213d5ef5ff9', '3', null, '菜肴分类', 'color-1', 'magnet_1', '1', '/cygl/dishescategory/list', '菜肴的分类信息管理，建议在添加菜肴之前先完善菜肴分类信息。', '3c52b97152524900b02e5caffe657297', '1', '', '', 'perms[dishescategory:list]', '3c52b97152524900b02e5caffe657297', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('61593aaa-7916-11e3-acad-080058000005', '3', null, '套餐信息', 'color-1', 'magnet_1', '4', '/cygl/dishesSet/list', '菜肴套餐管理，建议在添加菜肴之前先完善菜肴分类信息。', '3c52b97152524900b02e5caffe657297', '1', '', '', 'perms[dishesSet:list]', '3c52b97152524900b02e5caffe657297', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('6608275a-4c74-1031-8251-6ab85da93719', '4', null, '餐台-外卖', null, null, '1', '/index/waimai/**', null, '402882303f7ea37f013f7eeabfba0002', '0', '', '', 'perms[frontdesk_index_waimai:create]', '402882303f7ea37f013f7eeabfba0002', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('6827a7f4719e44299a910843da934ba9', '4', null, '职级权限-查看', null, null, '1', '/ctzh/role/read/**', null, 'cd8ba68446a64e4ea6a1b4d3d7fa2267', '0', '', '', 'perms[role:read]', 'cd8ba68446a64e4ea6a1b4d3d7fa2267', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('68ae216ccbe044e9bc141247f46c2377', '3', null, '员工信息', 'color-2', 'magnet_18', '1', '/ctzh/employee/list', '除了管理餐厅员工的基本信息外，还可设置员工的登录账户和密码，赋予员工职级权限。', 'a66a72429c844fb88ecb53ea64138c99', '6', '', '', 'perms[employee:list]', 'a66a72429c844fb88ecb53ea64138c99', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('6969783962ee435a87fe3b4fd70adb65', '4', null, '菜肴信息-查看', null, null, '1', '/cygl/dishes/read/**', null, 'c4ce71d1533d4cfebe40941a3c80eb31', '0', '', '', 'perms[dishes:read]', 'c4ce71d1533d4cfebe40941a3c80eb31', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('6988bedb365244bebc9374e69b1d4f80', '2', null, '营业分析', 'color-1', 'magnet_1', '1', '', null, '40072da4-273d-11e3-8ff7-080058000005', '3', '', '', 'perms[main_yygl]', '40072da4-273d-11e3-8ff7-080058000005', null, null, null, null, '1', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('698ce2cab6034582939ed2e8157412be', '4', null, '菜肴分类-增加', null, null, '1', '/cygl/dishescategory/create/**', null, '60f4cc218695454f95914213d5ef5ff9', '0', '', '', 'perms[dishescategory:create]', '60f4cc218695454f95914213d5ef5ff9', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('6c6017912c70438890bbe0031b46f9da', '4', null, '特价时段-查看', null, null, '1', '/cygl/specialpriceinterval/read/**', null, '02801369617c49aca263dbf68fb02068', '0', '', '', 'perms[specialpriceinterval:read]', '02801369617c49aca263dbf68fb02068', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('6e04b81e80de4f05960074e07b5a9959', '3', null, '特价菜肴', 'color-1', 'magnet_4', '1', '/cygl/specialdishe/list', '为特价时段添加和管理特价的菜肴，一个特价时段下可以添加多个特价菜肴，只有在特价时段内特价才会生效，特价菜不参与折扣。', '3c52b97152524900b02e5caffe657297', '4', '', '', 'perms[specialdishe:list]', '3c52b97152524900b02e5caffe657297', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('6e7b2333267d4f8ba085c5a2a5bdc568', '4', null, '会员卡类型-修改', null, null, '1', '/cygl/membershipcardclass/update/**', null, 'cc36661d9e674fd8a07b78849d08b130', '0', '', '', 'perms[membershipcardclass:update]', 'cc36661d9e674fd8a07b78849d08b130', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('6f613bef5644453bacbe7878a405e98d', '4', null, '会员特价-增加', null, null, '1', '/cygl/specialpriceinterval/create/**', null, '8ec914e1805e44c08e53f876df04b318', '0', '', '', 'perms[specialpriceinterval:create]', '8ec914e1805e44c08e53f876df04b318', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('6fdb7bcd1c05403f91a4053d81a904fe', '4', null, '会员卡类型-查看', null, null, '1', '/ctzh/membershipcardclass/read/**', null, 'cc36661d9e674fd8a07b78849d08b130', '0', '', '', 'perms[membershipcardclass:read]', 'cc36661d9e674fd8a07b78849d08b130', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('7062c76e9dd84ad7a6c7c9cf8e3fc477', '4', null, '特价时段-增加', null, null, '1', '/cygl/specialpriceinterval/create/**', null, 'a4c5e03fa8c44e6f8acb6761409f9d72', '0', '', '', 'perms[specialpriceinterval:create]', 'a4c5e03fa8c44e6f8acb6761409f9d72', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('7357ec8f6bba415090f57e682bf54331', '4', null, '特价时段-查看', null, null, '1', '/cygl/specialpriceinterval/read/**', null, 'a607c8eaa6d742a48e147bcd651356e7', '0', '', '', 'perms[specialpriceinterval:read]', 'a607c8eaa6d742a48e147bcd651356e7', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('73dba432-783f-11e3-b651-080058000005', '3', null, '仓库管理', 'color-4', 'magnet_1', '1', '/ylgl/store/list', null, '36c087c7-783e-11e3-b651-080058000005', '0', '', '', 'perms[main_ylgl_store:list]', '36c087c7-783e-11e3-b651-080058000005', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('74e6b5c26e724308ae9d7324590e5ae1', '4', null, '菜肴分类-查看', null, null, '1', '/cygl/dishescategory/read/**', null, '60f4cc218695454f95914213d5ef5ff9', '0', '', '', 'perms[dishescategory:read]', '60f4cc218695454f95914213d5ef5ff9', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('7663ed0d-273f-11e3-8ff7-080058000005', '3', null, '会员月营收统计', 'color-2', 'magnet_27', '1', '/report/ystj/memberReport/monthStat', '查看会员月营收统计', '10cabbd4-273e-11e3-8ff7-080058000005', '0', '', '', 'perms[report_ystj_memberReport_monthStat:list]', '10cabbd4-273e-11e3-8ff7-080058000005', null, null, null, null, '1', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('76855c1043e34ec990274b07cc4b51b2', '4', null, '菜肴信息-增加', null, null, '1', '/cygl/dishes/create/**', null, 'c4ce71d1533d4cfebe40941a3c80eb31', '0', '', '', 'perms[dishes:create]', 'c4ce71d1533d4cfebe40941a3c80eb31', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('79fc935d3850492196462dd4cfe2d1c6', '4', null, '餐台分区-增加', null, null, '1', '/cygl/tableArea/create/**', null, '5be712e5bb5f4074a6dc85c12a6a6647', '0', '', '', 'perms[tableArea:create]', '5be712e5bb5f4074a6dc85c12a6a6647', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('7a627203-abf9-11e2-824b-001b783bdd64', '3', null, '日统计', 'color-2', 'magnet_28', '1', '/yygl/businessStat/dayStat', '每天各种收入汇总，可查看柱状图', '10cabbd4-273e-11e3-8ff7-080058000005', '2', '', '', 'perms[businessStat:dayStat]', '10cabbd4-273e-11e3-8ff7-080058000005', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('7a9458e2-abf5-11e2-824b-001b783bdd64', '3', null, '菜系', 'color-1', 'magnet_10', '1', '/cygl/dishesstyle/list', '菜肴菜系设置，系统默认提供了常见菜系。可根据需要添加。', '3c52b97152524900b02e5caffe657297', '9', '', '', 'perms[dishesstyle:list]', '3c52b97152524900b02e5caffe657297', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('7b1bbb84-84ef-11e3-862a-080058000005', '3', null, '餐桌区域消费排行', 'color-1', 'magnet_26', '1', '/report/yyfx/tableAreaStat', '餐桌区域消费排行', '6988bedb365244bebc9374e69b1d4f80', '1', '', '', 'perms[report_yyfx_tableAreaStat:list]', '6988bedb365244bebc9374e69b1d4f80', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('7cc73ece3e2c4db3b032b1c443236a0d', '1', null, '前台收银', 'color-1', 'magnet_1', '1', '', null, '7cc73ece3e2c4db3b032b1c443236a0d', '0', '', '', 'perms[frontdesk]', '7cc73ece3e2c4db3b032b1c443236a0d', null, null, null, null, '1', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('7f5f48b80aaa4969b6052da68106166b', '4', null, '打印机-修改', null, null, '1', '/cygl/printer/update/**', null, 'bfc7b41b34564f4dbde7e39f67c3d0d7', '0', '', '', 'perms[printer:update]', 'bfc7b41b34564f4dbde7e39f67c3d0d7', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('8058de40a08a44df8f768a5322ede53f', '4', null, '特价时段-修改', null, null, '1', '/cygl/specialpriceinterval/update/**', null, 'a4c5e03fa8c44e6f8acb6761409f9d72', '0', '', '', 'perms[specialpriceinterval:update]', 'a4c5e03fa8c44e6f8acb6761409f9d72', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('8092f34c-4c72-1031-8251-6ab85da93719', '4', null, '餐台-开台', null, null, '1', '/index/kaitai/**', null, '402882303f7ea37f013f7eeabfba0002', '0', '', '', 'perms[frontdesk_index_kaitai:create]', '402882303f7ea37f013f7eeabfba0002', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('80b2b52dfc9e488a91c8b63b9ed2bb1b', '4', null, '餐台分区-修改', null, null, '1', '/cygl/tableArea/update/**', null, '5be712e5bb5f4074a6dc85c12a6a6647', '0', '', '', 'perms[tableArea:update]', '5be712e5bb5f4074a6dc85c12a6a6647', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('81eabb396c734030979c97c218ad6b71', '4', null, '交班记录-修改', null, null, '1', '/sygl/emploeeShiftList/update/**', null, 'e4e934d941c44e858036c38e249b59f8', '0', '', '', 'perms[emploeeShiftList:update]', 'e4e934d941c44e858036c38e249b59f8', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('833f8dc6-4c74-1031-8251-6ab85da93719', '4', null, '餐台-转台', null, null, '1', '/index/pop/zhuantai/**', null, '402882303f7ea37f013f7eeabfba0002', '0', '', '', 'perms[frontdesk_index_zhuantai:create]', '402882303f7ea37f013f7eeabfba0002', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('83a0f4d7-4c78-1031-8251-6ab85da93719', '4', null, '会员列表-挂失', null, null, '1', '/member/guashi/**', null, '402882303f7ea37f013f7ef2ab9a0008', '0', '', '', 'perms[frontdesk_member_guashi:create]', '402882303f7ea37f013f7ef2ab9a0008', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('84b14c5321f3409e9fa98513fa5143ed', '4', null, '结账抹零-修改', null, null, '1', '/sygl/cashSetting/update/**', null, '4d85477b05bb4b888a50c47b2213ec55', '0', '', '', 'perms[cashSetting:update]', '4d85477b05bb4b888a50c47b2213ec55', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('88104c97-abf7-11e2-824b-001b783bdd64', '3', null, '会员卡管理', 'color-3', 'magnet_22', '1', '/hygl/membershipcard/list', '会员卡管理，可执行新增、发卡、挂失、退卡等操作。', 'e62a59d7d9f64a57a8aafa89ea1b497b', '3', '', '', 'perms[membershipcard:list]', 'e62a59d7d9f64a57a8aafa89ea1b497b', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('8a8947565ad94cffab43e36991bb7586', '3', null, '餐厅信息', 'color-2', 'magnet_13', '1', '/ctzh/restaurant/view', '餐厅基本信息、推广信息、地理信息、外卖信息，以及照片信息的录入和维护，通过餐厅网站、自助终端展示给顾客。', 'a66a72429c844fb88ecb53ea64138c99', '1', '', '', 'perms[restaurant:list]', 'a66a72429c844fb88ecb53ea64138c99', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('8cceafa6-691b-11e3-ba84-080058000005', '3', null, '周期统计', 'color-2', 'magnet_28', '1', '/report/ystj/periodStat', '按周期统计各种收入汇总，可查看柱状图', '10cabbd4-273e-11e3-8ff7-080058000005', '2', '', '', 'perms[businessStat:dayStat]', '10cabbd4-273e-11e3-8ff7-080058000005', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('8e46a4204c234142aa1cf68cf5606825', '4', null, '账单-删除', null, null, '1', '/sygl/dinerBill/delete/**', null, '53f0e04314da4b9ea148509f501a6e3c', '0', '', '', 'perms[dinerBill:delete]', '53f0e04314da4b9ea148509f501a6e3c', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('8ec914e1805e44c08e53f876df04b318', '3', null, '会员特价', 'color-1', 'magnet_5', '1', '/cygl/dishes/memberpricelist', '会员专享特价。结账时出示会员卡即可享受。会员特价不参与折扣。', '3c52b97152524900b02e5caffe657297', '5', '', '', 'perms[memberpricelist:list]', '3c52b97152524900b02e5caffe657297', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('8f0bea611fff48428b8b2989e941e0a0', '3', null, '会员信息', 'color-3', 'magnet_20', '1', '/hygl/restmemberinfo/list', '餐厅会员信息管理。', 'e62a59d7d9f64a57a8aafa89ea1b497b', '1', '', '', 'perms[restmemberinfo:list]', 'e62a59d7d9f64a57a8aafa89ea1b497b', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('900728c7420b4546b47d98be680f07df', '4', null, '特价时段-删除', null, null, '1', '/cygl/specialpriceinterval/delete/**', null, '02801369617c49aca263dbf68fb02068', '0', '', '', 'perms[specialpriceinterval:delete]', '02801369617c49aca263dbf68fb02068', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('908c409a-783e-11e3-b651-080058000005', '3', null, '原料库存', 'color-4', 'magnet_1', '1', '/ylgl/material/list', null, '36c087c7-783e-11e3-b651-080058000005', '1', '', '', 'perms[main_ylgl_material:list]', '36c087c7-783e-11e3-b651-080058000005', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('92ede19c-4c78-1031-8251-6ab85da93719', '4', null, '会员列表-停用', null, null, '1', '/member/tingyong/**', null, '402882303f7ea37f013f7ef2ab9a0008', '0', '', '', 'perms[frontdesk_member_tingyong:create]', '402882303f7ea37f013f7ef2ab9a0008', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('92f4a31d-abf9-11e2-824b-001b783bdd64', '3', null, '月统计', 'color-2', 'magnet_29', '1', '/yygl/businessStat/monthStat', '每月各种收入汇总，可查看柱状图', '10cabbd4-273e-11e3-8ff7-080058000005', '3', '', '', 'perms[businessStat:monthStat]', '10cabbd4-273e-11e3-8ff7-080058000005', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('93834d6ed79a46d9aaac17f890f69048', '4', null, '账单-修改', null, null, '1', '/sygl/dinerBill/update/**', null, '53f0e04314da4b9ea148509f501a6e3c', '0', '', '', 'perms[dinerBill:update]', '53f0e04314da4b9ea148509f501a6e3c', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('964bd4837df34fdc8576b139ddcef503', '4', null, '会员信息-查看', null, null, '1', '/ctzh/restmemberinfo/read/**', null, '8f0bea611fff48428b8b2989e941e0a0', '0', '', '', 'perms[restmemberinfo:read]', '8f0bea611fff48428b8b2989e941e0a0', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('992d1208-4c74-1031-8251-6ab85da93719', '4', null, '餐台-撤单', null, null, '1', '/index/pop/chedan/**', null, '402882303f7ea37f013f7eeabfba0002', '0', '', '', 'perms[frontdesk_index_chendan:create]', '402882303f7ea37f013f7eeabfba0002', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('9959cd3c1e6246e59a8f9260d27dbf95', '4', null, '折扣方案-修改', null, null, '1', '/sygl/cashDiscount/update/**', null, '50c6b1609b7c4d96b4558de62250a733', '0', '', '', 'perms[cashDiscount:update]', '50c6b1609b7c4d96b4558de62250a733', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('996bc2f5-84ee-11e3-862a-080058000005', '3', null, '菜肴销售趋势', 'color-1', 'magnet_26', '1', '/report/yyfx/singleDishStat', '菜肴销售趋势', '6988bedb365244bebc9374e69b1d4f80', '1', '', '', 'perms[report_yyfx_singleDishStat:list]', '6988bedb365244bebc9374e69b1d4f80', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('9a377077-4c78-1031-8251-6ab85da93719', '4', null, '会员列表-退卡', null, null, '1', '/member/pop/tuika/createForm/**', null, '402882303f7ea37f013f7ef2ab9a0008', '0', '', '', 'perms[frontdesk_member_tuika:create]', '402882303f7ea37f013f7ef2ab9a0008', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('9cca0f68-152d-11e3-9e59-080058000005', '3', null, '菜肴销售排行', 'color-1', 'magnet_26', '1', '/yygl/businessStat/salesByDish', '菜肴销售排行', '6988bedb365244bebc9374e69b1d4f80', '1', '', '', 'perms[businessStat:salesByDish]', '6988bedb365244bebc9374e69b1d4f80', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('9ce7a18fbdfe49b5900a6840647800f9', '4', null, '职级权限-修改', null, null, '1', '/cygl/role/update/**', null, 'cd8ba68446a64e4ea6a1b4d3d7fa2267', '0', '', '', 'perms[role:update]', 'cd8ba68446a64e4ea6a1b4d3d7fa2267', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('9dd73059-84ef-11e3-862a-080058000005', '3', null, '人均消费趋势', 'color-1', 'magnet_26', '1', '/report/yyfx/perCapitaConsumStat', '人均消费趋势', '6988bedb365244bebc9374e69b1d4f80', '1', '', '', 'perms[report_yyfx_perCapitaConsumStat:list]', '6988bedb365244bebc9374e69b1d4f80', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('a02d05483fd044b3896782fd3dfbcb2a', '1', null, '后台管理', 'color-1', 'magnet_1', '1', '', null, 'a02d05483fd044b3896782fd3dfbcb2a', '0', '', '', 'perms[main]', 'a02d05483fd044b3896782fd3dfbcb2a', null, null, null, null, '1', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('a1ffa2e3ade44e289029064988ad25b6', '4', null, '员工-查看', null, null, '1', '/ctzh/employee/read/**', null, '68ae216ccbe044e9bc141247f46c2377', '0', '', '', 'perms[employee:read]', '68ae216ccbe044e9bc141247f46c2377', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('a2da008c-152d-11e3-9e59-080058000005', '3', null, '菜肴分类销售排行', 'color-1', 'magnet_26', '1', '/yygl/businessStat/salesByDishCategory', '菜肴分类销售排行', '6988bedb365244bebc9374e69b1d4f80', '1', '', '', 'perms[businessStat:salesByDishCategory]', '6988bedb365244bebc9374e69b1d4f80', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('a4c5e03fa8c44e6f8acb6761409f9d72', '3', null, '快餐外卖', 'color-1', 'magnet_7', '1', '/cygl/dishes/takeoutlist', '可外卖的菜肴设置。', '3c52b97152524900b02e5caffe657297', '7', '', '', 'perms[takeoutlist:list]', '3c52b97152524900b02e5caffe657297', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('a607c8eaa6d742a48e147bcd651356e7', '3', null, '口味', 'color-1', 'magnet_8', '1', '/cygl/dishestaste/list', '菜肴口味的设置，系统默认提供了常见口味信息。可根据需要添加。', '3c52b97152524900b02e5caffe657297', '8', '', '', 'perms[dishestaste:list]', '3c52b97152524900b02e5caffe657297', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('a66a72429c844fb88ecb53ea64138c99', '2', null, '餐厅综合', 'color-1', 'magnet_1', '1', '', null, 'a02d05483fd044b3896782fd3dfbcb2a', '1', '', '', 'perms[main_ctzh]', 'a02d05483fd044b3896782fd3dfbcb2a', null, null, null, null, '1', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('a8280787d6824a95a27918f331b13c02', '2', null, '收银管理', 'color-1', 'magnet_1', '1', '', null, 'a02d05483fd044b3896782fd3dfbcb2a', '4', '', '', 'perms[main_sygl]', 'a02d05483fd044b3896782fd3dfbcb2a', null, null, null, null, '1', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('a8ecfd97-783e-11e3-b651-080058000005', '3', null, '原料入库', 'color-4', 'magnet_1', '1', '/ylgl/storage/list', null, '36c087c7-783e-11e3-b651-080058000005', '2', '', '', 'perms[main_ylgl_storage:list]', '36c087c7-783e-11e3-b651-080058000005', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('a8fcbc30271e45cc9035a75df809f1d1', '4', null, '打印机-查看', null, null, '1', '/ctzh/printer/read/**', null, 'bfc7b41b34564f4dbde7e39f67c3d0d7', '0', '', '', 'perms[printer:read]', 'bfc7b41b34564f4dbde7e39f67c3d0d7', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('aa6bf097ae694d7dae20dc10129f7d8d', '4', null, '餐厅信息-删除', null, null, '1', '/cygl/restaurant/delete/**', null, '8a8947565ad94cffab43e36991bb7586', '0', '', '', 'perms[restaurant:delete]', '8a8947565ad94cffab43e36991bb7586', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('aae8b09618964093a5996969130346c5', '4', null, '特殊操作-修改', null, null, '1', '/sygl/speOpReason/update/**', null, '1a5c2da6ccab494ab58c8668b6356590', '0', '', '', 'perms[speOpReason:update]', '1a5c2da6ccab494ab58c8668b6356590', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('aaf9d914-4c76-1031-8251-6ab85da93719', '4', null, '账单列表-反结账', null, null, '1', '/bill/pop/resettle/**', null, '402882303f7ea37f013f7ef1c19c0004', '0', '', '', 'perms[frontdesk_bill_resettle:create]', '402882303f7ea37f013f7ef1c19c0004', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('af7ed3fefae54a19bc4093cfe89a11c7', '4', null, '职级权限-删除', null, null, '1', '/cygl/role/delete/**', null, 'cd8ba68446a64e4ea6a1b4d3d7fa2267', '0', '', '', 'perms[role:delete]', 'cd8ba68446a64e4ea6a1b4d3d7fa2267', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('afcf3ab755e44d9e9a75e6db6421e118', '4', null, '会员卡类型-增加', null, null, '1', '/cygl/membershipcardclass/create/**', null, 'cc36661d9e674fd8a07b78849d08b130', '0', '', '', 'perms[membershipcardclass:create]', 'cc36661d9e674fd8a07b78849d08b130', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('b0858dac1e434494b39801e676ef0bfe', '4', null, '员工-增加', null, null, '1', '/cygl/employee/create/**', null, '68ae216ccbe044e9bc141247f46c2377', '0', '', '', 'perms[employee:create]', '68ae216ccbe044e9bc141247f46c2377', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('b096cf55f35647a882ec6f39d2635726', '4', null, '付款方式-查看', null, null, '1', '/sygl/paymentType/read/**', null, '1eeba2887af645ffb3ac681c233309a0', '0', '', '', 'perms[paymentType:read]', '1eeba2887af645ffb3ac681c233309a0', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('b1d891009aaa46218df3a94b539c3ee1', '4', null, '特殊操作-查看', null, null, '1', '/sygl/speOpReason/read/**', null, '1a5c2da6ccab494ab58c8668b6356590', '0', '', '', 'perms[speOpReason:read]', '1a5c2da6ccab494ab58c8668b6356590', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('b33f8b05bada4161a4640d6b2039e613', '4', null, '特价菜肴-增加', null, null, '1', '/cygl/specialdishe/create/**', null, '6e04b81e80de4f05960074e07b5a9959', '0', '', '', 'perms[specialdishe:create]', '6e04b81e80de4f05960074e07b5a9959', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('b482f61f-84ee-11e3-862a-080058000005', '3', null, '套餐销售排行', 'color-1', 'magnet_26', '1', '/report/yyfx/dishesSetSalesStat', '套餐销售排行', '6988bedb365244bebc9374e69b1d4f80', '1', '', '', 'perms[report_yyfx_dishesSetSalesStat:list]', '6988bedb365244bebc9374e69b1d4f80', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('b56f4fc81f714676b9f3121ceb8be2c4', '4', null, '餐台分区-删除', null, null, '1', '/cygl/tableArea/delete/**', null, '5be712e5bb5f4074a6dc85c12a6a6647', '0', '', '', 'perms[tableArea:delete]', '5be712e5bb5f4074a6dc85c12a6a6647', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('b63960cc-691b-11e3-ba84-080058000005', '3', null, '季度统计', 'color-2', 'magnet_28', '1', '/report/ystj/seasonStat', '按季度统计各种收入汇总，可查看柱状图', '10cabbd4-273e-11e3-8ff7-080058000005', '2', '', '', 'perms[businessStat:dayStat]', '10cabbd4-273e-11e3-8ff7-080058000005', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('b646455a-691b-11e3-ba84-080058000005', '3', null, '年统计', 'color-2', 'magnet_28', '1', '/report/ystj/yearStat', '按年统计各种收入汇总，可查看柱状图', '10cabbd4-273e-11e3-8ff7-080058000005', '2', '', '', 'perms[businessStat:dayStat]', '10cabbd4-273e-11e3-8ff7-080058000005', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('b71615f7-783e-11e3-b651-080058000005', '3', null, '领料出库', 'color-4', 'magnet_1', '1', '/ylgl/delivery/list', null, '36c087c7-783e-11e3-b651-080058000005', '3', '', '', 'perms[main_ylgl_delivery:list]', '36c087c7-783e-11e3-b651-080058000005', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('b9ac0957ef77497f8e2211b37a433267', '4', null, '餐厅信息-增加', null, null, '1', '/cygl/restaurant/create/**', null, '8a8947565ad94cffab43e36991bb7586', '0', '', '', 'perms[restaurant:create]', '8a8947565ad94cffab43e36991bb7586', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('b9b0ac39ec864529a1808c7bd071c52c', '4', null, '特价时段-增加', null, null, '1', '/cygl/specialpriceinterval/create/**', null, 'f88c5ecc80134da183e0bf59a7c5b82d', '0', '', '', 'perms[specialpriceinterval:create]', 'f88c5ecc80134da183e0bf59a7c5b82d', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('ba9f6c53-3560-11e3-8951-080058000005', '4', null, '点餐-赠菜', null, null, '1', '/bill/dishZengcai/**', null, '402882303f7ea37f013f7ef1ff9a0005', '0', '', '', 'perms[frontdesk_bill_dishZengcai:create]', '402882303f7ea37f013f7ef1ff9a0005', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('be5bc7553459490fbf6637cf7031473f', '4', null, '付款方式-增加', null, null, '1', '/sygl/paymentType/create/**', null, '1eeba2887af645ffb3ac681c233309a0', '0', '', '', 'perms[paymentType:create]', '1eeba2887af645ffb3ac681c233309a0', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('bfc7b41b34564f4dbde7e39f67c3d0d7', '3', null, '打印机设置', 'color-2', 'magnet_19', '1', '/ctzh/printer/list', '设置和管理收银、下单打印机，下单打印可指定打印全部菜肴还是根据菜肴分来来打印，一台打印机可重复使用、设置重复打印。', 'a66a72429c844fb88ecb53ea64138c99', '10', '', '', 'perms[printer:list]', 'a66a72429c844fb88ecb53ea64138c99', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('c09d2654-abf8-11e2-824b-001b783bdd64', '3', null, '数据管理', 'color-6', 'magnet_37', '1', '/xtgl/sjgl/index', '系统数据自动、手动备分以及云同步设置、数据清理操作。', 'd2e6a54520394d60aea2033592f35815', '1', '', '', 'perms[sjgl:index]', 'd2e6a54520394d60aea2033592f35815', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('c0d7011d7a1d4bdaa66e50f8f8234c3d', '4', null, '折扣方案-查看', null, null, '1', '/sygl/cashDiscount/read/**', null, '50c6b1609b7c4d96b4558de62250a733', '0', '', '', 'perms[cashDiscount:read]', '50c6b1609b7c4d96b4558de62250a733', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('c107a10a-abf7-11e2-824b-001b783bdd64', '3', null, '充值记录', 'color-3', 'magnet_23', '1', '/hygl/membershipcardoperation/list?cardOperationType=1', '全部会员卡充值记录查询。', 'e62a59d7d9f64a57a8aafa89ea1b497b', '4', '', '', 'perms[membershipcardoperation1:list]', 'e62a59d7d9f64a57a8aafa89ea1b497b', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('c26f13b7813a46cd82ab020b4a99d531', '4', null, '菜肴分类-修改', null, null, '1', '/cygl/dishescategory/update/**', null, '60f4cc218695454f95914213d5ef5ff9', '0', '', '', 'perms[dishescategory:update]', '60f4cc218695454f95914213d5ef5ff9', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('c3094504ddf4435185348edf431a437f', '4', null, '折扣方案-增加', null, null, '1', '/sygl/cashDiscount/create/**', null, '50c6b1609b7c4d96b4558de62250a733', '0', '', '', 'perms[cashDiscount:create]', '50c6b1609b7c4d96b4558de62250a733', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('c321cb95-4c77-1031-8251-6ab85da93719', '4', null, '结账-自定义折扣', null, null, '1', '/bill/pop/discount/**', null, '402882303f7ea37f013f7ef229790006', '0', '', '', 'perms[frontdesk_bill_discount:create]', '402882303f7ea37f013f7ef229790006', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('c484b936-abf5-11e2-824b-001b783bdd64', '3', null, '食材', 'color-1', 'magnet_11', '1', '/cygl/dishesmaterial/list', '菜肴食材设置，系统默认提供了常见食材信息。可根据需要添加。', '3c52b97152524900b02e5caffe657297', '10', '', '', 'perms[dishesmaterial:list]', '3c52b97152524900b02e5caffe657297', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('c4ce71d1533d4cfebe40941a3c80eb31', '3', null, '菜肴信息', 'color-1', 'magnet_2', '1', '/cygl/dishes/list', '菜肴的添加以及菜肴的菜系、辣度、食材、描述等基本信息维护，可批量导入菜肴。通过餐厅网站上、以及自助终端上展示给用户。', '3c52b97152524900b02e5caffe657297', '2', '', '', 'perms[dishes:list]', '3c52b97152524900b02e5caffe657297', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('c8a8e18e-4c78-1031-8251-6ab85da93719', '4', null, '会员列表-充值', null, null, '1', '/member/pop/chongzhi/createForm/**', null, '402882303f7ea37f013f7ef2ab9a0008', '0', '', '', 'perms[frontdesk_member_chongzhi:create]', '402882303f7ea37f013f7ef2ab9a0008', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('c9b13abb-4c73-1031-8251-6ab85da93719', '4', null, '餐台-点菜', null, null, '1', '/bill/diancai/**', null, '402882303f7ea37f013f7eeabfba0002', '0', '', '', 'perms[frontdesk_bill_diancai:create]', '402882303f7ea37f013f7eeabfba0002', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('cba7e39a909e4713b9e4bbf5313e8cc4', '4', null, '交班记录-查看', null, null, '1', '/sygl/emploeeShiftList/read/**', null, 'e4e934d941c44e858036c38e249b59f8', '0', '', '', 'perms[emploeeShiftList:read]', 'e4e934d941c44e858036c38e249b59f8', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('cc36661d9e674fd8a07b78849d08b130', '3', null, '会员卡类型', 'color-3', 'magnet_21', '1', '/hygl/membershipcardclass/list', '系统默认提供积分会员卡、金牌会员卡、铂金会员卡、钻石会员卡、贵宾卡，分别对应不同的折扣方案，可根据需要自行添加和修改。', 'e62a59d7d9f64a57a8aafa89ea1b497b', '2', '', '', 'perms[membershipcardclass:list]', 'e62a59d7d9f64a57a8aafa89ea1b497b', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('cc556660-4c72-1031-8251-6ab85da93719', '4', null, '点餐-下单', null, null, '1', '/index/xiadan/**', null, '402882303f7ea37f013f7ef1ff9a0005', '0', '', '', 'perms[frontdesk_index_xiadan:create]', '402882303f7ea37f013f7ef1ff9a0005', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('cca39c35-ab5d-11e3-ab25-080058000005', '3', null, '快餐', 'color-1', 'magnet_1', '1', '/fastfood/diancai', null, '7cc73ece3e2c4db3b032b1c443236a0d', '0', '', '', 'perms[frontdesk_fastfood:list]', '7cc73ece3e2c4db3b032b1c443236a0d', null, null, null, null, '2', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('cd8ba68446a64e4ea6a1b4d3d7fa2267', '3', null, '职级权限', 'color-2', 'magnet_17', '1', '/ctzh/role/list', '根据餐厅的需要，可根据访问权限、餐台区域权限来灵活的配置服务员、收银员等角色的操作权限。系统默认提供常用的角色，可修改和调整。', 'a66a72429c844fb88ecb53ea64138c99', '5', '', '', 'perms[role:list]', 'a66a72429c844fb88ecb53ea64138c99', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('d0ccad6b074347bfb5aee8eb3d8a7974', '4', null, '特价菜肴-删除', null, null, '1', '/cygl/specialdishe/delete/**', null, '6e04b81e80de4f05960074e07b5a9959', '0', '', '', 'perms[specialdishe:delete]', '6e04b81e80de4f05960074e07b5a9959', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('d22eb6400d0b4512a5069743d72e856d', '4', null, '结账抹零-查看', null, null, '1', '/sygl/cashSetting/read/**', null, '4d85477b05bb4b888a50c47b2213ec55', '0', '', '', 'perms[cashSetting:read]', '4d85477b05bb4b888a50c47b2213ec55', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('d2e6a54520394d60aea2033592f35815', '2', null, '系统管理', 'color-1', 'magnet_1', '1', '', null, 'a02d05483fd044b3896782fd3dfbcb2a', '6', '', '', 'perms[main_xtgl]', 'a02d05483fd044b3896782fd3dfbcb2a', null, null, null, null, '2', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('d5cc787bfa8647f8b850f9472dc2a818', '4', null, '会员卡类型-删除', null, null, '1', '/cygl/membershipcardclass/delete/**', null, 'cc36661d9e674fd8a07b78849d08b130', '0', '', '', 'perms[membershipcardclass:delete]', 'cc36661d9e674fd8a07b78849d08b130', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('d71315e5-ab5d-11e3-ab25-080058000005', '3', null, '沽清', 'color-1', 'magnet_1', '1', '/estimate', null, '7cc73ece3e2c4db3b032b1c443236a0d', '0', '', '', 'perms[frontdesk_estimate:list]', '7cc73ece3e2c4db3b032b1c443236a0d', null, null, null, null, '2', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('d7b922c8682349ed9794b5d200d64e63', '4', null, '职级权限-增加', null, null, '1', '/cygl/role/create/**', null, 'cd8ba68446a64e4ea6a1b4d3d7fa2267', '0', '', '', 'perms[role:create]', 'cd8ba68446a64e4ea6a1b4d3d7fa2267', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('d8d448ce075a4ad0be9b6b7adb7362b8', '4', null, '特价时段-修改', null, null, '1', '/cygl/specialpriceinterval/update/**', null, 'a607c8eaa6d742a48e147bcd651356e7', '0', '', '', 'perms[specialpriceinterval:update]', 'a607c8eaa6d742a48e147bcd651356e7', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('d9d8f776f630486dbe04d8a1853a8e74', '4', null, '特价时段-查看', null, null, '1', '/cygl/specialpriceinterval/read/**', null, 'f88c5ecc80134da183e0bf59a7c5b82d', '0', '', '', 'perms[specialpriceinterval:read]', 'f88c5ecc80134da183e0bf59a7c5b82d', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('dbc292f2-7841-11e3-b651-080058000005', '2', null, '收银分析', 'color-4', 'magnet_1', '1', '', null, '40072da4-273d-11e3-8ff7-080058000005', '0', '', '', 'perms[report_syfx]', '40072da4-273d-11e3-8ff7-080058000005', null, null, null, null, '1', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('dbd0b01ed12f4f93a87ba62482ad5c65', '3', null, '餐台信息', 'color-2', 'magnet_15', '1', '/ctzh/table/list', '餐台的添加和维护，可停启用餐台。', 'a66a72429c844fb88ecb53ea64138c99', '3', '', '', 'perms[table:list]', 'a66a72429c844fb88ecb53ea64138c99', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('df3d4ccded4b48f48617b3b6bcbbe01c', '4', null, '特殊操作-增加', null, null, '1', '/sygl/speOpReason/create/**', null, '1a5c2da6ccab494ab58c8668b6356590', '0', '', '', 'perms[speOpReason:create]', '1a5c2da6ccab494ab58c8668b6356590', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('e10fcb0413e9400fad3301864da3ae7b', '4', null, '挂账收款-查看', null, null, '1', '/sygl/credit/read/**', null, '2f36d94b325a4d57832923a77f3a0105', '0', '', '', 'perms[credit:read]', '2f36d94b325a4d57832923a77f3a0105', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('e169bd1aad9f42e287c2264e5182a732', '4', null, '会员特价-查看', null, null, '1', '/cygl/specialpriceinterval/read/**', null, '8ec914e1805e44c08e53f876df04b318', '0', '', '', 'perms[specialpriceinterval:read]', '8ec914e1805e44c08e53f876df04b318', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('e1afc579-84ee-11e3-862a-080058000005', '3', null, '快餐销售统计', 'color-1', 'magnet_26', '1', '/report/yyfx/fastfoodDinnerBillStat', '快餐销售统计', '6988bedb365244bebc9374e69b1d4f80', '1', '', '', 'perms[report_yyfx_fastfoodDinnerBillStat:list]', '6988bedb365244bebc9374e69b1d4f80', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('e2b3fb54-abf5-11e2-824b-001b783bdd64', '3', null, '忌口', 'color-1', 'magnet_12', '1', '/cygl/dishesavoidfood/list', '菜肴忌口的设置，用于下单时满足顾客忌口要求，通过下单打印通知后厨，系统默认提供了常见忌口信息。可根据需要添加。', '3c52b97152524900b02e5caffe657297', '11', '', '', 'perms[dishesavoidfood:list]', '3c52b97152524900b02e5caffe657297', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('e382dbe6-691a-11e3-ba84-080058000005', '3', null, '分时统计', 'color-2', 'magnet_28', '1', '/report/ystj/hourStat', '每天分时统计各种收入汇总，可查看柱状图', '10cabbd4-273e-11e3-8ff7-080058000005', '2', '', '', 'perms[businessStat:dayStat]', '10cabbd4-273e-11e3-8ff7-080058000005', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('e4e934d941c44e858036c38e249b59f8', '3', null, '交班记录', 'color-5', 'magnet_36', '1', '/sygl/emploeeShiftList/list', '收银员交接班记录查询。', 'a8280787d6824a95a27918f331b13c02', '7', '', '', 'perms[emploeeShiftList:list]', 'a8280787d6824a95a27918f331b13c02', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('e62a59d7d9f64a57a8aafa89ea1b497b', '2', null, '会员管理', 'color-1', 'magnet_1', '1', '', null, 'a02d05483fd044b3896782fd3dfbcb2a', '2', '', '', 'perms[main_hygl]', 'a02d05483fd044b3896782fd3dfbcb2a', null, null, null, null, '1', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('e9173255-55d3-1031-9e65-10ea674216aa', '4', null, '点餐-退菜', null, null, '1', '/bill/pop/tuicai/**', null, '402882303f7ea37f013f7ef1ff9a0005', '0', '', '', 'perms[frontdesk_bill_tuicai:create]', '402882303f7ea37f013f7ef1ff9a0005', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('e9a19c06a2fa4c8e9d72b1d24ad763e1', '4', null, '会员特价-修改', null, null, '1', '/cygl/specialpriceinterval/update/**', null, '8ec914e1805e44c08e53f876df04b318', '0', '', '', 'perms[specialpriceinterval:update]', '8ec914e1805e44c08e53f876df04b318', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('f11a84d64df94cf39976ac48d9a88012', '4', null, '菜肴信息-修改', null, null, '1', '/cygl/dishes/update/**', null, 'c4ce71d1533d4cfebe40941a3c80eb31', '0', '', '', 'perms[dishes:update]', 'c4ce71d1533d4cfebe40941a3c80eb31', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('f713805c-abf7-11e2-824b-001b783bdd64', '3', null, '消费记录', 'color-3', 'magnet_24', '1', '/hygl/membershipcardoperation/list?cardOperationType=2', '全部会员消费记录与相关账单查询', 'e62a59d7d9f64a57a8aafa89ea1b497b', '5', '', '', 'perms[membershipcardoperation2:list]', 'e62a59d7d9f64a57a8aafa89ea1b497b', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('f88c5ecc80134da183e0bf59a7c5b82d', '3', null, '单位', 'color-1', 'magnet_9', '1', '/cygl/dishesunit/list', '菜肴计量单位设置，系统默认提供了常见单位信息。可根据需要添加。', '3c52b97152524900b02e5caffe657297', '9', '', '', 'perms[dishesunit:list]', '3c52b97152524900b02e5caffe657297', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('f8e2dfec-4c77-1031-8251-6ab85da93719', '4', null, '结账-强制结账', null, null, '1', '/bill/pop/forcePay/**', null, '402882303f7ea37f013f7ef229790006', '0', '', '', 'perms[frontdesk_bill_forcePay:create]', '402882303f7ea37f013f7ef229790006', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('f8ff54d4a7534a8b94db6c1ae8548f33', '4', null, '餐台-修改', null, null, '1', '/cygl/table/update/**', null, 'dbd0b01ed12f4f93a87ba62482ad5c65', '0', '', '', 'perms[table:update]', 'dbd0b01ed12f4f93a87ba62482ad5c65', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('f90fa40e-abf8-11e2-824b-001b783bdd64', '3', null, '日志信息', 'color-6', 'magnet_38', '1', '/xtgl/datalog/list', '由数据日志、业务日志、系统日志三大类型的日志组成，详细记录了系统的点滴变化。', 'd2e6a54520394d60aea2033592f35815', '2', '', '', 'perms[datalog:list]', 'd2e6a54520394d60aea2033592f35815', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('f9dacf31f1b84d13add9e372cbff5c97', '4', null, '菜肴信息-删除', null, null, '1', '/cygl/dishes/delete/**', null, 'c4ce71d1533d4cfebe40941a3c80eb31', '0', '', '', 'perms[dishes:delete]', 'c4ce71d1533d4cfebe40941a3c80eb31', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('fa84173c77204cc49094ff593adb4f08', '4', null, '交班记录-删除', null, null, '1', '/sygl/emploeeShiftList/delete/**', null, 'e4e934d941c44e858036c38e249b59f8', '0', '', '', 'perms[emploeeShiftList:delete]', 'e4e934d941c44e858036c38e249b59f8', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('faae6fb1f5a04019a61003ba55fa9e4e', '4', null, '特价时段-增加', null, null, '1', '/cygl/specialpriceinterval/create/**', null, 'a607c8eaa6d742a48e147bcd651356e7', '0', '', '', 'perms[specialpriceinterval:create]', 'a607c8eaa6d742a48e147bcd651356e7', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('fc05cc6e-7841-11e3-b651-080058000005', '3', null, '付款方式统计', 'color-4', 'magnet_1', '1', '/report/yyfx/paymentTypeStat', null, 'dbc292f2-7841-11e3-b651-080058000005', '3', '', '', 'perms[main_syfx_paymentTypeStat:list]', 'dbc292f2-7841-11e3-b651-080058000005', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('fc0cf280e09c414ba138f93292f5f1ad', '4', null, '特殊操作-删除', null, null, '1', '/sygl/speOpReason/delete/**', null, '1a5c2da6ccab494ab58c8668b6356590', '0', '', '', 'perms[speOpReason:delete]', '1a5c2da6ccab494ab58c8668b6356590', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('fc5eea1e7b73482a8c07dd885290c9a6', '4', null, '结账抹零-增加', null, null, '1', '/sygl/cashSetting/create/**', null, '4d85477b05bb4b888a50c47b2213ec55', '0', '', '', 'perms[cashSetting:create]', '4d85477b05bb4b888a50c47b2213ec55', null, null, null, null, '0', '0', '0');
INSERT INTO `cm_authority_module` VALUES ('fcf68ecb-4c73-1031-8251-6ab85da93719', '4', null, '餐台-预定', null, null, '1', '/order/pop/order/create/**', null, '402882303f7ea37f013f7eeabfba0002', '0', '', '', 'perms[frontdesk_order_order:create]', '402882303f7ea37f013f7eeabfba0002', null, null, null, null, '0', '0', '0');

-- ----------------------------
-- Table structure for cm_backup
-- ----------------------------
DROP TABLE IF EXISTS `cm_backup`;
CREATE TABLE `cm_backup` (
  `bak_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `bak_name` varchar(128) DEFAULT NULL,
  `bak_path` varchar(256) DEFAULT NULL,
  `bak_time` datetime DEFAULT NULL,
  `bak_version` varchar(32) DEFAULT NULL,
  `notes` varchar(1024) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`bak_id`),
  UNIQUE KEY `bak_id` (`bak_id`) USING BTREE,
  KEY `FKDF877B37E883ECB9` (`create_by`),
  KEY `FKDF877B3750AB25CC` (`update_by`),
  CONSTRAINT `FKDF877B3750AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FKDF877B37E883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_backup
-- ----------------------------

-- ----------------------------
-- Table structure for cm_backup_setting
-- ----------------------------
DROP TABLE IF EXISTS `cm_backup_setting`;
CREATE TABLE `cm_backup_setting` (
  `baks_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `backup_interval` varchar(32) DEFAULT NULL,
  `is_open_cloud_backup` varchar(1) DEFAULT NULL,
  `is_open_backup` varchar(1) DEFAULT NULL,
  `is_open_flush` varchar(1) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`baks_id`),
  UNIQUE KEY `baks_id` (`baks_id`) USING BTREE,
  KEY `FK277F0948E883ECB9` (`create_by`),
  KEY `FK277F094850AB25CC` (`update_by`),
  CONSTRAINT `FK277F094850AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FK277F0948E883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_backup_setting
-- ----------------------------
INSERT INTO `cm_backup_setting` VALUES ('ffa6cb31-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '1', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', '0', '0', null);

-- ----------------------------
-- Table structure for cm_bill_combine
-- ----------------------------
DROP TABLE IF EXISTS `cm_bill_combine`;
CREATE TABLE `cm_bill_combine` (
  `cbc_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `bill_id` varchar(36) DEFAULT NULL,
  `bill_no` varchar(32) DEFAULT NULL,
  `cbill_id` varchar(36) DEFAULT NULL,
  `cbill_no` varchar(32) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`cbc_id`),
  UNIQUE KEY `cbc_id` (`cbc_id`) USING BTREE,
  KEY `FKD2C22ABC52E3DE47` (`bill_id`) USING BTREE,
  KEY `FKD2C22ABCE883ECB9` (`create_by`) USING BTREE,
  KEY `FKD2C22ABC50AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_bill_combine_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_bill_combine_ibfk_2` FOREIGN KEY (`bill_id`) REFERENCES `cm_diner_bill` (`bill_id`),
  CONSTRAINT `cm_bill_combine_ibfk_3` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_bill_combine
-- ----------------------------

-- ----------------------------
-- Table structure for cm_buffet_setting
-- ----------------------------
DROP TABLE IF EXISTS `cm_buffet_setting`;
CREATE TABLE `cm_buffet_setting` (
  `cbs_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `buffet_type` varchar(128) DEFAULT NULL,
  `buffet_name` varchar(128) DEFAULT NULL,
  `buffet_start_time` varchar(128) DEFAULT NULL,
  `buffet_end_time` varchar(128) DEFAULT NULL,
  `price` double(14,2) DEFAULT NULL,
  `enable_status` varchar(1) DEFAULT NULL,
  `friday_price` double(14,2) DEFAULT NULL,
  `friday_youhui_namearray` varchar(128) DEFAULT NULL,
  `friday_youhui_pricearray` varchar(128) DEFAULT NULL,
  `monday_price` double(14,2) DEFAULT NULL,
  `monday_youhui_namearray` varchar(128) DEFAULT NULL,
  `monday_youhui_pricearray` varchar(128) DEFAULT NULL,
  `saturday_price` double(14,2) DEFAULT NULL,
  `saturday_youhui_namearray` varchar(128) DEFAULT NULL,
  `saturday_youhui_pricearray` varchar(128) DEFAULT NULL,
  `sunday_price` double(14,2) DEFAULT NULL,
  `sunday_youhui_namearray` varchar(128) DEFAULT NULL,
  `sunday_youhui_pricearray` varchar(128) DEFAULT NULL,
  `thursday_price` double(14,2) DEFAULT NULL,
  `thursday_youhui_namearray` varchar(128) DEFAULT NULL,
  `thursday_youhui_pricearray` varchar(128) DEFAULT NULL,
  `tuesday_price` double(14,2) DEFAULT NULL,
  `tuesday_youhui_namearray` varchar(128) DEFAULT NULL,
  `tuesday_youhui_pricearray` varchar(128) DEFAULT NULL,
  `wednesday_price` double(14,2) DEFAULT NULL,
  `wednesday_youhui_namearray` varchar(128) DEFAULT NULL,
  `wednesday_youhui_pricearray` varchar(128) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`cbs_id`),
  UNIQUE KEY `cbs_id` (`cbs_id`),
  KEY `FK4D3A7C8E883ECB9` (`create_by`),
  KEY `FK4D3A7C850AB25CC` (`update_by`),
  CONSTRAINT `FK4D3A7C850AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FK4D3A7C8E883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_buffet_setting
-- ----------------------------

-- ----------------------------
-- Table structure for cm_busi_log
-- ----------------------------
DROP TABLE IF EXISTS `cm_busi_log`;
CREATE TABLE `cm_busi_log` (
  `log_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `bill_id` varchar(36) DEFAULT NULL,
  `bill_no` varchar(64) DEFAULT NULL,
  `buss_log_type` varchar(32) DEFAULT NULL,
  `op_type` varchar(32) DEFAULT NULL,
  `tab_no` varchar(64) DEFAULT NULL,
  `tab_id` varchar(36) DEFAULT NULL,
  `pay_time` datetime DEFAULT NULL,
  `notes` varchar(1024) DEFAULT NULL,
  `order_id` varchar(36) DEFAULT NULL,
  `order_no` varchar(64) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  UNIQUE KEY `log_id` (`log_id`) USING BTREE,
  KEY `FK58B98423E883ECB9` (`create_by`) USING BTREE,
  KEY `FK58B9842350AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_busi_log_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_busi_log_ibfk_2` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_busi_log
-- ----------------------------

-- ----------------------------
-- Table structure for cm_cashier_desk_setting
-- ----------------------------
DROP TABLE IF EXISTS `cm_cashier_desk_setting`;
CREATE TABLE `cm_cashier_desk_setting` (
  `ccds_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `is_pay_enter_desk` varchar(1) DEFAULT '0',
  `is_show_payed_bill` varchar(1) DEFAULT '0',
  `is_start_enter_order` varchar(1) DEFAULT '0',
  `is_unplace_bill_can_paying` varchar(1) DEFAULT '0',
  `is_order_enter_desk` varchar(1) DEFAULT '0',
  `bill_place_enter_desk_or_pay` varchar(1) DEFAULT '1',
  `is_show_place_bill_confirm_window` varchar(1) DEFAULT '1',
  `leave_time` int(11) DEFAULT '0',
  `is_auto_qingtai` varchar(1) DEFAULT '0',
  `lock_screen_time` int(11) DEFAULT NULL,
  `message_tel` varchar(11) DEFAULT NULL,
  `order_expire_time` int(11) DEFAULT NULL,
  `order_hint_time` int(11) DEFAULT NULL,
  `order_warn_time` int(11) DEFAULT NULL,
  `order_lock_time` int(11) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`ccds_id`),
  UNIQUE KEY `ccds_id` (`ccds_id`) USING BTREE,
  KEY `FKC07FB35BE883ECB9` (`create_by`) USING BTREE,
  KEY `FKC07FB35B50AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_cashier_desk_setting_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_cashier_desk_setting_ibfk_2` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_cashier_desk_setting
-- ----------------------------
INSERT INTO `cm_cashier_desk_setting` VALUES ('ffacb0dc-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '0', '0', '0', '0', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', 'e5497097-2772-11e4-a88b-d4bed9c6f8ef', '2014-12-11 11:42:19', '7', '0', null);

-- ----------------------------
-- Table structure for cm_cash_discount
-- ----------------------------
DROP TABLE IF EXISTS `cm_cash_discount`;
CREATE TABLE `cm_cash_discount` (
  `ccd_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `discount_name` varchar(128) DEFAULT NULL,
  `enable_status` varchar(1) DEFAULT NULL,
  `is_only_member` varchar(1) DEFAULT NULL,
  `main_discount` int(11) DEFAULT NULL,
  `roles_array` varchar(1024) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`ccd_id`),
  UNIQUE KEY `ccd_id` (`ccd_id`) USING BTREE,
  KEY `FKAC5DF1B8E883ECB9` (`create_by`) USING BTREE,
  KEY `FKAC5DF1B850AB25CC` (`update_by`) USING BTREE,
  KEY `rest_id` (`rest_id`) USING BTREE,
  CONSTRAINT `cm_cash_discount_ibfk_1` FOREIGN KEY (`rest_id`) REFERENCES `cm_restaurant` (`rest_id`),
  CONSTRAINT `cm_cash_discount_ibfk_2` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_cash_discount_ibfk_3` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_cash_discount
-- ----------------------------
INSERT INTO `cm_cash_discount` VALUES ('e549719a-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '积分卡100%', '1', '1', '100', 'e54970eb-2772-11e4-a88b-d4bed9c6f8ef,e54970fa-2772-11e4-a88b-d4bed9c6f8ef,e5497106-2772-11e4-a88b-d4bed9c6f8ef,e5497115-2772-11e4-a88b-d4bed9c6f8ef,e5497124-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', '1', '0', null);
INSERT INTO `cm_cash_discount` VALUES ('e54971a9-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '会员卡折扣95%', '1', '1', '95', 'e54970eb-2772-11e4-a88b-d4bed9c6f8ef,e54970fa-2772-11e4-a88b-d4bed9c6f8ef,e5497106-2772-11e4-a88b-d4bed9c6f8ef,e5497115-2772-11e4-a88b-d4bed9c6f8ef,e5497124-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', '1', '0', null);
INSERT INTO `cm_cash_discount` VALUES ('e54971b8-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '金牌会员卡90%', '1', '1', '90', 'e54970eb-2772-11e4-a88b-d4bed9c6f8ef,e54970fa-2772-11e4-a88b-d4bed9c6f8ef,e5497106-2772-11e4-a88b-d4bed9c6f8ef,e5497115-2772-11e4-a88b-d4bed9c6f8ef,e5497124-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', '1', '0', null);
INSERT INTO `cm_cash_discount` VALUES ('e54971c8-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '铂金卡85%', '1', '1', '85', 'e54970eb-2772-11e4-a88b-d4bed9c6f8ef,e54970fa-2772-11e4-a88b-d4bed9c6f8ef,e5497106-2772-11e4-a88b-d4bed9c6f8ef,e5497115-2772-11e4-a88b-d4bed9c6f8ef,e5497124-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', '1', '0', null);
INSERT INTO `cm_cash_discount` VALUES ('e54971d7-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '贵宾卡80%', '1', '1', '80', 'e54970eb-2772-11e4-a88b-d4bed9c6f8ef,e54970fa-2772-11e4-a88b-d4bed9c6f8ef,e5497106-2772-11e4-a88b-d4bed9c6f8ef,e5497115-2772-11e4-a88b-d4bed9c6f8ef,e5497124-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', '1', '0', null);
INSERT INTO `cm_cash_discount` VALUES ('e54971e6-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '系统会员折扣95%', '1', '0', '95', 'e54970eb-2772-11e4-a88b-d4bed9c6f8ef,e54970fa-2772-11e4-a88b-d4bed9c6f8ef,e5497106-2772-11e4-a88b-d4bed9c6f8ef,e5497115-2772-11e4-a88b-d4bed9c6f8ef,e5497124-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', '1', '0', null);

-- ----------------------------
-- Table structure for cm_cash_dishes_type_discount
-- ----------------------------
DROP TABLE IF EXISTS `cm_cash_dishes_type_discount`;
CREATE TABLE `cm_cash_dishes_type_discount` (
  `ccdtd_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `category_dicount` int(11) DEFAULT NULL,
  `category_id` varchar(36) DEFAULT NULL,
  `ds_category_id` varchar(36) DEFAULT NULL,
  `ccd_id` varchar(36) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`ccdtd_id`),
  UNIQUE KEY `ccdtd_id` (`ccdtd_id`) USING BTREE,
  KEY `FKE1BECA66FDFB151` (`ccd_id`) USING BTREE,
  KEY `FKE1BECA66E883ECB9` (`create_by`) USING BTREE,
  KEY `FKE1BECA6650AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_cash_dishes_type_discount_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_cash_dishes_type_discount_ibfk_2` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_cash_dishes_type_discount_ibfk_3` FOREIGN KEY (`ccd_id`) REFERENCES `cm_cash_discount` (`ccd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_cash_dishes_type_discount
-- ----------------------------
INSERT INTO `cm_cash_dishes_type_discount` VALUES ('000148ce-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '95', 'e549713f-2772-11e4-a88b-d4bed9c6f8ef', null, 'e54971a9-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', '0', '0', null);
INSERT INTO `cm_cash_dishes_type_discount` VALUES ('000d9b5d-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '95', 'e5497152-2772-11e4-a88b-d4bed9c6f8ef', null, 'e54971a9-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', '0', '0', null);
INSERT INTO `cm_cash_dishes_type_discount` VALUES ('00134e90-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '95', 'e5497161-2772-11e4-a88b-d4bed9c6f8ef', null, 'e54971a9-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', '0', '0', null);
INSERT INTO `cm_cash_dishes_type_discount` VALUES ('0019060d-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '95', 'e549716c-2772-11e4-a88b-d4bed9c6f8ef', null, 'e54971a9-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', '0', '0', null);
INSERT INTO `cm_cash_dishes_type_discount` VALUES ('001eb1c8-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '90', 'e549713f-2772-11e4-a88b-d4bed9c6f8ef', null, 'e54971b8-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', '0', '0', null);
INSERT INTO `cm_cash_dishes_type_discount` VALUES ('00266c23-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '90', 'e5497152-2772-11e4-a88b-d4bed9c6f8ef', null, 'e54971b8-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', '0', '0', null);
INSERT INTO `cm_cash_dishes_type_discount` VALUES ('002ffd7d-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '90', 'e5497161-2772-11e4-a88b-d4bed9c6f8ef', null, 'e54971b8-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', '0', '0', null);
INSERT INTO `cm_cash_dishes_type_discount` VALUES ('0035e00d-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '90', 'e549716c-2772-11e4-a88b-d4bed9c6f8ef', null, 'e54971b8-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', '0', '0', null);
INSERT INTO `cm_cash_dishes_type_discount` VALUES ('003f72d3-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '85', 'e549713f-2772-11e4-a88b-d4bed9c6f8ef', null, 'e54971c8-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', '0', '0', null);
INSERT INTO `cm_cash_dishes_type_discount` VALUES ('004525b6-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '85', 'e5497152-2772-11e4-a88b-d4bed9c6f8ef', null, 'e54971c8-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', '0', '0', null);
INSERT INTO `cm_cash_dishes_type_discount` VALUES ('004b272d-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '85', 'e5497161-2772-11e4-a88b-d4bed9c6f8ef', null, 'e54971c8-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', '0', '0', null);
INSERT INTO `cm_cash_dishes_type_discount` VALUES ('00549bf9-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '85', 'e549716c-2772-11e4-a88b-d4bed9c6f8ef', null, 'e54971c8-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', '0', '0', null);
INSERT INTO `cm_cash_dishes_type_discount` VALUES ('005ca5ee-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '80', 'e549713f-2772-11e4-a88b-d4bed9c6f8ef', null, 'e54971d7-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', '0', '0', null);
INSERT INTO `cm_cash_dishes_type_discount` VALUES ('0069bd3b-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '80', 'e5497152-2772-11e4-a88b-d4bed9c6f8ef', null, 'e54971d7-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', '0', '0', null);
INSERT INTO `cm_cash_dishes_type_discount` VALUES ('00753c8f-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '80', 'e5497161-2772-11e4-a88b-d4bed9c6f8ef', null, 'e54971d7-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', '0', '0', null);
INSERT INTO `cm_cash_dishes_type_discount` VALUES ('007b19a1-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '80', 'e549716c-2772-11e4-a88b-d4bed9c6f8ef', null, 'e54971d7-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', '0', '0', null);
INSERT INTO `cm_cash_dishes_type_discount` VALUES ('0082f695-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '95', 'e549713f-2772-11e4-a88b-d4bed9c6f8ef', null, 'e54971e6-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', '0', '0', null);
INSERT INTO `cm_cash_dishes_type_discount` VALUES ('0088b66f-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '95', 'e5497152-2772-11e4-a88b-d4bed9c6f8ef', null, 'e54971e6-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', '0', '0', null);
INSERT INTO `cm_cash_dishes_type_discount` VALUES ('008eaff4-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '95', 'e5497161-2772-11e4-a88b-d4bed9c6f8ef', null, 'e54971e6-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', '0', '0', null);
INSERT INTO `cm_cash_dishes_type_discount` VALUES ('00985e77-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '95', 'e549716c-2772-11e4-a88b-d4bed9c6f8ef', null, 'e54971e6-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', '0', '0', null);
INSERT INTO `cm_cash_dishes_type_discount` VALUES ('ffe87e00-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '100', 'e549713f-2772-11e4-a88b-d4bed9c6f8ef', null, 'e549719a-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', '0', '0', null);
INSERT INTO `cm_cash_dishes_type_discount` VALUES ('fff00207-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '100', 'e5497152-2772-11e4-a88b-d4bed9c6f8ef', null, 'e549719a-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', '0', '0', null);
INSERT INTO `cm_cash_dishes_type_discount` VALUES ('fff5eb4a-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '100', 'e5497161-2772-11e4-a88b-d4bed9c6f8ef', null, 'e549719a-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', '0', '0', null);
INSERT INTO `cm_cash_dishes_type_discount` VALUES ('fffb9c7f-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '100', 'e549716c-2772-11e4-a88b-d4bed9c6f8ef', null, 'e549719a-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:40', '0', '0', null);

-- ----------------------------
-- Table structure for cm_cash_setting
-- ----------------------------
DROP TABLE IF EXISTS `cm_cash_setting`;
CREATE TABLE `cm_cash_setting` (
  `st_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `moling_mode` varchar(32) DEFAULT NULL,
  `ordered_same_dishes_merge` varchar(1) DEFAULT NULL,
  `ordering_same_dishes_merge` varchar(1) DEFAULT NULL,
  `sysdata_type` varchar(32) DEFAULT NULL,
  `is_enter_order_page` varchar(1) DEFAULT NULL,
  `is_show_undone_order` varchar(1) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`st_id`),
  UNIQUE KEY `st_id` (`st_id`) USING BTREE,
  KEY `FKCDFCA6F9E883ECB9` (`create_by`) USING BTREE,
  KEY `FKCDFCA6F950AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_cash_setting_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_cash_setting_ibfk_2` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_cash_setting
-- ----------------------------
INSERT INTO `cm_cash_setting` VALUES ('ff42dd16-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1', null, null, '0', null, null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', '0', '0', null);

-- ----------------------------
-- Table structure for cm_complaint_suggest
-- ----------------------------
DROP TABLE IF EXISTS `cm_complaint_suggest`;
CREATE TABLE `cm_complaint_suggest` (
  `ocs_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `bill_no` varchar(32) DEFAULT NULL,
  `complaint_name` varchar(128) DEFAULT NULL,
  `complaint_tel` varchar(32) DEFAULT NULL,
  `content` varchar(1024) DEFAULT NULL,
  `employee_id` varchar(32) DEFAULT NULL,
  `employee_no` varchar(32) DEFAULT NULL,
  `mb_id` varchar(36) DEFAULT NULL,
  `ocs_status` varchar(32) DEFAULT NULL,
  `ocs_type` varchar(32) DEFAULT NULL,
  `publish_terminal` varchar(32) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`ocs_id`),
  UNIQUE KEY `ocs_id` (`ocs_id`) USING BTREE,
  KEY `FKA1CA75B41F3EF9D` (`mb_id`) USING BTREE,
  KEY `FKA1CA75B339859D6` (`rest_id`) USING BTREE,
  KEY `FKA1CA75BE883ECB9` (`create_by`) USING BTREE,
  KEY `FKA1CA75B50AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_complaint_suggest_ibfk_1` FOREIGN KEY (`rest_id`) REFERENCES `cm_restaurant` (`rest_id`),
  CONSTRAINT `cm_complaint_suggest_ibfk_2` FOREIGN KEY (`mb_id`) REFERENCES `cm_rest_member_info` (`mb_id`),
  CONSTRAINT `cm_complaint_suggest_ibfk_3` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_complaint_suggest_ibfk_4` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_complaint_suggest
-- ----------------------------

-- ----------------------------
-- Table structure for cm_complaint_suggest_replay
-- ----------------------------
DROP TABLE IF EXISTS `cm_complaint_suggest_replay`;
CREATE TABLE `cm_complaint_suggest_replay` (
  `ocsr_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `content` varchar(1024) DEFAULT NULL,
  `emp_id` varchar(36) DEFAULT NULL,
  `ocs_id` varchar(36) DEFAULT NULL,
  `ocsr_status` varchar(32) DEFAULT NULL,
  `publish_terminal` varchar(32) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`ocsr_id`),
  UNIQUE KEY `ocsr_id` (`ocsr_id`) USING BTREE,
  KEY `FKD970B14B5E23C787` (`ocs_id`) USING BTREE,
  KEY `FKD970B14BAA66E493` (`emp_id`) USING BTREE,
  KEY `FKD970B14BE883ECB9` (`create_by`) USING BTREE,
  KEY `FKD970B14B50AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_complaint_suggest_replay_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_complaint_suggest_replay_ibfk_2` FOREIGN KEY (`ocs_id`) REFERENCES `cm_complaint_suggest` (`ocs_id`),
  CONSTRAINT `cm_complaint_suggest_replay_ibfk_3` FOREIGN KEY (`emp_id`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_complaint_suggest_replay_ibfk_4` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_complaint_suggest_replay
-- ----------------------------

-- ----------------------------
-- Table structure for cm_data_log
-- ----------------------------
DROP TABLE IF EXISTS `cm_data_log`;
CREATE TABLE `cm_data_log` (
  `log_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `data_log_type` varchar(32) DEFAULT NULL,
  `operate_act` varchar(32) DEFAULT NULL,
  `operate_attr` varchar(32) DEFAULT NULL,
  `notes` varchar(1024) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  UNIQUE KEY `log_id` (`log_id`) USING BTREE,
  KEY `FK7C35964E883ECB9` (`create_by`) USING BTREE,
  KEY `FK7C3596450AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_data_log_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_data_log_ibfk_2` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_data_log
-- ----------------------------

-- ----------------------------
-- Table structure for cm_delivery
-- ----------------------------
DROP TABLE IF EXISTS `cm_delivery`;
CREATE TABLE `cm_delivery` (
  `delivery_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `delivery_no` varchar(128) DEFAULT NULL,
  `delivery_time` datetime DEFAULT NULL,
  `applicant_id` varchar(36) DEFAULT NULL,
  `applicant_name` varchar(128) DEFAULT NULL,
  `applicant_phone` varchar(128) DEFAULT NULL,
  `notes` varchar(1024) DEFAULT NULL,
  `state` varchar(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `version` varchar(36) DEFAULT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`delivery_id`),
  KEY `create_by` (`create_by`),
  KEY `update_by` (`update_by`),
  KEY `FKCE309829FC6669B7` (`applicant_id`),
  CONSTRAINT `cm_delivery_ibfk_1` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_delivery_ibfk_2` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FKCE309829FC6669B7` FOREIGN KEY (`applicant_id`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_delivery
-- ----------------------------

-- ----------------------------
-- Table structure for cm_delivery_details
-- ----------------------------
DROP TABLE IF EXISTS `cm_delivery_details`;
CREATE TABLE `cm_delivery_details` (
  `dd_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `delivery_id` varchar(36) DEFAULT NULL,
  `rm_id` varchar(36) DEFAULT NULL,
  `store_name` varchar(128) DEFAULT NULL,
  `material_name` varchar(128) DEFAULT NULL,
  `material_code` varchar(128) DEFAULT NULL,
  `unit_name` varchar(255) DEFAULT NULL,
  `price` double(14,2) DEFAULT NULL,
  `delivery_count` float DEFAULT NULL,
  `before_delivery_count` float DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `version` varchar(36) DEFAULT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`dd_id`),
  KEY `create_by` (`create_by`),
  KEY `update_by` (`update_by`),
  KEY `FKE876F82C4AEC3CE9` (`delivery_id`),
  CONSTRAINT `cm_delivery_details_ibfk_2` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_delivery_details_ibfk_3` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FKE876F82C4AEC3CE9` FOREIGN KEY (`delivery_id`) REFERENCES `cm_delivery` (`delivery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_delivery_details
-- ----------------------------

-- ----------------------------
-- Table structure for cm_diner_bill
-- ----------------------------
DROP TABLE IF EXISTS `cm_diner_bill`;
CREATE TABLE `cm_diner_bill` (
  `bill_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `mb_id` varchar(36) DEFAULT NULL,
  `bill_no` varchar(32) DEFAULT NULL,
  `tab_id` varchar(36) DEFAULT NULL,
  `tab_no` varchar(32) DEFAULT NULL,
  `people_num` varchar(255) DEFAULT NULL,
  `order_id` varchar(36) DEFAULT NULL,
  `bill_time` datetime DEFAULT NULL,
  `bill_status` varchar(32) DEFAULT NULL,
  `bill_type` varchar(32) DEFAULT NULL,
  `ori_cost` double(14,2) DEFAULT NULL,
  `taste_id_array` varchar(1024) DEFAULT NULL,
  `taste_name_array` varchar(1024) DEFAULT NULL,
  `avoidfood_id_array` varchar(1024) DEFAULT NULL,
  `avoidfood_name_array` varchar(1024) DEFAULT NULL,
  `pungent_level` int(11) DEFAULT NULL,
  `is_in_kitchen` varchar(1) DEFAULT NULL,
  `is_wait_call` varchar(1) DEFAULT NULL,
  `urge_num` int(11) DEFAULT NULL,
  `last_urge_time` datetime DEFAULT NULL,
  `before_pay` double(14,2) DEFAULT NULL,
  `discount` int(11) NOT NULL,
  `ccd_id` varchar(36) DEFAULT NULL,
  `discount_name` varchar(128) DEFAULT NULL,
  `other_discount` varchar(1024) DEFAULT NULL,
  `payable_cost` double(14,2) DEFAULT NULL,
  `losse_gain` double(14,2) DEFAULT NULL,
  `real_cost` double(14,2) DEFAULT NULL,
  `is_moling` varchar(1) DEFAULT NULL,
  `moling_mode_cost` double(14,2) DEFAULT NULL,
  `moling_mode` varchar(32) DEFAULT NULL,
  `st_id` varchar(36) DEFAULT NULL,
  `odd_change` double(14,2) DEFAULT NULL,
  `service_charge_money` double(14,2) DEFAULT NULL,
  `sevice_charge_num` double(14,2) DEFAULT NULL,
  `service_charge_type` varchar(32) DEFAULT NULL,
  `is_draw_bill` varchar(1) DEFAULT NULL,
  `is_custom_discount` varchar(1) DEFAULT NULL,
  `draw_bill_amount` double(14,2) DEFAULT NULL,
  `consume_cost` double(14,2) DEFAULT NULL,
  `save_cost` double(14,2) DEFAULT NULL,
  `rate_cost` double(14,2) DEFAULT NULL,
  `pay_time` datetime DEFAULT NULL,
  `mc_id` varchar(36) DEFAULT NULL,
  `waiter_id` varchar(36) DEFAULT NULL,
  `salesman_id` varchar(36) DEFAULT NULL,
  `cashier_id` varchar(36) DEFAULT NULL,
  `waiter_name` varchar(128) DEFAULT NULL,
  `salesman_name` varchar(128) DEFAULT NULL,
  `cashier_name` varchar(128) DEFAULT NULL,
  `rea_id` varchar(36) DEFAULT NULL,
  `cancel_bill_reason` varchar(128) DEFAULT NULL,
  `dishes_type_discount_desc` varchar(255) DEFAULT NULL,
  `company` varchar(256) DEFAULT NULL,
  `notes` varchar(1024) DEFAULT NULL,
  `bill_notes` varchar(1024) DEFAULT NULL,
  `is_valid` varchar(1) DEFAULT '1',
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  `membercard_pay_type` varchar(36) DEFAULT NULL,
  `is_shift` varchar(1) DEFAULT '0',
  `ces_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`bill_id`),
  UNIQUE KEY `bill_id` (`bill_id`) USING BTREE,
  KEY `FK4A76F6A5310C4CFB` (`mb_id`) USING BTREE,
  KEY `FK4A76F6A5E883ECB9` (`create_by`) USING BTREE,
  KEY `FK4A76F6A550AB25CC` (`update_by`) USING BTREE,
  KEY `rest_id` (`rest_id`) USING BTREE,
  KEY `ccd_id` (`ccd_id`) USING BTREE,
  KEY `FK4A76F6A5E85733E2` (`tab_id`),
  KEY `FK4A76F6A5E526E91` (`st_id`),
  KEY `FK4A76F6A543365804` (`mc_id`),
  KEY `FK4A76F6A54BCEFA56` (`cashier_id`),
  CONSTRAINT `cm_diner_bill_ibfk_1` FOREIGN KEY (`ccd_id`) REFERENCES `cm_cash_discount` (`ccd_id`),
  CONSTRAINT `cm_diner_bill_ibfk_2` FOREIGN KEY (`rest_id`) REFERENCES `cm_restaurant` (`rest_id`),
  CONSTRAINT `cm_diner_bill_ibfk_3` FOREIGN KEY (`mb_id`) REFERENCES `cm_rest_member_info` (`mb_id`),
  CONSTRAINT `cm_diner_bill_ibfk_4` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_diner_bill_ibfk_5` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FK4A76F6A543365804` FOREIGN KEY (`mc_id`) REFERENCES `cm_membership_card` (`mc_id`),
  CONSTRAINT `FK4A76F6A54BCEFA56` FOREIGN KEY (`cashier_id`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FK4A76F6A5E526E91` FOREIGN KEY (`st_id`) REFERENCES `cm_cash_setting` (`st_id`),
  CONSTRAINT `FK4A76F6A5E85733E2` FOREIGN KEY (`tab_id`) REFERENCES `cm_table` (`tab_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_diner_bill
-- ----------------------------
INSERT INTO `cm_diner_bill` VALUES ('ff80808147f6705e0147f77f6e760002', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, '1408210001', 'fed54d3a-2772-11e4-a88b-d4bed9c6f8ef', '001', '2', '', '2014-08-21 15:37:09', '2', '1', '24.00', null, null, null, null, '0', null, null, '0', null, '0.00', '100', null, null, null, '24.00', '0.00', '0.00', null, '0.00', '1', null, '0.00', '0.00', '0.00', '3', null, null, null, '24.00', '0.00', '0.00', null, null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', null, null, '管理员', '', null, null, null, '', null, '', null, '1', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-21 15:37:09', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-21 15:37:09', '7', '0', '0', null, null, null);
INSERT INTO `cm_diner_bill` VALUES ('ff80808147f6705e0147fd4b6143000c', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, '1408220001', 'ff80808147f6712c0147f77e44bb0000', '002', '1', null, '2014-08-22 18:38:01', '1', '1', '0.00', null, null, null, null, '0', null, null, '0', null, '0.00', '100', null, null, null, '0.00', '0.00', '0.00', null, '0.00', '1', null, '0.00', '0.00', '0.00', '3', null, null, null, '0.00', '0.00', '0.00', null, null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', null, null, '管理员', null, null, null, null, '', null, null, null, '1', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-22 18:38:01', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-22 18:38:01', '3', '0', '0', null, null, null);
INSERT INTO `cm_diner_bill` VALUES ('ff8080814801a1f501481fbc23ac0002', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, '1408290001', null, null, null, null, '2014-08-29 11:08:16', '1', '4', '12.00', null, null, null, null, '0', null, null, '0', null, '0.00', '100', null, null, null, '12.00', '0.00', '0.00', null, '0.00', '1', null, '0.00', '0.00', null, null, null, null, null, '12.00', '0.00', '0.00', null, null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', null, null, '管理员', null, null, null, null, '', null, null, null, '1', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-29 11:08:16', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-29 11:08:16', '2', '0', '0', null, null, null);
INSERT INTO `cm_diner_bill` VALUES ('ff8080814801a1f501481fbc28d00008', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, '1408290002', null, null, null, null, '2014-08-29 11:08:17', '1', '4', '12.00', null, null, null, null, '0', null, null, '0', null, '0.00', '100', null, null, null, '12.00', '0.00', '0.00', null, '0.00', '1', null, '0.00', '0.00', null, null, null, null, null, '12.00', '0.00', '0.00', null, null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', null, null, '管理员', null, null, null, null, '', null, null, null, '1', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-29 11:08:18', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-29 11:08:18', '2', '0', '0', null, null, null);
INSERT INTO `cm_diner_bill` VALUES ('ff8080814801a1f501486767fa860010', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, '1409120001', 'ff80808147f6712c0147f77e6a540002', '003', '1', null, '2014-09-12 09:09:00', '1', '1', '0.00', null, null, null, null, '0', null, null, '0', null, '0.00', '100', null, null, null, '0.00', '0.00', '0.00', null, '0.00', '1', null, '0.00', '0.00', '0.00', null, null, null, null, '0.00', '0.00', '0.00', null, null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', null, null, '管理员', null, null, null, null, null, null, null, null, '1', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-09-12 09:09:00', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-09-12 09:09:00', '0', '0', '0', null, null, null);

-- ----------------------------
-- Table structure for cm_diner_bill_credit_payment
-- ----------------------------
DROP TABLE IF EXISTS `cm_diner_bill_credit_payment`;
CREATE TABLE `cm_diner_bill_credit_payment` (
  `cdbcp_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `bill_id` varchar(36) DEFAULT NULL,
  `bill_no` varchar(32) DEFAULT NULL,
  `money` double(14,2) NOT NULL,
  `pay_time` datetime DEFAULT NULL,
  `cpt_id` varchar(36) DEFAULT NULL,
  `dbp_id` varchar(36) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`cdbcp_id`),
  UNIQUE KEY `cdbcp_id` (`cdbcp_id`) USING BTREE,
  KEY `FK21C6339ACB52863A` (`dbp_id`) USING BTREE,
  KEY `FK21C6339AE883ECB9` (`create_by`) USING BTREE,
  KEY `FK21C6339A50AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_diner_bill_credit_payment_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_diner_bill_credit_payment_ibfk_2` FOREIGN KEY (`dbp_id`) REFERENCES `cm_diner_bill_payment` (`dbp_id`),
  CONSTRAINT `cm_diner_bill_credit_payment_ibfk_3` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_diner_bill_credit_payment
-- ----------------------------

-- ----------------------------
-- Table structure for cm_diner_bill_dishes
-- ----------------------------
DROP TABLE IF EXISTS `cm_diner_bill_dishes`;
CREATE TABLE `cm_diner_bill_dishes` (
  `bd_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `dishes_id` varchar(36) DEFAULT NULL,
  `bill_id` varchar(36) DEFAULT NULL,
  `bill_no` varchar(32) DEFAULT NULL,
  `category_id` varchar(36) DEFAULT NULL,
  `dishes_name` varchar(32) DEFAULT NULL,
  `dishes_code` varchar(1024) DEFAULT NULL,
  `dishes_status` varchar(32) DEFAULT NULL,
  `unit_price` double(14,2) DEFAULT NULL,
  `real_unit_price` double(14,2) DEFAULT NULL,
  `unit_num` float(11,2) DEFAULT NULL,
  `unit_id` varchar(36) DEFAULT NULL,
  `unit_name` varchar(128) DEFAULT NULL,
  `discount` int(11) NOT NULL,
  `discount_type` varchar(32) DEFAULT NULL,
  `is_onsale` varchar(1) DEFAULT NULL,
  `ori_cost` double(14,2) DEFAULT NULL,
  `real_cost` double(14,2) DEFAULT NULL,
  `taste_id_array` varchar(1024) DEFAULT NULL,
  `avoidfood_id_array` varchar(1024) DEFAULT NULL,
  `pungent_level` int(11) DEFAULT NULL,
  `taste_name_array` varchar(1024) DEFAULT NULL,
  `avoidfood_name_array` varchar(1024) DEFAULT NULL,
  `is_ruling_price` varchar(1) DEFAULT NULL,
  `is_user_defined` varchar(1) DEFAULT NULL,
  `order_emp_id` varchar(36) DEFAULT NULL,
  `urge_num` int(11) DEFAULT NULL,
  `order_time` datetime DEFAULT NULL,
  `fixed_time` datetime DEFAULT NULL,
  `cancel_time` datetime DEFAULT NULL,
  `cancel_reason_id` varchar(36) DEFAULT NULL,
  `cancel_reason_name` varchar(128) DEFAULT NULL,
  `fixed_version` int(11) DEFAULT NULL,
  `last_urge_time` datetime DEFAULT NULL,
  `notes` varchar(1024) DEFAULT NULL,
  `rm_return` varchar(1) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`bd_id`),
  UNIQUE KEY `bd_id` (`bd_id`) USING BTREE,
  KEY `FKCC1C4EA252E3DE47` (`bill_id`) USING BTREE,
  KEY `FKCC1C4EA212052E66` (`dishes_id`) USING BTREE,
  KEY `FKCC1C4EA2E883ECB9` (`create_by`) USING BTREE,
  KEY `FKCC1C4EA250AB25CC` (`update_by`) USING BTREE,
  KEY `FKCC1C4EA2C31DFFB7` (`category_id`),
  KEY `FKCC1C4EA2EAABA442` (`order_emp_id`),
  CONSTRAINT `cm_diner_bill_dishes_ibfk_1` FOREIGN KEY (`dishes_id`) REFERENCES `cm_dishes` (`dishes_id`),
  CONSTRAINT `cm_diner_bill_dishes_ibfk_2` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_diner_bill_dishes_ibfk_3` FOREIGN KEY (`bill_id`) REFERENCES `cm_diner_bill` (`bill_id`),
  CONSTRAINT `cm_diner_bill_dishes_ibfk_4` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FKCC1C4EA2C31DFFB7` FOREIGN KEY (`category_id`) REFERENCES `cm_dishes_category` (`category_id`),
  CONSTRAINT `FKCC1C4EA2EAABA442` FOREIGN KEY (`order_emp_id`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_diner_bill_dishes
-- ----------------------------
INSERT INTO `cm_diner_bill_dishes` VALUES ('ff80808147f6705e0147f77f9f430006', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'ff48c1ff-2772-11e4-a88b-d4bed9c6f8ef', 'ff80808147f6705e0147f77f6e760002', '1408210001', 'e549713f-2772-11e4-a88b-d4bed9c6f8ef', '鱼香肉丝', 'yxrs', '2', '12.00', '12.00', '1.00', 'e549717b-2772-11e4-a88b-d4bed9c6f8ef', '份', '100', null, '0', '12.00', '12.00', null, null, '0', null, null, '0', '0', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '0', '2014-08-21 15:37:21', '2014-08-21 15:37:30', null, null, null, '0', null, null, null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-21 15:37:21', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-09-12 09:07:24', '2', '0', '0');
INSERT INTO `cm_diner_bill_dishes` VALUES ('ff8080814801a1f501481fbc27710005', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'ff48c1ff-2772-11e4-a88b-d4bed9c6f8ef', 'ff8080814801a1f501481fbc23ac0002', '1408290001', 'e549713f-2772-11e4-a88b-d4bed9c6f8ef', '鱼香肉丝', 'yxrs', '5', '12.00', '12.00', '1.00', 'e549717b-2772-11e4-a88b-d4bed9c6f8ef', '份', '100', null, '0', '12.00', '12.00', null, null, '0', null, null, '0', '0', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '0', '2014-08-29 11:08:16', null, null, null, null, '0', null, null, null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-29 11:08:17', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-29 11:08:17', '0', '0', '0');
INSERT INTO `cm_diner_bill_dishes` VALUES ('ff8080814801a1f501481fbc28fa000b', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'ff48c1ff-2772-11e4-a88b-d4bed9c6f8ef', 'ff8080814801a1f501481fbc28d00008', '1408290002', 'e549713f-2772-11e4-a88b-d4bed9c6f8ef', '鱼香肉丝', 'yxrs', '5', '12.00', '12.00', '1.00', 'e549717b-2772-11e4-a88b-d4bed9c6f8ef', '份', '100', null, '0', '12.00', '12.00', null, null, '0', null, null, '0', '0', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '0', '2014-08-29 11:08:18', null, null, null, null, '0', null, null, null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-29 11:08:18', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-29 11:08:18', '0', '0', '0');
INSERT INTO `cm_diner_bill_dishes` VALUES ('ff80808148db7f50014a377074e50000', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'ff48c1ff-2772-11e4-a88b-d4bed9c6f8ef', 'ff80808147f6705e0147f77f6e760002', '1408210001', 'e549713f-2772-11e4-a88b-d4bed9c6f8ef', '鱼香肉丝', 'yxrs', '1', '12.00', '12.00', '1.00', 'e549717b-2772-11e4-a88b-d4bed9c6f8ef', '份', '100', null, '0', '12.00', '12.00', null, null, '0', null, null, '0', '0', 'e5497097-2772-11e4-a88b-d4bed9c6f8ef', '0', '2014-12-11 11:42:04', '2014-12-11 11:42:18', null, null, null, '0', null, null, null, 'e5497097-2772-11e4-a88b-d4bed9c6f8ef', '2014-12-11 11:42:04', 'e5497097-2772-11e4-a88b-d4bed9c6f8ef', '2014-12-11 11:42:04', '2', '0', '0');

-- ----------------------------
-- Table structure for cm_diner_bill_dishes_set
-- ----------------------------
DROP TABLE IF EXISTS `cm_diner_bill_dishes_set`;
CREATE TABLE `cm_diner_bill_dishes_set` (
  `bds_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `avoidfood_id_array` varchar(1024) DEFAULT NULL,
  `avoidfood_name_array` varchar(1024) DEFAULT NULL,
  `bill_no` varchar(32) DEFAULT NULL,
  `cancel_reason_id` varchar(36) DEFAULT NULL,
  `cancel_reason_name` varchar(36) DEFAULT NULL,
  `cancel_time` datetime DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `discount_type` varchar(32) DEFAULT NULL,
  `ds_code` varchar(64) DEFAULT NULL,
  `ds_id` varchar(255) DEFAULT NULL,
  `ds_name` varchar(32) DEFAULT NULL,
  `ds_status` varchar(32) DEFAULT NULL,
  `ds_dishes_desc` varchar(8000) DEFAULT NULL,
  `fixed_time` datetime DEFAULT NULL,
  `fixed_version` int(11) DEFAULT NULL,
  `is_onsale` varchar(1) DEFAULT NULL,
  `is_ruling_price` varchar(1) DEFAULT NULL,
  `is_user_defined` varchar(1) DEFAULT NULL,
  `last_urge_time` datetime DEFAULT NULL,
  `notes` varchar(1024) DEFAULT NULL,
  `order_time` datetime DEFAULT NULL,
  `ori_cost` double(14,2) DEFAULT NULL,
  `pungent_level` int(11) DEFAULT NULL,
  `real_cost` double(14,2) DEFAULT NULL,
  `real_unit_price` double(14,2) DEFAULT NULL,
  `taste_id_array` varchar(1024) DEFAULT NULL,
  `taste_name_array` varchar(1024) DEFAULT NULL,
  `unit_id` varchar(255) DEFAULT NULL,
  `unit_name` varchar(255) DEFAULT NULL,
  `unit_num` float DEFAULT NULL,
  `unit_price` double(14,2) DEFAULT NULL,
  `urge_num` int(11) DEFAULT NULL,
  `bill_id` varchar(36) DEFAULT NULL,
  `ds_category_id` varchar(36) DEFAULT NULL,
  `order_emp_id` varchar(36) DEFAULT NULL,
  `rm_return` varchar(1) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`bds_id`),
  UNIQUE KEY `bds_id` (`bds_id`),
  KEY `FKB25D1945E883ECB9` (`create_by`),
  KEY `FKB25D194550AB25CC` (`update_by`),
  KEY `FKB25D19452DCB66E9` (`bill_id`),
  KEY `FKB25D1945FD890C07` (`ds_category_id`),
  KEY `FKB25D1945EAABA442` (`order_emp_id`),
  KEY `FKB25D1945427CA7EF` (`ds_category_id`),
  CONSTRAINT `FKB25D19452DCB66E9` FOREIGN KEY (`bill_id`) REFERENCES `cm_diner_bill` (`bill_id`),
  CONSTRAINT `FKB25D1945427CA7EF` FOREIGN KEY (`ds_category_id`) REFERENCES `cm_dishes_set_category` (`ds_category_id`),
  CONSTRAINT `FKB25D194550AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FKB25D1945E883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FKB25D1945EAABA442` FOREIGN KEY (`order_emp_id`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_diner_bill_dishes_set
-- ----------------------------

-- ----------------------------
-- Table structure for cm_diner_bill_log
-- ----------------------------
DROP TABLE IF EXISTS `cm_diner_bill_log`;
CREATE TABLE `cm_diner_bill_log` (
  `dbl_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `bill_id` varchar(36) DEFAULT NULL,
  `bill_no` varchar(32) DEFAULT NULL,
  `bill_op_type` varchar(32) DEFAULT NULL,
  `notes` varchar(1024) DEFAULT NULL,
  `relation_tab_no` varchar(64) DEFAULT NULL,
  `relation_tab_id` varchar(36) DEFAULT NULL,
  `tab_no` varchar(64) DEFAULT NULL,
  `tab_id` varchar(36) DEFAULT NULL,
  `dishes_ids` varchar(1024) DEFAULT NULL,
  `dishes_names` varchar(1024) DEFAULT NULL,
  `pay_time` datetime DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`dbl_id`),
  UNIQUE KEY `dbl_id` (`dbl_id`) USING BTREE,
  KEY `FKB34DEEAA52E3DE47` (`bill_id`) USING BTREE,
  KEY `FKB34DEEAAE883ECB9` (`create_by`) USING BTREE,
  KEY `FKB34DEEAA50AB25CC` (`update_by`) USING BTREE,
  KEY `FKB34DEEAAE85733E2` (`tab_id`),
  CONSTRAINT `cm_diner_bill_log_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_diner_bill_log_ibfk_2` FOREIGN KEY (`bill_id`) REFERENCES `cm_diner_bill` (`bill_id`),
  CONSTRAINT `cm_diner_bill_log_ibfk_3` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FKB34DEEAAE85733E2` FOREIGN KEY (`tab_id`) REFERENCES `cm_table` (`tab_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_diner_bill_log
-- ----------------------------
INSERT INTO `cm_diner_bill_log` VALUES ('ff80808147f6705e0147f77f6e8c0005', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'ff80808147f6705e0147f77f6e760002', '1408210001', '1', '开台操作，桌号:001，人数:2', null, null, '001', 'fed54d3a-2772-11e4-a88b-d4bed9c6f8ef', null, null, null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-21 15:37:09', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-21 15:37:09', '0', '0', '0');
INSERT INTO `cm_diner_bill_log` VALUES ('ff80808147f6705e0147f77f9f990008', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'ff80808147f6705e0147f77f6e760002', '1408210001', '12', '加菜操作，菜肴名称:鱼香肉丝，数量：1.0', null, null, '001', 'fed54d3a-2772-11e4-a88b-d4bed9c6f8ef', null, null, null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-21 15:37:22', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-21 15:37:22', '0', '0', '0');
INSERT INTO `cm_diner_bill_log` VALUES ('ff80808147f6705e0147f77fc1b7000a', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'ff80808147f6705e0147f77f6e760002', '1408210001', '2', '下单操作', null, null, '001', 'fed54d3a-2772-11e4-a88b-d4bed9c6f8ef', null, null, null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-21 15:37:30', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-21 15:37:30', '0', '0', '0');
INSERT INTO `cm_diner_bill_log` VALUES ('ff80808147f6705e0147fd4b6145000f', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'ff80808147f6705e0147fd4b6143000c', '1408220001', '1', '开台操作，桌号:002，人数:1', null, null, '002', 'ff80808147f6712c0147f77e44bb0000', null, null, null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-22 18:38:01', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-22 18:38:01', '0', '0', '0');
INSERT INTO `cm_diner_bill_log` VALUES ('ff80808147f6705e0147fd4b9d1b0012', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'ff80808147f6705e0147fd4b6143000c', '1408220001', '12', '加菜操作，菜肴名称:鱼香肉丝，数量：3.0', null, null, '002', 'ff80808147f6712c0147f77e44bb0000', null, null, null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-22 18:38:16', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-22 18:38:16', '0', '0', '0');
INSERT INTO `cm_diner_bill_log` VALUES ('ff80808147f6705e0147fd4c53ed0014', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'ff80808147f6705e0147fd4b6143000c', '1408220001', '10', '删除菜肴操作，菜肴名称:鱼香肉丝，数量：3.0', null, null, '002', 'ff80808147f6712c0147f77e44bb0000', null, null, null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-22 18:39:03', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-22 18:39:03', '0', '0', '0');
INSERT INTO `cm_diner_bill_log` VALUES ('ff8080814801a1f501481fbc23b80004', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'ff8080814801a1f501481fbc23ac0002', '1408290001', '1', '开台操作', null, null, '快餐', null, null, null, null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-29 11:08:16', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-29 11:08:16', '0', '0', '0');
INSERT INTO `cm_diner_bill_log` VALUES ('ff8080814801a1f501481fbc27ac0007', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'ff8080814801a1f501481fbc23ac0002', '1408290001', '12', '加菜操作，菜肴名称:鱼香肉丝，数量：1.0', null, null, '快餐', null, null, null, null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-29 11:08:17', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-29 11:08:17', '0', '0', '0');
INSERT INTO `cm_diner_bill_log` VALUES ('ff8080814801a1f501481fbc28d2000a', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'ff8080814801a1f501481fbc28d00008', '1408290002', '1', '开台操作', null, null, '快餐', null, null, null, null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-29 11:08:18', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-29 11:08:18', '0', '0', '0');
INSERT INTO `cm_diner_bill_log` VALUES ('ff8080814801a1f501481fbc292b000d', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'ff8080814801a1f501481fbc28d00008', '1408290002', '12', '加菜操作，菜肴名称:鱼香肉丝，数量：1.0', null, null, '快餐', null, null, null, null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-29 11:08:18', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-29 11:08:18', '0', '0', '0');
INSERT INTO `cm_diner_bill_log` VALUES ('ff8080814801a1f501486767fa8b0013', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'ff8080814801a1f501486767fa860010', '1409120001', '1', '开台操作，桌号:003，人数:1', null, null, '003', 'ff80808147f6712c0147f77e6a540002', null, null, null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-09-12 09:09:00', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-09-12 09:09:00', '0', '0', '0');
INSERT INTO `cm_diner_bill_log` VALUES ('ff80808148db7f50014a377075770002', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'ff80808147f6705e0147f77f6e760002', '1408210001', '12', '加菜操作，菜肴名称:鱼香肉丝，数量：1.0', null, null, '001', 'fed54d3a-2772-11e4-a88b-d4bed9c6f8ef', null, null, null, 'e5497097-2772-11e4-a88b-d4bed9c6f8ef', '2014-12-11 11:42:04', 'e5497097-2772-11e4-a88b-d4bed9c6f8ef', '2014-12-11 11:42:04', '0', '0', '0');
INSERT INTO `cm_diner_bill_log` VALUES ('ff80808148db7f50014a3770ad320004', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'ff80808147f6705e0147f77f6e760002', '1408210001', '2', '下单操作', null, null, '001', 'fed54d3a-2772-11e4-a88b-d4bed9c6f8ef', null, null, null, 'e5497097-2772-11e4-a88b-d4bed9c6f8ef', '2014-12-11 11:42:18', 'e5497097-2772-11e4-a88b-d4bed9c6f8ef', '2014-12-11 11:42:18', '0', '0', '0');

-- ----------------------------
-- Table structure for cm_diner_bill_payment
-- ----------------------------
DROP TABLE IF EXISTS `cm_diner_bill_payment`;
CREATE TABLE `cm_diner_bill_payment` (
  `dbp_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `cpt_id` varchar(36) DEFAULT NULL,
  `bill_id` varchar(36) DEFAULT NULL,
  `bill_no` varchar(32) DEFAULT NULL,
  `money` double(14,2) NOT NULL,
  `credit_payed_money` double(14,2) DEFAULT NULL,
  `pay_time` datetime DEFAULT NULL,
  `credit_status` varchar(32) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`dbp_id`),
  UNIQUE KEY `dbp_id` (`dbp_id`) USING BTREE,
  KEY `FK24E85A6C52E3DE47` (`bill_id`) USING BTREE,
  KEY `FK24E85A6CF82553AC` (`cpt_id`) USING BTREE,
  KEY `FK24E85A6CE883ECB9` (`create_by`) USING BTREE,
  KEY `FK24E85A6C50AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_diner_bill_payment_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_diner_bill_payment_ibfk_2` FOREIGN KEY (`bill_id`) REFERENCES `cm_diner_bill` (`bill_id`),
  CONSTRAINT `cm_diner_bill_payment_ibfk_3` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_diner_bill_payment_ibfk_4` FOREIGN KEY (`cpt_id`) REFERENCES `cm_payment_type` (`cpt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_diner_bill_payment
-- ----------------------------

-- ----------------------------
-- Table structure for cm_diner_bill_seq
-- ----------------------------
DROP TABLE IF EXISTS `cm_diner_bill_seq`;
CREATE TABLE `cm_diner_bill_seq` (
  `seq_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `bill_no` varchar(32) DEFAULT NULL,
  `bill_seq` int(11) DEFAULT NULL,
  `bill_seq_type` varchar(32) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`seq_id`),
  UNIQUE KEY `seq_id` (`seq_id`),
  KEY `FKB34E07C5E883ECB9` (`create_by`),
  KEY `FKB34E07C550AB25CC` (`update_by`),
  CONSTRAINT `FKB34E07C550AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FKB34E07C5E883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_diner_bill_seq
-- ----------------------------
INSERT INTO `cm_diner_bill_seq` VALUES ('ff80808147f6705e0147f77f6e520000', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1408220001', '1', '0', '2014-08-22', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-21 15:37:09', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-22 18:38:01', '1', '0', '0');
INSERT INTO `cm_diner_bill_seq` VALUES ('ff80808147f6705e0147f77f6e620001', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1408210001', '1', '0', '2014-08-21', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-21 15:37:09', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-21 15:37:09', '0', '0', '0');
INSERT INTO `cm_diner_bill_seq` VALUES ('ff80808147f6705e0147fd4b6139000b', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1408230000', '0', '0', '2014-08-23', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-22 18:38:01', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-22 18:38:01', '0', '0', '0');
INSERT INTO `cm_diner_bill_seq` VALUES ('ff8080814801a1f501481fbc237d0000', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1408300000', '0', '0', '2014-08-30', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-29 11:08:16', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-29 11:08:16', '0', '0', '0');
INSERT INTO `cm_diner_bill_seq` VALUES ('ff8080814801a1f501481fbc23880001', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1408290002', '2', '0', '2014-08-29', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-29 11:08:16', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-29 11:08:17', '1', '0', '0');
INSERT INTO `cm_diner_bill_seq` VALUES ('ff8080814801a1f501486767fa68000e', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1409130000', '0', '0', '2014-09-13', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-09-12 09:09:00', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-09-12 09:09:00', '0', '0', '0');
INSERT INTO `cm_diner_bill_seq` VALUES ('ff8080814801a1f501486767fa69000f', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1409120001', '1', '0', '2014-09-12', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-09-12 09:09:00', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-09-12 09:09:00', '0', '0', '0');
INSERT INTO `cm_diner_bill_seq` VALUES ('ffb62ff9-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0', '0', '0', '2014-08-19', 'e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', 'e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', '4', '0', null);
INSERT INTO `cm_diner_bill_seq` VALUES ('ffbde885-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0', '0', '1', '2014-08-19', 'e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', 'e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', '4', '0', null);

-- ----------------------------
-- Table structure for cm_diner_bill_zizhu
-- ----------------------------
DROP TABLE IF EXISTS `cm_diner_bill_zizhu`;
CREATE TABLE `cm_diner_bill_zizhu` (
  `bill_id` varchar(36) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_syn` varchar(1) DEFAULT NULL,
  `syn_version` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `bank_card_no` varchar(255) DEFAULT NULL,
  `bill_no` varchar(32) DEFAULT NULL,
  `bill_status` varchar(32) DEFAULT NULL,
  `bill_time` datetime DEFAULT NULL,
  `bill_type` varchar(32) DEFAULT NULL,
  `cbs_id` varchar(36) DEFAULT NULL,
  `is_valid` varchar(1) DEFAULT NULL,
  `mb_id` varchar(255) DEFAULT NULL,
  `mc_id` varchar(255) DEFAULT NULL,
  `ori_cost` double(14,2) DEFAULT NULL,
  `pay_desc` varchar(255) DEFAULT NULL,
  `pay_time` datetime DEFAULT NULL,
  `people_num` int(11) DEFAULT NULL,
  `real_cost` double(14,2) DEFAULT NULL,
  `rest_id` varchar(255) DEFAULT NULL,
  `save_cost` double(14,2) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `print_times` int(11) DEFAULT NULL,
  PRIMARY KEY (`bill_id`),
  UNIQUE KEY `bill_id` (`bill_id`),
  KEY `FK184FCF5EE883ECB9` (`create_by`),
  KEY `FK184FCF5E50AB25CC` (`update_by`),
  CONSTRAINT `FK184FCF5E50AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FK184FCF5EE883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_diner_bill_zizhu
-- ----------------------------

-- ----------------------------
-- Table structure for cm_diner_bill_zizhu_dishe
-- ----------------------------
DROP TABLE IF EXISTS `cm_diner_bill_zizhu_dishe`;
CREATE TABLE `cm_diner_bill_zizhu_dishe` (
  `bd_id` varchar(36) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_syn` varchar(1) DEFAULT NULL,
  `syn_version` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `bill_no` varchar(32) DEFAULT NULL,
  `unit_num` float DEFAULT NULL,
  `zi_zhu_youhui_name` varchar(32) DEFAULT NULL,
  `zi_zhu_youhui_total_price` double(14,2) DEFAULT NULL,
  `zi_zhu_youhui_unit_price` double(14,2) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `bill_id` varchar(36) DEFAULT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `order_time` datetime DEFAULT NULL,
  PRIMARY KEY (`bd_id`),
  UNIQUE KEY `bd_id` (`bd_id`),
  KEY `FK9F5159EAE883ECB9` (`create_by`),
  KEY `FK9F5159EA50AB25CC` (`update_by`),
  KEY `FK9F5159EACA4B1CB5` (`bill_id`),
  CONSTRAINT `FK9F5159EA50AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FK9F5159EACA4B1CB5` FOREIGN KEY (`bill_id`) REFERENCES `cm_diner_bill_zizhu` (`bill_id`),
  CONSTRAINT `FK9F5159EAE883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_diner_bill_zizhu_dishe
-- ----------------------------

-- ----------------------------
-- Table structure for cm_dishes
-- ----------------------------
DROP TABLE IF EXISTS `cm_dishes`;
CREATE TABLE `cm_dishes` (
  `dishes_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `category_id` varchar(36) DEFAULT NULL,
  `dashes_style_id_array` varchar(1024) DEFAULT NULL,
  `dishes_code` varchar(64) DEFAULT NULL,
  `dishes_name` varchar(128) DEFAULT NULL,
  `foreign_name` varchar(128) DEFAULT NULL,
  `is_add_min_charge` varchar(1) DEFAULT NULL,
  `is_onsale` varchar(1) DEFAULT NULL,
  `is_recommend` varchar(1) DEFAULT NULL,
  `is_ruling_price` varchar(1) DEFAULT '0',
  `is_specialty` varchar(1) DEFAULT NULL,
  `is_stop_sell` varchar(1) DEFAULT NULL,
  `is_takeout` varchar(1) DEFAULT NULL,
  `is_user_defined` varchar(1) DEFAULT NULL,
  `material_id_array` varchar(1024) DEFAULT NULL,
  `member_price` double(14,2) DEFAULT NULL,
  `service_commission` double(14,2) DEFAULT NULL,
  `sale_commission` double(14,2) DEFAULT NULL,
  `notes` varchar(2048) DEFAULT NULL,
  `price` double(14,2) NOT NULL,
  `pungent_level` int(11) DEFAULT NULL,
  `show_seq` int(11) DEFAULT NULL,
  `taste_id_array` varchar(1024) DEFAULT NULL,
  `total_score` int(11) DEFAULT NULL,
  `unit_id` varchar(36) DEFAULT NULL,
  `show_seq_recommend` int(11) DEFAULT NULL,
  `show_seq_takeout` int(11) DEFAULT NULL,
  `sale_num` float(11,2) DEFAULT '0.00',
  `estimate` float(11,2) DEFAULT NULL,
  `praise` int(11) DEFAULT '0',
  `tread` int(11) DEFAULT '0',
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`dishes_id`),
  UNIQUE KEY `dishes_id` (`dishes_id`) USING BTREE,
  KEY `FKE369213DA60E5159` (`unit_id`) USING BTREE,
  KEY `FKE369213D995CBF99` (`category_id`) USING BTREE,
  KEY `FKE369213DEDE70C8F` (`unit_id`) USING BTREE,
  KEY `FKE369213DE883ECB9` (`create_by`),
  KEY `FKE369213D50AB25CC` (`update_by`),
  CONSTRAINT `cm_dishes_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `cm_dishes_category` (`category_id`),
  CONSTRAINT `cm_dishes_ibfk_2` FOREIGN KEY (`unit_id`) REFERENCES `cm_dishes_unit` (`unit_id`),
  CONSTRAINT `FKE369213D50AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FKE369213DE883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_dishes
-- ----------------------------
INSERT INTO `cm_dishes` VALUES ('ff48c1ff-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'e549713f-2772-11e4-a88b-d4bed9c6f8ef', null, 'yxrs', '鱼香肉丝', 'yxrs', '0', '0', null, '0', null, '0', '1', '0', 'e549718b-2772-11e4-a88b-d4bed9c6f8ef', '12.00', null, null, '', '12.00', '5', '99999', '', '0', 'e549717b-2772-11e4-a88b-d4bed9c6f8ef', '99999', '99999', '0.00', null, '0', '0', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', '0', '0', null);

-- ----------------------------
-- Table structure for cm_dishes_appraise
-- ----------------------------
DROP TABLE IF EXISTS `cm_dishes_appraise`;
CREATE TABLE `cm_dishes_appraise` (
  `cda_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `comment` varchar(2048) DEFAULT NULL,
  `dishes_id` varchar(36) DEFAULT NULL,
  `publish_terminal` varchar(32) DEFAULT NULL,
  `score` int(11) NOT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`cda_id`),
  UNIQUE KEY `cda_id` (`cda_id`) USING BTREE,
  KEY `FKDBCFFF2D12052E66` (`dishes_id`) USING BTREE,
  KEY `FKDBCFFF2DE883ECB9` (`create_by`) USING BTREE,
  KEY `FKDBCFFF2D50AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_dishes_appraise_ibfk_1` FOREIGN KEY (`dishes_id`) REFERENCES `cm_dishes` (`dishes_id`),
  CONSTRAINT `cm_dishes_appraise_ibfk_2` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_dishes_appraise_ibfk_3` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_dishes_appraise
-- ----------------------------

-- ----------------------------
-- Table structure for cm_dishes_appraise_reply
-- ----------------------------
DROP TABLE IF EXISTS `cm_dishes_appraise_reply`;
CREATE TABLE `cm_dishes_appraise_reply` (
  `cdar_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `cda_id` varchar(36) DEFAULT NULL,
  `publish_terminal` varchar(32) DEFAULT NULL,
  `reply_content` varchar(36) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`cdar_id`),
  UNIQUE KEY `cdar_id` (`cdar_id`) USING BTREE,
  KEY `FKCE9F9F582FEEAEA4` (`cda_id`) USING BTREE,
  KEY `FKCE9F9F58E883ECB9` (`create_by`) USING BTREE,
  KEY `FKCE9F9F5850AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_dishes_appraise_reply_ibfk_1` FOREIGN KEY (`cda_id`) REFERENCES `cm_dishes_appraise` (`cda_id`),
  CONSTRAINT `cm_dishes_appraise_reply_ibfk_2` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_dishes_appraise_reply_ibfk_3` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_dishes_appraise_reply
-- ----------------------------

-- ----------------------------
-- Table structure for cm_dishes_avoidfood
-- ----------------------------
DROP TABLE IF EXISTS `cm_dishes_avoidfood`;
CREATE TABLE `cm_dishes_avoidfood` (
  `cda_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `code` varchar(64) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `show_seq` int(11) DEFAULT NULL,
  `sysdata_type` varchar(32) DEFAULT NULL,
  `enable_status` varchar(32) DEFAULT NULL,
  `foreign_name` varchar(128) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`cda_id`),
  UNIQUE KEY `cda_id` (`cda_id`) USING BTREE,
  KEY `FKC95DF6D1E883ECB9` (`create_by`) USING BTREE,
  KEY `FKC95DF6D150AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_dishes_avoidfood_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_dishes_avoidfood_ibfk_2` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_dishes_avoidfood
-- ----------------------------
INSERT INTO `cm_dishes_avoidfood` VALUES ('fe8f226c-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'jila', '忌辣', '1', '0', '1', 'jila', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', '0', '0', null);
INSERT INTO `cm_dishes_avoidfood` VALUES ('fe98fd10-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'jijiang', '忌姜', '1', '0', '1', 'jijiang', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', '0', '0', null);
INSERT INTO `cm_dishes_avoidfood` VALUES ('fea2d0f3-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'jisuan', '忌蒜', '1', '0', '1', 'jisuan', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', '0', '0', null);
INSERT INTO `cm_dishes_avoidfood` VALUES ('feaa7af9-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'jixiangcai', '忌香菜', '1', '0', '1', 'jixiangcai', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', '0', '0', null);
INSERT INTO `cm_dishes_avoidfood` VALUES ('feb03ea3-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'jihuajiao', '忌花椒', '1', '0', '1', 'jihuajiao', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', '0', '0', null);
INSERT INTO `cm_dishes_avoidfood` VALUES ('feba1f02-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'jiconghua', '忌葱花', '1', '0', '1', 'jiconghua', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', '0', '0', null);
INSERT INTO `cm_dishes_avoidfood` VALUES ('febfe036-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'huimin', '回民忌口', '1', '0', '1', 'huimin', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', '0', '0', null);
INSERT INTO `cm_dishes_avoidfood` VALUES ('fec5a3cd-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'jiyou', '忌油', '1', '0', '1', 'jiyou', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', '0', '0', null);
INSERT INTO `cm_dishes_avoidfood` VALUES ('fecb9b6f-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'dabao', '打包', '1', '0', '1', 'dabao', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', '0', '0', null);

-- ----------------------------
-- Table structure for cm_dishes_category
-- ----------------------------
DROP TABLE IF EXISTS `cm_dishes_category`;
CREATE TABLE `cm_dishes_category` (
  `category_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `category_code` varchar(32) DEFAULT NULL,
  `category_name` varchar(128) DEFAULT NULL,
  `parent_category_id` varchar(36) DEFAULT NULL,
  `show_seq` int(11) DEFAULT NULL,
  `sysdata_type` varchar(32) DEFAULT NULL,
  `enable_status` varchar(32) DEFAULT NULL,
  `foreign_name` varchar(128) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_id` (`category_id`) USING BTREE,
  KEY `FK9833E1C0E883ECB9` (`create_by`) USING BTREE,
  KEY `FK9833E1C050AB25CC` (`update_by`),
  CONSTRAINT `cm_dishes_category_ibfk_1` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FK9833E1C050AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_dishes_category
-- ----------------------------
INSERT INTO `cm_dishes_category` VALUES ('e549713f-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'recai', '热菜', null, '1', '0', '1', 'recai', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', '0', '0', null);
INSERT INTO `cm_dishes_category` VALUES ('fbc6d6ad-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'liangcai', '凉菜', null, '1', '0', '1', 'liangcai', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', '0', '0', null);
INSERT INTO `cm_dishes_category` VALUES ('fbd3b0b3-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'haixian', '海鲜', null, '1', '0', '1', 'haixian', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', '0', '0', null);
INSERT INTO `cm_dishes_category` VALUES ('fbda7c88-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'jiushui', '酒水', null, '1', '0', '1', 'jiushui', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', '0', '0', null);
INSERT INTO `cm_dishes_category` VALUES ('fbdf9c4d-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'zhushi', '主食', null, '1', '0', '1', 'zhushi', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', '0', '0', null);

-- ----------------------------
-- Table structure for cm_dishes_material
-- ----------------------------
DROP TABLE IF EXISTS `cm_dishes_material`;
CREATE TABLE `cm_dishes_material` (
  `material_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `code` varchar(64) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `show_seq` int(11) DEFAULT NULL,
  `sysdata_type` varchar(32) DEFAULT NULL,
  `enable_status` varchar(32) DEFAULT NULL,
  `foreign_name` varchar(128) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`material_id`),
  UNIQUE KEY `material_id` (`material_id`) USING BTREE,
  KEY `FKA70489E9E883ECB9` (`create_by`) USING BTREE,
  KEY `FKA70489E950AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_dishes_material_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_dishes_material_ibfk_2` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_dishes_material
-- ----------------------------
INSERT INTO `cm_dishes_material` VALUES ('e549718b-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'meat', '肉类', '11', '0', '1', 'meat', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', '0', '0', null);
INSERT INTO `cm_dishes_material` VALUES ('fcfb4446-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'jungu', '菌菇', '1', '0', '1', 'jungu', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', '0', '0', null);
INSERT INTO `cm_dishes_material` VALUES ('fd09767f-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'shucai', '蔬菜', '2', '0', '1', 'shucai', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', '0', '0', null);
INSERT INTO `cm_dishes_material` VALUES ('fd0dca61-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'yewei', '野味', '3', '0', '1', 'yewei', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', '0', '0', null);
INSERT INTO `cm_dishes_material` VALUES ('fd23a565-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'yanchibao', '燕翅鲍', '4', '0', '1', 'yanchibao', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', '0', '0', null);
INSERT INTO `cm_dishes_material` VALUES ('fd33d59a-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'doulei', '豆类', '5', '0', '1', 'doulei', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', '0', '0', null);
INSERT INTO `cm_dishes_material` VALUES ('fd3ea14a-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'rulei', '乳类', '6', '0', '1', 'rulei', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', '0', '0', null);
INSERT INTO `cm_dishes_material` VALUES ('fd4a0c06-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'mimian', '米面', '7', '0', '1', 'mimian', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', '0', '0', null);
INSERT INTO `cm_dishes_material` VALUES ('fd51bf35-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'gulei', '谷类', '8', '0', '1', 'gulei', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', '0', '0', null);
INSERT INTO `cm_dishes_material` VALUES ('fd6260f2-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'guaguo', '瓜果', '9', '0', '1', 'guaguo', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', '0', '0', null);
INSERT INTO `cm_dishes_material` VALUES ('fd664944-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'qita', '其他', '10', '0', '1', 'qita', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', '0', '0', null);
INSERT INTO `cm_dishes_material` VALUES ('fd70afc0-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'hehaixian', '河海鲜', '12', '0', '1', 'hehaixian', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', '0', '0', null);
INSERT INTO `cm_dishes_material` VALUES ('fd748ddf-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'qindan', '禽蛋', '13', '0', '1', 'qindan', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', '0', '0', null);

-- ----------------------------
-- Table structure for cm_dishes_pic
-- ----------------------------
DROP TABLE IF EXISTS `cm_dishes_pic`;
CREATE TABLE `cm_dishes_pic` (
  `pic_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `dishes_id` varchar(36) DEFAULT NULL,
  `pic_type` varchar(32) DEFAULT NULL,
  `pic_url` varchar(512) DEFAULT NULL,
  `show_seq` int(11) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`pic_id`),
  UNIQUE KEY `pic_id` (`pic_id`) USING BTREE,
  KEY `FKDB791B88E883ECB9` (`create_by`) USING BTREE,
  KEY `FKDB791B8850AB25CC` (`update_by`) USING BTREE,
  KEY `FKDB791B881FFBB488` (`dishes_id`),
  CONSTRAINT `cm_dishes_pic_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_dishes_pic_ibfk_2` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FKDB791B881FFBB488` FOREIGN KEY (`dishes_id`) REFERENCES `cm_dishes` (`dishes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_dishes_pic
-- ----------------------------

-- ----------------------------
-- Table structure for cm_dishes_raw
-- ----------------------------
DROP TABLE IF EXISTS `cm_dishes_raw`;
CREATE TABLE `cm_dishes_raw` (
  `dr_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `rm_id` varchar(36) DEFAULT NULL,
  `dishes_id` varchar(36) DEFAULT NULL,
  `use_count` float DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`dr_id`),
  KEY `cm_dishes_raw_ibfk_2` (`dishes_id`),
  KEY `cm_dishes_raw_ibfk_1` (`rm_id`),
  KEY `FKDB792226E883ECB9` (`create_by`),
  KEY `FKDB79222650AB25CC` (`update_by`),
  CONSTRAINT `cm_dishes_raw_ibfk_1` FOREIGN KEY (`rm_id`) REFERENCES `cm_raw_material` (`rm_id`),
  CONSTRAINT `cm_dishes_raw_ibfk_2` FOREIGN KEY (`dishes_id`) REFERENCES `cm_dishes` (`dishes_id`),
  CONSTRAINT `FKDB79222650AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FKDB792226E883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_dishes_raw
-- ----------------------------

-- ----------------------------
-- Table structure for cm_dishes_set
-- ----------------------------
DROP TABLE IF EXISTS `cm_dishes_set`;
CREATE TABLE `cm_dishes_set` (
  `ds_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `ds_category_id` varchar(36) DEFAULT NULL,
  `ds_name` varchar(128) DEFAULT NULL,
  `foreign_name` varchar(128) DEFAULT NULL,
  `unit_id` varchar(36) DEFAULT NULL,
  `ds_code` varchar(64) DEFAULT NULL,
  `price` double(14,2) DEFAULT NULL,
  `member_price` double(14,2) DEFAULT NULL,
  `is_onsale` char(1) DEFAULT NULL,
  `is_add_min_charge` char(1) DEFAULT NULL,
  `is_stop_sell` char(1) DEFAULT NULL,
  `is_takeout` char(1) DEFAULT NULL,
  `sale_num` float(11,2) DEFAULT '0.00',
  `show_seq` int(11) DEFAULT NULL,
  `show_seq_takeout` int(11) DEFAULT NULL,
  `show_seq_recommend` int(11) DEFAULT NULL,
  `estimate` float(11,2) DEFAULT NULL,
  `service_commission` double(14,2) DEFAULT NULL,
  `sale_commission` double(14,2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `is_specialty` varchar(1) DEFAULT '0',
  `is_recommend` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`ds_id`),
  KEY `FKDB792660E883ECB9` (`create_by`),
  KEY `FKDB79266050AB25CC` (`update_by`),
  KEY `FKDB792660427CA7EF` (`ds_category_id`),
  KEY `FKDB792660C5405077` (`unit_id`),
  CONSTRAINT `FKDB792660427CA7EF` FOREIGN KEY (`ds_category_id`) REFERENCES `cm_dishes_set_category` (`ds_category_id`),
  CONSTRAINT `FKDB79266050AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FKDB792660C5405077` FOREIGN KEY (`unit_id`) REFERENCES `cm_dishes_unit` (`unit_id`),
  CONSTRAINT `FKDB792660E883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='套餐的基本信息';

-- ----------------------------
-- Records of cm_dishes_set
-- ----------------------------

-- ----------------------------
-- Table structure for cm_dishes_set_category
-- ----------------------------
DROP TABLE IF EXISTS `cm_dishes_set_category`;
CREATE TABLE `cm_dishes_set_category` (
  `ds_category_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `category_code` varchar(32) DEFAULT NULL,
  `category_name` varchar(128) DEFAULT NULL,
  `foreign_name` varchar(128) DEFAULT NULL,
  `show_seq` int(11) DEFAULT NULL,
  `sysdata_type` varchar(32) DEFAULT NULL COMMENT '对应 SysDataType',
  `enable_status` varchar(32) DEFAULT NULL COMMENT '停用，可用 。EnableStatus',
  `create_time` datetime DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`ds_category_id`),
  KEY `FK8763F3FDE883ECB9` (`create_by`),
  KEY `FK8763F3FD50AB25CC` (`update_by`),
  CONSTRAINT `FK8763F3FD50AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FK8763F3FDE883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_dishes_set_category
-- ----------------------------

-- ----------------------------
-- Table structure for cm_dishes_set_dishes
-- ----------------------------
DROP TABLE IF EXISTS `cm_dishes_set_dishes`;
CREATE TABLE `cm_dishes_set_dishes` (
  `ds_dishes_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `ds_id` varchar(36) DEFAULT NULL,
  `dishes_id` varchar(36) NOT NULL,
  `dishes_name` varchar(128) NOT NULL,
  `unit_name` varchar(128) NOT NULL,
  `unit_num` float DEFAULT NULL,
  `price` double(14,2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`ds_dishes_id`),
  KEY `FKAD930687E883ECB9` (`create_by`),
  KEY `FKAD93068750AB25CC` (`update_by`),
  KEY `FKAD9306871FFBB488` (`dishes_id`),
  KEY `FKAD930687A9880A50` (`ds_id`),
  CONSTRAINT `FKAD9306871FFBB488` FOREIGN KEY (`dishes_id`) REFERENCES `cm_dishes` (`dishes_id`),
  CONSTRAINT `FKAD93068750AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FKAD930687A9880A50` FOREIGN KEY (`ds_id`) REFERENCES `cm_dishes_set` (`ds_id`),
  CONSTRAINT `FKAD930687E883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_dishes_set_dishes
-- ----------------------------

-- ----------------------------
-- Table structure for cm_dishes_set_dishes_replace
-- ----------------------------
DROP TABLE IF EXISTS `cm_dishes_set_dishes_replace`;
CREATE TABLE `cm_dishes_set_dishes_replace` (
  `replace_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `ds_id` varchar(36) DEFAULT NULL,
  `ds_dishes_id` varchar(36) NOT NULL,
  `replace_dishes_id` varchar(36) NOT NULL,
  `dishes_name` varchar(128) NOT NULL,
  `unit_name` varchar(128) NOT NULL,
  `unit_num` float DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`replace_id`),
  KEY `FK30FE8FCE883ECB9` (`create_by`),
  KEY `FK30FE8FC50AB25CC` (`update_by`),
  KEY `FK30FE8FC629090BD` (`replace_dishes_id`),
  KEY `FK30FE8FCBEF0F4EF` (`ds_dishes_id`),
  CONSTRAINT `FK30FE8FC50AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FK30FE8FC629090BD` FOREIGN KEY (`replace_dishes_id`) REFERENCES `cm_dishes` (`dishes_id`),
  CONSTRAINT `FK30FE8FCBEF0F4EF` FOREIGN KEY (`ds_dishes_id`) REFERENCES `cm_dishes_set_dishes` (`ds_dishes_id`),
  CONSTRAINT `FK30FE8FCE883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_dishes_set_dishes_replace
-- ----------------------------

-- ----------------------------
-- Table structure for cm_dishes_set_pic
-- ----------------------------
DROP TABLE IF EXISTS `cm_dishes_set_pic`;
CREATE TABLE `cm_dishes_set_pic` (
  `pic_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `ds_id` varchar(36) DEFAULT NULL,
  `pic_url` varchar(512) DEFAULT NULL,
  `show_seq` int(11) DEFAULT NULL,
  `pic_type` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`pic_id`),
  KEY `FK93EBD72BE883ECB9` (`create_by`),
  KEY `FK93EBD72B50AB25CC` (`update_by`),
  KEY `FK93EBD72BA9880A50` (`ds_id`),
  CONSTRAINT `FK93EBD72B50AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FK93EBD72BA9880A50` FOREIGN KEY (`ds_id`) REFERENCES `cm_dishes_set` (`ds_id`),
  CONSTRAINT `FK93EBD72BE883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_dishes_set_pic
-- ----------------------------

-- ----------------------------
-- Table structure for cm_dishes_style
-- ----------------------------
DROP TABLE IF EXISTS `cm_dishes_style`;
CREATE TABLE `cm_dishes_style` (
  `dashes_style_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `code` varchar(64) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `show_seq` int(11) DEFAULT NULL,
  `sysdata_type` varchar(32) DEFAULT NULL,
  `enable_status` varchar(32) DEFAULT NULL,
  `foreign_name` varchar(128) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`dashes_style_id`),
  UNIQUE KEY `dashes_style_id` (`dashes_style_id`) USING BTREE,
  KEY `FKE1D0002FE883ECB9` (`create_by`) USING BTREE,
  KEY `FKE1D0002F50AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_dishes_style_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_dishes_style_ibfk_2` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_dishes_style
-- ----------------------------
INSERT INTO `cm_dishes_style` VALUES ('fd7ae50e-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'xiangcai', '湘菜', '1', '0', '1', 'xiangcai', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', '0', '0', null);
INSERT INTO `cm_dishes_style` VALUES ('fd80066a-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'chuancai', '川菜', '2', '0', '1', 'chuancai', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', '0', '0', null);
INSERT INTO `cm_dishes_style` VALUES ('fd83f236-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'yuecai', '粤菜', '3', '0', '1', 'yuecai', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', '0', '0', null);
INSERT INTO `cm_dishes_style` VALUES ('fd8f102d-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'sucai', '苏菜', '4', '0', '1', 'sucai', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', '0', '0', null);
INSERT INTO `cm_dishes_style` VALUES ('fd9882ce-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'lucai', '鲁菜', '5', '0', '1', 'lucai', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', '0', '0', null);
INSERT INTO `cm_dishes_style` VALUES ('fd9e5ea4-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'mincai', '闽菜', '6', '0', '1', 'mincai', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', '0', '0', null);
INSERT INTO `cm_dishes_style` VALUES ('fda215fe-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'zhecai', '浙菜', '7', '0', '1', 'zhecai', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', '0', '0', null);
INSERT INTO `cm_dishes_style` VALUES ('fda7c085-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'huicai', '徽菜', '8', '0', '1', 'huicai', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', '0', '0', null);
INSERT INTO `cm_dishes_style` VALUES ('fdaef9dc-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'xibeicai', '西北菜', '9', '0', '1', 'xibeicai', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', '0', '0', null);
INSERT INTO `cm_dishes_style` VALUES ('fdb2e44e-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'qingzhen', '清真', '10', '0', '1', 'qingzhen', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', '0', '0', null);
INSERT INTO `cm_dishes_style` VALUES ('fdc1d2c3-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'rishi', '日式', '11', '0', '1', 'rishi', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', '0', '0', null);
INSERT INTO `cm_dishes_style` VALUES ('fdc82455-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'hanshi', '韩式', '12', '0', '1', 'hanshi', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', '0', '0', null);
INSERT INTO `cm_dishes_style` VALUES ('fdcbda96-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'xishi', '西式', '13', '0', '1', 'xishi', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', '0', '0', null);
INSERT INTO `cm_dishes_style` VALUES ('fdcfc971-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'fashi', '法式', '14', '0', '1', 'fashi', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', '0', '0', null);
INSERT INTO `cm_dishes_style` VALUES ('fdd3ab4a-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'dongnanya', '东南亚', '15', '0', '1', 'dongnanya', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', '0', '0', null);
INSERT INTO `cm_dishes_style` VALUES ('fdda207c-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'beijingcai', '北京菜', '16', '0', '1', 'beijingcai', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', '0', '0', null);
INSERT INTO `cm_dishes_style` VALUES ('fde086aa-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'shanghaicai', '上海菜', '17', '0', '1', 'shanghaicai', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', '0', '0', null);
INSERT INTO `cm_dishes_style` VALUES ('fde4798f-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'qita', '其他', '1', '0', '18', 'qita', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', '0', '0', null);

-- ----------------------------
-- Table structure for cm_dishes_taste
-- ----------------------------
DROP TABLE IF EXISTS `cm_dishes_taste`;
CREATE TABLE `cm_dishes_taste` (
  `taste_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `code` varchar(64) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `show_seq` int(11) DEFAULT NULL,
  `sysdata_type` varchar(32) DEFAULT NULL,
  `enable_status` varchar(32) DEFAULT NULL,
  `foreign_name` varchar(128) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`taste_id`),
  UNIQUE KEY `taste_id` (`taste_id`) USING BTREE,
  KEY `FKE1D55F15E883ECB9` (`create_by`) USING BTREE,
  KEY `FKE1D55F1550AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_dishes_taste_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_dishes_taste_ibfk_2` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_dishes_taste
-- ----------------------------
INSERT INTO `cm_dishes_taste` VALUES ('fdec348a-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'qingdan', '清淡', '1', '0', '1', 'qingdan', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', '0', '0', null);
INSERT INTO `cm_dishes_taste` VALUES ('fdf01a47-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'gali', '咖喱', '2', '0', '1', 'gali', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', '0', '0', null);
INSERT INTO `cm_dishes_taste` VALUES ('fdf403ac-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'jiemo', '芥末', '3', '0', '1', 'jiemo', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', '0', '0', null);
INSERT INTO `cm_dishes_taste` VALUES ('fdf7facc-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'suan', '酸', '4', '0', '1', 'suan', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', '0', '0', null);
INSERT INTO `cm_dishes_taste` VALUES ('fe0037e9-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'tian', '甜', '5', '0', '1', 'tian', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', '0', '0', null);
INSERT INTO `cm_dishes_taste` VALUES ('fe045026-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'ku', '苦', '6', '0', '1', 'ku', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', '0', '0', null);
INSERT INTO `cm_dishes_taste` VALUES ('fe09eac2-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'la', '辣', '7', '0', '1', 'la', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:36', '0', '0', null);
INSERT INTO `cm_dishes_taste` VALUES ('fe1909fd-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'xian', '咸', '8', '0', '1', 'xian', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', '0', '0', null);
INSERT INTO `cm_dishes_taste` VALUES ('fe20fc04-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'xian', '鲜', '9', '0', '1', 'xian', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', '0', '0', null);
INSERT INTO `cm_dishes_taste` VALUES ('fe296fc1-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'qita', '其他', '10', '0', '1', 'qita', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', '0', '0', null);

-- ----------------------------
-- Table structure for cm_dishes_unit
-- ----------------------------
DROP TABLE IF EXISTS `cm_dishes_unit`;
CREATE TABLE `cm_dishes_unit` (
  `unit_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `code` varchar(64) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `show_seq` int(11) DEFAULT NULL,
  `sysdata_type` varchar(32) DEFAULT NULL,
  `enable_status` varchar(32) DEFAULT NULL,
  `foreign_name` varchar(128) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`unit_id`),
  UNIQUE KEY `unit_id` (`unit_id`) USING BTREE,
  KEY `FK93ACAF46E883ECB9` (`create_by`),
  KEY `FK93ACAF4650AB25CC` (`update_by`),
  CONSTRAINT `FK93ACAF4650AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FK93ACAF46E883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_dishes_unit
-- ----------------------------
INSERT INTO `cm_dishes_unit` VALUES ('e549717b-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'fen', '份', '12', '0', '1', 'fen', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', '0', '0', null);
INSERT INTO `cm_dishes_unit` VALUES ('fe346c4f-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'banfen', '半份', '1', '0', '1', 'banfen', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', '0', '0', null);
INSERT INTO `cm_dishes_unit` VALUES ('fe3badbe-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'jin', '斤', '2', '0', '1', 'jin', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', '0', '0', null);
INSERT INTO `cm_dishes_unit` VALUES ('fe41a2b8-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'liang', '两', '3', '0', '1', 'liang', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', '0', '0', null);
INSERT INTO `cm_dishes_unit` VALUES ('fe477051-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'zhi', '只', '4', '0', '1', 'zhi', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', '0', '0', null);
INSERT INTO `cm_dishes_unit` VALUES ('fe4de26f-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'ge', '个', '5', '0', '1', 'ge', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', '0', '0', null);
INSERT INTO `cm_dishes_unit` VALUES ('fe5774fd-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'wan', '碗', '6', '0', '1', 'wan', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', '0', '0', null);
INSERT INTO `cm_dishes_unit` VALUES ('fe5d62b0-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'da', '打', '7', '0', '1', 'da', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', '0', '0', null);
INSERT INTO `cm_dishes_unit` VALUES ('fe63272f-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'qianke', '千克', '8', '0', '1', 'qianke', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', '0', '0', null);
INSERT INTO `cm_dishes_unit` VALUES ('fe691db4-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'ke', '克', '9', '0', '1', 'ke', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', '0', '0', null);
INSERT INTO `cm_dishes_unit` VALUES ('fe70e150-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'sheng', '升', '10', '0', '1', 'sheng', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', '0', '0', null);
INSERT INTO `cm_dishes_unit` VALUES ('fe769bab-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'haosheng', '毫升', '11', '0', '1', 'haosheng', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', '0', '0', null);
INSERT INTO `cm_dishes_unit` VALUES ('fe83979e-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'ping', '瓶', '13', '0', '1', 'ping', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', '0', '0', null);
INSERT INTO `cm_dishes_unit` VALUES ('fe895b5b-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'ting', '听', '14', '0', '1', 'ting', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:37', '0', '0', null);

-- ----------------------------
-- Table structure for cm_employee
-- ----------------------------
DROP TABLE IF EXISTS `cm_employee`;
CREATE TABLE `cm_employee` (
  `emp_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `emp_num` varchar(32) DEFAULT NULL,
  `login_username` varchar(128) DEFAULT NULL,
  `login_password` varchar(128) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `id_card` varchar(18) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL COMMENT '对应 Gender',
  `job_pic` varchar(256) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `residence_adr` varchar(128) DEFAULT NULL,
  `adr_province` varchar(32) DEFAULT NULL,
  `adr_city` varchar(32) DEFAULT NULL,
  `res__province` varchar(32) DEFAULT NULL,
  `res_city` varchar(32) DEFAULT NULL,
  `job_status` varchar(32) DEFAULT NULL COMMENT '对应 JobStatus',
  `emer_contact` varchar(128) DEFAULT NULL,
  `emer_con_tel` varchar(11) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `plain_password` varchar(255) DEFAULT NULL,
  `sysdata_type` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `FK_Reference_16` (`rest_id`) USING BTREE,
  KEY `FKE43E62E3E883ECB9` (`create_by`) USING BTREE,
  KEY `FKE43E62E350AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_employee_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_employee_ibfk_2` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_employee_ibfk_3` FOREIGN KEY (`rest_id`) REFERENCES `cm_restaurant` (`rest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_employee
-- ----------------------------
INSERT INTO `cm_employee` VALUES ('e5497084-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0001', 'admin', '0a71701bff3132757b46bcef2516e64c365ad7d1', '管理员', null, null, null, null, null, null, null, null, null, null, '1', null, null, 'e47e48e9125a1fe2', 'admin', '0', '2014-08-19 15:31:56', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:31:56', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '0', '0', null);
INSERT INTO `cm_employee` VALUES ('e5497097-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '01', '01', 'a96787b895b4840d6cbec669523b9272efcbaf83', '01', '', '', '0', null, '', '', null, null, null, null, '1', null, null, '2e49e74be40ba9b7', '01', '1', '2014-08-19 15:31:56', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:31:56', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '0', '0', null);
INSERT INTO `cm_employee` VALUES ('e54970aa-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 's0000', 'super', '9608aa5b3d0da7b6056adcb98406c74da98d6b1a', '超级管理员', null, null, null, null, null, null, null, null, null, null, '1', null, null, '896a68550d6993c1', 'mixi8canyin', '2', '2014-08-19 15:31:56', 'e54970aa-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:31:56', 'e54970aa-2772-11e4-a88b-d4bed9c6f8ef', '0', '0', null);
INSERT INTO `cm_employee` VALUES ('e54970ba-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 's0001', 'vister', '08a87fd0ef4860111df7d9a63f5bed3beaac5b14', '游客', null, null, null, null, null, null, null, null, null, null, '1', null, null, '4093776cdb2d5e11', 'vister', '2', '2014-08-19 15:31:56', 'e54970aa-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:31:56', 'e54970aa-2772-11e4-a88b-d4bed9c6f8ef', '0', '0', null);
INSERT INTO `cm_employee` VALUES ('e54970cd-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 's0002', 'test', 'b1cc0a10ea37cd304c7525c4fdcd301cfb64770e', '测试账户', null, null, null, null, null, null, null, null, null, null, '1', null, null, 'a3dceab09c2d28af', 'test', '2', '2014-08-19 15:31:57', 'e54970aa-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:31:57', 'e54970aa-2772-11e4-a88b-d4bed9c6f8ef', '0', '0', null);
INSERT INTO `cm_employee` VALUES ('e54970dc-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 's0003', 'selforder', '9608aa5b3d0da7b6056adcb98406c74da98d6b1a', '自助点餐账户', null, null, null, null, null, null, null, null, null, null, '1', null, null, '896a68550d6993c1', 'mixi8canyin', '2', '2014-08-19 15:31:57', 'e54970aa-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:31:57', 'e54970aa-2772-11e4-a88b-d4bed9c6f8ef', '0', '0', null);

-- ----------------------------
-- Table structure for cm_employee_work
-- ----------------------------
DROP TABLE IF EXISTS `cm_employee_work`;
CREATE TABLE `cm_employee_work` (
  `work_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `bill_no` varchar(32) DEFAULT NULL,
  `emp_id` varchar(36) DEFAULT NULL,
  `emp_op_content` varchar(256) DEFAULT NULL,
  `emp_op_type` varchar(32) DEFAULT NULL,
  `tab_no` varchar(32) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`work_id`),
  UNIQUE KEY `work_id` (`work_id`) USING BTREE,
  KEY `FKD63D72EDAA66E493` (`emp_id`) USING BTREE,
  KEY `FKD63D72EDE883ECB9` (`create_by`) USING BTREE,
  KEY `FKD63D72ED50AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_employee_work_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_employee_work_ibfk_2` FOREIGN KEY (`emp_id`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_employee_work_ibfk_3` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_employee_work
-- ----------------------------

-- ----------------------------
-- Table structure for cm_employe_shift
-- ----------------------------
DROP TABLE IF EXISTS `cm_employe_shift`;
CREATE TABLE `cm_employe_shift` (
  `ces_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `current_cash` double(14,2) DEFAULT NULL,
  `current_handoff_cash` double(14,2) DEFAULT NULL,
  `current_handon_cash` double(14,2) DEFAULT NULL,
  `ex_handoff_cash` double(14,2) DEFAULT NULL,
  `last_balance_cash` double(14,2) DEFAULT NULL,
  `is_print` varchar(1) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`ces_id`),
  UNIQUE KEY `ces_id` (`ces_id`) USING BTREE,
  KEY `FKAF7BCA59E883ECB9` (`create_by`) USING BTREE,
  KEY `FKAF7BCA5950AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_employe_shift_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_employe_shift_ibfk_2` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_employe_shift
-- ----------------------------

-- ----------------------------
-- Table structure for cm_employe_shift_income
-- ----------------------------
DROP TABLE IF EXISTS `cm_employe_shift_income`;
CREATE TABLE `cm_employe_shift_income` (
  `cesi_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `cpt_id` varchar(36) DEFAULT NULL,
  `cpt_money` double(14,2) DEFAULT NULL,
  `ces_id` varchar(36) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`cesi_id`),
  UNIQUE KEY `cesi_id` (`cesi_id`) USING BTREE,
  KEY `FK25AF2E4FDEF533A9` (`ces_id`) USING BTREE,
  KEY `FK2AD37B63E883ECB9` (`create_by`),
  KEY `FK2AD37B6350AB25CC` (`update_by`),
  CONSTRAINT `cm_employe_shift_income_ibfk_1` FOREIGN KEY (`ces_id`) REFERENCES `cm_employe_shift` (`ces_id`),
  CONSTRAINT `FK2AD37B6350AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FK2AD37B63E883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_employe_shift_income
-- ----------------------------

-- ----------------------------
-- Table structure for cm_index_favorite
-- ----------------------------
DROP TABLE IF EXISTS `cm_index_favorite`;
CREATE TABLE `cm_index_favorite` (
  `if_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `cam_id` varchar(36) DEFAULT NULL,
  `emp_id` varchar(36) DEFAULT NULL,
  `model_name` varchar(128) DEFAULT NULL,
  `show_seq` int(11) DEFAULT NULL,
  `module_size` varchar(32) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`if_id`),
  UNIQUE KEY `if_id` (`if_id`) USING BTREE,
  KEY `FK3B905EDECE75D5C7` (`cam_id`) USING BTREE,
  KEY `FK3B905EDEAA66E493` (`emp_id`) USING BTREE,
  KEY `FK3B905EDEE883ECB9` (`create_by`) USING BTREE,
  KEY `FK3B905EDE50AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_index_favorite_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_index_favorite_ibfk_2` FOREIGN KEY (`emp_id`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_index_favorite_ibfk_3` FOREIGN KEY (`cam_id`) REFERENCES `cm_authority_module` (`cam_id`),
  CONSTRAINT `cm_index_favorite_ibfk_4` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_index_favorite
-- ----------------------------
INSERT INTO `cm_index_favorite` VALUES ('fbf34b32-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '216b440b-273f-11e3-8ff7-080058000005', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '会员日营收统计', '0', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fbfcfe6a-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '7663ed0d-273f-11e3-8ff7-080058000005', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '会员月营收统计', '0', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fc009c64-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7fcc9d013f7fd560ea000f', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '退菜明细', '0', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fc048516-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '9cca0f68-152d-11e3-9e59-080058000005', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '菜肴销售排行', '0', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fc08610e-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'a2da008c-152d-11e3-9e59-080058000005', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '菜肴分类销售排行', '0', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fc0c34ae-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '8a8947565ad94cffab43e36991bb7586', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '餐厅信息', '0', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fc13f0a8-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '60f4cc218695454f95914213d5ef5ff9', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '菜肴分类', '1', 'magnet-big', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fc17df11-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'c4ce71d1533d4cfebe40941a3c80eb31', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '菜肴信息', '2', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fc1e2695-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'dbd0b01ed12f4f93a87ba62482ad5c65', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '餐台信息', '3', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fc22057e-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '5be712e5bb5f4074a6dc85c12a6a6647', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '餐台分区', '4', 'magnet-big', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fc25eeb1-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'bfc7b41b34564f4dbde7e39f67c3d0d7', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '打印机设置', '5', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fc299853-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'cd8ba68446a64e4ea6a1b4d3d7fa2267', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '职级权限', '6', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fc32a079-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '68ae216ccbe044e9bc141247f46c2377', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '员工信息', '7', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fc366611-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '02801369617c49aca263dbf68fb02068', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '特价时段', '8', 'magnet-big', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fc3f580c-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '6e04b81e80de4f05960074e07b5a9959', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '特价菜肴', '9', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:33', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fc4336cf-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '8f0bea611fff48428b8b2989e941e0a0', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '会员信息', '10', 'magnet-big', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fc4713e0-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '88104c97-abf7-11e2-824b-001b783bdd64', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '会员卡管理', '11', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fc4af028-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '8ec914e1805e44c08e53f876df04b318', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '会员特价', '12', 'magnet-big', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fc4ec2bd-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '50c6b1609b7c4d96b4558de62250a733', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '折扣方案', '14', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fc548afe-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1a5c2da6ccab494ab58c8668b6356590', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '特殊操作内容', '15', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fc5f2e07-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '7a9458e2-abf5-11e2-824b-001b783bdd64', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '菜系', '16', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fc7097a4-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '4d85477b05bb4b888a50c47b2213ec55', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '结账抹零', '17', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fc7a01f7-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'c484b936-abf5-11e2-824b-001b783bdd64', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '食材', '18', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fc809f57-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '53f0e04314da4b9ea148509f501a6e3c', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '账单管理', '19', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fc8d2f85-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1eeba2887af645ffb3ac681c233309a0', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '付款方式设置', '20', 'magnet-big', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fc98bbcb-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'e4e934d941c44e858036c38e249b59f8', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '交班记录', '21', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fca2d398-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'cc36661d9e674fd8a07b78849d08b130', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '会员卡类型', '22', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fca6af89-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'a607c8eaa6d742a48e147bcd651356e7', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '口味', '23', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fcaa65ba-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'f88c5ecc80134da183e0bf59a7c5b82d', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '单位', '24', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fcb0cf34-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'e2b3fb54-abf5-11e2-824b-001b783bdd64', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '忌口', '25', 'magnet-big', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fcbb05f7-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '5186abaf-abf8-11e2-824b-001b783bdd64', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '退菜统计', '26', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fcc098c4-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'a4c5e03fa8c44e6f8acb6761409f9d72', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '快餐外卖', '27', 'magnet-big', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fcc54ac6-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'c107a10a-abf7-11e2-824b-001b783bdd64', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '充值记录', '28', 'magnet-big', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fcc91ca9-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'f713805c-abf7-11e2-824b-001b783bdd64', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '消费记录', '29', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fccf27fb-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'f90fa40e-abf8-11e2-824b-001b783bdd64', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '日志信息', '30', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fcd36c70-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '7a627203-abf9-11e2-824b-001b783bdd64', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '日营收统计', '31', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fcd73e31-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '92f4a31d-abf9-11e2-824b-001b783bdd64', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '月营收统计', '32', 'magnet-big', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fcdaf2ee-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '26e69d0d-abf8-11e2-824b-001b783bdd64', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '退卡记录', '33', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:34', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fcded1f2-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '2f36d94b325a4d57832923a77f3a0105', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '挂账收款', '34', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fce58bbc-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '164d2318-abf7-11e2-824b-001b783bdd64', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '前厅流水', '35', 'magnet-big', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fce968f7-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'c09d2654-abf8-11e2-824b-001b783bdd64', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '数据管理', '36', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', '0', '0', null);
INSERT INTO `cm_index_favorite` VALUES ('fcf21f77-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '19cb5177-abf9-11e2-824b-001b783bdd64', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '工作站', '37', 'magnet-small', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:35', '0', '0', null);

-- ----------------------------
-- Table structure for cm_membership_card
-- ----------------------------
DROP TABLE IF EXISTS `cm_membership_card`;
CREATE TABLE `cm_membership_card` (
  `mc_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `balance` double(14,2) NOT NULL,
  `card_no` varchar(32) DEFAULT NULL,
  `card_password` varchar(32) DEFAULT NULL,
  `card_status` varchar(32) DEFAULT NULL,
  `cash_pledge` double(14,2) DEFAULT NULL,
  `mb_id` varchar(36) DEFAULT NULL,
  `mcclass_id` varchar(36) DEFAULT NULL,
  `member_integral` double(14,2) DEFAULT NULL,
  `card_issue_time` datetime DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`mc_id`),
  UNIQUE KEY `mc_id` (`mc_id`) USING BTREE,
  KEY `FKBCB47004B058992E` (`mcclass_id`) USING BTREE,
  KEY `FKBCB4700441F3EF9D` (`mb_id`) USING BTREE,
  KEY `FKBCB47004E883ECB9` (`create_by`) USING BTREE,
  KEY `FKBCB4700450AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_membership_card_ibfk_1` FOREIGN KEY (`mb_id`) REFERENCES `cm_rest_member_info` (`mb_id`),
  CONSTRAINT `cm_membership_card_ibfk_2` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_membership_card_ibfk_3` FOREIGN KEY (`mcclass_id`) REFERENCES `cm_membership_card_class` (`mcclass_id`),
  CONSTRAINT `cm_membership_card_ibfk_4` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_membership_card
-- ----------------------------
INSERT INTO `cm_membership_card` VALUES ('00db65ce-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000001', '', '4', '0.00', null, 'e54971f1-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('00e51217-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000002', '', '4', '0.00', null, 'e54971f1-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('00eb0839-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000003', '', '4', '0.00', null, 'e54971f1-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('00f0cb94-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000004', '', '4', '0.00', null, 'e54971f1-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('00f68d5b-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000005', '', '4', '0.00', null, 'e54971f1-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('01006bb2-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000006', '', '4', '0.00', null, 'e54971f1-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('01045553-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000007', '', '4', '0.00', null, 'e54971f1-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('010a1bf1-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000008', '', '4', '0.00', null, 'e54971f1-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('0111ec52-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000009', '', '4', '0.00', null, 'e54971f1-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('011b9875-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000010', '', '4', '0.00', null, 'e54971f1-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('01215c3a-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000011', '', '4', '0.00', null, 'e5497201-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('01275362-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000012', '', '4', '0.00', null, 'e5497201-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('012e5b34-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000013', '', '4', '0.00', null, 'e5497201-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('0138652f-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000014', '', '4', '0.00', null, 'e5497201-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('013feec0-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000015', '', '4', '0.00', null, 'e5497201-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('0147bd58-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000016', '', '4', '0.00', null, 'e5497201-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('01518856-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000017', '', '4', '0.00', null, 'e5497201-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('015790e5-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000018', '', '4', '0.00', null, 'e5497201-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('015d500c-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000019', '', '4', '0.00', null, 'e5497201-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('01672f28-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000020', '', '4', '0.00', null, 'e5497201-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('016cf6e4-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000021', '', '4', '0.00', null, 'e549720c-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('0172bc29-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000022', '', '4', '0.00', null, 'e549720c-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('0178b71b-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000023', '', '4', '0.00', null, 'e549720c-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('01807f49-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000024', '', '4', '0.00', null, 'e549720c-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('0184321c-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000025', '', '4', '0.00', null, 'e549720c-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('018820c2-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000026', '', '4', '0.00', null, 'e549720c-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('018e1d71-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000027', '', '4', '0.00', null, 'e549720c-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('01961aea-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000028', '', '4', '0.00', null, 'e549720c-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('019c5999-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000029', '', '4', '0.00', null, 'e549720c-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:42', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('01a00a22-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000030', '', '4', '0.00', null, 'e549720c-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('01a410a1-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000031', '', '4', '0.00', null, 'e549721b-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('01abca09-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000032', '', '4', '0.00', null, 'e549721b-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('01b1c207-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000033', '', '4', '0.00', null, 'e549721b-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('01b5b16b-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000034', '', '4', '0.00', null, 'e549721b-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('01bd4814-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000035', '', '4', '0.00', null, 'e549721b-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('01c33e3e-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000036', '', '4', '0.00', null, 'e549721b-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('01cceb50-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000037', '', '4', '0.00', null, 'e549721b-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('01d0d1d3-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000038', '', '4', '0.00', null, 'e549721b-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('01d4c947-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000039', '', '4', '0.00', null, 'e549721b-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('01dc8cc1-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000040', '', '4', '0.00', null, 'e549721b-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('01e07362-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000041', '', '4', '0.00', null, 'e549722a-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('01e638dc-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000042', '', '4', '0.00', null, 'e549722a-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('01ebfc8e-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000043', '', '4', '0.00', null, 'e549722a-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('01f00462-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000044', '', '4', '0.00', null, 'e549722a-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('01f7b82e-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000045', '', '4', '0.00', null, 'e549722a-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('01fb9c8d-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000046', '', '4', '0.00', null, 'e549722a-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('0201f248-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000047', '', '4', '0.00', null, 'e549722a-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('020b3e05-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000048', '', '4', '0.00', null, 'e549722a-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('02132052-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000049', '', '4', '0.00', null, 'e549722a-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('021cf5e6-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000050', '', '4', '0.00', null, 'e549722a-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('0220daa4-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000051', '', '4', '0.00', null, 'e5497236-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('02288fd1-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000052', '', '4', '0.00', null, 'e5497236-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('022e4224-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000053', '', '4', '0.00', null, 'e5497236-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('0233f3e2-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000054', '', '4', '0.00', null, 'e5497236-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('0237ce5a-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000055', '', '4', '0.00', null, 'e5497236-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:43', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('023fa16e-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000056', '', '4', '0.00', null, 'e5497236-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:44', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:44', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('0253e354-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000057', '', '4', '0.00', null, 'e5497236-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:44', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:44', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('025b7a42-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000058', '', '4', '0.00', null, 'e5497236-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:44', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:44', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('02645cfd-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000059', '', '4', '0.00', null, 'e5497236-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:44', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:44', '0', '0', null);
INSERT INTO `cm_membership_card` VALUES ('026d44d8-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '100000060', '', '4', '0.00', null, 'e5497236-2772-11e4-a88b-d4bed9c6f8ef', '0.00', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:44', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:44', '0', '0', null);

-- ----------------------------
-- Table structure for cm_membership_card_class
-- ----------------------------
DROP TABLE IF EXISTS `cm_membership_card_class`;
CREATE TABLE `cm_membership_card_class` (
  `mcclass_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `cash_pledge` double(14,2) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `ccd_id` varchar(36) DEFAULT NULL,
  `is_consume_integral` varchar(1) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`mcclass_id`),
  UNIQUE KEY `mcclass_id` (`mcclass_id`) USING BTREE,
  KEY `FK9AFB697D5A8624EF` (`ccd_id`) USING BTREE,
  KEY `FK9AFB697DE883ECB9` (`create_by`) USING BTREE,
  KEY `FK9AFB697D50AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_membership_card_class_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_membership_card_class_ibfk_2` FOREIGN KEY (`ccd_id`) REFERENCES `cm_cash_discount` (`ccd_id`),
  CONSTRAINT `cm_membership_card_class_ibfk_3` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_membership_card_class
-- ----------------------------
INSERT INTO `cm_membership_card_class` VALUES ('e54971f1-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '积分会员卡', 'e549719a-2772-11e4-a88b-d4bed9c6f8ef', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', '0', '0', null);
INSERT INTO `cm_membership_card_class` VALUES ('e5497201-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '金牌会员卡', 'e54971b8-2772-11e4-a88b-d4bed9c6f8ef', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', '0', '0', null);
INSERT INTO `cm_membership_card_class` VALUES ('e549720c-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '铂金会员卡', 'e54971c8-2772-11e4-a88b-d4bed9c6f8ef', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', '0', '0', null);
INSERT INTO `cm_membership_card_class` VALUES ('e549721b-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '贵宾卡', 'e54971d7-2772-11e4-a88b-d4bed9c6f8ef', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', '0', '0', null);
INSERT INTO `cm_membership_card_class` VALUES ('e549722a-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '会员卡', 'e54971a9-2772-11e4-a88b-d4bed9c6f8ef', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', '1', '0', null);
INSERT INTO `cm_membership_card_class` VALUES ('e5497236-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '餐饮会员卡', 'e54971e6-2772-11e4-a88b-d4bed9c6f8ef', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:41', '0', '0', null);

-- ----------------------------
-- Table structure for cm_membership_card_operation
-- ----------------------------
DROP TABLE IF EXISTS `cm_membership_card_operation`;
CREATE TABLE `cm_membership_card_operation` (
  `cmco_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `add_integral` double(14,2) DEFAULT NULL,
  `bill_id` varchar(36) DEFAULT NULL,
  `bill_no` varchar(32) DEFAULT NULL,
  `card_operation_type` varchar(32) DEFAULT NULL,
  `mb_id` varchar(36) DEFAULT NULL,
  `op_cash` double(14,2) DEFAULT NULL,
  `total_integral` double(14,2) DEFAULT NULL,
  `mc_id` varchar(36) DEFAULT NULL,
  `paidin_cash` double(14,2) DEFAULT NULL,
  `recharge_cash` double(14,2) DEFAULT NULL,
  `consume_cash` double(14,2) DEFAULT NULL,
  `draw_bill_amount` double(14,2) DEFAULT NULL,
  `is_draw_bill` varchar(255) DEFAULT NULL,
  `cpt_id` varchar(36) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `preferential_cash` double(14,2) DEFAULT NULL,
  `balance` double(14,2) DEFAULT NULL,
  `cash_pledge` double(14,2) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmco_id`),
  UNIQUE KEY `cmco_id` (`cmco_id`) USING BTREE,
  KEY `FKD7D70AEC541DFAA6` (`mc_id`) USING BTREE,
  KEY `FKD7D70AEC8F32F44E` (`cpt_id`) USING BTREE,
  KEY `FKD7D70AECE883ECB9` (`create_by`) USING BTREE,
  KEY `FKD7D70AEC50AB25CC` (`update_by`) USING BTREE,
  KEY `FKD7D70AEC2DCB66E9` (`bill_id`),
  KEY `FKD7D70AEC310C4CFB` (`mb_id`),
  CONSTRAINT `cm_membership_card_operation_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_membership_card_operation_ibfk_2` FOREIGN KEY (`mc_id`) REFERENCES `cm_membership_card` (`mc_id`),
  CONSTRAINT `cm_membership_card_operation_ibfk_3` FOREIGN KEY (`cpt_id`) REFERENCES `cm_payment_type` (`cpt_id`),
  CONSTRAINT `cm_membership_card_operation_ibfk_4` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FKD7D70AEC2DCB66E9` FOREIGN KEY (`bill_id`) REFERENCES `cm_diner_bill` (`bill_id`),
  CONSTRAINT `FKD7D70AEC310C4CFB` FOREIGN KEY (`mb_id`) REFERENCES `cm_rest_member_info` (`mb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_membership_card_operation
-- ----------------------------

-- ----------------------------
-- Table structure for cm_member_dishes_favorite
-- ----------------------------
DROP TABLE IF EXISTS `cm_member_dishes_favorite`;
CREATE TABLE `cm_member_dishes_favorite` (
  `cmdf_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `dishes_id` varchar(36) DEFAULT NULL,
  `mb_id` varchar(36) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmdf_id`),
  UNIQUE KEY `cmdf_id` (`cmdf_id`) USING BTREE,
  KEY `FK7E72880312052E66` (`dishes_id`) USING BTREE,
  KEY `FK7E72880341F3EF9D` (`mb_id`) USING BTREE,
  KEY `FK7E728803E883ECB9` (`create_by`) USING BTREE,
  KEY `FK7E72880350AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_member_dishes_favorite_ibfk_1` FOREIGN KEY (`dishes_id`) REFERENCES `cm_dishes` (`dishes_id`),
  CONSTRAINT `cm_member_dishes_favorite_ibfk_2` FOREIGN KEY (`mb_id`) REFERENCES `cm_rest_member_info` (`mb_id`),
  CONSTRAINT `cm_member_dishes_favorite_ibfk_3` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_member_dishes_favorite_ibfk_4` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_member_dishes_favorite
-- ----------------------------

-- ----------------------------
-- Table structure for cm_member_info
-- ----------------------------
DROP TABLE IF EXISTS `cm_member_info`;
CREATE TABLE `cm_member_info` (
  `mb_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(128) DEFAULT NULL,
  `brithday_day` datetime DEFAULT NULL,
  `edu` varchar(32) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `login_password` varchar(128) DEFAULT NULL,
  `login_username` varchar(128) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `notes` varchar(1204) DEFAULT NULL,
  `origin_rest_id` varchar(36) DEFAULT NULL,
  `reg_origin` varchar(32) DEFAULT NULL,
  `salesman_id` varchar(36) DEFAULT NULL,
  `work` varchar(32) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`mb_id`),
  UNIQUE KEY `mb_id` (`mb_id`),
  KEY `FK13F53EDEE883ECB9` (`create_by`),
  KEY `FK13F53EDE50AB25CC` (`update_by`),
  CONSTRAINT `FK13F53EDE50AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FK13F53EDEE883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_member_info
-- ----------------------------

-- ----------------------------
-- Table structure for cm_message
-- ----------------------------
DROP TABLE IF EXISTS `cm_message`;
CREATE TABLE `cm_message` (
  `msg_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `bill_id` varchar(36) NOT NULL,
  `content` varchar(1024) DEFAULT NULL,
  `msg_status` varchar(32) DEFAULT NULL,
  `msg_type` varchar(32) DEFAULT NULL,
  `order_id` varchar(36) NOT NULL,
  `tab_id` varchar(36) DEFAULT NULL,
  `tab_no` varchar(32) DEFAULT NULL,
  `deal_by` varchar(36) DEFAULT NULL,
  `deal_time` datetime DEFAULT NULL,
  `read_by` varchar(36) DEFAULT NULL,
  `read_time` datetime DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`msg_id`),
  UNIQUE KEY `msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_message
-- ----------------------------

-- ----------------------------
-- Table structure for cm_mobile_terminal
-- ----------------------------
DROP TABLE IF EXISTS `cm_mobile_terminal`;
CREATE TABLE `cm_mobile_terminal` (
  `mt_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `ip` varchar(128) DEFAULT NULL,
  `last_time` datetime DEFAULT NULL,
  `mac` varchar(128) DEFAULT NULL,
  `mt_name` varchar(32) DEFAULT NULL,
  `notes` varchar(2048) DEFAULT NULL,
  `status` varchar(32) DEFAULT NULL,
  `terminal_div` varchar(32) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`mt_id`),
  UNIQUE KEY `mt_id` (`mt_id`) USING BTREE,
  KEY `FKA9ED17A4E883ECB9` (`create_by`) USING BTREE,
  KEY `FKA9ED17A450AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_mobile_terminal_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_mobile_terminal_ibfk_2` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_mobile_terminal
-- ----------------------------

-- ----------------------------
-- Table structure for cm_mobile_terminal_setting
-- ----------------------------
DROP TABLE IF EXISTS `cm_mobile_terminal_setting`;
CREATE TABLE `cm_mobile_terminal_setting` (
  `mts_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `visit_type` varchar(32) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`mts_id`),
  UNIQUE KEY `mts_id` (`mts_id`),
  KEY `FK91ABE8B5E883ECB9` (`create_by`),
  KEY `FK91ABE8B550AB25CC` (`update_by`),
  CONSTRAINT `FK91ABE8B550AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FK91ABE8B5E883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_mobile_terminal_setting
-- ----------------------------

-- ----------------------------
-- Table structure for cm_order_bill_dishes
-- ----------------------------
DROP TABLE IF EXISTS `cm_order_bill_dishes`;
CREATE TABLE `cm_order_bill_dishes` (
  `bd_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `bill_id` varchar(36) DEFAULT NULL,
  `discount` int(11) NOT NULL,
  `discount_type` varchar(32) DEFAULT NULL,
  `dishes_id` varchar(36) DEFAULT NULL,
  `dishes_name` varchar(128) DEFAULT NULL,
  `order_time` datetime DEFAULT NULL,
  `ori_cost` double(14,2) DEFAULT NULL,
  `real_cost` double(14,2) DEFAULT NULL,
  `status` varchar(32) DEFAULT NULL,
  `taste_id` varchar(36) DEFAULT NULL,
  `taste_name` varchar(64) DEFAULT NULL,
  `unit_id` varchar(36) DEFAULT NULL,
  `unit_name` varchar(128) DEFAULT NULL,
  `unit_num` float(11,2) DEFAULT NULL,
  `unit_price` double(14,2) DEFAULT NULL,
  `real_unit_price` double(14,2) DEFAULT NULL,
  `taste_id_array` varchar(1024) DEFAULT NULL,
  `avoidfood_id_array` varchar(1024) DEFAULT NULL,
  `pungent_level` int(11) DEFAULT NULL,
  `taste_name_array` varchar(1024) DEFAULT NULL,
  `avoidfood_name_array` varchar(1024) DEFAULT NULL,
  `notes` varchar(1024) DEFAULT NULL,
  `order_id` varchar(36) DEFAULT NULL,
  `cda_id_array` varchar(1024) DEFAULT NULL,
  `is_user_defined` varchar(1) DEFAULT NULL,
  `is_ruling_price` varchar(1) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`bd_id`),
  UNIQUE KEY `bd_id` (`bd_id`) USING BTREE,
  KEY `FKAEF77EFA12052E66` (`dishes_id`) USING BTREE,
  KEY `FKAEF77EFA47C0E69F` (`bill_id`) USING BTREE,
  KEY `FKAEF77EFAC0E53073` (`order_id`) USING BTREE,
  KEY `FKAEF77EFAE883ECB9` (`create_by`) USING BTREE,
  KEY `FKAEF77EFA50AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_order_bill_dishes_ibfk_1` FOREIGN KEY (`dishes_id`) REFERENCES `cm_dishes` (`dishes_id`),
  CONSTRAINT `cm_order_bill_dishes_ibfk_3` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_order_bill_dishes_ibfk_4` FOREIGN KEY (`order_id`) REFERENCES `cm_table_order` (`order_id`),
  CONSTRAINT `cm_order_bill_dishes_ibfk_5` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_order_bill_dishes
-- ----------------------------

-- ----------------------------
-- Table structure for cm_order_bill_dishes_set
-- ----------------------------
DROP TABLE IF EXISTS `cm_order_bill_dishes_set`;
CREATE TABLE `cm_order_bill_dishes_set` (
  `bds_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `bill_id` varchar(36) DEFAULT NULL,
  `ds_id` varchar(36) DEFAULT NULL,
  `order_id` varchar(36) DEFAULT NULL,
  `ds_name` varchar(128) DEFAULT NULL,
  `unit_id` varchar(36) DEFAULT NULL,
  `unit_name` varchar(128) DEFAULT NULL,
  `unit_price` double(14,2) DEFAULT NULL,
  `real_unit_price` double(14,2) DEFAULT NULL,
  `unit_num` float DEFAULT NULL,
  `discount_type` varchar(32) DEFAULT NULL COMMENT '对应 DiscountType',
  `discount` int(11) DEFAULT NULL,
  `ori_cost` double(14,2) DEFAULT NULL,
  `real_cost` double(14,2) DEFAULT NULL,
  `taste_id` varchar(36) DEFAULT NULL,
  `taste_name` varchar(64) DEFAULT NULL,
  `order_time` datetime DEFAULT NULL,
  `is_ruling_price` char(1) DEFAULT NULL,
  `is_user_defined` char(1) DEFAULT NULL,
  `taste_id_array` varchar(1024) DEFAULT NULL,
  `avoidfood_id_array` varchar(1024) DEFAULT NULL,
  `taste_name_array` varchar(1024) DEFAULT NULL,
  `avoidfood_name_array` varchar(1024) DEFAULT NULL,
  `pungent_level` int(11) DEFAULT NULL COMMENT '1-10的数字，对应五颗星',
  `notes` varchar(1024) DEFAULT NULL,
  `ds_dishes_desc` varchar(1024) DEFAULT NULL,
  `cda_id_array` varchar(1024) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  KEY `FK58F85D9DE883ECB9` (`create_by`),
  KEY `FK58F85D9D50AB25CC` (`update_by`),
  KEY `FK58F85D9DA9880A50` (`ds_id`),
  KEY `FK58F85D9DC0E53073` (`order_id`),
  CONSTRAINT `FK58F85D9D50AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FK58F85D9DA9880A50` FOREIGN KEY (`ds_id`) REFERENCES `cm_dishes_set` (`ds_id`),
  CONSTRAINT `FK58F85D9DC0E53073` FOREIGN KEY (`order_id`) REFERENCES `cm_table_order` (`order_id`),
  CONSTRAINT `FK58F85D9DE883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_order_bill_dishes_set
-- ----------------------------

-- ----------------------------
-- Table structure for cm_payment_type
-- ----------------------------
DROP TABLE IF EXISTS `cm_payment_type`;
CREATE TABLE `cm_payment_type` (
  `cpt_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `is_included_sales` varchar(1) DEFAULT NULL,
  `notes` varchar(1024) DEFAULT NULL,
  `payment_name` varchar(32) DEFAULT NULL,
  `sysdata_type` varchar(32) DEFAULT NULL,
  `enable_status` varchar(32) DEFAULT NULL,
  `show_seq` varchar(32) DEFAULT NULL,
  `payment_type` varchar(32) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`cpt_id`),
  UNIQUE KEY `cpt_id` (`cpt_id`) USING BTREE,
  KEY `FK5049C388E883ECB9` (`create_by`) USING BTREE,
  KEY `FK5049C38850AB25CC` (`update_by`) USING BTREE,
  KEY `rest_id` (`rest_id`) USING BTREE,
  CONSTRAINT `cm_payment_type_ibfk_1` FOREIGN KEY (`rest_id`) REFERENCES `cm_restaurant` (`rest_id`),
  CONSTRAINT `cm_payment_type_ibfk_2` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_payment_type_ibfk_3` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_payment_type
-- ----------------------------
INSERT INTO `cm_payment_type` VALUES ('ff525108-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1', '餐厅挂账', '餐厅挂账', '0', '1', '6', '6', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', '0', '0', null);
INSERT INTO `cm_payment_type` VALUES ('ff57fe70-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1', '支票', '支票', '0', '1', '8', '8', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', '0', '0', null);
INSERT INTO `cm_payment_type` VALUES ('ff5bdd51-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1', '优惠券', '优惠券', '0', '1', '7', '7', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', '0', '0', null);
INSERT INTO `cm_payment_type` VALUES ('ff61be7c-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1', '现金', '现金', '0', '1', '1', '1', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', '0', '0', null);
INSERT INTO `cm_payment_type` VALUES ('ff694a9e-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1', '刷卡', '刷卡', '0', '1', '2', '2', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', '0', '0', null);
INSERT INTO `cm_payment_type` VALUES ('ff730c8a-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1', '会员卡', '会员卡', '0', '1', '3', '3', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', '0', '0', null);
INSERT INTO `cm_payment_type` VALUES ('ff78c060-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1', '酒店挂账', '酒店挂账', '0', '1', '4', '4', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', '0', '0', null);
INSERT INTO `cm_payment_type` VALUES ('ff7e71a4-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1', '团队挂账', '团队挂账', '0', '1', '5', '5', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', '0', '0', null);
INSERT INTO `cm_payment_type` VALUES ('ff880148-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1', '其他', '其他', '0', '1', '99', '0', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', '0', '0', null);

-- ----------------------------
-- Table structure for cm_printer
-- ----------------------------
DROP TABLE IF EXISTS `cm_printer`;
CREATE TABLE `cm_printer` (
  `printer_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `sys_name` varchar(256) DEFAULT NULL,
  `mode` varchar(32) DEFAULT NULL,
  `dishe_category` varchar(1024) DEFAULT NULL,
  `is_all_area` varchar(1) DEFAULT NULL,
  `is_all_dishe` varchar(1) DEFAULT NULL,
  `table_area` varchar(1024) DEFAULT NULL,
  `init_seq` varchar(32) DEFAULT NULL,
  `model` varchar(32) DEFAULT NULL,
  `interface` varchar(32) DEFAULT NULL,
  `backup_printer` varchar(32) DEFAULT NULL,
  `ip` varchar(128) DEFAULT NULL,
  `mac` varchar(128) DEFAULT NULL,
  `notes` varchar(2048) DEFAULT NULL,
  `status` varchar(32) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `footnote` varchar(2048) DEFAULT NULL,
  `foot_image_url` varchar(512) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `print_times` int(11) DEFAULT NULL,
  `template` varchar(32) DEFAULT NULL,
  `is_one_bill_one_times` varchar(1) DEFAULT NULL,
  `is_use_drawer` varchar(1) DEFAULT NULL,
  `margin_left` float DEFAULT NULL,
  `margin_right` float DEFAULT NULL,
  `margin_up` float DEFAULT NULL,
  `margin_down` float DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT '0',
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`printer_id`),
  UNIQUE KEY `printer_id` (`printer_id`) USING BTREE,
  KEY `FK13577145E883ECB9` (`create_by`) USING BTREE,
  KEY `FK1357714550AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_printer_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_printer_ibfk_2` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_printer
-- ----------------------------

-- ----------------------------
-- Table structure for cm_printer_log
-- ----------------------------
DROP TABLE IF EXISTS `cm_printer_log`;
CREATE TABLE `cm_printer_log` (
  `log_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `printer_id` varchar(36) DEFAULT NULL,
  `notes` varchar(2048) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  UNIQUE KEY `log_id` (`log_id`) USING BTREE,
  KEY `FKCC30194AFB8B8F27` (`printer_id`) USING BTREE,
  KEY `FKCC30194AE883ECB9` (`create_by`) USING BTREE,
  KEY `FKCC30194A50AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_printer_log_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_printer_log_ibfk_2` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_printer_log_ibfk_3` FOREIGN KEY (`printer_id`) REFERENCES `cm_printer` (`printer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_printer_log
-- ----------------------------

-- ----------------------------
-- Table structure for cm_printer_setting
-- ----------------------------
DROP TABLE IF EXISTS `cm_printer_setting`;
CREATE TABLE `cm_printer_setting` (
  `ps_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `is_print_financial` varchar(1) DEFAULT NULL,
  `is_print_dishes_type` varchar(1) DEFAULT NULL,
  `is_financial_print_dishes_type` varchar(1) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`ps_id`),
  UNIQUE KEY `ps_id` (`ps_id`) USING BTREE,
  KEY `FKFAB71156E883ECB9` (`create_by`) USING BTREE,
  KEY `FKFAB7115650AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_printer_setting_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_printer_setting_ibfk_2` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_printer_setting
-- ----------------------------

-- ----------------------------
-- Table structure for cm_printer_task
-- ----------------------------
DROP TABLE IF EXISTS `cm_printer_task`;
CREATE TABLE `cm_printer_task` (
  `task_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `printer_id` varchar(36) DEFAULT NULL,
  `print_type` varchar(32) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `task_time` datetime DEFAULT NULL,
  `bill_id` varchar(36) DEFAULT NULL,
  `bill_no` varchar(32) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`task_id`),
  UNIQUE KEY `task_id` (`task_id`) USING BTREE,
  KEY `FKB9D6803FFB8B8F27` (`printer_id`) USING BTREE,
  KEY `FKB9D6803FE883ECB9` (`create_by`) USING BTREE,
  KEY `FKB9D6803F50AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_printer_task_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_printer_task_ibfk_2` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_printer_task_ibfk_3` FOREIGN KEY (`printer_id`) REFERENCES `cm_printer` (`printer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_printer_task
-- ----------------------------

-- ----------------------------
-- Table structure for cm_raw_material
-- ----------------------------
DROP TABLE IF EXISTS `cm_raw_material`;
CREATE TABLE `cm_raw_material` (
  `rm_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `rm_name` varchar(36) DEFAULT NULL,
  `code` varchar(128) DEFAULT NULL,
  `price` double(14,2) DEFAULT NULL,
  `unit_id` varchar(36) DEFAULT NULL,
  `stock_count` float DEFAULT NULL,
  `warn_count` float DEFAULT NULL,
  `surplus_stock_count` float DEFAULT NULL,
  `sh_id` varchar(36) DEFAULT NULL,
  `material_id` varchar(36) DEFAULT NULL,
  `package_capacity` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `version` varchar(36) DEFAULT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`rm_id`),
  KEY `unit_id` (`unit_id`),
  KEY `sh_id` (`sh_id`),
  KEY `create_by` (`create_by`),
  KEY `update_by` (`update_by`),
  KEY `FKEB07E513DD8FA317` (`material_id`),
  CONSTRAINT `cm_raw_material_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `cm_dishes_unit` (`unit_id`),
  CONSTRAINT `cm_raw_material_ibfk_2` FOREIGN KEY (`sh_id`) REFERENCES `cm_store_house` (`sh_id`),
  CONSTRAINT `cm_raw_material_ibfk_3` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_raw_material_ibfk_4` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FKEB07E513DD8FA317` FOREIGN KEY (`material_id`) REFERENCES `cm_dishes_material` (`material_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_raw_material
-- ----------------------------

-- ----------------------------
-- Table structure for cm_resettle_log
-- ----------------------------
DROP TABLE IF EXISTS `cm_resettle_log`;
CREATE TABLE `cm_resettle_log` (
  `log_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `log_time` datetime DEFAULT NULL,
  `bill_id` varchar(36) DEFAULT NULL,
  `bill_no` varchar(32) DEFAULT NULL,
  `resettle_time` datetime DEFAULT NULL,
  `rea_id` varchar(36) DEFAULT NULL,
  `resettle_reason` varchar(128) DEFAULT NULL,
  `payable_cost` double(14,2) DEFAULT NULL,
  `resettle_cost` double(14,2) DEFAULT NULL,
  `pay_time` datetime DEFAULT NULL,
  `notes` varchar(1024) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `FK9D9ECA7850AB25CC` (`update_by`),
  KEY `FK9D9ECA78E883ECB9` (`create_by`),
  CONSTRAINT `FK9D9ECA7850AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FK9D9ECA78E883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_resettle_log
-- ----------------------------

-- ----------------------------
-- Table structure for cm_restaurant
-- ----------------------------
DROP TABLE IF EXISTS `cm_restaurant`;
CREATE TABLE `cm_restaurant` (
  `rest_id` varchar(36) NOT NULL,
  `rest_name` varchar(128) DEFAULT NULL,
  `advertising_slogan` varchar(128) DEFAULT NULL,
  `linkman_name` varchar(128) DEFAULT NULL,
  `linkman_tel` varchar(16) DEFAULT NULL,
  `linkman_phone` varchar(16) DEFAULT NULL,
  `rest_area` int(11) DEFAULT NULL,
  `dashes_style_id_array` varchar(1024) DEFAULT NULL COMMENT '用逗号隔开多个菜系的ID',
  `foreign_la` varchar(32) DEFAULT NULL COMMENT '对应ForeignCategory',
  `taste_score` int(11) DEFAULT NULL,
  `service_score` int(11) DEFAULT NULL,
  `serve_speed_score` int(11) DEFAULT NULL,
  `environment_score` int(11) DEFAULT NULL,
  `notes` varchar(2048) DEFAULT NULL,
  `total_score` int(11) DEFAULT NULL,
  `adr_province` varchar(32) DEFAULT NULL,
  `adr_city` varchar(32) DEFAULT NULL,
  `adr_detail` varchar(2048) DEFAULT NULL,
  `subway` varchar(128) DEFAULT NULL,
  `bus_stop` varchar(128) DEFAULT NULL,
  `busi_start` time DEFAULT NULL,
  `busi_end` time DEFAULT NULL,
  `complaint_tel` varchar(32) DEFAULT NULL,
  `order_tel` varchar(32) DEFAULT NULL,
  `cons_per_person` int(11) DEFAULT NULL,
  `dining_env` varchar(32) DEFAULT NULL COMMENT '对应枚举DiningEnv',
  `special_env` varchar(32) DEFAULT NULL COMMENT '对应SpecialEnv',
  `lng` varchar(32) DEFAULT NULL,
  `lat` varchar(32) DEFAULT NULL,
  `worldcoordinate_x` varchar(32) DEFAULT NULL,
  `worldcoordinate_y` varchar(32) DEFAULT NULL,
  `pixelcoordinate_x` varchar(32) DEFAULT NULL,
  `pixelcoordinate_y` varchar(32) DEFAULT NULL,
  `tilecoordinate_x` varchar(32) DEFAULT NULL,
  `tilecoordinate_y` varchar(32) DEFAULT NULL,
  `viewportcoordinate_x` varchar(32) DEFAULT NULL,
  `viewportcoordinate_y` varchar(32) DEFAULT NULL,
  `overlaycoordinate_x` varchar(32) DEFAULT NULL,
  `overlaycoordinate_y` varchar(32) DEFAULT NULL,
  `special_style` varchar(1024) DEFAULT NULL,
  `delivery_charge` int(11) DEFAULT NULL,
  `delivery_range` int(11) DEFAULT NULL,
  `event_notice` varchar(1024) DEFAULT NULL,
  `event_summary` varchar(1024) DEFAULT NULL,
  `join_authentication` int(11) DEFAULT NULL,
  `send_price` int(11) DEFAULT NULL,
  `take_out_end` time DEFAULT NULL,
  `take_out_start` time DEFAULT NULL,
  `take_out_status` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`rest_id`),
  KEY `FK5A878E32E883ECB9` (`create_by`) USING BTREE,
  KEY `FK5A878E3250AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_restaurant_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_restaurant_ibfk_2` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_restaurant
-- ----------------------------
INSERT INTO `cm_restaurant` VALUES ('e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '我的餐厅', null, null, null, null, null, null, null, '0', '0', '0', '0', null, '0', null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, '0', '0', null, null, '1', '2014-08-19 15:31:55', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:31:55', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '0', '0', null);

-- ----------------------------
-- Table structure for cm_restaurant_appraise
-- ----------------------------
DROP TABLE IF EXISTS `cm_restaurant_appraise`;
CREATE TABLE `cm_restaurant_appraise` (
  `ora_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `comment` varchar(2048) DEFAULT NULL,
  `environment_score` int(11) DEFAULT NULL,
  `publish_terminal` varchar(32) DEFAULT NULL,
  `recommend` varchar(1024) DEFAULT NULL,
  `serve_speed_score` int(11) DEFAULT NULL,
  `service_score` int(11) DEFAULT NULL,
  `taste_score` int(11) DEFAULT NULL,
  `total_score` int(11) DEFAULT NULL,
  `mb_id` varchar(36) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`ora_id`),
  UNIQUE KEY `ora_id` (`ora_id`) USING BTREE,
  KEY `FK4C7455D8339859D6` (`rest_id`) USING BTREE,
  KEY `FK4C7455D8E883ECB9` (`create_by`) USING BTREE,
  KEY `FK4C7455D850AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_restaurant_appraise_ibfk_1` FOREIGN KEY (`rest_id`) REFERENCES `cm_restaurant` (`rest_id`),
  CONSTRAINT `cm_restaurant_appraise_ibfk_2` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_restaurant_appraise_ibfk_3` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_restaurant_appraise
-- ----------------------------

-- ----------------------------
-- Table structure for cm_restaurant_appraise_reply
-- ----------------------------
DROP TABLE IF EXISTS `cm_restaurant_appraise_reply`;
CREATE TABLE `cm_restaurant_appraise_reply` (
  `crar_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `ora_id` varchar(36) DEFAULT NULL,
  `publish_terminal` varchar(32) DEFAULT NULL,
  `reply_content` varchar(36) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`crar_id`),
  UNIQUE KEY `crar_id` (`crar_id`) USING BTREE,
  KEY `FKE1F509C3C6718117` (`ora_id`) USING BTREE,
  KEY `FKE1F509C3E883ECB9` (`create_by`) USING BTREE,
  KEY `FKE1F509C350AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_restaurant_appraise_reply_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_restaurant_appraise_reply_ibfk_2` FOREIGN KEY (`ora_id`) REFERENCES `cm_restaurant_appraise` (`ora_id`),
  CONSTRAINT `cm_restaurant_appraise_reply_ibfk_3` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_restaurant_appraise_reply
-- ----------------------------

-- ----------------------------
-- Table structure for cm_restaurant_pic
-- ----------------------------
DROP TABLE IF EXISTS `cm_restaurant_pic`;
CREATE TABLE `cm_restaurant_pic` (
  `pic_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `pic_type` varchar(32) DEFAULT NULL,
  `pic_url` varchar(500) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`pic_id`),
  UNIQUE KEY `pic_id` (`pic_id`) USING BTREE,
  KEY `FK92FE05FD339859D6` (`rest_id`) USING BTREE,
  KEY `FK92FE05FDE883ECB9` (`create_by`) USING BTREE,
  KEY `FK92FE05FD50AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_restaurant_pic_ibfk_1` FOREIGN KEY (`rest_id`) REFERENCES `cm_restaurant` (`rest_id`),
  CONSTRAINT `cm_restaurant_pic_ibfk_2` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_restaurant_pic_ibfk_3` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_restaurant_pic
-- ----------------------------

-- ----------------------------
-- Table structure for cm_restaurant_recommend_dishes
-- ----------------------------
DROP TABLE IF EXISTS `cm_restaurant_recommend_dishes`;
CREATE TABLE `cm_restaurant_recommend_dishes` (
  `crrd_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `mb_id` varchar(36) DEFAULT NULL,
  `dishes_id` varchar(36) DEFAULT NULL,
  `ora_id` varchar(36) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`crrd_id`),
  UNIQUE KEY `crrd_id` (`crrd_id`) USING BTREE,
  KEY `FKB5D4BB1812052E66` (`dishes_id`) USING BTREE,
  KEY `FKB5D4BB18C6718117` (`ora_id`) USING BTREE,
  KEY `FKB5D4BB18E883ECB9` (`create_by`) USING BTREE,
  KEY `FKB5D4BB1850AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_restaurant_recommend_dishes_ibfk_1` FOREIGN KEY (`dishes_id`) REFERENCES `cm_dishes` (`dishes_id`),
  CONSTRAINT `cm_restaurant_recommend_dishes_ibfk_2` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_restaurant_recommend_dishes_ibfk_3` FOREIGN KEY (`ora_id`) REFERENCES `cm_restaurant_appraise` (`ora_id`),
  CONSTRAINT `cm_restaurant_recommend_dishes_ibfk_4` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_restaurant_recommend_dishes
-- ----------------------------

-- ----------------------------
-- Table structure for cm_rest_member_info
-- ----------------------------
DROP TABLE IF EXISTS `cm_rest_member_info`;
CREATE TABLE `cm_rest_member_info` (
  `mb_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `company` varchar(256) DEFAULT NULL,
  `login_password` varchar(128) DEFAULT NULL,
  `login_username` varchar(128) DEFAULT NULL,
  `name_code` varchar(128) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `work` varchar(32) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `edu` varchar(32) DEFAULT NULL,
  `birthday_day` datetime DEFAULT NULL,
  `birthday_int` int(11) DEFAULT NULL,
  `adr_city` varchar(32) DEFAULT NULL,
  `adr_province` varchar(32) DEFAULT NULL,
  `notes` varchar(1204) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `salesman_id` varchar(36) DEFAULT NULL,
  `reg_origin` varchar(32) DEFAULT NULL,
  `origin_rest_id` varchar(36) DEFAULT NULL,
  `invoice_list` varchar(5000) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`mb_id`),
  UNIQUE KEY `mb_id` (`mb_id`) USING BTREE,
  KEY `FKC7F7367D4316746B` (`salesman_id`) USING BTREE,
  KEY `FKC7F7367DE883ECB9` (`create_by`) USING BTREE,
  KEY `FKC7F7367D50AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_rest_member_info_ibfk_1` FOREIGN KEY (`salesman_id`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_rest_member_info_ibfk_2` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_rest_member_info_ibfk_3` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_rest_member_info
-- ----------------------------

-- ----------------------------
-- Table structure for cm_role
-- ----------------------------
DROP TABLE IF EXISTS `cm_role`;
CREATE TABLE `cm_role` (
  `cr_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `sysdata_type` varchar(32) DEFAULT NULL,
  `role_type` varchar(32) DEFAULT NULL,
  `is_all_tablearea` varchar(32) DEFAULT NULL,
  `is_stop_use` varchar(1) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`cr_id`),
  UNIQUE KEY `cr_id` (`cr_id`) USING BTREE,
  KEY `FK34795F2BE883ECB9` (`create_by`) USING BTREE,
  KEY `FK34795F2B50AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_role_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_role_ibfk_2` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_role
-- ----------------------------
INSERT INTO `cm_role` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '管理员', '0', '1', '1', '0', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:31:57', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:31:57', '0', '0', null);
INSERT INTO `cm_role` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '收银员', '0', '2', '1', '0', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:31:57', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:31:57', '0', '0', null);
INSERT INTO `cm_role` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '服务员', '0', '3', '1', '0', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:31:58', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:31:58', '0', '0', null);
INSERT INTO `cm_role` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '经理', '0', '4', '1', '0', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:31:58', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:31:58', '0', '0', null);
INSERT INTO `cm_role` VALUES ('e5497124-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '营销员', '0', '5', '1', '0', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:31:58', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:31:58', '0', '0', null);

-- ----------------------------
-- Table structure for cm_role_auth
-- ----------------------------
DROP TABLE IF EXISTS `cm_role_auth`;
CREATE TABLE `cm_role_auth` (
  `fk_role_id` varchar(36) NOT NULL,
  `fk_auth_id` varchar(36) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  KEY `FK1A52FA3C76C2B076` (`fk_auth_id`),
  KEY `FK1A52FA3C98C74C91` (`fk_role_id`),
  CONSTRAINT `FK1A52FA3C76C2B076` FOREIGN KEY (`fk_auth_id`) REFERENCES `cm_authority_module` (`cam_id`),
  CONSTRAINT `FK1A52FA3C98C74C91` FOREIGN KEY (`fk_role_id`) REFERENCES `cm_role` (`cr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_role_auth
-- ----------------------------
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '7cc73ece3e2c4db3b032b1c443236a0d', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '06f5921ad2a74ea8ac35640014256d07', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7eeabfba0002', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef16a6b0003', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef1c19c0004', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef1ff9a0005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef229790006', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef27d930007', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef2ab9a0008', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef2db560009', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef30d40000a', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef381be000b', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef3b1b4000c', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef3e3de000d', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef42389000e', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef4566e000f', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'a02d05483fd044b3896782fd3dfbcb2a', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '3c52b97152524900b02e5caffe657297', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '02801369617c49aca263dbf68fb02068', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '05910d9966ee4e04b9b15d5b32fdddc9', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '3f7f7233a41a457e8c1f2c4a280fa789', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '6c6017912c70438890bbe0031b46f9da', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '900728c7420b4546b47d98be680f07df', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '60f4cc218695454f95914213d5ef5ff9', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '698ce2cab6034582939ed2e8157412be', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '74e6b5c26e724308ae9d7324590e5ae1', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'c26f13b7813a46cd82ab020b4a99d531', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'ce7d87155e6f4de2aebd80e0f9de2995', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '1cf8be371b7b43d2b00e9fb9e5c7cb01', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'cf87f16909224a95b477b1691e21215e', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'd37c9710eafc4ee5aa9e09813fc882f1', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'd75c32403d694e28b80d4e54e6268550', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '6e04b81e80de4f05960074e07b5a9959', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '226458eac11e47dc86cd17b4cb1dff28', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '350a5ac2e85f427ca30d0aed090daa81', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'b33f8b05bada4161a4640d6b2039e613', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'd0ccad6b074347bfb5aee8eb3d8a7974', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '7a9458e2-abf5-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '8ec914e1805e44c08e53f876df04b318', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '251882b9a8ca463a9f8b2b1ced12fec0', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '6f613bef5644453bacbe7878a405e98d', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'e169bd1aad9f42e287c2264e5182a732', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'e9a19c06a2fa4c8e9d72b1d24ad763e1', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'a4c5e03fa8c44e6f8acb6761409f9d72', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '428cc694397e48bfab27b9b9a8f8dca6', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '7062c76e9dd84ad7a6c7c9cf8e3fc477', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '8058de40a08a44df8f768a5322ede53f', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'a607c8eaa6d742a48e147bcd651356e7', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '00dfab35aa7248cca97a5efcea78cf4f', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '7357ec8f6bba415090f57e682bf54331', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'd8d448ce075a4ad0be9b6b7adb7362b8', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'faae6fb1f5a04019a61003ba55fa9e4e', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'c484b936-abf5-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'c4ce71d1533d4cfebe40941a3c80eb31', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '6969783962ee435a87fe3b4fd70adb65', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '76855c1043e34ec990274b07cc4b51b2', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'f11a84d64df94cf39976ac48d9a88012', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'f9dacf31f1b84d13add9e372cbff5c97', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'e2b3fb54-abf5-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'f88c5ecc80134da183e0bf59a7c5b82d', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '3c25b0e3434c4be8abe15eb784175aaa', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '46578f7ae5e8416e88fdabf006cbf916', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'b9b0ac39ec864529a1808c7bd071c52c', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'd9d8f776f630486dbe04d8a1853a8e74', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '6988bedb365244bebc9374e69b1d4f80', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '5186abaf-abf8-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '7a627203-abf9-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '92f4a31d-abf9-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'a66a72429c844fb88ecb53ea64138c99', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '164d2318-abf7-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '5be712e5bb5f4074a6dc85c12a6a6647', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '1d86814a95904b8fabbabd05160853fc', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '79fc935d3850492196462dd4cfe2d1c6', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '80b2b52dfc9e488a91c8b63b9ed2bb1b', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'b56f4fc81f714676b9f3121ceb8be2c4', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '68ae216ccbe044e9bc141247f46c2377', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '22dd7621edc44ac0af19f818086d6d7b', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '4a93ab45a6814682964ba3180c5f7831', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'a1ffa2e3ade44e289029064988ad25b6', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'b0858dac1e434494b39801e676ef0bfe', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '8a8947565ad94cffab43e36991bb7586', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '22f90bed97744ef681e1ddd095863238', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '38d056b73e384a948fff9a0b0df0062d', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'aa6bf097ae694d7dae20dc10129f7d8d', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'b9ac0957ef77497f8e2211b37a433267', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'bfc7b41b34564f4dbde7e39f67c3d0d7', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '0c858ca601244e39b81fe6d3071c556c', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '36a68621734b406abd9853be818f0d43', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '7f5f48b80aaa4969b6052da68106166b', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'a8fcbc30271e45cc9035a75df809f1d1', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'cd8ba68446a64e4ea6a1b4d3d7fa2267', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '6827a7f4719e44299a910843da934ba9', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '9ce7a18fbdfe49b5900a6840647800f9', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'af7ed3fefae54a19bc4093cfe89a11c7', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'd7b922c8682349ed9794b5d200d64e63', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'dbd0b01ed12f4f93a87ba62482ad5c65', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '152a564766f3442cae7f18513c4b09e4', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '4fdd81cf4d6e4dea9e17c4581d10e9b5', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '58387ae428084f80a47ecff1d6870950', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'f8ff54d4a7534a8b94db6c1ae8548f33', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'a8280787d6824a95a27918f331b13c02', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '1a5c2da6ccab494ab58c8668b6356590', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'aae8b09618964093a5996969130346c5', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'b1d891009aaa46218df3a94b539c3ee1', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'df3d4ccded4b48f48617b3b6bcbbe01c', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'fc0cf280e09c414ba138f93292f5f1ad', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '1eeba2887af645ffb3ac681c233309a0', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '2239d24a8dcd40e2bd4af558a30aee49', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '34828bcd4d244745b088406be026bbbd', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'b096cf55f35647a882ec6f39d2635726', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'be5bc7553459490fbf6637cf7031473f', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '2f36d94b325a4d57832923a77f3a0105', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '176f6eebb03f4ab4b4d9b65d76a68751', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '18010a5c864545c2b8129c833d460d0e', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '52efca5650284dec914b6c95f87a67f2', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'e10fcb0413e9400fad3301864da3ae7b', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '4d85477b05bb4b888a50c47b2213ec55', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '038f81490ff04326aaf19ffdbf7648db', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '84b14c5321f3409e9fa98513fa5143ed', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'd22eb6400d0b4512a5069743d72e856d', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'fc5eea1e7b73482a8c07dd885290c9a6', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '50c6b1609b7c4d96b4558de62250a733', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '3648a69b32f243b49ec2493226a47d41', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '9959cd3c1e6246e59a8f9260d27dbf95', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'c0d7011d7a1d4bdaa66e50f8f8234c3d', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'c3094504ddf4435185348edf431a437f', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '53f0e04314da4b9ea148509f501a6e3c', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '0f56689b5e404c6e9536f43fd00da6b4', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '587f35cdab374d918b0d0667efd45268', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '8e46a4204c234142aa1cf68cf5606825', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '93834d6ed79a46d9aaac17f890f69048', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'e4e934d941c44e858036c38e249b59f8', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '1601eff4b893443b88f548598b741b37', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '81eabb396c734030979c97c218ad6b71', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'cba7e39a909e4713b9e4bbf5313e8cc4', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'fa84173c77204cc49094ff593adb4f08', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'd2e6a54520394d60aea2033592f35815', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '19cb5177-abf9-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'c09d2654-abf8-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'f90fa40e-abf8-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'e62a59d7d9f64a57a8aafa89ea1b497b', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '26e69d0d-abf8-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '88104c97-abf7-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '8f0bea611fff48428b8b2989e941e0a0', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '2ccfecd252cf43a3b56fcd2871015bc4', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '348c3238a5a84515a92b9d742f52ac03', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '360d11c47ac049179c3e055d464d692e', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '964bd4837df34fdc8576b139ddcef503', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'c107a10a-abf7-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'cc36661d9e674fd8a07b78849d08b130', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '6e7b2333267d4f8ba085c5a2a5bdc568', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '6fdb7bcd1c05403f91a4053d81a904fe', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'afcf3ab755e44d9e9a75e6db6421e118', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'd5cc787bfa8647f8b850f9472dc2a818', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'f713805c-abf7-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7fe00c013f7fe4bde60003', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7fe00c013f7fe628740004', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7fe00c013f7fe69b470005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7fe00c013f7fe6cea70006', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7fe00c013f7fe6f4220007', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7fcc9d013f7fd560ea000f', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '40072da4-273d-11e3-8ff7-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '10cabbd4-273e-11e3-8ff7-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '10dc9966-273e-11e3-8ff7-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '216b440b-273f-11e3-8ff7-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '7663ed0d-273f-11e3-8ff7-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '36c087c7-783e-11e3-b651-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '73dba432-783f-11e3-b651-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '908c409a-783e-11e3-b651-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'a8ecfd97-783e-11e3-b651-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'b71615f7-783e-11e3-b651-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'dbc292f2-7841-11e3-b651-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'fc05cc6e-7841-11e3-b651-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '2cedcf0f-7842-11e3-b651-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '46b8b6f7-7842-11e3-b651-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '588076e3-7842-11e3-b651-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '5c373abb-7916-11e3-acad-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '61593aaa-7916-11e3-acad-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '4a831489-691b-11e3-ba84-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '8cceafa6-691b-11e3-ba84-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'b63960cc-691b-11e3-ba84-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'b646455a-691b-11e3-ba84-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'e382dbe6-691a-11e3-ba84-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '8092f34c-4c72-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'cc556660-4c72-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '2a9f431a-4c73-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'c9b13abb-4c73-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'fcf68ecb-4c73-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '1ed2f600-4c74-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '4d2376d4-4c74-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '6608275a-4c74-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '833f8dc6-4c74-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '5670890f-4c85-1031-a77d-fd2ce3ecf404', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '992d1208-4c74-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '5ec7861a-4c76-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'aaf9d914-4c76-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '07f6032a-4c77-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'c321cb95-4c77-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'f8e2dfec-4c77-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '4e1531bb-4c78-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '83a0f4d7-4c78-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '92ede19c-4c78-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '9a377077-4c78-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'c8a8e18e-4c78-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '1db23018-4c79-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '43ae6c72-4c79-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '5626dd53-4c79-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'e9173255-55d3-1031-9e65-10ea674216aa', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'ba9f6c53-3560-11e3-8951-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '9cca0f68-152d-11e3-9e59-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'a2da008c-152d-11e3-9e59-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '20f57926-a371-11e3-84d5-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'cca39c35-ab5d-11e3-ab25-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'd71315e5-ab5d-11e3-ab25-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '1731150d-84ef-11e3-862a-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '3701dc06-84ef-11e3-862a-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '51d03e36-84ef-11e3-862a-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '7b1bbb84-84ef-11e3-862a-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '9dd73059-84ef-11e3-862a-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '996bc2f5-84ee-11e3-862a-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'b482f61f-84ee-11e3-862a-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'e1afc579-84ee-11e3-862a-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '7cc73ece3e2c4db3b032b1c443236a0d', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '06f5921ad2a74ea8ac35640014256d07', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7eeabfba0002', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef16a6b0003', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef1c19c0004', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef1ff9a0005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef229790006', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef27d930007', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef2ab9a0008', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef2db560009', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef30d40000a', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef381be000b', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef3b1b4000c', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef3e3de000d', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef42389000e', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef4566e000f', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '8092f34c-4c72-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', 'cc556660-4c72-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '2a9f431a-4c73-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', 'c9b13abb-4c73-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', 'fcf68ecb-4c73-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '1ed2f600-4c74-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '4d2376d4-4c74-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '6608275a-4c74-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '833f8dc6-4c74-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '5670890f-4c85-1031-a77d-fd2ce3ecf404', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '992d1208-4c74-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '5ec7861a-4c76-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', 'aaf9d914-4c76-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '07f6032a-4c77-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', 'c321cb95-4c77-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', 'f8e2dfec-4c77-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '4e1531bb-4c78-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '83a0f4d7-4c78-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '92ede19c-4c78-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '9a377077-4c78-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', 'c8a8e18e-4c78-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '1db23018-4c79-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '43ae6c72-4c79-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '5626dd53-4c79-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '4a831489-691b-11e3-ba84-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '8cceafa6-691b-11e3-ba84-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', 'b63960cc-691b-11e3-ba84-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', 'b646455a-691b-11e3-ba84-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', 'e382dbe6-691a-11e3-ba84-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '40072da4-273d-11e3-8ff7-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '10cabbd4-273e-11e3-8ff7-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '10dc9966-273e-11e3-8ff7-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '6988bedb365244bebc9374e69b1d4f80', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '216b440b-273f-11e3-8ff7-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '7663ed0d-273f-11e3-8ff7-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '7a627203-abf9-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '92f4a31d-abf9-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '9cca0f68-152d-11e3-9e59-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', 'a2da008c-152d-11e3-9e59-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '5186abaf-abf8-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7fcc9d013f7fd560ea000f', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', 'cca39c35-ab5d-11e3-ab25-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970fa-2772-11e4-a88b-d4bed9c6f8ef', 'd71315e5-ab5d-11e3-ab25-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '7cc73ece3e2c4db3b032b1c443236a0d', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '06f5921ad2a74ea8ac35640014256d07', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7eeabfba0002', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef16a6b0003', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef1c19c0004', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef1ff9a0005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef229790006', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef27d930007', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef2ab9a0008', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef2db560009', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef30d40000a', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef381be000b', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef3b1b4000c', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef3e3de000d', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef42389000e', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef4566e000f', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7fe00c013f7fe4bde60003', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7fe00c013f7fe628740004', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7fe00c013f7fe69b470005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7fe00c013f7fe6cea70006', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7fe00c013f7fe6f4220007', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7fcc9d013f7fd560ea000f', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '8092f34c-4c72-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', 'cc556660-4c72-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '2a9f431a-4c73-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', 'c9b13abb-4c73-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', 'fcf68ecb-4c73-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '1ed2f600-4c74-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '4d2376d4-4c74-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '6608275a-4c74-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '833f8dc6-4c74-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '5670890f-4c85-1031-a77d-fd2ce3ecf404', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '992d1208-4c74-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '5ec7861a-4c76-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', 'aaf9d914-4c76-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '07f6032a-4c77-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', 'c321cb95-4c77-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', 'f8e2dfec-4c77-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '4e1531bb-4c78-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '83a0f4d7-4c78-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '92ede19c-4c78-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '9a377077-4c78-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', 'c8a8e18e-4c78-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '1db23018-4c79-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '43ae6c72-4c79-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', '5626dd53-4c79-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', 'cca39c35-ab5d-11e3-ab25-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497106-2772-11e4-a88b-d4bed9c6f8ef', 'd71315e5-ab5d-11e3-ab25-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '40072da4-273d-11e3-8ff7-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '10cabbd4-273e-11e3-8ff7-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '10dc9966-273e-11e3-8ff7-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '216b440b-273f-11e3-8ff7-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '7663ed0d-273f-11e3-8ff7-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '36c087c7-783e-11e3-b651-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '73dba432-783f-11e3-b651-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '908c409a-783e-11e3-b651-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'a8ecfd97-783e-11e3-b651-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'b71615f7-783e-11e3-b651-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'dbc292f2-7841-11e3-b651-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'fc05cc6e-7841-11e3-b651-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '2cedcf0f-7842-11e3-b651-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '46b8b6f7-7842-11e3-b651-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '588076e3-7842-11e3-b651-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '5c373abb-7916-11e3-acad-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '61593aaa-7916-11e3-acad-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '4a831489-691b-11e3-ba84-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '8cceafa6-691b-11e3-ba84-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'b63960cc-691b-11e3-ba84-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'b646455a-691b-11e3-ba84-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'e382dbe6-691a-11e3-ba84-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '7cc73ece3e2c4db3b032b1c443236a0d', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '06f5921ad2a74ea8ac35640014256d07', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7eeabfba0002', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef16a6b0003', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef1c19c0004', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef1ff9a0005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef229790006', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef27d930007', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef2ab9a0008', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef2db560009', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef30d40000a', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef381be000b', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef3b1b4000c', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef3e3de000d', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef42389000e', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef4566e000f', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'a02d05483fd044b3896782fd3dfbcb2a', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '3c52b97152524900b02e5caffe657297', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '02801369617c49aca263dbf68fb02068', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '05910d9966ee4e04b9b15d5b32fdddc9', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '3f7f7233a41a457e8c1f2c4a280fa789', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '6c6017912c70438890bbe0031b46f9da', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '900728c7420b4546b47d98be680f07df', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '60f4cc218695454f95914213d5ef5ff9', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '698ce2cab6034582939ed2e8157412be', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '74e6b5c26e724308ae9d7324590e5ae1', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'c26f13b7813a46cd82ab020b4a99d531', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'ce7d87155e6f4de2aebd80e0f9de2995', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '1cf8be371b7b43d2b00e9fb9e5c7cb01', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'cf87f16909224a95b477b1691e21215e', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'd37c9710eafc4ee5aa9e09813fc882f1', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'd75c32403d694e28b80d4e54e6268550', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '6e04b81e80de4f05960074e07b5a9959', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '226458eac11e47dc86cd17b4cb1dff28', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '350a5ac2e85f427ca30d0aed090daa81', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'b33f8b05bada4161a4640d6b2039e613', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'd0ccad6b074347bfb5aee8eb3d8a7974', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '7a9458e2-abf5-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '8ec914e1805e44c08e53f876df04b318', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '251882b9a8ca463a9f8b2b1ced12fec0', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '6f613bef5644453bacbe7878a405e98d', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'e169bd1aad9f42e287c2264e5182a732', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'e9a19c06a2fa4c8e9d72b1d24ad763e1', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'a4c5e03fa8c44e6f8acb6761409f9d72', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '428cc694397e48bfab27b9b9a8f8dca6', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '7062c76e9dd84ad7a6c7c9cf8e3fc477', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '8058de40a08a44df8f768a5322ede53f', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'a607c8eaa6d742a48e147bcd651356e7', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '00dfab35aa7248cca97a5efcea78cf4f', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '7357ec8f6bba415090f57e682bf54331', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'd8d448ce075a4ad0be9b6b7adb7362b8', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'faae6fb1f5a04019a61003ba55fa9e4e', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'c484b936-abf5-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'c4ce71d1533d4cfebe40941a3c80eb31', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '6969783962ee435a87fe3b4fd70adb65', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '76855c1043e34ec990274b07cc4b51b2', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'f11a84d64df94cf39976ac48d9a88012', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'f9dacf31f1b84d13add9e372cbff5c97', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'e2b3fb54-abf5-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'f88c5ecc80134da183e0bf59a7c5b82d', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '3c25b0e3434c4be8abe15eb784175aaa', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '46578f7ae5e8416e88fdabf006cbf916', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'b9b0ac39ec864529a1808c7bd071c52c', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'd9d8f776f630486dbe04d8a1853a8e74', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '6988bedb365244bebc9374e69b1d4f80', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '5186abaf-abf8-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '7a627203-abf9-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '92f4a31d-abf9-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'a66a72429c844fb88ecb53ea64138c99', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '164d2318-abf7-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '5be712e5bb5f4074a6dc85c12a6a6647', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '1d86814a95904b8fabbabd05160853fc', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '79fc935d3850492196462dd4cfe2d1c6', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '80b2b52dfc9e488a91c8b63b9ed2bb1b', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'b56f4fc81f714676b9f3121ceb8be2c4', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '68ae216ccbe044e9bc141247f46c2377', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '22dd7621edc44ac0af19f818086d6d7b', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '4a93ab45a6814682964ba3180c5f7831', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'a1ffa2e3ade44e289029064988ad25b6', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'b0858dac1e434494b39801e676ef0bfe', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '8a8947565ad94cffab43e36991bb7586', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '22f90bed97744ef681e1ddd095863238', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '38d056b73e384a948fff9a0b0df0062d', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'aa6bf097ae694d7dae20dc10129f7d8d', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'b9ac0957ef77497f8e2211b37a433267', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'bfc7b41b34564f4dbde7e39f67c3d0d7', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '0c858ca601244e39b81fe6d3071c556c', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '36a68621734b406abd9853be818f0d43', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '7f5f48b80aaa4969b6052da68106166b', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'a8fcbc30271e45cc9035a75df809f1d1', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'dbd0b01ed12f4f93a87ba62482ad5c65', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '152a564766f3442cae7f18513c4b09e4', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '4fdd81cf4d6e4dea9e17c4581d10e9b5', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '58387ae428084f80a47ecff1d6870950', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'f8ff54d4a7534a8b94db6c1ae8548f33', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'a8280787d6824a95a27918f331b13c02', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '1a5c2da6ccab494ab58c8668b6356590', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'aae8b09618964093a5996969130346c5', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'b1d891009aaa46218df3a94b539c3ee1', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'df3d4ccded4b48f48617b3b6bcbbe01c', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'fc0cf280e09c414ba138f93292f5f1ad', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '1eeba2887af645ffb3ac681c233309a0', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '2239d24a8dcd40e2bd4af558a30aee49', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '34828bcd4d244745b088406be026bbbd', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'b096cf55f35647a882ec6f39d2635726', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'be5bc7553459490fbf6637cf7031473f', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '2f36d94b325a4d57832923a77f3a0105', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '176f6eebb03f4ab4b4d9b65d76a68751', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '18010a5c864545c2b8129c833d460d0e', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '52efca5650284dec914b6c95f87a67f2', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'e10fcb0413e9400fad3301864da3ae7b', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '4d85477b05bb4b888a50c47b2213ec55', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '038f81490ff04326aaf19ffdbf7648db', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '84b14c5321f3409e9fa98513fa5143ed', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'd22eb6400d0b4512a5069743d72e856d', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'fc5eea1e7b73482a8c07dd885290c9a6', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '50c6b1609b7c4d96b4558de62250a733', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '3648a69b32f243b49ec2493226a47d41', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '9959cd3c1e6246e59a8f9260d27dbf95', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'c0d7011d7a1d4bdaa66e50f8f8234c3d', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'c3094504ddf4435185348edf431a437f', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '53f0e04314da4b9ea148509f501a6e3c', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '0f56689b5e404c6e9536f43fd00da6b4', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '587f35cdab374d918b0d0667efd45268', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '8e46a4204c234142aa1cf68cf5606825', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '93834d6ed79a46d9aaac17f890f69048', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'e4e934d941c44e858036c38e249b59f8', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '1601eff4b893443b88f548598b741b37', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '81eabb396c734030979c97c218ad6b71', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'cba7e39a909e4713b9e4bbf5313e8cc4', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'fa84173c77204cc49094ff593adb4f08', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'd2e6a54520394d60aea2033592f35815', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '19cb5177-abf9-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'c09d2654-abf8-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'f90fa40e-abf8-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'e62a59d7d9f64a57a8aafa89ea1b497b', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '26e69d0d-abf8-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '88104c97-abf7-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '8f0bea611fff48428b8b2989e941e0a0', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '2ccfecd252cf43a3b56fcd2871015bc4', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '348c3238a5a84515a92b9d742f52ac03', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '360d11c47ac049179c3e055d464d692e', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '964bd4837df34fdc8576b139ddcef503', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'c107a10a-abf7-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'cc36661d9e674fd8a07b78849d08b130', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '6e7b2333267d4f8ba085c5a2a5bdc568', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '6fdb7bcd1c05403f91a4053d81a904fe', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'afcf3ab755e44d9e9a75e6db6421e118', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'd5cc787bfa8647f8b850f9472dc2a818', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'f713805c-abf7-11e2-824b-001b783bdd64', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7fe00c013f7fe4bde60003', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7fe00c013f7fe628740004', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7fe00c013f7fe69b470005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7fe00c013f7fe6cea70006', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7fe00c013f7fe6f4220007', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7fcc9d013f7fd560ea000f', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '8092f34c-4c72-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'cc556660-4c72-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '2a9f431a-4c73-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'c9b13abb-4c73-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'fcf68ecb-4c73-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '1ed2f600-4c74-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '4d2376d4-4c74-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '6608275a-4c74-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '833f8dc6-4c74-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '5670890f-4c85-1031-a77d-fd2ce3ecf404', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '992d1208-4c74-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '5ec7861a-4c76-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'aaf9d914-4c76-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '07f6032a-4c77-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'c321cb95-4c77-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'f8e2dfec-4c77-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '4e1531bb-4c78-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '83a0f4d7-4c78-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '92ede19c-4c78-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '9a377077-4c78-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'c8a8e18e-4c78-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '1db23018-4c79-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '43ae6c72-4c79-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '5626dd53-4c79-1031-8251-6ab85da93719', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'e9173255-55d3-1031-9e65-10ea674216aa', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'ba9f6c53-3560-11e3-8951-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '9cca0f68-152d-11e3-9e59-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'a2da008c-152d-11e3-9e59-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', '20f57926-a371-11e3-84d5-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'cca39c35-ab5d-11e3-ab25-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497115-2772-11e4-a88b-d4bed9c6f8ef', 'd71315e5-ab5d-11e3-ab25-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '1731150d-84ef-11e3-862a-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '3701dc06-84ef-11e3-862a-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '51d03e36-84ef-11e3-862a-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '7b1bbb84-84ef-11e3-862a-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '9dd73059-84ef-11e3-862a-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '996bc2f5-84ee-11e3-862a-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'b482f61f-84ee-11e3-862a-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e54970eb-2772-11e4-a88b-d4bed9c6f8ef', 'e1afc579-84ee-11e3-862a-080058000005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497124-2772-11e4-a88b-d4bed9c6f8ef', '7cc73ece3e2c4db3b032b1c443236a0d', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497124-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef16a6b0003', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497124-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef1c19c0004', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497124-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef1ff9a0005', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497124-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef229790006', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497124-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef2db560009', '0', null);
INSERT INTO `cm_role_auth` VALUES ('e5497124-2772-11e4-a88b-d4bed9c6f8ef', '402882303f7ea37f013f7ef30d40000a', '0', null);

-- ----------------------------
-- Table structure for cm_role_module
-- ----------------------------
DROP TABLE IF EXISTS `cm_role_module`;
CREATE TABLE `cm_role_module` (
  `crm_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `cam_id` varchar(36) DEFAULT NULL,
  `cr_id` varchar(36) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`crm_id`),
  UNIQUE KEY `crm_id` (`crm_id`),
  KEY `FKE59BEE00E883ECB9` (`create_by`),
  KEY `FKE59BEE0050AB25CC` (`update_by`),
  KEY `FKE59BEE0071586A69` (`cam_id`),
  KEY `FKE59BEE0071F0F372` (`cr_id`),
  CONSTRAINT `FKE59BEE0050AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FKE59BEE0071586A69` FOREIGN KEY (`cam_id`) REFERENCES `cm_authority_module` (`cam_id`),
  CONSTRAINT `FKE59BEE0071F0F372` FOREIGN KEY (`cr_id`) REFERENCES `cm_role` (`cr_id`),
  CONSTRAINT `FKE59BEE00E883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_role_module
-- ----------------------------

-- ----------------------------
-- Table structure for cm_role_table_area
-- ----------------------------
DROP TABLE IF EXISTS `cm_role_table_area`;
CREATE TABLE `cm_role_table_area` (
  `fk_role_id` varchar(36) NOT NULL,
  `fk_tablearea_id` varchar(36) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  KEY `FK9445DBF241C973C3` (`fk_tablearea_id`),
  KEY `FK9445DBF298C74C91` (`fk_role_id`),
  CONSTRAINT `FK9445DBF241C973C3` FOREIGN KEY (`fk_tablearea_id`) REFERENCES `cm_table_area` (`area_id`),
  CONSTRAINT `FK9445DBF298C74C91` FOREIGN KEY (`fk_role_id`) REFERENCES `cm_role` (`cr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_role_table_area
-- ----------------------------

-- ----------------------------
-- Table structure for cm_role_user
-- ----------------------------
DROP TABLE IF EXISTS `cm_role_user`;
CREATE TABLE `cm_role_user` (
  `fk_user_id` varchar(36) NOT NULL,
  `fk_role_id` varchar(36) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  KEY `FK1A5C085F98C74C91` (`fk_role_id`),
  KEY `FK1A5C085F96819AD4` (`fk_user_id`),
  CONSTRAINT `FK1A5C085F96819AD4` FOREIGN KEY (`fk_user_id`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FK1A5C085F98C74C91` FOREIGN KEY (`fk_role_id`) REFERENCES `cm_role` (`cr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_role_user
-- ----------------------------
INSERT INTO `cm_role_user` VALUES ('e5497084-2772-11e4-a88b-d4bed9c6f8ef', 'e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '0', null);
INSERT INTO `cm_role_user` VALUES ('e5497097-2772-11e4-a88b-d4bed9c6f8ef', 'e54970fa-2772-11e4-a88b-d4bed9c6f8ef', '0', null);
INSERT INTO `cm_role_user` VALUES ('e54970aa-2772-11e4-a88b-d4bed9c6f8ef', 'e54970eb-2772-11e4-a88b-d4bed9c6f8ef', '0', null);
INSERT INTO `cm_role_user` VALUES ('e54970cd-2772-11e4-a88b-d4bed9c6f8ef', 'e5497106-2772-11e4-a88b-d4bed9c6f8ef', '0', null);

-- ----------------------------
-- Table structure for cm_self_dinner_bill_dishe
-- ----------------------------
DROP TABLE IF EXISTS `cm_self_dinner_bill_dishe`;
CREATE TABLE `cm_self_dinner_bill_dishe` (
  `id` varchar(36) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_syn` varchar(1) DEFAULT NULL,
  `syn_version` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `dishes_id` varchar(255) DEFAULT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `sale_num` int(11) DEFAULT '0',
  `status` varchar(32) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `order_id` varchar(36) DEFAULT NULL,
  `dishes_name` varchar(255) DEFAULT NULL,
  `real_cost` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK8F03D302E883ECB9` (`create_by`),
  KEY `FK8F03D30250AB25CC` (`update_by`),
  KEY `FK8F03D30224782187` (`order_id`),
  CONSTRAINT `FK8F03D30224782187` FOREIGN KEY (`order_id`) REFERENCES `cm_self_order` (`id`),
  CONSTRAINT `FK8F03D30250AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FK8F03D302E883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_self_dinner_bill_dishe
-- ----------------------------

-- ----------------------------
-- Table structure for cm_self_message
-- ----------------------------
DROP TABLE IF EXISTS `cm_self_message`;
CREATE TABLE `cm_self_message` (
  `mes_id` varchar(36) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_syn` varchar(1) DEFAULT NULL,
  `syn_version` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `mes_type` varchar(36) DEFAULT NULL,
  `rest_id` varchar(255) DEFAULT NULL,
  `serial_no` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT NULL,
  `tab_no` varchar(36) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `order_id` varchar(36) DEFAULT NULL,
  `bill_id` varchar(36) DEFAULT NULL,
  `classify` varchar(36) DEFAULT NULL,
  `dish_ids` varchar(1024) DEFAULT NULL,
  `waiter_id` varchar(255) DEFAULT NULL,
  `waiter_name` varchar(255) DEFAULT NULL,
  `usered_hanle_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mes_id`),
  UNIQUE KEY `mes_id` (`mes_id`),
  KEY `FK88AAC3C9E883ECB9` (`create_by`),
  KEY `FK88AAC3C950AB25CC` (`update_by`),
  KEY `FK88AAC3C924782187` (`order_id`),
  CONSTRAINT `FK88AAC3C924782187` FOREIGN KEY (`order_id`) REFERENCES `cm_self_order` (`id`),
  CONSTRAINT `FK88AAC3C950AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FK88AAC3C9E883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_self_message
-- ----------------------------

-- ----------------------------
-- Table structure for cm_self_order
-- ----------------------------
DROP TABLE IF EXISTS `cm_self_order`;
CREATE TABLE `cm_self_order` (
  `id` varchar(36) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_syn` varchar(1) DEFAULT NULL,
  `syn_version` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `bill_time` datetime DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `status` varchar(32) DEFAULT NULL,
  `tab_no` varchar(36) DEFAULT NULL,
  `urge_dish_time` datetime DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK8F535390E883ECB9` (`create_by`),
  KEY `FK8F53539050AB25CC` (`update_by`),
  CONSTRAINT `FK8F53539050AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FK8F535390E883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_self_order
-- ----------------------------

-- ----------------------------
-- Table structure for cm_special_dishes
-- ----------------------------
DROP TABLE IF EXISTS `cm_special_dishes`;
CREATE TABLE `cm_special_dishes` (
  `sf_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `dishes_id` varchar(36) DEFAULT NULL,
  `ds_id` varchar(36) DEFAULT NULL,
  `special_price` double(14,2) DEFAULT NULL,
  `spi_id` varchar(36) DEFAULT NULL,
  `show_seq` int(11) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  `cy_tc` varchar(1) DEFAULT '1',
  PRIMARY KEY (`sf_id`),
  UNIQUE KEY `sf_id` (`sf_id`) USING BTREE,
  KEY `FK87D3068312052E66` (`dishes_id`) USING BTREE,
  KEY `FK87D306836D8902FA` (`spi_id`) USING BTREE,
  KEY `FK87D30683E883ECB9` (`create_by`) USING BTREE,
  KEY `FK87D3068350AB25CC` (`update_by`) USING BTREE,
  KEY `FK87D30683A9880A50` (`ds_id`),
  CONSTRAINT `cm_special_dishes_ibfk_1` FOREIGN KEY (`dishes_id`) REFERENCES `cm_dishes` (`dishes_id`),
  CONSTRAINT `cm_special_dishes_ibfk_2` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_special_dishes_ibfk_3` FOREIGN KEY (`spi_id`) REFERENCES `cm_special_price_interval` (`spi_id`),
  CONSTRAINT `cm_special_dishes_ibfk_4` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FK87D30683A9880A50` FOREIGN KEY (`ds_id`) REFERENCES `cm_dishes_set` (`ds_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_special_dishes
-- ----------------------------

-- ----------------------------
-- Table structure for cm_special_price_interval
-- ----------------------------
DROP TABLE IF EXISTS `cm_special_price_interval`;
CREATE TABLE `cm_special_price_interval` (
  `spi_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `end_date` date DEFAULT NULL,
  `end_time` varchar(32) DEFAULT NULL,
  `is_date_valid` varchar(1) DEFAULT NULL,
  `is_friday` varchar(1) DEFAULT NULL,
  `is_monday` varchar(1) DEFAULT NULL,
  `is_saturday` varchar(1) DEFAULT NULL,
  `is_special_day` varchar(1) DEFAULT NULL,
  `is_sunday` varchar(1) DEFAULT NULL,
  `is_thursday` varchar(1) DEFAULT NULL,
  `is_time_limit` varchar(1) DEFAULT NULL,
  `is_time_valid` varchar(1) DEFAULT NULL,
  `is_tuesday` varchar(1) DEFAULT NULL,
  `is_wednesday` varchar(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `start_time` varchar(32) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`spi_id`),
  UNIQUE KEY `spi_id` (`spi_id`) USING BTREE,
  KEY `FKCEB1C6B650AB25CC` (`update_by`) USING BTREE,
  KEY `FKCEB1C6B6E883ECB9` (`create_by`),
  CONSTRAINT `cm_special_price_interval_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FKCEB1C6B6E883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_special_price_interval
-- ----------------------------
INSERT INTO `cm_special_price_interval` VALUES ('0273ae3f-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, '', null, '1', '1', null, '1', null, '1', '1', null, '1', '1', '周一到周五特价', null, '', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:44', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:44', '0', '0', null);
INSERT INTO `cm_special_price_interval` VALUES ('02778a2f-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, '', null, null, null, '1', '1', '1', null, '1', null, null, null, '周末特价', null, '', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:44', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:44', '0', '0', null);
INSERT INTO `cm_special_price_interval` VALUES ('027b8703-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, '12:00:00', null, null, null, null, null, null, null, '1', '1', null, null, '上午特价', null, '06:00:00', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:44', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:44', '0', '0', null);
INSERT INTO `cm_special_price_interval` VALUES ('027f4582-2773-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '2013-10-01', '', '1', null, null, null, null, null, null, '1', null, null, null, '国庆特价', '2013-10-01', '', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:44', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:44', '0', '0', null);

-- ----------------------------
-- Table structure for cm_spe_op_reason
-- ----------------------------
DROP TABLE IF EXISTS `cm_spe_op_reason`;
CREATE TABLE `cm_spe_op_reason` (
  `rea_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `enable_status` varchar(32) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `notes` varchar(1024) DEFAULT NULL,
  `rea_type` varchar(32) DEFAULT NULL,
  `sysdata_type` varchar(32) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`rea_id`),
  UNIQUE KEY `rea_id` (`rea_id`) USING BTREE,
  KEY `FK5D17F576E883ECB9` (`create_by`) USING BTREE,
  KEY `FK5D17F57650AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_spe_op_reason_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_spe_op_reason_ibfk_2` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_spe_op_reason
-- ----------------------------
INSERT INTO `cm_spe_op_reason` VALUES ('fee2e63e-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1', '有异物', '有异物', '1', '1', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', '0', '0', null);
INSERT INTO `cm_spe_op_reason` VALUES ('feeb5c14-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1', '上菜太慢', '上菜太慢', '1', '1', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', '0', '0', null);
INSERT INTO `cm_spe_op_reason` VALUES ('fef51467-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1', '误点', '误点', '1', '1', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', '0', '0', null);
INSERT INTO `cm_spe_op_reason` VALUES ('fefac99f-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1', '其他', '其他', '1', '1', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', '0', '0', null);
INSERT INTO `cm_spe_op_reason` VALUES ('ff0449d2-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1', '客户要求', '客户要求', '3', '1', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', '0', '0', null);
INSERT INTO `cm_spe_op_reason` VALUES ('ff110a59-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1', '客人离店', '客人离店', '3', '1', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', '0', '0', null);
INSERT INTO `cm_spe_op_reason` VALUES ('ff18bac2-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1', '操作错误', '操作错误', '3', '1', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', '0', '0', null);
INSERT INTO `cm_spe_op_reason` VALUES ('ff1e6e40-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1', '算错帐', '算错帐', '5', '1', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', '0', '0', null);
INSERT INTO `cm_spe_op_reason` VALUES ('ff241ffb-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1', '客户要求', '客户要求', '8', '1', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', '0', '0', null);
INSERT INTO `cm_spe_op_reason` VALUES ('ff2a051d-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1', '没有空位', '没有空位', '8', '1', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', '0', '0', null);
INSERT INTO `cm_spe_op_reason` VALUES ('ff3394f2-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1', '没有原材料', '没有原材料', '8', '1', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', '0', '0', null);
INSERT INTO `cm_spe_op_reason` VALUES ('ff3d253e-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1', '其它', '其它', '8', '1', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', '0', '0', null);

-- ----------------------------
-- Table structure for cm_storage
-- ----------------------------
DROP TABLE IF EXISTS `cm_storage`;
CREATE TABLE `cm_storage` (
  `storage_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `storage_no` varchar(128) DEFAULT NULL,
  `storage_time` datetime DEFAULT NULL,
  `manager_id` varchar(36) DEFAULT NULL,
  `manager_name` varchar(128) DEFAULT NULL,
  `manager_phone` varchar(128) DEFAULT NULL,
  `notes` varchar(1024) DEFAULT NULL,
  `state` varchar(1) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`storage_id`),
  KEY `FKB5C9EBA6E883ECB9` (`create_by`),
  KEY `FKB5C9EBA650AB25CC` (`update_by`),
  KEY `FKB5C9EBA65992352C` (`manager_id`),
  CONSTRAINT `FKB5C9EBA650AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FKB5C9EBA65992352C` FOREIGN KEY (`manager_id`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FKB5C9EBA6E883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_storage
-- ----------------------------

-- ----------------------------
-- Table structure for cm_storage_details
-- ----------------------------
DROP TABLE IF EXISTS `cm_storage_details`;
CREATE TABLE `cm_storage_details` (
  `sd_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `storage_id` varchar(36) DEFAULT NULL,
  `rm_id` varchar(36) DEFAULT NULL,
  `store_name` varchar(128) DEFAULT NULL,
  `material_name` varchar(128) DEFAULT NULL,
  `material_code` varchar(128) DEFAULT NULL,
  `unit_name` varchar(128) DEFAULT NULL,
  `price` double(14,2) DEFAULT NULL,
  `storage_count` float DEFAULT NULL,
  `before_storage_count` float DEFAULT NULL,
  `package_capacity` varchar(36) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`sd_id`),
  KEY `storage_id` (`storage_id`),
  KEY `FKBC777EA9E883ECB9` (`create_by`),
  KEY `FKBC777EA950AB25CC` (`update_by`),
  CONSTRAINT `cm_storage_details_ibfk_1` FOREIGN KEY (`storage_id`) REFERENCES `cm_storage` (`storage_id`),
  CONSTRAINT `FKBC777EA950AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FKBC777EA9E883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_storage_details
-- ----------------------------

-- ----------------------------
-- Table structure for cm_store_house
-- ----------------------------
DROP TABLE IF EXISTS `cm_store_house`;
CREATE TABLE `cm_store_house` (
  `sh_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `sh_name` varchar(128) DEFAULT NULL,
  `manager_id` varchar(36) DEFAULT NULL,
  `manager_name` varchar(128) DEFAULT NULL,
  `manager_code` varchar(128) DEFAULT NULL,
  `manager_phone` varchar(128) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`sh_id`),
  UNIQUE KEY `sh_id` (`sh_id`) USING BTREE,
  KEY `FKFB9D75D4E883ECB9` (`create_by`),
  KEY `FKFB9D75D450AB25CC` (`update_by`),
  KEY `FK685051ED5992352C` (`manager_id`),
  CONSTRAINT `FK685051ED5992352C` FOREIGN KEY (`manager_id`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FKFB9D75D450AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FKFB9D75D4E883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_store_house
-- ----------------------------

-- ----------------------------
-- Table structure for cm_sys_log
-- ----------------------------
DROP TABLE IF EXISTS `cm_sys_log`;
CREATE TABLE `cm_sys_log` (
  `sl_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `mac` varchar(64) DEFAULT NULL,
  `sys_log_type` varchar(32) DEFAULT NULL,
  `notes` varchar(1024) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`sl_id`),
  UNIQUE KEY `sl_id` (`sl_id`) USING BTREE,
  KEY `FKBE820BFDE883ECB9` (`create_by`) USING BTREE,
  KEY `FKBE820BFD50AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_sys_log_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_sys_log_ibfk_2` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_sys_log
-- ----------------------------
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014b7ebb9ed800b3', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-02-13 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014b83e1fae600b5', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-02-14 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014b890856c300b7', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-02-15 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014b8e2eb2c000b8', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-02-16 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014b93550ed300ba', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-02-17 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014b987b6acb00bb', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-02-18 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014b9da1c6c200be', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-02-19 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014ba2c822c900bf', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-02-20 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014ba7ee7ecf00c0', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-02-21 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014bad14dacb00c1', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-02-22 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014bb23b36c200c2', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-02-23 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014bb76192cb00c3', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-02-24 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014bbc87eec200c4', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-02-25 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014bc1ae4ad000c5', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-02-26 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014bc5c09a1900c7', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '61.163.164.209', null, '2', '登陆', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2015-02-26 19:58:28', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014bc6d4a6cc00c8', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-02-27 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014bcbfb02c100c9', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-02-28 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014bd1215ec700ca', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-03-01 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014bd647bac100cb', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-03-02 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014bdb6e16ca00cc', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-03-03 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014be09472c100cd', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-03-04 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014be5bacec200ce', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-03-05 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014beae12adf00cf', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-03-06 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014bf00786d700d0', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-03-07 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014bf52de2c900d2', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-03-08 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014bfa543ec400d3', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-03-09 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014bff7a9ac700d4', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-03-10 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014c04a0f6c800d6', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-03-11 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014c09c752c600d7', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-03-12 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014c0eedaee300da', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-03-13 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014c14140ac900db', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-03-14 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014c193a66c500dd', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-03-15 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014c1e60c2c300de', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-03-16 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014c23871ec600df', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-03-17 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014c28ad7b4c00e0', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-03-18 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff80808148db800c014c2dd3d6ca00e1', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-03-19 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814c3c9574014c3d46ee610000', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-03-22 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814c3c9574014c426d47060001', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-03-23 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814c3c9574014c4793a2e20003', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-03-24 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814c3c9574014c4cb9ff110004', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-03-25 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814c3c9574014c51e05aff0005', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-03-26 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814c3c9574014c5706b6dc0006', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-03-27 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814c3c9574014c5c2d12ed0007', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-03-28 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814c3c9574014c61536f460008', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-03-29 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814c3c9574014c6679cacc0009', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-03-30 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814c3c9574014c6ba026cb000b', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-03-31 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814c3c9574014c70c682d0000c', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-04-01 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814c3c9574014c75ecded0000d', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-04-02 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814c3c9574014c7b133ad3000e', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-04-03 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814c3c9574014c803996c6000f', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-04-04 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814c3c9574014c855ff2d10010', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-04-05 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814c3c9574014c8a8650c80011', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-04-06 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814c3c9574014c8facaaca0012', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-04-07 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814c3c9574014c94d306d60014', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-04-08 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814c3c9574014c99f962c70016', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-04-09 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814c3c9574014c9f1fbecf0017', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-04-10 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814c3c9574014ca4461ac80018', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-04-11 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814c3c9574014ca96c76c90019', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-04-12 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814c3c9574014cae92d2f0001a', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-04-13 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814c3c9574014cb3b92ee3001c', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-04-14 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814c3c9574014cb8df8ae2001d', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-04-15 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814c3c9574014cbe05e72a001e', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-04-16 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814c3c9574014cc32c42fc001f', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-04-17 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814c3c9574014cc8529f260020', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-04-18 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814c3c9574014ccd78faf40021', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-04-19 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814c3c9574014cd29f56d30023', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-04-20 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814cdea3fd014ce2126ef00000', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-04-23 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814cdea3fd014ce738c6cf0001', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-04-24 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814cdea3fd014cec5f22db0002', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-04-25 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814cdea3fd014cf1857ecc0004', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-04-26 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814cdea3fd014cf6abdadc0005', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-04-27 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814d1f1631014d1fdebe760000', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-05-05 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814d1f1631014d250516d50001', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-05-06 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814d1f1631014d2a2b72d00002', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-05-07 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814d1f1631014d2f51cec80003', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-05-08 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814d1f1631014d34782acf0004', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-05-09 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814d37a764014d37ccf3460000', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '218.94.117.234', null, '2', '登陆', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2015-05-09 16:31:28', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814d37a764014d37ccfeb60001', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '218.94.117.234', null, '2', '登陆', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2015-05-09 16:31:30', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814d38fe79014d399e87f90000', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-05-10 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814d38fe79014d3ec4e3160001', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-05-11 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814d41d08b014d43eb407b0002', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-05-12 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814d488b77014d49119b4f0000', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-05-13 01:00:00', null, null, '0', '0', '0');
INSERT INTO `cm_sys_log` VALUES ('ff8080814d4c9bf9014d4e37f9f60001', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', null, null, '1', '本地自动清理', null, '2015-05-14 01:00:00', null, null, '0', '0', '0');

-- ----------------------------
-- Table structure for cm_sys_version
-- ----------------------------
DROP TABLE IF EXISTS `cm_sys_version`;
CREATE TABLE `cm_sys_version` (
  `ver_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `ver_desc` varchar(1024) DEFAULT NULL,
  `ver_number` varchar(32) DEFAULT NULL,
  `ver_time` datetime DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`ver_id`),
  UNIQUE KEY `ver_id` (`ver_id`) USING BTREE,
  KEY `FK57308111E883ECB9` (`create_by`),
  KEY `FK5730811150AB25CC` (`update_by`),
  CONSTRAINT `FK5730811150AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FK57308111E883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_sys_version
-- ----------------------------
INSERT INTO `cm_sys_version` VALUES ('ff91c7b7-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '餐饮系统1.6.2版本', '餐饮系统1.6.2版本', '1.6.2', '2014-08-19 15:32:39', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', '0', '0', null);

-- ----------------------------
-- Table structure for cm_sys_version_setting
-- ----------------------------
DROP TABLE IF EXISTS `cm_sys_version_setting`;
CREATE TABLE `cm_sys_version_setting` (
  `svs_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `auto_update` varchar(1) DEFAULT NULL,
  `curr_version_id` int(11) DEFAULT NULL,
  `version_update_time` datetime DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`svs_id`),
  UNIQUE KEY `svs_id` (`svs_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_sys_version_setting
-- ----------------------------

-- ----------------------------
-- Table structure for cm_table
-- ----------------------------
DROP TABLE IF EXISTS `cm_table`;
CREATE TABLE `cm_table` (
  `tab_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `comment` varchar(2048) DEFAULT NULL,
  `dinner_status` varchar(32) DEFAULT NULL,
  `is_enable` varchar(1) DEFAULT NULL,
  `seat` int(11) NOT NULL,
  `show_seq` int(11) DEFAULT NULL,
  `tab_name` varchar(128) DEFAULT NULL,
  `tab_no` varchar(64) DEFAULT NULL,
  `area_id` varchar(36) NOT NULL,
  `waiter_id` varchar(36) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`tab_id`),
  UNIQUE KEY `tab_id` (`tab_id`) USING BTREE,
  KEY `area_id` (`area_id`),
  KEY `FK5AC833B9E883ECB9` (`create_by`),
  KEY `FK5AC833B950AB25CC` (`update_by`),
  KEY `FK5AC833B98B2027D7` (`waiter_id`),
  CONSTRAINT `cm_table_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `cm_table_area` (`area_id`),
  CONSTRAINT `FK5AC833B950AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FK5AC833B98B2027D7` FOREIGN KEY (`waiter_id`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FK5AC833B9E883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_table
-- ----------------------------
INSERT INTO `cm_table` VALUES ('fed54d3a-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1', '001', '2', '1', '4', '0', '001', '001', 'e5497133-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-21 15:37:09', '0', null);
INSERT INTO `cm_table` VALUES ('ff80808147f6712c0147f77e44bb0000', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1', '', '2', '1', '4', '0', '002', '002', 'e5497133-2772-11e4-a88b-d4bed9c6f8ef', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-21 15:35:53', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-22 18:38:01', '0', '0');
INSERT INTO `cm_table` VALUES ('ff80808147f6712c0147f77e6a540002', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '1', '', '2', '1', '4', '0', '003', '003', 'e5497133-2772-11e4-a88b-d4bed9c6f8ef', null, 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-21 15:36:02', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-09-12 09:09:00', '0', '0');

-- ----------------------------
-- Table structure for cm_table_area
-- ----------------------------
DROP TABLE IF EXISTS `cm_table_area`;
CREATE TABLE `cm_table_area` (
  `area_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `consume_low` double(14,2) DEFAULT NULL,
  `is_on_sale` varchar(1) DEFAULT NULL,
  `is_special_price` varchar(1) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `notes` varchar(1024) DEFAULT NULL,
  `sevice_charge_num` double(14,2) DEFAULT NULL,
  `sevice_charge_type` varchar(32) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`area_id`),
  UNIQUE KEY `area_id` (`area_id`) USING BTREE,
  KEY `FK6A78C153339859D6` (`rest_id`) USING BTREE,
  KEY `FK6A78C153E883ECB9` (`create_by`) USING BTREE,
  KEY `FK6A78C15350AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_table_area_ibfk_1` FOREIGN KEY (`rest_id`) REFERENCES `cm_restaurant` (`rest_id`),
  CONSTRAINT `cm_table_area_ibfk_2` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_table_area_ibfk_3` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_table_area
-- ----------------------------
INSERT INTO `cm_table_area` VALUES ('e5497133-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '1', '1', '大厅', null, '0.00', '3', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', '0', '0', null);
INSERT INTO `cm_table_area` VALUES ('fedefeb1-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '0.00', '1', '1', '包间', null, '0.00', '3', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:38', '0', '0', null);

-- ----------------------------
-- Table structure for cm_table_bill_relation
-- ----------------------------
DROP TABLE IF EXISTS `cm_table_bill_relation`;
CREATE TABLE `cm_table_bill_relation` (
  `tab_bill_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `bill_id` varchar(36) DEFAULT NULL,
  `tab_id` varchar(36) DEFAULT NULL,
  `people_num` int(11) DEFAULT NULL,
  `tab_bill_type` varchar(32) DEFAULT NULL,
  `order_id` varchar(36) DEFAULT NULL,
  `bill_status` varchar(32) DEFAULT NULL,
  `bill_time` datetime DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`tab_bill_id`),
  UNIQUE KEY `tab_bill_id` (`tab_bill_id`),
  KEY `FK8DA62D2EE883ECB9` (`create_by`),
  KEY `FK8DA62D2E50AB25CC` (`update_by`),
  KEY `FK8DA62D2E2DCB66E9` (`bill_id`),
  KEY `FK8DA62D2EE85733E2` (`tab_id`),
  KEY `FK8DA62D2EC0E53073` (`order_id`),
  CONSTRAINT `FK8DA62D2E2DCB66E9` FOREIGN KEY (`bill_id`) REFERENCES `cm_diner_bill` (`bill_id`),
  CONSTRAINT `FK8DA62D2E50AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FK8DA62D2EC0E53073` FOREIGN KEY (`order_id`) REFERENCES `cm_table_order` (`order_id`),
  CONSTRAINT `FK8DA62D2EE85733E2` FOREIGN KEY (`tab_id`) REFERENCES `cm_table` (`tab_id`),
  CONSTRAINT `FK8DA62D2EE883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_table_bill_relation
-- ----------------------------
INSERT INTO `cm_table_bill_relation` VALUES ('ff80808147f6705e0147f77f6e820003', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'ff80808147f6705e0147f77f6e760002', 'fed54d3a-2772-11e4-a88b-d4bed9c6f8ef', '2', '0', null, '2', '2014-08-21 15:37:09', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-21 15:37:09', 'e5497097-2772-11e4-a88b-d4bed9c6f8ef', '2014-12-11 11:42:18', '3', '0', '0');
INSERT INTO `cm_table_bill_relation` VALUES ('ff80808147f6705e0147fd4b6144000d', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'ff80808147f6705e0147fd4b6143000c', 'ff80808147f6712c0147f77e44bb0000', '1', '0', null, '1', '2014-08-22 18:38:01', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-22 18:38:01', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-22 18:38:01', '0', '0', '0');
INSERT INTO `cm_table_bill_relation` VALUES ('ff8080814801a1f501486767fa8a0011', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', 'ff8080814801a1f501486767fa860010', 'ff80808147f6712c0147f77e6a540002', '1', '0', null, '1', '2014-09-12 09:09:00', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-09-12 09:09:00', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-09-12 09:09:00', '0', '0', '0');

-- ----------------------------
-- Table structure for cm_table_order
-- ----------------------------
DROP TABLE IF EXISTS `cm_table_order`;
CREATE TABLE `cm_table_order` (
  `order_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `bill_id` varchar(36) DEFAULT NULL,
  `dining_time` datetime DEFAULT NULL,
  `meal_standard` varchar(32) DEFAULT NULL,
  `cancle_reason` varchar(512) DEFAULT NULL,
  `mb_id` varchar(36) DEFAULT NULL,
  `notes` varchar(1024) DEFAULT NULL,
  `order_people_name` varchar(16) DEFAULT NULL,
  `order_people_name_code` varchar(32) DEFAULT NULL,
  `order_status` varchar(32) DEFAULT NULL,
  `order_time` datetime DEFAULT NULL,
  `order_way` varchar(32) DEFAULT NULL,
  `people_num` int(11) DEFAULT NULL,
  `prepay` double(14,2) NOT NULL,
  `sales_mg_id` varchar(36) DEFAULT NULL,
  `tab_id` varchar(36) NOT NULL,
  `tab_no` varchar(32) DEFAULT NULL,
  `telphone` varchar(11) DEFAULT NULL,
  `order_no` varchar(64) DEFAULT NULL,
  `waiter_id` varchar(36) DEFAULT NULL,
  `taste_id_array` varchar(1024) DEFAULT NULL,
  `avoidfood_id_array` varchar(1024) DEFAULT NULL,
  `pungent_level` int(11) DEFAULT NULL,
  `taste_name_array` varchar(1024) DEFAULT NULL,
  `avoidfood_name_array` varchar(1024) DEFAULT NULL,
  `ori_cost` double(14,2) DEFAULT NULL,
  `cpt_id` varchar(36) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_id` (`order_id`) USING BTREE,
  KEY `FKE564AF48E883ECB9` (`create_by`) USING BTREE,
  KEY `FKE564AF4850AB25CC` (`update_by`) USING BTREE,
  KEY `FKE564AF488F32F44E` (`cpt_id`),
  KEY `FKE564AF482BD8872C` (`sales_mg_id`),
  KEY `FKE564AF48E85733E2` (`tab_id`),
  KEY `FKE564AF488B2027D7` (`waiter_id`),
  CONSTRAINT `cm_table_order_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_table_order_ibfk_2` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FKE564AF482BD8872C` FOREIGN KEY (`sales_mg_id`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FKE564AF488B2027D7` FOREIGN KEY (`waiter_id`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FKE564AF488F32F44E` FOREIGN KEY (`cpt_id`) REFERENCES `cm_payment_type` (`cpt_id`),
  CONSTRAINT `FKE564AF48E85733E2` FOREIGN KEY (`tab_id`) REFERENCES `cm_table` (`tab_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_table_order
-- ----------------------------

-- ----------------------------
-- Table structure for cm_table_pic
-- ----------------------------
DROP TABLE IF EXISTS `cm_table_pic`;
CREATE TABLE `cm_table_pic` (
  `pic_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `pic_type` varchar(32) DEFAULT NULL,
  `pic_url` varchar(500) DEFAULT NULL,
  `tab_no` varchar(64) DEFAULT NULL,
  `tab_id` varchar(36) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`pic_id`),
  UNIQUE KEY `pic_id` (`pic_id`),
  KEY `FK8FD29004E883ECB9` (`create_by`),
  KEY `FK8FD2900450AB25CC` (`update_by`),
  KEY `FK8FD29004E85733E2` (`tab_id`),
  CONSTRAINT `FK8FD2900450AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FK8FD29004E85733E2` FOREIGN KEY (`tab_id`) REFERENCES `cm_table` (`tab_id`),
  CONSTRAINT `FK8FD29004E883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_table_pic
-- ----------------------------

-- ----------------------------
-- Table structure for cm_terminal_connect_setting
-- ----------------------------
DROP TABLE IF EXISTS `cm_terminal_connect_setting`;
CREATE TABLE `cm_terminal_connect_setting` (
  `mts_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `visit_type` varchar(32) DEFAULT NULL,
  `terminal_type` varchar(32) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`mts_id`),
  UNIQUE KEY `mts_id` (`mts_id`) USING BTREE,
  KEY `FK91ABE8B5E883ECB9` (`create_by`) USING BTREE,
  KEY `FK91ABE8B550AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_mobile_terminal_setting_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_mobile_terminal_setting_ibfk_2` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_terminal_connect_setting
-- ----------------------------
INSERT INTO `cm_terminal_connect_setting` VALUES ('ff9d2b9e-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '3', '1', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', '0', '0', null);

-- ----------------------------
-- Table structure for cm_user_role
-- ----------------------------
DROP TABLE IF EXISTS `cm_user_role`;
CREATE TABLE `cm_user_role` (
  `cur_id` varchar(36) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_syn` varchar(1) DEFAULT NULL,
  `syn_version` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `emp_id` varchar(36) DEFAULT NULL,
  `cr_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`cur_id`),
  UNIQUE KEY `cur_id` (`cur_id`),
  KEY `FK1A8FFED5E883ECB9` (`create_by`),
  KEY `FK1A8FFED550AB25CC` (`update_by`),
  KEY `FK1A8FFED577676231` (`emp_id`),
  KEY `FK1A8FFED571F0F372` (`cr_id`),
  CONSTRAINT `FK1A8FFED550AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FK1A8FFED571F0F372` FOREIGN KEY (`cr_id`) REFERENCES `cm_role` (`cr_id`),
  CONSTRAINT `FK1A8FFED577676231` FOREIGN KEY (`emp_id`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FK1A8FFED5E883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_user_role
-- ----------------------------

-- ----------------------------
-- Table structure for cm_workstation
-- ----------------------------
DROP TABLE IF EXISTS `cm_workstation`;
CREATE TABLE `cm_workstation` (
  `ws_id` varchar(36) NOT NULL,
  `rest_id` varchar(36) NOT NULL,
  `ip` varchar(128) DEFAULT NULL,
  `mac` varchar(128) DEFAULT NULL,
  `notes` varchar(2048) DEFAULT NULL,
  `status` varchar(32) DEFAULT NULL,
  `last_time` datetime DEFAULT NULL,
  `ws_name` varchar(32) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`ws_id`),
  UNIQUE KEY `ws_id` (`ws_id`) USING BTREE,
  KEY `FKE42570AEE883ECB9` (`create_by`) USING BTREE,
  KEY `FKE42570AE50AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `cm_workstation_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `cm_workstation_ibfk_2` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_workstation
-- ----------------------------
INSERT INTO `cm_workstation` VALUES ('ff80808147f3e8410147f3e8c66a0000', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '122.192.39.230', null, null, '0', null, '未知', null, '2014-08-20 22:53:44', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808147f411d00147f60fdcbd0001', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '218.94.117.234', null, null, '0', null, '未知', null, '2014-08-21 08:55:40', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808147f6712c0147f79fedb90004', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '66.249.79.197', null, null, '0', null, '未知', null, '2014-08-21 16:12:39', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808147f6712c0147f7a3545e0005', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '66.249.79.223', null, null, '0', null, '未知', null, '2014-08-21 16:16:22', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808147f6712c0147f7f574f50006', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '66.249.73.206', null, null, '0', null, '未知', null, '2014-08-21 17:46:04', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808147f6712c0147fc5d923a0008', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '180.173.103.220', null, null, '0', null, '未知', null, '2014-08-22 14:18:16', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808147f6712c0147fcd95158000c', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '88.198.164.52', null, null, '0', null, '未知', null, '2014-08-22 16:33:26', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808147f6712c01480155498c000e', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '122.96.139.206', null, null, '0', null, '未知', null, '2014-08-23 13:27:19', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff8080814801a2c301481028f3f70003', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '101.226.168.226', null, null, '0', null, '未知', null, '2014-08-26 10:33:12', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff8080814801a2c301481029712b0004', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '182.118.20.223', null, null, '0', null, '未知', null, '2014-08-26 10:33:44', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff8080814801a2c3014837bf8017000d', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '220.181.108.175', null, null, '0', null, '未知', null, '2014-09-03 03:02:50', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff8080814801a2c301483b2c0dd5000e', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '123.125.71.26', null, null, '0', null, '未知', null, '2014-09-03 19:00:15', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff8080814801a2c301484fdc8cae0013', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '220.181.108.185', null, null, '0', null, '未知', null, '2014-09-07 19:25:27', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148986e88014898d0987f0000', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '112.86.153.236', null, null, '0', null, '未知', null, '2014-09-21 23:24:40', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c0148db9561420000', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '122.96.118.25', null, null, '0', null, '未知', null, '2014-10-04 22:34:33', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c0148e1c9d78f0003', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '66.249.79.120', null, null, '0', null, '未知', null, '2014-10-06 03:29:34', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c01491e8cb2e1000f', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '68.180.228.164', null, null, '0', null, '未知', null, '2014-10-17 22:39:37', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c01492733f4f80012', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '69.58.178.58', null, null, '0', null, '未知', null, '2014-10-19 14:59:16', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c01492c395f840014', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '66.249.69.144', null, null, '0', null, '未知', null, '2014-10-20 14:23:17', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c0149398e6af30018', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '157.55.39.248', null, null, '0', null, '未知', null, '2014-10-23 04:31:15', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014948fedba5001c', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '188.165.15.126', null, null, '0', null, '未知', null, '2014-10-26 04:28:22', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c01495bf6927e0020', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '207.46.13.79', null, null, '0', null, '未知', null, '2014-10-29 20:52:06', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c0149609b0b0e0022', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '188.165.15.121', null, null, '0', null, '未知', null, '2014-10-30 18:30:14', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c01498fc052b9002c', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '207.46.13.102', null, null, '0', null, '未知', null, '2014-11-08 22:13:06', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014992792b84002e', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '222.95.157.218', null, null, '0', null, '未知', null, '2014-11-09 10:54:14', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c01499ab3d5b20032', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '188.165.25.173', null, null, '0', null, '未知', null, '2014-11-11 01:15:17', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c01499b00c7570033', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '94.23.172.110', null, null, '0', null, '未知', null, '2014-11-11 02:39:19', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c01499b45b3990034', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '188.165.15.136', null, null, '0', null, '未知', null, '2014-11-11 03:54:36', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c0149c4a077cb003e', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '69.58.178.57', null, null, '0', null, '未知', null, '2014-11-19 04:38:11', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c0149d033310a0041', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '157.55.39.150', null, null, '0', null, '未知', null, '2014-11-21 10:34:16', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014a0342169f004c', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '66.249.65.64', null, null, '0', null, '未知', null, '2014-12-01 08:31:10', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014a04232564004d', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '188.165.15.129', null, null, '0', null, '未知', null, '2014-12-01 12:36:59', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014a0b2cb3d2004f', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '66.249.74.64', null, null, '0', null, '未知', null, '2014-12-02 21:24:46', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014a12a1c4990052', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '157.55.39.155', null, null, '0', null, '未知', null, '2014-12-04 08:09:59', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014a29da89410057', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '157.55.39.95', null, null, '0', null, '未知', null, '2014-12-08 20:23:15', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014a41736564005d', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '157.55.39.45', null, null, '0', null, '未知', null, '2014-12-13 10:21:29', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014a4f3f6a920061', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '198.143.187.114', null, null, '0', null, '未知', null, '2014-12-16 02:39:23', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014a610e6a930065', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '66.249.75.176', null, null, '0', null, '未知', null, '2014-12-19 13:39:02', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014a6ab0a7900068', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '66.249.67.128', null, null, '0', null, '未知', null, '2014-12-21 10:32:49', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014a85d17787006e', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '36.99.30.115', null, null, '0', null, '未知', null, '2014-12-26 16:58:25', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014a85da03e9006f', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '36.99.30.162', null, null, '0', null, '未知', null, '2014-12-26 17:07:45', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014a8f692e6d0072', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '36.99.31.67', null, null, '0', null, '未知', null, '2014-12-28 13:40:42', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014a8f6b02160073', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '36.99.30.112', null, null, '0', null, '未知', null, '2014-12-28 13:42:42', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014ab2f2881f007b', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '188.165.15.13', null, null, '0', null, '未知', null, '2015-01-04 11:17:26', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014ab9308d24007d', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '66.249.79.136', null, null, '0', null, '未知', null, '2015-01-05 16:22:54', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014aba3dd11a007e', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '66.249.73.216', null, null, '0', null, '未知', null, '2015-01-05 21:17:01', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014abb34b9800080', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '66.249.73.224', null, null, '0', null, '未知', null, '2015-01-06 01:46:42', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014adb5db0740087', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '157.55.39.83', null, null, '0', null, '未知', null, '2015-01-12 07:39:18', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014afd9e2416008e', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '69.58.178.59', null, null, '0', null, '未知', null, '2015-01-18 23:16:47', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014b350f9472009a', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '62.163.78.143', null, null, '0', null, '未知', null, '2015-01-29 17:39:48', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014b4f8c127e00a0', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '203.208.60.64', null, null, '0', null, '未知', null, '2015-02-03 21:05:54', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014b5105750f00a2', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '203.208.60.66', null, null, '0', null, '未知', null, '2015-02-04 03:58:07', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014b51dbbcc000a3', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '203.208.60.69', null, null, '0', null, '未知', null, '2015-02-04 07:52:10', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014b531e285f00a4', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '203.208.60.57', null, null, '0', null, '未知', null, '2015-02-04 13:44:20', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014b53bfa38500a5', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '203.208.60.68', null, null, '0', null, '未知', null, '2015-02-04 16:40:43', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014b56373dca00a7', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '203.208.60.62', null, null, '0', null, '未知', null, '2015-02-05 04:10:35', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014b6389253a00aa', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '123.125.71.110', null, null, '0', null, '未知', null, '2015-02-07 18:15:07', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014b642af50800ab', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '188.165.15.176', null, null, '0', null, '未知', null, '2015-02-07 21:11:51', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014b6759b7f200ad', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '123.125.71.85', null, null, '0', null, '未知', null, '2015-02-08 12:01:48', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014b7ab4f28700b2', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '66.249.64.77', null, null, '0', null, '未知', null, '2015-02-12 06:14:13', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014b821d0bb900b4', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '217.69.133.29', null, null, '0', null, '未知', null, '2015-02-13 16:45:16', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014b86e23c9a00b6', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '217.69.133.31', null, null, '0', null, '未知', null, '2015-02-14 14:59:08', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014b8f5c7ea100b9', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '157.55.39.233', null, null, '0', null, '未知', null, '2015-02-16 06:29:38', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014b99892b1300bc', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '46.229.164.115', null, null, '0', null, '未知', null, '2015-02-18 05:54:38', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014b9b00aa7b00bd', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '208.115.113.93', null, null, '0', null, '未知', null, '2015-02-18 12:44:47', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014bc5bfd22900c6', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '61.163.164.209', null, null, '0', null, '未知', null, '2015-02-26 19:57:37', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014bf0dda4f000d1', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '136.243.36.97', null, null, '0', null, '未知', null, '2015-03-07 04:53:52', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014c02051eb100d5', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '217.69.133.228', null, null, '0', null, '未知', null, '2015-03-10 12:50:32', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014c0b780b1700d8', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '207.46.13.113', null, null, '0', null, '未知', null, '2015-03-12 08:52:38', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014c0c58abc000d9', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '217.69.133.232', null, null, '0', null, '未知', null, '2015-03-12 12:58:00', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014c18cffe8400dc', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '188.165.15.14', null, null, '0', null, '未知', null, '2015-03-14 23:03:46', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff80808148db800c014c2f5fc64b00e2', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '188.165.15.183', null, null, '0', null, '未知', null, '2015-03-19 08:12:28', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff8080814c3c9574014c464dcef20002', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '157.55.39.131', null, null, '0', null, '未知', null, '2015-03-23 19:04:06', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff8080814c3c9574014c6a1fb031000a', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '46.161.41.199', null, null, '0', null, '未知', null, '2015-03-30 18:00:03', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff8080814c3c9574014c9229909d0013', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '217.69.133.233', null, null, '0', null, '未知', null, '2015-04-07 12:35:39', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff8080814c3c9574014c958a88f40015', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '217.69.133.229', null, null, '0', null, '未知', null, '2015-04-08 04:20:26', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff8080814c3c9574014caf0aa122001b', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '198.27.66.194', null, null, '0', null, '未知', null, '2015-04-13 03:10:51', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff8080814c3c9574014cd1fb780a0022', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '91.121.121.43', null, null, '0', null, '未知', null, '2015-04-19 22:01:00', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff8080814cdea3fd014cf0a2a63f0003', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '188.165.15.75', null, null, '0', null, '未知', null, '2015-04-25 20:52:13', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff8080814d41d08b014d42af61950000', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '108.162.246.224', null, null, '0', null, '未知', null, '2015-05-11 19:14:59', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff8080814d41d08b014d437282a40001', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '108.162.246.212', null, null, '0', null, '未知', null, '2015-05-11 22:48:07', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff8080814d4ae247014d4b1af21a0000', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '108.162.221.180', null, null, '0', null, '未知', null, '2015-05-13 10:29:26', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff8080814d4c9bf9014d4d50d7c80000', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '108.162.221.177', null, null, '0', null, '未知', null, '2015-05-13 20:47:33', null, null, '0', '0', '0');
INSERT INTO `cm_workstation` VALUES ('ff9779d8-2772-11e4-a88b-d4bed9c6f8ef', 'e5496fbb-2772-11e4-a88b-d4bed9c6f8ef', '127.0.0.1', '', '服务器本机', '1', '2014-08-19 15:32:39', '服务器本机', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', 'e5497084-2772-11e4-a88b-d4bed9c6f8ef', '2014-08-19 15:32:39', '0', '0', null);

-- ----------------------------
-- Table structure for hibernate_sequences
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequences`;
CREATE TABLE `hibernate_sequences` (
  `sequence_name` varchar(255) DEFAULT NULL,
  `sequence_next_hi_value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hibernate_sequences
-- ----------------------------

-- ----------------------------
-- Table structure for md_base_code
-- ----------------------------
DROP TABLE IF EXISTS `md_base_code`;
CREATE TABLE `md_base_code` (
  `bc_id` varchar(36) NOT NULL,
  `bc_code` varchar(32) DEFAULT NULL,
  `bc_name` varchar(128) DEFAULT NULL,
  `bc_desc` varchar(2048) DEFAULT NULL,
  `is_enable` varchar(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`bc_id`),
  UNIQUE KEY `bc_id` (`bc_id`) USING BTREE,
  KEY `FKAAEE31F350AB25CC` (`update_by`) USING BTREE,
  KEY `FKAAEE31F3E883ECB9` (`create_by`),
  CONSTRAINT `FKAAEE31F3E883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `md_base_code_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of md_base_code
-- ----------------------------
INSERT INTO `md_base_code` VALUES ('03bb01550e384ce592024cc0c04685dd', 'VisitType', '连接状态设置', '连接状态设置', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('04aab859611747ca97d3f5a6263c2aa6', 'RegionDiv', '省市区分', '省市区分', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('0956d9147fcf4528b86519ba0bc29430', 'PaymentType', '付款方式', '付款方式', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('097e28cc41ea473db3c02d6fcfc5209c', 'ForeignCategory', '外语种类', '外语种类', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('0c9cf6a0c7a549598add0644ea68b172', 'JobStatus', '工作状态', '工作状态', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('12382b2282ab42ca968bd48bd51530cc', 'SpecialReasonType', '特殊原因', '特殊原因', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('1ba8bce828a2441b93ac0b5f66e14a56', 'DiningEnv', '就餐氛围', '就餐氛围', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('1dfaffffa0b84981a32ddb0465a2616f', 'DataLogType', '数据日志类型', '数据日志类型', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('1e1831e5d4dc412193e20ee19e9613ae', 'OrderWay', '预定方式', '预定方式', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('24ab1d1ed3b740d3999f4bba69b7b523', 'RegOrigin', '注册来源', '注册来源', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('35bc397271344ffaa8d082557249d1a5', 'SysLogType', '系统日志类型', '系统日志类型', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('3bbbc800d84a44a59881d08672e28843', 'DishesStatus', '菜肴状态', '菜肴状态', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('4595ebcd115c40dc99608f43a55c108a', 'MsgType', '消息类型', '消息类型', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('4a429a348def4ba2bf3911d3cbe1174c', 'BillType', '账单类型', '账单类型', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('4c85095db63a4b75ab05f3a8c333fd1f', 'BillStatus', '账单状态', '账单状态', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('5427eb6d8ef4445e917b5443854ca436', 'BackupInterval', '备份设置', '备份设置', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('5d5c7ec0c4754f438304f98e83afbe05', 'PungentLevel', '辣度', '辣度', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('6316a9c594a74daeb71df465c39b9d6e', 'WorkStationCon', '工作站连接状态', '工作站连接状态', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('659d077eeedb4259968eddc3e15e9be4', 'SpecialStyle', '特色风格', '特色风格', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('6daf9d294f4f49dc91a0488c8afb06f0', 'DiscountType', '折扣类型', '折扣类型', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('762f3135be5345a69a434375858fb3ac', 'OcsStatus', '投诉建议状态', '投诉建议状态', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('78e320d8aa244fceb940d5a3cf2eaa0b', 'BillOpType', '账单操作类型', '账单操作类型', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('7b4deb292f0f4766896b38eac7de212a', 'Gender', '性别', '性别', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('854c01592fce421b80cbd1e6dbab6739', 'CardOperationType', '会员卡操作类型', '会员卡操作类型', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('872bbfd6febf4d91825d4837b60e6d82', 'CreditStatus', '挂账状态', '挂账状态', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('877847430b3a476aa4f1ce3e71fbb98f', 'TerminalType', '终端类型', '终端类型', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('887177d8f9154312a7cb49beabfcc43c', 'EnableStatus', '停用状态', '停用状态', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('8fe3faad194641bd818727ab3a1b9523', 'MolingMode', '抹零设置', '抹零设置', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('970931d8c2334b58b8ec1cd475f18efd', 'MemberCardStatus', '会员卡状态', '会员卡状态', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('a0b23867b3c348d7a192b9959032fd47', 'PrinterMode', '打印模式', '打印模式', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('a62cb9b631184086b08461472a8bdcfe', 'BussLogType', '业务日志类型', '业务日志类型', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('a84a85722d214f6d8256c4c0e26e8947', 'DinnerStatus', '餐台就餐状态', '餐台就餐状态', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('ab7645c67aa04af8905cab757bd976e8', 'SeviceChargeType', '服务费类型', '服务费类型', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('b1f18b0e8f0e436aa4f32ef1b1941dd7', 'WorkStationStatus', '工作站认证状态', '工作站认证状态', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('bc80d16a759d47ceb4b681d2b3a78ee8', 'TrueFalse', '是否', '是否', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('c0069ff089ea46528be4ef06c9194107', 'TerminalDiv', '终端区分', '终端区分', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('c135f8952b00467aafd06a1f361477d8', 'PrinterType', '打印类别', '打印类别', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('c83dd74d46a8480bafd6c4f7ebf87d35', 'EmpOpType', '员工操作日志类型', '员工操作日志类型', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('c9c33d538e1c441eb7afcab96ac1d047', 'PicType', '图片类型', '图片类型', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('ca832e3788ff41659a886ac52aeb2bc1', 'CamLevel', '模块层级', '模块层级', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('cef5f4172d8b45388755e126de007fef', 'MemberEdu', '会员学历', '会员学历', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('d1702a0c3506498098a61fb4db8de547', 'AuthEnum', '客户端权限', '客户端权限', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('d689edcb94254175bf334f519edf1685', 'MemberWork', '会员职业', '会员职业', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('d7246a418f494ce7abb53db8e2da4a4e', 'OrderStatus', '预定状态', '预定状态', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('dfa5171ac05b464dac4f477cceb3d58d', 'SysDataType', '服务费类型', '服务费类型', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('e4881cdb7b7c491caa0ec1faae0c6c95', 'OcsrStatus', '回复状态', '回复状态', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('e4bd1c891f5f4532ae15b9eb7ba282cc', 'DataLogAct', '数据日志操作类型', '数据日志操作类型', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('e6523ff4e8ab4c6ea25ca848af077fee', 'SpecialEnv', '特色环境', '特色环境', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('e8b1de9650ff4591bc22386744309c62', 'TabBillType', '餐台订单类型', '餐台订单类型', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('ef87781c49664a2a91e881ac52ce9688', 'BussLogAct', '数据日志类型', '数据日志类型', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('ff7c28f553d347418e1e12d1e4604afe', 'MsgStatus', '消息状态', '消息状态', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code` VALUES ('ff80ed4ba47247b89f2d6afada10a8c2', 'OcsType', '投诉建议类型', '投诉建议类型', '1', null, null, null, null, '0', '0', '0');

-- ----------------------------
-- Table structure for md_base_code_item
-- ----------------------------
DROP TABLE IF EXISTS `md_base_code_item`;
CREATE TABLE `md_base_code_item` (
  `bci_id` varchar(36) NOT NULL,
  `bc_id` varchar(36) DEFAULT NULL,
  `bc_code` varchar(32) DEFAULT NULL,
  `bci_code` varchar(32) DEFAULT NULL,
  `bci_desc` varchar(2048) DEFAULT NULL,
  `bci_name` varchar(128) DEFAULT NULL,
  `show_seq` int(11) NOT NULL DEFAULT '0',
  `is_enable` varchar(1) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`bci_id`),
  UNIQUE KEY `bci_id` (`bci_id`) USING BTREE,
  KEY `FK3B5E41DF1DC221F1` (`bc_id`) USING BTREE,
  KEY `FK3B5E41DF50AB25CC` (`update_by`) USING BTREE,
  KEY `FK3B5E41DFE883ECB9` (`create_by`),
  CONSTRAINT `FK3B5E41DFE883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `md_base_code_item_ibfk_1` FOREIGN KEY (`bc_id`) REFERENCES `md_base_code` (`bc_id`),
  CONSTRAINT `md_base_code_item_ibfk_2` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of md_base_code_item
-- ----------------------------
INSERT INTO `md_base_code_item` VALUES ('013a20d496c24c729c9c7d5ee2bf73a3', 'a0b23867b3c348d7a192b9959032fd47', 'PrinterMode', '2', '浏览器前端打印', '浏览器前端打印', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('0540e1dcec4b48d9b598a5c7f1de035f', 'ef87781c49664a2a91e881ac52ce9688', 'BussLogAct', '4', '反结账', '反结账', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('061815c1145a4636a1f163e37d52ae2d', '0956d9147fcf4528b86519ba0bc29430', 'PaymentType', '7', '优惠券', '优惠券', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('066571e6442c4aa4b3158460fbeae36e', 'ef87781c49664a2a91e881ac52ce9688', 'BussLogAct', '10', '已并台', '已并台', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('07a2aab4de7f4f8984c1863894b90daa', 'ef87781c49664a2a91e881ac52ce9688', 'BussLogAct', '15', '转开台', '转开台', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('08ae7a2b6f7d46d5b5f0d948b4fd0a02', '1e1831e5d4dc412193e20ee19e9613ae', 'OrderWay', '4', '网站会员预定', '网站会员预定', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('090396eede8444ae82b1e2694e79f263', '1ba8bce828a2441b93ac0b5f66e14a56', 'DiningEnv', '2', '家庭聚会', '家庭聚会', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('0f762572f23e489ca82d6874bcbea5b6', 'e6523ff4e8ab4c6ea25ca848af077fee', 'SpecialEnv', '1', '免费WIFI', '免费WIFI', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('10728862f114437c965b1fe4e9a9fd73', 'd7246a418f494ce7abb53db8e2da4a4e', 'OrderStatus', '3', '餐厅已确认', '餐厅已确认', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('10e70354fce641c2b0f49259718d23ef', '6daf9d294f4f49dc91a0488c8afb06f0', 'DiscountType', '0', '其他折扣', '其他折扣', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('11a8205ba94c48ab96f8851b29e21356', '1dfaffffa0b84981a32ddb0465a2616f', 'DataLogType', '6', '会员卡', '会员卡', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('14ed0eee97d84b27982837a11f652e99', 'c83dd74d46a8480bafd6c4f7ebf87d35', 'EmpOpType', '1', '登录', '登录', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('164d7001e2da46f4a0c8334efa32fa78', '35bc397271344ffaa8d082557249d1a5', 'SysLogType', '2', '登录记录', '登录记录', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('1676a5634d364a29aa44ea14efb017f2', '4a429a348def4ba2bf3911d3cbe1174c', 'BillType', '3', '自助账单', '自助账单', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('16cf53baa355409b9f04a978fc1d25b4', 'ca832e3788ff41659a886ac52aeb2bc1', 'CamLevel', '2', '消费', '消费', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('186a8ca0332a44168aa3e12982d32b18', 'c135f8952b00467aafd06a1f361477d8', 'PrinterType', '0', '收银', '收银', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('19063b90c9dc41288b875bcc2c758f28', 'e6523ff4e8ab4c6ea25ca848af077fee', 'SpecialEnv', '13', '免费表演', '免费表演', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('19549410fe324a70938d5e33f2779fdd', '12382b2282ab42ca968bd48bd51530cc', 'SpecialReasonType', '5', '反结账原因', '反结账原因', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('19784b126f204a8f829f14cc20c0f1ab', 'bc80d16a759d47ceb4b681d2b3a78ee8', 'TrueFalse', '1', '是', '是', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('1b39b251d2b7472abe4f97a9d476be1f', '097e28cc41ea473db3c02d6fcfc5209c', 'ForeignCategory', '7', '西班牙', '西班牙', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('1bbc6696cd264545a5c24d9ec6e51be0', '659d077eeedb4259968eddc3e15e9be4', 'SpecialStyle', '2', '烧烤店', '烧烤店', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('1c365e3008994d46b6c7100c62892e81', '78e320d8aa244fceb940d5a3cf2eaa0b', 'BillOpType', '11', '划菜', '划菜', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('1d4b9c0bb72d4c0b8b329447884a959d', 'c83dd74d46a8480bafd6c4f7ebf87d35', 'EmpOpType', '2', '退出', '退出', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('1d86461721ca45ecbe44b1e7d4a8ad75', '1dfaffffa0b84981a32ddb0465a2616f', 'DataLogType', '5', '折扣方案', '折扣方案', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('1dbd2b6b50b5458cb57ab382b8e2c83d', 'e6523ff4e8ab4c6ea25ca848af077fee', 'SpecialEnv', '6', '茶楼', '茶楼', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('1eab47237fce446aa3c29faf3cf7df87', 'd1702a0c3506498098a61fb4db8de547', 'AuthEnum', '2', '会话超时', '会话超时', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('1ef172c0bc19425daa9b87052e048b47', '854c01592fce421b80cbd1e6dbab6739', 'CardOperationType', '2', '消费', '消费', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('1f3f6576b02848328fb960140d58c4bf', 'c83dd74d46a8480bafd6c4f7ebf87d35', 'EmpOpType', '5', '下单', '下单', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('2035f2dce5894b2695f0dc8cafc73112', '4595ebcd115c40dc99608f43a55c108a', 'MsgType', '2', '客户投诉', '客户投诉', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('20f7c83a5a214546a565d6bf98746537', '4c85095db63a4b75ab05f3a8c333fd1f', 'BillStatus', '2', '已下单', '已下单', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('22d14514bbba42bd8d002d68791590d8', 'ff80ed4ba47247b89f2d6afada10a8c2', 'OcsType', '1', '投诉', '投诉', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('22f204a586534297b6f6850be3c86d03', '659d077eeedb4259968eddc3e15e9be4', 'SpecialStyle', '0', '其他', '其他', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('28267fa7d9954c82ac86320de1da9298', 'a84a85722d214f6d8256c4c0e26e8947', 'DinnerStatus', '5', '结账', '结账', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('2871ebafc65f4b049c6ea7be7ff973b7', '5427eb6d8ef4445e917b5443854ca436', 'BackupInterval', '3', '一周', '一周', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('29179ac423da4aea90e2abcd5deeb5c5', 'ff7c28f553d347418e1e12d1e4604afe', 'MsgStatus', '1', '待处理', '待处理', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('29198127906e4c3ba1e0eb5cdda44695', 'ef87781c49664a2a91e881ac52ce9688', 'BussLogAct', '2', '已下单', '已下单', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('29a91c03be504736a230224e183c09a7', '872bbfd6febf4d91825d4837b60e6d82', 'CreditStatus', '2', '已付款', '已付款', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('2bd9f7119e864d7e84dd30859a71e282', '097e28cc41ea473db3c02d6fcfc5209c', 'ForeignCategory', '2', '日文', '日文', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('2c4878e708dc4937a2472b50c981f0f3', '659d077eeedb4259968eddc3e15e9be4', 'SpecialStyle', '1', '火锅店', '火锅店', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('2ca2c3d5af3f40c58fb6ad6da681db7e', 'c135f8952b00467aafd06a1f361477d8', 'PrinterType', '1', '后厨', '后厨', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('2d13d17a05404094a1bf898a38699ab0', 'e6523ff4e8ab4c6ea25ca848af077fee', 'SpecialEnv', '9', '郊外养生', '郊外养生', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('2dd04c1e439e46138706fbf225913789', '0956d9147fcf4528b86519ba0bc29430', 'PaymentType', '4', '酒店挂账', '酒店挂账', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('2fc1cae590674bcab464a353535ff37f', 'dfa5171ac05b464dac4f477cceb3d58d', 'SysDataType', '1', '用户定义', '用户定义', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('2fcec1b1461e4c14bad8b3eeea684c78', '35bc397271344ffaa8d082557249d1a5', 'SysLogType', '1', '系统记录', '系统记录', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('300b966fecc243ba98c5f2c7594f3af2', '659d077eeedb4259968eddc3e15e9be4', 'SpecialStyle', '5', '西餐厅', '西餐厅', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('30565dd84c8d4d438abd72bce462e8a5', '659d077eeedb4259968eddc3e15e9be4', 'SpecialStyle', '6', '快餐自助', '快餐自助', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('34e3a4db4ee14bc6ac8ee7152a297281', '659d077eeedb4259968eddc3e15e9be4', 'SpecialStyle', '4', '海鲜酒楼', '海鲜酒楼', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('35895d19ad1a4e34b434e1143bd5cf99', 'e4bd1c891f5f4532ae15b9eb7ba282cc', 'DataLogAct', '1', '新增', '新增', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('35a0123a285449c78cd76d1a305987f9', '4c85095db63a4b75ab05f3a8c333fd1f', 'BillStatus', '3', '已结账', '已结账', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('35f664d1a5a04c24b5d09ef73af357d4', '1dfaffffa0b84981a32ddb0465a2616f', 'DataLogType', '3', '菜肴分类', '菜肴分类', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('37e15327d35644bc8688f7280cc71a42', '5427eb6d8ef4445e917b5443854ca436', 'BackupInterval', '5', '二个月', '二个月', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('391ab0cd3c404cb58b791bc9a5e43100', '0956d9147fcf4528b86519ba0bc29430', 'PaymentType', '5', '团队挂账', '团队挂账', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('3a809de488f4489ab614c61bded85b13', 'ff80ed4ba47247b89f2d6afada10a8c2', 'OcsType', '2', '建议', '建议', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('3ac047c02e6d465184edb1189b7c5159', '1ba8bce828a2441b93ac0b5f66e14a56', 'DiningEnv', '5', '朋友聚餐', '朋友聚餐', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('3ae8eff9022b40ed9d6e4b34cd824429', '5427eb6d8ef4445e917b5443854ca436', 'BackupInterval', '7', '一年', '一年', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('3d17c14a49af4a9f90ba2baa10ed26f6', '0956d9147fcf4528b86519ba0bc29430', 'PaymentType', '1', '现金', '现金', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('3dff502892a342ecbb0ee27bed6b31aa', '78e320d8aa244fceb940d5a3cf2eaa0b', 'BillOpType', '13', '撤单', '撤单', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('3e3d94200dfc405081cb6be14913bc7d', '854c01592fce421b80cbd1e6dbab6739', 'CardOperationType', '1', '充值', '充值', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('3f9cce9398704316b872d75bc451012c', '6daf9d294f4f49dc91a0488c8afb06f0', 'DiscountType', '2', '特价', '特价', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('3fe28bb7d682444996c0879f95d7a0a9', '097e28cc41ea473db3c02d6fcfc5209c', 'ForeignCategory', '3', '韩文', '韩文', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('444057e2bde14209a989889b05f9b34e', '097e28cc41ea473db3c02d6fcfc5209c', 'ForeignCategory', '8', '葡萄牙', '葡萄牙', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('445dd45f60604d89b6e3fd473d568761', 'ab7645c67aa04af8905cab757bd976e8', 'SeviceChargeType', '4', '元/人', '按人数', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('44b5d399a26b40659e4e93e156a81801', 'e8b1de9650ff4591bc22386744309c62', 'TabBillType', '0', '普通订单', '普通订单', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('4699bb3f7aed436fae71172247de01ad', 'c0069ff089ea46528be4ef06c9194107', 'TerminalDiv', '3', '安卓平板', '安卓平板', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('46b31f41990d4de280e38b4b0d41922c', '12382b2282ab42ca968bd48bd51530cc', 'SpecialReasonType', '7', '呼叫服务', '呼叫服务', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('4e026795588c49ac958ab3dcc54e3b68', 'e4881cdb7b7c491caa0ec1faae0c6c95', 'OcsrStatus', '3', '系统消息', '系统消息', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('4f6a53e0d2ad4f31a4a9a5a46c78a26e', '4c85095db63a4b75ab05f3a8c333fd1f', 'BillStatus', '9', '部分下单', '部分下单', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('4fdc501466da4ee29f2bd00c78c4b726', 'cef5f4172d8b45388755e126de007fef', 'MemberEdu', '5', '高中', '高中', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('527c59f588704fc89e51d68b9fb4913c', '970931d8c2334b58b8ec1cd475f18efd', 'MemberCardStatus', '1', '正常', '正常', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('536db130dc304361891e1f29b2d9c64e', 'a84a85722d214f6d8256c4c0e26e8947', 'DinnerStatus', '2', '使用中', '使用中', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('538dba88fdab49c18cbdbb53c6a775d0', '7b4deb292f0f4766896b38eac7de212a', 'Gender', '1', '男', '男', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('54e020174bd9473fbabef572543294e6', '4c85095db63a4b75ab05f3a8c333fd1f', 'BillStatus', '10', '已并台', '已并台', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('5515e79d57b94aebb6b735ff03ed4d0f', '1ba8bce828a2441b93ac0b5f66e14a56', 'DiningEnv', '6', '商务宴请', '商务宴请', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('555564fa68694979a87aa3843b98bb2e', '3bbbc800d84a44a59881d08672e28843', 'DishesStatus', '5', '已点未下单', '已点未下单', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('56342fa104e34a2d92b9effa6e216bde', 'cef5f4172d8b45388755e126de007fef', 'MemberEdu', '3', '大专', '大专', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('56877e53040b4a31872b63ffd8a71a1f', '762f3135be5345a69a434375858fb3ac', 'OcsStatus', '1', '未解决', '未解决', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('58a54ea6197c41e8b93b6d8428216693', '03bb01550e384ce592024cc0c04685dd', 'VisitType', '2', '只允许认证设备访问', '只允许认证设备访问', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('59c52e793a974440a96d1248ad3d81d7', '854c01592fce421b80cbd1e6dbab6739', 'CardOperationType', '3', '办卡', '办卡', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('5a32942618544a2ca3deb9ab504ef061', 'ef87781c49664a2a91e881ac52ce9688', 'BussLogAct', '1', '未下单', '未下单', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('5a669f8dc0aa45fbb3cb791362fc29fc', '097e28cc41ea473db3c02d6fcfc5209c', 'ForeignCategory', '9', '荷兰', '荷兰', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('5bc0ba41ae4d4865969ee11a2992e1e7', 'a62cb9b631184086b08461472a8bdcfe', 'BussLogType', '3', '预订记录', '预订记录', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('5eb5a57b82fd4b83b28685c959c27bc2', 'c83dd74d46a8480bafd6c4f7ebf87d35', 'EmpOpType', '6', '改单', '改单', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('5f2f85317b084471a939dba47fd244d8', '1dfaffffa0b84981a32ddb0465a2616f', 'DataLogType', '4', '菜肴信息', '菜肴信息', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('5f39f9e024204d8996abf6f911ab73cb', '78e320d8aa244fceb940d5a3cf2eaa0b', 'BillOpType', '7', '反结账', '反结账', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('5f48ae9abc2c4bd7b86426273de92b7e', 'd689edcb94254175bf334f519edf1685', 'MemberWork', '3', '行政助理', '行政助理', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('5f85827cc0df4e3aa99cdcaad7f0898c', '970931d8c2334b58b8ec1cd475f18efd', 'MemberCardStatus', '2', '停用', '停用', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('602398ea2e0e42969e5ec331ca88ae14', 'e6523ff4e8ab4c6ea25ca848af077fee', 'SpecialEnv', '11', '露天位', '露天位', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('60c03116c0cd4362acb232f5cd40be8b', 'd689edcb94254175bf334f519edf1685', 'MemberWork', '7', '无业', '无业', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('62da82dba32f4f58980544b0bc48a0a3', 'c0069ff089ea46528be4ef06c9194107', 'TerminalDiv', '2', 'iphone', 'iphone', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('634378ef63fc4986b1556c65c01ad6d5', 'cef5f4172d8b45388755e126de007fef', 'MemberEdu', '1', '研究生及以上', '研究生及以上', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('64496343eaf7400795fad504027217e5', 'c83dd74d46a8480bafd6c4f7ebf87d35', 'EmpOpType', '3', '开台', '开台', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('645b39041cca4aa68f8e98af8b9d5e0b', 'd689edcb94254175bf334f519edf1685', 'MemberWork', '0', '其它', '其它', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('666a405b789748279ff954f4615f5fdb', '4a429a348def4ba2bf3911d3cbe1174c', 'BillType', '1', '普通账单', '普通账单', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('676ee45b51d44655bf331ecfb441fd88', 'c0069ff089ea46528be4ef06c9194107', 'TerminalDiv', '1', 'ipad', 'ipad', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('6a6cb659a5bd4117a88c111b0d6fd43c', '12382b2282ab42ca968bd48bd51530cc', 'SpecialReasonType', '8', '取消预定原因', '取消预定原因', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('6b62b1d936bb45a7b774823e32eb7d44', '1ba8bce828a2441b93ac0b5f66e14a56', 'DiningEnv', '8', '特色口味', '特色口味', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('6c27aa5dd7a04de887d657ca005ba963', 'a62cb9b631184086b08461472a8bdcfe', 'BussLogType', '1', '前厅流水', '前厅流水', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('6f12a6ef578f4a90a301ee10db8b87d6', '0956d9147fcf4528b86519ba0bc29430', 'PaymentType', '8', '支票', '支票', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('702c7e5c081c4ec2977d64de7000f088', 'd689edcb94254175bf334f519edf1685', 'MemberWork', '4', '中高级管理人员', '中高级管理人员', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('709cfe5c40684166a8f461e9bd593c90', 'e6523ff4e8ab4c6ea25ca848af077fee', 'SpecialEnv', '2', '卡拉OK', '卡拉OK', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('70dfff49ed5a4f06b3d724368e4e079e', 'e4881cdb7b7c491caa0ec1faae0c6c95', 'OcsrStatus', '5', '客户催菜', '客户催菜', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('713d3804a82a4946bb9a03d0fc7c7479', '1ba8bce828a2441b93ac0b5f66e14a56', 'DiningEnv', '3', '婚礼婚宴', '婚礼婚宴', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('7348ce79244c4806a68582ff9d49888b', 'd1702a0c3506498098a61fb4db8de547', 'AuthEnum', '1', '登陆失败', '登陆失败', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('7399272d1f1248518abfe064c3cc7b16', 'ef87781c49664a2a91e881ac52ce9688', 'BussLogAct', '16', '取消预定', '取消预定', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('73f5ac7095c0496283d8e06a7dfa386c', '3bbbc800d84a44a59881d08672e28843', 'DishesStatus', '2', '已上菜', '已上菜', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('743255483afe46ddad028c95786e0936', 'd7246a418f494ce7abb53db8e2da4a4e', 'OrderStatus', '5', '取消', '取消', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('74eebe75c06e40bca765e9e27b9d8565', 'e4bd1c891f5f4532ae15b9eb7ba282cc', 'DataLogAct', '2', '修改', '修改', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('7507e4a5f032418593bace65a43a51ec', 'c9c33d538e1c441eb7afcab96ac1d047', 'PicType', '1', '封面图片', '封面图片', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('75834901773d4567868232b3a9e15ea3', 'd7246a418f494ce7abb53db8e2da4a4e', 'OrderStatus', '2', '预定中', '预定中', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('77425ab9d4bb488aae06a28c215b6d47', '5d5c7ec0c4754f438304f98e83afbe05', 'PungentLevel', '5', '特辣', '特辣', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('793429ffc3424635876fe2d3a4415f68', 'e4881cdb7b7c491caa0ec1faae0c6c95', 'OcsrStatus', '4', '网络预订通知', '网络预订通知', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('7a05334de8f44f85b7e663402c9fb99c', 'e6523ff4e8ab4c6ea25ca848af077fee', 'SpecialEnv', '12', '户外运动', '户外运动', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('7a464f3cd3a9467ba283a0d827b792c8', '872bbfd6febf4d91825d4837b60e6d82', 'CreditStatus', '1', '挂账', '挂账', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('7c61d9a0999e4678944cc8b6322748d3', '3bbbc800d84a44a59881d08672e28843', 'DishesStatus', '3', '未上菜退菜', '未上菜退菜', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('7ca1d4ea494a466f8618b04ff2512fc4', 'd7246a418f494ce7abb53db8e2da4a4e', 'OrderStatus', '6', '餐厅确认失败', '餐厅确认失败', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('7ccf2e272f6e41c68520e72328d03aba', 'c9c33d538e1c441eb7afcab96ac1d047', 'PicType', '2', '普通图片', '普通图片', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('7ce42ed16b9547339916a776f9b67cc4', '4595ebcd115c40dc99608f43a55c108a', 'MsgType', '1', '客户呼叫服务', '客户呼叫服务', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('7d5f5294bde04a1c83eb7a941512e383', 'e6523ff4e8ab4c6ea25ca848af077fee', 'SpecialEnv', '0', '其他', '其他', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('7d6578ae367d445ba32b1ca0e4fa8ce6', '877847430b3a476aa4f1ce3e71fbb98f', 'TerminalType', '1', '工作站', '工作站', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('7db4a77134ce43b59b23ed7adefd0955', '1e1831e5d4dc412193e20ee19e9613ae', 'OrderWay', '1', '电话预定', '电话预定', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('7f6470043bf541859a0d9c8e8fbeba17', '1e1831e5d4dc412193e20ee19e9613ae', 'OrderWay', '3', '餐厅网站预定', '餐厅网站预定', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('7f962118a97a4ffd899202ffc7118d49', 'c83dd74d46a8480bafd6c4f7ebf87d35', 'EmpOpType', '8', '转菜', '转菜', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('8040810648384dc799b5ed8777f3169a', '78e320d8aa244fceb940d5a3cf2eaa0b', 'BillOpType', '2', '下单', '下单', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('80d0acf0488f4f7f8a749d64c3e04a34', '1ba8bce828a2441b93ac0b5f66e14a56', 'DiningEnv', '4', '休闲小憩', '休闲小憩', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('824efa73be844321b2fe0e2532c7f5f4', 'c0069ff089ea46528be4ef06c9194107', 'TerminalDiv', '6', 'WP手机', 'WP手机', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('8257a9be2ea44c85a004b7eae4623169', 'e6523ff4e8ab4c6ea25ca848af077fee', 'SpecialEnv', '7', '酒吧', '酒吧', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('8338c13d436941c082b482ea71621cfa', '4595ebcd115c40dc99608f43a55c108a', 'MsgType', '4', '网络预订通知', '网络预订通知', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('8378ed76568045c29c3a8a651e567411', 'ef87781c49664a2a91e881ac52ce9688', 'BussLogAct', '3', '已结账', '已结账', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('839bb10ba2f64ddcaf1aafb787565b0c', '3bbbc800d84a44a59881d08672e28843', 'DishesStatus', '1', '未上菜', '未上菜', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('8548660441aa48749db238295e47c87c', '0956d9147fcf4528b86519ba0bc29430', 'PaymentType', '6', '餐厅挂账', '餐厅挂账', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('8775738f6b294892b5f663d38ac0518f', '78e320d8aa244fceb940d5a3cf2eaa0b', 'BillOpType', '4', '转台', '转台', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('878cf991e3ec45dfb058f22bffcf3f1a', '8fe3faad194641bd818727ab3a1b9523', 'MolingMode', '0', '不处理', '不处理', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('87a81879a87942dcaf24e06a146aee92', 'e4881cdb7b7c491caa0ec1faae0c6c95', 'OcsrStatus', '2', '客户投诉', '客户投诉', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('887ce60e46f14082b0b50e6ca11be63c', '887177d8f9154312a7cb49beabfcc43c', 'EnableStatus', '1', '正常', '正常', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('88ea4427bb0b4ca0b8f5b27fef99df02', 'c0069ff089ea46528be4ef06c9194107', 'TerminalDiv', '4', '安卓手机', '安卓手机', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('896822791d2b4f45a0c270c5162c1816', 'd689edcb94254175bf334f519edf1685', 'MemberWork', '8', '学生', '学生', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('8a360e1bd4194d1492f36c4c54ef7161', 'c83dd74d46a8480bafd6c4f7ebf87d35', 'EmpOpType', '9', '改菜', '改菜', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('8b1ddb3ca1894e0091f5b43f59c4f53d', 'b1f18b0e8f0e436aa4f32ef1b1941dd7', 'WorkStationStatus', '0', '未认证', '未认证', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('8b4f7d72790a453987947601c6b701ac', 'c83dd74d46a8480bafd6c4f7ebf87d35', 'EmpOpType', '10', '退菜', '退菜', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('8b77760ace2d4ad88c32dff0a76d2e49', '78e320d8aa244fceb940d5a3cf2eaa0b', 'BillOpType', '14', '挂账', '挂账', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('8d13b0afd7744991a6f09eaedb13433e', 'e4bd1c891f5f4532ae15b9eb7ba282cc', 'DataLogAct', '3', '删除', '删除', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('8d1b447976284ab99bb479c2aacca319', '854c01592fce421b80cbd1e6dbab6739', 'CardOperationType', '4', '退卡', '退卡', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('8e4ab531f4564722bc5959c95a06cd28', '762f3135be5345a69a434375858fb3ac', 'OcsStatus', '2', '已回复', '已回复', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('8ef7970bff2f4c539a02b6ae19627ca5', '097e28cc41ea473db3c02d6fcfc5209c', 'ForeignCategory', '6', '俄文', '俄文', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('917608b22cb34e04b79c69d8e527ee2e', '1e1831e5d4dc412193e20ee19e9613ae', 'OrderWay', '0', '其他', '其他', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('923408de183e4f72925f82525802e0a3', 'ab7645c67aa04af8905cab757bd976e8', 'SeviceChargeType', '1', '%', '按比例', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('92c45a7af4d94ed5b180779db3a44701', 'cef5f4172d8b45388755e126de007fef', 'MemberEdu', '4', '专科', '专科', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('92d6d63c1c574023a7005416a37e4a7e', '5d5c7ec0c4754f438304f98e83afbe05', 'PungentLevel', '1', '不辣', '不辣', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('931cd8f6739241ed8ebf77de96a5ec16', '097e28cc41ea473db3c02d6fcfc5209c', 'ForeignCategory', '10', '瑞典', '瑞典', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('9426b863a4224d6396c866785662b4ba', '097e28cc41ea473db3c02d6fcfc5209c', 'ForeignCategory', '1', '英文', '英文', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('96a2b28cf5254962963f8b2c67b81b84', 'ca832e3788ff41659a886ac52aeb2bc1', 'CamLevel', '3', '办卡', '办卡', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('97917992469d4553a7633342ba49c276', '1e1831e5d4dc412193e20ee19e9613ae', 'OrderWay', '2', '到店预定', '到店预定', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('99247fca72874d16b94a4b550196250f', 'c83dd74d46a8480bafd6c4f7ebf87d35', 'EmpOpType', '4', '点菜', '点菜', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('997a85b860da410bad07d2efc28f896e', '78e320d8aa244fceb940d5a3cf2eaa0b', 'BillOpType', '6', '结账', '结账', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('9a75bf892cd44b0aaa7ef51389ffcb6e', 'e6523ff4e8ab4c6ea25ca848af077fee', 'SpecialEnv', '3', '桌游', '桌游', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('9aab6ba96b4b40888c98d4b6dfa2db82', '8fe3faad194641bd818727ab3a1b9523', 'MolingMode', '1', '角', '角', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('9d6f6853d6b8441cbd2b3ffe82f08a9d', '5427eb6d8ef4445e917b5443854ca436', 'BackupInterval', '6', '六个月', '六个月', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('9ecad0495d0a43fb8cb8da3d63740d0c', 'dfa5171ac05b464dac4f477cceb3d58d', 'SysDataType', '0', '默认', '默认', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('a0870925870f42e98a1a853376a9024a', '12382b2282ab42ca968bd48bd51530cc', 'SpecialReasonType', '3', '撤单原因', '撤单原因', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('a198cb69984141d19b9274610d012934', '4c85095db63a4b75ab05f3a8c333fd1f', 'BillStatus', '8', '撤单', '撤单', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('a1d0952aa64e4f9c8fc21e6c4614667b', 'cef5f4172d8b45388755e126de007fef', 'MemberEdu', '0', '其它', '其它', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('a290bb3136e341fa877fe14c2a1f9879', 'a0b23867b3c348d7a192b9959032fd47', 'PrinterMode', '1', 'Windows驱动后台打印 ', 'Windows驱动后台打印 ', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('a3923ff523d34ef0a8d97ff7ccbe397f', '78e320d8aa244fceb940d5a3cf2eaa0b', 'BillOpType', '1', '开台', '开台', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('a528ac1a804b401781aaa4a749c0351d', 'a84a85722d214f6d8256c4c0e26e8947', 'DinnerStatus', '1', '空闲', '空闲', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('a531a2bda30944e3aedc2862e3fcb923', '24ab1d1ed3b740d3999f4bba69b7b523', 'RegOrigin', '0', '其他来源', '其他来源', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('a568ea98f9984766b022f833bcff1070', '04aab859611747ca97d3f5a6263c2aa6', 'RegionDiv', '1', '市', '市', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('a608b2773baf4c36b43699aa61d3b395', '5d5c7ec0c4754f438304f98e83afbe05', 'PungentLevel', '0', '', '', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('a63166978274465f8a4bfc03462e5c09', 'b1f18b0e8f0e436aa4f32ef1b1941dd7', 'WorkStationStatus', '1', '已认证', '已认证', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('a6f74fdea7e94c45807c9f5ffb641bbe', '03bb01550e384ce592024cc0c04685dd', 'VisitType', '3', '允许任何设备访问', '允许任何设备访问', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('a7a2f4fd7ffe4ec2aa2c6c1a9cd5bc7b', '097e28cc41ea473db3c02d6fcfc5209c', 'ForeignCategory', '4', '法文', '法文', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('a7f31420ef3044c29c3e31557e071282', '78e320d8aa244fceb940d5a3cf2eaa0b', 'BillOpType', '5', '并台', '并台', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('a8d0d178162d43a69bd50b49b4cae942', '1ba8bce828a2441b93ac0b5f66e14a56', 'DiningEnv', '7', '年会会议', '年会会议', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('a9e16c16ac364dd9ad6a9f71a63e9bb8', '5d5c7ec0c4754f438304f98e83afbe05', 'PungentLevel', '3', '中辣', '中辣', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('aaeb3f547f464398be42192cf0f49b5d', '78e320d8aa244fceb940d5a3cf2eaa0b', 'BillOpType', '10', '删菜', '删菜', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('abb053fda9564944926afbcd351ec88b', '42c92bc90ee64cf78414afaddb206cf4', 'DataLogType', '7', '仓库信息', '仓库信息', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('acbfa466a2f94e5a9158376fba836f67', 'a0b23867b3c348d7a192b9959032fd47', 'PrinterMode', '0', 'POS无驱动打印 ', 'POS无驱动打印 ', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('add7155c5ea84ff0ab52e5b4b94e9c7a', 'ef87781c49664a2a91e881ac52ce9688', 'BussLogAct', '14', '确认预订', '确认预订', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('ae7e0c105400428eb06ff8e0e1990163', 'c0069ff089ea46528be4ef06c9194107', 'TerminalDiv', '5', 'WP平板', 'WP平板', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('b2a7046796b34708826b09f10c2073a0', 'bc80d16a759d47ceb4b681d2b3a78ee8', 'TrueFalse', '0', '否', '否', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('b3173be3d63343689e9d336226d170c2', '877847430b3a476aa4f1ce3e71fbb98f', 'TerminalType', '2', '移动终端', '移动终端', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('b337f2e39b9448dbb14b0f6ed8524534', 'ab7645c67aa04af8905cab757bd976e8', 'SeviceChargeType', '2', '元/5分钟（不足5分钟不计价）', '按时间', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('b38a4e997941465287b47666e6b4c5cb', 'ab7645c67aa04af8905cab757bd976e8', 'SeviceChargeType', '3', '元', '固定', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('b47154997f314a5e8d36dfc8c1306770', '4c85095db63a4b75ab05f3a8c333fd1f', 'BillStatus', '4', '反结账', '反结账', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('b48b0057b0a846de9be1ed5fa94a2cf2', '4c85095db63a4b75ab05f3a8c333fd1f', 'BillStatus', '1', '未下单', '未下单', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('b83601670a70483cb6550b286a4fd584', '0956d9147fcf4528b86519ba0bc29430', 'PaymentType', '3', '会员卡', '会员卡', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('b8d9418c8cc3443c862423f7a8ae9261', '970931d8c2334b58b8ec1cd475f18efd', 'MemberCardStatus', '3', '挂失', '挂失', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('b9d67e88dbd94beca6141cff45d885f1', '4595ebcd115c40dc99608f43a55c108a', 'MsgType', '3', '系统消息', '系统消息', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('b9e18775fd3c441aa5ab5b42fe33d6b2', 'ff7c28f553d347418e1e12d1e4604afe', 'MsgStatus', '2', '已处理', '已处理', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('bc6555672a54457bbe9d994128276a23', '24ab1d1ed3b740d3999f4bba69b7b523', 'RegOrigin', '3', '网上注册', '网上注册', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('bcb8509dcad8465bbf5e56da456d1710', 'a84a85722d214f6d8256c4c0e26e8947', 'DinnerStatus', '4', '停用', '停用', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('bd9aa03865b3436cbd6467f15617d5c0', '097e28cc41ea473db3c02d6fcfc5209c', 'ForeignCategory', '0', '其他', '其他', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('bf94e2219f594600a502562fb79b6eb7', '8fe3faad194641bd818727ab3a1b9523', 'MolingMode', '100', '十元', '十元', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('c0a87cd640bd4ac894c922ab87034f25', 'd1702a0c3506498098a61fb4db8de547', 'AuthEnum', '0', '登陆成功', '登陆成功', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('c0c04f593c4e4fec85721e59e46d94d6', '6316a9c594a74daeb71df465c39b9d6e', 'WorkStationCon', '0', '未连接', '未连接', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('c11fc02257d945b2af3e8087f13f728b', 'd689edcb94254175bf334f519edf1685', 'MemberWork', '2', '市场销售', '市场销售', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('c19980d50ae847248f5a06c022c91c78', '03bb01550e384ce592024cc0c04685dd', 'VisitType', '1', '全部禁止', '全部禁止', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('c1b2b888eec1449d8583c4c10fbc856b', '04aab859611747ca97d3f5a6263c2aa6', 'RegionDiv', '0', '省', '省', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('c1d4d5b98c0a41ad83a9ca60b37caf79', 'c9c33d538e1c441eb7afcab96ac1d047', 'PicType', '3', 'LOGO', 'LOGO', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('c1d7f91dba67489c84197e63fcaef6b5', '4a429a348def4ba2bf3911d3cbe1174c', 'BillType', '2', '外卖账单', '外卖账单', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('c8f4dcc1be504d5490f7ae74a8d3caaf', 'd689edcb94254175bf334f519edf1685', 'MemberWork', '1', '公务员', '公务员', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('ca7bbec899314758bfb907d0f48a3701', '0c9cf6a0c7a549598add0644ea68b172', 'JobStatus', '0', '离职', '离职', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('caba09b4c7404132bb9eff9f4009e2f9', '78e320d8aa244fceb940d5a3cf2eaa0b', 'BillOpType', '8', '退菜', '退菜', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('caede6ea614343daa6cf88ad9817a2ca', '1ba8bce828a2441b93ac0b5f66e14a56', 'DiningEnv', '0', '其他', '其他', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('cbc3f9d8aef04648bd36f853cd8d2ac3', 'ef87781c49664a2a91e881ac52ce9688', 'BussLogAct', '9', '部分下单', '部分下单', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('ce08e5ea6ddc47ec855d7b3d45f04df6', '970931d8c2334b58b8ec1cd475f18efd', 'MemberCardStatus', '4', '待发卡', '待发卡', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('ce0a0267b42441cbbdc5cf2d37e376cf', '4595ebcd115c40dc99608f43a55c108a', 'MsgType', '5', '客户催菜', '客户催菜', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('ce9b85f359a54fce9ba5aab88e476669', '12382b2282ab42ca968bd48bd51530cc', 'SpecialReasonType', '1', '退菜原因', '退菜原因', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('d05900bfd6a3445fa17ba888f57d3900', '0c9cf6a0c7a549598add0644ea68b172', 'JobStatus', '1', '在职', '在职', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('d2513a8d485d4ff7b7d82b41625fd824', '8fe3faad194641bd818727ab3a1b9523', 'MolingMode', '10', '元', '元', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('d26e5c1049a54a4a81832c9fe75004c3', '6316a9c594a74daeb71df465c39b9d6e', 'WorkStationCon', '1', '已连接', '已连接', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('d2aac0a93be247e49e88d78f3f2fef5c', '887177d8f9154312a7cb49beabfcc43c', 'EnableStatus', '0', '停用', '停用', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('d35546fd0c204940a61d5cb7b68125b7', 'cef5f4172d8b45388755e126de007fef', 'MemberEdu', '6', '初中', '初中', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('d5de3e492d6a4488a58c56c1dfdfdf1b', 'a84a85722d214f6d8256c4c0e26e8947', 'DinnerStatus', '3', '待清台', '待清台', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('d602ce0b0d05490aa3bce43058305e52', 'c83dd74d46a8480bafd6c4f7ebf87d35', 'EmpOpType', '7', '改台', '改台', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('d607d062bfe942c3ad36566e22491f0d', '78e320d8aa244fceb940d5a3cf2eaa0b', 'BillOpType', '12', '点菜', '点菜', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('d6a8f98a149843e78b0a6356e570826e', 'e6523ff4e8ab4c6ea25ca848af077fee', 'SpecialEnv', '10', '宝宝椅', '宝宝椅', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('d8b22ccd575643c68947a6ad27e032c8', 'c83dd74d46a8480bafd6c4f7ebf87d35', 'EmpOpType', '0', '其他', '其他', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('daa34a5dc0e7482aa68a2554f6d97be1', 'e6523ff4e8ab4c6ea25ca848af077fee', 'SpecialEnv', '8', '棋牌', '棋牌', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('dae8b788f26340b4b29f362b30705d34', '5d5c7ec0c4754f438304f98e83afbe05', 'PungentLevel', '4', '辣', '辣', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('db59378bc41e4eadb08e26c29edff5c5', 'ff80ed4ba47247b89f2d6afada10a8c2', 'OcsType', '3', '对软件建议', '对软件建议', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('dc3588ad0e4b4ca082e088810429f63b', 'd7246a418f494ce7abb53db8e2da4a4e', 'OrderStatus', '1', '待确认', '待确认', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('dc4ebe2325df4bfeb614e26e29679adc', '0956d9147fcf4528b86519ba0bc29430', 'PaymentType', '0', '其他', '其他', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('dd70c2173f99451da3e70e6b15d3fb89', 'ef87781c49664a2a91e881ac52ce9688', 'BussLogAct', '8', '撤单', '撤单', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('de6aaf6532de490783c612fd9543bcd6', 'a84a85722d214f6d8256c4c0e26e8947', 'DinnerStatus', '6', '预定', '预定', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('df4998eadcb04240aecdb73ad0f34a27', '6daf9d294f4f49dc91a0488c8afb06f0', 'DiscountType', '1', '会员价', '会员价', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('df4be6dd03d941c0af75208ea0b777dc', 'd689edcb94254175bf334f519edf1685', 'MemberWork', '5', '普通员工', '普通员工', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('e04dd65bba404c96a019791bad5d3d8a', '5427eb6d8ef4445e917b5443854ca436', 'BackupInterval', '1', '一天', '一天', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('e2912f4a97d34b28a142652215e5d1ad', '1dfaffffa0b84981a32ddb0465a2616f', 'DataLogType', '1', '餐台分区', '餐台分区', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('e2b8ee8f468949eea5f358ad7a5325dc', 'c83dd74d46a8480bafd6c4f7ebf87d35', 'EmpOpType', '11', '结账', '结账', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('e2dce7afbde54855ab90389b411cd8a4', 'e4881cdb7b7c491caa0ec1faae0c6c95', 'OcsrStatus', '1', '客户呼叫服务', '客户呼叫服务', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('e410fbcd4f8a441da1f7ffc98cb08322', 'ca832e3788ff41659a886ac52aeb2bc1', 'CamLevel', '4', '退卡', '退卡', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('e493289c8c3a4edeb52c6eabcbe01abe', 'c9c33d538e1c441eb7afcab96ac1d047', 'PicType', '5', '宣传图片', '宣传图片', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('e59872d7b8f240059fc4930f8d185726', '5427eb6d8ef4445e917b5443854ca436', 'BackupInterval', '4', '一个月', '一个月', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('e6142186f346465a8ff7de147b7ec707', 'a62cb9b631184086b08461472a8bdcfe', 'BussLogType', '6', '反结账记录', '反结账记录', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('e6bcb9fd12ae4be19f4f117511cc2f61', '1ba8bce828a2441b93ac0b5f66e14a56', 'DiningEnv', '1', '情侣约会', '情侣约会', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('e7988e15e7f140b09ca7aea6f3288868', '42c92bc90ee64cf78414afaddb206cf4', 'DataLogType', '8', '原料信息', '原料信息', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('e7cd90f6efbd45d8b9ca3e1623370b35', '970931d8c2334b58b8ec1cd475f18efd', 'MemberCardStatus', '5', '退卡', '退卡', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('e80fed942d8744ccaabc1af3e694b134', 'cef5f4172d8b45388755e126de007fef', 'MemberEdu', '7', '小学', '小学', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('e8a2fe300abb45b88a52347409f8554b', '097e28cc41ea473db3c02d6fcfc5209c', 'ForeignCategory', '5', '德文', '德文', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('e969e7abad6740c99c03467e50345619', 'd7246a418f494ce7abb53db8e2da4a4e', 'OrderStatus', '7', '过期', '过期', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('e96f1aa295b741fdaab0f3c717cbc11d', 'd689edcb94254175bf334f519edf1685', 'MemberWork', '6', '个体户', '个体户', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('e9bdd04748fc4400ace22c75049e2635', 'e6523ff4e8ab4c6ea25ca848af077fee', 'SpecialEnv', '4', '有无烟区', '有无烟区', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('ea2be891450d431c93ab3adf23a0f8b1', 'd71a4bea1e1243658aa28c0376c8988a', 'BillOpType', '17', '取消赠菜', '取消赠菜', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('ead5e57b931c4743acbca3b94d3b0fd8', '0956d9147fcf4528b86519ba0bc29430', 'PaymentType', '2', '刷卡', '刷卡', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('ebf721c60341421aaccd4ef08c98a057', '78e320d8aa244fceb940d5a3cf2eaa0b', 'BillOpType', '9', '催菜', '催菜', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('ed7e6f9428864a96a96b86df82167010', '7b4deb292f0f4766896b38eac7de212a', 'Gender', '0', '女', '女', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('eddc0edc9b64449da232bf269e9233da', 'ca832e3788ff41659a886ac52aeb2bc1', 'CamLevel', '1', '充值', '充值', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('eef588cfa2e44e62b3c68ac0505c73a3', '24ab1d1ed3b740d3999f4bba69b7b523', 'RegOrigin', '1', '餐厅服务员注册', '餐厅服务员注册', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('ef846f67da8549b1aa67a0a69336fc58', 'c0069ff089ea46528be4ef06c9194107', 'TerminalDiv', '0', '其他', '其他', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('ef91b6d29c2c4bbfa682a2e5a754b971', '1dfaffffa0b84981a32ddb0465a2616f', 'DataLogType', '2', '餐台信息', '餐台信息', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('f0c24c6afce24607a811d351b440536b', 'd71a4bea1e1243658aa28c0376c8988a', 'BillOpType', '16', '赠菜', '赠菜', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('f116fd8ed05e45e082cd45713b156fd3', '5d5c7ec0c4754f438304f98e83afbe05', 'PungentLevel', '2', '微辣', '微辣', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('f17d8a31a38846688477c50a61b6b0e9', '5427eb6d8ef4445e917b5443854ca436', 'BackupInterval', '2', '二天', '二天', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('f62fa0cea55e453895b888c12cd350eb', 'd7246a418f494ce7abb53db8e2da4a4e', 'OrderStatus', '4', '完结', '完结', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('f76ad19bd50246b6825e733293c59151', 'e6523ff4e8ab4c6ea25ca848af077fee', 'SpecialEnv', '5', '免费停车', '免费停车', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('f875cc64f381487383f9845f6bb94d46', '762f3135be5345a69a434375858fb3ac', 'OcsStatus', '3', '已解决', '已解决', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('f9975699609f409a8ecba2e865e8d848', 'e8b1de9650ff4591bc22386744309c62', 'TabBillType', '1', '预定订单', '预定订单', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('f9beb4fe5fd842d4a53a4f46232c4a9e', '3bbbc800d84a44a59881d08672e28843', 'DishesStatus', '4', '已上菜退菜', '已上菜退菜', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('f9c40859b0ac4cd4af1bf764eb9a56d1', 'c9c33d538e1c441eb7afcab96ac1d047', 'PicType', '4', '广告图片', '广告图片', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('fa3a9df7b8664b198fa24b9bfe1ff809', 'ef87781c49664a2a91e881ac52ce9688', 'BussLogAct', '13', '预订', '预订', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('fad11caaa9ae47fbbbed27fb71f172f5', '0956d9147fcf4528b86519ba0bc29430', 'PaymentType', '9', '网站会员', '网站会员', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('fb92bc1fb0e449f585505f1f33ebf5fc', '659d077eeedb4259968eddc3e15e9be4', 'SpecialStyle', '3', '私房菜', '私房菜', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('fbfa46b0bd0045a797e2ccf72c36c23c', '78e320d8aa244fceb940d5a3cf2eaa0b', 'BillOpType', '3', '修改开台信息', '修改开台信息', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('fe3aaed2705a47668e4ca5e77dac722d', '24ab1d1ed3b740d3999f4bba69b7b523', 'RegOrigin', '2', '会员餐厅内注册', '会员餐厅内注册', '0', '1', null, null, null, null, '0', '0', '0');
INSERT INTO `md_base_code_item` VALUES ('ff68054256a04d1eb0fe7ab478ad8fb4', 'cef5f4172d8b45388755e126de007fef', 'MemberEdu', '2', '本科', '本科', '0', '1', null, null, null, null, '0', '0', '0');

-- ----------------------------
-- Table structure for md_region
-- ----------------------------
DROP TABLE IF EXISTS `md_region`;
CREATE TABLE `md_region` (
  `region_id` varchar(36) NOT NULL,
  `region_div` varchar(32) DEFAULT NULL COMMENT '0 -省 1-市',
  `province_code` varchar(32) DEFAULT NULL,
  `province_name` varchar(128) DEFAULT NULL,
  `city_code` varchar(32) DEFAULT NULL,
  `city_name` varchar(128) DEFAULT NULL,
  `is_enable` varchar(1) DEFAULT NULL,
  `show_seq` int(11) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `is_syn` varchar(1) DEFAULT '0',
  `syn_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`region_id`),
  UNIQUE KEY `region_id` (`region_id`) USING BTREE,
  KEY `FK1ED0EE9CE883ECB9` (`create_by`) USING BTREE,
  KEY `FK1ED0EE9C50AB25CC` (`update_by`) USING BTREE,
  CONSTRAINT `md_region_ibfk_1` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `md_region_ibfk_2` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of md_region
-- ----------------------------
INSERT INTO `md_region` VALUES ('a4070622-89f1-11e2-8712-080058000005', '0', '110000', '北京市', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a410e793-89f1-11e2-8712-080058000005', '0', '120000', '天津市', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a41791d3-89f1-11e2-8712-080058000005', '0', '310000', '上海市', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a41e7af3-89f1-11e2-8712-080058000005', '0', '500000', '重庆市', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a4236d3a-89f1-11e2-8712-080058000005', '0', '130000', '河北省', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a4289efd-89f1-11e2-8712-080058000005', '0', '140000', '山西省', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a42f5139-89f1-11e2-8712-080058000005', '0', '150000', '内蒙古', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a4347d79-89f1-11e2-8712-080058000005', '0', '210000', '辽宁省', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a4397acc-89f1-11e2-8712-080058000005', '0', '220000', '吉林省', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a43eb132-89f1-11e2-8712-080058000005', '0', '230000', '黑龙江省', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a443ae1e-89f1-11e2-8712-080058000005', '0', '320000', '江苏省', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a44a8ed3-89f1-11e2-8712-080058000005', '0', '330000', '浙江省', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a44f8cf0-89f1-11e2-8712-080058000005', '0', '340000', '安徽省', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a454bc01-89f1-11e2-8712-080058000005', '0', '350000', '福建省', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a459badf-89f1-11e2-8712-080058000005', '0', '360000', '江西省', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a45ee7f3-89f1-11e2-8712-080058000005', '0', '370000', '山东省', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a463e706-89f1-11e2-8712-080058000005', '0', '410000', '河南省', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a46913ac-89f1-11e2-8712-080058000005', '0', '420000', '湖北省', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a46e119f-89f1-11e2-8712-080058000005', '0', '430000', '湖南省', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a474f319-89f1-11e2-8712-080058000005', '0', '440000', '广东省', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a479f4c1-89f1-11e2-8712-080058000005', '0', '450000', '广西', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a4827708-89f1-11e2-8712-080058000005', '0', '460000', '海南省', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a4877807-89f1-11e2-8712-080058000005', '0', '510000', '四川省', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a48e522d-89f1-11e2-8712-080058000005', '0', '520000', '贵州省', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a49358f3-89f1-11e2-8712-080058000005', '0', '530000', '云南省', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a49a2ed1-89f1-11e2-8712-080058000005', '0', '540000', '西藏省', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a4a44b34-89f1-11e2-8712-080058000005', '0', '610000', '陕西省', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a4a97a09-89f1-11e2-8712-080058000005', '0', '620000', '甘肃省', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a4ae7795-89f1-11e2-8712-080058000005', '0', '630000', '青海省', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a4b3a6b3-89f1-11e2-8712-080058000005', '0', '640000', '宁夏', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a4b8b4fa-89f1-11e2-8712-080058000005', '0', '650000', '新疆', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a4c139b9-89f1-11e2-8712-080058000005', '0', '710000', '台湾省', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a4c630bf-89f1-11e2-8712-080058000005', '0', '810000', '香港', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a4cd1709-89f1-11e2-8712-080058000005', '0', '820000', '澳门', null, null, '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a4d3cc92-89f1-11e2-8712-080058000005', '1', '130000', '河北省', '130100', '石家庄市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a4d8f56f-89f1-11e2-8712-080058000005', '1', '130000', '河北省', '130200', '唐山市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a4ddf482-89f1-11e2-8712-080058000005', '1', '130000', '河北省', '130300', '秦皇岛市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a4e322e7-89f1-11e2-8712-080058000005', '1', '130000', '河北省', '130400', '邯郸市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a4e8205b-89f1-11e2-8712-080058000005', '1', '130000', '河北省', '130500', '邢台市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a4ed4f69-89f1-11e2-8712-080058000005', '1', '130000', '河北省', '130600', '保定市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a4f2519c-89f1-11e2-8712-080058000005', '1', '130000', '河北省', '130700', '张家口市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a4f7792d-89f1-11e2-8712-080058000005', '1', '130000', '河北省', '130800', '承德市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a4fc7b58-89f1-11e2-8712-080058000005', '1', '130000', '河北省', '130900', '沧州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a501a420-89f1-11e2-8712-080058000005', '1', '130000', '河北省', '131000', '廊坊市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a508560a-89f1-11e2-8712-080058000005', '1', '130000', '河北省', '131100', '衡水市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a50d87a5-89f1-11e2-8712-080058000005', '1', '140000', '山西省', '140100', '太原市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a51285d5-89f1-11e2-8712-080058000005', '1', '140000', '山西省', '140200', '大同市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a517b405-89f1-11e2-8712-080058000005', '1', '140000', '山西省', '140300', '阳泉市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a51cb38b-89f1-11e2-8712-080058000005', '1', '140000', '山西省', '140400', '长治市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a521e928-89f1-11e2-8712-080058000005', '1', '140000', '山西省', '140500', '晋城市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a526dcc3-89f1-11e2-8712-080058000005', '1', '140000', '山西省', '140600', '朔州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a52c0e7a-89f1-11e2-8712-080058000005', '1', '140000', '山西省', '140700', '晋中市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a532bbbe-89f1-11e2-8712-080058000005', '1', '140000', '山西省', '140800', '运城市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a537ec45-89f1-11e2-8712-080058000005', '1', '140000', '山西省', '140900', '忻州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a53ceb4f-89f1-11e2-8712-080058000005', '1', '140000', '山西省', '141000', '临汾市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a5421b95-89f1-11e2-8712-080058000005', '1', '140000', '山西省', '141100', '吕梁市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a547187e-89f1-11e2-8712-080058000005', '1', '150000', '内蒙古', '150100', '呼和浩特市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a54fab51-89f1-11e2-8712-080058000005', '1', '150000', '内蒙古', '150200', '包头市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a554a86b-89f1-11e2-8712-080058000005', '1', '150000', '内蒙古', '150300', '乌海市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a559d7db-89f1-11e2-8712-080058000005', '1', '150000', '内蒙古', '150400', '赤峰市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a55ed868-89f1-11e2-8712-080058000005', '1', '150000', '内蒙古', '150500', '通辽市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a56403f6-89f1-11e2-8712-080058000005', '1', '150000', '内蒙古', '150600', '鄂尔多斯市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a56ab01e-89f1-11e2-8712-080058000005', '1', '150000', '内蒙古', '150700', '呼伦贝尔市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a56fe25d-89f1-11e2-8712-080058000005', '1', '150000', '内蒙古', '150800', '巴彦淖尔市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a574e163-89f1-11e2-8712-080058000005', '1', '150000', '内蒙古', '150900', '乌兰察布市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a57a15c0-89f1-11e2-8712-080058000005', '1', '150000', '内蒙古', '152200', '兴安盟', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a57f0ef4-89f1-11e2-8712-080058000005', '1', '150000', '内蒙古', '152500', '锡林郭勒盟', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a5843c05-89f1-11e2-8712-080058000005', '1', '150000', '内蒙古', '152900', '阿拉善盟', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a58cd0c9-89f1-11e2-8712-080058000005', '1', '210000', '辽宁省', '210100', '沈阳市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a596eb72-89f1-11e2-8712-080058000005', '1', '210000', '辽宁省', '210200', '大连市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a59bdd97-89f1-11e2-8712-080058000005', '1', '210000', '辽宁省', '210300', '鞍山市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a5a1105d-89f1-11e2-8712-080058000005', '1', '210000', '辽宁省', '210400', '抚顺市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a5a60fd7-89f1-11e2-8712-080058000005', '1', '210000', '辽宁省', '210500', '本溪市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a5ab3d25-89f1-11e2-8712-080058000005', '1', '210000', '辽宁省', '210600', '丹东市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a5b39811-89f1-11e2-8712-080058000005', '1', '210000', '辽宁省', '210700', '锦州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a5b8cd1f-89f1-11e2-8712-080058000005', '1', '210000', '辽宁省', '210800', '营口市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a5bdce9d-89f1-11e2-8712-080058000005', '1', '210000', '辽宁省', '210900', '阜新市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a5c4ad24-89f1-11e2-8712-080058000005', '1', '210000', '辽宁省', '211000', '辽阳市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a5c9ad1c-89f1-11e2-8712-080058000005', '1', '210000', '辽宁省', '211100', '盘锦市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a5d0854a-89f1-11e2-8712-080058000005', '1', '210000', '辽宁省', '211200', '铁岭市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a5d58a4b-89f1-11e2-8712-080058000005', '1', '210000', '辽宁省', '211300', '朝阳市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a5dc6a60-89f1-11e2-8712-080058000005', '1', '210000', '辽宁省', '211400', '葫芦岛市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a5e32b7a-89f1-11e2-8712-080058000005', '1', '220000', '吉林省', '220100', '长春市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a5e84269-89f1-11e2-8712-080058000005', '1', '220000', '吉林省', '220200', '吉林市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a5ed36a5-89f1-11e2-8712-080058000005', '1', '220000', '吉林省', '220300', '四平市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a5f262c7-89f1-11e2-8712-080058000005', '1', '220000', '吉林省', '220400', '辽源市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a5f769a5-89f1-11e2-8712-080058000005', '1', '220000', '吉林省', '220500', '通化市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a5fca3e4-89f1-11e2-8712-080058000005', '1', '220000', '吉林省', '220600', '白山市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a601a0f6-89f1-11e2-8712-080058000005', '1', '220000', '吉林省', '220700', '松原市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a607013f-89f1-11e2-8712-080058000005', '1', '220000', '吉林省', '220800', '白城市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a60bcdde-89f1-11e2-8712-080058000005', '1', '220000', '吉林省', '222400', '延边朝鲜族自治州', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a610fcc7-89f1-11e2-8712-080058000005', '1', '230000', '黑龙江省', '230100', '哈尔滨市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a617abc1-89f1-11e2-8712-080058000005', '1', '230000', '黑龙江省', '230200', '齐齐哈尔市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a61cdc93-89f1-11e2-8712-080058000005', '1', '230000', '黑龙江省', '230300', '鸡西市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a621dab3-89f1-11e2-8712-080058000005', '1', '230000', '黑龙江省', '230400', '鹤岗市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a6270642-89f1-11e2-8712-080058000005', '1', '230000', '黑龙江省', '230500', '双鸭山市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a62c0699-89f1-11e2-8712-080058000005', '1', '230000', '黑龙江省', '230600', '大庆市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a634995c-89f1-11e2-8712-080058000005', '1', '230000', '黑龙江省', '230700', '伊春市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a6399525-89f1-11e2-8712-080058000005', '1', '230000', '黑龙江省', '230800', '佳木斯市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a63ec6f5-89f1-11e2-8712-080058000005', '1', '230000', '黑龙江省', '230900', '七台河市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a643c35e-89f1-11e2-8712-080058000005', '1', '230000', '黑龙江省', '231000', '牡丹江市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a648f372-89f1-11e2-8712-080058000005', '1', '230000', '黑龙江省', '231100', '黑河市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a64df0d6-89f1-11e2-8712-080058000005', '1', '230000', '黑龙江省', '231200', '绥化市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a65334cd-89f1-11e2-8712-080058000005', '1', '230000', '黑龙江省', '232700', '大兴安岭地区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a6584361-89f1-11e2-8712-080058000005', '1', '320000', '江苏省', '320100', '南京市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a662646c-89f1-11e2-8712-080058000005', '1', '320000', '江苏省', '320200', '无锡市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a6676242-89f1-11e2-8712-080058000005', '1', '320000', '江苏省', '320300', '徐州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a66c8e2b-89f1-11e2-8712-080058000005', '1', '320000', '江苏省', '320400', '常州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a6718db5-89f1-11e2-8712-080058000005', '1', '320000', '江苏省', '320500', '苏州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a67857a9-89f1-11e2-8712-080058000005', '1', '320000', '江苏省', '320600', '南通市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a67d54fc-89f1-11e2-8712-080058000005', '1', '320000', '江苏省', '320700', '连云港市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a68283a3-89f1-11e2-8712-080058000005', '1', '320000', '江苏省', '320800', '淮安市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a6878a9e-89f1-11e2-8712-080058000005', '1', '320000', '江苏省', '320900', '盐城市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a68cb505-89f1-11e2-8712-080058000005', '1', '320000', '江苏省', '321000', '扬州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a691ad6c-89f1-11e2-8712-080058000005', '1', '320000', '江苏省', '321100', '镇江市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a696de08-89f1-11e2-8712-080058000005', '1', '320000', '江苏省', '321200', '泰州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a69bdba9-89f1-11e2-8712-080058000005', '1', '320000', '江苏省', '321300', '宿迁市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a6a10adb-89f1-11e2-8712-080058000005', '1', '330000', '浙江省', '330100', '杭州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a6a607b3-89f1-11e2-8712-080058000005', '1', '330000', '浙江省', '330200', '宁波市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a6ab3694-89f1-11e2-8712-080058000005', '1', '330000', '浙江省', '330300', '温州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a6b036f3-89f1-11e2-8712-080058000005', '1', '330000', '浙江省', '330400', '嘉兴市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a6b56425-89f1-11e2-8712-080058000005', '1', '330000', '浙江省', '330500', '湖州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a6ba61d2-89f1-11e2-8712-080058000005', '1', '330000', '浙江省', '330600', '绍兴市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a6bf8bd7-89f1-11e2-8712-080058000005', '1', '330000', '浙江省', '330700', '金华市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a6c48e50-89f1-11e2-8712-080058000005', '1', '330000', '浙江省', '330800', '衢州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a6c9b668-89f1-11e2-8712-080058000005', '1', '330000', '浙江省', '330900', '舟山市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a6cebc91-89f1-11e2-8712-080058000005', '1', '330000', '浙江省', '331000', '台州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a6d3f366-89f1-11e2-8712-080058000005', '1', '330000', '浙江省', '331100', '丽水市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a6da9a47-89f1-11e2-8712-080058000005', '1', '340000', '安徽省', '340100', '合肥市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a6dfdd1b-89f1-11e2-8712-080058000005', '1', '340000', '安徽省', '340200', '芜湖市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a6e4c0a9-89f1-11e2-8712-080058000005', '1', '340000', '安徽省', '340300', '蚌埠市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a6e9f5ca-89f1-11e2-8712-080058000005', '1', '340000', '安徽省', '340400', '淮南市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a6eef554-89f1-11e2-8712-080058000005', '1', '340000', '安徽省', '340500', '马鞍山市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a6f42388-89f1-11e2-8712-080058000005', '1', '340000', '安徽省', '340600', '淮北市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a6f920a6-89f1-11e2-8712-080058000005', '1', '340000', '安徽省', '340700', '铜陵市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a6fe4fe1-89f1-11e2-8712-080058000005', '1', '340000', '安徽省', '340800', '安庆市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a7034d71-89f1-11e2-8712-080058000005', '1', '340000', '安徽省', '341000', '黄山市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a708793a-89f1-11e2-8712-080058000005', '1', '340000', '安徽省', '341100', '滁州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a715f523-89f1-11e2-8712-080058000005', '1', '340000', '安徽省', '341200', '阜阳市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a71b2400-89f1-11e2-8712-080058000005', '1', '340000', '安徽省', '341300', '宿州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a7202c47-89f1-11e2-8712-080058000005', '1', '340000', '安徽省', '341400', '巢湖市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a72571bc-89f1-11e2-8712-080058000005', '1', '340000', '安徽省', '341500', '六安市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a7318b26-89f1-11e2-8712-080058000005', '1', '340000', '安徽省', '341600', '亳州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a73646c6-89f1-11e2-8712-080058000005', '1', '340000', '安徽省', '341700', '池州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a73b43db-89f1-11e2-8712-080058000005', '1', '340000', '安徽省', '341800', '宣城市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a740730a-89f1-11e2-8712-080058000005', '1', '350000', '福建省', '350100', '福州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a74570f9-89f1-11e2-8712-080058000005', '1', '350000', '福建省', '350200', '厦门市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a74a9f08-89f1-11e2-8712-080058000005', '1', '350000', '福建省', '350300', '莆田市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a74f9e13-89f1-11e2-8712-080058000005', '1', '350000', '福建省', '350400', '三明市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a754d464-89f1-11e2-8712-080058000005', '1', '350000', '福建省', '350500', '泉州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a759c73e-89f1-11e2-8712-080058000005', '1', '350000', '福建省', '350600', '漳州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a75ef784-89f1-11e2-8712-080058000005', '1', '350000', '福建省', '350700', '南平市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a765a7a2-89f1-11e2-8712-080058000005', '1', '350000', '福建省', '350800', '龙岩市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a76ad5e7-89f1-11e2-8712-080058000005', '1', '350000', '福建省', '350900', '宁德市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a76fd6c5-89f1-11e2-8712-080058000005', '1', '360000', '江西省', '360100', '南昌市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a7750441-89f1-11e2-8712-080058000005', '1', '360000', '江西省', '360200', '景德镇市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a779fe42-89f1-11e2-8712-080058000005', '1', '360000', '江西省', '360300', '萍乡市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a77f30db-89f1-11e2-8712-080058000005', '1', '360000', '江西省', '360400', '九江市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a7842fa0-89f1-11e2-8712-080058000005', '1', '360000', '江西省', '360500', '新余市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a78cae2e-89f1-11e2-8712-080058000005', '1', '360000', '江西省', '360600', '鹰潭市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a7937407-89f1-11e2-8712-080058000005', '1', '360000', '江西省', '360700', '赣州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a798a05f-89f1-11e2-8712-080058000005', '1', '360000', '江西省', '360800', '吉安市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a79d9966-89f1-11e2-8712-080058000005', '1', '360000', '江西省', '360900', '宜春市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a7a2cd85-89f1-11e2-8712-080058000005', '1', '360000', '江西省', '361000', '抚州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a7a7ce26-89f1-11e2-8712-080058000005', '1', '360000', '江西省', '361100', '上饶市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a7acf78a-89f1-11e2-8712-080058000005', '1', '370000', '山东省', '370100', '济南市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a7b1fa28-89f1-11e2-8712-080058000005', '1', '370000', '山东省', '370200', '青岛市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a7b727e9-89f1-11e2-8712-080058000005', '1', '370000', '山东省', '370300', '淄博市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a7bc2647-89f1-11e2-8712-080058000005', '1', '370000', '山东省', '370400', '枣庄市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a7c15488-89f1-11e2-8712-080058000005', '1', '370000', '山东省', '370500', '东营市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a7c6532b-89f1-11e2-8712-080058000005', '1', '370000', '山东省', '370600', '烟台市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a7cb812a-89f1-11e2-8712-080058000005', '1', '370000', '山东省', '370700', '潍坊市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a7d07f5f-89f1-11e2-8712-080058000005', '1', '370000', '山东省', '370800', '济宁市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a7d5a8e4-89f1-11e2-8712-080058000005', '1', '370000', '山东省', '370900', '泰安市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a7dab159-89f1-11e2-8712-080058000005', '1', '370000', '山东省', '371000', '威海市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a7dfda6f-89f1-11e2-8712-080058000005', '1', '370000', '山东省', '371100', '日照市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a7e4d91b-89f1-11e2-8712-080058000005', '1', '370000', '山东省', '371200', '莱芜市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a7e9fe9a-89f1-11e2-8712-080058000005', '1', '370000', '山东省', '371300', '临沂市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a7ef05a9-89f1-11e2-8712-080058000005', '1', '370000', '山东省', '371400', '德州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a7f4347d-89f1-11e2-8712-080058000005', '1', '370000', '山东省', '371500', '聊城市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a7f94cca-89f1-11e2-8712-080058000005', '1', '370000', '山东省', '371600', '滨州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a801c88e-89f1-11e2-8712-080058000005', '1', '370000', '山东省', '371700', '荷泽市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a8087cae-89f1-11e2-8712-080058000005', '1', '410000', '河南省', '410100', '郑州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a80d7a12-89f1-11e2-8712-080058000005', '1', '410000', '河南省', '410200', '开封市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a812a8da-89f1-11e2-8712-080058000005', '1', '410000', '河南省', '410300', '洛阳市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a817a656-89f1-11e2-8712-080058000005', '1', '410000', '河南省', '410400', '平顶山市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a81ce7f6-89f1-11e2-8712-080058000005', '1', '410000', '河南省', '410500', '安阳市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a821d016-89f1-11e2-8712-080058000005', '1', '410000', '河南省', '410600', '鹤壁市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a8270390-89f1-11e2-8712-080058000005', '1', '410000', '河南省', '410700', '新乡市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a82c006d-89f1-11e2-8712-080058000005', '1', '410000', '河南省', '410800', '焦作市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a83131b9-89f1-11e2-8712-080058000005', '1', '410000', '河南省', '410900', '濮阳市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a8362647-89f1-11e2-8712-080058000005', '1', '410000', '河南省', '411000', '许昌市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a83b5b85-89f1-11e2-8712-080058000005', '1', '410000', '河南省', '411100', '漯河市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a8405a56-89f1-11e2-8712-080058000005', '1', '410000', '河南省', '411200', '三门峡市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a84590d9-89f1-11e2-8712-080058000005', '1', '410000', '河南省', '411300', '南阳市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a84a86cf-89f1-11e2-8712-080058000005', '1', '410000', '河南省', '411400', '商丘市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a84fb109-89f1-11e2-8712-080058000005', '1', '410000', '河南省', '411500', '信阳市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a854addd-89f1-11e2-8712-080058000005', '1', '410000', '河南省', '411600', '周口市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a859e2c5-89f1-11e2-8712-080058000005', '1', '410000', '河南省', '411700', '驻马店市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a85ee165-89f1-11e2-8712-080058000005', '1', '420000', '湖北省', '420100', '武汉市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a8640f60-89f1-11e2-8712-080058000005', '1', '420000', '湖北省', '420200', '黄石市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a8691407-89f1-11e2-8712-080058000005', '1', '420000', '湖北省', '420300', '十堰市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a86e3607-89f1-11e2-8712-080058000005', '1', '420000', '湖北省', '420500', '宜昌市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a873364d-89f1-11e2-8712-080058000005', '1', '420000', '湖北省', '420600', '襄樊市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a8786a48-89f1-11e2-8712-080058000005', '1', '420000', '湖北省', '420700', '鄂州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a87d6826-89f1-11e2-8712-080058000005', '1', '420000', '湖北省', '420800', '荆门市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a88291d5-89f1-11e2-8712-080058000005', '1', '420000', '湖北省', '420900', '孝感市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a88793b2-89f1-11e2-8712-080058000005', '1', '420000', '湖北省', '421000', '荆州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a88cc29e-89f1-11e2-8712-080058000005', '1', '420000', '湖北省', '421100', '黄冈市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a891dda5-89f1-11e2-8712-080058000005', '1', '420000', '湖北省', '421200', '咸宁市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a896f0b3-89f1-11e2-8712-080058000005', '1', '420000', '湖北省', '421300', '随州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a89bee1e-89f1-11e2-8712-080058000005', '1', '420000', '湖北省', '422800', '恩施土家族苗族自治州', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a8a11cde-89f1-11e2-8712-080058000005', '1', '420000', '湖北省', '429000', '省直辖行政单位', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a8a61a7b-89f1-11e2-8712-080058000005', '1', '430000', '湖南省', '430100', '长沙市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a8ab4995-89f1-11e2-8712-080058000005', '1', '430000', '湖南省', '430200', '株洲市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a8b04726-89f1-11e2-8712-080058000005', '1', '430000', '湖南省', '430300', '湘潭市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a8b58232-89f1-11e2-8712-080058000005', '1', '430000', '湖南省', '430400', '衡阳市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a8ba6ccf-89f1-11e2-8712-080058000005', '1', '430000', '湖南省', '430500', '邵阳市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a8bfa1ec-89f1-11e2-8712-080058000005', '1', '430000', '湖南省', '430600', '岳阳市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a8c49c79-89f1-11e2-8712-080058000005', '1', '430000', '湖南省', '430700', '常德市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a8c9fe6d-89f1-11e2-8712-080058000005', '1', '430000', '湖南省', '430800', '张家界市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a8d3f9f5-89f1-11e2-8712-080058000005', '1', '430000', '湖南省', '430900', '益阳市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a8dac42a-89f1-11e2-8712-080058000005', '1', '430000', '湖南省', '431000', '郴州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a8dfc397-89f1-11e2-8712-080058000005', '1', '430000', '湖南省', '431100', '永州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a8e4eb7a-89f1-11e2-8712-080058000005', '1', '430000', '湖南省', '431200', '怀化市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a8e9f8b6-89f1-11e2-8712-080058000005', '1', '430000', '湖南省', '431300', '娄底市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a8ef1c4c-89f1-11e2-8712-080058000005', '1', '430000', '湖南省', '433100', '湘西土家族苗族自治州', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a8f41e00-89f1-11e2-8712-080058000005', '1', '440000', '广东省', '440100', '广州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a8f94af0-89f1-11e2-8712-080058000005', '1', '440000', '广东省', '440200', '韶关市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a8fe4a71-89f1-11e2-8712-080058000005', '1', '440000', '广东省', '440300', '深圳市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a90376b5-89f1-11e2-8712-080058000005', '1', '440000', '广东省', '440400', '珠海市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a9086f72-89f1-11e2-8712-080058000005', '1', '440000', '广东省', '440500', '汕头市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a90daea5-89f1-11e2-8712-080058000005', '1', '440000', '广东省', '440600', '佛山市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a9129e91-89f1-11e2-8712-080058000005', '1', '440000', '广东省', '440700', '江门市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a917cbd7-89f1-11e2-8712-080058000005', '1', '440000', '广东省', '440800', '湛江市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a91ccfff-89f1-11e2-8712-080058000005', '1', '440000', '广东省', '440900', '茂名市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a921fc04-89f1-11e2-8712-080058000005', '1', '440000', '广东省', '441200', '肇庆市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a926fc36-89f1-11e2-8712-080058000005', '1', '440000', '广东省', '441300', '惠州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a92c2bbb-89f1-11e2-8712-080058000005', '1', '440000', '广东省', '441400', '梅州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a93128c4-89f1-11e2-8712-080058000005', '1', '440000', '广东省', '441500', '汕尾市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a93661ab-89f1-11e2-8712-080058000005', '1', '440000', '广东省', '441600', '河源市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a93b55d2-89f1-11e2-8712-080058000005', '1', '440000', '广东省', '441700', '阳江市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a9408519-89f1-11e2-8712-080058000005', '1', '440000', '广东省', '441800', '清远市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a94582e3-89f1-11e2-8712-080058000005', '1', '440000', '广东省', '441900', '东莞市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a94ab34a-89f1-11e2-8712-080058000005', '1', '440000', '广东省', '442000', '中山市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a94faf0a-89f1-11e2-8712-080058000005', '1', '440000', '广东省', '445100', '潮州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a954e837-89f1-11e2-8712-080058000005', '1', '440000', '广东省', '445200', '揭阳市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a959d564-89f1-11e2-8712-080058000005', '1', '440000', '广东省', '445300', '云浮市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a95f0765-89f1-11e2-8712-080058000005', '1', '450000', '广西', '450100', '南宁市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a9677faa-89f1-11e2-8712-080058000005', '1', '450000', '广西', '450200', '柳州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a96e4979-89f1-11e2-8712-080058000005', '1', '450000', '广西', '450300', '桂林市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a97346dc-89f1-11e2-8712-080058000005', '1', '450000', '广西', '450400', '梧州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a978740a-89f1-11e2-8712-080058000005', '1', '450000', '广西', '450500', '北海市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a97d6feb-89f1-11e2-8712-080058000005', '1', '450000', '广西', '450600', '防城港市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a9845568-89f1-11e2-8712-080058000005', '1', '450000', '广西', '450700', '钦州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a9895837-89f1-11e2-8712-080058000005', '1', '450000', '广西', '450800', '贵港市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a98e8d86-89f1-11e2-8712-080058000005', '1', '450000', '广西', '450900', '玉林市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a9937ead-89f1-11e2-8712-080058000005', '1', '450000', '广西', '451000', '百色市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a998bc09-89f1-11e2-8712-080058000005', '1', '450000', '广西', '451100', '贺州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a9a116cc-89f1-11e2-8712-080058000005', '1', '450000', '广西', '451200', '河池市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a9aebf89-89f1-11e2-8712-080058000005', '1', '450000', '广西', '451300', '来宾市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a9b3b3b8-89f1-11e2-8712-080058000005', '1', '450000', '广西', '451400', '崇左市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a9b8ebfe-89f1-11e2-8712-080058000005', '1', '460000', '海南省', '460100', '海口市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a9bde9ab-89f1-11e2-8712-080058000005', '1', '460000', '海南省', '460200', '三亚市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a9c31d99-89f1-11e2-8712-080058000005', '1', '510000', '四川省', '510100', '成都市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a9c7fbab-89f1-11e2-8712-080058000005', '1', '510000', '四川省', '510300', '自贡市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a9cd2d7f-89f1-11e2-8712-080058000005', '1', '510000', '四川省', '510400', '攀枝花市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a9d22ab5-89f1-11e2-8712-080058000005', '1', '510000', '四川省', '510500', '泸州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a9d75965-89f1-11e2-8712-080058000005', '1', '510000', '四川省', '510600', '德阳市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a9dc5727-89f1-11e2-8712-080058000005', '1', '510000', '四川省', '510700', '绵阳市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a9e188a8-89f1-11e2-8712-080058000005', '1', '510000', '四川省', '510800', '广元市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a9e6853b-89f1-11e2-8712-080058000005', '1', '510000', '四川省', '510900', '遂宁市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a9ebad5f-89f1-11e2-8712-080058000005', '1', '510000', '四川省', '511000', '内江市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a9f0ffbd-89f1-11e2-8712-080058000005', '1', '510000', '四川省', '511100', '乐山市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a9f6068a-89f1-11e2-8712-080058000005', '1', '510000', '四川省', '511300', '南充市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('a9fadde0-89f1-11e2-8712-080058000005', '1', '510000', '四川省', '511400', '眉山市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('aa001586-89f1-11e2-8712-080058000005', '1', '510000', '四川省', '511500', '宜宾市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('aa0507f5-89f1-11e2-8712-080058000005', '1', '510000', '四川省', '511600', '广安市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('aa0a3c42-89f1-11e2-8712-080058000005', '1', '510000', '四川省', '511700', '达州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('aa0f4a6b-89f1-11e2-8712-080058000005', '1', '510000', '四川省', '511800', '雅安市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('aa14681b-89f1-11e2-8712-080058000005', '1', '510000', '四川省', '511900', '巴中市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('aa1967b9-89f1-11e2-8712-080058000005', '1', '510000', '四川省', '512000', '资阳市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('aa1e95e5-89f1-11e2-8712-080058000005', '1', '510000', '四川省', '513200', '阿坝藏族羌族自治州', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('aa2700c2-89f1-11e2-8712-080058000005', '1', '510000', '四川省', '513300', '甘孜藏族自治州', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('aa937552-89f1-11e2-8712-080058000005', '1', '510000', '四川省', '513400', '凉山彝族自治州', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('aa9c1227-89f1-11e2-8712-080058000005', '1', '520000', '贵州省', '520100', '贵阳市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('aaa2c03c-89f1-11e2-8712-080058000005', '1', '520000', '贵州省', '520200', '六盘水市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('aab581d4-89f1-11e2-8712-080058000005', '1', '520000', '贵州省', '520300', '遵义市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('aac30145-89f1-11e2-8712-080058000005', '1', '520000', '贵州省', '520400', '安顺市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('aaced166-89f1-11e2-8712-080058000005', '1', '520000', '贵州省', '522200', '铜仁地区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('aad401a8-89f1-11e2-8712-080058000005', '1', '520000', '贵州省', '522300', '黔西南布依族苗族自治州', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('aad8fb1a-89f1-11e2-8712-080058000005', '1', '520000', '贵州省', '522400', '毕节地区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('aade295e-89f1-11e2-8712-080058000005', '1', '520000', '贵州省', '522600', '黔东南苗族侗族自治州', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('aae32827-89f1-11e2-8712-080058000005', '1', '520000', '贵州省', '522700', '黔南布依族苗族自治州', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('aae8548f-89f1-11e2-8712-080058000005', '1', '530000', '云南省', '530100', '昆明市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('aaed5467-89f1-11e2-8712-080058000005', '1', '530000', '云南省', '530300', '曲靖市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('aaf28364-89f1-11e2-8712-080058000005', '1', '530000', '云南省', '530400', '玉溪市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('aaf78665-89f1-11e2-8712-080058000005', '1', '530000', '云南省', '530500', '保山市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('aafcb2b4-89f1-11e2-8712-080058000005', '1', '530000', '云南省', '530600', '昭通市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ab01afd2-89f1-11e2-8712-080058000005', '1', '530000', '云南省', '530700', '丽江市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ab06e4b2-89f1-11e2-8712-080058000005', '1', '530000', '云南省', '530800', '思茅市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ab146010-89f1-11e2-8712-080058000005', '1', '530000', '云南省', '530900', '临沧市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ab1b41c0-89f1-11e2-8712-080058000005', '1', '530000', '云南省', '532300', '楚雄彝族自治州', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ab2036c5-89f1-11e2-8712-080058000005', '1', '530000', '云南省', '532500', '红河哈尼族彝族自治州', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ab25642b-89f1-11e2-8712-080058000005', '1', '530000', '云南省', '532600', '文山壮族苗族自治州', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ab2a6b09-89f1-11e2-8712-080058000005', '1', '530000', '云南省', '532800', '西双版纳傣族自治州', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ab2f97d0-89f1-11e2-8712-080058000005', '1', '530000', '云南省', '532900', '大理白族自治州', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ab381522-89f1-11e2-8712-080058000005', '1', '530000', '云南省', '533100', '德宏傣族景颇族自治州', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ab3d28d0-89f1-11e2-8712-080058000005', '1', '530000', '云南省', '533300', '怒江傈僳族自治州', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ab422288-89f1-11e2-8712-080058000005', '1', '530000', '云南省', '533400', '迪庆藏族自治州', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ab4fccef-89f1-11e2-8712-080058000005', '1', '540000', '西藏', '540100', '拉萨市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ab59ff0e-89f1-11e2-8712-080058000005', '1', '540000', '西藏', '542100', '昌都地区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ab62712f-89f1-11e2-8712-080058000005', '1', '540000', '西藏', '542200', '山南地区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ab6af27b-89f1-11e2-8712-080058000005', '1', '540000', '西藏', '542300', '日喀则地区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ab701684-89f1-11e2-8712-080058000005', '1', '540000', '西藏', '542400', '那曲地区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ab74f645-89f1-11e2-8712-080058000005', '1', '540000', '西藏', '542500', '阿里地区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ab7a1c89-89f1-11e2-8712-080058000005', '1', '540000', '西藏', '542600', '林芝地区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ab879733-89f1-11e2-8712-080058000005', '1', '610000', '陕西省', '610100', '西安市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ab8e8b27-89f1-11e2-8712-080058000005', '1', '610000', '陕西省', '610200', '铜川市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ab9374fa-89f1-11e2-8712-080058000005', '1', '610000', '陕西省', '610300', '宝鸡市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ab98b9d3-89f1-11e2-8712-080058000005', '1', '610000', '陕西省', '610400', '咸阳市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ab9da13a-89f1-11e2-8712-080058000005', '1', '610000', '陕西省', '610500', '渭南市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('aba2cf97-89f1-11e2-8712-080058000005', '1', '610000', '陕西省', '610600', '延安市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('aba7ce64-89f1-11e2-8712-080058000005', '1', '610000', '陕西省', '610700', '汉中市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('abacfb8d-89f1-11e2-8712-080058000005', '1', '610000', '陕西省', '610800', '榆林市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('abb1f9db-89f1-11e2-8712-080058000005', '1', '610000', '陕西省', '610900', '安康市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('abb73f54-89f1-11e2-8712-080058000005', '1', '610000', '陕西省', '611000', '商洛市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('abbc2c33-89f1-11e2-8712-080058000005', '1', '620000', '甘肃省', '620100', '兰州市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('abc15aa9-89f1-11e2-8712-080058000005', '1', '620000', '甘肃省', '620200', '嘉峪关市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('abc66d50-89f1-11e2-8712-080058000005', '1', '620000', '甘肃省', '620300', '金昌市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('abcb8732-89f1-11e2-8712-080058000005', '1', '620000', '甘肃省', '620400', '白银市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('abd09311-89f1-11e2-8712-080058000005', '1', '620000', '甘肃省', '620500', '天水市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('abd5b087-89f1-11e2-8712-080058000005', '1', '620000', '甘肃省', '620600', '武威市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('abdadd7f-89f1-11e2-8712-080058000005', '1', '620000', '甘肃省', '620700', '张掖市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('abdff0c2-89f1-11e2-8712-080058000005', '1', '620000', '甘肃省', '620800', '平凉市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('abe50546-89f1-11e2-8712-080058000005', '1', '620000', '甘肃省', '620900', '酒泉市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('abea32e2-89f1-11e2-8712-080058000005', '1', '620000', '甘肃省', '621000', '庆阳市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('abf0e202-89f1-11e2-8712-080058000005', '1', '620000', '甘肃省', '621100', '定西市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('abf5efb4-89f1-11e2-8712-080058000005', '1', '620000', '甘肃省', '621200', '陇南市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('abfb0eea-89f1-11e2-8712-080058000005', '1', '620000', '甘肃省', '622900', '临夏回族自治州', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac004305-89f1-11e2-8712-080058000005', '1', '620000', '甘肃省', '623000', '甘南藏族自治州', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac052bfa-89f1-11e2-8712-080058000005', '1', '630000', '青海省', '630100', '西宁市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac0a43e0-89f1-11e2-8712-080058000005', '1', '630000', '青海省', '632100', '海东地区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac0f4bfe-89f1-11e2-8712-080058000005', '1', '630000', '青海省', '632200', '海北藏族自治州', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac1475ea-89f1-11e2-8712-080058000005', '1', '630000', '青海省', '632300', '黄南藏族自治州', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac199528-89f1-11e2-8712-080058000005', '1', '630000', '青海省', '632500', '海南藏族自治州', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac1e9d52-89f1-11e2-8712-080058000005', '1', '630000', '青海省', '632600', '果洛藏族自治州', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac239b2d-89f1-11e2-8712-080058000005', '1', '630000', '青海省', '632700', '玉树藏族自治州', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac28cd88-89f1-11e2-8712-080058000005', '1', '630000', '青海省', '632800', '海西蒙古族藏族自治州', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac2de17c-89f1-11e2-8712-080058000005', '1', '640000', '宁夏', '640100', '银川市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac32f639-89f1-11e2-8712-080058000005', '1', '640000', '宁夏', '640200', '石嘴山市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac37f833-89f1-11e2-8712-080058000005', '1', '640000', '宁夏', '640300', '吴忠市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac3d4101-89f1-11e2-8712-080058000005', '1', '640000', '宁夏', '640400', '固原市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac4220df-89f1-11e2-8712-080058000005', '1', '640000', '宁夏', '640500', '中卫市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac474c3d-89f1-11e2-8712-080058000005', '1', '650000', '新疆', '650100', '乌鲁木齐市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac4c4eb1-89f1-11e2-8712-080058000005', '1', '650000', '新疆', '650200', '克拉玛依市', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac532d97-89f1-11e2-8712-080058000005', '1', '650000', '新疆', '652100', '吐鲁番地区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac59e6c0-89f1-11e2-8712-080058000005', '1', '650000', '新疆', '652200', '哈密地区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac5f1144-89f1-11e2-8712-080058000005', '1', '650000', '新疆', '652300', '昌吉回族自治州', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac6409c8-89f1-11e2-8712-080058000005', '1', '650000', '新疆', '652700', '博尔塔拉蒙古自治州', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac694073-89f1-11e2-8712-080058000005', '1', '650000', '新疆', '652800', '巴音郭楞蒙古自治州', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac6e3c82-89f1-11e2-8712-080058000005', '1', '650000', '新疆', '652900', '阿克苏地区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac736c9b-89f1-11e2-8712-080058000005', '1', '650000', '新疆', '653000', '克孜勒苏柯尔克孜自治州', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac786b1a-89f1-11e2-8712-080058000005', '1', '650000', '新疆', '653100', '喀什地区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac7d9b1e-89f1-11e2-8712-080058000005', '1', '650000', '新疆', '653200', '和田地区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac8295e4-89f1-11e2-8712-080058000005', '1', '650000', '新疆', '654000', '伊犁哈萨克自治州', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac87bb84-89f1-11e2-8712-080058000005', '1', '650000', '新疆', '654200', '塔城地区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac8cbbb6-89f1-11e2-8712-080058000005', '1', '650000', '新疆', '654300', '阿勒泰地区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac91f0cb-89f1-11e2-8712-080058000005', '1', '650000', '新疆', '659000', '省直辖行政单位', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac96f27b-89f1-11e2-8712-080058000005', '1', '110000', '北京市', '110101', '东城区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ac9c19e6-89f1-11e2-8712-080058000005', '1', '110000', '北京市', '110102', '西城区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('aca118bc-89f1-11e2-8712-080058000005', '1', '110000', '北京市', '110103', '崇文区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('aca64e3c-89f1-11e2-8712-080058000005', '1', '110000', '北京市', '110104', '宣武区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('acab4736-89f1-11e2-8712-080058000005', '1', '110000', '北京市', '110105', '朝阳区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('acb08f86-89f1-11e2-8712-080058000005', '1', '110000', '北京市', '110106', '丰台区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('acbaa563-89f1-11e2-8712-080058000005', '1', '110000', '北京市', '110107', '石景山区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('acc165d8-89f1-11e2-8712-080058000005', '1', '110000', '北京市', '110108', '海淀区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('acc66587-89f1-11e2-8712-080058000005', '1', '110000', '北京市', '110109', '门头沟区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('accb9467-89f1-11e2-8712-080058000005', '1', '110000', '北京市', '110111', '房山区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('acd0984a-89f1-11e2-8712-080058000005', '1', '110000', '北京市', '110112', '通州区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('acd5d6a0-89f1-11e2-8712-080058000005', '1', '110000', '北京市', '110113', '顺义区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('acdabf47-89f1-11e2-8712-080058000005', '1', '110000', '北京市', '110114', '昌平区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('acdff247-89f1-11e2-8712-080058000005', '1', '110000', '北京市', '110115', '大兴区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ace6a202-89f1-11e2-8712-080058000005', '1', '110000', '北京市', '110116', '怀柔区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('acebcdb2-89f1-11e2-8712-080058000005', '1', '110000', '北京市', '110117', '平谷区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('acf0cc56-89f1-11e2-8712-080058000005', '1', '110000', '北京市', '110128', '密云县', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('acf6000a-89f1-11e2-8712-080058000005', '1', '110000', '北京市', '110129', '延庆县', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('acfaf714-89f1-11e2-8712-080058000005', '1', '120000', '天津市', '120101', '和平区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ad002e5f-89f1-11e2-8712-080058000005', '1', '120000', '天津市', '120102', '河东区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ad052c01-89f1-11e2-8712-080058000005', '1', '120000', '天津市', '120103', '河西区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ad0a56a5-89f1-11e2-8712-080058000005', '1', '120000', '天津市', '120104', '南开区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ad0f588f-89f1-11e2-8712-080058000005', '1', '120000', '天津市', '120105', '河北区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ad148664-89f1-11e2-8712-080058000005', '1', '120000', '天津市', '120106', '红桥区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ad19853e-89f1-11e2-8712-080058000005', '1', '120000', '天津市', '120107', '塘沽区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ad1eb552-89f1-11e2-8712-080058000005', '1', '120000', '天津市', '120108', '汉沽区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ad271248-89f1-11e2-8712-080058000005', '1', '120000', '天津市', '120109', '大港区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ad2fb594-89f1-11e2-8712-080058000005', '1', '120000', '天津市', '120110', '东丽区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ad34a69e-89f1-11e2-8712-080058000005', '1', '120000', '天津市', '120111', '西青区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ad39de48-89f1-11e2-8712-080058000005', '1', '120000', '天津市', '120112', '津南区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ad3ece5d-89f1-11e2-8712-080058000005', '1', '120000', '天津市', '120113', '北辰区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ad43fef9-89f1-11e2-8712-080058000005', '1', '120000', '天津市', '120114', '武清区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ad4900fa-89f1-11e2-8712-080058000005', '1', '120000', '天津市', '120115', '宝坻区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ad4e313c-89f1-11e2-8712-080058000005', '1', '310000', '上海市', '310101', '黄浦区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ad532d26-89f1-11e2-8712-080058000005', '1', '310000', '上海市', '310103', '卢湾区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ad585c23-89f1-11e2-8712-080058000005', '1', '310000', '上海市', '310104', '徐汇区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ad5ef45c-89f1-11e2-8712-080058000005', '1', '310000', '上海市', '310105', '长宁区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ad642320-89f1-11e2-8712-080058000005', '1', '310000', '上海市', '310106', '静安区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ad692114-89f1-11e2-8712-080058000005', '1', '310000', '上海市', '310107', '普陀区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ad6e5a65-89f1-11e2-8712-080058000005', '1', '310000', '上海市', '310108', '闸北区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ad734867-89f1-11e2-8712-080058000005', '1', '310000', '上海市', '310109', '虹口区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ad787bf6-89f1-11e2-8712-080058000005', '1', '310000', '上海市', '310110', '杨浦区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ad7d7929-89f1-11e2-8712-080058000005', '1', '310000', '上海市', '310112', '闵行区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ad82a9b0-89f1-11e2-8712-080058000005', '1', '310000', '上海市', '310113', '宝山区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ad87a6c6-89f1-11e2-8712-080058000005', '1', '310000', '上海市', '310114', '嘉定区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ad8cd93a-89f1-11e2-8712-080058000005', '1', '310000', '上海市', '310115', '浦东新区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ad937c94-89f1-11e2-8712-080058000005', '1', '310000', '上海市', '310116', '金山区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ad98b45b-89f1-11e2-8712-080058000005', '1', '310000', '上海市', '310117', '松江区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ad9db338-89f1-11e2-8712-080058000005', '1', '310000', '上海市', '310118', '青浦区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ada2e79d-89f1-11e2-8712-080058000005', '1', '310000', '上海市', '310119', '南汇区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ada7dd4a-89f1-11e2-8712-080058000005', '1', '310000', '上海市', '310120', '奉贤区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('adb5a75d-89f1-11e2-8712-080058000005', '1', '500000', '重庆市', '500101', '万州区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('adbfdca4-89f1-11e2-8712-080058000005', '1', '500000', '重庆市', '500102', '涪陵区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('adc4cd4c-89f1-11e2-8712-080058000005', '1', '500000', '重庆市', '500103', '渝中区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('adc9c350-89f1-11e2-8712-080058000005', '1', '500000', '重庆市', '500104', '大渡口区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('adcef90d-89f1-11e2-8712-080058000005', '1', '500000', '重庆市', '500105', '江北区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('add3f644-89f1-11e2-8712-080058000005', '1', '500000', '重庆市', '500106', '沙坪坝区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('add9257a-89f1-11e2-8712-080058000005', '1', '500000', '重庆市', '500107', '九龙坡区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('adde23f5-89f1-11e2-8712-080058000005', '1', '500000', '重庆市', '500108', '南岸区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ade3537e-89f1-11e2-8712-080058000005', '1', '500000', '重庆市', '500109', '北碚区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ade8503d-89f1-11e2-8712-080058000005', '1', '500000', '重庆市', '500110', '万盛区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('adf5fa4e-89f1-11e2-8712-080058000005', '1', '500000', '重庆市', '500111', '双桥区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('adfb1099-89f1-11e2-8712-080058000005', '1', '500000', '重庆市', '500112', '渝北区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ae00230f-89f1-11e2-8712-080058000005', '1', '500000', '重庆市', '500113', '巴南区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ae052176-89f1-11e2-8712-080058000005', '1', '500000', '重庆市', '500114', '黔江区', '1', '0', null, null, null, null, '0', '0', '0');
INSERT INTO `md_region` VALUES ('ae0a53b4-89f1-11e2-8712-080058000005', '1', '500000', '重庆市', '500115', '长寿区', '1', '0', null, null, null, null, '0', '0', '0');

-- ----------------------------
-- Table structure for ocm_canyin_version
-- ----------------------------
DROP TABLE IF EXISTS `ocm_canyin_version`;
CREATE TABLE `ocm_canyin_version` (
  `ocv_id` varchar(36) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_syn` varchar(1) DEFAULT NULL,
  `syn_version` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `notes` varchar(1024) DEFAULT NULL,
  `ver_la` varchar(16) DEFAULT NULL,
  `ver_name` varchar(16) DEFAULT NULL,
  `ver_number` varchar(16) DEFAULT NULL,
  `ver_size` int(11) DEFAULT NULL,
  `ver_type` varchar(32) DEFAULT NULL,
  `ver_url` varchar(1024) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ocv_id`),
  UNIQUE KEY `ocv_id` (`ocv_id`),
  KEY `FKC05DA30DE883ECB9` (`create_by`),
  KEY `FKC05DA30D50AB25CC` (`update_by`),
  CONSTRAINT `FKC05DA30D50AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FKC05DA30DE883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ocm_canyin_version
-- ----------------------------

-- ----------------------------
-- Table structure for ocm_visit_log
-- ----------------------------
DROP TABLE IF EXISTS `ocm_visit_log`;
CREATE TABLE `ocm_visit_log` (
  `visit_log_id` varchar(36) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_syn` varchar(1) DEFAULT NULL,
  `syn_version` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `action_url` varchar(32) DEFAULT NULL,
  `city_code` varchar(32) DEFAULT NULL,
  `city_name` varchar(128) DEFAULT NULL,
  `mixi8_version` varchar(32) DEFAULT NULL,
  `notes` varchar(1024) DEFAULT NULL,
  `province_code` varchar(32) DEFAULT NULL,
  `province_name` varchar(128) DEFAULT NULL,
  `region_div` varchar(32) DEFAULT NULL,
  `region_id` varchar(36) DEFAULT NULL,
  `rest_id` varchar(36) DEFAULT NULL,
  `terminal_address` varchar(32) DEFAULT NULL,
  `terminal_cpu_hz` varchar(255) DEFAULT NULL,
  `terminal_cpu_num` int(11) DEFAULT NULL,
  `terminal_ip` varchar(32) DEFAULT NULL,
  `terminal_mac` varchar(256) DEFAULT NULL,
  `terminal_memory` varchar(32) DEFAULT NULL,
  `terminal_os_type` varchar(128) DEFAULT NULL,
  `terminal_os_version` varchar(128) DEFAULT NULL,
  `terminal_type` varchar(32) DEFAULT NULL,
  `visit_type` varchar(36) DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`visit_log_id`),
  UNIQUE KEY `visit_log_id` (`visit_log_id`),
  KEY `FKE1335EAAE883ECB9` (`create_by`),
  KEY `FKE1335EAA50AB25CC` (`update_by`),
  CONSTRAINT `FKE1335EAA50AB25CC` FOREIGN KEY (`update_by`) REFERENCES `cm_employee` (`emp_id`),
  CONSTRAINT `FKE1335EAAE883ECB9` FOREIGN KEY (`create_by`) REFERENCES `cm_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ocm_visit_log
-- ----------------------------
