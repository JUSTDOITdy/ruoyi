/*
Navicat MySQL Data Transfer

Source Server         : ruoyi
Source Server Version : 50555
Source Host           : localhost:3306
Source Database       : ry

Target Server Type    : MYSQL
Target Server Version : 50555
File Encoding         : 65001

Date: 2019-08-21 16:37:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `app_client`
-- ----------------------------
DROP TABLE IF EXISTS `app_client`;
CREATE TABLE `app_client` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客户表id',
  `type` varchar(4) DEFAULT NULL COMMENT '客户类型【1：公司 2：个人】',
  `client_name` varchar(50) DEFAULT NULL COMMENT '公司名称 / 姓名',
  `province` varchar(20) DEFAULT NULL COMMENT '省份',
  `city` varchar(20) DEFAULT NULL COMMENT '城市',
  `region` varchar(20) DEFAULT NULL COMMENT '市区',
  `site` varchar(100) DEFAULT NULL COMMENT '单位地址',
  `client_kind` varchar(20) DEFAULT NULL COMMENT '客户种类',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机',
  `word_phone` varchar(20) DEFAULT NULL COMMENT '工作电话',
  `code` varchar(20) DEFAULT NULL COMMENT '编号',
  `remarks` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='客户表';

-- ----------------------------
-- Records of app_client
-- ----------------------------
INSERT INTO `app_client` VALUES ('6', '公司', '李阿劳斯丹劳', '北京市', '北京市市辖区', '东城区', '北京', '普通用户', '18722365874', '18756244123', '123456', null);
INSERT INTO `app_client` VALUES ('7', '公司', '李坎饥饿', '北京市', '北京市市辖区', '东城区', '北极', '普通用户', '1456', '456', '456', null);
INSERT INTO `app_client` VALUES ('15', '个人', '打开机', '北京市', '北京市市辖区', '东城区', '帮超级兵', '普通用户', '456', '456', '456', null);
INSERT INTO `app_client` VALUES ('18', '个人', '阎王', '北京市', '北京市市辖区', '东城区', '阿达的', '普通用户', '678', '456', '456', null);
INSERT INTO `app_client` VALUES ('19', '个人', '超人', '北京市', '北京市市辖区', '东城区', '发樊登', '业务合作商', '18722354213', '456', '456', null);
INSERT INTO `app_client` VALUES ('20', '个人', '蝙蝠侠', '北京市', '北京市市辖区', '东城区', '阿达的', '普通用户', '456', '123', '123', null);
INSERT INTO `app_client` VALUES ('21', '个人', '赵云', '北京市', '北京市市辖区', '东城区', '阿达的', '普通用户', '18722354213', '456', '456', null);
INSERT INTO `app_client` VALUES ('22', '个人', '李白', '北京市', '北京市市辖区', '东城区', '长城', '普通用户', '18722354213', '456', '546', null);
INSERT INTO `app_client` VALUES ('23', '个人', '杜甫', '北京市', '北京市市辖区', '东城区', '发', '普通用户', '123', '456', '123', null);
INSERT INTO `app_client` VALUES ('24', '个人', '诸葛亮', '北京市', '北京市市辖区', '东城区', '卧龙', '普通用户', '546', '123', '789', null);
INSERT INTO `app_client` VALUES ('25', '个人', '李洛克', '北京市', '北京市市辖区', '东城区', '破出具', '普通用户', '456', '789', '456', null);
INSERT INTO `app_client` VALUES ('26', '个人', '李俊凯', '北京市', '北京市市辖区', '东城区', '破出具', '普通用户', '456', '123', '123', null);
INSERT INTO `app_client` VALUES ('27', '个人', '李讲开讲老', '北京市', '北京市市辖区', '东城区', '喊钢筋', '普通用户', '1423213', '456456', '54654656', null);

-- ----------------------------
-- Table structure for `app_detailed`
-- ----------------------------
DROP TABLE IF EXISTS `app_detailed`;
CREATE TABLE `app_detailed` (
  `detailed_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '清单表id',
  `coded` varchar(50) DEFAULT NULL COMMENT '关联订单表',
  `product_id` int(11) DEFAULT NULL COMMENT '关联产品表',
  `product` varchar(50) DEFAULT NULL COMMENT '产品',
  `worksName` varchar(50) DEFAULT NULL COMMENT '软件（作品）名字',
  `price` int(10) DEFAULT NULL COMMENT '价格',
  `ghostWrite` varchar(10) DEFAULT NULL COMMENT '是否代写',
  `amount` int(5) DEFAULT NULL COMMENT '数量',
  `delivery_time` date DEFAULT NULL COMMENT '发货时间',
  `tracking_number` varchar(50) DEFAULT NULL COMMENT '快递单号',
  `serialsNumber` varchar(20) DEFAULT NULL COMMENT '流水号',
  `submitTime` date DEFAULT NULL COMMENT '递交日期',
  PRIMARY KEY (`detailed_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COMMENT='清单表';

-- ----------------------------
-- Records of app_detailed
-- ----------------------------
INSERT INTO `app_detailed` VALUES ('46', '154', null, '软著:5-10天', null, '155', null, '155', null, '155', null, null);
INSERT INTO `app_detailed` VALUES ('47', null, null, '软著:5-10天', null, '11', null, '11', null, '11', null, null);
INSERT INTO `app_detailed` VALUES ('48', null, null, '软著:5-10天', null, '11', null, '11', null, '11', null, null);
INSERT INTO `app_detailed` VALUES ('49', null, null, '软著:5-10天', null, '22', null, '22', null, '22', null, null);
INSERT INTO `app_detailed` VALUES ('50', '836525339', null, '软著:5-10天', null, '333', null, '333', null, '333', null, null);
INSERT INTO `app_detailed` VALUES ('51', '0', null, '软著:5-10天', null, '55', null, '55', null, '55', null, null);
INSERT INTO `app_detailed` VALUES ('61', '123456789', null, '软著:5-10天', null, '777', null, '77', null, '77', null, null);
INSERT INTO `app_detailed` VALUES ('62', '123456789', null, '商标:15-20日', null, '7777', null, '77', null, '77', null, null);
INSERT INTO `app_detailed` VALUES ('63', '666', null, '软著:5-10天', null, '666', null, null, null, null, null, null);
INSERT INTO `app_detailed` VALUES ('64', '666', null, '软著:5-10天', null, '666', null, null, null, null, null, null);
INSERT INTO `app_detailed` VALUES ('65', '777', null, '软著:5-10天', '大富翁', '100000', null, null, null, '41465', '123', null);
INSERT INTO `app_detailed` VALUES ('66', '777', null, '商标:15-20日', '斗地主', '1212', null, null, null, '45645', '123123', null);
INSERT INTO `app_detailed` VALUES ('67', '88', null, '作品:当天', '韩庚', '86', null, null, '2019-08-16', '786', '6786', '2019-08-16');
INSERT INTO `app_detailed` VALUES ('68', '88', null, '软著:5-10天', '老旧', '82', null, null, '2019-08-16', '456', '546', '2019-08-16');
INSERT INTO `app_detailed` VALUES ('69', '9999', null, '软著:5-10天', '999', '99', null, null, '2019-08-16', '99', '99', '2019-08-16');
INSERT INTO `app_detailed` VALUES ('70', '10245', null, '软著:5-10天', '代考', '2536', null, null, '2019-08-16', '5426', '6345', '2019-08-16');
INSERT INTO `app_detailed` VALUES ('71', '456', null, '软著:5-10天', '十几块', '456', null, null, '2019-08-16', '456', '456', '2019-08-16');
INSERT INTO `app_detailed` VALUES ('72', '6565', null, '软著:5-10天', '566', '566', null, null, '2019-08-16', '6565', '65265', '2019-08-16');
INSERT INTO `app_detailed` VALUES ('73', '521', null, '软著:5-10天', '521', '521', null, null, '2019-08-16', '521', '521', '2019-08-16');
INSERT INTO `app_detailed` VALUES ('74', '5421', null, '软著:5-10天', '5421', '5421', '是', null, '2019-08-16', '5421', '5421', '2019-08-16');
INSERT INTO `app_detailed` VALUES ('75', '6535', null, '软著:5-10天', '563563', '563563', '看老旧', null, '2019-08-16', '563563', '563685', '2019-08-16');
INSERT INTO `app_detailed` VALUES ('76', '123546456456', null, '软著:5-10天', '546', '456', '是', null, '2019-08-20', '456', '456', '2019-08-20');
INSERT INTO `app_detailed` VALUES ('77', '123546456456', null, '软著:5-10天', '789', '11', '是', null, '2019-07-16', '786', '456', '2019-08-21');
INSERT INTO `app_detailed` VALUES ('78', '123', null, '商标:15-20日', '斗地主', '123123', '是', null, '2019-08-21', '123', '456', '2019-08-21');
INSERT INTO `app_detailed` VALUES ('79', '123', null, '作品:当天', '大富翁', '456', '是', null, '2019-08-21', '123', '456', '2019-08-21');
INSERT INTO `app_detailed` VALUES ('80', '13564978', null, '作品:当天', '斗地主', '2000', '是', null, '2019-07-16', '123453', '45621378923', '2019-08-21');
INSERT INTO `app_detailed` VALUES ('81', '13564978', null, '商标111111:100', '大富翁', '1000', '是', null, '2019-07-16', '45612387', '123456789', '2019-08-21');
INSERT INTO `app_detailed` VALUES ('82', '99999', null, '软著:5-10天', '斗地主', '2000', '是', null, '2019-08-21', '42', '456456', '2019-08-21');
INSERT INTO `app_detailed` VALUES ('83', '99999', null, '作品:当天', '大富翁', '1000', '是', null, '2019-08-21', '4566', '132', '2019-09-03');
INSERT INTO `app_detailed` VALUES ('84', '87979789', null, '软著:5-10天; 价格：1111', '大富翁', '123467987', '是', null, '2019-08-21', '879789', '4656', '2019-08-21');
INSERT INTO `app_detailed` VALUES ('85', '99999', null, '软著:5-10天; 价格：1111', '75785', '56565', '是', null, '2019-08-21', '85785', '75875', '2019-08-21');
INSERT INTO `app_detailed` VALUES ('86', '456456456', null, '作品:当天; 价格：3333', '大富翁', '123', '是', null, '2019-08-22', '456', '123', '2019-08-21');
INSERT INTO `app_detailed` VALUES ('87', '555555555', null, '软著:5-10天; 价格：1111', '斗地主', '23132', '是', null, '2019-08-14', '456456', '5646', '2019-08-21');

-- ----------------------------
-- Table structure for `app_fields`
-- ----------------------------
DROP TABLE IF EXISTS `app_fields`;
CREATE TABLE `app_fields` (
  `fields_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自定义字段表id',
  `table_name` varchar(50) NOT NULL COMMENT '对应表名',
  `type` varchar(20) NOT NULL COMMENT '字段类型',
  `field_name` varchar(20) DEFAULT NULL COMMENT '字段名',
  `content` text COMMENT '具体内容',
  PRIMARY KEY (`fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='自定义字段表';

-- ----------------------------
-- Records of app_fields
-- ----------------------------

-- ----------------------------
-- Table structure for `app_indent`
-- ----------------------------
DROP TABLE IF EXISTS `app_indent`;
CREATE TABLE `app_indent` (
  `indent_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单表id',
  `indent_type` varchar(11) DEFAULT NULL COMMENT '订单类型',
  `product` varchar(50) DEFAULT NULL COMMENT '关联产品表',
  `code` varchar(50) DEFAULT NULL COMMENT '订单编号',
  `client_name` varchar(50) DEFAULT NULL COMMENT '客户名字',
  `purchase_date` date DEFAULT NULL COMMENT '订购日期',
  `order_amount` int(10) DEFAULT NULL COMMENT '订单金额',
  `discount` varchar(20) DEFAULT NULL COMMENT '折扣',
  `materials` varchar(2) DEFAULT NULL COMMENT '材料【0：无材料 1：有材料】',
  `invoice` varchar(2) DEFAULT NULL COMMENT '发票【0：无需   1 ：普票  2：专票】',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `order_status` varchar(50) DEFAULT NULL COMMENT '订单状态',
  `delivery_time` date DEFAULT NULL COMMENT '发货时间',
  `tracking_number` varchar(50) DEFAULT NULL COMMENT '快递单号',
  `service_condition` varchar(200) DEFAULT NULL COMMENT '服务情况',
  `creator` varchar(50) DEFAULT NULL COMMENT '创建人',
  `creation_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`indent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of app_indent
-- ----------------------------
INSERT INTO `app_indent` VALUES ('44', '淘宝—知丫', '软著 软著', '123546456456', '李阿劳斯丹劳', '2019-08-20', null, null, '0', '0', '456456', '服务中', null, null, null, null, '2019-08-20');
INSERT INTO `app_indent` VALUES ('45', '淘宝—知丫', '作品 商标', '123', '蝙蝠侠', '2019-08-21', '456123123', null, '0', '0', '456', '服务中', null, null, null, '456', '2019-08-21');
INSERT INTO `app_indent` VALUES ('46', '淘宝—知丫', '商标 作品', '13564978', '李洛克', '2019-08-21', '3000', null, '0', '0', '讲开讲老', '服务中', null, null, null, '钢筋', '2019-08-21');
INSERT INTO `app_indent` VALUES ('47', '淘宝—知丫', '作品 软著', '99999', '李讲开讲老', '2019-08-21', '3000', null, '0', '0', '453453', '服务中', null, null, null, null, '2019-08-21');
INSERT INTO `app_indent` VALUES ('48', '淘宝—知丫', '软著', '87979789', '李白', '2019-08-21', '123467987', null, '0', '0', '李', '服务中', null, null, null, '89879', '2019-08-21');
INSERT INTO `app_indent` VALUES ('49', '淘宝—卓森', '软著', '99999', '阎王', '2019-08-21', '56565', null, '0', '0', '1455466', '服务中', null, null, null, '12674545', '2019-08-14');
INSERT INTO `app_indent` VALUES ('50', '淘宝—知丫', '作品', '456456456', '李坎饥饿', '2019-08-21', '123', null, '1', '2', '456456', '服务中', null, null, null, '456456', '2019-08-21');
INSERT INTO `app_indent` VALUES ('51', '淘宝—知丫', '软著', '555555555', '李坎饥饿', '2019-08-21', '23132', null, '1', '1', '456', '服务中', null, null, null, '333', '2019-08-21');

-- ----------------------------
-- Table structure for `app_linkman`
-- ----------------------------
DROP TABLE IF EXISTS `app_linkman`;
CREATE TABLE `app_linkman` (
  `linkman_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '联系人id',
  `client_name` varchar(20) DEFAULT NULL COMMENT '客户(公司)名',
  `name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别',
  `certificate_type` varchar(20) DEFAULT NULL COMMENT '证件类型',
  `certificate_code` varchar(50) DEFAULT NULL COMMENT '证件号码',
  `alias` varchar(50) DEFAULT NULL COMMENT '称谓',
  `dept` varchar(20) DEFAULT NULL COMMENT '部门',
  `post` varchar(20) DEFAULT NULL COMMENT '职务',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机',
  `dingding` varchar(50) DEFAULT NULL COMMENT '钉钉号',
  `work_phone` varchar(20) DEFAULT NULL COMMENT '工作电话',
  `fax` varchar(50) DEFAULT NULL COMMENT '传真',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `wechat` varchar(100) DEFAULT NULL COMMENT '微信号',
  `QQ` varchar(50) DEFAULT NULL COMMENT 'QQ',
  `aliwangwang` varchar(100) DEFAULT NULL COMMENT '旺旺号',
  `postcode` varchar(100) DEFAULT NULL COMMENT '邮编',
  `address` varchar(100) DEFAULT NULL COMMENT '住址',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `creation_time` date DEFAULT NULL COMMENT '创建时间',
  `birthday` date DEFAULT NULL COMMENT '生日',
  PRIMARY KEY (`linkman_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='联系人表';

-- ----------------------------
-- Records of app_linkman
-- ----------------------------
INSERT INTO `app_linkman` VALUES ('1', '李坎饥饿', '开机老', '男', '工作证', '456', '456', '456', '456', '456', '456', '456', '456', '456', '456', '456', '456', '456', '456', '456', '2019-08-20', '2019-08-20');
INSERT INTO `app_linkman` VALUES ('2', '李看烂了', '讲开讲', '男', '工作证', '465', '456', '456', '456', '456', '456', '456', '456', '456', '456', '456', '456', '456', '456', '456', '2019-08-21', '2019-08-20');

-- ----------------------------
-- Table structure for `app_owner`
-- ----------------------------
DROP TABLE IF EXISTS `app_owner`;
CREATE TABLE `app_owner` (
  `owner_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '著作权人信息表id',
  `software_id` int(10) NOT NULL COMMENT '关联软件产品表',
  `company` varchar(100) NOT NULL COMMENT ' 公司（单位）名称',
  `type` varchar(200) NOT NULL COMMENT '证件类型',
  `code` varchar(100) NOT NULL COMMENT '证件号码',
  `nationality` varchar(20) DEFAULT NULL COMMENT '国籍',
  `city` varchar(20) DEFAULT NULL COMMENT '省份/城市',
  `garden` varchar(100) DEFAULT NULL COMMENT '园区/城市',
  `signature` varchar(20) DEFAULT NULL COMMENT '署名情况',
  PRIMARY KEY (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='著作权人信息表';

-- ----------------------------
-- Records of app_owner
-- ----------------------------

-- ----------------------------
-- Table structure for `app_product`
-- ----------------------------
DROP TABLE IF EXISTS `app_product`;
CREATE TABLE `app_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品表id',
  `type` varchar(20) NOT NULL COMMENT '类别',
  `workdays` varchar(20) NOT NULL COMMENT '工作日',
  `sales_price` varchar(20) NOT NULL COMMENT '销售价',
  `purchase_price` varchar(20) NOT NULL COMMENT '采购价',
  `discount` varchar(20) DEFAULT NULL COMMENT '折扣',
  `supplier_company` varchar(200) DEFAULT NULL COMMENT '供应商公司名',
  `supplier_name` varchar(20) DEFAULT NULL COMMENT '联系人姓名',
  `supplier_phone` varchar(20) DEFAULT NULL COMMENT '联系人电话',
  `supplier_qq` varchar(50) DEFAULT NULL COMMENT '联系人qq',
  `award` varchar(50) DEFAULT NULL COMMENT '申报奖励',
  `invoice` char(2) DEFAULT NULL COMMENT '发票【0：无票 1：有票】',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `valid` char(4) DEFAULT NULL COMMENT '有效【0：关闭 1：有效】',
  `rank` int(10) DEFAULT NULL COMMENT '顺序',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='产品表';

-- ----------------------------
-- Records of app_product
-- ----------------------------
INSERT INTO `app_product` VALUES ('10', '软著', '5-10天', '1111', '1111', '1', '111111', '11111', '11111', '11111', '11111', '2', '111', '0', null);
INSERT INTO `app_product` VALUES ('11', '商标', '15-20日', '2222', '2222', '22', '22222', '22222', '22222', '2222', '2222', '1', '2222', '1', null);
INSERT INTO `app_product` VALUES ('12', '作品', '当天', '3333', '3333', '3', '3333', '3333', '3333', '3333', '33', '0', null, '1', null);
INSERT INTO `app_product` VALUES ('13', '产品aaa', '20日', '444', '444', '34', '44', '444', '444', '44', '44', '1', '44', '1', null);
INSERT INTO `app_product` VALUES ('14', '商标111111', '100', '111', '111', '11', '11', '111', '11', '1', '-5', '0', null, '1', null);
INSERT INTO `app_product` VALUES ('15', '小说', '100天', '1000', '5000', null, '腾讯', '我司扥德森sd', '1874512345', '011012524', '4532', null, '456456', '0', null);

-- ----------------------------
-- Table structure for `app_proposer`
-- ----------------------------
DROP TABLE IF EXISTS `app_proposer`;
CREATE TABLE `app_proposer` (
  `proposer_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '申请人信息表id',
  `company` varchar(100) NOT NULL COMMENT ' 公司（单位）名称',
  `address` varchar(255) NOT NULL COMMENT '详细地址',
  `code` varchar(10) DEFAULT NULL COMMENT '邮政编码',
  `linkman` varchar(20) NOT NULL COMMENT '联系人',
  `telephone` varchar(20) DEFAULT NULL COMMENT '固定电话（公司电话）',
  `email` varchar(50) DEFAULT NULL COMMENT '联系人邮箱',
  `phone` varchar(20) NOT NULL COMMENT '联系人手机号',
  `fax` varchar(20) DEFAULT NULL COMMENT '传真号',
  PRIMARY KEY (`proposer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='申请人信息表';

-- ----------------------------
-- Records of app_proposer
-- ----------------------------

-- ----------------------------
-- Table structure for `app_software`
-- ----------------------------
DROP TABLE IF EXISTS `app_software`;
CREATE TABLE `app_software` (
  `software_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '软件著作信息表id',
  `name` varchar(20) DEFAULT NULL COMMENT '软件全称',
  `abbreviation` varchar(20) DEFAULT NULL COMMENT '简称',
  `version` varchar(20) DEFAULT NULL COMMENT '版本号',
  `original` char(2) DEFAULT NULL COMMENT '软件作品说明: 原创(1:是)',
  `amend` varchar(200) DEFAULT NULL COMMENT '软件作品说明：修改',
  `finish_date` date NOT NULL DEFAULT '0000-00-00' COMMENT '开发完成日期',
  `register_date` date DEFAULT NULL COMMENT '公司成立日期',
  `published_state` char(255) DEFAULT NULL COMMENT '发表状态:[1:已发表 0：未发表]',
  `published_date` date DEFAULT NULL COMMENT '首次发表日期',
  `published_site` varchar(20) DEFAULT NULL COMMENT ' 首次发表地点 (国家-城市)',
  `exploit_way` char(2) DEFAULT NULL COMMENT '开发方式[ 1:独立开发  2：合作开发 3：委托开发 4：已发表]',
  `gaining_method` varchar(200) DEFAULT '原始取得' COMMENT '权利取得方式',
  `authority` varchar(255) DEFAULT NULL COMMENT '权力范围',
  `hardware_environment` varchar(255) DEFAULT NULL COMMENT '硬件环境',
  ` software_environment` varchar(255) DEFAULT NULL COMMENT '软件环境',
  `language` varchar(20) DEFAULT NULL COMMENT '编程语言',
  `word_number` varchar(200) DEFAULT NULL COMMENT '源程序量(登记软件的代码的总行数)',
  `explain` varchar(255) DEFAULT NULL COMMENT '主要功能和技术特点',
  PRIMARY KEY (`software_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品表';

-- ----------------------------
-- Records of app_software
-- ----------------------------

-- ----------------------------
-- Table structure for `app_works`
-- ----------------------------
DROP TABLE IF EXISTS `app_works`;
CREATE TABLE `app_works` (
  ` works_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '作品信息表id',
  `name` varchar(100) DEFAULT NULL COMMENT '作品名称',
  `type` varchar(100) DEFAULT NULL COMMENT '作品类别',
  `nature` varchar(100) DEFAULT NULL,
  `complete_date` date DEFAULT NULL COMMENT '创作/制作完成日期',
  `complete_site` varchar(20) DEFAULT NULL COMMENT '创作/制作完成地点',
  `published_state` varchar(100) DEFAULT NULL COMMENT '发表状态',
  `gaining_method` varchar(200) DEFAULT '原始取得' COMMENT '权利取得方式',
  `attribution_way` varchar(20) DEFAULT NULL COMMENT '权利归属方式及其说明',
  `authority` varchar(255) DEFAULT NULL COMMENT '权力范围',
  `paper_medium` varchar(10) DEFAULT NULL COMMENT '纸介质/张',
  `electronic_media` varchar(10) DEFAULT NULL COMMENT '电子介质/件',
  PRIMARY KEY (` works_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_works
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_blob_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_calendars`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_cron_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for `qrtz_fired_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_job_details`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200094C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C000C6D6574686F64506172616D7371007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3130202A202A202A202A203F740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC897372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000174000672795461736B74000A72794E6F506172616D7374000074000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200094C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C000C6D6574686F64506172616D7371007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3230202A202A202A202A203F740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC897372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000274000672795461736B7400087279506172616D73740002727974000133740001317800);

-- ----------------------------
-- Table structure for `qrtz_locks`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for `qrtz_paused_trigger_grps`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_scheduler_state`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'MAITIAN-design1566370888237', '1566376638667', '15000');

-- ----------------------------
-- Table structure for `qrtz_simple_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_simprop_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', null, '1566370890000', '-1', '5', 'PAUSED', 'CRON', '1566370888000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', null, '1566370900000', '-1', '5', 'PAUSED', 'CRON', '1566370888000', '0', null, '2', '');

-- ----------------------------
-- Table structure for `sys_config`
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(100) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');

-- ----------------------------
-- Table structure for `sys_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '若依科技', '0', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '深圳总公司', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '长沙分公司', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '研发部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '市场部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '测试部门', '3', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '财务部门', '4', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '运维部门', '5', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '市场部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '财务部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');

-- ----------------------------
-- Table structure for `sys_dict_data`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES ('18', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES ('19', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES ('20', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES ('21', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES ('22', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES ('23', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES ('24', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES ('25', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('26', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('27', '1', '版权', '版权', 'app_product', null, null, 'Y', '0', 'admin', '2019-07-03 14:08:44', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('28', '2', '商标', '商标', 'app_product', null, null, 'Y', '0', 'admin', '2019-07-03 14:09:02', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('29', '3', '专利', '专利', 'app_product', null, null, 'Y', '0', 'admin', '2019-07-03 14:09:14', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('30', '4', '网站', '网站', 'app_product', null, null, 'Y', '0', 'admin', '2019-07-03 14:09:36', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('31', '5', '其他', '其他', 'app_product', null, null, 'Y', '0', 'admin', '2019-07-03 14:09:48', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('32', '1', '服务中', '服务中', 'app_indent_status', '', '', 'Y', '0', 'admin', '2019-07-03 17:39:44', 'admin', '2019-07-04 11:23:14', '');
INSERT INTO `sys_dict_data` VALUES ('33', '2', '已提交', '已提交', 'app_indent_status', '', '', 'N', '0', 'admin', '2019-07-04 11:22:42', 'admin', '2019-07-04 11:23:11', '');
INSERT INTO `sys_dict_data` VALUES ('34', '4', '已完成', '已完成', 'app_indent_status', '', '', 'N', '0', 'admin', '2019-07-04 11:23:07', 'admin', '2019-08-15 15:56:22', '');
INSERT INTO `sys_dict_data` VALUES ('35', '1', '淘宝—知丫', '淘宝—知丫', 'app_indent_type', null, null, 'Y', '0', 'admin', '2019-07-04 12:23:07', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('36', '2', '淘宝—51版权', '淘宝—51版权', 'app_indent_type', null, null, 'Y', '0', 'admin', '2019-07-04 13:51:20', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('37', '3', '淘宝—卓森', '淘宝—卓森', 'app_indent_type', null, null, 'Y', '0', 'admin', '2019-07-04 13:51:54', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('38', '4', '京东', '京东', 'app_indent_type', null, null, 'Y', '0', 'admin', '2019-07-04 13:52:10', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('39', '5', '其他', '其他', 'app_indent_type', null, null, 'Y', '0', 'admin', '2019-07-04 13:52:20', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('40', '1', '普通用户', '普通用户', 'app_client_type', null, null, 'Y', '0', 'admin', '2019-07-04 09:28:11', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('41', '2', '集团大客户', '集团大客户', 'app_client_type', null, null, 'Y', '0', 'admin', '2019-07-04 09:28:24', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('42', '3', '业务合作商', '业务合作商', 'app_client_type', null, null, 'Y', '0', 'admin', '2019-07-04 09:28:42', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('43', '4', '代理经销商', '代理经销商', 'app_client_type', null, null, 'Y', '0', 'admin', '2019-07-04 09:28:59', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('44', '5', '怀疑同行', '怀疑同行', 'app_client_type', null, null, 'Y', '0', 'admin', '2019-07-04 09:29:27', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('45', '6', '其他客户', '其他客户', 'app_client_type', null, null, 'Y', '0', 'admin', '2019-07-04 09:29:40', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('46', '1', '工作证', '工作证', 'app_linkman_certificate_type', null, null, 'Y', '0', 'admin', '2019-07-04 17:37:17', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('47', '2', '身份证', '身份证', 'app_linkman_certificate_type', null, null, 'Y', '0', 'admin', '2019-07-04 17:37:27', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('48', '3', '其他证件', '其他证件', 'app_linkman_certificate_type', null, null, 'Y', '0', 'admin', '2019-07-04 17:37:46', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('49', '3', '已发货', '已发货', 'app_indent_status', null, null, 'N', '0', 'admin', '2019-08-15 15:56:13', '', null, null);

-- ----------------------------
-- Table structure for `sys_dict_type`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('6', '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('8', '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('9', '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');
INSERT INTO `sys_dict_type` VALUES ('10', '产品类别', 'app_product', '0', 'admin', '2019-07-03 14:08:00', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('11', '订单状态', 'app_indent_status', '0', 'admin', '2019-07-03 17:37:51', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('12', '订单类型', 'app_indent_type', '0', 'admin', '2019-07-04 12:21:58', '', null, '订单来源：（淘宝—知丫、51版权、卓森、京东）');
INSERT INTO `sys_dict_type` VALUES ('13', '客户种类', 'app_client_type', '0', 'admin', '2019-07-04 09:27:27', 'admin', '2019-07-04 09:27:38', '客户表');
INSERT INTO `sys_dict_type` VALUES ('14', '证件类型', 'app_linkman_certificate_type', '0', 'admin', '2019-07-04 17:36:49', '', null, null);

-- ----------------------------
-- Table structure for `sys_job`
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT '' COMMENT '任务组名',
  `method_name` varchar(500) DEFAULT '' COMMENT '任务方法',
  `method_params` varchar(50) DEFAULT NULL COMMENT '方法参数',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', 'ryTask', '系统默认（无参）', 'ryNoParams', '', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES ('2', 'ryTask', '系统默认（有参）', 'ryParams', 'ry', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for `sys_job_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `method_name` varchar(500) DEFAULT NULL COMMENT '任务方法',
  `method_params` varchar(50) DEFAULT NULL COMMENT '方法参数',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_logininfor`
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=283 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('100', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-01 14:57:18');
INSERT INTO `sys_logininfor` VALUES ('101', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-01 15:56:24');
INSERT INTO `sys_logininfor` VALUES ('102', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-02 11:33:48');
INSERT INTO `sys_logininfor` VALUES ('103', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-02 12:08:51');
INSERT INTO `sys_logininfor` VALUES ('104', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-02 13:53:14');
INSERT INTO `sys_logininfor` VALUES ('105', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-02 14:20:41');
INSERT INTO `sys_logininfor` VALUES ('106', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-07-02 14:29:50');
INSERT INTO `sys_logininfor` VALUES ('107', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-02 14:29:53');
INSERT INTO `sys_logininfor` VALUES ('108', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-07-02 14:31:13');
INSERT INTO `sys_logininfor` VALUES ('109', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-02 14:31:17');
INSERT INTO `sys_logininfor` VALUES ('110', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-07-02 14:37:35');
INSERT INTO `sys_logininfor` VALUES ('111', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-02 14:37:38');
INSERT INTO `sys_logininfor` VALUES ('112', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-07-02 14:57:52');
INSERT INTO `sys_logininfor` VALUES ('113', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-02 14:57:57');
INSERT INTO `sys_logininfor` VALUES ('114', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-02 15:42:49');
INSERT INTO `sys_logininfor` VALUES ('115', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-07-02 15:46:04');
INSERT INTO `sys_logininfor` VALUES ('116', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-02 15:46:07');
INSERT INTO `sys_logininfor` VALUES ('117', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-07-02 15:50:03');
INSERT INTO `sys_logininfor` VALUES ('118', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-02 15:50:05');
INSERT INTO `sys_logininfor` VALUES ('119', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-02 17:27:56');
INSERT INTO `sys_logininfor` VALUES ('120', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-03 12:25:16');
INSERT INTO `sys_logininfor` VALUES ('121', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-03 12:27:45');
INSERT INTO `sys_logininfor` VALUES ('122', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-03 13:58:18');
INSERT INTO `sys_logininfor` VALUES ('123', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-07-03 14:02:49');
INSERT INTO `sys_logininfor` VALUES ('124', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-03 14:02:53');
INSERT INTO `sys_logininfor` VALUES ('125', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-07-03 14:04:45');
INSERT INTO `sys_logininfor` VALUES ('126', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-03 14:04:48');
INSERT INTO `sys_logininfor` VALUES ('127', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-07-03 14:41:37');
INSERT INTO `sys_logininfor` VALUES ('128', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-03 14:41:41');
INSERT INTO `sys_logininfor` VALUES ('129', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-03 16:38:29');
INSERT INTO `sys_logininfor` VALUES ('130', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-03 16:59:20');
INSERT INTO `sys_logininfor` VALUES ('131', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-04 10:47:03');
INSERT INTO `sys_logininfor` VALUES ('132', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-07-04 13:50:51');
INSERT INTO `sys_logininfor` VALUES ('133', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-04 13:50:55');
INSERT INTO `sys_logininfor` VALUES ('134', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-04 15:41:00');
INSERT INTO `sys_logininfor` VALUES ('135', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-05 09:14:52');
INSERT INTO `sys_logininfor` VALUES ('136', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-05 10:44:45');
INSERT INTO `sys_logininfor` VALUES ('137', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-05 11:09:04');
INSERT INTO `sys_logininfor` VALUES ('138', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-05 11:26:41');
INSERT INTO `sys_logininfor` VALUES ('139', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-05 15:38:03');
INSERT INTO `sys_logininfor` VALUES ('140', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-05 15:59:00');
INSERT INTO `sys_logininfor` VALUES ('141', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-05 16:37:36');
INSERT INTO `sys_logininfor` VALUES ('142', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-08 08:57:47');
INSERT INTO `sys_logininfor` VALUES ('143', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-08 09:46:44');
INSERT INTO `sys_logininfor` VALUES ('144', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-08 10:39:59');
INSERT INTO `sys_logininfor` VALUES ('145', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-08 11:42:20');
INSERT INTO `sys_logininfor` VALUES ('146', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-08 14:23:39');
INSERT INTO `sys_logininfor` VALUES ('147', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-07-08 15:21:17');
INSERT INTO `sys_logininfor` VALUES ('148', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-08 15:21:20');
INSERT INTO `sys_logininfor` VALUES ('149', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-07-08 15:22:18');
INSERT INTO `sys_logininfor` VALUES ('150', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-08 15:22:21');
INSERT INTO `sys_logininfor` VALUES ('151', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-07-08 15:40:31');
INSERT INTO `sys_logininfor` VALUES ('152', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-07-08 15:40:36');
INSERT INTO `sys_logininfor` VALUES ('153', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-08 15:40:39');
INSERT INTO `sys_logininfor` VALUES ('154', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-07-08 16:50:02');
INSERT INTO `sys_logininfor` VALUES ('155', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-07-08 16:50:05');
INSERT INTO `sys_logininfor` VALUES ('156', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-07-08 16:50:07');
INSERT INTO `sys_logininfor` VALUES ('157', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-08 16:50:09');
INSERT INTO `sys_logininfor` VALUES ('158', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-07-08 16:51:37');
INSERT INTO `sys_logininfor` VALUES ('159', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-08 16:51:40');
INSERT INTO `sys_logininfor` VALUES ('160', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-07-08 16:53:49');
INSERT INTO `sys_logininfor` VALUES ('161', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-08 16:53:52');
INSERT INTO `sys_logininfor` VALUES ('162', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-07-08 16:56:37');
INSERT INTO `sys_logininfor` VALUES ('163', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-08 16:56:40');
INSERT INTO `sys_logininfor` VALUES ('164', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-07-09 09:30:26');
INSERT INTO `sys_logininfor` VALUES ('165', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-09 09:30:33');
INSERT INTO `sys_logininfor` VALUES ('166', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-07-09 10:28:44');
INSERT INTO `sys_logininfor` VALUES ('167', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-09 10:28:50');
INSERT INTO `sys_logininfor` VALUES ('168', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-09 15:12:18');
INSERT INTO `sys_logininfor` VALUES ('169', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-09 16:46:30');
INSERT INTO `sys_logininfor` VALUES ('170', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-09 17:19:09');
INSERT INTO `sys_logininfor` VALUES ('171', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 7', '0', '登录成功', '2019-07-10 09:05:58');
INSERT INTO `sys_logininfor` VALUES ('172', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-10 11:07:31');
INSERT INTO `sys_logininfor` VALUES ('173', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-07-11 09:19:19');
INSERT INTO `sys_logininfor` VALUES ('174', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-11 09:19:23');
INSERT INTO `sys_logininfor` VALUES ('175', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-12 09:24:45');
INSERT INTO `sys_logininfor` VALUES ('176', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-12 10:54:00');
INSERT INTO `sys_logininfor` VALUES ('177', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-12 11:58:13');
INSERT INTO `sys_logininfor` VALUES ('178', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-12 13:55:30');
INSERT INTO `sys_logininfor` VALUES ('179', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-07-12 14:13:11');
INSERT INTO `sys_logininfor` VALUES ('180', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-12 14:13:16');
INSERT INTO `sys_logininfor` VALUES ('181', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-15 09:00:05');
INSERT INTO `sys_logininfor` VALUES ('182', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-15 10:38:52');
INSERT INTO `sys_logininfor` VALUES ('183', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-15 14:07:58');
INSERT INTO `sys_logininfor` VALUES ('184', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-16 08:50:17');
INSERT INTO `sys_logininfor` VALUES ('185', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-16 10:42:15');
INSERT INTO `sys_logininfor` VALUES ('186', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-16 15:35:12');
INSERT INTO `sys_logininfor` VALUES ('187', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-16 16:33:06');
INSERT INTO `sys_logininfor` VALUES ('188', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-16 17:09:18');
INSERT INTO `sys_logininfor` VALUES ('189', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-17 09:16:39');
INSERT INTO `sys_logininfor` VALUES ('190', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-17 14:04:54');
INSERT INTO `sys_logininfor` VALUES ('191', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-18 09:36:03');
INSERT INTO `sys_logininfor` VALUES ('192', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-18 15:30:56');
INSERT INTO `sys_logininfor` VALUES ('193', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-18 16:34:55');
INSERT INTO `sys_logininfor` VALUES ('194', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-19 09:10:37');
INSERT INTO `sys_logininfor` VALUES ('195', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-19 09:23:34');
INSERT INTO `sys_logininfor` VALUES ('196', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-19 09:34:02');
INSERT INTO `sys_logininfor` VALUES ('197', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-19 09:38:36');
INSERT INTO `sys_logininfor` VALUES ('198', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-19 09:40:33');
INSERT INTO `sys_logininfor` VALUES ('199', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-19 09:43:11');
INSERT INTO `sys_logininfor` VALUES ('200', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-19 09:47:59');
INSERT INTO `sys_logininfor` VALUES ('201', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-19 10:16:45');
INSERT INTO `sys_logininfor` VALUES ('202', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-19 10:17:42');
INSERT INTO `sys_logininfor` VALUES ('203', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-19 10:19:55');
INSERT INTO `sys_logininfor` VALUES ('204', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-19 10:21:02');
INSERT INTO `sys_logininfor` VALUES ('205', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-19 16:03:10');
INSERT INTO `sys_logininfor` VALUES ('206', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-19 16:05:16');
INSERT INTO `sys_logininfor` VALUES ('207', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-19 16:07:53');
INSERT INTO `sys_logininfor` VALUES ('208', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-19 16:38:28');
INSERT INTO `sys_logininfor` VALUES ('209', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-19 16:58:36');
INSERT INTO `sys_logininfor` VALUES ('210', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-21 09:25:04');
INSERT INTO `sys_logininfor` VALUES ('211', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-23 10:01:43');
INSERT INTO `sys_logininfor` VALUES ('212', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-23 10:02:26');
INSERT INTO `sys_logininfor` VALUES ('213', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-23 10:23:42');
INSERT INTO `sys_logininfor` VALUES ('214', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-23 10:25:23');
INSERT INTO `sys_logininfor` VALUES ('215', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-23 10:27:23');
INSERT INTO `sys_logininfor` VALUES ('216', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-23 10:29:37');
INSERT INTO `sys_logininfor` VALUES ('217', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-23 10:49:09');
INSERT INTO `sys_logininfor` VALUES ('218', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-23 10:50:08');
INSERT INTO `sys_logininfor` VALUES ('219', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-23 10:52:31');
INSERT INTO `sys_logininfor` VALUES ('220', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-23 10:54:32');
INSERT INTO `sys_logininfor` VALUES ('221', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-23 13:38:02');
INSERT INTO `sys_logininfor` VALUES ('222', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-23 14:55:56');
INSERT INTO `sys_logininfor` VALUES ('223', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-23 14:58:12');
INSERT INTO `sys_logininfor` VALUES ('224', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-25 12:45:30');
INSERT INTO `sys_logininfor` VALUES ('225', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-26 09:13:10');
INSERT INTO `sys_logininfor` VALUES ('226', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-07-29 17:12:58');
INSERT INTO `sys_logininfor` VALUES ('227', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 7', '0', '登录成功', '2019-08-12 09:31:00');
INSERT INTO `sys_logininfor` VALUES ('228', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-13 08:30:46');
INSERT INTO `sys_logininfor` VALUES ('229', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-13 09:03:47');
INSERT INTO `sys_logininfor` VALUES ('230', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-13 12:57:38');
INSERT INTO `sys_logininfor` VALUES ('231', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-13 14:26:45');
INSERT INTO `sys_logininfor` VALUES ('232', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-13 14:26:46');
INSERT INTO `sys_logininfor` VALUES ('233', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-13 14:28:18');
INSERT INTO `sys_logininfor` VALUES ('234', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-13 14:28:19');
INSERT INTO `sys_logininfor` VALUES ('235', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-13 17:31:08');
INSERT INTO `sys_logininfor` VALUES ('236', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-14 09:08:31');
INSERT INTO `sys_logininfor` VALUES ('237', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-14 10:21:24');
INSERT INTO `sys_logininfor` VALUES ('238', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-14 11:02:16');
INSERT INTO `sys_logininfor` VALUES ('239', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-14 11:18:25');
INSERT INTO `sys_logininfor` VALUES ('240', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-14 11:20:33');
INSERT INTO `sys_logininfor` VALUES ('241', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-14 11:22:40');
INSERT INTO `sys_logininfor` VALUES ('242', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-14 13:53:31');
INSERT INTO `sys_logininfor` VALUES ('243', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-14 14:00:02');
INSERT INTO `sys_logininfor` VALUES ('244', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-14 14:18:10');
INSERT INTO `sys_logininfor` VALUES ('245', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-14 15:48:59');
INSERT INTO `sys_logininfor` VALUES ('246', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-14 15:54:38');
INSERT INTO `sys_logininfor` VALUES ('247', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-14 16:50:13');
INSERT INTO `sys_logininfor` VALUES ('248', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-15 08:53:54');
INSERT INTO `sys_logininfor` VALUES ('249', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-15 10:21:28');
INSERT INTO `sys_logininfor` VALUES ('250', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-15 10:26:31');
INSERT INTO `sys_logininfor` VALUES ('251', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-15 12:50:00');
INSERT INTO `sys_logininfor` VALUES ('252', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-15 14:03:04');
INSERT INTO `sys_logininfor` VALUES ('253', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-15 15:11:39');
INSERT INTO `sys_logininfor` VALUES ('254', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-15 15:30:19');
INSERT INTO `sys_logininfor` VALUES ('255', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-16 09:01:45');
INSERT INTO `sys_logininfor` VALUES ('256', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-16 09:33:31');
INSERT INTO `sys_logininfor` VALUES ('257', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-16 10:33:42');
INSERT INTO `sys_logininfor` VALUES ('258', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-16 11:27:19');
INSERT INTO `sys_logininfor` VALUES ('259', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-16 14:07:23');
INSERT INTO `sys_logininfor` VALUES ('260', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-16 14:32:11');
INSERT INTO `sys_logininfor` VALUES ('261', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-16 16:03:58');
INSERT INTO `sys_logininfor` VALUES ('262', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-16 16:07:46');
INSERT INTO `sys_logininfor` VALUES ('263', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-16 16:18:49');
INSERT INTO `sys_logininfor` VALUES ('264', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-16 16:36:36');
INSERT INTO `sys_logininfor` VALUES ('265', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-19 10:35:34');
INSERT INTO `sys_logininfor` VALUES ('266', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-19 11:29:39');
INSERT INTO `sys_logininfor` VALUES ('267', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-19 12:56:04');
INSERT INTO `sys_logininfor` VALUES ('268', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-19 14:15:42');
INSERT INTO `sys_logininfor` VALUES ('269', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-19 14:15:43');
INSERT INTO `sys_logininfor` VALUES ('270', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-19 14:18:20');
INSERT INTO `sys_logininfor` VALUES ('271', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-19 14:18:23');
INSERT INTO `sys_logininfor` VALUES ('272', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-19 14:48:01');
INSERT INTO `sys_logininfor` VALUES ('273', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-20 08:51:30');
INSERT INTO `sys_logininfor` VALUES ('274', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-20 11:19:32');
INSERT INTO `sys_logininfor` VALUES ('275', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-20 13:38:41');
INSERT INTO `sys_logininfor` VALUES ('276', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-20 15:54:28');
INSERT INTO `sys_logininfor` VALUES ('277', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-21 08:54:01');
INSERT INTO `sys_logininfor` VALUES ('278', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-21 12:03:09');
INSERT INTO `sys_logininfor` VALUES ('279', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-21 13:32:21');
INSERT INTO `sys_logininfor` VALUES ('280', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-21 15:02:35');
INSERT INTO `sys_logininfor` VALUES ('281', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-21 16:07:13');
INSERT INTO `sys_logininfor` VALUES ('282', 'admin', '192.168.1.103', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-21 16:07:55');

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2071 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '6', '#', 'menuItem', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'admin', '2019-08-21 10:47:28', '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '7', '#', 'menuItem', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'admin', '2019-08-21 10:47:35', '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '8', '#', 'menuItem', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'admin', '2019-08-21 10:47:42', '系统工具目录');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', '/system/user', '', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', '/system/role', '', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', '/system/menu', '', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', '/system/dept', '', 'C', '0', 'system:dept:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', '/system/post', '', 'C', '0', 'system:post:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', '/system/dict', '', 'C', '0', 'system:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', '/system/config', '', 'C', '0', 'system:config:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', '/system/notice', '', 'C', '0', 'system:notice:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', '#', '', 'M', '0', '', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', '/monitor/online', '', 'C', '0', 'monitor:online:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', '/monitor/job', '', 'C', '0', 'monitor:job:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', '/monitor/data', '', 'C', '0', 'monitor:data:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '3', '/monitor/server', '', 'C', '0', 'monitor:server:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '表单构建', '3', '1', '/tool/build', '', 'C', '0', 'tool:build:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('114', '代码生成', '3', '2', '/tool/gen', '', 'C', '0', 'tool:gen:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('115', '系统接口', '3', '3', '/tool/swagger', '', 'C', '0', 'tool:swagger:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '#', '', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '#', '', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '#', '', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '#', '', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '#', '', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', '6', '#', '', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '#', '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', '1', '#', '', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '#', '', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '#', '', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '#', '', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', '1', '#', '', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '#', '', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '#', '', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '#', '', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', '5', '#', '', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', '1', '#', '', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', '2', '#', '', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', '3', '#', '', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', '4', '#', '', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', '5', '#', '', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', '1', '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', '2', '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', '3', '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', '4', '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1041', '详细信息', '500', '3', '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1042', '日志导出', '500', '4', '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1043', '登录查询', '501', '1', '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1044', '登录删除', '501', '2', '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1045', '日志导出', '501', '3', '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1046', '在线查询', '109', '1', '#', '', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1047', '批量强退', '109', '2', '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1048', '单条强退', '109', '3', '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1049', '任务查询', '110', '1', '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1050', '任务新增', '110', '2', '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1051', '任务修改', '110', '3', '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1052', '任务删除', '110', '4', '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1053', '状态修改', '110', '5', '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1054', '任务详细', '110', '6', '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1055', '任务导出', '110', '7', '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1056', '生成查询', '114', '1', '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1057', '生成代码', '114', '2', '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('2000', '产品', '0', '2', '#', 'menuItem', 'M', '0', '', 'fa fa-cubes', 'admin', '2019-07-01 14:59:48', 'admin', '2019-08-21 10:46:45', '');
INSERT INTO `sys_menu` VALUES ('2001', '客户与联系人', '0', '1', '#', 'menuItem', 'M', '0', '', 'fa fa-group', 'admin', '2019-07-01 15:00:30', 'admin', '2019-08-21 10:46:37', '');
INSERT INTO `sys_menu` VALUES ('2002', '销售', '0', '3', '#', 'menuItem', 'M', '0', '', 'fa fa-handshake-o', 'admin', '2019-07-01 15:01:10', 'admin', '2019-08-21 10:47:00', '');
INSERT INTO `sys_menu` VALUES ('2004', '产品信息管理', '2000', '1', '/copyright/appProduct', 'menuItem', 'C', '0', 'copyright:appProduct:view', '#', 'admin', '2019-07-01 15:07:17', 'admin', '2019-07-02 15:43:34', '');
INSERT INTO `sys_menu` VALUES ('2006', '客户管理', '2001', '1', '/copyright/appClient', 'menuItem', 'C', '0', 'copyright:appClient:view', '#', 'admin', '2019-07-01 15:08:46', 'admin', '2019-07-05 11:12:40', '');
INSERT INTO `sys_menu` VALUES ('2007', '客户公共池', '2001', '3', '#', 'menuItem', 'C', '0', '', '#', 'admin', '2019-07-01 15:09:03', 'admin', '2019-08-15 14:07:18', '');
INSERT INTO `sys_menu` VALUES ('2008', '联系人管理', '2001', '2', '/copyright/appLinkman', 'menuItem', 'C', '0', 'copyright:appLinkman:view', '#', 'admin', '2019-07-01 15:09:30', 'admin', '2019-08-15 14:07:10', '');
INSERT INTO `sys_menu` VALUES ('2009', '批量客户任务', '2001', '4', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 15:10:02', '', null, '');
INSERT INTO `sys_menu` VALUES ('2013', '项目管理', '2002', '1', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 15:11:42', '', null, '');
INSERT INTO `sys_menu` VALUES ('2014', '销售机会', '2002', '2', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 15:13:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('2015', '销售漏斗', '2002', '3', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 15:13:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('2016', '报价记录', '2002', '4', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 15:13:54', '', null, '');
INSERT INTO `sys_menu` VALUES ('2017', '详细需求', '2002', '5', '#', 'menuItem', 'C', '0', '', '#', 'admin', '2019-07-01 15:14:13', 'admin', '2019-07-01 15:14:35', '');
INSERT INTO `sys_menu` VALUES ('2018', '合同', '0', '4', '#', 'menuItem', 'M', '0', '', 'fa fa-clone', 'admin', '2019-07-01 15:15:24', 'admin', '2019-08-21 10:47:07', '');
INSERT INTO `sys_menu` VALUES ('2019', '合同订单列表', '2018', '1', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 15:15:47', '', null, '');
INSERT INTO `sys_menu` VALUES ('2020', '合同交付', '2018', '2', '#', 'menuItem', 'M', '0', null, '#', 'admin', '2019-07-01 15:19:03', '', null, '');
INSERT INTO `sys_menu` VALUES ('2021', '交付计划', '2020', '1', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 15:19:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('2022', '交付记录', '2020', '2', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 15:19:44', '', null, '');
INSERT INTO `sys_menu` VALUES ('2023', '订单与发货明细', '2018', '3', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 15:56:52', '', null, '');
INSERT INTO `sys_menu` VALUES ('2024', '发货单', '2018', '4', '#', 'menuItem', 'C', '0', '', '#', 'admin', '2019-07-01 15:57:19', 'admin', '2019-07-01 15:57:32', '');
INSERT INTO `sys_menu` VALUES ('2025', '退货单', '2018', '5', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 15:57:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('2026', '换货单', '2018', '6', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 15:58:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('2027', '回款计划', '2018', '7', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 15:58:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('2028', '回款记录', '2018', '8', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 15:59:03', '', null, '');
INSERT INTO `sys_menu` VALUES ('2029', '退款记录', '2018', '9', '#', 'menuItem', 'C', '0', '', '#', 'admin', '2019-07-01 15:59:23', 'admin', '2019-07-01 15:59:35', '');
INSERT INTO `sys_menu` VALUES ('2030', '客户预充值/消费', '2018', '9', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 16:01:16', '', null, '');
INSERT INTO `sys_menu` VALUES ('2031', '开票记录', '2018', '10', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 16:01:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('2032', '回款/开票统计', '2018', '11', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 16:02:02', '', null, '');
INSERT INTO `sys_menu` VALUES ('2033', '批量导入合同订单', '2018', '12', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 16:02:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('2034', '采购', '0', '5', '#', 'menuItem', 'M', '0', '', 'fa fa-car', 'admin', '2019-07-01 16:04:14', 'admin', '2019-08-21 10:47:14', '');
INSERT INTO `sys_menu` VALUES ('2035', '供应商管理', '2034', '1', '#', 'menuItem', 'M', '0', '', '#', 'admin', '2019-07-01 16:04:37', 'admin', '2019-07-01 16:05:10', '');
INSERT INTO `sys_menu` VALUES ('2036', '供应商资料', '2035', '1', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 16:05:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('2037', '供应商联系人', '2035', '2', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 16:05:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('2038', '供应商对账单', '2035', '3', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 16:07:33', '', null, '');
INSERT INTO `sys_menu` VALUES ('2039', '采购申请', '2034', '2', '#', 'menuItem', 'M', '0', null, '#', 'admin', '2019-07-01 16:08:15', '', null, '');
INSERT INTO `sys_menu` VALUES ('2040', '采购申请列表', '2039', '1', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 16:08:37', '', null, '');
INSERT INTO `sys_menu` VALUES ('2041', '采购申请汇总', '2039', '2', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 16:08:52', '', null, '');
INSERT INTO `sys_menu` VALUES ('2042', '供应商报价', '2034', '3', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 16:09:21', '', null, '');
INSERT INTO `sys_menu` VALUES ('2043', '采购单列表', '2034', '4', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 16:09:37', '', null, '');
INSERT INTO `sys_menu` VALUES ('2044', '采购明细/到货提醒', '2034', '5', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 16:10:02', '', null, '');
INSERT INTO `sys_menu` VALUES ('2045', '采购在途汇总', '2034', '6', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 16:10:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('2046', '采购退货单', '2034', '7', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 16:11:21', '', null, '');
INSERT INTO `sys_menu` VALUES ('2047', '付款计划', '2034', '8', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 16:11:52', '', null, '');
INSERT INTO `sys_menu` VALUES ('2048', '付款记录', '2034', '9', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 16:12:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('2049', '退款记录', '2034', '10', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 16:12:37', '', null, '');
INSERT INTO `sys_menu` VALUES ('2050', '付款发票', '2034', '11', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-07-01 16:12:53', '', null, '');
INSERT INTO `sys_menu` VALUES ('2051', '订单', '3', '1', '/copyright/appIndent', '', 'C', '0', 'copyright:appIndent:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '订单菜单');
INSERT INTO `sys_menu` VALUES ('2052', '订单查询', '2051', '1', '#', '', 'F', '0', 'copyright:appIndent:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2053', '订单新增', '2051', '2', '#', '', 'F', '0', 'copyright:appIndent:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2054', '订单修改', '2051', '3', '#', '', 'F', '0', 'copyright:appIndent:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2055', '订单删除', '2051', '4', '#', '', 'F', '0', 'copyright:appIndent:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2056', '订单', '0', '0', '#', 'menuItem', 'M', '0', '', 'fa fa-cc', 'admin', '2019-07-03 17:45:59', 'admin', '2019-07-05 09:27:49', '');
INSERT INTO `sys_menu` VALUES ('2057', '订单信息', '2056', '1', '/copyright/appIndent', 'menuItem', 'C', '0', 'copyright:appIndent:view', '#', 'admin', '2019-07-03 17:48:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('2058', '查询', '2006', '1', '#', 'menuItem', 'F', '0', 'copyright:appClient:list', '#', 'admin', '2019-07-05 11:13:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('2059', '增加', '2006', '2', '#', 'menuItem', 'F', '0', 'copyright:appClient:add', '#', 'admin', '2019-07-05 11:14:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('2060', '修改', '2006', '3', '#', 'menuItem', 'F', '0', 'copyright:appClient:edit', '#', 'admin', '2019-07-05 11:19:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('2061', '删除', '2006', '4', '#', 'menuItem', 'F', '0', 'copyright:appClient:remove', '#', 'admin', '2019-07-05 11:21:56', '', null, '');
INSERT INTO `sys_menu` VALUES ('2062', '查询', '2008', '1', '#', 'menuItem', 'F', '0', 'copyright:appLinkman:list', '#', 'admin', '2019-07-05 11:24:06', '', null, '');
INSERT INTO `sys_menu` VALUES ('2063', '增加', '2008', '2', '#', 'menuItem', 'F', '0', 'copyright:appLinkman:add', '#', 'admin', '2019-07-05 11:24:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('2064', '修改', '2008', '3', '#', 'menuItem', 'F', '0', 'copyright:appLinkman:edit', '#', 'admin', '2019-07-05 11:25:14', '', null, '');
INSERT INTO `sys_menu` VALUES ('2065', '删除', '2008', '4', '#', 'menuItem', 'F', '0', 'copyright:appLinkman:remove', '#', 'admin', '2019-07-05 11:25:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('2066', '清单', '3', '1', '/copyright/appDetailed', '', 'C', '0', 'copyright:appDetailed:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '清单菜单');
INSERT INTO `sys_menu` VALUES ('2067', '清单查询', '2066', '1', '#', '', 'F', '0', 'copyright:appDetailed:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2068', '清单新增', '2066', '2', '#', '', 'F', '0', 'copyright:appDetailed:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2069', '清单修改', '2066', '3', '#', '', 'F', '0', 'copyright:appDetailed:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2070', '清单删除', '2066', '4', '#', '', 'F', '0', 'copyright:appDetailed:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');

-- ----------------------------
-- Table structure for `sys_notice`
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');

-- ----------------------------
-- Table structure for `sys_oper_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=537 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('100', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"产品\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"0\" ],\r\n  \"icon\" : [ \"fa fa-cubes\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 14:59:49');
INSERT INTO `sys_oper_log` VALUES ('101', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"客户\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"0\" ],\r\n  \"icon\" : [ \"fa fa-group\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:00:30');
INSERT INTO `sys_oper_log` VALUES ('102', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"销售\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"0\" ],\r\n  \"icon\" : [ \"fa fa-handshake-o\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:01:10');
INSERT INTO `sys_oper_log` VALUES ('103', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"产品\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"0\" ],\r\n  \"icon\" : [ \"fa fa-cubes\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:04:14');
INSERT INTO `sys_oper_log` VALUES ('104', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"产品\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"0\" ],\r\n  \"icon\" : [ \"fa fa-cubes\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:04:21');
INSERT INTO `sys_oper_log` VALUES ('105', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"产品分类设置\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"0\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:06:43');
INSERT INTO `sys_oper_log` VALUES ('106', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"产品信息管理\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:07:17');
INSERT INTO `sys_oper_log` VALUES ('107', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2004\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"产品信息管理\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:07:31');
INSERT INTO `sys_oper_log` VALUES ('108', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"批量导入产品\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:08:02');
INSERT INTO `sys_oper_log` VALUES ('109', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"客户管理\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:08:46');
INSERT INTO `sys_oper_log` VALUES ('110', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"客户公共池\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:09:03');
INSERT INTO `sys_oper_log` VALUES ('111', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"联系人管理\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:09:30');
INSERT INTO `sys_oper_log` VALUES ('112', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"批量客户任务\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:10:02');
INSERT INTO `sys_oper_log` VALUES ('113', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"客户合并\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:10:14');
INSERT INTO `sys_oper_log` VALUES ('114', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"批量导入客户\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"6\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:10:46');
INSERT INTO `sys_oper_log` VALUES ('115', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"客户对账单\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"7\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:10:57');
INSERT INTO `sys_oper_log` VALUES ('116', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2002\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"项目管理\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:11:42');
INSERT INTO `sys_oper_log` VALUES ('117', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2002\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"销售机会\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:13:11');
INSERT INTO `sys_oper_log` VALUES ('118', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2002\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"销售漏斗\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:13:38');
INSERT INTO `sys_oper_log` VALUES ('119', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2002\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"报价记录\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:13:54');
INSERT INTO `sys_oper_log` VALUES ('120', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2002\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"详细需求\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"6\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:14:13');
INSERT INTO `sys_oper_log` VALUES ('121', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2017\" ],\r\n  \"parentId\" : [ \"2002\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"详细需求\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"0\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:14:22');
INSERT INTO `sys_oper_log` VALUES ('122', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2017\" ],\r\n  \"parentId\" : [ \"2002\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"详细需求\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:14:35');
INSERT INTO `sys_oper_log` VALUES ('123', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"合同\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"0\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:15:24');
INSERT INTO `sys_oper_log` VALUES ('124', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2018\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"合同订单列表\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:15:47');
INSERT INTO `sys_oper_log` VALUES ('125', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2018\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"合同\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"0\" ],\r\n  \"icon\" : [ \"fa fa-clone\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:17:49');
INSERT INTO `sys_oper_log` VALUES ('126', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2018\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"合同交付\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:19:03');
INSERT INTO `sys_oper_log` VALUES ('127', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2020\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"交付计划\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:19:25');
INSERT INTO `sys_oper_log` VALUES ('128', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2020\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"交付记录\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:19:44');
INSERT INTO `sys_oper_log` VALUES ('129', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2018\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"订单与发货明细\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:56:52');
INSERT INTO `sys_oper_log` VALUES ('130', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2018\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"发货单\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"4\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:57:19');
INSERT INTO `sys_oper_log` VALUES ('131', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2024\" ],\r\n  \"parentId\" : [ \"2018\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"发货单\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:57:32');
INSERT INTO `sys_oper_log` VALUES ('132', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2018\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"退货单\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:57:59');
INSERT INTO `sys_oper_log` VALUES ('133', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2018\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"换货单\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"6\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:58:12');
INSERT INTO `sys_oper_log` VALUES ('134', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2018\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"回款计划\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"7\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:58:45');
INSERT INTO `sys_oper_log` VALUES ('135', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2018\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"回款记录\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"8\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:59:03');
INSERT INTO `sys_oper_log` VALUES ('136', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2018\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"退款记录\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"8\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:59:23');
INSERT INTO `sys_oper_log` VALUES ('137', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2029\" ],\r\n  \"parentId\" : [ \"2018\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"退款记录\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"9\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 15:59:35');
INSERT INTO `sys_oper_log` VALUES ('138', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2018\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"客户预充值/消费\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"9\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 16:01:16');
INSERT INTO `sys_oper_log` VALUES ('139', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2018\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"开票记录\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"10\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 16:01:40');
INSERT INTO `sys_oper_log` VALUES ('140', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2018\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"回款/开票统计\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"11\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 16:02:02');
INSERT INTO `sys_oper_log` VALUES ('141', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2018\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"批量导入合同订单\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"12\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 16:02:40');
INSERT INTO `sys_oper_log` VALUES ('142', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"采购\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"0\" ],\r\n  \"icon\" : [ \"fa fa-car\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 16:04:14');
INSERT INTO `sys_oper_log` VALUES ('143', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2034\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"供应商管理\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 16:04:37');
INSERT INTO `sys_oper_log` VALUES ('144', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2035\" ],\r\n  \"parentId\" : [ \"2034\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"供应商管理\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 16:05:10');
INSERT INTO `sys_oper_log` VALUES ('145', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2035\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"供应商资料\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 16:05:25');
INSERT INTO `sys_oper_log` VALUES ('146', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2035\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"供应商联系人\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 16:05:49');
INSERT INTO `sys_oper_log` VALUES ('147', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2035\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"供应商对账单\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 16:07:33');
INSERT INTO `sys_oper_log` VALUES ('148', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2034\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"采购申请\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 16:08:15');
INSERT INTO `sys_oper_log` VALUES ('149', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2039\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"采购申请列表\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 16:08:37');
INSERT INTO `sys_oper_log` VALUES ('150', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2039\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"采购申请汇总\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 16:08:52');
INSERT INTO `sys_oper_log` VALUES ('151', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2034\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"供应商报价\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 16:09:21');
INSERT INTO `sys_oper_log` VALUES ('152', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2034\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"采购单列表\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 16:09:37');
INSERT INTO `sys_oper_log` VALUES ('153', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2034\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"采购明细/到货提醒\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 16:10:02');
INSERT INTO `sys_oper_log` VALUES ('154', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2034\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"采购在途汇总\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"6\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 16:10:43');
INSERT INTO `sys_oper_log` VALUES ('155', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2034\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"采购退货单\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"7\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 16:11:21');
INSERT INTO `sys_oper_log` VALUES ('156', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2034\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"付款计划\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"8\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 16:11:52');
INSERT INTO `sys_oper_log` VALUES ('157', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2034\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"付款记录\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"9\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 16:12:12');
INSERT INTO `sys_oper_log` VALUES ('158', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2034\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"退款记录\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"10\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 16:12:37');
INSERT INTO `sys_oper_log` VALUES ('159', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2034\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"付款发票\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"11\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 16:12:53');
INSERT INTO `sys_oper_log` VALUES ('160', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2005\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"批量导入产品\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 16:13:27');
INSERT INTO `sys_oper_log` VALUES ('161', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2003\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"产品分类设置\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"0\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-01 16:14:47');
INSERT INTO `sys_oper_log` VALUES ('162', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', '1', 'admin', '研发部门', '/tool/gen/genCode/app_product', '127.0.0.1', '内网IP', '{ }', '0', null, '2019-07-01 16:29:21');
INSERT INTO `sys_oper_log` VALUES ('163', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', '1', 'admin', '研发部门', '/tool/gen/genCode/app_owner', '127.0.0.1', '内网IP', '{ }', '0', null, '2019-07-01 16:29:24');
INSERT INTO `sys_oper_log` VALUES ('164', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', '1', 'admin', '研发部门', '/tool/gen/genCode/app_proposer', '127.0.0.1', '内网IP', '{ }', '0', null, '2019-07-01 16:29:28');
INSERT INTO `sys_oper_log` VALUES ('165', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', '1', 'admin', '研发部门', '/system/menu/remove/2003', '127.0.0.1', '内网IP', '{ }', '0', null, '2019-07-02 14:09:59');
INSERT INTO `sys_oper_log` VALUES ('166', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', '1', 'admin', '研发部门', '/system/menu/remove/2005', '127.0.0.1', '内网IP', '{ }', '0', null, '2019-07-02 14:10:04');
INSERT INTO `sys_oper_log` VALUES ('167', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', '1', 'admin', null, '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2004\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"产品信息管理\" ],\r\n  \"url\" : [ \"/copyright/product\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-02 14:14:53');
INSERT INTO `sys_oper_log` VALUES ('168', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', '1', 'admin', null, '/tool/gen/genCode/app_product', '127.0.0.1', '内网IP', '{ }', '0', null, '2019-07-02 14:15:23');
INSERT INTO `sys_oper_log` VALUES ('169', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', '1', 'admin', '研发部门', '/tool/gen/genCode/app_product', '127.0.0.1', '内网IP', '{ }', '0', null, '2019-07-02 14:20:56');
INSERT INTO `sys_oper_log` VALUES ('170', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', '1', 'admin', '研发部门', '/tool/gen/genCode/app_product', '127.0.0.1', '内网IP', '{ }', '0', null, '2019-07-02 14:31:23');
INSERT INTO `sys_oper_log` VALUES ('171', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', '1', 'admin', '研发部门', '/tool/gen/genCode/app_product', '127.0.0.1', '内网IP', '{ }', '0', null, '2019-07-02 14:37:48');
INSERT INTO `sys_oper_log` VALUES ('172', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', '1', 'admin', '研发部门', '/tool/gen/genCode/app_product', '127.0.0.1', '内网IP', '{ }', '0', null, '2019-07-02 14:58:06');
INSERT INTO `sys_oper_log` VALUES ('173', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', '1', 'admin', null, '/tool/gen/genCode/app_product', '127.0.0.1', '内网IP', '{ }', '0', null, '2019-07-02 15:02:55');
INSERT INTO `sys_oper_log` VALUES ('174', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2004\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"产品信息管理\" ],\r\n  \"url\" : [ \"/copyright/appProduct\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"copyright:appProduct:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-02 15:43:34');
INSERT INTO `sys_oper_log` VALUES ('175', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', '1', 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\r\n  \"dictName\" : [ \"产品类别\" ],\r\n  \"dictType\" : [ \"app_product\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '0', null, '2019-07-03 14:08:00');
INSERT INTO `sys_oper_log` VALUES ('176', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"版权\" ],\r\n  \"dictValue\" : [ \"版权\" ],\r\n  \"dictType\" : [ \"app_product\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '0', null, '2019-07-03 14:08:44');
INSERT INTO `sys_oper_log` VALUES ('177', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"商标\" ],\r\n  \"dictValue\" : [ \"商标\" ],\r\n  \"dictType\" : [ \"app_product\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"2\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '0', null, '2019-07-03 14:09:02');
INSERT INTO `sys_oper_log` VALUES ('178', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"专利\" ],\r\n  \"dictValue\" : [ \"专利\" ],\r\n  \"dictType\" : [ \"app_product\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"3\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '0', null, '2019-07-03 14:09:15');
INSERT INTO `sys_oper_log` VALUES ('179', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"网站\" ],\r\n  \"dictValue\" : [ \"网站\" ],\r\n  \"dictType\" : [ \"app_product\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"4\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '0', null, '2019-07-03 14:09:36');
INSERT INTO `sys_oper_log` VALUES ('180', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"其他\" ],\r\n  \"dictValue\" : [ \"其他\" ],\r\n  \"dictType\" : [ \"app_product\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"5\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '0', null, '2019-07-03 14:09:48');
INSERT INTO `sys_oper_log` VALUES ('181', '产品', '2', 'com.ruoyi.web.controller.copyright.AppProductController.editSave()', '1', 'admin', '研发部门', '/copyright/appProduct/edit', '127.0.0.1', '内网IP', '{\r\n  \"productId\" : [ \"1\" ],\r\n  \"noticeType\" : [ \"专利\" ],\r\n  \"name\" : [ \"s\" ],\r\n  \"salesPrice\" : [ \"\" ],\r\n  \"purchasePrice\" : [ \"\" ],\r\n  \"discount\" : [ \"\" ],\r\n  \"supplierCompany\" : [ \"ss\" ],\r\n  \"supplierName\" : [ \"ss\" ],\r\n  \"supplierPhone\" : [ \"\" ],\r\n  \"supplierQq\" : [ \"\" ],\r\n  \"award\" : [ \"\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"valid\" : [ \"0\", \"0\" ],\r\n  \"rank\" : [ \"1\" ]\r\n}', '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'valid\' at row 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppProductMapper.updateAppProduct-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update app_product          SET name = ?,                                                    supplier_company = ?,             supplier_name = ?,                                                    invoice = ?,                          valid = ?,             rank = ?          where product_id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'valid\' at row 1\n; Data truncation: Data too long for column \'valid\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'valid\' at row 1', '2019-07-03 14:53:34');
INSERT INTO `sys_oper_log` VALUES ('182', '产品', '2', 'com.ruoyi.web.controller.copyright.AppProductController.editSave()', '1', 'admin', '研发部门', '/copyright/appProduct/edit', '127.0.0.1', '内网IP', '{\r\n  \"productId\" : [ \"1\" ],\r\n  \"noticeType\" : [ \"专利\" ],\r\n  \"name\" : [ \"s\" ],\r\n  \"salesPrice\" : [ \"\" ],\r\n  \"purchasePrice\" : [ \"\" ],\r\n  \"discount\" : [ \"\" ],\r\n  \"supplierCompany\" : [ \"ss\" ],\r\n  \"supplierName\" : [ \"ss\" ],\r\n  \"supplierPhone\" : [ \"\" ],\r\n  \"supplierQq\" : [ \"\" ],\r\n  \"award\" : [ \"\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"valid\" : [ \"0\", \"1\" ],\r\n  \"rank\" : [ \"1\" ]\r\n}', '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'valid\' at row 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppProductMapper.updateAppProduct-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update app_product          SET name = ?,                                                    supplier_company = ?,             supplier_name = ?,                                                    invoice = ?,                          valid = ?,             rank = ?          where product_id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'valid\' at row 1\n; Data truncation: Data too long for column \'valid\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'valid\' at row 1', '2019-07-03 14:54:53');
INSERT INTO `sys_oper_log` VALUES ('183', '产品', '2', 'com.ruoyi.web.controller.copyright.AppProductController.editSave()', '1', 'admin', '研发部门', '/copyright/appProduct/edit', '127.0.0.1', '内网IP', '{\r\n  \"productId\" : [ \"1\" ],\r\n  \"noticeType\" : [ \"版权\" ],\r\n  \"name\" : [ \"s\" ],\r\n  \"salesPrice\" : [ \"\" ],\r\n  \"purchasePrice\" : [ \"\" ],\r\n  \"discount\" : [ \"\" ],\r\n  \"supplierCompany\" : [ \"ss\" ],\r\n  \"supplierName\" : [ \"ss\" ],\r\n  \"supplierPhone\" : [ \"\" ],\r\n  \"supplierQq\" : [ \"\" ],\r\n  \"award\" : [ \"\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"valid\" : [ \"0\", \"0\" ],\r\n  \"rank\" : [ \"1\" ]\r\n}', '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'valid\' at row 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppProductMapper.updateAppProduct-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update app_product          SET name = ?,                                                    supplier_company = ?,             supplier_name = ?,                                                    invoice = ?,                          valid = ?,             rank = ?          where product_id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'valid\' at row 1\n; Data truncation: Data too long for column \'valid\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'valid\' at row 1', '2019-07-03 15:07:39');
INSERT INTO `sys_oper_log` VALUES ('184', '产品', '2', 'com.ruoyi.web.controller.copyright.AppProductController.editSave()', '1', 'admin', '研发部门', '/copyright/appProduct/edit', '127.0.0.1', '内网IP', '{\r\n  \"productId\" : [ \"1\" ],\r\n  \"noticeType\" : [ \"版权\" ],\r\n  \"name\" : [ \"s\" ],\r\n  \"salesPrice\" : [ \"\" ],\r\n  \"purchasePrice\" : [ \"\" ],\r\n  \"discount\" : [ \"\" ],\r\n  \"supplierCompany\" : [ \"ss\" ],\r\n  \"supplierName\" : [ \"ss\" ],\r\n  \"supplierPhone\" : [ \"\" ],\r\n  \"supplierQq\" : [ \"\" ],\r\n  \"award\" : [ \"\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"valid\" : [ \"0\", \"0\" ],\r\n  \"rank\" : [ \"1\" ]\r\n}', '0', null, '2019-07-03 15:09:07');
INSERT INTO `sys_oper_log` VALUES ('185', '产品', '2', 'com.ruoyi.web.controller.copyright.AppProductController.editSave()', '1', 'admin', '研发部门', '/copyright/appProduct/edit', '127.0.0.1', '内网IP', '{\r\n  \"productId\" : [ \"1\" ],\r\n  \"noticeType\" : [ \"版权\" ],\r\n  \"name\" : [ \"s\" ],\r\n  \"salesPrice\" : [ \"\" ],\r\n  \"purchasePrice\" : [ \"\" ],\r\n  \"discount\" : [ \"\" ],\r\n  \"supplierCompany\" : [ \"ss\" ],\r\n  \"supplierName\" : [ \"ss\" ],\r\n  \"supplierPhone\" : [ \"\" ],\r\n  \"supplierQq\" : [ \"\" ],\r\n  \"award\" : [ \"\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"valid\" : [ \"0\", \"0\" ],\r\n  \"rank\" : [ \"1\" ]\r\n}', '0', null, '2019-07-03 15:10:25');
INSERT INTO `sys_oper_log` VALUES ('186', '产品', '2', 'com.ruoyi.web.controller.copyright.AppProductController.editSave()', '1', 'admin', '研发部门', '/copyright/appProduct/edit', '127.0.0.1', '内网IP', '{\r\n  \"productId\" : [ \"1\" ],\r\n  \"noticeType\" : [ \"版权\" ],\r\n  \"name\" : [ \"s\" ],\r\n  \"salesPrice\" : [ \"\" ],\r\n  \"purchasePrice\" : [ \"\" ],\r\n  \"discount\" : [ \"\" ],\r\n  \"supplierCompany\" : [ \"ss\" ],\r\n  \"supplierName\" : [ \"ss\" ],\r\n  \"supplierPhone\" : [ \"\" ],\r\n  \"supplierQq\" : [ \"\" ],\r\n  \"award\" : [ \"\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"valid\" : [ \"0\" ],\r\n  \"rank\" : [ \"1\" ]\r\n}', '0', null, '2019-07-03 15:10:56');
INSERT INTO `sys_oper_log` VALUES ('187', '产品', '2', 'com.ruoyi.web.controller.copyright.AppProductController.editSave()', '1', 'admin', '研发部门', '/copyright/appProduct/edit', '127.0.0.1', '内网IP', '{\r\n  \"productId\" : [ \"1\" ],\r\n  \"noticeType\" : [ \"版权\" ],\r\n  \"name\" : [ \"s\" ],\r\n  \"salesPrice\" : [ \"\" ],\r\n  \"purchasePrice\" : [ \"\" ],\r\n  \"discount\" : [ \"\" ],\r\n  \"supplierCompany\" : [ \"ss\" ],\r\n  \"supplierName\" : [ \"ss\" ],\r\n  \"supplierPhone\" : [ \"\" ],\r\n  \"supplierQq\" : [ \"\" ],\r\n  \"award\" : [ \"\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"valid\" : [ \"1\" ],\r\n  \"rank\" : [ \"1\" ]\r\n}', '0', null, '2019-07-03 15:11:03');
INSERT INTO `sys_oper_log` VALUES ('188', '产品', '2', 'com.ruoyi.web.controller.copyright.AppProductController.editSave()', '1', 'admin', '研发部门', '/copyright/appProduct/edit', '127.0.0.1', '内网IP', '{\r\n  \"productId\" : [ \"1\" ],\r\n  \"noticeType\" : [ \"版权\" ],\r\n  \"name\" : [ \"s\" ],\r\n  \"salesPrice\" : [ \"\" ],\r\n  \"purchasePrice\" : [ \"\" ],\r\n  \"discount\" : [ \"\" ],\r\n  \"supplierCompany\" : [ \"ss\" ],\r\n  \"supplierName\" : [ \"ss\" ],\r\n  \"supplierPhone\" : [ \"\" ],\r\n  \"supplierQq\" : [ \"\" ],\r\n  \"award\" : [ \"\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"valid\" : [ \"1\" ],\r\n  \"rank\" : [ \"1\" ]\r\n}', '0', null, '2019-07-03 15:11:10');
INSERT INTO `sys_oper_log` VALUES ('189', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', '1', 'admin', '研发部门', '/tool/gen/genCode/app_indent', '127.0.0.1', '内网IP', '{ }', '0', null, '2019-07-03 16:59:30');
INSERT INTO `sys_oper_log` VALUES ('190', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', '1', 'admin', null, '/system/menu/remove/2010', '127.0.0.1', '内网IP', '{ }', '0', null, '2019-07-03 17:32:04');
INSERT INTO `sys_oper_log` VALUES ('191', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', '1', 'admin', null, '/system/menu/remove/2011', '127.0.0.1', '内网IP', '{ }', '0', null, '2019-07-03 17:32:09');
INSERT INTO `sys_oper_log` VALUES ('192', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', '1', 'admin', null, '/system/menu/remove/2012', '127.0.0.1', '内网IP', '{ }', '0', null, '2019-07-03 17:32:16');
INSERT INTO `sys_oper_log` VALUES ('193', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', '1', 'admin', null, '/system/dict/add', '127.0.0.1', '内网IP', '{\r\n  \"dictName\" : [ \"订单状态\" ],\r\n  \"dictType\" : [ \"app_indent_status\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '0', null, '2019-07-03 17:37:51');
INSERT INTO `sys_oper_log` VALUES ('194', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', '1', 'admin', null, '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"服务中\" ],\r\n  \"dictValue\" : [ \"服务中\" ],\r\n  \"dictType\" : [ \"app_indent_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '0', null, '2019-07-03 17:39:44');
INSERT INTO `sys_oper_log` VALUES ('195', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', null, '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"订单\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"fa fa-cc\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-03 17:45:59');
INSERT INTO `sys_oper_log` VALUES ('196', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', null, '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2056\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"订单信息\" ],\r\n  \"url\" : [ \"/copyright/appIndent\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"copyright:appIndent:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-03 17:48:41');
INSERT INTO `sys_oper_log` VALUES ('197', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"已提交\" ],\r\n  \"dictValue\" : [ \"已提交\" ],\r\n  \"dictType\" : [ \"app_indent_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"2\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '0', null, '2019-07-04 11:22:42');
INSERT INTO `sys_oper_log` VALUES ('198', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"已完成\" ],\r\n  \"dictValue\" : [ \"已完成\" ],\r\n  \"dictType\" : [ \"app_indent_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"3\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"N\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '0', null, '2019-07-04 11:23:07');
INSERT INTO `sys_oper_log` VALUES ('199', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\r\n  \"dictCode\" : [ \"33\" ],\r\n  \"dictLabel\" : [ \"已提交\" ],\r\n  \"dictValue\" : [ \"已提交\" ],\r\n  \"dictType\" : [ \"app_indent_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"2\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"N\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '0', null, '2019-07-04 11:23:11');
INSERT INTO `sys_oper_log` VALUES ('200', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\r\n  \"dictCode\" : [ \"32\" ],\r\n  \"dictLabel\" : [ \"服务中\" ],\r\n  \"dictValue\" : [ \"服务中\" ],\r\n  \"dictType\" : [ \"app_indent_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '0', null, '2019-07-04 11:23:14');
INSERT INTO `sys_oper_log` VALUES ('201', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', '1', 'admin', null, '/system/dict/add', '127.0.0.1', '内网IP', '{\r\n  \"dictName\" : [ \"订单类型\" ],\r\n  \"dictType\" : [ \"app_indent_type\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"订单来源：（淘宝—知丫、51版权、卓森、京东）\" ]\r\n}', '0', null, '2019-07-04 12:21:58');
INSERT INTO `sys_oper_log` VALUES ('202', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', '1', 'admin', null, '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"淘宝—知丫\" ],\r\n  \"dictValue\" : [ \"淘宝—知丫\" ],\r\n  \"dictType\" : [ \"app_indent_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '0', null, '2019-07-04 12:23:07');
INSERT INTO `sys_oper_log` VALUES ('203', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"淘宝—51版权\" ],\r\n  \"dictValue\" : [ \"淘宝—51版权\" ],\r\n  \"dictType\" : [ \"app_indent_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"2\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '0', null, '2019-07-04 13:51:20');
INSERT INTO `sys_oper_log` VALUES ('204', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"淘宝—卓森\" ],\r\n  \"dictValue\" : [ \"淘宝—卓森\" ],\r\n  \"dictType\" : [ \"app_indent_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"3\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '0', null, '2019-07-04 13:51:54');
INSERT INTO `sys_oper_log` VALUES ('205', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"京东\" ],\r\n  \"dictValue\" : [ \"京东\" ],\r\n  \"dictType\" : [ \"app_indent_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"4\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '0', null, '2019-07-04 13:52:10');
INSERT INTO `sys_oper_log` VALUES ('206', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"其他\" ],\r\n  \"dictValue\" : [ \"其他\" ],\r\n  \"dictType\" : [ \"app_indent_type\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"5\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '0', null, '2019-07-04 13:52:20');
INSERT INTO `sys_oper_log` VALUES ('207', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2056\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"订单\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"0\" ],\r\n  \"icon\" : [ \"fa fa-cc\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-05 09:27:49');
INSERT INTO `sys_oper_log` VALUES ('208', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2006\" ],\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"客户管理\" ],\r\n  \"url\" : [ \"/copyright/appClient\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"copyright:appClient:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-05 11:12:40');
INSERT INTO `sys_oper_log` VALUES ('209', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2006\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"查询\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"copyright:appClient:list\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-05 11:13:25');
INSERT INTO `sys_oper_log` VALUES ('210', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2006\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"增加\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"copyright:appClient:add\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-05 11:14:13');
INSERT INTO `sys_oper_log` VALUES ('211', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2006\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"修改\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"copyright:appClient:edit\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-05 11:19:43');
INSERT INTO `sys_oper_log` VALUES ('212', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2006\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"删除\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"copyright:appClient:remove\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-05 11:21:56');
INSERT INTO `sys_oper_log` VALUES ('213', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2008\" ],\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"联系人管理\" ],\r\n  \"url\" : [ \"/copyright/appLinkman\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"copyright:appLinkman:view\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-05 11:23:07');
INSERT INTO `sys_oper_log` VALUES ('214', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2008\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"查询\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"copyright:appLinkman:list\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-05 11:24:06');
INSERT INTO `sys_oper_log` VALUES ('215', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2008\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"增加\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"copyright:appLinkman:add\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-05 11:24:45');
INSERT INTO `sys_oper_log` VALUES ('216', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2008\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"修改\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"copyright:appLinkman:edit\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-05 11:25:14');
INSERT INTO `sys_oper_log` VALUES ('217', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2008\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"删除\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"copyright:appLinkman:remove\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-07-05 11:25:41');
INSERT INTO `sys_oper_log` VALUES ('218', '字典类型', '3', 'com.ruoyi.web.controller.system.SysDictTypeController.remove()', '1', 'admin', '研发部门', '/system/dict/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"12\" ]\r\n}', '0', null, '2019-07-05 15:42:59');
INSERT INTO `sys_oper_log` VALUES ('219', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', '1', 'admin', '研发部门', '/tool/gen/genCode/app_detailed', '127.0.0.1', '内网IP', '{ }', '0', null, '2019-07-05 16:40:39');
INSERT INTO `sys_oper_log` VALUES ('220', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"code\" : [ \"\" ],\r\n  \"clientId\" : [ \"\" ],\r\n  \"purchaseDate\" : [ \"\" ],\r\n  \"orderAmount\" : [ \"\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"creator\" : [ \"\" ],\r\n  \"creationTime\" : [ \"\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"\" ],\r\n  \"trackingNumber\" : [ \"\" ],\r\n  \"serviceCondition\" : [ \"\" ]\r\n}', '0', null, '2019-07-08 15:12:46');
INSERT INTO `sys_oper_log` VALUES ('221', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"code\" : [ \"\" ],\r\n  \"clientId\" : [ \"\" ],\r\n  \"purchaseDate\" : [ \"\" ],\r\n  \"orderAmount\" : [ \"\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"creator\" : [ \"\" ],\r\n  \"creationTime\" : [ \"\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"\" ],\r\n  \"trackingNumber\" : [ \"\" ],\r\n  \"serviceCondition\" : [ \"\" ]\r\n}', '0', null, '2019-07-08 15:12:52');
INSERT INTO `sys_oper_log` VALUES ('222', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"code\" : [ \"0709\" ],\r\n  \"clientId\" : [ \"3\" ],\r\n  \"purchaseDate\" : [ \"2019-07-02\" ],\r\n  \"orderAmount\" : [ \"655\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"creator\" : [ \"\" ],\r\n  \"creationTime\" : [ \"\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"\" ],\r\n  \"trackingNumber\" : [ \"\" ],\r\n  \"serviceCondition\" : [ \"\" ]\r\n}', '0', null, '2019-07-08 15:13:09');
INSERT INTO `sys_oper_log` VALUES ('223', '订单', '2', 'com.ruoyi.web.controller.copyright.AppIndentController.editSave()', '1', 'admin', '研发部门', '/copyright/appIndent/edit', '127.0.0.1', '内网IP', '{\r\n  \"indentId\" : [ \"1\" ],\r\n  \"productId\" : [ \"\" ],\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"code\" : [ \"\" ],\r\n  \"clientId\" : [ \"\" ],\r\n  \"purchaseDate\" : [ \"\" ],\r\n  \"orderAmount\" : [ \"\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"orderStatus\" : [ \"已提交\" ],\r\n  \"deliveryTime\" : [ \"\" ],\r\n  \"trackingNumber\" : [ \"\" ],\r\n  \"serviceCondition\" : [ \"\" ],\r\n  \"creator\" : [ \"\" ],\r\n  \"creationTime\" : [ \"\" ]\r\n}', '0', null, '2019-07-08 15:22:46');
INSERT INTO `sys_oper_log` VALUES ('224', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"code\" : [ \"111\" ],\r\n  \"clientId\" : [ \"111\" ],\r\n  \"purchaseDate\" : [ \"2019-07-09\" ],\r\n  \"orderAmount\" : [ \"\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"creator\" : [ \"\" ],\r\n  \"creationTime\" : [ \"\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"\" ],\r\n  \"trackingNumber\" : [ \"\" ],\r\n  \"serviceCondition\" : [ \"\" ]\r\n}', '0', null, '2019-07-08 15:49:07');
INSERT INTO `sys_oper_log` VALUES ('225', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"code\" : [ \"2222\" ],\r\n  \"clientId\" : [ \"222\" ],\r\n  \"purchaseDate\" : [ \"2019-07-09\" ],\r\n  \"orderAmount\" : [ \"2222\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"remark\" : [ \"222\" ],\r\n  \"creator\" : [ \"2222\" ],\r\n  \"creationTime\" : [ \"\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"\" ],\r\n  \"trackingNumber\" : [ \"\" ],\r\n  \"serviceCondition\" : [ \"\" ]\r\n}', '0', null, '2019-07-08 15:49:20');
INSERT INTO `sys_oper_log` VALUES ('226', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"code\" : [ \"3333\" ],\r\n  \"clientId\" : [ \"3333\" ],\r\n  \"purchaseDate\" : [ \"2019-07-02\" ],\r\n  \"orderAmount\" : [ \"3333\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"remark\" : [ \"3333\" ],\r\n  \"creator\" : [ \"3333\" ],\r\n  \"creationTime\" : [ \"2019-07-10\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-07-08\" ],\r\n  \"trackingNumber\" : [ \"\" ],\r\n  \"serviceCondition\" : [ \"\" ]\r\n}', '0', null, '2019-07-08 15:49:39');
INSERT INTO `sys_oper_log` VALUES ('227', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"code\" : [ \"4444\" ],\r\n  \"clientId\" : [ \"4444\" ],\r\n  \"purchaseDate\" : [ \"2019-07-08\" ],\r\n  \"orderAmount\" : [ \"4444\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"remark\" : [ \"4444\" ],\r\n  \"creator\" : [ \"4444\" ],\r\n  \"creationTime\" : [ \"2019-07-08\" ],\r\n  \"orderStatus\" : [ \"已提交\" ],\r\n  \"deliveryTime\" : [ \"2019-07-08\" ],\r\n  \"trackingNumber\" : [ \"4444\" ],\r\n  \"serviceCondition\" : [ \"4444\" ]\r\n}', '0', null, '2019-07-08 15:50:04');
INSERT INTO `sys_oper_log` VALUES ('228', '订单', '2', 'com.ruoyi.web.controller.copyright.AppIndentController.editSave()', '1', 'admin', '研发部门', '/copyright/appIndent/edit', '127.0.0.1', '内网IP', '{\r\n  \"indentId\" : [ \"7\" ],\r\n  \"productId\" : [ \"\" ],\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"code\" : [ \"4444\" ],\r\n  \"clientId\" : [ \"4444\" ],\r\n  \"purchaseDate\" : [ \"Mon Jul 08 00:00:00 CST 2019\" ],\r\n  \"orderAmount\" : [ \"4444\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"remark\" : [ \"4444\" ],\r\n  \"orderStatus\" : [ \"已提交\" ],\r\n  \"deliveryTime\" : [ \"Mon Jul 08 00:00:00 CST 2019\" ],\r\n  \"trackingNumber\" : [ \"4444\" ],\r\n  \"serviceCondition\" : [ \"4444\" ],\r\n  \"creator\" : [ \"4444\" ],\r\n  \"creationTime\" : [ \"Mon Jul 08 00:00:00 CST 2019\" ]\r\n}', '0', null, '2019-07-08 15:50:13');
INSERT INTO `sys_oper_log` VALUES ('229', '订单', '2', 'com.ruoyi.web.controller.copyright.AppIndentController.editSave()', '1', 'admin', '研发部门', '/copyright/appIndent/edit', '127.0.0.1', '内网IP', '{\r\n  \"indentId\" : [ \"6\" ],\r\n  \"productId\" : [ \"\" ],\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"code\" : [ \"3333\" ],\r\n  \"clientId\" : [ \"3333\" ],\r\n  \"purchaseDate\" : [ \"Tue Jul 02 00:00:00 CST 2019\" ],\r\n  \"orderAmount\" : [ \"3333\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"remark\" : [ \"3333\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"Mon Jul 08 00:00:00 CST 2019\" ],\r\n  \"trackingNumber\" : [ \"\" ],\r\n  \"serviceCondition\" : [ \"\" ],\r\n  \"creator\" : [ \"3333\" ],\r\n  \"creationTime\" : [ \"2019-07-08\" ]\r\n}', '0', null, '2019-07-08 15:50:39');
INSERT INTO `sys_oper_log` VALUES ('230', '产品', '1', 'com.ruoyi.web.controller.copyright.AppProductController.addSave()', '1', 'admin', '研发部门', '/copyright/appProduct/add', '127.0.0.1', '内网IP', '{\r\n  \"noticeType\" : [ \"版权\" ],\r\n  \"name\" : [ \"商标\" ],\r\n  \"salesPrice\" : [ \"1000\" ],\r\n  \"purchasePrice\" : [ \"1000\" ],\r\n  \"discount\" : [ \"\" ],\r\n  \"supplierCompany\" : [ \"111\" ],\r\n  \"supplierName\" : [ \"111\" ],\r\n  \"supplierPhone\" : [ \"111111111\" ],\r\n  \"supplierQq\" : [ \"11111111\" ],\r\n  \"award\" : [ \"111\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"111\" ],\r\n  \"valid\" : [ \"1\" ],\r\n  \"order\" : [ \"1\" ]\r\n}', '0', null, '2019-07-08 15:51:48');
INSERT INTO `sys_oper_log` VALUES ('231', '产品', '2', 'com.ruoyi.web.controller.copyright.AppProductController.editSave()', '1', 'admin', '研发部门', '/copyright/appProduct/edit', '127.0.0.1', '内网IP', '{\r\n  \"productId\" : [ \"2\" ],\r\n  \"noticeType\" : [ \"专利\" ],\r\n  \"name\" : [ \"商标\" ],\r\n  \"salesPrice\" : [ \"1000\" ],\r\n  \"purchasePrice\" : [ \"1000\" ],\r\n  \"discount\" : [ \"\" ],\r\n  \"supplierCompany\" : [ \"111\" ],\r\n  \"supplierName\" : [ \"111\" ],\r\n  \"supplierPhone\" : [ \"111111111\" ],\r\n  \"supplierQq\" : [ \"11111111\" ],\r\n  \"award\" : [ \"111\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"111\" ],\r\n  \"valid\" : [ \"1\" ],\r\n  \"rank\" : [ \"\" ]\r\n}', '0', null, '2019-07-08 15:56:18');
INSERT INTO `sys_oper_log` VALUES ('232', '产品', '2', 'com.ruoyi.web.controller.copyright.AppProductController.editSave()', '1', 'admin', '研发部门', '/copyright/appProduct/edit', '127.0.0.1', '内网IP', '{\r\n  \"productId\" : [ \"2\" ],\r\n  \"noticeType\" : [ \"专利\" ],\r\n  \"name\" : [ \"商标\" ],\r\n  \"salesPrice\" : [ \"1111\" ],\r\n  \"purchasePrice\" : [ \"1111\" ],\r\n  \"discount\" : [ \"\" ],\r\n  \"supplierCompany\" : [ \"111\" ],\r\n  \"supplierName\" : [ \"111\" ],\r\n  \"supplierPhone\" : [ \"111111111\" ],\r\n  \"supplierQq\" : [ \"11111111\" ],\r\n  \"award\" : [ \"111\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"111\" ],\r\n  \"valid\" : [ \"1\" ],\r\n  \"rank\" : [ \"\" ]\r\n}', '0', null, '2019-07-08 15:58:42');
INSERT INTO `sys_oper_log` VALUES ('233', '产品', '2', 'com.ruoyi.web.controller.copyright.AppProductController.editSave()', '1', 'admin', '研发部门', '/copyright/appProduct/edit', '127.0.0.1', '内网IP', '{\r\n  \"productId\" : [ \"1\" ],\r\n  \"noticeType\" : [ \"网站\" ],\r\n  \"name\" : [ \"11-15工作日\" ],\r\n  \"salesPrice\" : [ \"11\" ],\r\n  \"purchasePrice\" : [ \"1\" ],\r\n  \"discount\" : [ \"30\" ],\r\n  \"supplierCompany\" : [ \"ss\" ],\r\n  \"supplierName\" : [ \"ss\" ],\r\n  \"supplierPhone\" : [ \"\" ],\r\n  \"supplierQq\" : [ \"\" ],\r\n  \"award\" : [ \"\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"valid\" : [ \"1\" ],\r\n  \"rank\" : [ \"1\" ]\r\n}', '0', null, '2019-07-08 15:59:51');
INSERT INTO `sys_oper_log` VALUES ('234', '产品', '1', 'com.ruoyi.web.controller.copyright.AppProductController.addSave()', '1', 'admin', null, '/copyright/appProduct/add', '127.0.0.1', '内网IP', '{\r\n  \"noticeType\" : [ \"网站\" ],\r\n  \"name\" : [ \"软件\" ],\r\n  \"salesPrice\" : [ \"2222\" ],\r\n  \"purchasePrice\" : [ \"222\" ],\r\n  \"discount\" : [ \"22\" ],\r\n  \"supplierCompany\" : [ \"2222\" ],\r\n  \"supplierName\" : [ \"2222\" ],\r\n  \"supplierPhone\" : [ \"2222\" ],\r\n  \"supplierQq\" : [ \"2222\" ],\r\n  \"award\" : [ \"2222\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"2222\" ],\r\n  \"valid\" : [ \"1\" ],\r\n  \"order\" : [ \"2222\" ]\r\n}', '0', null, '2019-07-08 16:22:56');
INSERT INTO `sys_oper_log` VALUES ('235', '产品', '2', 'com.ruoyi.web.controller.copyright.AppProductController.editSave()', '1', 'admin', null, '/copyright/appProduct/edit', '127.0.0.1', '内网IP', '{\r\n  \"productId\" : [ \"3\" ],\r\n  \"noticeType\" : [ \"版权\" ],\r\n  \"workdays\" : [ \"5-20\" ],\r\n  \"salesPrice\" : [ \"2222\" ],\r\n  \"purchasePrice\" : [ \"222\" ],\r\n  \"discount\" : [ \"22\" ],\r\n  \"supplierCompany\" : [ \"2222\" ],\r\n  \"supplierName\" : [ \"2222\" ],\r\n  \"supplierPhone\" : [ \"2222\" ],\r\n  \"supplierQq\" : [ \"2222\" ],\r\n  \"award\" : [ \"2222\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"2222\" ],\r\n  \"valid\" : [ \"1\" ],\r\n  \"rank\" : [ \"\" ]\r\n}', '0', null, '2019-07-08 16:38:42');
INSERT INTO `sys_oper_log` VALUES ('236', '产品', '1', 'com.ruoyi.web.controller.copyright.AppProductController.addSave()', '1', 'admin', null, '/copyright/appProduct/add', '127.0.0.1', '内网IP', '{\r\n  \"noticeType\" : [ \"专利\" ],\r\n  \"workdays\" : [ \"10-20日\" ],\r\n  \"salesPrice\" : [ \"3333\" ],\r\n  \"purchasePrice\" : [ \"333\" ],\r\n  \"discount\" : [ \"33\" ],\r\n  \"supplierCompany\" : [ \"33333\" ],\r\n  \"supplierName\" : [ \"3333\" ],\r\n  \"supplierPhone\" : [ \"3333\" ],\r\n  \"supplierQq\" : [ \"3333\" ],\r\n  \"award\" : [ \"3333\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"3333\" ],\r\n  \"valid\" : [ \"1\" ],\r\n  \"order\" : [ \"3333\" ]\r\n}', '0', null, '2019-07-09 15:26:20');
INSERT INTO `sys_oper_log` VALUES ('237', '产品', '1', 'com.ruoyi.web.controller.copyright.AppProductController.addSave()', '1', 'admin', null, '/copyright/appProduct/add', '127.0.0.1', '内网IP', '{\r\n  \"noticeType\" : [ \"网站\" ],\r\n  \"workdays\" : [ \"5-20\" ],\r\n  \"salesPrice\" : [ \"4444\" ],\r\n  \"purchasePrice\" : [ \"444\" ],\r\n  \"discount\" : [ \"4\" ],\r\n  \"supplierCompany\" : [ \"4444\" ],\r\n  \"supplierName\" : [ \"4444\" ],\r\n  \"supplierPhone\" : [ \"4444\" ],\r\n  \"supplierQq\" : [ \"4444\" ],\r\n  \"award\" : [ \"4444\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"4444\" ],\r\n  \"valid\" : [ \"1\" ],\r\n  \"order\" : [ \"4444\" ]\r\n}', '0', null, '2019-07-09 15:27:40');
INSERT INTO `sys_oper_log` VALUES ('238', '产品', '1', 'com.ruoyi.web.controller.copyright.AppProductController.addSave()', '1', 'admin', null, '/copyright/appProduct/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"其他\" ],\r\n  \"workdays\" : [ \"11-15工作日\" ],\r\n  \"salesPrice\" : [ \"5555\" ],\r\n  \"purchasePrice\" : [ \"5555\" ],\r\n  \"discount\" : [ \"555\" ],\r\n  \"supplierCompany\" : [ \"555\" ],\r\n  \"supplierName\" : [ \"555\" ],\r\n  \"supplierPhone\" : [ \"555\" ],\r\n  \"supplierQq\" : [ \"555\" ],\r\n  \"award\" : [ \"555\" ],\r\n  \"invoice\" : [ \"1\" ],\r\n  \"remark\" : [ \"555\" ],\r\n  \"valid\" : [ \"0\" ],\r\n  \"order\" : [ \"555\" ]\r\n}', '0', null, '2019-07-09 15:31:35');
INSERT INTO `sys_oper_log` VALUES ('239', '产品', '3', 'com.ruoyi.web.controller.copyright.AppProductController.remove()', '1', 'admin', null, '/copyright/appProduct/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1,2,3,4,5,6\" ]\r\n}', '0', null, '2019-07-09 15:32:02');
INSERT INTO `sys_oper_log` VALUES ('240', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', null, '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1,2,3,4,5,6,7\" ]\r\n}', '0', null, '2019-07-09 15:32:23');
INSERT INTO `sys_oper_log` VALUES ('241', '产品', '1', 'com.ruoyi.web.controller.copyright.AppProductController.addSave()', '1', 'admin', null, '/copyright/appProduct/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"\" ],\r\n  \"workdays\" : [ \"\" ],\r\n  \"salesPrice\" : [ \"\" ],\r\n  \"purchasePrice\" : [ \"\" ],\r\n  \"discount\" : [ \"\" ],\r\n  \"supplierCompany\" : [ \"\" ],\r\n  \"supplierName\" : [ \"\" ],\r\n  \"supplierPhone\" : [ \"\" ],\r\n  \"supplierQq\" : [ \"\" ],\r\n  \"award\" : [ \"\" ],\r\n  \"invoice\" : [ \"2\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"valid\" : [ \"1\" ],\r\n  \"order\" : [ \"\" ]\r\n}', '0', null, '2019-07-09 15:41:42');
INSERT INTO `sys_oper_log` VALUES ('242', '产品', '3', 'com.ruoyi.web.controller.copyright.AppProductController.remove()', '1', 'admin', null, '/copyright/appProduct/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"7\" ]\r\n}', '0', null, '2019-07-09 15:41:55');
INSERT INTO `sys_oper_log` VALUES ('243', '产品', '1', 'com.ruoyi.web.controller.copyright.AppProductController.addSave()', '1', 'admin', null, '/copyright/appProduct/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"\" ],\r\n  \"workdays\" : [ \"\" ],\r\n  \"salesPrice\" : [ \"\" ],\r\n  \"purchasePrice\" : [ \"\" ],\r\n  \"discount\" : [ \"\" ],\r\n  \"supplierCompany\" : [ \"\" ],\r\n  \"supplierName\" : [ \"\" ],\r\n  \"supplierPhone\" : [ \"\" ],\r\n  \"supplierQq\" : [ \"\" ],\r\n  \"award\" : [ \"\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"valid\" : [ \"1\" ],\r\n  \"order\" : [ \"\" ]\r\n}', '0', null, '2019-07-09 15:42:59');
INSERT INTO `sys_oper_log` VALUES ('244', '产品', '1', 'com.ruoyi.web.controller.copyright.AppProductController.addSave()', '1', 'admin', null, '/copyright/appProduct/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"\" ],\r\n  \"workdays\" : [ \"\" ],\r\n  \"salesPrice\" : [ \"\" ],\r\n  \"purchasePrice\" : [ \"\" ],\r\n  \"discount\" : [ \"\" ],\r\n  \"supplierCompany\" : [ \"\" ],\r\n  \"supplierName\" : [ \"\" ],\r\n  \"supplierPhone\" : [ \"\" ],\r\n  \"supplierQq\" : [ \"\" ],\r\n  \"award\" : [ \"\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"valid\" : [ \"1\" ],\r\n  \"order\" : [ \"\" ]\r\n}', '0', null, '2019-07-09 15:43:05');
INSERT INTO `sys_oper_log` VALUES ('245', '产品', '3', 'com.ruoyi.web.controller.copyright.AppProductController.remove()', '1', 'admin', null, '/copyright/appProduct/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"8,9\" ]\r\n}', '0', null, '2019-07-09 15:44:38');
INSERT INTO `sys_oper_log` VALUES ('246', '产品', '1', 'com.ruoyi.web.controller.copyright.AppProductController.addSave()', '1', 'admin', null, '/copyright/appProduct/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"\" ],\r\n  \"workdays\" : [ \"\" ],\r\n  \"salesPrice\" : [ \"\" ],\r\n  \"purchasePrice\" : [ \"\" ],\r\n  \"discount\" : [ \"\" ],\r\n  \"supplierCompany\" : [ \"\" ],\r\n  \"supplierName\" : [ \"\" ],\r\n  \"supplierPhone\" : [ \"\" ],\r\n  \"supplierQq\" : [ \"\" ],\r\n  \"award\" : [ \"\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"valid\" : [ \"1\" ],\r\n  \"order\" : [ \"\" ]\r\n}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'type\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.copyright.mapper.AppProductMapper.insertAppProduct-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_product    ( invoice,        valid )           values ( ?,        ? )\r\n### Cause: java.sql.SQLException: Field \'type\' doesn\'t have a default value\n; Field \'type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'type\' doesn\'t have a default value', '2019-07-09 15:45:04');
INSERT INTO `sys_oper_log` VALUES ('247', '产品', '1', 'com.ruoyi.web.controller.copyright.AppProductController.addSave()', '1', 'admin', null, '/copyright/appProduct/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"\" ],\r\n  \"workdays\" : [ \"\" ],\r\n  \"salesPrice\" : [ \"\" ],\r\n  \"purchasePrice\" : [ \"\" ],\r\n  \"discount\" : [ \"\" ],\r\n  \"supplierCompany\" : [ \"\" ],\r\n  \"supplierName\" : [ \"\" ],\r\n  \"supplierPhone\" : [ \"\" ],\r\n  \"supplierQq\" : [ \"\" ],\r\n  \"award\" : [ \"\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"valid\" : [ \"1\" ],\r\n  \"order\" : [ \"\" ]\r\n}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'type\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.copyright.mapper.AppProductMapper.insertAppProduct-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_product    ( invoice,        valid )           values ( ?,        ? )\r\n### Cause: java.sql.SQLException: Field \'type\' doesn\'t have a default value\n; Field \'type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'type\' doesn\'t have a default value', '2019-07-09 15:45:07');
INSERT INTO `sys_oper_log` VALUES ('248', '产品', '1', 'com.ruoyi.web.controller.copyright.AppProductController.addSave()', '1', 'admin', null, '/copyright/appProduct/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"软著\" ],\r\n  \"workdays\" : [ \"5-10天\" ],\r\n  \"salesPrice\" : [ \"1111\" ],\r\n  \"purchasePrice\" : [ \"1111\" ],\r\n  \"discount\" : [ \"1\" ],\r\n  \"supplierCompany\" : [ \"111111\" ],\r\n  \"supplierName\" : [ \"11111\" ],\r\n  \"supplierPhone\" : [ \"11111\" ],\r\n  \"supplierQq\" : [ \"11111\" ],\r\n  \"award\" : [ \"11111\" ],\r\n  \"invoice\" : [ \"2\" ],\r\n  \"remark\" : [ \"111\" ],\r\n  \"valid\" : [ \"0\" ],\r\n  \"order\" : [ \"11111\" ]\r\n}', '0', null, '2019-07-09 15:46:35');
INSERT INTO `sys_oper_log` VALUES ('249', '产品', '1', 'com.ruoyi.web.controller.copyright.AppProductController.addSave()', '1', 'admin', null, '/copyright/appProduct/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"商标\" ],\r\n  \"workdays\" : [ \"15-20日\" ],\r\n  \"salesPrice\" : [ \"2222\" ],\r\n  \"purchasePrice\" : [ \"2222\" ],\r\n  \"discount\" : [ \"22\" ],\r\n  \"supplierCompany\" : [ \"22222\" ],\r\n  \"supplierName\" : [ \"22222\" ],\r\n  \"supplierPhone\" : [ \"22222\" ],\r\n  \"supplierQq\" : [ \"2222\" ],\r\n  \"award\" : [ \"2222\" ],\r\n  \"invoice\" : [ \"1\" ],\r\n  \"remark\" : [ \"2222\" ],\r\n  \"valid\" : [ \"1\" ],\r\n  \"order\" : [ \"222222\" ]\r\n}', '0', null, '2019-07-09 15:47:21');
INSERT INTO `sys_oper_log` VALUES ('250', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"code\" : [ \"1111\" ],\r\n  \"clientId\" : [ \"1111\" ],\r\n  \"purchaseDate\" : [ \"2019-07-04\" ],\r\n  \"orderAmount\" : [ \"1111\" ],\r\n  \"materials\" : [ \"1\" ],\r\n  \"remark\" : [ \"1111\" ],\r\n  \"creator\" : [ \"1111\" ],\r\n  \"creationTime\" : [ \"2019-07-02\" ],\r\n  \"orderStatus\" : [ \"已提交\" ],\r\n  \"deliveryTime\" : [ \"\" ],\r\n  \"trackingNumber\" : [ \"111\" ],\r\n  \"serviceCondition\" : [ \"111\" ]\r\n}', '0', null, '2019-07-09 16:46:52');
INSERT INTO `sys_oper_log` VALUES ('251', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', '研发部门', '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"8\" ]\r\n}', '0', null, '2019-07-09 16:46:55');
INSERT INTO `sys_oper_log` VALUES ('252', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"product\" : [ \"商标\" ],\r\n  \"code\" : [ \"1111\" ],\r\n  \"clientId\" : [ \"1111\" ],\r\n  \"purchaseDate\" : [ \"2019-07-03\" ],\r\n  \"orderAmount\" : [ \"1111\" ],\r\n  \"discount\" : [ \"1\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"1\" ],\r\n  \"remark\" : [ \"111\" ],\r\n  \"creator\" : [ \"111\" ],\r\n  \"creationTime\" : [ \"2019-07-09\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-07-09\" ],\r\n  \"trackingNumber\" : [ \"1111\" ],\r\n  \"serviceCondition\" : [ \"1111\" ]\r\n}', '0', null, '2019-07-09 17:19:47');
INSERT INTO `sys_oper_log` VALUES ('253', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"product\" : [ \"商标\" ],\r\n  \"code\" : [ \"2222\" ],\r\n  \"clientId\" : [ \"222\" ],\r\n  \"purchaseDate\" : [ \"2019-07-03\" ],\r\n  \"orderAmount\" : [ \"222\" ],\r\n  \"discount\" : [ \"22\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"1\" ],\r\n  \"remark\" : [ \"222\" ],\r\n  \"creator\" : [ \"222\" ],\r\n  \"creationTime\" : [ \"2019-07-09\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-07-09\" ],\r\n  \"trackingNumber\" : [ \"222\" ],\r\n  \"serviceCondition\" : [ \"222\" ]\r\n}', '0', null, '2019-07-09 17:24:56');
INSERT INTO `sys_oper_log` VALUES ('254', '产品', '1', 'com.ruoyi.web.controller.copyright.AppProductController.addSave()', '1', 'admin', null, '/copyright/appProduct/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"作品\" ],\r\n  \"workdays\" : [ \"当天\" ],\r\n  \"salesPrice\" : [ \"3333\" ],\r\n  \"purchasePrice\" : [ \"3333\" ],\r\n  \"discount\" : [ \"3\" ],\r\n  \"supplierCompany\" : [ \"3333\" ],\r\n  \"supplierName\" : [ \"3333\" ],\r\n  \"supplierPhone\" : [ \"3333\" ],\r\n  \"supplierQq\" : [ \"3333\" ],\r\n  \"award\" : [ \"33\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"valid\" : [ \"1\" ],\r\n  \"order\" : [ \"\" ]\r\n}', '0', null, '2019-07-12 10:03:23');
INSERT INTO `sys_oper_log` VALUES ('255', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', '研发部门', '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"10\" ]\r\n}', '0', null, '2019-07-15 09:00:48');
INSERT INTO `sys_oper_log` VALUES ('256', '重置密码', '2', 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', '1', 'admin', null, '/system/user/resetPwd/2', '127.0.0.1', '内网IP', '{ }', '0', null, '2019-07-15 11:26:33');
INSERT INTO `sys_oper_log` VALUES ('257', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', null, '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"indentId\" : [ \"\" ],\r\n  \"productId\" : [ \"\" ],\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"amount\" : [ \"\" ],\r\n  \"deliveryTime\" : [ \"\" ],\r\n  \"trackingNumber\" : [ \"\" ]\r\n}', '0', null, '2019-07-15 11:50:43');
INSERT INTO `sys_oper_log` VALUES ('258', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', null, '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"indentId\" : [ \"1111\" ],\r\n  \"productId\" : [ \"1111\" ],\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"amount\" : [ \"111\" ],\r\n  \"deliveryTime\" : [ \"2019-07-02\" ],\r\n  \"trackingNumber\" : [ \"211111\" ]\r\n}', '0', null, '2019-07-15 11:51:05');
INSERT INTO `sys_oper_log` VALUES ('259', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"indentId\" : [ \"\" ],\r\n  \"productId\" : [ \"\" ],\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"amount\" : [ \"\" ],\r\n  \"deliveryTime\" : [ \"\" ],\r\n  \"trackingNumber\" : [ \"\" ]\r\n}', '0', null, '2019-07-16 09:34:20');
INSERT INTO `sys_oper_log` VALUES ('260', '订单', '2', 'com.ruoyi.web.controller.copyright.AppIndentController.editSave()', '1', 'admin', '研发部门', '/copyright/appIndent/edit', '127.0.0.1', '内网IP', '{\r\n  \"indentId\" : [ \"9\" ],\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"code\" : [ \"1111\" ],\r\n  \"clientId\" : [ \"1111\" ],\r\n  \"purchaseDate\" : [ \"Wed Jul 03 00:00:00 CST 2019\" ],\r\n  \"orderAmount\" : [ \"1111\" ],\r\n  \"discount\" : [ \"1\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"111\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"Tue Jul 09 00:00:00 CST 2019\" ],\r\n  \"trackingNumber\" : [ \"1111\" ],\r\n  \"serviceCondition\" : [ \"1111\" ],\r\n  \"creator\" : [ \"111\" ],\r\n  \"creationTime\" : [ \"Tue Jul 09 00:00:00 CST 2019\" ]\r\n}', '0', null, '2019-07-16 09:38:59');
INSERT INTO `sys_oper_log` VALUES ('261', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"indentId\" : [ \"\" ],\r\n  \"productId\" : [ \"\" ],\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"amount\" : [ \"1\" ],\r\n  \"deliveryTime\" : [ \"\" ],\r\n  \"trackingNumber\" : [ \"\" ]\r\n}', '0', null, '2019-07-16 10:43:53');
INSERT INTO `sys_oper_log` VALUES ('262', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—卓森\" ],\r\n  \"product\" : [ \"商标:15-20日\" ],\r\n  \"code\" : [ \"33333\" ],\r\n  \"clientId\" : [ \"333\" ],\r\n  \"purchaseDate\" : [ \"2019-07-04\" ],\r\n  \"orderAmount\" : [ \"333\" ],\r\n  \"discount\" : [ \"333\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"1\" ],\r\n  \"remark\" : [ \"333\" ],\r\n  \"creator\" : [ \"333\" ],\r\n  \"creationTime\" : [ \"2019-07-16\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-07-16\" ],\r\n  \"trackingNumber\" : [ \"333\" ],\r\n  \"serviceCondition\" : [ \"333\" ]\r\n}', '0', null, '2019-07-16 16:33:39');
INSERT INTO `sys_oper_log` VALUES ('263', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"product\" : [ \"商标:15-20日\" ],\r\n  \"code\" : [ \"33333\" ],\r\n  \"clientId\" : [ \"3333\" ],\r\n  \"purchaseDate\" : [ \"2019-07-16\" ],\r\n  \"orderAmount\" : [ \"333\" ],\r\n  \"discount\" : [ \"333\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"2\" ],\r\n  \"remark\" : [ \"333\" ],\r\n  \"creator\" : [ \"333\" ],\r\n  \"creationTime\" : [ \"2019-07-02\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-07-16\" ],\r\n  \"trackingNumber\" : [ \"333\" ],\r\n  \"serviceCondition\" : [ \"333\" ]\r\n}', '0', null, '2019-07-16 17:09:40');
INSERT INTO `sys_oper_log` VALUES ('264', '产品', '1', 'com.ruoyi.web.controller.copyright.AppProductController.addSave()', '1', 'admin', '研发部门', '/copyright/appProduct/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"产品aaa\" ],\r\n  \"workdays\" : [ \"20日\" ],\r\n  \"salesPrice\" : [ \"444\" ],\r\n  \"purchasePrice\" : [ \"444\" ],\r\n  \"discount\" : [ \"34\" ],\r\n  \"supplierCompany\" : [ \"44\" ],\r\n  \"supplierName\" : [ \"444\" ],\r\n  \"supplierPhone\" : [ \"444\" ],\r\n  \"supplierQq\" : [ \"44\" ],\r\n  \"award\" : [ \"44\" ],\r\n  \"invoice\" : [ \"1\" ],\r\n  \"remark\" : [ \"44\" ],\r\n  \"valid\" : [ \"1\" ],\r\n  \"order\" : [ \"\" ]\r\n}', '0', null, '2019-07-16 17:11:50');
INSERT INTO `sys_oper_log` VALUES ('265', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"product\" : [ \"产品aaa:20日\" ],\r\n  \"code\" : [ \"55555\" ],\r\n  \"clientId\" : [ \"5555\" ],\r\n  \"purchaseDate\" : [ \"2019-07-09\" ],\r\n  \"orderAmount\" : [ \"55555\" ],\r\n  \"discount\" : [ \"5\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"2\" ],\r\n  \"remark\" : [ \"55555\" ],\r\n  \"creator\" : [ \"5555\" ],\r\n  \"creationTime\" : [ \"2019-07-09\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-07-09\" ],\r\n  \"trackingNumber\" : [ \"55555\" ],\r\n  \"serviceCondition\" : [ \"55555\" ]\r\n}', '0', null, '2019-07-16 17:19:15');
INSERT INTO `sys_oper_log` VALUES ('266', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"indentId\" : [ \"\" ],\r\n  \"productId\" : [ \"\" ],\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"amount\" : [ \"\" ],\r\n  \"deliveryTime\" : [ \"\" ],\r\n  \"trackingNumber\" : [ \"\" ]\r\n}', '0', null, '2019-07-19 09:38:44');
INSERT INTO `sys_oper_log` VALUES ('267', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"indentId\" : [ \"\" ],\r\n  \"productId\" : [ \"\" ],\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"amount\" : [ \"\" ],\r\n  \"deliveryTime\" : [ \"\" ],\r\n  \"trackingNumber\" : [ \"\" ]\r\n}', '0', null, '2019-07-19 09:38:49');
INSERT INTO `sys_oper_log` VALUES ('268', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"indentId\" : [ \"\" ],\r\n  \"productId\" : [ \"\" ],\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"amount\" : [ \"\" ],\r\n  \"deliveryTime\" : [ \"\" ],\r\n  \"trackingNumber\" : [ \"\" ]\r\n}', '0', null, '2019-07-19 09:48:06');
INSERT INTO `sys_oper_log` VALUES ('269', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"code\" : [ \"2222222222\" ],\r\n  \"clientId\" : [ \"3333333333\" ],\r\n  \"purchaseDate\" : [ \"2019-08-12\" ],\r\n  \"orderAmount\" : [ \"3333333333\" ],\r\n  \"discount\" : [ \"3\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"33\" ],\r\n  \"creator\" : [ \"33\" ],\r\n  \"creationTime\" : [ \"2019-08-13\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-08-13\" ],\r\n  \"trackingNumber\" : [ \"333333333\" ],\r\n  \"serviceCondition\" : [ \"333333333\" ]\r\n}', '0', null, '2019-08-12 09:32:19');
INSERT INTO `sys_oper_log` VALUES ('270', '产品', '1', 'com.ruoyi.web.controller.copyright.AppProductController.addSave()', '1', 'admin', '研发部门', '/copyright/appProduct/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"商标111111\" ],\r\n  \"workdays\" : [ \"100\" ],\r\n  \"salesPrice\" : [ \"111\" ],\r\n  \"purchasePrice\" : [ \"111\" ],\r\n  \"discount\" : [ \"11\" ],\r\n  \"supplierCompany\" : [ \"11\" ],\r\n  \"supplierName\" : [ \"111\" ],\r\n  \"supplierPhone\" : [ \"11\" ],\r\n  \"supplierQq\" : [ \"1\" ],\r\n  \"award\" : [ \"-5\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"valid\" : [ \"1\" ],\r\n  \"order\" : [ \"\" ]\r\n}', '0', null, '2019-08-12 09:35:00');
INSERT INTO `sys_oper_log` VALUES ('271', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"indentId\" : [ \"\" ],\r\n  \"productId\" : [ \"\" ],\r\n  \"product\" : [ \"商标111111:100\" ],\r\n  \"amount\" : [ \"\" ],\r\n  \"deliveryTime\" : [ \"\" ],\r\n  \"trackingNumber\" : [ \"\" ]\r\n}', '0', null, '2019-08-12 09:35:12');
INSERT INTO `sys_oper_log` VALUES ('272', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"indentId\" : [ \"\" ],\r\n  \"productId\" : [ \"\" ],\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"amount\" : [ \"\" ],\r\n  \"deliveryTime\" : [ \"\" ],\r\n  \"trackingNumber\" : [ \"\" ]\r\n}', '0', null, '2019-08-12 09:36:15');
INSERT INTO `sys_oper_log` VALUES ('273', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"indentId\" : [ \"\" ],\r\n  \"productId\" : [ \"\" ],\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"amount\" : [ \"\" ],\r\n  \"deliveryTime\" : [ \"\" ],\r\n  \"trackingNumber\" : [ \"\" ]\r\n}', '0', null, '2019-08-12 09:36:20');
INSERT INTO `sys_oper_log` VALUES ('274', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"indentId\" : [ \"\" ],\r\n  \"productId\" : [ \"\" ],\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"amount\" : [ \"\" ],\r\n  \"deliveryTime\" : [ \"\" ],\r\n  \"trackingNumber\" : [ \"\" ]\r\n}', '0', null, '2019-08-12 09:36:42');
INSERT INTO `sys_oper_log` VALUES ('275', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"indentId\" : [ \"\" ],\r\n  \"productId\" : [ \"\" ],\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"amount\" : [ \"\" ],\r\n  \"deliveryTime\" : [ \"\" ],\r\n  \"trackingNumber\" : [ \"\" ]\r\n}', '0', null, '2019-08-12 09:36:46');
INSERT INTO `sys_oper_log` VALUES ('276', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"code\" : [ \"5555\" ],\r\n  \"clientId\" : [ \"555\" ],\r\n  \"purchaseDate\" : [ \"2019-08-13\" ],\r\n  \"orderAmount\" : [ \"555\" ],\r\n  \"discount\" : [ \"55\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"2\" ],\r\n  \"remark\" : [ \"555\" ],\r\n  \"creator\" : [ \"55\" ],\r\n  \"creationTime\" : [ \"2019-08-13\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-08-13\" ],\r\n  \"trackingNumber\" : [ \"5555\" ],\r\n  \"serviceCondition\" : [ \"555\" ]\r\n}', '0', null, '2019-08-13 08:33:21');
INSERT INTO `sys_oper_log` VALUES ('277', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—51版权\" ],\r\n  \"product\" : [ \"作品:当天\" ],\r\n  \"code\" : [ \"6666\" ],\r\n  \"clientId\" : [ \"666\" ],\r\n  \"purchaseDate\" : [ \"2019-08-13\" ],\r\n  \"orderAmount\" : [ \"666\" ],\r\n  \"discount\" : [ \"66\" ],\r\n  \"materials\" : [ \"1\" ],\r\n  \"invoice\" : [ \"2\" ],\r\n  \"remark\" : [ \"66666\" ],\r\n  \"creator\" : [ \"666\" ],\r\n  \"creationTime\" : [ \"2019-08-13\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-08-13\" ],\r\n  \"trackingNumber\" : [ \"66\" ],\r\n  \"serviceCondition\" : [ \"666\" ]\r\n}', '0', null, '2019-08-13 08:33:56');
INSERT INTO `sys_oper_log` VALUES ('278', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"京东\" ],\r\n  \"product\" : [ \"作品:当天\" ],\r\n  \"code\" : [ \"6666\" ],\r\n  \"clientId\" : [ \"555\" ],\r\n  \"purchaseDate\" : [ \"2019-08-13\" ],\r\n  \"orderAmount\" : [ \"55\" ],\r\n  \"discount\" : [ \"55555\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"1\" ],\r\n  \"remark\" : [ \"55\" ],\r\n  \"creator\" : [ \"666\" ],\r\n  \"creationTime\" : [ \"2019-08-13\" ],\r\n  \"orderStatus\" : [ \"已提交\" ],\r\n  \"deliveryTime\" : [ \"2019-08-06\" ],\r\n  \"trackingNumber\" : [ \"666\" ],\r\n  \"serviceCondition\" : [ \"666\" ]\r\n}', '0', null, '2019-08-13 08:34:50');
INSERT INTO `sys_oper_log` VALUES ('279', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"京东\" ],\r\n  \"product\" : [ \"商标:15-20日\" ],\r\n  \"code\" : [ \"888\" ],\r\n  \"clientId\" : [ \"8888\" ],\r\n  \"purchaseDate\" : [ \"2019-08-13\" ],\r\n  \"orderAmount\" : [ \"88888\" ],\r\n  \"discount\" : [ \"8888\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"1\" ],\r\n  \"remark\" : [ \"8888\" ],\r\n  \"creator\" : [ \"888\" ],\r\n  \"creationTime\" : [ \"2019-08-12\" ],\r\n  \"orderStatus\" : [ \"已提交\" ],\r\n  \"deliveryTime\" : [ \"2019-08-13\" ],\r\n  \"trackingNumber\" : [ \"888\" ],\r\n  \"serviceCondition\" : [ \"888\" ]\r\n}', '0', null, '2019-08-13 08:36:47');
INSERT INTO `sys_oper_log` VALUES ('280', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"其他\" ],\r\n  \"code\" : [ \"7777\" ],\r\n  \"clientId\" : [ \"777\" ],\r\n  \"purchaseDate\" : [ \"2019-08-13\" ],\r\n  \"orderAmount\" : [ \"7777\" ],\r\n  \"discount\" : [ \"777\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"1\" ],\r\n  \"remark\" : [ \"777\" ],\r\n  \"creator\" : [ \"777\" ],\r\n  \"creationTime\" : [ \"\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-08-13\" ],\r\n  \"trackingNumber\" : [ \"777\" ],\r\n  \"serviceCondition\" : [ \"777\" ]\r\n}', '0', null, '2019-08-13 16:12:45');
INSERT INTO `sys_oper_log` VALUES ('281', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"京东\" ],\r\n  \"code\" : [ \"66666\" ],\r\n  \"clientId\" : [ \"666\" ],\r\n  \"purchaseDate\" : [ \"2019-08-13\" ],\r\n  \"orderAmount\" : [ \"6666\" ],\r\n  \"discount\" : [ \"666\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"1\" ],\r\n  \"remark\" : [ \"6666\" ],\r\n  \"creator\" : [ \"666\" ],\r\n  \"creationTime\" : [ \"2019-08-14\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-08-13\" ],\r\n  \"trackingNumber\" : [ \"6666\" ],\r\n  \"serviceCondition\" : [ \"666\" ]\r\n}', '0', null, '2019-08-13 16:13:23');
INSERT INTO `sys_oper_log` VALUES ('282', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{ }', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppDetailedMapper.insertAppDetailed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_detailed\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-08-13 17:25:27');
INSERT INTO `sys_oper_log` VALUES ('283', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{ }', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppDetailedMapper.insertAppDetailed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_detailed\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-08-13 17:25:41');
INSERT INTO `sys_oper_log` VALUES ('284', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"商标:15-20日\", \"商标111111:100\" ],\r\n  \"amount\" : [ \"10\", \"13\" ],\r\n  \"trackingNumber\" : [ \"2019813\", \"2019846\" ]\r\n}', '0', null, '2019-08-13 17:31:36');
INSERT INTO `sys_oper_log` VALUES ('285', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', null, '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"amount\" : [ \"3232323\", \"2323\" ],\r\n  \"trackingNumber\" : [ \"2323\" ]\r\n}', '0', null, '2019-08-14 09:49:55');
INSERT INTO `sys_oper_log` VALUES ('286', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', null, '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{ }', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppDetailedMapper.insertAppDetailed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_detailed\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-08-14 09:49:55');
INSERT INTO `sys_oper_log` VALUES ('287', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', null, '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"作品:当天\" ],\r\n  \"amount\" : [ \"78\", \"89\" ],\r\n  \"trackingNumber\" : [ \"99\" ]\r\n}', '0', null, '2019-08-14 09:52:30');
INSERT INTO `sys_oper_log` VALUES ('288', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', null, '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{ }', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppDetailedMapper.insertAppDetailed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_detailed\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-08-14 09:52:31');
INSERT INTO `sys_oper_log` VALUES ('289', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"55\" ],\r\n  \"amount\" : [ \"55\" ],\r\n  \"trackingNumber\" : [ \"55\" ]\r\n}', '0', null, '2019-08-14 10:21:54');
INSERT INTO `sys_oper_log` VALUES ('290', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{ }', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppDetailedMapper.insertAppDetailed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_detailed\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-08-14 10:21:55');
INSERT INTO `sys_oper_log` VALUES ('291', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"0000\" ],\r\n  \"amount\" : [ \"000\" ],\r\n  \"trackingNumber\" : [ \"000\" ]\r\n}', '0', null, '2019-08-14 10:24:07');
INSERT INTO `sys_oper_log` VALUES ('292', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{ }', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppDetailedMapper.insertAppDetailed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_detailed\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-08-14 10:24:09');
INSERT INTO `sys_oper_log` VALUES ('293', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{ }', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppDetailedMapper.insertAppDetailed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_detailed\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-08-14 10:32:41');
INSERT INTO `sys_oper_log` VALUES ('294', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"456456\" ],\r\n  \"amount\" : [ \"456\" ],\r\n  \"trackingNumber\" : [ \"654645\" ]\r\n}', '0', null, '2019-08-14 10:38:52');
INSERT INTO `sys_oper_log` VALUES ('295', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{ }', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppDetailedMapper.insertAppDetailed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_detailed\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-08-14 10:38:54');
INSERT INTO `sys_oper_log` VALUES ('296', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"作品:当天\" ],\r\n  \"price\" : [ \"33\" ],\r\n  \"amount\" : [ \"33\" ],\r\n  \"trackingNumber\" : [ \"333\" ]\r\n}', '0', null, '2019-08-14 10:43:02');
INSERT INTO `sys_oper_log` VALUES ('297', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{ }', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppDetailedMapper.insertAppDetailed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_detailed\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-08-14 10:43:03');
INSERT INTO `sys_oper_log` VALUES ('298', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{ }', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppDetailedMapper.insertAppDetailed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_detailed\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-08-14 10:50:37');
INSERT INTO `sys_oper_log` VALUES ('299', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{ }', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppDetailedMapper.insertAppDetailed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_detailed\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-08-14 10:51:55');
INSERT INTO `sys_oper_log` VALUES ('300', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{ }', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppDetailedMapper.insertAppDetailed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_detailed\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-08-14 11:02:39');
INSERT INTO `sys_oper_log` VALUES ('301', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{ }', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppDetailedMapper.insertAppDetailed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_detailed\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-08-14 11:06:19');
INSERT INTO `sys_oper_log` VALUES ('302', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{ }', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppDetailedMapper.insertAppDetailed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_detailed\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-08-14 11:08:30');
INSERT INTO `sys_oper_log` VALUES ('303', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{ }', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppDetailedMapper.insertAppDetailed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_detailed\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-08-14 11:18:38');
INSERT INTO `sys_oper_log` VALUES ('304', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{ }', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppDetailedMapper.insertAppDetailed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_detailed\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-08-14 11:20:44');
INSERT INTO `sys_oper_log` VALUES ('305', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{ }', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppDetailedMapper.insertAppDetailed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_detailed\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-08-14 11:22:49');
INSERT INTO `sys_oper_log` VALUES ('306', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{ }', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppDetailedMapper.insertAppDetailed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_detailed\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-08-14 11:24:27');
INSERT INTO `sys_oper_log` VALUES ('307', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{ }', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppDetailedMapper.insertAppDetailed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_detailed\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-08-14 11:26:16');
INSERT INTO `sys_oper_log` VALUES ('308', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{ }', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppDetailedMapper.insertAppDetailed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_detailed\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-08-14 11:42:02');
INSERT INTO `sys_oper_log` VALUES ('309', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{ }', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppDetailedMapper.insertAppDetailed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_detailed\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-08-14 11:42:44');
INSERT INTO `sys_oper_log` VALUES ('310', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{ }', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppDetailedMapper.insertAppDetailed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_detailed\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-08-14 11:43:07');
INSERT INTO `sys_oper_log` VALUES ('311', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{ }', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppDetailedMapper.insertAppDetailed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_detailed\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-08-14 11:46:51');
INSERT INTO `sys_oper_log` VALUES ('312', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"作品:当天\" ],\r\n  \"price\" : [ \"552\" ],\r\n  \"amount\" : [ \"245\" ],\r\n  \"trackingNumber\" : [ \"56565\" ]\r\n}', '0', null, '2019-08-14 11:47:44');
INSERT INTO `sys_oper_log` VALUES ('313', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{ }', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppDetailedMapper.insertAppDetailed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_detailed\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-08-14 11:47:47');
INSERT INTO `sys_oper_log` VALUES ('314', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"44\" ],\r\n  \"amount\" : [ \"556\" ],\r\n  \"trackingNumber\" : [ \"66\" ]\r\n}', '0', null, '2019-08-14 11:52:38');
INSERT INTO `sys_oper_log` VALUES ('315', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{ }', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppDetailedMapper.insertAppDetailed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_detailed\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-08-14 11:52:40');
INSERT INTO `sys_oper_log` VALUES ('316', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"88\" ],\r\n  \"amount\" : [ \"88\" ],\r\n  \"trackingNumber\" : [ \"88\" ]\r\n}', '0', null, '2019-08-14 11:56:14');
INSERT INTO `sys_oper_log` VALUES ('317', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{ }', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppDetailedMapper.insertAppDetailed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_detailed\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-08-14 11:56:16');
INSERT INTO `sys_oper_log` VALUES ('318', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"22\" ],\r\n  \"amount\" : [ \"222\" ],\r\n  \"trackingNumber\" : [ \"2\" ]\r\n}', '0', null, '2019-08-14 11:57:21');
INSERT INTO `sys_oper_log` VALUES ('319', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{ }', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppDetailedMapper.insertAppDetailed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_detailed\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-08-14 11:57:24');
INSERT INTO `sys_oper_log` VALUES ('320', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"33\" ],\r\n  \"amount\" : [ \"33\" ],\r\n  \"trackingNumber\" : [ \"33\" ]\r\n}', '0', null, '2019-08-14 11:58:04');
INSERT INTO `sys_oper_log` VALUES ('321', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"44\" ],\r\n  \"amount\" : [ \"44\" ],\r\n  \"trackingNumber\" : [ \"44\" ]\r\n}', '0', null, '2019-08-14 11:58:06');
INSERT INTO `sys_oper_log` VALUES ('322', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"55\" ],\r\n  \"amount\" : [ \"55\" ],\r\n  \"trackingNumber\" : [ \"55\" ]\r\n}', '0', null, '2019-08-14 14:18:44');
INSERT INTO `sys_oper_log` VALUES ('323', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"66\" ],\r\n  \"amount\" : [ \"66\" ],\r\n  \"trackingNumber\" : [ \"66\" ]\r\n}', '0', null, '2019-08-14 14:18:46');
INSERT INTO `sys_oper_log` VALUES ('324', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"77\" ],\r\n  \"amount\" : [ \"77\" ],\r\n  \"trackingNumber\" : [ \"77\" ],\r\n  \"coded\" : [ \"8\" ]\r\n}', '0', null, '2019-08-14 14:22:17');
INSERT INTO `sys_oper_log` VALUES ('325', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"88\" ],\r\n  \"amount\" : [ \"88\" ],\r\n  \"trackingNumber\" : [ \"88\" ],\r\n  \"coded\" : [ \"8\" ]\r\n}', '0', null, '2019-08-14 14:22:19');
INSERT INTO `sys_oper_log` VALUES ('326', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', null, '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"99\" ],\r\n  \"amount\" : [ \"99\" ],\r\n  \"trackingNumber\" : [ \"99\" ],\r\n  \"coded\" : [ \"7\" ]\r\n}', '0', null, '2019-08-14 14:42:31');
INSERT INTO `sys_oper_log` VALUES ('327', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', null, '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"78\" ],\r\n  \"amount\" : [ \"78\" ],\r\n  \"trackingNumber\" : [ \"78\" ],\r\n  \"coded\" : [ \"7\" ]\r\n}', '0', null, '2019-08-14 14:42:32');
INSERT INTO `sys_oper_log` VALUES ('328', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', null, '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"100\" ],\r\n  \"amount\" : [ \"100\" ],\r\n  \"trackingNumber\" : [ \"100\" ],\r\n  \"coded\" : [ \"7\" ]\r\n}', '0', null, '2019-08-14 14:42:53');
INSERT INTO `sys_oper_log` VALUES ('329', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', null, '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"121\" ],\r\n  \"amount\" : [ \"121\" ],\r\n  \"trackingNumber\" : [ \"121\" ],\r\n  \"coded\" : [ \"7\" ]\r\n}', '0', null, '2019-08-14 14:42:53');
INSERT INTO `sys_oper_log` VALUES ('330', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"11\" ],\r\n  \"amount\" : [ \"22\" ],\r\n  \"trackingNumber\" : [ \"33\" ],\r\n  \"coded\" : [ \"10\" ]\r\n}', '0', null, '2019-08-14 17:45:00');
INSERT INTO `sys_oper_log` VALUES ('331', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"44\" ],\r\n  \"amount\" : [ \"55\" ],\r\n  \"trackingNumber\" : [ \"66\" ],\r\n  \"coded\" : [ \"10\" ]\r\n}', '0', null, '2019-08-14 17:45:00');
INSERT INTO `sys_oper_log` VALUES ('332', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"作品:当天\" ],\r\n  \"price\" : [ \"10000\" ],\r\n  \"amount\" : [ \"1\" ],\r\n  \"trackingNumber\" : [ \"1000000\" ],\r\n  \"coded\" : [ \"20190815\" ]\r\n}', '0', null, '2019-08-15 08:57:09');
INSERT INTO `sys_oper_log` VALUES ('333', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"作品:当天\" ],\r\n  \"price\" : [ \"10000\" ],\r\n  \"amount\" : [ \"1\" ],\r\n  \"trackingNumber\" : [ \"1000000\" ],\r\n  \"coded\" : [ \"20190815\" ]\r\n}', '0', null, '2019-08-15 08:57:19');
INSERT INTO `sys_oper_log` VALUES ('334', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"作品:当天\" ],\r\n  \"price\" : [ \"10000\" ],\r\n  \"amount\" : [ \"1\" ],\r\n  \"trackingNumber\" : [ \"1000000\" ],\r\n  \"coded\" : [ \"20190815\" ]\r\n}', '0', null, '2019-08-15 08:57:20');
INSERT INTO `sys_oper_log` VALUES ('335', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"44\" ],\r\n  \"amount\" : [ \"44\" ],\r\n  \"trackingNumber\" : [ \"444444\" ],\r\n  \"coded\" : [ \"10\" ]\r\n}', '0', null, '2019-08-15 09:00:27');
INSERT INTO `sys_oper_log` VALUES ('336', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"京东\" ],\r\n  \"code\" : [ \"10\" ],\r\n  \"clientId\" : [ \"1111\" ],\r\n  \"purchaseDate\" : [ \"2019-08-15\" ],\r\n  \"orderAmount\" : [ \"4141\" ],\r\n  \"discount\" : [ \"4\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"1\" ],\r\n  \"remark\" : [ \"444\" ],\r\n  \"creator\" : [ \"44\" ],\r\n  \"creationTime\" : [ \"\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-08-15\" ],\r\n  \"trackingNumber\" : [ \"44\" ],\r\n  \"serviceCondition\" : [ \"44\" ]\r\n}', '0', null, '2019-08-15 09:02:12');
INSERT INTO `sys_oper_log` VALUES ('337', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—卓森\" ],\r\n  \"code\" : [ \"154\" ],\r\n  \"clientId\" : [ \"154\" ],\r\n  \"purchaseDate\" : [ \"2019-08-15\" ],\r\n  \"orderAmount\" : [ \"154\" ],\r\n  \"discount\" : [ \"0\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"154\" ],\r\n  \"creator\" : [ \"154\" ],\r\n  \"creationTime\" : [ \"2019-08-15\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-09-15\" ],\r\n  \"trackingNumber\" : [ \"154\" ],\r\n  \"serviceCondition\" : [ \"154\" ]\r\n}', '0', null, '2019-08-15 09:05:28');
INSERT INTO `sys_oper_log` VALUES ('338', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"154\" ],\r\n  \"amount\" : [ \"154\" ],\r\n  \"trackingNumber\" : [ \"154\" ],\r\n  \"coded\" : [ \"154\" ]\r\n}', '0', null, '2019-08-15 09:05:28');
INSERT INTO `sys_oper_log` VALUES ('339', '订单', '2', 'com.ruoyi.web.controller.copyright.AppIndentController.editSave()', '1', 'admin', null, '/copyright/appIndent/edit', '127.0.0.1', '内网IP', '{\r\n  \"indentId\" : [ \"15\" ],\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"code\" : [ \"154\" ],\r\n  \"clientId\" : [ \"154\" ],\r\n  \"purchaseDate\" : [ \"Thu Aug 15 00:00:00 CST 2019\" ],\r\n  \"orderAmount\" : [ \"154\" ],\r\n  \"discount\" : [ \"0\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"154\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"Sun Sep 15 00:00:00 CST 2019\" ],\r\n  \"serviceCondition\" : [ \"154\" ],\r\n  \"creator\" : [ \"154\" ],\r\n  \"creationTime\" : [ \"Thu Aug 15 00:00:00 CST 2019\" ]\r\n}', '0', null, '2019-08-15 09:38:35');
INSERT INTO `sys_oper_log` VALUES ('340', '清单', '2', 'com.ruoyi.web.controller.copyright.AppDetailedController.editSave()', '1', 'admin', null, '/copyright/appDetailed/edit', '127.0.0.1', '内网IP', '{\r\n  \"detailedId\" : [ \"\" ],\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"8888\" ],\r\n  \"amount\" : [ \"888\" ],\r\n  \"trackingNumber\" : [ \"88\" ],\r\n  \"beizu\" : [ \"\" ],\r\n  \"coded\" : [ \"10\" ]\r\n}', '0', null, '2019-08-15 09:59:09');
INSERT INTO `sys_oper_log` VALUES ('341', '订单', '2', 'com.ruoyi.web.controller.copyright.AppIndentController.editSave()', '1', 'admin', null, '/copyright/appIndent/edit', '127.0.0.1', '内网IP', '{\r\n  \"indentId\" : [ \"14\" ],\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"clientId\" : [ \"1111\" ],\r\n  \"purchaseDate\" : [ \"Thu Aug 15 00:00:00 CST 2019\" ],\r\n  \"orderAmount\" : [ \"4141\" ],\r\n  \"discount\" : [ \"4\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"444\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"Thu Aug 15 00:00:00 CST 2019\" ],\r\n  \"serviceCondition\" : [ \"44\" ],\r\n  \"creator\" : [ \"44\" ],\r\n  \"creationTime\" : [ \"\" ]\r\n}', '0', null, '2019-08-15 09:59:09');
INSERT INTO `sys_oper_log` VALUES ('342', '清单', '2', 'com.ruoyi.web.controller.copyright.AppDetailedController.editSave()', '1', 'admin', null, '/copyright/appDetailed/edit', '127.0.0.1', '内网IP', '{\r\n  \"detailedId\" : [ \"\" ],\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"888\" ],\r\n  \"amount\" : [ \"88\" ],\r\n  \"trackingNumber\" : [ \"888\" ],\r\n  \"beizu\" : [ \"\" ],\r\n  \"coded\" : [ \"10\" ]\r\n}', '0', null, '2019-08-15 09:59:09');
INSERT INTO `sys_oper_log` VALUES ('343', '清单', '2', 'com.ruoyi.web.controller.copyright.AppDetailedController.editSave()', '1', 'admin', null, '/copyright/appDetailed/edit', '127.0.0.1', '内网IP', '{\r\n  \"detailedId\" : [ \"\" ],\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"8888\" ],\r\n  \"amount\" : [ \"888\" ],\r\n  \"trackingNumber\" : [ \"8\" ],\r\n  \"beizu\" : [ \"\" ],\r\n  \"coded\" : [ \"10\" ]\r\n}', '0', null, '2019-08-15 09:59:09');
INSERT INTO `sys_oper_log` VALUES ('344', '订单', '2', 'com.ruoyi.web.controller.copyright.AppIndentController.editSave()', '1', 'admin', null, '/copyright/appIndent/edit', '127.0.0.1', '内网IP', '{\r\n  \"indentId\" : [ \"15\" ],\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"clientId\" : [ \"154\" ],\r\n  \"purchaseDate\" : [ \"Thu Aug 15 00:00:00 CST 2019\" ],\r\n  \"orderAmount\" : [ \"154\" ],\r\n  \"discount\" : [ \"0\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"154\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"Sun Sep 15 00:00:00 CST 2019\" ],\r\n  \"serviceCondition\" : [ \"154\" ],\r\n  \"creator\" : [ \"154\" ],\r\n  \"creationTime\" : [ \"Thu Aug 15 00:00:00 CST 2019\" ]\r\n}', '0', null, '2019-08-15 10:02:01');
INSERT INTO `sys_oper_log` VALUES ('345', '清单', '2', 'com.ruoyi.web.controller.copyright.AppDetailedController.editSave()', '1', 'admin', null, '/copyright/appDetailed/edit', '127.0.0.1', '内网IP', '{\r\n  \"detailedId\" : [ \"46\" ],\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"155\" ],\r\n  \"amount\" : [ \"155\" ],\r\n  \"trackingNumber\" : [ \"155\" ],\r\n  \"beizu\" : [ \"\" ],\r\n  \"coded\" : [ \"154\" ]\r\n}', '0', null, '2019-08-15 10:02:01');
INSERT INTO `sys_oper_log` VALUES ('346', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', null, '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"其他\" ],\r\n  \"code\" : [ \"1565835131386\" ],\r\n  \"clientId\" : [ \"12315\" ],\r\n  \"purchaseDate\" : [ \"2019-08-15\" ],\r\n  \"orderAmount\" : [ \"12315\" ],\r\n  \"discount\" : [ \"1\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"123\" ],\r\n  \"creator\" : [ \"123\" ],\r\n  \"creationTime\" : [ \"2019-08-15\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-08-15\" ],\r\n  \"trackingNumber\" : [ \"123\" ],\r\n  \"serviceCondition\" : [ \"123\" ]\r\n}', '0', null, '2019-08-15 10:12:53');
INSERT INTO `sys_oper_log` VALUES ('347', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', null, '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"16\" ]\r\n}', '0', null, '2019-08-15 10:13:38');
INSERT INTO `sys_oper_log` VALUES ('348', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', null, '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"15\" ]\r\n}', '0', null, '2019-08-15 10:13:41');
INSERT INTO `sys_oper_log` VALUES ('349', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', null, '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"14\" ]\r\n}', '0', null, '2019-08-15 10:13:43');
INSERT INTO `sys_oper_log` VALUES ('350', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', null, '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"13\" ]\r\n}', '0', null, '2019-08-15 10:13:45');
INSERT INTO `sys_oper_log` VALUES ('351', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', null, '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"12\" ]\r\n}', '0', null, '2019-08-15 10:13:47');
INSERT INTO `sys_oper_log` VALUES ('352', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', null, '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"11\" ]\r\n}', '0', null, '2019-08-15 10:13:49');
INSERT INTO `sys_oper_log` VALUES ('353', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', null, '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"10\" ]\r\n}', '0', null, '2019-08-15 10:13:51');
INSERT INTO `sys_oper_log` VALUES ('354', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', null, '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"9\" ]\r\n}', '0', null, '2019-08-15 10:22:46');
INSERT INTO `sys_oper_log` VALUES ('355', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"code\" : [ \"\" ],\r\n  \"clientId\" : [ \"111\" ],\r\n  \"purchaseDate\" : [ \"2019-08-15\" ],\r\n  \"orderAmount\" : [ \"111\" ],\r\n  \"discount\" : [ \"1\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"11\" ],\r\n  \"creator\" : [ \"1\" ],\r\n  \"creationTime\" : [ \"2019-08-15\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-08-15\" ],\r\n  \"trackingNumber\" : [ \"11\" ],\r\n  \"serviceCondition\" : [ \"11\" ]\r\n}', '0', null, '2019-08-15 10:26:57');
INSERT INTO `sys_oper_log` VALUES ('356', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"11\" ],\r\n  \"amount\" : [ \"11\" ],\r\n  \"trackingNumber\" : [ \"11\" ],\r\n  \"coded\" : [ \"\" ]\r\n}', '0', null, '2019-08-15 10:26:57');
INSERT INTO `sys_oper_log` VALUES ('357', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"11\" ],\r\n  \"amount\" : [ \"11\" ],\r\n  \"trackingNumber\" : [ \"11\" ],\r\n  \"coded\" : [ \"\" ]\r\n}', '0', null, '2019-08-15 10:27:56');
INSERT INTO `sys_oper_log` VALUES ('358', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—51版权\" ],\r\n  \"code\" : [ \"\" ],\r\n  \"clientId\" : [ \"11\" ],\r\n  \"purchaseDate\" : [ \"2019-08-15\" ],\r\n  \"orderAmount\" : [ \"11\" ],\r\n  \"discount\" : [ \"11\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"1\" ],\r\n  \"remark\" : [ \"11\" ],\r\n  \"creator\" : [ \"11\" ],\r\n  \"creationTime\" : [ \"2019-08-15\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-08-15\" ],\r\n  \"trackingNumber\" : [ \"11\" ],\r\n  \"serviceCondition\" : [ \"11\" ]\r\n}', '0', null, '2019-08-15 10:27:56');
INSERT INTO `sys_oper_log` VALUES ('359', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"22\" ],\r\n  \"amount\" : [ \"22\" ],\r\n  \"trackingNumber\" : [ \"22\" ],\r\n  \"coded\" : [ \"\" ]\r\n}', '0', null, '2019-08-15 10:28:56');
INSERT INTO `sys_oper_log` VALUES ('360', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"其他\" ],\r\n  \"code\" : [ \"\" ],\r\n  \"clientId\" : [ \"2\" ],\r\n  \"purchaseDate\" : [ \"2019-08-15\" ],\r\n  \"orderAmount\" : [ \"2\" ],\r\n  \"discount\" : [ \"2\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"2\" ],\r\n  \"creator\" : [ \"2\" ],\r\n  \"creationTime\" : [ \"2019-08-15\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-08-15\" ],\r\n  \"trackingNumber\" : [ \"2\" ],\r\n  \"serviceCondition\" : [ \"2\" ]\r\n}', '0', null, '2019-08-15 10:28:56');
INSERT INTO `sys_oper_log` VALUES ('361', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"333\" ],\r\n  \"amount\" : [ \"333\" ],\r\n  \"trackingNumber\" : [ \"333\" ],\r\n  \"coded\" : [ \"836525339\" ]\r\n}', '0', null, '2019-08-15 10:35:43');
INSERT INTO `sys_oper_log` VALUES ('362', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"京东\" ],\r\n  \"code\" : [ \"836525339\" ],\r\n  \"clientId\" : [ \"3\" ],\r\n  \"purchaseDate\" : [ \"2019-08-15\" ],\r\n  \"orderAmount\" : [ \"3\" ],\r\n  \"discount\" : [ \"3\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"1\" ],\r\n  \"remark\" : [ \"3\" ],\r\n  \"creator\" : [ \"333\" ],\r\n  \"creationTime\" : [ \"2019-08-15\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-08-15\" ],\r\n  \"trackingNumber\" : [ \"3\" ],\r\n  \"serviceCondition\" : [ \"3\" ]\r\n}', '0', null, '2019-08-15 10:35:43');
INSERT INTO `sys_oper_log` VALUES ('363', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"code\" : [ \"0\" ],\r\n  \"clientId\" : [ \"5\" ],\r\n  \"purchaseDate\" : [ \"2019-08-15\" ],\r\n  \"orderAmount\" : [ \"5\" ],\r\n  \"discount\" : [ \"5\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"5\" ],\r\n  \"creator\" : [ \"5\" ],\r\n  \"creationTime\" : [ \"2019-08-15\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-08-15\" ],\r\n  \"trackingNumber\" : [ \"5\" ],\r\n  \"serviceCondition\" : [ \"5\" ]\r\n}', '0', null, '2019-08-15 10:42:09');
INSERT INTO `sys_oper_log` VALUES ('364', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"55\" ],\r\n  \"amount\" : [ \"55\" ],\r\n  \"trackingNumber\" : [ \"55\" ],\r\n  \"coded\" : [ \"0\" ]\r\n}', '0', null, '2019-08-15 10:42:09');
INSERT INTO `sys_oper_log` VALUES ('365', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', '研发部门', '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"21\" ]\r\n}', '0', null, '2019-08-15 10:46:20');
INSERT INTO `sys_oper_log` VALUES ('366', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', '研发部门', '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"20\" ]\r\n}', '0', null, '2019-08-15 10:46:22');
INSERT INTO `sys_oper_log` VALUES ('367', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', '研发部门', '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"19\" ]\r\n}', '0', null, '2019-08-15 10:46:23');
INSERT INTO `sys_oper_log` VALUES ('368', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', '研发部门', '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"18\" ]\r\n}', '0', null, '2019-08-15 10:46:25');
INSERT INTO `sys_oper_log` VALUES ('369', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"京东\" ],\r\n  \"code\" : [ \"7727869634\" ],\r\n  \"clientId\" : [ \"1\" ],\r\n  \"purchaseDate\" : [ \"2019-08-15\" ],\r\n  \"orderAmount\" : [ \"1\" ],\r\n  \"discount\" : [ \"1\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"1\" ],\r\n  \"creator\" : [ \"1\" ],\r\n  \"creationTime\" : [ \"2019-08-15\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-08-15\" ],\r\n  \"trackingNumber\" : [ \"11\" ],\r\n  \"serviceCondition\" : [ \"1\" ]\r\n}', '0', null, '2019-08-15 10:58:09');
INSERT INTO `sys_oper_log` VALUES ('370', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—卓森\" ],\r\n  \"code\" : [ \"7069733121\" ],\r\n  \"clientId\" : [ \"12\" ],\r\n  \"purchaseDate\" : [ \"2019-08-15\" ],\r\n  \"orderAmount\" : [ \"11\" ],\r\n  \"discount\" : [ \"11\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"1\" ],\r\n  \"remark\" : [ \"11\" ],\r\n  \"creator\" : [ \"11\" ],\r\n  \"creationTime\" : [ \"2019-08-15\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-08-15\" ],\r\n  \"trackingNumber\" : [ \"11\" ],\r\n  \"serviceCondition\" : [ \"11\" ]\r\n}', '0', null, '2019-08-15 11:29:35');
INSERT INTO `sys_oper_log` VALUES ('371', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', '研发部门', '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"23\" ]\r\n}', '0', null, '2019-08-15 11:30:24');
INSERT INTO `sys_oper_log` VALUES ('372', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', '研发部门', '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"22\" ]\r\n}', '0', null, '2019-08-15 11:30:26');
INSERT INTO `sys_oper_log` VALUES ('373', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"11\" ],\r\n  \"amount\" : [ \"11\" ],\r\n  \"trackingNumber\" : [ \"11\" ],\r\n  \"coded\" : [ \"1745828249\" ]\r\n}', '0', null, '2019-08-15 11:30:55');
INSERT INTO `sys_oper_log` VALUES ('374', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—51版权\" ],\r\n  \"code\" : [ \"1745828249\" ],\r\n  \"clientId\" : [ \"11\" ],\r\n  \"purchaseDate\" : [ \"2019-08-15\" ],\r\n  \"orderAmount\" : [ \"11\" ],\r\n  \"discount\" : [ \"11\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"11\" ],\r\n  \"creator\" : [ \"1\" ],\r\n  \"creationTime\" : [ \"2019-08-15\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-08-15\" ],\r\n  \"trackingNumber\" : [ \"11\" ],\r\n  \"serviceCondition\" : [ \"11\" ]\r\n}', '0', null, '2019-08-15 11:30:55');
INSERT INTO `sys_oper_log` VALUES ('375', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"20\" ],\r\n  \"amount\" : [ \"20\" ],\r\n  \"trackingNumber\" : [ \"20\" ],\r\n  \"coded\" : [ \"1745828249\" ]\r\n}', '0', null, '2019-08-15 11:30:55');
INSERT INTO `sys_oper_log` VALUES ('376', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"code\" : [ \"3799990023\" ],\r\n  \"clientId\" : [ \"5151\" ],\r\n  \"purchaseDate\" : [ \"2019-08-15\" ],\r\n  \"orderAmount\" : [ \"4515\" ],\r\n  \"discount\" : [ \"1451\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"1\" ],\r\n  \"remark\" : [ \"45145\" ],\r\n  \"creator\" : [ \"1451541\" ],\r\n  \"creationTime\" : [ \"2019-08-15\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-08-15\" ],\r\n  \"trackingNumber\" : [ \"56565\" ],\r\n  \"serviceCondition\" : [ \"333\" ]\r\n}', '0', null, '2019-08-15 11:34:20');
INSERT INTO `sys_oper_log` VALUES ('377', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—卓森\" ],\r\n  \"code\" : [ \"9538401719\" ],\r\n  \"clientId\" : [ \"22\" ],\r\n  \"purchaseDate\" : [ \"2019-08-15\" ],\r\n  \"orderAmount\" : [ \"22\" ],\r\n  \"discount\" : [ \"22\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"22\" ],\r\n  \"creator\" : [ \"22\" ],\r\n  \"creationTime\" : [ \"2019-08-15\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-08-15\" ],\r\n  \"trackingNumber\" : [ \"22\" ],\r\n  \"serviceCondition\" : [ \"22\" ]\r\n}', '0', null, '2019-08-15 11:36:41');
INSERT INTO `sys_oper_log` VALUES ('378', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"code\" : [ \"35340252\" ],\r\n  \"clientId\" : [ \"88\" ],\r\n  \"purchaseDate\" : [ \"2019-08-15\" ],\r\n  \"orderAmount\" : [ \"88\" ],\r\n  \"discount\" : [ \"888\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"88\" ],\r\n  \"creator\" : [ \"88\" ],\r\n  \"creationTime\" : [ \"2019-08-15\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-08-15\" ],\r\n  \"trackingNumber\" : [ \"888\" ],\r\n  \"serviceCondition\" : [ \"888\" ]\r\n}', '0', null, '2019-08-15 11:37:56');
INSERT INTO `sys_oper_log` VALUES ('379', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"8888\" ],\r\n  \"amount\" : [ \"888\" ],\r\n  \"trackingNumber\" : [ \"888\" ],\r\n  \"coded\" : [ \"35340252\" ]\r\n}', '0', null, '2019-08-15 11:37:56');
INSERT INTO `sys_oper_log` VALUES ('380', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"作品:当天\" ],\r\n  \"price\" : [ \"999\" ],\r\n  \"amount\" : [ \"999\" ],\r\n  \"trackingNumber\" : [ \"999\" ],\r\n  \"coded\" : [ \"35340252\" ]\r\n}', '0', null, '2019-08-15 11:37:56');
INSERT INTO `sys_oper_log` VALUES ('381', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', null, '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"code\" : [ \"4013840485\" ],\r\n  \"clientId\" : [ \"50\" ],\r\n  \"purchaseDate\" : [ \"2019-08-15\" ],\r\n  \"orderAmount\" : [ \"50\" ],\r\n  \"discount\" : [ \"50\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"50\" ],\r\n  \"creator\" : [ \"50\" ],\r\n  \"creationTime\" : [ \"2019-08-15\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-08-15\" ],\r\n  \"trackingNumber\" : [ \"50\" ],\r\n  \"serviceCondition\" : [ \"50\" ]\r\n}', '0', null, '2019-08-15 11:41:47');
INSERT INTO `sys_oper_log` VALUES ('382', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', null, '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"50\" ],\r\n  \"amount\" : [ \"50\" ],\r\n  \"trackingNumber\" : [ \"50\" ],\r\n  \"coded\" : [ \"4013840485\" ]\r\n}', '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'coded\' at row 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppDetailedMapper.insertAppDetailed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_detailed    ( coded,        product,    price,    amount,        tracking_number )           values ( ?,        ?,    ?,    ?,        ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'coded\' at row 1\n; Data truncation: Out of range value for column \'coded\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'coded\' at row 1', '2019-08-15 11:41:48');
INSERT INTO `sys_oper_log` VALUES ('383', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', null, '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"产品aaa:20日\" ],\r\n  \"price\" : [ \"60\" ],\r\n  \"amount\" : [ \"60\" ],\r\n  \"trackingNumber\" : [ \"60\" ],\r\n  \"coded\" : [ \"4013840485\" ]\r\n}', '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'coded\' at row 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppDetailedMapper.insertAppDetailed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_detailed    ( coded,        product,    price,    amount,        tracking_number )           values ( ?,        ?,    ?,    ?,        ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'coded\' at row 1\n; Data truncation: Out of range value for column \'coded\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'coded\' at row 1', '2019-08-15 11:41:48');
INSERT INTO `sys_oper_log` VALUES ('384', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', null, '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"code\" : [ \"3385840600\" ],\r\n  \"clientId\" : [ \"21\" ],\r\n  \"purchaseDate\" : [ \"2019-08-15\" ],\r\n  \"orderAmount\" : [ \"12\" ],\r\n  \"discount\" : [ \"12\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"2\" ],\r\n  \"remark\" : [ \"12\" ],\r\n  \"creator\" : [ \"12\" ],\r\n  \"creationTime\" : [ \"2019-08-15\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-08-15\" ],\r\n  \"trackingNumber\" : [ \"121\" ],\r\n  \"serviceCondition\" : [ \"12\" ]\r\n}', '0', null, '2019-08-15 11:43:41');
INSERT INTO `sys_oper_log` VALUES ('385', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', null, '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"45\" ],\r\n  \"amount\" : [ \"45\" ],\r\n  \"trackingNumber\" : [ \"45\" ],\r\n  \"coded\" : [ \"816240737\" ]\r\n}', '0', null, '2019-08-15 11:45:54');
INSERT INTO `sys_oper_log` VALUES ('386', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', null, '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"code\" : [ \"816240737\" ],\r\n  \"clientId\" : [ \"45\" ],\r\n  \"purchaseDate\" : [ \"2019-08-15\" ],\r\n  \"orderAmount\" : [ \"45\" ],\r\n  \"discount\" : [ \"45\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"45\" ],\r\n  \"creator\" : [ \"45\" ],\r\n  \"creationTime\" : [ \"2019-08-15\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-08-15\" ],\r\n  \"trackingNumber\" : [ \"45\" ],\r\n  \"serviceCondition\" : [ \"45\" ]\r\n}', '0', null, '2019-08-15 11:45:54');
INSERT INTO `sys_oper_log` VALUES ('387', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', null, '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"45\" ],\r\n  \"amount\" : [ \"45\" ],\r\n  \"trackingNumber\" : [ \"4545\" ],\r\n  \"coded\" : [ \"816240737\" ]\r\n}', '0', null, '2019-08-15 11:45:54');
INSERT INTO `sys_oper_log` VALUES ('388', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', null, '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"45\" ],\r\n  \"amount\" : [ \"45\" ],\r\n  \"trackingNumber\" : [ \"45\" ],\r\n  \"coded\" : [ \"816240737\" ]\r\n}', '0', null, '2019-08-15 11:45:54');
INSERT INTO `sys_oper_log` VALUES ('389', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', null, '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"24\" ]\r\n}', '0', null, '2019-08-15 11:46:02');
INSERT INTO `sys_oper_log` VALUES ('390', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', null, '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"25\" ]\r\n}', '0', null, '2019-08-15 11:46:04');
INSERT INTO `sys_oper_log` VALUES ('391', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', null, '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"26\" ]\r\n}', '0', null, '2019-08-15 11:46:05');
INSERT INTO `sys_oper_log` VALUES ('392', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', null, '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"27\" ]\r\n}', '0', null, '2019-08-15 11:46:07');
INSERT INTO `sys_oper_log` VALUES ('393', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', null, '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"28\" ]\r\n}', '0', null, '2019-08-15 11:46:10');
INSERT INTO `sys_oper_log` VALUES ('394', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', null, '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"29\" ]\r\n}', '0', null, '2019-08-15 11:46:12');
INSERT INTO `sys_oper_log` VALUES ('395', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2008\" ],\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"联系人管理\" ],\r\n  \"url\" : [ \"/copyright/appLinkman\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"copyright:appLinkman:view\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-08-15 14:07:10');
INSERT INTO `sys_oper_log` VALUES ('396', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2007\" ],\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"客户公共池\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-08-15 14:07:18');
INSERT INTO `sys_oper_log` VALUES ('397', '联系人', '3', 'com.ruoyi.web.controller.copyright.AppLinkmanController.remove()', '1', 'admin', '研发部门', '/copyright/appLinkman/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1\" ]\r\n}', '0', null, '2019-08-15 15:08:35');
INSERT INTO `sys_oper_log` VALUES ('398', '联系人', '3', 'com.ruoyi.web.controller.copyright.AppLinkmanController.remove()', '1', 'admin', '研发部门', '/copyright/appLinkman/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"2\" ]\r\n}', '0', null, '2019-08-15 15:08:37');
INSERT INTO `sys_oper_log` VALUES ('399', '客户', '3', 'com.ruoyi.web.controller.copyright.AppClientController.remove()', '1', 'admin', '研发部门', '/copyright/appClient/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1\" ]\r\n}', '0', null, '2019-08-15 15:09:15');
INSERT INTO `sys_oper_log` VALUES ('400', '联系人', '3', 'com.ruoyi.web.controller.copyright.AppLinkmanController.remove()', '1', 'admin', '研发部门', '/copyright/appLinkman/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"3\" ]\r\n}', '0', null, '2019-08-15 15:09:18');
INSERT INTO `sys_oper_log` VALUES ('401', '客户', '1', 'com.ruoyi.web.controller.copyright.AppClientController.addSave()', '1', 'admin', '研发部门', '/copyright/appClient/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"2\" ],\r\n  \"companyName\" : [ \"杜宇\" ],\r\n  \"province\" : [ \"北京市\" ],\r\n  \"city\" : [ \"北京市市辖区\" ],\r\n  \"region\" : [ \"东城区\" ],\r\n  \"site\" : [ \"东城区\" ],\r\n  \"clientKind\" : [ \"普通用户\" ],\r\n  \"phone\" : [ \"18722365412\" ],\r\n  \"wordPhone\" : [ \"\" ],\r\n  \"remark\" : [ \"11\" ],\r\n  \"code\" : [ \"11\" ]\r\n}', '0', null, '2019-08-15 15:10:00');
INSERT INTO `sys_oper_log` VALUES ('402', '客户', '1', 'com.ruoyi.web.controller.copyright.AppClientController.addSave()', '1', 'admin', '研发部门', '/copyright/appClient/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"1\" ],\r\n  \"companyName\" : [ \"大飞\" ],\r\n  \"province\" : [ \"北京市\" ],\r\n  \"city\" : [ \"北京市市辖区\" ],\r\n  \"region\" : [ \"东城区\" ],\r\n  \"site\" : [ \"北京\" ],\r\n  \"clientKind\" : [ \"普通用户\" ],\r\n  \"phone\" : [ \"18722312344\" ],\r\n  \"wordPhone\" : [ \"\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"code\" : [ \"\" ]\r\n}', '0', null, '2019-08-15 15:12:44');
INSERT INTO `sys_oper_log` VALUES ('403', '客户', '1', 'com.ruoyi.web.controller.copyright.AppClientController.addSave()', '1', 'admin', '研发部门', '/copyright/appClient/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"个人\" ],\r\n  \"companyName\" : [ \"大大\" ],\r\n  \"province\" : [ \"北京市\" ],\r\n  \"city\" : [ \"北京市市辖区\" ],\r\n  \"region\" : [ \"东城区\" ],\r\n  \"site\" : [ \"阿达的\" ],\r\n  \"clientKind\" : [ \"普通用户\" ],\r\n  \"phone\" : [ \"18722354213\" ],\r\n  \"wordPhone\" : [ \"\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"code\" : [ \"\" ]\r\n}', '0', null, '2019-08-15 15:14:12');
INSERT INTO `sys_oper_log` VALUES ('404', '客户', '3', 'com.ruoyi.web.controller.copyright.AppClientController.remove()', '1', 'admin', '研发部门', '/copyright/appClient/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"2\" ]\r\n}', '0', null, '2019-08-15 15:14:45');
INSERT INTO `sys_oper_log` VALUES ('405', '客户', '3', 'com.ruoyi.web.controller.copyright.AppClientController.remove()', '1', 'admin', '研发部门', '/copyright/appClient/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"3\" ]\r\n}', '0', null, '2019-08-15 15:14:48');
INSERT INTO `sys_oper_log` VALUES ('406', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"商标:15-20日\" ],\r\n  \"price\" : [ \"4545\" ],\r\n  \"amount\" : [ \"45\" ],\r\n  \"trackingNumber\" : [ \"454545\" ],\r\n  \"coded\" : [ \"4545454545\" ]\r\n}', '0', null, '2019-08-15 15:33:32');
INSERT INTO `sys_oper_log` VALUES ('407', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"code\" : [ \"4545454545\" ],\r\n  \"clientId\" : [ \"45455\" ],\r\n  \"purchaseDate\" : [ \"2019-08-15\" ],\r\n  \"orderAmount\" : [ \"4545\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"4545\" ],\r\n  \"creator\" : [ \"4545\" ],\r\n  \"creationTime\" : [ \"2019-08-15\" ],\r\n  \"orderStatus\" : [ \"已提交\" ],\r\n  \"deliveryTime\" : [ \"2019-08-15\" ],\r\n  \"trackingNumber\" : [ \"4545\" ],\r\n  \"serviceCondition\" : [ \"4545\" ]\r\n}', '0', null, '2019-08-15 15:33:32');
INSERT INTO `sys_oper_log` VALUES ('408', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"已发货\" ],\r\n  \"dictValue\" : [ \"已发货\" ],\r\n  \"dictType\" : [ \"app_indent_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"3\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"N\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '0', null, '2019-08-15 15:56:13');
INSERT INTO `sys_oper_log` VALUES ('409', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\r\n  \"dictCode\" : [ \"34\" ],\r\n  \"dictLabel\" : [ \"已完成\" ],\r\n  \"dictValue\" : [ \"已完成\" ],\r\n  \"dictType\" : [ \"app_indent_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"4\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"N\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '0', null, '2019-08-15 15:56:22');
INSERT INTO `sys_oper_log` VALUES ('410', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"456\" ],\r\n  \"amount\" : [ \"456\" ],\r\n  \"trackingNumber\" : [ \"456\" ],\r\n  \"coded\" : [ \"456456\" ]\r\n}', '0', null, '2019-08-15 17:14:45');
INSERT INTO `sys_oper_log` VALUES ('411', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"product\" : [ \"软著\" ],\r\n  \"code\" : [ \"456456\" ],\r\n  \"clientId\" : [ \"45645\" ],\r\n  \"purchaseDate\" : [ \"2019-08-15\" ],\r\n  \"orderAmount\" : [ \"4564\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"456456\" ],\r\n  \"creator\" : [ \"456456\" ],\r\n  \"creationTime\" : [ \"2019-08-15\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-08-15\" ],\r\n  \"trackingNumber\" : [ \"456456\" ]\r\n}', '0', null, '2019-08-15 17:14:45');
INSERT INTO `sys_oper_log` VALUES ('412', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"price\" : [ \"777\" ],\r\n  \"amount\" : [ \"77\" ],\r\n  \"trackingNumber\" : [ \"77\" ],\r\n  \"coded\" : [ \"123456789\" ]\r\n}', '0', null, '2019-08-15 17:21:04');
INSERT INTO `sys_oper_log` VALUES ('413', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"商标:15-20日\" ],\r\n  \"price\" : [ \"7777\" ],\r\n  \"amount\" : [ \"77\" ],\r\n  \"trackingNumber\" : [ \"77\" ],\r\n  \"coded\" : [ \"123456789\" ]\r\n}', '0', null, '2019-08-15 17:21:05');
INSERT INTO `sys_oper_log` VALUES ('414', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"京东\" ],\r\n  \"product\" : [ \"软著、商标、\" ],\r\n  \"code\" : [ \"123456789\" ],\r\n  \"clientId\" : [ \"77\" ],\r\n  \"purchaseDate\" : [ \"2019-08-15\" ],\r\n  \"orderAmount\" : [ \"777\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"77\" ],\r\n  \"creator\" : [ \"77\" ],\r\n  \"creationTime\" : [ \"2019-08-15\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-08-15\" ],\r\n  \"trackingNumber\" : [ \"77\" ]\r\n}', '0', null, '2019-08-15 17:21:05');
INSERT INTO `sys_oper_log` VALUES ('415', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', null, '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"worksName\" : [ \"666\" ],\r\n  \"price\" : [ \"666\" ],\r\n  \"ghoustWrite\" : [ \"666\" ],\r\n  \"serialsNumber\" : [ \"666\" ],\r\n  \"trackingNumber\" : [ \"\" ],\r\n  \"coded\" : [ \"666\" ]\r\n}', '0', null, '2019-08-16 09:23:04');
INSERT INTO `sys_oper_log` VALUES ('416', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', null, '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"worksName\" : [ \"565\" ],\r\n  \"price\" : [ \"666\" ],\r\n  \"ghoustWrite\" : [ \"666\" ],\r\n  \"serialsNumber\" : [ \"666\" ],\r\n  \"trackingNumber\" : [ \"\" ],\r\n  \"coded\" : [ \"666\" ]\r\n}', '0', null, '2019-08-16 09:23:06');
INSERT INTO `sys_oper_log` VALUES ('417', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', null, '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"product\" : [ \"软著 软著 \" ],\r\n  \"code\" : [ \"666\" ],\r\n  \"clientId\" : [ \"666\" ],\r\n  \"purchaseDate\" : [ \"2019-08-16\" ],\r\n  \"orderAmount\" : [ \"666\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"666\" ],\r\n  \"creator\" : [ \"666\" ],\r\n  \"creationTime\" : [ \"2019-08-16\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-08-16\" ],\r\n  \"trackingNumber\" : [ \"666\" ]\r\n}', '0', null, '2019-08-16 09:23:06');
INSERT INTO `sys_oper_log` VALUES ('418', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"product\" : [ \"软著 商标 \" ],\r\n  \"code\" : [ \"777\" ],\r\n  \"clientId\" : [ \"77\" ],\r\n  \"purchaseDate\" : [ \"2019-08-16\" ],\r\n  \"orderAmount\" : [ \"77\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"77\" ],\r\n  \"creator\" : [ \"77\" ],\r\n  \"creationTime\" : [ \"2019-08-16\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"deliveryTime\" : [ \"2019-08-16\" ],\r\n  \"trackingNumber\" : [ \"777\" ]\r\n}', '0', null, '2019-08-16 10:35:07');
INSERT INTO `sys_oper_log` VALUES ('419', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"商标:15-20日\" ],\r\n  \"worksName\" : [ \"斗地主\" ],\r\n  \"price\" : [ \"1212\" ],\r\n  \"ghoustWrite\" : [ \"不\" ],\r\n  \"serialsNumber\" : [ \"123123\" ],\r\n  \"trackingNumber\" : [ \"45645\" ],\r\n  \"coded\" : [ \"777\" ]\r\n}', '0', null, '2019-08-16 10:35:07');
INSERT INTO `sys_oper_log` VALUES ('420', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"worksName\" : [ \"大富翁\" ],\r\n  \"price\" : [ \"100000\" ],\r\n  \"ghoustWrite\" : [ \"是\" ],\r\n  \"serialsNumber\" : [ \"123\" ],\r\n  \"trackingNumber\" : [ \"41465\" ],\r\n  \"coded\" : [ \"777\" ]\r\n}', '0', null, '2019-08-16 10:35:07');
INSERT INTO `sys_oper_log` VALUES ('421', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"作品:当天\" ],\r\n  \"worksName\" : [ \"韩庚\" ],\r\n  \"price\" : [ \"86\" ],\r\n  \"ghoustWrite\" : [ \"否\" ],\r\n  \"submitTime\" : [ \"2019-08-16\" ],\r\n  \"deliveryTime\" : [ \"2019-08-16\" ],\r\n  \"serialsNumber\" : [ \"6786\" ],\r\n  \"trackingNumber\" : [ \"786\" ],\r\n  \"coded\" : [ \"88\" ]\r\n}', '0', null, '2019-08-16 11:37:28');
INSERT INTO `sys_oper_log` VALUES ('422', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"product\" : [ \"软著 作品 \" ],\r\n  \"code\" : [ \"88\" ],\r\n  \"clientId\" : [ \"88\" ],\r\n  \"purchaseDate\" : [ \"2019-08-16\" ],\r\n  \"orderAmount\" : [ \"88\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"88\" ],\r\n  \"creator\" : [ \"88\" ],\r\n  \"creationTime\" : [ \"2019-08-16\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"trackingNumber\" : [ \"88\" ]\r\n}', '0', null, '2019-08-16 11:37:28');
INSERT INTO `sys_oper_log` VALUES ('423', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"worksName\" : [ \"老旧\" ],\r\n  \"price\" : [ \"82\" ],\r\n  \"ghoustWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"2019-08-16\" ],\r\n  \"deliveryTime\" : [ \"2019-08-16\" ],\r\n  \"serialsNumber\" : [ \"546\" ],\r\n  \"trackingNumber\" : [ \"456\" ],\r\n  \"coded\" : [ \"88\" ]\r\n}', '0', null, '2019-08-16 11:37:28');
INSERT INTO `sys_oper_log` VALUES ('424', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"其他\" ],\r\n  \"product\" : [ \"软著 \" ],\r\n  \"code\" : [ \"9999\" ],\r\n  \"clientId\" : [ \"999\" ],\r\n  \"purchaseDate\" : [ \"2019-08-16\" ],\r\n  \"orderAmount\" : [ \"999\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"999\" ],\r\n  \"creator\" : [ \"99\" ],\r\n  \"creationTime\" : [ \"2019-08-16\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"trackingNumber\" : [ \"999\" ]\r\n}', '0', null, '2019-08-16 16:04:55');
INSERT INTO `sys_oper_log` VALUES ('425', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"worksName\" : [ \"999\" ],\r\n  \"price\" : [ \"99\" ],\r\n  \"ghoustWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"2019-08-16\" ],\r\n  \"deliveryTime\" : [ \"2019-08-16\" ],\r\n  \"serialsNumber\" : [ \"99\" ],\r\n  \"trackingNumber\" : [ \"99\" ],\r\n  \"coded\" : [ \"9999\" ]\r\n}', '0', null, '2019-08-16 16:04:55');
INSERT INTO `sys_oper_log` VALUES ('426', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"worksName\" : [ \"代考\" ],\r\n  \"price\" : [ \"2536\" ],\r\n  \"ghoustWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"2019-08-16\" ],\r\n  \"deliveryTime\" : [ \"2019-08-16\" ],\r\n  \"serialsNumber\" : [ \"6345\" ],\r\n  \"trackingNumber\" : [ \"5426\" ],\r\n  \"coded\" : [ \"10245\" ]\r\n}', '0', null, '2019-08-16 16:09:12');
INSERT INTO `sys_oper_log` VALUES ('427', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"product\" : [ \"软著 \" ],\r\n  \"code\" : [ \"10245\" ],\r\n  \"clientId\" : [ \"47252\" ],\r\n  \"purchaseDate\" : [ \"2019-08-16\" ],\r\n  \"orderAmount\" : [ \"152\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"142\" ],\r\n  \"creator\" : [ \"152\" ],\r\n  \"creationTime\" : [ \"2019-08-16\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"trackingNumber\" : [ \"152\" ]\r\n}', '0', null, '2019-08-16 16:09:12');
INSERT INTO `sys_oper_log` VALUES ('428', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', null, '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"worksName\" : [ \"十几块\" ],\r\n  \"price\" : [ \"456\" ],\r\n  \"ghoustWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"2019-08-16\" ],\r\n  \"deliveryTime\" : [ \"2019-08-16\" ],\r\n  \"serialsNumber\" : [ \"456\" ],\r\n  \"trackingNumber\" : [ \"456\" ],\r\n  \"coded\" : [ \"456\" ]\r\n}', '0', null, '2019-08-16 16:14:04');
INSERT INTO `sys_oper_log` VALUES ('429', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', null, '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"京东\" ],\r\n  \"product\" : [ \"软著 \" ],\r\n  \"code\" : [ \"456\" ],\r\n  \"clientId\" : [ \"456\" ],\r\n  \"purchaseDate\" : [ \"2019-08-16\" ],\r\n  \"orderAmount\" : [ \"456\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"456456\" ],\r\n  \"creator\" : [ \"456\" ],\r\n  \"creationTime\" : [ \"2019-08-16\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"trackingNumber\" : [ \"456\" ]\r\n}', '0', null, '2019-08-16 16:14:04');
INSERT INTO `sys_oper_log` VALUES ('430', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"product\" : [ \"软著 \" ],\r\n  \"code\" : [ \"6565\" ],\r\n  \"clientId\" : [ \"6565\" ],\r\n  \"purchaseDate\" : [ \"2019-08-16\" ],\r\n  \"orderAmount\" : [ \"6565\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"2\" ],\r\n  \"remark\" : [ \"65\" ],\r\n  \"creator\" : [ \"65\" ],\r\n  \"creationTime\" : [ \"2019-08-16\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"trackingNumber\" : [ \"5656\" ]\r\n}', '0', null, '2019-08-16 16:24:45');
INSERT INTO `sys_oper_log` VALUES ('431', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"worksName\" : [ \"566\" ],\r\n  \"price\" : [ \"566\" ],\r\n  \"ghoustWrite\" : [ \"是的\" ],\r\n  \"submitTime\" : [ \"2019-08-16\" ],\r\n  \"deliveryTime\" : [ \"2019-08-16\" ],\r\n  \"serialsNumber\" : [ \"65265\" ],\r\n  \"trackingNumber\" : [ \"6565\" ],\r\n  \"coded\" : [ \"6565\" ]\r\n}', '0', null, '2019-08-16 16:24:45');
INSERT INTO `sys_oper_log` VALUES ('432', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"worksName\" : [ \"521\" ],\r\n  \"price\" : [ \"521\" ],\r\n  \"ghoustWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"2019-08-16\" ],\r\n  \"deliveryTime\" : [ \"2019-08-16\" ],\r\n  \"serialsNumber\" : [ \"521\" ],\r\n  \"trackingNumber\" : [ \"521\" ],\r\n  \"coded\" : [ \"521\" ]\r\n}', '0', null, '2019-08-16 16:37:17');
INSERT INTO `sys_oper_log` VALUES ('433', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"product\" : [ \"软著 \" ],\r\n  \"code\" : [ \"521\" ],\r\n  \"clientId\" : [ \"521\" ],\r\n  \"purchaseDate\" : [ \"2019-08-16\" ],\r\n  \"orderAmount\" : [ \"521\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"251\" ],\r\n  \"creator\" : [ \"52\" ],\r\n  \"creationTime\" : [ \"2019-08-16\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"trackingNumber\" : [ \"521\" ]\r\n}', '0', null, '2019-08-16 16:37:17');
INSERT INTO `sys_oper_log` VALUES ('434', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', '研发部门', '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"32\" ]\r\n}', '0', null, '2019-08-16 16:38:18');
INSERT INTO `sys_oper_log` VALUES ('435', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', '研发部门', '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"33\" ]\r\n}', '0', null, '2019-08-16 16:38:20');
INSERT INTO `sys_oper_log` VALUES ('436', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', '研发部门', '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"34\" ]\r\n}', '0', null, '2019-08-16 16:38:22');
INSERT INTO `sys_oper_log` VALUES ('437', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', '研发部门', '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"35\" ]\r\n}', '0', null, '2019-08-16 16:38:24');
INSERT INTO `sys_oper_log` VALUES ('438', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', '研发部门', '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"36\" ]\r\n}', '0', null, '2019-08-16 16:38:25');
INSERT INTO `sys_oper_log` VALUES ('439', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"product\" : [ \"软著 \" ],\r\n  \"code\" : [ \"5421\" ],\r\n  \"clientId\" : [ \"5421\" ],\r\n  \"purchaseDate\" : [ \"2019-08-16\" ],\r\n  \"orderAmount\" : [ \"5421\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"5421\" ],\r\n  \"creator\" : [ \"5421\" ],\r\n  \"creationTime\" : [ \"2019-08-16\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"trackingNumber\" : [ \"5421\" ]\r\n}', '0', null, '2019-08-16 16:38:58');
INSERT INTO `sys_oper_log` VALUES ('440', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"worksName\" : [ \"5421\" ],\r\n  \"price\" : [ \"5421\" ],\r\n  \"ghostWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"2019-08-16\" ],\r\n  \"deliveryTime\" : [ \"2019-08-16\" ],\r\n  \"serialsNumber\" : [ \"5421\" ],\r\n  \"trackingNumber\" : [ \"5421\" ],\r\n  \"coded\" : [ \"5421\" ]\r\n}', '0', null, '2019-08-16 16:38:58');
INSERT INTO `sys_oper_log` VALUES ('441', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"product\" : [ \"软著 \" ],\r\n  \"code\" : [ \"6535\" ],\r\n  \"clientId\" : [ \"5635\" ],\r\n  \"purchaseDate\" : [ \"2019-08-16\" ],\r\n  \"orderAmount\" : [ \"563563\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"563563\" ],\r\n  \"creator\" : [ \"56356\" ],\r\n  \"creationTime\" : [ \"2019-08-16\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"trackingNumber\" : [ \"563536\" ]\r\n}', '0', null, '2019-08-16 16:40:48');
INSERT INTO `sys_oper_log` VALUES ('442', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"worksName\" : [ \"563563\" ],\r\n  \"price\" : [ \"563563\" ],\r\n  \"ghostWrite\" : [ \"看老旧\" ],\r\n  \"submitTime\" : [ \"2019-08-16\" ],\r\n  \"deliveryTime\" : [ \"2019-08-16\" ],\r\n  \"serialsNumber\" : [ \"563685\" ],\r\n  \"trackingNumber\" : [ \"563563\" ],\r\n  \"coded\" : [ \"6535\" ]\r\n}', '0', null, '2019-08-16 16:40:48');
INSERT INTO `sys_oper_log` VALUES ('443', '客户', '1', 'com.ruoyi.web.controller.copyright.AppClientController.addSave()', '1', 'admin', '研发部门', '/copyright/appClient/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"公司\" ],\r\n  \"companyName\" : [ \"李建兰路\" ],\r\n  \"province\" : [ \"北京市\" ],\r\n  \"city\" : [ \"北京市市辖区\" ],\r\n  \"region\" : [ \"东城区\" ],\r\n  \"site\" : [ \"北京\" ],\r\n  \"clientKind\" : [ \"集团大客户\" ],\r\n  \"phone\" : [ \"18722365413\" ],\r\n  \"wordPhone\" : [ \"18722369446\" ],\r\n  \"remark\" : [ \"456\" ],\r\n  \"code\" : [ \"456456\" ]\r\n}', '0', null, '2019-08-19 10:36:15');
INSERT INTO `sys_oper_log` VALUES ('444', '客户', '1', 'com.ruoyi.web.controller.copyright.AppClientController.addSave()', '1', 'admin', '研发部门', '/copyright/appClient/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"公司\" ],\r\n  \"clientName\" : [ \"李阿劳斯丹劳\" ],\r\n  \"province\" : [ \"北京市\" ],\r\n  \"city\" : [ \"北京市市辖区\" ],\r\n  \"region\" : [ \"东城区\" ],\r\n  \"site\" : [ \"北京\" ],\r\n  \"clientKind\" : [ \"普通用户\" ],\r\n  \"phone\" : [ \"18722365874\" ],\r\n  \"wordPhone\" : [ \"18756244123\" ],\r\n  \"remark\" : [ \"1234563\" ],\r\n  \"code\" : [ \"123456\" ]\r\n}', '0', null, '2019-08-19 10:38:28');
INSERT INTO `sys_oper_log` VALUES ('445', '客户', '1', 'com.ruoyi.web.controller.copyright.AppClientController.addSave()', '1', 'admin', null, '/copyright/appClient/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"公司\" ],\r\n  \"clientName\" : [ \"李坎饥饿\" ],\r\n  \"province\" : [ \"北京市\" ],\r\n  \"city\" : [ \"北京市市辖区\" ],\r\n  \"region\" : [ \"东城区\" ],\r\n  \"site\" : [ \"北极\" ],\r\n  \"clientKind\" : [ \"普通用户\" ],\r\n  \"phone\" : [ \"1456\" ],\r\n  \"wordPhone\" : [ \"456\" ],\r\n  \"remark\" : [ \"456\" ],\r\n  \"code\" : [ \"456\" ]\r\n}', '0', null, '2019-08-19 10:45:29');
INSERT INTO `sys_oper_log` VALUES ('446', '客户', '1', 'com.ruoyi.web.controller.copyright.AppClientController.addSave()', '1', 'admin', null, '/copyright/appClient/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"公司\" ],\r\n  \"clientName\" : [ \"李看烂了\" ],\r\n  \"province\" : [ \"北京市\" ],\r\n  \"city\" : [ \"北京市市辖区\" ],\r\n  \"region\" : [ \"东城区\" ],\r\n  \"site\" : [ \"北京\" ],\r\n  \"clientKind\" : [ \"普通用户\" ],\r\n  \"phone\" : [ \"123456\" ],\r\n  \"wordPhone\" : [ \"123456\" ],\r\n  \"remark\" : [ \"132456\" ],\r\n  \"code\" : [ \"\" ]\r\n}', '0', null, '2019-08-19 11:33:09');
INSERT INTO `sys_oper_log` VALUES ('447', '客户', '1', 'com.ruoyi.web.controller.copyright.AppClientController.addSave()', '1', 'admin', null, '/copyright/appClient/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"个人\" ],\r\n  \"clientName\" : [ \"孙悟空\" ],\r\n  \"province\" : [ \"北京市\" ],\r\n  \"city\" : [ \"北京市市辖区\" ],\r\n  \"region\" : [ \"东城区\" ],\r\n  \"site\" : [ \"樊登扥广泛个\" ],\r\n  \"clientKind\" : [ \"普通用户\" ],\r\n  \"phone\" : [ \"18722368453\" ],\r\n  \"wordPhone\" : [ \"18755641236\" ],\r\n  \"remark\" : [ \"666\" ],\r\n  \"code\" : [ \"666\" ]\r\n}', '0', null, '2019-08-20 14:22:21');
INSERT INTO `sys_oper_log` VALUES ('448', '客户', '1', 'com.ruoyi.web.controller.copyright.AppClientController.addSave()', '1', 'admin', null, '/copyright/appClient/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"公司\" ],\r\n  \"clientName\" : [ \"唐僧\" ],\r\n  \"province\" : [ \"北京市\" ],\r\n  \"city\" : [ \"北京市市辖区\" ],\r\n  \"region\" : [ \"东城区\" ],\r\n  \"site\" : [ \"阿达的\" ],\r\n  \"clientKind\" : [ \"普通用户\" ],\r\n  \"phone\" : [ \"7678\" ],\r\n  \"wordPhone\" : [ \"5678\" ],\r\n  \"remark\" : [ \"7687\" ],\r\n  \"code\" : [ \"7867\" ]\r\n}', '0', null, '2019-08-20 14:50:57');
INSERT INTO `sys_oper_log` VALUES ('449', '客户', '1', 'com.ruoyi.web.controller.copyright.AppClientController.addSave()', '1', 'admin', null, '/copyright/appClient/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"个人\" ],\r\n  \"clientName\" : [ \"沙和尚\" ],\r\n  \"province\" : [ \"北京市\" ],\r\n  \"city\" : [ \"北京市市辖区\" ],\r\n  \"region\" : [ \"东城区\" ],\r\n  \"site\" : [ \"基佬基佬\" ],\r\n  \"clientKind\" : [ \"普通用户\" ],\r\n  \"phone\" : [ \"54645\" ],\r\n  \"wordPhone\" : [ \"456456\" ],\r\n  \"remark\" : [ \"456456\" ],\r\n  \"code\" : [ \"456456\" ]\r\n}', '0', null, '2019-08-20 14:59:01');
INSERT INTO `sys_oper_log` VALUES ('450', '客户', '1', 'com.ruoyi.web.controller.copyright.AppClientController.addSave()', '1', 'admin', null, '/copyright/appClient/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"个人\" ],\r\n  \"clientName\" : [ \"金角大王\" ],\r\n  \"province\" : [ \"北京市\" ],\r\n  \"city\" : [ \"北京市市辖区\" ],\r\n  \"region\" : [ \"东城区\" ],\r\n  \"site\" : [ \"跟换凤凰\" ],\r\n  \"clientKind\" : [ \"普通用户\" ],\r\n  \"phone\" : [ \"456\" ],\r\n  \"wordPhone\" : [ \"456\" ],\r\n  \"remark\" : [ \"789\" ],\r\n  \"code\" : [ \"123\" ]\r\n}', '0', null, '2019-08-20 15:01:08');
INSERT INTO `sys_oper_log` VALUES ('451', '联系人', '1', 'com.ruoyi.web.controller.copyright.AppLinkmanController.addSave()', '1', 'admin', null, '/copyright/appLinkman/add', '127.0.0.1', '内网IP', '{\r\n  \"clientName\" : [ \"李阿劳斯丹劳\" ],\r\n  \"name\" : [ \"大飞\" ],\r\n  \"sex\" : [ \"男\" ],\r\n  \"certificateType\" : [ \"工作证\" ],\r\n  \"certificateCode\" : [ \"1\" ],\r\n  \"alias\" : [ \"1\" ],\r\n  \"dept\" : [ \"1\" ],\r\n  \"post\" : [ \"1\" ],\r\n  \"phone\" : [ \"18722354213\" ],\r\n  \"dingding\" : [ \"1\" ],\r\n  \"workPhone\" : [ \"1\" ],\r\n  \"fax\" : [ \"1\" ],\r\n  \"email\" : [ \"1\" ],\r\n  \"wechat\" : [ \"1\" ],\r\n  \"qQ\" : [ \"1\" ],\r\n  \"aliwangwang\" : [ \"1\" ],\r\n  \"postcode\" : [ \"1\" ],\r\n  \"address\" : [ \"1\" ],\r\n  \"remark\" : [ \"1\" ],\r\n  \"birthday\" : [ \"2019-08-20\" ],\r\n  \"creationTime\" : [ \"2019-08-20\" ]\r\n}', '1', 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'client_name\' in \'class com.ruoyi.copyright.domain.AppLinkman\'', '2019-08-20 15:04:21');
INSERT INTO `sys_oper_log` VALUES ('452', '联系人', '1', 'com.ruoyi.web.controller.copyright.AppLinkmanController.addSave()', '1', 'admin', null, '/copyright/appLinkman/add', '127.0.0.1', '内网IP', '{\r\n  \"clientName\" : [ \"李坎饥饿\" ],\r\n  \"name\" : [ \"斗鱼打\" ],\r\n  \"sex\" : [ \"男\" ],\r\n  \"certificateType\" : [ \"工作证\" ],\r\n  \"certificateCode\" : [ \"456\" ],\r\n  \"alias\" : [ \"456\" ],\r\n  \"dept\" : [ \"456\" ],\r\n  \"post\" : [ \"456\" ],\r\n  \"phone\" : [ \"456\" ],\r\n  \"dingding\" : [ \"456\" ],\r\n  \"workPhone\" : [ \"456\" ],\r\n  \"fax\" : [ \"456\" ],\r\n  \"email\" : [ \"456\" ],\r\n  \"wechat\" : [ \"456\" ],\r\n  \"QQ\" : [ \"456\" ],\r\n  \"aliwangwang\" : [ \"456\" ],\r\n  \"postcode\" : [ \"456\" ],\r\n  \"address\" : [ \"456\" ],\r\n  \"remark\" : [ \"456\" ],\r\n  \"birthday\" : [ \"\" ],\r\n  \"creationTime\" : [ \"\" ]\r\n}', '1', 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'client_name\' in \'class com.ruoyi.copyright.domain.AppLinkman\'', '2019-08-20 15:10:43');
INSERT INTO `sys_oper_log` VALUES ('453', '联系人', '1', 'com.ruoyi.web.controller.copyright.AppLinkmanController.addSave()', '1', 'admin', null, '/copyright/appLinkman/add', '127.0.0.1', '内网IP', '{\r\n  \"clientName\" : [ \"李坎饥饿\" ],\r\n  \"name\" : [ \"斗鱼打\" ],\r\n  \"sex\" : [ \"男\" ],\r\n  \"certificateType\" : [ \"工作证\" ],\r\n  \"certificateCode\" : [ \"12\" ],\r\n  \"alias\" : [ \"453\" ],\r\n  \"dept\" : [ \"478\" ],\r\n  \"post\" : [ \"79\" ],\r\n  \"phone\" : [ \"46\" ],\r\n  \"dingding\" : [ \"12\" ],\r\n  \"workPhone\" : [ \"53\" ],\r\n  \"fax\" : [ \"546\" ],\r\n  \"email\" : [ \"123\" ],\r\n  \"wechat\" : [ \"453\" ],\r\n  \"QQ\" : [ \"43\" ],\r\n  \"aliwangwang\" : [ \"453\" ],\r\n  \"postcode\" : [ \"23\" ],\r\n  \"address\" : [ \"4123\" ],\r\n  \"remark\" : [ \"54\" ],\r\n  \"birthday\" : [ \"2019-08-20\" ],\r\n  \"creationTime\" : [ \"2019-08-20\" ]\r\n}', '1', 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'creation_time\' in \'class com.ruoyi.copyright.domain.AppLinkman\'', '2019-08-20 15:16:40');
INSERT INTO `sys_oper_log` VALUES ('454', '联系人', '1', 'com.ruoyi.web.controller.copyright.AppLinkmanController.addSave()', '1', 'admin', null, '/copyright/appLinkman/add', '127.0.0.1', '内网IP', '{\r\n  \"clientName\" : [ \"李坎饥饿\" ],\r\n  \"name\" : [ \"开机老\" ],\r\n  \"sex\" : [ \"男\" ],\r\n  \"certificateType\" : [ \"工作证\" ],\r\n  \"certificateCode\" : [ \"456\" ],\r\n  \"alias\" : [ \"456\" ],\r\n  \"dept\" : [ \"456\" ],\r\n  \"post\" : [ \"456\" ],\r\n  \"phone\" : [ \"456\" ],\r\n  \"dingding\" : [ \"456\" ],\r\n  \"workPhone\" : [ \"456\" ],\r\n  \"fax\" : [ \"456\" ],\r\n  \"email\" : [ \"456\" ],\r\n  \"wechat\" : [ \"456\" ],\r\n  \"QQ\" : [ \"456\" ],\r\n  \"aliwangwang\" : [ \"456\" ],\r\n  \"postcode\" : [ \"456\" ],\r\n  \"address\" : [ \"456\" ],\r\n  \"remark\" : [ \"456\" ],\r\n  \"birthday\" : [ \"2019-08-20\" ],\r\n  \"creationTime\" : [ \"2019-08-20\" ]\r\n}', '0', null, '2019-08-20 15:21:30');
INSERT INTO `sys_oper_log` VALUES ('455', '联系人', '1', 'com.ruoyi.web.controller.copyright.AppLinkmanController.addSave()', '1', 'admin', null, '/copyright/appLinkman/add', '127.0.0.1', '内网IP', '{\r\n  \"clientName\" : [ \"李看烂了\" ],\r\n  \"name\" : [ \"讲开讲\" ],\r\n  \"sex\" : [ \"男\" ],\r\n  \"certificateType\" : [ \"工作证\" ],\r\n  \"certificateCode\" : [ \"465\" ],\r\n  \"alias\" : [ \"456\" ],\r\n  \"dept\" : [ \"456\" ],\r\n  \"post\" : [ \"456\" ],\r\n  \"phone\" : [ \"456\" ],\r\n  \"dingding\" : [ \"456\" ],\r\n  \"workPhone\" : [ \"456\" ],\r\n  \"fax\" : [ \"456\" ],\r\n  \"email\" : [ \"456\" ],\r\n  \"wechat\" : [ \"456\" ],\r\n  \"QQ\" : [ \"456\" ],\r\n  \"aliwangwang\" : [ \"456\" ],\r\n  \"postcode\" : [ \"456\" ],\r\n  \"address\" : [ \"456\" ],\r\n  \"remark\" : [ \"456\" ],\r\n  \"birthday\" : [ \"2019-08-20\" ],\r\n  \"creationTime\" : [ \"2019-08-21\" ]\r\n}', '0', null, '2019-08-20 15:42:36');
INSERT INTO `sys_oper_log` VALUES ('456', '客户', '1', 'com.ruoyi.web.controller.copyright.AppClientController.addSave()', '1', 'admin', null, '/copyright/appClient/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"个人\" ],\r\n  \"clientName\" : [ \"周健康\" ],\r\n  \"province\" : [ \"北京市\" ],\r\n  \"city\" : [ \"北京市市辖区\" ],\r\n  \"region\" : [ \"东城区\" ],\r\n  \"site\" : [ \"故宫\" ],\r\n  \"clientKind\" : [ \"普通用户\" ],\r\n  \"phone\" : [ \"18722354213\" ],\r\n  \"wordPhone\" : [ \"456\" ],\r\n  \"remark\" : [ \"456\" ],\r\n  \"code\" : [ \"456\" ]\r\n}', '0', null, '2019-08-20 16:22:15');
INSERT INTO `sys_oper_log` VALUES ('457', '客户', '1', 'com.ruoyi.web.controller.copyright.AppClientController.addSave()', '1', 'admin', null, '/copyright/appClient/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"个人\" ],\r\n  \"clientName\" : [ \"蓝老林\" ],\r\n  \"province\" : [ \"北京市\" ],\r\n  \"city\" : [ \"北京市市辖区\" ],\r\n  \"region\" : [ \"东城区\" ],\r\n  \"site\" : [ \"宾根华\" ],\r\n  \"clientKind\" : [ \"普通用户\" ],\r\n  \"phone\" : [ \"456\" ],\r\n  \"wordPhone\" : [ \"456\" ],\r\n  \"remark\" : [ \"456\" ],\r\n  \"code\" : [ \"456\" ]\r\n}', '0', null, '2019-08-20 16:23:21');
INSERT INTO `sys_oper_log` VALUES ('458', '客户', '1', 'com.ruoyi.web.controller.copyright.AppClientController.addSave()', '1', 'admin', null, '/copyright/appClient/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"个人\" ],\r\n  \"clientName\" : [ \"打开机\" ],\r\n  \"province\" : [ \"北京市\" ],\r\n  \"city\" : [ \"北京市市辖区\" ],\r\n  \"region\" : [ \"东城区\" ],\r\n  \"site\" : [ \"帮超级兵\" ],\r\n  \"clientKind\" : [ \"普通用户\" ],\r\n  \"phone\" : [ \"456\" ],\r\n  \"wordPhone\" : [ \"456\" ],\r\n  \"remark\" : [ \"456\" ],\r\n  \"code\" : [ \"456\" ]\r\n}', '0', null, '2019-08-20 16:28:53');
INSERT INTO `sys_oper_log` VALUES ('459', '客户', '1', 'com.ruoyi.web.controller.copyright.AppClientController.addSave()', '1', 'admin', null, '/copyright/appClient/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"个人\" ],\r\n  \"clientName\" : [ \"刘翔\" ],\r\n  \"province\" : [ \"北京市\" ],\r\n  \"city\" : [ \"北京市市辖区\" ],\r\n  \"region\" : [ \"东城区\" ],\r\n  \"site\" : [ \"个是\" ],\r\n  \"clientKind\" : [ \"普通用户\" ],\r\n  \"phone\" : [ \"123\" ],\r\n  \"wordPhone\" : [ \"456\" ],\r\n  \"remark\" : [ \"123\" ],\r\n  \"code\" : [ \"123\" ]\r\n}', '0', null, '2019-08-20 16:37:47');
INSERT INTO `sys_oper_log` VALUES ('460', '客户', '1', 'com.ruoyi.web.controller.copyright.AppClientController.addSave()', '1', 'admin', null, '/copyright/appClient/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"公司\" ],\r\n  \"clientName\" : [ \"如来\" ],\r\n  \"province\" : [ \"北京市\" ],\r\n  \"city\" : [ \"北京市市辖区\" ],\r\n  \"region\" : [ \"东城区\" ],\r\n  \"site\" : [ \"破出具\" ],\r\n  \"clientKind\" : [ \"普通用户\" ],\r\n  \"phone\" : [ \"18722354213\" ],\r\n  \"wordPhone\" : [ \"456\" ],\r\n  \"remark\" : [ \"456\" ],\r\n  \"code\" : [ \"456\" ]\r\n}', '0', null, '2019-08-20 16:40:59');
INSERT INTO `sys_oper_log` VALUES ('461', '客户', '1', 'com.ruoyi.web.controller.copyright.AppClientController.addSave()', '1', 'admin', null, '/copyright/appClient/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"个人\" ],\r\n  \"clientName\" : [ \"阎王\" ],\r\n  \"province\" : [ \"北京市\" ],\r\n  \"city\" : [ \"北京市市辖区\" ],\r\n  \"region\" : [ \"东城区\" ],\r\n  \"site\" : [ \"阿达的\" ],\r\n  \"clientKind\" : [ \"普通用户\" ],\r\n  \"phone\" : [ \"678\" ],\r\n  \"wordPhone\" : [ \"456\" ],\r\n  \"remark\" : [ \"456\" ],\r\n  \"code\" : [ \"456\" ]\r\n}', '0', null, '2019-08-20 16:42:06');
INSERT INTO `sys_oper_log` VALUES ('462', '客户', '1', 'com.ruoyi.web.controller.copyright.AppClientController.addSave()', '1', 'admin', null, '/copyright/appClient/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"个人\" ],\r\n  \"clientName\" : [ \"超人\" ],\r\n  \"province\" : [ \"北京市\" ],\r\n  \"city\" : [ \"北京市市辖区\" ],\r\n  \"region\" : [ \"东城区\" ],\r\n  \"site\" : [ \"发樊登 \" ],\r\n  \"clientKind\" : [ \"普通用户\" ],\r\n  \"phone\" : [ \"18722354213\" ],\r\n  \"wordPhone\" : [ \"456\" ],\r\n  \"remark\" : [ \"456\" ],\r\n  \"code\" : [ \"456\" ]\r\n}', '0', null, '2019-08-20 16:55:43');
INSERT INTO `sys_oper_log` VALUES ('463', '客户', '1', 'com.ruoyi.web.controller.copyright.AppClientController.addSave()', '1', 'admin', null, '/copyright/appClient/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"个人\" ],\r\n  \"clientName\" : [ \"蝙蝠侠\" ],\r\n  \"province\" : [ \"北京市\" ],\r\n  \"city\" : [ \"北京市市辖区\" ],\r\n  \"region\" : [ \"东城区\" ],\r\n  \"site\" : [ \"阿达的\" ],\r\n  \"clientKind\" : [ \"普通用户\" ],\r\n  \"phone\" : [ \"456\" ],\r\n  \"wordPhone\" : [ \"123\" ],\r\n  \"remark\" : [ \"456\" ],\r\n  \"code\" : [ \"123\" ]\r\n}', '0', null, '2019-08-20 16:59:27');
INSERT INTO `sys_oper_log` VALUES ('464', '客户', '1', 'com.ruoyi.web.controller.copyright.AppClientController.addSave()', '1', 'admin', null, '/copyright/appClient/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"个人\" ],\r\n  \"clientName\" : [ \"赵云\" ],\r\n  \"province\" : [ \"北京市\" ],\r\n  \"city\" : [ \"北京市市辖区\" ],\r\n  \"region\" : [ \"东城区\" ],\r\n  \"site\" : [ \"阿达的\" ],\r\n  \"clientKind\" : [ \"普通用户\" ],\r\n  \"phone\" : [ \"18722354213\" ],\r\n  \"wordPhone\" : [ \"456\" ],\r\n  \"remark\" : [ \"456\" ],\r\n  \"code\" : [ \"456\" ]\r\n}', '0', null, '2019-08-20 17:00:33');
INSERT INTO `sys_oper_log` VALUES ('465', '客户', '1', 'com.ruoyi.web.controller.copyright.AppClientController.addSave()', '1', 'admin', null, '/copyright/appClient/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"个人\" ],\r\n  \"clientName\" : [ \"李白\" ],\r\n  \"province\" : [ \"北京市\" ],\r\n  \"city\" : [ \"北京市市辖区\" ],\r\n  \"region\" : [ \"东城区\" ],\r\n  \"site\" : [ \"长城\" ],\r\n  \"clientKind\" : [ \"普通用户\" ],\r\n  \"phone\" : [ \"18722354213\" ],\r\n  \"wordPhone\" : [ \"456\" ],\r\n  \"remark\" : [ \"456\" ],\r\n  \"code\" : [ \"546\" ]\r\n}', '0', null, '2019-08-20 17:09:14');
INSERT INTO `sys_oper_log` VALUES ('466', '客户', '1', 'com.ruoyi.web.controller.copyright.AppClientController.addSave()', '1', 'admin', null, '/copyright/appClient/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"个人\" ],\r\n  \"clientName\" : [ \"杜甫\" ],\r\n  \"province\" : [ \"北京市\" ],\r\n  \"city\" : [ \"北京市市辖区\" ],\r\n  \"region\" : [ \"东城区\" ],\r\n  \"site\" : [ \"发\" ],\r\n  \"clientKind\" : [ \"普通用户\" ],\r\n  \"phone\" : [ \"123\" ],\r\n  \"wordPhone\" : [ \"456\" ],\r\n  \"remark\" : [ \"456\" ],\r\n  \"code\" : [ \"123\" ]\r\n}', '0', null, '2019-08-20 17:48:26');
INSERT INTO `sys_oper_log` VALUES ('467', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', null, '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"worksName\" : [ \"546\" ],\r\n  \"price\" : [ \"456\" ],\r\n  \"ghostWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"2019-08-20\" ],\r\n  \"deliveryTime\" : [ \"2019-08-20\" ],\r\n  \"serialsNumber\" : [ \"456\" ],\r\n  \"trackingNumber\" : [ \"456\" ],\r\n  \"coded\" : [ \"123546456456\" ]\r\n}', '0', null, '2019-08-20 18:04:01');
INSERT INTO `sys_oper_log` VALUES ('468', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', null, '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"worksName\" : [ \"789\" ],\r\n  \"price\" : [ \"11\" ],\r\n  \"ghostWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"2019-08-21\" ],\r\n  \"deliveryTime\" : [ \"2019-07-16\" ],\r\n  \"serialsNumber\" : [ \"456\" ],\r\n  \"trackingNumber\" : [ \"786\" ],\r\n  \"coded\" : [ \"123546456456\" ]\r\n}', '0', null, '2019-08-20 18:04:01');
INSERT INTO `sys_oper_log` VALUES ('469', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', null, '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"product\" : [ \"软著 软著 \" ],\r\n  \"code\" : [ \"123546456456\" ],\r\n  \"clientName\" : [ \"李阿劳斯丹劳\" ],\r\n  \"purchaseDate\" : [ \"2019-08-20\" ],\r\n  \"orderAmount\" : [ \"\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"456456\" ],\r\n  \"creator\" : [ \"\" ],\r\n  \"creationTime\" : [ \"2019-08-20\" ],\r\n  \"orderStatus\" : [ \"服务中\" ]\r\n}', '0', null, '2019-08-20 18:04:01');
INSERT INTO `sys_oper_log` VALUES ('470', '客户', '1', 'com.ruoyi.web.controller.copyright.AppClientController.addSave()', '1', 'admin', '研发部门', '/copyright/appClient/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"个人\" ],\r\n  \"clientName\" : [ \"诸葛亮\" ],\r\n  \"province\" : [ \"北京市\" ],\r\n  \"city\" : [ \"北京市市辖区\" ],\r\n  \"region\" : [ \"东城区\" ],\r\n  \"site\" : [ \"卧龙\" ],\r\n  \"clientKind\" : [ \"普通用户\" ],\r\n  \"phone\" : [ \"546\" ],\r\n  \"wordPhone\" : [ \"123\" ],\r\n  \"remark\" : [ \"456\" ],\r\n  \"code\" : [ \"789\" ]\r\n}', '0', null, '2019-08-21 10:22:08');
INSERT INTO `sys_oper_log` VALUES ('471', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"product\" : [ \"作品 商标 \" ],\r\n  \"code\" : [ \"123\" ],\r\n  \"clientName\" : [ \"蝙蝠侠\" ],\r\n  \"purchaseDate\" : [ \"2019-08-21\" ],\r\n  \"orderAmount\" : [ \"0456123123\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"456\" ],\r\n  \"creator\" : [ \"456\" ],\r\n  \"creationTime\" : [ \"2019-08-21\" ],\r\n  \"orderStatus\" : [ \"服务中\" ]\r\n}', '0', null, '2019-08-21 10:25:00');
INSERT INTO `sys_oper_log` VALUES ('472', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"商标:15-20日\" ],\r\n  \"worksName\" : [ \"斗地主\" ],\r\n  \"price\" : [ \"123123\" ],\r\n  \"ghostWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"2019-08-21\" ],\r\n  \"deliveryTime\" : [ \"2019-08-21\" ],\r\n  \"serialsNumber\" : [ \"456\" ],\r\n  \"trackingNumber\" : [ \"123\" ],\r\n  \"coded\" : [ \"123\" ]\r\n}', '0', null, '2019-08-21 10:25:00');
INSERT INTO `sys_oper_log` VALUES ('473', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"作品:当天\" ],\r\n  \"worksName\" : [ \"大富翁\" ],\r\n  \"price\" : [ \"456\" ],\r\n  \"ghostWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"2019-08-21\" ],\r\n  \"deliveryTime\" : [ \"2019-08-21\" ],\r\n  \"serialsNumber\" : [ \"456\" ],\r\n  \"trackingNumber\" : [ \"123\" ],\r\n  \"coded\" : [ \"123\" ]\r\n}', '0', null, '2019-08-21 10:25:00');
INSERT INTO `sys_oper_log` VALUES ('474', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', '研发部门', '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"37\" ]\r\n}', '0', null, '2019-08-21 10:26:57');
INSERT INTO `sys_oper_log` VALUES ('475', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', '研发部门', '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"38\" ]\r\n}', '0', null, '2019-08-21 10:29:17');
INSERT INTO `sys_oper_log` VALUES ('476', '客户', '1', 'com.ruoyi.web.controller.copyright.AppClientController.addSave()', '1', 'admin', '研发部门', '/copyright/appClient/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"个人\" ],\r\n  \"clientName\" : [ \"李洛克\" ],\r\n  \"province\" : [ \"北京市\" ],\r\n  \"city\" : [ \"北京市市辖区\" ],\r\n  \"region\" : [ \"东城区\" ],\r\n  \"site\" : [ \"破出具\" ],\r\n  \"clientKind\" : [ \"普通用户\" ],\r\n  \"phone\" : [ \"456\" ],\r\n  \"wordPhone\" : [ \"789\" ],\r\n  \"remark\" : [ \"123\" ],\r\n  \"code\" : [ \"456\" ]\r\n}', '0', null, '2019-08-21 10:29:51');
INSERT INTO `sys_oper_log` VALUES ('477', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"作品:当天\" ],\r\n  \"worksName\" : [ \"斗地主\" ],\r\n  \"price\" : [ \"2000\" ],\r\n  \"ghostWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"2019-08-21\" ],\r\n  \"deliveryTime\" : [ \"2019-08-21\" ],\r\n  \"serialsNumber\" : [ \"45621378923\" ],\r\n  \"trackingNumber\" : [ \"123453\" ],\r\n  \"coded\" : [ \"13564978\" ]\r\n}', '0', null, '2019-08-21 10:31:11');
INSERT INTO `sys_oper_log` VALUES ('478', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"product\" : [ \"商标 作品 \" ],\r\n  \"code\" : [ \"13564978\" ],\r\n  \"clientName\" : [ \"李洛克\" ],\r\n  \"purchaseDate\" : [ \"2019-08-21\" ],\r\n  \"orderAmount\" : [ \"3000\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"讲开讲老\" ],\r\n  \"creator\" : [ \"钢筋\" ],\r\n  \"creationTime\" : [ \"2019-08-21\" ],\r\n  \"orderStatus\" : [ \"服务中\" ]\r\n}', '0', null, '2019-08-21 10:31:11');
INSERT INTO `sys_oper_log` VALUES ('479', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"商标111111:100\" ],\r\n  \"worksName\" : [ \"大富翁\" ],\r\n  \"price\" : [ \"1000\" ],\r\n  \"ghostWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"2019-08-21\" ],\r\n  \"deliveryTime\" : [ \"2019-08-21\" ],\r\n  \"serialsNumber\" : [ \"123456789\" ],\r\n  \"trackingNumber\" : [ \"45612387\" ],\r\n  \"coded\" : [ \"13564978\" ]\r\n}', '0', null, '2019-08-21 10:31:11');
INSERT INTO `sys_oper_log` VALUES ('480', '清单', '2', 'com.ruoyi.web.controller.copyright.AppDetailedController.editSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/edit', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"作品:当天\" ],\r\n  \"worksName\" : [ \"斗地主\" ],\r\n  \"price\" : [ \"2000\" ],\r\n  \"ghostWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"2019-08-21\" ],\r\n  \"deliveryTime\" : [ \"2019-08-21\" ],\r\n  \"serialsNumber\" : [ \"45621378923\" ],\r\n  \"trackingNumber\" : [ \"123453\" ],\r\n  \"detailedId\" : [ \"80\" ],\r\n  \"coded\" : [ \"13564978\" ]\r\n}', '0', null, '2019-08-21 10:31:49');
INSERT INTO `sys_oper_log` VALUES ('481', '订单', '2', 'com.ruoyi.web.controller.copyright.AppIndentController.editSave()', '1', 'admin', '研发部门', '/copyright/appIndent/edit', '127.0.0.1', '内网IP', '{\r\n  \"indentId\" : [ \"46\" ],\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"code\" : [ \"13564978\" ],\r\n  \"clientName\" : [ \"李洛克\" ],\r\n  \"purchaseDate\" : [ \"2019-08-21\" ],\r\n  \"orderAmount\" : [ \"3000\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"讲开讲老\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"creator\" : [ \"钢筋\" ],\r\n  \"creationTime\" : [ \"2019-08-21\" ]\r\n}', '0', null, '2019-08-21 10:31:49');
INSERT INTO `sys_oper_log` VALUES ('482', '清单', '2', 'com.ruoyi.web.controller.copyright.AppDetailedController.editSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/edit', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"商标111111:100\" ],\r\n  \"worksName\" : [ \"大富翁\" ],\r\n  \"price\" : [ \"1000\" ],\r\n  \"ghostWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"2019-08-21\" ],\r\n  \"deliveryTime\" : [ \"2019-08-21\" ],\r\n  \"serialsNumber\" : [ \"123456789\" ],\r\n  \"trackingNumber\" : [ \"45612387\" ],\r\n  \"detailedId\" : [ \"81\" ],\r\n  \"coded\" : [ \"13564978\" ]\r\n}', '0', null, '2019-08-21 10:31:49');
INSERT INTO `sys_oper_log` VALUES ('483', '订单', '2', 'com.ruoyi.web.controller.copyright.AppIndentController.editSave()', '1', 'admin', '研发部门', '/copyright/appIndent/edit', '127.0.0.1', '内网IP', '{\r\n  \"indentId\" : [ \"46\" ],\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"code\" : [ \"13564978\" ],\r\n  \"clientName\" : [ \"李洛克\" ],\r\n  \"purchaseDate\" : [ \"2019-08-21\" ],\r\n  \"orderAmount\" : [ \"3000\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"讲开讲老\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"creator\" : [ \"钢筋\" ],\r\n  \"creationTime\" : [ \"2019-08-21\" ]\r\n}', '0', null, '2019-08-21 10:32:16');
INSERT INTO `sys_oper_log` VALUES ('484', '清单', '2', 'com.ruoyi.web.controller.copyright.AppDetailedController.editSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/edit', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"商标111111:100\" ],\r\n  \"worksName\" : [ \"大富翁\" ],\r\n  \"price\" : [ \"1000\" ],\r\n  \"ghostWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"2019-08-21\" ],\r\n  \"deliveryTime\" : [ \"2019-08-21\" ],\r\n  \"serialsNumber\" : [ \"123456789\" ],\r\n  \"trackingNumber\" : [ \"45612387\" ],\r\n  \"detailedId\" : [ \"81\" ],\r\n  \"coded\" : [ \"13564978\" ]\r\n}', '0', null, '2019-08-21 10:32:16');
INSERT INTO `sys_oper_log` VALUES ('485', '清单', '2', 'com.ruoyi.web.controller.copyright.AppDetailedController.editSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/edit', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"作品:当天\" ],\r\n  \"worksName\" : [ \"斗地主\" ],\r\n  \"price\" : [ \"2000\" ],\r\n  \"ghostWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"2019-08-21\" ],\r\n  \"deliveryTime\" : [ \"2019-08-21\" ],\r\n  \"serialsNumber\" : [ \"45621378923\" ],\r\n  \"trackingNumber\" : [ \"123453\" ],\r\n  \"detailedId\" : [ \"80\" ],\r\n  \"coded\" : [ \"13564978\" ]\r\n}', '0', null, '2019-08-21 10:32:16');
INSERT INTO `sys_oper_log` VALUES ('486', '产品', '1', 'com.ruoyi.web.controller.copyright.AppProductController.addSave()', '1', 'admin', '研发部门', '/copyright/appProduct/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"小说\" ],\r\n  \"workdays\" : [ \"100天\" ],\r\n  \"salesPrice\" : [ \"1000\" ],\r\n  \"purchasePrice\" : [ \"5000\" ],\r\n  \"supplierCompany\" : [ \"腾讯\" ],\r\n  \"supplierName\" : [ \"我司扥德森sd\" ],\r\n  \"supplierPhone\" : [ \"1874512345\" ],\r\n  \"supplierQq\" : [ \"011012524\" ],\r\n  \"award\" : [ \"4532\" ],\r\n  \"remark\" : [ \"456456\" ],\r\n  \"valid\" : [ \"0\" ],\r\n  \"order\" : [ \"1\" ]\r\n}', '0', null, '2019-08-21 10:35:57');
INSERT INTO `sys_oper_log` VALUES ('487', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', '研发部门', '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"39\" ]\r\n}', '0', null, '2019-08-21 10:36:52');
INSERT INTO `sys_oper_log` VALUES ('488', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', '研发部门', '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"40\" ]\r\n}', '0', null, '2019-08-21 10:36:54');
INSERT INTO `sys_oper_log` VALUES ('489', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', '研发部门', '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"41\" ]\r\n}', '0', null, '2019-08-21 10:36:56');
INSERT INTO `sys_oper_log` VALUES ('490', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', '研发部门', '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"42\" ]\r\n}', '0', null, '2019-08-21 10:36:58');
INSERT INTO `sys_oper_log` VALUES ('491', '订单', '3', 'com.ruoyi.web.controller.copyright.AppIndentController.remove()', '1', 'admin', '研发部门', '/copyright/appIndent/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"43\" ]\r\n}', '0', null, '2019-08-21 10:37:01');
INSERT INTO `sys_oper_log` VALUES ('492', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2001\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"客户与联系人\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"0\" ],\r\n  \"icon\" : [ \"fa fa-group\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-08-21 10:42:19');
INSERT INTO `sys_oper_log` VALUES ('493', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2001\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"客户与联系人\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-group\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-08-21 10:46:37');
INSERT INTO `sys_oper_log` VALUES ('494', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"产品\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"fa fa-cubes\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-08-21 10:46:45');
INSERT INTO `sys_oper_log` VALUES ('495', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2002\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"销售\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"fa fa-handshake-o\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-08-21 10:47:00');
INSERT INTO `sys_oper_log` VALUES ('496', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2018\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"合同\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"fa fa-clone\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-08-21 10:47:07');
INSERT INTO `sys_oper_log` VALUES ('497', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2034\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"采购\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"fa fa-car\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-08-21 10:47:14');
INSERT INTO `sys_oper_log` VALUES ('498', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统管理\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"6\" ],\r\n  \"icon\" : [ \"fa fa-gear\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-08-21 10:47:28');
INSERT INTO `sys_oper_log` VALUES ('499', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统监控\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"7\" ],\r\n  \"icon\" : [ \"fa fa-video-camera\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-08-21 10:47:35');
INSERT INTO `sys_oper_log` VALUES ('500', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"3\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统工具\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"8\" ],\r\n  \"icon\" : [ \"fa fa-bars\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-08-21 10:47:42');
INSERT INTO `sys_oper_log` VALUES ('501', '客户', '1', 'com.ruoyi.web.controller.copyright.AppClientController.addSave()', '1', 'admin', '研发部门', '/copyright/appClient/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"个人\" ],\r\n  \"clientName\" : [ \"李俊凯\" ],\r\n  \"province\" : [ \"北京市\" ],\r\n  \"city\" : [ \"北京市市辖区\" ],\r\n  \"region\" : [ \"东城区\" ],\r\n  \"site\" : [ \"破出具\" ],\r\n  \"clientKind\" : [ \"普通用户\" ],\r\n  \"phone\" : [ \"456\" ],\r\n  \"wordPhone\" : [ \"123\" ],\r\n  \"remark\" : [ \"456\" ],\r\n  \"code\" : [ \"123\" ]\r\n}', '0', null, '2019-08-21 10:49:28');
INSERT INTO `sys_oper_log` VALUES ('502', '客户', '1', 'com.ruoyi.web.controller.copyright.AppClientController.addSave()', '1', 'admin', '研发部门', '/copyright/appClient/add', '127.0.0.1', '内网IP', '{\r\n  \"type\" : [ \"个人\" ],\r\n  \"clientName\" : [ \"李讲开讲老\" ],\r\n  \"province\" : [ \"北京市\" ],\r\n  \"city\" : [ \"北京市市辖区\" ],\r\n  \"region\" : [ \"东城区\" ],\r\n  \"site\" : [ \"喊钢筋\" ],\r\n  \"clientKind\" : [ \"普通用户\" ],\r\n  \"phone\" : [ \"1423213\" ],\r\n  \"wordPhone\" : [ \"456456\" ],\r\n  \"remark\" : [ \"456456\" ],\r\n  \"code\" : [ \"54654656\" ]\r\n}', '0', null, '2019-08-21 10:52:00');
INSERT INTO `sys_oper_log` VALUES ('503', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"worksName\" : [ \"斗地主\" ],\r\n  \"price\" : [ \"2000\" ],\r\n  \"ghostWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"2019-08-21\" ],\r\n  \"deliveryTime\" : [ \"2019-08-21\" ],\r\n  \"serialsNumber\" : [ \"456456\" ],\r\n  \"trackingNumber\" : [ \"42\" ],\r\n  \"coded\" : [ \"99999\" ]\r\n}', '0', null, '2019-08-21 10:53:47');
INSERT INTO `sys_oper_log` VALUES ('504', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"作品:当天\" ],\r\n  \"worksName\" : [ \"大富翁\" ],\r\n  \"price\" : [ \"1000\" ],\r\n  \"ghostWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"2019-08-21\" ],\r\n  \"deliveryTime\" : [ \"2019-08-21\" ],\r\n  \"serialsNumber\" : [ \"132\" ],\r\n  \"trackingNumber\" : [ \"4566\" ],\r\n  \"coded\" : [ \"99999\" ]\r\n}', '0', null, '2019-08-21 10:53:47');
INSERT INTO `sys_oper_log` VALUES ('505', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"product\" : [ \"作品 软著 \" ],\r\n  \"code\" : [ \"99999\" ],\r\n  \"clientName\" : [ \"李讲开讲老\" ],\r\n  \"purchaseDate\" : [ \"2019-08-21\" ],\r\n  \"orderAmount\" : [ \"3000\" ],\r\n  \"materials\" : [ \"1\" ],\r\n  \"invoice\" : [ \"1\" ],\r\n  \"remark\" : [ \"453453\" ],\r\n  \"creator\" : [ \"\" ],\r\n  \"creationTime\" : [ \"2019-08-21\" ],\r\n  \"orderStatus\" : [ \"服务中\" ]\r\n}', '0', null, '2019-08-21 10:53:47');
INSERT INTO `sys_oper_log` VALUES ('506', '订单', '2', 'com.ruoyi.web.controller.copyright.AppIndentController.editSave()', '1', 'admin', '研发部门', '/copyright/appIndent/edit', '127.0.0.1', '内网IP', '{\r\n  \"indentId\" : [ \"47\" ],\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"code\" : [ \"99999\" ],\r\n  \"clientName\" : [ \"李讲开讲老\" ],\r\n  \"purchaseDate\" : [ \"2019-08-21\" ],\r\n  \"orderAmount\" : [ \"3000\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"453453\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"creator\" : [ \"\" ],\r\n  \"creationTime\" : [ \"2019-08-21\" ]\r\n}', '0', null, '2019-08-21 10:55:26');
INSERT INTO `sys_oper_log` VALUES ('507', '清单', '2', 'com.ruoyi.web.controller.copyright.AppDetailedController.editSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/edit', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"作品:当天\" ],\r\n  \"worksName\" : [ \"大富翁\" ],\r\n  \"price\" : [ \"1000\" ],\r\n  \"ghostWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"2019-09-03\" ],\r\n  \"deliveryTime\" : [ \"2019-08-21\" ],\r\n  \"serialsNumber\" : [ \"132\" ],\r\n  \"trackingNumber\" : [ \"4566\" ],\r\n  \"detailedId\" : [ \"83\" ],\r\n  \"coded\" : [ \"99999\" ]\r\n}', '0', null, '2019-08-21 10:55:26');
INSERT INTO `sys_oper_log` VALUES ('508', '清单', '2', 'com.ruoyi.web.controller.copyright.AppDetailedController.editSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/edit', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天\" ],\r\n  \"worksName\" : [ \"斗地主\" ],\r\n  \"price\" : [ \"2000\" ],\r\n  \"ghostWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"2019-08-21\" ],\r\n  \"deliveryTime\" : [ \"2019-08-21\" ],\r\n  \"serialsNumber\" : [ \"456456\" ],\r\n  \"trackingNumber\" : [ \"42\" ],\r\n  \"detailedId\" : [ \"82\" ],\r\n  \"coded\" : [ \"99999\" ]\r\n}', '0', null, '2019-08-21 10:55:26');
INSERT INTO `sys_oper_log` VALUES ('509', '客户', '2', 'com.ruoyi.web.controller.copyright.AppClientController.editSave()', '1', 'admin', '研发部门', '/copyright/appClient/edit', '127.0.0.1', '内网IP', '{\r\n  \"clientId\" : [ \"19\" ],\r\n  \"type\" : [ \"个人\" ],\r\n  \"clientName\" : [ \"超人\" ],\r\n  \"province\" : [ \"北京市\" ],\r\n  \"city\" : [ \"\" ],\r\n  \"region\" : [ \"\" ],\r\n  \"site\" : [ \"发樊登\" ],\r\n  \"clientKind\" : [ \"业务合作商\" ],\r\n  \"phone\" : [ \"18722354213\" ],\r\n  \"wordPhone\" : [ \"456\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"code\" : [ \"456\" ]\r\n}', '0', null, '2019-08-21 13:32:43');
INSERT INTO `sys_oper_log` VALUES ('510', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天;  价格：1111\" ],\r\n  \"worksName\" : [ \"大富翁\" ],\r\n  \"price\" : [ \"123467987\" ],\r\n  \"ghostWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"2019-08-21\" ],\r\n  \"deliveryTime\" : [ \"2019-08-21\" ],\r\n  \"serialsNumber\" : [ \"4656\" ],\r\n  \"trackingNumber\" : [ \"879789\" ],\r\n  \"coded\" : [ \"87979789\" ]\r\n}', '0', null, '2019-08-21 13:38:55');
INSERT INTO `sys_oper_log` VALUES ('511', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"product\" : [ \"软著 \" ],\r\n  \"code\" : [ \"87979789\" ],\r\n  \"clientName\" : [ \"李白\" ],\r\n  \"purchaseDate\" : [ \"2019-08-21\" ],\r\n  \"orderAmount\" : [ \"123467987\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"李\" ],\r\n  \"creator\" : [ \"89879\" ],\r\n  \"creationTime\" : [ \"2019-08-21\" ],\r\n  \"orderStatus\" : [ \"服务中\" ]\r\n}', '0', null, '2019-08-21 13:38:55');
INSERT INTO `sys_oper_log` VALUES ('512', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天;  价格：1111\" ],\r\n  \"worksName\" : [ \"75785\" ],\r\n  \"price\" : [ \"56565\" ],\r\n  \"ghostWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"2019-08-21\" ],\r\n  \"deliveryTime\" : [ \"2019-08-21\" ],\r\n  \"serialsNumber\" : [ \"75875\" ],\r\n  \"trackingNumber\" : [ \"85785\" ],\r\n  \"coded\" : [ \"99999\" ]\r\n}', '0', null, '2019-08-21 13:57:02');
INSERT INTO `sys_oper_log` VALUES ('513', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"product\" : [ \"软著 \" ],\r\n  \"code\" : [ \"99999\" ],\r\n  \"clientName\" : [ \"阎王\" ],\r\n  \"purchaseDate\" : [ \"2019-08-21\" ],\r\n  \"orderAmount\" : [ \"56565\" ],\r\n  \"materials\" : [ \"1\" ],\r\n  \"invoice\" : [ \"1\" ],\r\n  \"remark\" : [ \"1455466\" ],\r\n  \"creator\" : [ \"12674545\" ],\r\n  \"creationTime\" : [ \"2019-08-14\" ],\r\n  \"orderStatus\" : [ \"服务中\" ]\r\n}', '0', null, '2019-08-21 13:57:02');
INSERT INTO `sys_oper_log` VALUES ('514', '订单', '2', 'com.ruoyi.web.controller.copyright.AppIndentController.editSave()', '1', 'admin', '研发部门', '/copyright/appIndent/edit', '127.0.0.1', '内网IP', '{\r\n  \"indentId\" : [ \"46\" ],\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"code\" : [ \"13564978\" ],\r\n  \"clientName\" : [ \"李洛克\" ],\r\n  \"purchaseDate\" : [ \"2019-08-21\" ],\r\n  \"orderAmount\" : [ \"3000\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"讲开讲老\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"creator\" : [ \"钢筋\" ],\r\n  \"creationTime\" : [ \"2019-08-21\" ]\r\n}', '0', null, '2019-08-21 14:12:40');
INSERT INTO `sys_oper_log` VALUES ('515', '清单', '2', 'com.ruoyi.web.controller.copyright.AppDetailedController.editSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/edit', '127.0.0.1', '内网IP', '{\r\n  \"worksName\" : [ \"大富翁\" ],\r\n  \"price\" : [ \"1000\" ],\r\n  \"ghostWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"2019-08-21\" ],\r\n  \"deliveryTime\" : [ \"2019-07-16\" ],\r\n  \"serialsNumber\" : [ \"123456789\" ],\r\n  \"trackingNumber\" : [ \"45612387\" ],\r\n  \"detailedId\" : [ \"81\" ],\r\n  \"coded\" : [ \"13564978\" ]\r\n}', '0', null, '2019-08-21 14:12:40');
INSERT INTO `sys_oper_log` VALUES ('516', '清单', '2', 'com.ruoyi.web.controller.copyright.AppDetailedController.editSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/edit', '127.0.0.1', '内网IP', '{\r\n  \"worksName\" : [ \"斗地主\" ],\r\n  \"price\" : [ \"2000\" ],\r\n  \"ghostWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"2019-08-21\" ],\r\n  \"deliveryTime\" : [ \"2019-07-16\" ],\r\n  \"serialsNumber\" : [ \"45621378923\" ],\r\n  \"trackingNumber\" : [ \"123453\" ],\r\n  \"detailedId\" : [ \"80\" ],\r\n  \"coded\" : [ \"13564978\" ]\r\n}', '0', null, '2019-08-21 14:12:40');
INSERT INTO `sys_oper_log` VALUES ('517', '订单', '2', 'com.ruoyi.web.controller.copyright.AppIndentController.editSave()', '1', 'admin', '研发部门', '/copyright/appIndent/edit', '127.0.0.1', '内网IP', '{\r\n  \"indentId\" : [ \"49\" ],\r\n  \"indentType\" : [ \"淘宝—卓森\" ],\r\n  \"code\" : [ \"99999\" ],\r\n  \"clientName\" : [ \"阎王\" ],\r\n  \"purchaseDate\" : [ \"2019-08-21\" ],\r\n  \"orderAmount\" : [ \"56565\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"1455466\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"creator\" : [ \"12674545\" ],\r\n  \"creationTime\" : [ \"2019-08-14\" ]\r\n}', '0', null, '2019-08-21 14:22:53');
INSERT INTO `sys_oper_log` VALUES ('518', '清单', '2', 'com.ruoyi.web.controller.copyright.AppDetailedController.editSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/edit', '127.0.0.1', '内网IP', '{\r\n  \"worksName\" : [ \"大富翁\" ],\r\n  \"price\" : [ \"1000\" ],\r\n  \"ghostWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"\" ],\r\n  \"deliveryTime\" : [ \"\" ],\r\n  \"serialsNumber\" : [ \"132\" ],\r\n  \"trackingNumber\" : [ \"4566\" ],\r\n  \"detailedId\" : [ \"83\" ],\r\n  \"coded\" : [ \"99999\" ]\r\n}', '0', null, '2019-08-21 14:22:53');
INSERT INTO `sys_oper_log` VALUES ('519', '清单', '2', 'com.ruoyi.web.controller.copyright.AppDetailedController.editSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/edit', '127.0.0.1', '内网IP', '{\r\n  \"worksName\" : [ \"75785\" ],\r\n  \"price\" : [ \"56565\" ],\r\n  \"ghostWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"\" ],\r\n  \"deliveryTime\" : [ \"\" ],\r\n  \"serialsNumber\" : [ \"75875\" ],\r\n  \"trackingNumber\" : [ \"85785\" ],\r\n  \"detailedId\" : [ \"85\" ],\r\n  \"coded\" : [ \"99999\" ]\r\n}', '0', null, '2019-08-21 14:22:53');
INSERT INTO `sys_oper_log` VALUES ('520', '清单', '2', 'com.ruoyi.web.controller.copyright.AppDetailedController.editSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/edit', '127.0.0.1', '内网IP', '{\r\n  \"worksName\" : [ \"斗地主\" ],\r\n  \"price\" : [ \"2000\" ],\r\n  \"ghostWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"\" ],\r\n  \"deliveryTime\" : [ \"\" ],\r\n  \"serialsNumber\" : [ \"456456\" ],\r\n  \"trackingNumber\" : [ \"42\" ],\r\n  \"detailedId\" : [ \"82\" ],\r\n  \"coded\" : [ \"99999\" ]\r\n}', '0', null, '2019-08-21 14:22:53');
INSERT INTO `sys_oper_log` VALUES ('521', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"product\" : [ \"作品 \" ],\r\n  \"code\" : [ \"456456456\" ],\r\n  \"clientName\" : [ \"李坎饥饿\" ],\r\n  \"purchaseDate\" : [ \"2019-08-21\" ],\r\n  \"orderAmount\" : [ \"123\" ],\r\n  \"materials\" : [ \"1\" ],\r\n  \"invoice\" : [ \"2\" ],\r\n  \"remark\" : [ \"456456\" ],\r\n  \"creator\" : [ \"456456\" ],\r\n  \"creationTime\" : [ \"2019-08-21\" ],\r\n  \"orderStatus\" : [ \"服务中\" ]\r\n}', '0', null, '2019-08-21 15:08:05');
INSERT INTO `sys_oper_log` VALUES ('522', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"作品:当天;  价格：3333\" ],\r\n  \"worksName\" : [ \"大富翁\" ],\r\n  \"price\" : [ \"123\" ],\r\n  \"ghostWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"2019-08-21\" ],\r\n  \"deliveryTime\" : [ \"2019-08-22\" ],\r\n  \"serialsNumber\" : [ \"123\" ],\r\n  \"trackingNumber\" : [ \"456\" ],\r\n  \"coded\" : [ \"456456456\" ]\r\n}', '0', null, '2019-08-21 15:08:05');
INSERT INTO `sys_oper_log` VALUES ('523', '清单', '1', 'com.ruoyi.web.controller.copyright.AppDetailedController.addSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/add', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天;  价格：1111\" ],\r\n  \"worksName\" : [ \"斗地主\" ],\r\n  \"price\" : [ \"23132\" ],\r\n  \"ghostWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"2019-08-21\" ],\r\n  \"deliveryTime\" : [ \"2019-08-14\" ],\r\n  \"serialsNumber\" : [ \"5646\" ],\r\n  \"trackingNumber\" : [ \"456456\" ],\r\n  \"coded\" : [ \"555555555\" ]\r\n}', '0', null, '2019-08-21 15:28:38');
INSERT INTO `sys_oper_log` VALUES ('524', '订单', '1', 'com.ruoyi.web.controller.copyright.AppIndentController.addSave()', '1', 'admin', '研发部门', '/copyright/appIndent/add', '127.0.0.1', '内网IP', '{\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"product\" : [ \"软著 \" ],\r\n  \"code\" : [ \"555555555\" ],\r\n  \"clientName\" : [ \"李坎饥饿\" ],\r\n  \"purchaseDate\" : [ \"2019-08-21\" ],\r\n  \"orderAmount\" : [ \"23132\" ],\r\n  \"materials\" : [ \"1\" ],\r\n  \"invoice\" : [ \"1\" ],\r\n  \"remark\" : [ \"456\" ],\r\n  \"creator\" : [ \"333\" ],\r\n  \"creationTime\" : [ \"2019-08-21\" ],\r\n  \"orderStatus\" : [ \"服务中\" ]\r\n}', '0', null, '2019-08-21 15:28:38');
INSERT INTO `sys_oper_log` VALUES ('525', '清单', '2', 'com.ruoyi.web.controller.copyright.AppDetailedController.editSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/edit', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天; 价格：1111\" ],\r\n  \"worksName\" : [ \"斗地主\" ],\r\n  \"price\" : [ \"23132\" ],\r\n  \"ghostWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"\" ],\r\n  \"deliveryTime\" : [ \"\" ],\r\n  \"serialsNumber\" : [ \"5646\" ],\r\n  \"trackingNumber\" : [ \"456456\" ],\r\n  \"detailedId\" : [ \"87\" ],\r\n  \"coded\" : [ \"555555555\" ]\r\n}', '0', null, '2019-08-21 15:28:51');
INSERT INTO `sys_oper_log` VALUES ('526', '订单', '2', 'com.ruoyi.web.controller.copyright.AppIndentController.editSave()', '1', 'admin', '研发部门', '/copyright/appIndent/edit', '127.0.0.1', '内网IP', '{\r\n  \"indentId\" : [ \"51\" ],\r\n  \"indentType\" : [ \"京东\" ],\r\n  \"code\" : [ \"555555555\" ],\r\n  \"clientName\" : [ \"李坎饥饿\" ],\r\n  \"purchaseDate\" : [ \"2019-08-21\" ],\r\n  \"orderAmount\" : [ \"23132\" ],\r\n  \"materials\" : [ \"1\", \"1\" ],\r\n  \"invoice\" : [ \"1\", \"1\" ],\r\n  \"remark\" : [ \"456\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"creator\" : [ \"333\" ],\r\n  \"creationTime\" : [ \"2019-08-21\" ]\r\n}', '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'materials\' at row 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppIndentMapper.updateAppIndent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update app_indent          SET indent_type = ?,                          code = ?,             client_name = ?,             purchase_date = ?,             order_amount = ?,                          materials = ?,             invoice = ?,             remark = ?,             order_status = ?,                                                    creator = ?,             creation_time = ?          where indent_id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'materials\' at row 1\n; Data truncation: Data too long for column \'materials\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'materials\' at row 1', '2019-08-21 15:28:52');
INSERT INTO `sys_oper_log` VALUES ('527', '订单', '2', 'com.ruoyi.web.controller.copyright.AppIndentController.editSave()', '1', 'admin', '研发部门', '/copyright/appIndent/edit', '127.0.0.1', '内网IP', '{\r\n  \"indentId\" : [ \"51\" ],\r\n  \"indentType\" : [ \"京东\" ],\r\n  \"code\" : [ \"555555555\" ],\r\n  \"clientName\" : [ \"李坎饥饿\" ],\r\n  \"purchaseDate\" : [ \"2019-08-21\" ],\r\n  \"orderAmount\" : [ \"23132\" ],\r\n  \"materials\" : [ \"1\", \"1\" ],\r\n  \"invoice\" : [ \"1\", \"1\" ],\r\n  \"remark\" : [ \"456\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"creator\" : [ \"333\" ],\r\n  \"creationTime\" : [ \"2019-08-21\" ]\r\n}', '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'materials\' at row 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppIndentMapper.updateAppIndent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update app_indent          SET indent_type = ?,                          code = ?,             client_name = ?,             purchase_date = ?,             order_amount = ?,                          materials = ?,             invoice = ?,             remark = ?,             order_status = ?,                                                    creator = ?,             creation_time = ?          where indent_id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'materials\' at row 1\n; Data truncation: Data too long for column \'materials\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'materials\' at row 1', '2019-08-21 15:29:07');
INSERT INTO `sys_oper_log` VALUES ('528', '清单', '2', 'com.ruoyi.web.controller.copyright.AppDetailedController.editSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/edit', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"软著:5-10天; 价格：1111\" ],\r\n  \"worksName\" : [ \"斗地主\" ],\r\n  \"price\" : [ \"23132\" ],\r\n  \"ghostWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"\" ],\r\n  \"deliveryTime\" : [ \"\" ],\r\n  \"serialsNumber\" : [ \"5646\" ],\r\n  \"trackingNumber\" : [ \"456456\" ],\r\n  \"detailedId\" : [ \"87\" ],\r\n  \"coded\" : [ \"555555555\" ]\r\n}', '0', null, '2019-08-21 15:29:07');
INSERT INTO `sys_oper_log` VALUES ('529', '订单', '2', 'com.ruoyi.web.controller.copyright.AppIndentController.editSave()', '1', 'admin', '研发部门', '/copyright/appIndent/edit', '127.0.0.1', '内网IP', '{\r\n  \"indentId\" : [ \"50\" ],\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"code\" : [ \"456456456\" ],\r\n  \"clientName\" : [ \"李坎饥饿\" ],\r\n  \"purchaseDate\" : [ \"2019-08-21\" ],\r\n  \"orderAmount\" : [ \"123\" ],\r\n  \"materials\" : [ \"1\", \"1\" ],\r\n  \"invoice\" : [ \"2\", \"2\" ],\r\n  \"remark\" : [ \"456456\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"creator\" : [ \"456456\" ],\r\n  \"creationTime\" : [ \"2019-08-21\" ]\r\n}', '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'materials\' at row 1\r\n### The error may involve com.ruoyi.copyright.mapper.AppIndentMapper.updateAppIndent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update app_indent          SET indent_type = ?,                          code = ?,             client_name = ?,             purchase_date = ?,             order_amount = ?,                          materials = ?,             invoice = ?,             remark = ?,             order_status = ?,                                                    creator = ?,             creation_time = ?          where indent_id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'materials\' at row 1\n; Data truncation: Data too long for column \'materials\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'materials\' at row 1', '2019-08-21 15:36:04');
INSERT INTO `sys_oper_log` VALUES ('530', '清单', '2', 'com.ruoyi.web.controller.copyright.AppDetailedController.editSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/edit', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"作品:当天; 价格：3333\" ],\r\n  \"worksName\" : [ \"大富翁\" ],\r\n  \"price\" : [ \"123\" ],\r\n  \"ghostWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"\" ],\r\n  \"deliveryTime\" : [ \"\" ],\r\n  \"serialsNumber\" : [ \"123\" ],\r\n  \"trackingNumber\" : [ \"456\" ],\r\n  \"detailedId\" : [ \"86\" ],\r\n  \"coded\" : [ \"456456456\" ]\r\n}', '0', null, '2019-08-21 15:36:04');
INSERT INTO `sys_oper_log` VALUES ('531', '清单', '2', 'com.ruoyi.web.controller.copyright.AppDetailedController.editSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/edit', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"作品:当天; 价格：3333\" ],\r\n  \"worksName\" : [ \"大富翁\" ],\r\n  \"price\" : [ \"123\" ],\r\n  \"ghostWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"\" ],\r\n  \"deliveryTime\" : [ \"\" ],\r\n  \"serialsNumber\" : [ \"123\" ],\r\n  \"trackingNumber\" : [ \"456\" ],\r\n  \"detailedId\" : [ \"86\" ],\r\n  \"coded\" : [ \"456456456\" ]\r\n}', '0', null, '2019-08-21 15:39:35');
INSERT INTO `sys_oper_log` VALUES ('532', '订单', '2', 'com.ruoyi.web.controller.copyright.AppIndentController.editSave()', '1', 'admin', '研发部门', '/copyright/appIndent/edit', '127.0.0.1', '内网IP', '{\r\n  \"indentId\" : [ \"50\" ],\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"code\" : [ \"456456456\" ],\r\n  \"clientName\" : [ \"李坎饥饿\" ],\r\n  \"purchaseDate\" : [ \"2019-08-21\" ],\r\n  \"orderAmount\" : [ \"123\" ],\r\n  \"materials\" : [ \"1\" ],\r\n  \"invoice\" : [ \"2\" ],\r\n  \"remark\" : [ \"456456\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"creator\" : [ \"456456\" ],\r\n  \"creationTime\" : [ \"2019-08-21\" ]\r\n}', '0', null, '2019-08-21 15:39:35');
INSERT INTO `sys_oper_log` VALUES ('533', '订单', '2', 'com.ruoyi.web.controller.copyright.AppIndentController.editSave()', '1', 'admin', '研发部门', '/copyright/appIndent/edit', '127.0.0.1', '内网IP', '{\r\n  \"indentId\" : [ \"50\" ],\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"code\" : [ \"456456456\" ],\r\n  \"clientName\" : [ \"李坎饥饿\" ],\r\n  \"purchaseDate\" : [ \"2019-08-21\" ],\r\n  \"orderAmount\" : [ \"123\" ],\r\n  \"materials\" : [ \"1\" ],\r\n  \"invoice\" : [ \"2\" ],\r\n  \"remark\" : [ \"456456\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"creator\" : [ \"456456\" ],\r\n  \"creationTime\" : [ \"2019-08-21\" ]\r\n}', '0', null, '2019-08-21 15:39:51');
INSERT INTO `sys_oper_log` VALUES ('534', '清单', '2', 'com.ruoyi.web.controller.copyright.AppDetailedController.editSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/edit', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"作品:当天; 价格：3333\" ],\r\n  \"worksName\" : [ \"大富翁\" ],\r\n  \"price\" : [ \"123\" ],\r\n  \"ghostWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"\" ],\r\n  \"deliveryTime\" : [ \"\" ],\r\n  \"serialsNumber\" : [ \"123\" ],\r\n  \"trackingNumber\" : [ \"456\" ],\r\n  \"detailedId\" : [ \"86\" ],\r\n  \"coded\" : [ \"456456456\" ]\r\n}', '0', null, '2019-08-21 15:39:51');
INSERT INTO `sys_oper_log` VALUES ('535', '订单', '2', 'com.ruoyi.web.controller.copyright.AppIndentController.editSave()', '1', 'admin', '研发部门', '/copyright/appIndent/edit', '127.0.0.1', '内网IP', '{\r\n  \"indentId\" : [ \"45\" ],\r\n  \"indentType\" : [ \"淘宝—知丫\" ],\r\n  \"code\" : [ \"123\" ],\r\n  \"clientName\" : [ \"蝙蝠侠\" ],\r\n  \"purchaseDate\" : [ \"2019-08-21\" ],\r\n  \"orderAmount\" : [ \"456123123\" ],\r\n  \"materials\" : [ \"0\" ],\r\n  \"invoice\" : [ \"0\" ],\r\n  \"remark\" : [ \"456\" ],\r\n  \"orderStatus\" : [ \"服务中\" ],\r\n  \"creationTime\" : [ \"2019-08-21\" ]\r\n}', '0', null, '2019-08-21 16:31:04');
INSERT INTO `sys_oper_log` VALUES ('536', '清单', '2', 'com.ruoyi.web.controller.copyright.AppDetailedController.editSave()', '1', 'admin', '研发部门', '/copyright/appDetailed/edit', '127.0.0.1', '内网IP', '{\r\n  \"product\" : [ \"商标:15-20日\" ],\r\n  \"worksName\" : [ \"斗地主\" ],\r\n  \"price\" : [ \"123123\" ],\r\n  \"ghostWrite\" : [ \"是\" ],\r\n  \"submitTime\" : [ \"2019-08-21\" ],\r\n  \"deliveryTime\" : [ \"2019-08-21\" ],\r\n  \"serialsNumber\" : [ \"456\" ],\r\n  \"trackingNumber\" : [ \"123\" ],\r\n  \"detailedId\" : [ \"78\" ],\r\n  \"coded\" : [ \"123\" ]\r\n}', '0', null, '2019-08-21 16:31:04');

-- ----------------------------
-- Table structure for `sys_post`
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES ('2', 'se', '项目经理', '2', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES ('3', 'hr', '人力资源', '3', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES ('4', 'user', '普通员工', '4', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '管理员', 'admin', '1', '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '2', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '普通角色');

-- ----------------------------
-- Table structure for `sys_role_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '101');
INSERT INTO `sys_role_dept` VALUES ('2', '105');

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '100');
INSERT INTO `sys_role_menu` VALUES ('2', '101');
INSERT INTO `sys_role_menu` VALUES ('2', '102');
INSERT INTO `sys_role_menu` VALUES ('2', '103');
INSERT INTO `sys_role_menu` VALUES ('2', '104');
INSERT INTO `sys_role_menu` VALUES ('2', '105');
INSERT INTO `sys_role_menu` VALUES ('2', '106');
INSERT INTO `sys_role_menu` VALUES ('2', '107');
INSERT INTO `sys_role_menu` VALUES ('2', '108');
INSERT INTO `sys_role_menu` VALUES ('2', '109');
INSERT INTO `sys_role_menu` VALUES ('2', '110');
INSERT INTO `sys_role_menu` VALUES ('2', '111');
INSERT INTO `sys_role_menu` VALUES ('2', '112');
INSERT INTO `sys_role_menu` VALUES ('2', '113');
INSERT INTO `sys_role_menu` VALUES ('2', '114');
INSERT INTO `sys_role_menu` VALUES ('2', '115');
INSERT INTO `sys_role_menu` VALUES ('2', '500');
INSERT INTO `sys_role_menu` VALUES ('2', '501');
INSERT INTO `sys_role_menu` VALUES ('2', '1000');
INSERT INTO `sys_role_menu` VALUES ('2', '1001');
INSERT INTO `sys_role_menu` VALUES ('2', '1002');
INSERT INTO `sys_role_menu` VALUES ('2', '1003');
INSERT INTO `sys_role_menu` VALUES ('2', '1004');
INSERT INTO `sys_role_menu` VALUES ('2', '1005');
INSERT INTO `sys_role_menu` VALUES ('2', '1006');
INSERT INTO `sys_role_menu` VALUES ('2', '1007');
INSERT INTO `sys_role_menu` VALUES ('2', '1008');
INSERT INTO `sys_role_menu` VALUES ('2', '1009');
INSERT INTO `sys_role_menu` VALUES ('2', '1010');
INSERT INTO `sys_role_menu` VALUES ('2', '1011');
INSERT INTO `sys_role_menu` VALUES ('2', '1012');
INSERT INTO `sys_role_menu` VALUES ('2', '1013');
INSERT INTO `sys_role_menu` VALUES ('2', '1014');
INSERT INTO `sys_role_menu` VALUES ('2', '1015');
INSERT INTO `sys_role_menu` VALUES ('2', '1016');
INSERT INTO `sys_role_menu` VALUES ('2', '1017');
INSERT INTO `sys_role_menu` VALUES ('2', '1018');
INSERT INTO `sys_role_menu` VALUES ('2', '1019');
INSERT INTO `sys_role_menu` VALUES ('2', '1020');
INSERT INTO `sys_role_menu` VALUES ('2', '1021');
INSERT INTO `sys_role_menu` VALUES ('2', '1022');
INSERT INTO `sys_role_menu` VALUES ('2', '1023');
INSERT INTO `sys_role_menu` VALUES ('2', '1024');
INSERT INTO `sys_role_menu` VALUES ('2', '1025');
INSERT INTO `sys_role_menu` VALUES ('2', '1026');
INSERT INTO `sys_role_menu` VALUES ('2', '1027');
INSERT INTO `sys_role_menu` VALUES ('2', '1028');
INSERT INTO `sys_role_menu` VALUES ('2', '1029');
INSERT INTO `sys_role_menu` VALUES ('2', '1030');
INSERT INTO `sys_role_menu` VALUES ('2', '1031');
INSERT INTO `sys_role_menu` VALUES ('2', '1032');
INSERT INTO `sys_role_menu` VALUES ('2', '1033');
INSERT INTO `sys_role_menu` VALUES ('2', '1034');
INSERT INTO `sys_role_menu` VALUES ('2', '1035');
INSERT INTO `sys_role_menu` VALUES ('2', '1036');
INSERT INTO `sys_role_menu` VALUES ('2', '1037');
INSERT INTO `sys_role_menu` VALUES ('2', '1038');
INSERT INTO `sys_role_menu` VALUES ('2', '1039');
INSERT INTO `sys_role_menu` VALUES ('2', '1040');
INSERT INTO `sys_role_menu` VALUES ('2', '1041');
INSERT INTO `sys_role_menu` VALUES ('2', '1042');
INSERT INTO `sys_role_menu` VALUES ('2', '1043');
INSERT INTO `sys_role_menu` VALUES ('2', '1044');
INSERT INTO `sys_role_menu` VALUES ('2', '1045');
INSERT INTO `sys_role_menu` VALUES ('2', '1046');
INSERT INTO `sys_role_menu` VALUES ('2', '1047');
INSERT INTO `sys_role_menu` VALUES ('2', '1048');
INSERT INTO `sys_role_menu` VALUES ('2', '1049');
INSERT INTO `sys_role_menu` VALUES ('2', '1050');
INSERT INTO `sys_role_menu` VALUES ('2', '1051');
INSERT INTO `sys_role_menu` VALUES ('2', '1052');
INSERT INTO `sys_role_menu` VALUES ('2', '1053');
INSERT INTO `sys_role_menu` VALUES ('2', '1054');
INSERT INTO `sys_role_menu` VALUES ('2', '1055');
INSERT INTO `sys_role_menu` VALUES ('2', '1056');
INSERT INTO `sys_role_menu` VALUES ('2', '1057');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '192.168.1.103', '2019-08-21 16:07:55', 'admin', '2018-03-16 11:33:00', 'ry', '2019-08-21 16:07:55', '管理员');
INSERT INTO `sys_user` VALUES ('2', '105', 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '测试员');

-- ----------------------------
-- Table structure for `sys_user_online`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线用户记录';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('069d6cb3-de90-41b9-8bc7-53a39f1eb9c6', 'admin', '研发部门', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', 'on_line', '2019-08-21 13:32:20', '2019-08-21 16:31:26', '1800000');
INSERT INTO `sys_user_online` VALUES ('9859b934-39c0-4d3f-88ba-08b478611571', 'admin', '研发部门', '192.168.1.103', '内网IP', 'Chrome', 'Windows 7', 'on_line', '2019-08-21 16:07:48', '2019-08-21 16:07:55', '1800000');

-- ----------------------------
-- Table structure for `sys_user_post`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('2', '2');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
