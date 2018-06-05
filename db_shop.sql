/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50096
Source Host           : localhost:3306
Source Database       : db_shop

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2018-05-19 22:41:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `ID` int(4) NOT NULL auto_increment,
  `AdminType` int(4) default NULL,
  `AdminName` char(12) default NULL,
  `LoginName` char(12) default NULL,
  `LoginPwd` char(12) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '1', '商品管理员', 'Admin1', 'Admin1');
INSERT INTO `admin` VALUES ('2', '2', '订单管理员', 'Admin2', 'Admin2');
INSERT INTO `admin` VALUES ('3', '3', '会员管理员', 'Admin3', 'Admin3');
INSERT INTO `admin` VALUES ('4', '4', '系统管理员', 'Admin4', 'Admin4');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `ID` int(4) NOT NULL auto_increment,
  `Member` int(4) NOT NULL,
  `Money` decimal(9,2) default NULL,
  `CartStatus` int(4) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('2', '8', '318.50', '1');
INSERT INTO `cart` VALUES ('3', '3', '353.35', '1');
INSERT INTO `cart` VALUES ('4', '3', '120.00', '0');
INSERT INTO `cart` VALUES ('5', '1', '160.00', '1');
INSERT INTO `cart` VALUES ('6', '2', '45.00', '1');
INSERT INTO `cart` VALUES ('7', '1', '56.00', '0');

-- ----------------------------
-- Table structure for cartselectedmer
-- ----------------------------
DROP TABLE IF EXISTS `cartselectedmer`;
CREATE TABLE `cartselectedmer` (
  `ID` int(4) NOT NULL auto_increment,
  `Cart` int(4) NOT NULL,
  `Merchandise` int(4) NOT NULL,
  `Number` int(4) NOT NULL default '1',
  `Price` decimal(8,2) NOT NULL default '0.00',
  `Money` decimal(9,2) NOT NULL default '0.00',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of cartselectedmer
-- ----------------------------
INSERT INTO `cartselectedmer` VALUES ('3', '2', '12', '3', '45.00', '135.00');
INSERT INTO `cartselectedmer` VALUES ('5', '2', '8', '2', '33.00', '66.00');
INSERT INTO `cartselectedmer` VALUES ('6', '2', '5', '1', '42.50', '42.50');
INSERT INTO `cartselectedmer` VALUES ('7', '2', '7', '1', '54.00', '54.00');
INSERT INTO `cartselectedmer` VALUES ('8', '3', '11', '1', '45.00', '45.00');
INSERT INTO `cartselectedmer` VALUES ('9', '3', '4', '2', '41.80', '83.60');
INSERT INTO `cartselectedmer` VALUES ('10', '3', '10', '3', '71.25', '213.75');
INSERT INTO `cartselectedmer` VALUES ('14', '4', '1', '1', '34.00', '34.00');
INSERT INTO `cartselectedmer` VALUES ('16', '4', '3', '2', '43.00', '86.00');
INSERT INTO `cartselectedmer` VALUES ('17', '5', '15', '1', '50.00', '50.00');
INSERT INTO `cartselectedmer` VALUES ('18', '5', '2', '2', '52.00', '104.00');
INSERT INTO `cartselectedmer` VALUES ('19', '6', '1', '1', '34.00', '34.00');
INSERT INTO `cartselectedmer` VALUES ('20', '7', '15', '1', '50.00', '50.00');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `ID` int(4) NOT NULL auto_increment,
  `CateName` char(40) default NULL,
  `CateDesc` text,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '内科类', '头痛流涕鼻塞咳嗽感冒肚子痛');
INSERT INTO `category` VALUES ('2', '滋补类', '男女滋阴补阳');
INSERT INTO `category` VALUES ('3', '外科类', '跌打扭伤镇痛消肿');
INSERT INTO `category` VALUES ('4', '妇科类', '妇科炎症');

