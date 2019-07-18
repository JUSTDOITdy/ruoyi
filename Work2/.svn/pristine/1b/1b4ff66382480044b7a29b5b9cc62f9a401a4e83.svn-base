/*
Navicat MySQL Data Transfer

Source Server         : ruoyi
Source Server Version : 50555
Source Host           : localhost:3306
Source Database       : ry

Target Server Type    : MYSQL
Target Server Version : 50555
File Encoding         : 65001

Date: 2019-07-05 10:42:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `app_client`
-- ----------------------------
DROP TABLE IF EXISTS `app_client`;
CREATE TABLE `app_client` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客户表id',
  `type` char(2) DEFAULT NULL COMMENT '客户类型【1：公司 2：个人】',
  `company_name` varchar(50) DEFAULT NULL COMMENT '公司名称 / 姓名',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `province` varchar(20) DEFAULT NULL COMMENT '省份',
  `city` varchar(20) DEFAULT NULL COMMENT '城市',
  `region` varchar(20) DEFAULT NULL COMMENT '市区',
  `site` varchar(100) DEFAULT NULL COMMENT '单位地址',
  `client_kind` varchar(20) DEFAULT NULL COMMENT '客户种类',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机',
  `word_phone` varchar(20) DEFAULT NULL COMMENT '工作电话',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `code` varchar(20) DEFAULT NULL COMMENT '编号',
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='客户表';

-- ----------------------------
-- Records of app_client
-- ----------------------------
INSERT INTO `app_client` VALUES ('1', '个人', '若台北', '萨维', '辽宁省', '沈阳市', '和平区', '小微村', '业务合作商', '1562444444444', null, null, 'MQ32');

-- ----------------------------
-- Table structure for `app_detailed`
-- ----------------------------
DROP TABLE IF EXISTS `app_detailed`;
CREATE TABLE `app_detailed` (
  `detailed_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '清单表id',
  `indent_id` int(11) DEFAULT NULL COMMENT '关联订单表',
  `product_id` int(11) DEFAULT NULL COMMENT '关联产品表',
  `amount` int(5) DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`detailed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='清单表';

-- ----------------------------
-- Records of app_detailed
-- ----------------------------

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
  `product_id` int(11) DEFAULT NULL COMMENT '关联产品表',
  `code` varchar(50) DEFAULT NULL COMMENT '订单编号',
  `client_id` int(11) DEFAULT NULL COMMENT '关联客户表',
  `purchase_date` date DEFAULT NULL COMMENT '订购日期',
  `order_amount` int(10) DEFAULT NULL COMMENT '订单金额',
  `materials` char(2) DEFAULT NULL COMMENT '材料【0：无材料 1：有材料】',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `order_status` varchar(50) DEFAULT NULL COMMENT '订单状态',
  `delivery_time` date DEFAULT NULL COMMENT '发货时间',
  `tracking_number` varchar(50) DEFAULT NULL COMMENT '快递单号',
  `service_condition` varchar(200) DEFAULT NULL COMMENT '服务情况',
  `creator` varchar(50) DEFAULT NULL COMMENT '创建人',
  `creation_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`indent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of app_indent
-- ----------------------------

-- ----------------------------
-- Table structure for `app_linkman`
-- ----------------------------
DROP TABLE IF EXISTS `app_linkman`;
CREATE TABLE `app_linkman` (
  `linkman_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '联系人id',
  `client_id` int(11) DEFAULT NULL COMMENT '关联客户id',
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='联系人表';

-- ----------------------------
-- Records of app_linkman
-- ----------------------------
INSERT INTO `app_linkman` VALUES ('1', '1', '小天', '男', '工作证', '1312025458885', null, '是', '部长', '12563548888', 'ssd2255', '254148', null, null, null, null, null, null, null, null, null, '2019-07-23');
INSERT INTO `app_linkman` VALUES ('2', '1', null, '男', '工作证', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2019-07-05', null);
INSERT INTO `app_linkman` VALUES ('3', '1', null, '男', '工作证', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2019-07-05', null);

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
  `type` varchar(20) DEFAULT NULL COMMENT '类别',
  `name` varchar(20) DEFAULT NULL COMMENT '产品名称',
  `sales_price` varchar(20) DEFAULT NULL COMMENT '销售价',
  `purchase_price` varchar(20) DEFAULT NULL COMMENT '采购价',
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='产品表';

-- ----------------------------
-- Records of app_product
-- ----------------------------
INSERT INTO `app_product` VALUES ('1', '软著', '11-15工作日', '11', '1', '30', 'ss', 'ss', 'ss', 'ss', 'name:123,sex:nan', '0', null, '1', '1');

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