-- ----------------------------
-- Table structure for leaveword
-- ----------------------------
DROP TABLE IF EXISTS `leaveword`;
CREATE TABLE `leaveword` (
  `ID` int(4) NOT NULL auto_increment,
  `Member` int(4) NOT NULL,
  `Admin` int(4) default NULL,
  `Title` char(60) default NULL,
  `Content` text,
  `LeaveDate` datetime default NULL,
  `AnswerContent` text,
  `AnswerDate` datetime default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of leaveword
-- ----------------------------
INSERT INTO `leaveword` VALUES ('1', '2', null, '非常感谢', '非常感谢，很方便！', '2018-05-16 21:14:44', null, null);
INSERT INTO `leaveword` VALUES ('2', '2', null, '不错', '不错的电子商务网站！', '2018-05-16 21:14:44', null, null);
INSERT INTO `leaveword` VALUES ('3', '3', null, '支持', '支持电子商务！', '2018-05-16 21:14:44', null, null);

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `ID` int(4) NOT NULL auto_increment,
  `Memberlevel` int(4) NOT NULL,
  `LoginName` char(12) default NULL,
  `LoginPwd` char(12) default NULL,
  `MemberName` char(20) default NULL,
  `Phone` char(15) default NULL,
  `Address` varchar(100) default NULL,
  `Zip` char(10) default NULL,
  `RegDate` datetime default NULL,
  `LastDate` datetime default NULL,
  `LoginTimes` int(4) default NULL,
  `EMail` varchar(100) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('1', '4', 'liuqiao', 'liuqiao', '刘桥', '13971559323', '湖北省武汉市洪山区', '432200', '2009-04-20 18:40:30', '2009-04-23 17:40:08', '7', 'liuqiao1982@sina.com');
INSERT INTO `member` VALUES ('2', '1', 'jinwu', 'jinwu', '金武', '13456754323', '广东省深圳市', '435567', '2009-04-20 21:05:58', '2009-04-21 15:33:41', '2', 'jinwu@sina.com');
INSERT INTO `member` VALUES ('3', '1', 'hujie', 'hujie', '胡杰', '13456789067', '武汉市洪山区鲁磨路', '432254', '2009-04-20 21:17:08', '2009-04-21 15:32:36', '3', 'hujie@sohu.com');
INSERT INTO `member` VALUES ('8', '3', 'chenlin', 'chenlin', '陈林', '13456756789', '湖北省武汉市新洲区', '432543', '2009-04-20 22:44:30', '2009-04-21 15:33:08', '2', 'chenlin@sohu.com');
INSERT INTO `member` VALUES ('9', '1', 'ggg', 'ggg', '该干', '66771111111', 'ggg', 'ggg', '2009-04-24 15:44:50', '2009-04-24 15:44:50', '0', 'gg@ff.cn');
INSERT INTO `member` VALUES ('10', '1', 'ggg1', '111', '该干', '66771111111', 'ggg', 'ggg', '2009-04-24 16:11:16', '2009-04-24 16:11:16', '0', 'gg@ff.cn');

-- ----------------------------
-- Table structure for memberlevel
-- ----------------------------
DROP TABLE IF EXISTS `memberlevel`;
CREATE TABLE `memberlevel` (
  `ID` int(4) NOT NULL auto_increment,
  `LevelName` char(20) default NULL,
  `Favourable` int(4) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of memberlevel
-- ----------------------------
INSERT INTO `memberlevel` VALUES ('1', '普通会员', '95');
INSERT INTO `memberlevel` VALUES ('2', '黄金会员', '90');
INSERT INTO `memberlevel` VALUES ('3', '白金会员', '85');
INSERT INTO `memberlevel` VALUES ('4', '钻石会员', '80');

-- ----------------------------
-- Table structure for merchandise
-- ----------------------------
DROP TABLE IF EXISTS `merchandise`;
CREATE TABLE `merchandise` (
  `ID` int(4) NOT NULL auto_increment,
  `Category` int(4) NOT NULL,
  `MerName` char(40) default NULL,
  `Price` decimal(8,2) default NULL,
  `SPrice` decimal(8,2) default NULL,
  `MerModel` char(40) default NULL,
  `Picture` varchar(100) default NULL,
  `MerDesc` text,
  `Manufacturer` char(60) default NULL,
  `LeaveFactoryDate` datetime default NULL,
  `Special` int(4) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of merchandise
-- ----------------------------
INSERT INTO `merchandise` VALUES ('1', '1', '三九999感冒灵颗粒', '14.00', '14.00', 'c1', '/Picture/9211839-1_b.jpg', '头痛流涕鼻塞咳嗽感冒', '华润三九医药股份有限公司', '2018-04-25 00:00:00', '1');
INSERT INTO `merchandise` VALUES ('2', '1', '999三九胃泰', '19.00', '11.00', 'c2', '/Picture/9161326-1_b.jpg', '胃病胃痛药胃炎 腹胀恶心反酸', '三九医药股份公司', '2018-04-25 00:00:00', '0');
INSERT INTO `merchandise` VALUES ('3', '1', '江中健胃消食片', '39.00', '26.00', 'c3', '/Picture/9211849-1_b.jpg', '厌食症消化不良脾胃虚肚子胀不消化', '江中药业股份有限公司', '2018-04-25 00:00:00', '1');
INSERT INTO `merchandise` VALUES ('4', '1', '三精双黄连口服液', '18.00', '16.00', 'c3', '/Picture/9221944-1_b.jpg', '清热解毒感冒发热咳嗽咽痛', '哈药集图三精制药股份有限公司', '2018-04-25 00:00:00', '0');
INSERT INTO `merchandise` VALUES ('5', '3', '云南白药喷雾剂气雾剂', '50.00', '48.00', 'c5', '/Picture/9232841-1_b.jpg', '跌打扭伤镇痛消肿', '云南白药集团股份有限公司', '2018-04-25 00:00:00', '0');
INSERT INTO `merchandise` VALUES ('6', '3', '扶他林双氯芬酸二乙胺乳胶剂', '27.00', '14.00', 'e1', '/Picture/20511678-1_b.jpg', '关节炎肌肉关节疼痛扭伤', '北京诺华制药有限公司', '2018-04-25 00:00:00', '0');
INSERT INTO `merchandise` VALUES ('7', '1', '六味地黄丸', '65.00', '57.00', 'e2', '/Picture/20525298-1_b.jpg', '治肾虚遗精男女滋阴补肾', '北京同仁堂科技发展股份有限公司', '2018-04-25 00:00:00', '1');
INSERT INTO `merchandise` VALUES ('8', '2', '珍视明四味珍层冰硼滴眼液', '28.00', '22.00', 'n1', '/Picture/20516672-1_b.jpg', '视力眼疲劳眼药水红血丝', '江西珍视明药业有限公司', '2018-04-25 00:00:00', '1');
INSERT INTO `merchandise` VALUES ('9', '2', '盘龙云海排毒养颜胶囊', '125.00', '109.00', 'n2', '/Picture/20373098-1_b.jpg', '去痘祛斑通便润肠', '云南盘龙云海药业有限公司', '2018-04-25 00:00:00', '0');
INSERT INTO `merchandise` VALUES ('10', '3', '肛泰肚脐贴', '38.00', '35.00', 'm4', '/Picture/20522936-1_b.jpg', '痔疮膏药痔疮内外痔便血', '烟台荣昌制药股份有限公司', '2018-04-25 00:00:00', '0');
INSERT INTO `merchandise` VALUES ('11', '1', '牛黄解毒片', '29.00', '29.00', 'm9', '/Picture/9304959-1_b.jpg', '舌疮咽痛上火便秘牙痛清热', '北京同仁堂科技发展股份有限公司', '2018-04-25 00:00:00', '1');
INSERT INTO `merchandise` VALUES ('12', '1', '小儿七星茶颗粒', '45.00', '42.00', 'n6', '/Picture/20525341-1_b.jpg', '小儿便秘消化不良大便不畅', '广州王老吉药业股份有限公司', '2018-04-25 00:00:00', '1');
INSERT INTO `merchandise` VALUES ('13', '4', '妇科千金片', '69.00', '65.00', 'n5', '/Picture/9255064-1_b.jpg', '慢性盆腔炎妇科炎症瘙痒异味白带异常', '株洲千金药业股份有限公司', '2018-04-25 00:00:00', '0');
INSERT INTO `merchandise` VALUES ('14', '1', '开瑞坦氯雷他定片', '45.00', '36.00', 'm5', '/Picture/9250656-1_b.jpg', '过敏性鼻炎鼻塞流涕 荨麻疹皮肤过敏', '拜耳医药（上海）有限公司', '2018-04-25 00:00:00', '0');
INSERT INTO `merchandise` VALUES ('15', '2', '三精牌葡萄糖酸钙口服溶液', '39.00', '29.00', 'm8', '/Picture/8768781-1_b.jpg', '老人儿童 补钙', '哈药集团', '2018-04-25 00:00:00', '1');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `ID` int(4) NOT NULL auto_increment,
  `Member` int(4) NOT NULL,
  `Cart` int(4) NOT NULL,
  `OrderNO` char(20) default NULL,
  `OrderDate` datetime default NULL,
  `OrderStatus` int(4) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('2', '8', '2', '1240296879656', '2018-05-02 14:54:39', '1');
INSERT INTO `orders` VALUES ('3', '3', '3', '1240297000546', '2018-05-02 14:54:39', '2');
INSERT INTO `orders` VALUES ('4', '1', '5', '1240299012625', '2018-05-02 14:54:39', '3');
INSERT INTO `orders` VALUES ('5', '2', '6', '1240299319328', '2018-05-02 14:54:39', '1');
