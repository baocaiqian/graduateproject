/*
Navicat MySQL Data Transfer

Source Server         : soft
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : soft

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2020-05-04 13:36:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `browse`
-- ----------------------------
DROP TABLE IF EXISTS `browse`;
CREATE TABLE `browse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(255) NOT NULL,
  `looker` int(11) NOT NULL,
  `resource` int(11) NOT NULL,
  `last` double NOT NULL COMMENT '持续时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of browse
-- ----------------------------

-- ----------------------------
-- Table structure for `classsystem`
-- ----------------------------
DROP TABLE IF EXISTS `classsystem`;
CREATE TABLE `classsystem` (
  `systemId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `owner` int(11) NOT NULL,
  `systemdescribe` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`systemId`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of classsystem
-- ----------------------------
INSERT INTO `classsystem` VALUES ('1', 'Python', '1', 'Python是一种计算机程序设计语言。是一种面向对象的动态类型语言，最初被设计用于编写自动化脚本(shell)，随着版本的不断更新和语言新功能的添加，越来越多被用于独立的、大型项目的开发。');
INSERT INTO `classsystem` VALUES ('2', '小程序开发', '1', '小程序是一种新的开放能力，开发者可以快速地开发一个小程序。小程序可以在微信内被便捷地获取和传播，同时具有出色的使用体验。');
INSERT INTO `classsystem` VALUES ('3', 'Python', '2', 'Python是一种计算机程序设计语言。是一种面向对象的动态类型语言，最初被设计用于编写自动化脚本(shell)，随着版本的不断更新和语言新功能的添加，越来越多被用于独立的、大型项目的开发。');
INSERT INTO `classsystem` VALUES ('4', 'Python', '3', 'Python是一种计算机程序设计语言。是一种面向对象的动态类型语言，最初被设计用于编写自动化脚本(shell)，随着版本的不断更新和语言新功能的添加，越来越多被用于独立的、大型项目的开发。');
INSERT INTO `classsystem` VALUES ('5', 'Python', '4', 'Python是一种计算机程序设计语言。是一种面向对象的动态类型语言，最初被设计用于编写自动化脚本(shell)，随着版本的不断更新和语言新功能的添加，越来越多被用于独立的、大型项目的开发。');
INSERT INTO `classsystem` VALUES ('6', 'Python', '5', 'Python是一种计算机程序设计语言。是一种面向对象的动态类型语言，最初被设计用于编写自动化脚本(shell)，随着版本的不断更新和语言新功能的添加，越来越多被用于独立的、大型项目的开发。');
INSERT INTO `classsystem` VALUES ('7', 'Python', '6', 'Python是一种计算机程序设计语言。是一种面向对象的动态类型语言，最初被设计用于编写自动化脚本(shell)，随着版本的不断更新和语言新功能的添加，越来越多被用于独立的、大型项目的开发。');
INSERT INTO `classsystem` VALUES ('8', 'Python', '7', 'Python是一种计算机程序设计语言。是一种面向对象的动态类型语言，最初被设计用于编写自动化脚本(shell)，随着版本的不断更新和语言新功能的添加，越来越多被用于独立的、大型项目的开发。');
INSERT INTO `classsystem` VALUES ('9', 'Python', '10', 'Python是一种计算机程序设计语言。是一种面向对象的动态类型语言，最初被设计用于编写自动化脚本(shell)，随着版本的不断更新和语言新功能的添加，越来越多被用于独立的、大型项目的开发。');
INSERT INTO `classsystem` VALUES ('10', 'Python', '11', 'Python是一种计算机程序设计语言。是一种面向对象的动态类型语言，最初被设计用于编写自动化脚本(shell)，随着版本的不断更新和语言新功能的添加，越来越多被用于独立的、大型项目的开发。');
INSERT INTO `classsystem` VALUES ('11', 'Python', '12', 'Python是一种计算机程序设计语言。是一种面向对象的动态类型语言，最初被设计用于编写自动化脚本(shell)，随着版本的不断更新和语言新功能的添加，越来越多被用于独立的、大型项目的开发。');
INSERT INTO `classsystem` VALUES ('12', 'Python', '13', 'Python是一种计算机程序设计语言。是一种面向对象的动态类型语言，最初被设计用于编写自动化脚本(shell)，随着版本的不断更新和语言新功能的添加，越来越多被用于独立的、大型项目的开发。');
INSERT INTO `classsystem` VALUES ('13', 'Python', '14', 'Python是一种计算机程序设计语言。是一种面向对象的动态类型语言，最初被设计用于编写自动化脚本(shell)，随着版本的不断更新和语言新功能的添加，越来越多被用于独立的、大型项目的开发。');
INSERT INTO `classsystem` VALUES ('14', 'Python', '15', 'Python是一种计算机程序设计语言。是一种面向对象的动态类型语言，最初被设计用于编写自动化脚本(shell)，随着版本的不断更新和语言新功能的添加，越来越多被用于独立的、大型项目的开发。');
INSERT INTO `classsystem` VALUES ('15', 'python', '16', 'Python是一种计算机程序设计语言。是一种面向对象的动态类型语言，最初被设计用于编写自动化脚本(shell)，随着版本的不断更新和语言新功能的添加，越来越多被用于独立的、大型项目的开发。');
INSERT INTO `classsystem` VALUES ('16', '小程序开发', '16', '小程序是一种新的开放能力，开发者可以快速地开发一个小程序。小程序可以在微信内被便捷地获取和传播，同时具有出色的使用体验。');
INSERT INTO `classsystem` VALUES ('17', 'Java', '16', 'java具有功能强大和简单易用两个特征。Java语言作为静态面向对象编程语言的代表，极好地实现了面向对象理论，允许程序员以优雅的思维方式进行复杂的编程');
INSERT INTO `classsystem` VALUES ('18', 'R语言', '1', 'R是用于统计分析、绘图的语言和操作环境。R是属于GNU系统的一个自由、免费、源代码开放的软件，它是一个用于统计计算和统计制图的优秀工具。');
INSERT INTO `classsystem` VALUES ('19', 'Java', '2', 'java具有功能强大和简单易用两个特征。Java语言作为静态面向对象编程语言的代表，极好地实现了面向对象理论，允许程序员以优雅的思维方式进行复杂的编程');
INSERT INTO `classsystem` VALUES ('20', 'R语言', '2', 'R是用于统计分析、绘图的语言和操作环境。R是属于GNU系统的一个自由、免费、源代码开放的软件，它是一个用于统计计算和统计制图的优秀工具。');
INSERT INTO `classsystem` VALUES ('21', 'c语言', '3', 'C语言是一门面向过程的、抽象化的通用程序设计语言，广泛应用于底层开发。');
INSERT INTO `classsystem` VALUES ('22', 'C++', '3', 'C++是C语言的继承，它既可以进行C语言的过程化程序设计，又可以进行以抽象数据类型为特点的基于对象的程序设计，还可以进行以继承和多态为特点的面向对象的程序设计。');
INSERT INTO `classsystem` VALUES ('23', 'c#', '3', 'C#是微软公司发布的一种面向对象的、运行于.NET Framework和.NET Core(完全开源，跨平台)之上的高级程序设计语言。');
INSERT INTO `classsystem` VALUES ('24', '语言数学基础', '4', '编程语言中的一些数学计算与方法');
INSERT INTO `classsystem` VALUES ('25', 'R语言', '16', 'R是用于统计分析、绘图的语言和操作环境。R是属于GNU系统的一个自由、免费、源代码开放的软件，它是一个用于统计计算和统计制图的优秀工具。');
INSERT INTO `classsystem` VALUES ('26', 'Java', '13', 'java具有功能强大和简单易用两个特征。Java语言作为静态面向对象编程语言的代表，极好地实现了面向对象理论，允许程序员以优雅的思维方式进行复杂的编程');
INSERT INTO `classsystem` VALUES ('27', 'c语言', '0', 'C语言是一门面向过程的、抽象化的通用程序设计语言，广泛应用于底层开发。');
INSERT INTO `classsystem` VALUES ('28', 'Java', '0', 'java具有功能强大和简单易用两个特征。Java语言作为静态面向对象编程语言的代表，极好地实现了面向对象理论，允许程序员以优雅的思维方式进行复杂的编程');

-- ----------------------------
-- Table structure for `collect`
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource` int(11) NOT NULL,
  `collecter` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of collect
-- ----------------------------

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `courseid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `classes` varchar(255) CHARACTER SET utf8 NOT NULL,
  `system` int(11) NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8 NOT NULL,
  `term` varchar(255) CHARACTER SET utf8 NOT NULL,
  `teacher` int(11) NOT NULL,
  `tag` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`courseid`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'django快速开发网站', '2016级6班', '1', 'statics/base/images/classes.png', '2016年下学期', '1', 'django，python');
INSERT INTO `course` VALUES ('3', 'python接口自动化测试', '2016级6班', '3', 'statics/base/images/classes.png', '2016年下学期', '2', '接口');
INSERT INTO `course` VALUES ('4', 'python自动办公', '2016级6班', '4', 'statics/base/images/classes.png', '2016年下学期', '6', '自动化');
INSERT INTO `course` VALUES ('5', 'python自动办公', '2016级6班', '15', 'statics/base/images/classes.png', '2016年下学期', '16', '自动化');
INSERT INTO `course` VALUES ('6', 'python接口自动化测试', '2016级6班', '15', 'statics/base/images/classes.png', '2016年下学期', '16', '接口');
INSERT INTO `course` VALUES ('7', 'pythonGUI编程', '2017级6班', '15', 'statics/base/images/classes.png', '2018年下', '16', 'GUI编程');
INSERT INTO `course` VALUES ('8', 'scrapy爬虫', '2016级6班', '15', 'statics/base/images/classes.png', '2019年下', '16', 'scrapy爬虫');
INSERT INTO `course` VALUES ('10', '微信公众号开发', '2016级6班', '16', 'statics/base/images/classes.png', '2018年下', '16', '小程序,公众号');
INSERT INTO `course` VALUES ('11', '微信小程序开发基础', '2018级6班', '16', 'statics/base/images/classes.png', '2019年下', '16', '小程序');
INSERT INTO `course` VALUES ('12', 'wordpress小程序开发', '2017级7班', '16', 'statics/base/images/classes.png', '2018年上', '16', 'wordpress,小程序');
INSERT INTO `course` VALUES ('13', 'java基础', '2016级5，6班', '17', 'statics/base/images/classes.png', '2017年下', '16', 'Java,基础');
INSERT INTO `course` VALUES ('14', 'hibernate', '2016级大数据班', '17', 'statics/base/images/classes.png', '2017年下', '16', '数据库,hibernate,jdbc');
INSERT INTO `course` VALUES ('15', 'spring', '2016级大数据班', '17', 'statics/base/images/classes.png', '2017年下', '16', 'JavaWeb,spring');
INSERT INTO `course` VALUES ('16', 'Hadoop', '2016级大数据班', '17', 'statics/base/images/classes.png', '2018年下', '16', '大数据分析框架,分布式,mapreduce');
INSERT INTO `course` VALUES ('17', 'MySQL数据库与JDBC框架', '2016级大数据班', '17', 'statics/base/images/classes.png', '2017年下', '16', '数据库,JDBC');
INSERT INTO `course` VALUES ('18', 'python-人工智能学习路线图', '2016级大数据班', '1', 'statics/base/images/classes.png', '2018年下', '1', '人工智能,python');
INSERT INTO `course` VALUES ('19', 'python大数据', '2018级大数据班', '1', 'statics/base/images/classes.png', '2018年下', '1', '大数据,python');
INSERT INTO `course` VALUES ('20', 'python数据挖掘实战', '2017级大数据班', '1', 'statics/base/images/classes.png', '2017年下', '1', '数据挖掘,数据分析');
INSERT INTO `course` VALUES ('21', 'scrapy爬虫', '2016级大数据班', '1', 'statics/base/images/classes.png', '2018年下', '1', 'scrapy,爬虫');
INSERT INTO `course` VALUES ('22', '微信公众号开发', '2017级大数据班', '2', 'statics/base/images/classes.png', '2018年下', '1', '微信,公众号');
INSERT INTO `course` VALUES ('23', 'R语言文本挖掘', '2019级1班', '18', 'statics/base/images/classes.png', '2019年下', '1', '文本挖掘,R语言');
INSERT INTO `course` VALUES ('24', 'R语言推荐系统建模', '2019级1班', '18', 'statics/base/images/classes.png', '2019年下', '1', 'R语言,推荐系统');
INSERT INTO `course` VALUES ('25', 'ggplot2作图', '2017级4班', '18', 'statics/base/images/classes.png', '2017年下', '1', 'ggplot2,作图');
INSERT INTO `course` VALUES ('26', 'python数据挖掘实战', '2016级大数据班', '3', 'statics/base/images/classes.png', '2017年下', '2', '数据挖掘,数据分析,大数据');
INSERT INTO `course` VALUES ('27', 'python数据挖掘基础', '2016级大数据班', '3', 'statics/base/images/classes.png', '2018年下', '2', '数据挖掘,数据分析');
INSERT INTO `course` VALUES ('28', 'python推荐算法', '2016级大数据班', '3', 'statics/base/images/classes.png', '2017年下', '2', '推荐算法,数据挖掘,数据分析');
INSERT INTO `course` VALUES ('29', 'scrapy爬虫', '2016级大数据班', '3', 'statics/base/images/classes.png', '2017年下', '2', '爬虫,scrapy,数据分析,数据挖掘');
INSERT INTO `course` VALUES ('30', 'springCloud分布式架构', '2016级大数据班', '19', 'statics/base/images/classes.png', '2017年下', '2', '分布式,微服务');
INSERT INTO `course` VALUES ('31', 'MySQL数据库与JDBC框架', '2016级大数据班', '19', 'statics/base/images/classes.png', '2018年下', '2', '数据库,JDBC,数据分析');
INSERT INTO `course` VALUES ('32', 'Hadoop框架', '2016级大数据班', '19', 'statics/base/images/classes.png', '2017年下', '2', '大数据,数据分析,分布式存储,数据挖掘');
INSERT INTO `course` VALUES ('33', 'spark', '2019级2班', '19', 'statics/base/images/classes.png', '2019年下', '2', 'spark,数据挖掘,大数据计算,数据分析');
INSERT INTO `course` VALUES ('34', 'mybatis', '2016级大数据班', '19', 'statics/base/images/classes.png', '2018年下', '2', '数据库框架');
INSERT INTO `course` VALUES ('35', '数据分析报告的制作', '2016级1班', '20', 'statics/base/images/classes.png', '2018年上', '2', '数据分析,数据报告,画图');
INSERT INTO `course` VALUES ('36', 'python语言基础', '2019级1，2班', '4', 'statics/base/images/classes.png', '2019年下', '3', '语言基础,python，编程语言');
INSERT INTO `course` VALUES ('37', 'python进阶', '2018级1班', '4', 'statics/base/images/classes.png', '2019年上', '3', 'python进阶,程序设计高级篇，编程语言');
INSERT INTO `course` VALUES ('38', 'python面向对象与模块化', '2016级大数据班', '4', 'statics/base/images/classes.png', '2018年下', '3', '面向对象,编程语言');
INSERT INTO `course` VALUES ('39', '程序设计基础(c语言)', '2016级1班', '21', 'statics/base/images/classes.png', '2016年下', '3', '编程语言,程序设计,0基础');
INSERT INTO `course` VALUES ('40', 'C语言进阶', '2016级1班', '21', 'statics/base/images/classes.png', '2017年上', '3', '编程语言,程序设计进阶');
INSERT INTO `course` VALUES ('41', '面向对象编程语言', '2016级1班', '22', 'statics/base/images/classes.png', '2017年下', '3', '面向对象,编程语言,程序设计');
INSERT INTO `course` VALUES ('42', 'c#程序设计', '2016级1班', '23', 'statics/base/images/classes.png', '2018年上', '3', '编程语言,程序设计');
INSERT INTO `course` VALUES ('43', 'python基础', '2017级6班', '5', 'statics/base/images/classes.png', '2018年下', '4', 'python,编程语言');

-- ----------------------------
-- Table structure for `down`
-- ----------------------------
DROP TABLE IF EXISTS `down`;
CREATE TABLE `down` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL,
  `resource` int(11) NOT NULL,
  `downuser` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of down
-- ----------------------------

-- ----------------------------
-- Table structure for `group`
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8 NOT NULL,
  `owner` int(11) NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of group
-- ----------------------------

-- ----------------------------
-- Table structure for `groupfile`
-- ----------------------------
DROP TABLE IF EXISTS `groupfile`;
CREATE TABLE `groupfile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource` int(11) NOT NULL,
  `uptime` varchar(255) CHARACTER SET utf8 NOT NULL,
  `downtimes` int(11) NOT NULL,
  `uploader` int(11) NOT NULL,
  `group` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of groupfile
-- ----------------------------

-- ----------------------------
-- Table structure for `groupmember`
-- ----------------------------
DROP TABLE IF EXISTS `groupmember`;
CREATE TABLE `groupmember` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member` int(11) NOT NULL,
  `group` int(11) NOT NULL,
  `mail` varchar(255) CHARACTER SET utf8 NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL,
  `role` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of groupmember
-- ----------------------------

-- ----------------------------
-- Table structure for `resources`
-- ----------------------------
DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `course` int(11) NOT NULL,
  `classsystem` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8 NOT NULL,
  `owner` int(11) NOT NULL,
  `authority` int(11) NOT NULL,
  `size` double(200,2) NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL,
  `downtimes` int(11) NOT NULL,
  `looktimes` int(11) NOT NULL,
  `postfix` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of resources
-- ----------------------------
INSERT INTO `resources` VALUES ('2', 'PPT', 'Hibernate框架.pptx', '14', '17', 'E://upload//16//Java//hibernate//Hibernate框架.pptx', '16', '0', '464117.00', '2020-05-03 20:41:02', '14', '13', 'pptx');
INSERT INTO `resources` VALUES ('3', 'PPT', 'ch08_Hibernate高级配置.pptx', '14', '17', 'E://upload//16//Java//hibernate//ch08_Hibernate高级配置.pptx', '16', '0', '201292.00', '2020-05-03 20:44:12', '10', '11', 'pptx');
INSERT INTO `resources` VALUES ('4', 'PPT', 'ch07-Hibernate检索.pptx', '14', '17', 'E://upload//16//Java//hibernate//ch07-Hibernate检索.pptx', '16', '0', '259359.00', '2020-05-03 20:45:10', '13', '12', 'pptx');

-- ----------------------------
-- Table structure for `search`
-- ----------------------------
DROP TABLE IF EXISTS `search`;
CREATE TABLE `search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `searcher` int(11) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `course` varchar(255) CHARACTER SET utf8 NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of search
-- ----------------------------
INSERT INTO `search` VALUES ('1', '16', '', 'hibernate', 'PPT', '20200503');
INSERT INTO `search` VALUES ('2', '16', '检索', 'hibernate', 'PPT', '20200503');
INSERT INTO `search` VALUES ('3', '16', '一对一映射', 'hibernate', 'PPT', '20200503');
INSERT INTO `search` VALUES ('4', '16', '一对一映射', 'hibernate', 'PPT', '20200504');
INSERT INTO `search` VALUES ('5', '16', 'hibernate', 'hibernate', 'PPT', '20200504');
INSERT INTO `search` VALUES ('6', '16', '映射', 'hibernate', 'PPT', '20200504');
INSERT INTO `search` VALUES ('7', '16', '多对多', 'hibernate', 'PPT', '20200504');
INSERT INTO `search` VALUES ('8', '16', 'hibernate', 'hibernate', 'PPT', '20200504');
INSERT INTO `search` VALUES ('9', '16', 'hibernate', 'hibernate', 'PPT', '20200504');
INSERT INTO `search` VALUES ('10', '16', '检索', 'java基础', 'PPT', '20200504');
INSERT INTO `search` VALUES ('11', null, 'HBASE', 'Hadoop', '课程软件', '20200504');
INSERT INTO `search` VALUES ('12', null, 'python', 'python自动办公', 'word文档', '20200504');
INSERT INTO `search` VALUES ('13', null, '一对一映射', 'python自动办公', '图片', '20200504');

-- ----------------------------
-- Table structure for `upload`
-- ----------------------------
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL,
  `owner` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of upload
-- ----------------------------
INSERT INTO `upload` VALUES ('1', '2020年3月20日', '16', 'Java/hibernate/ppt/Hibernate单实体映射.pptx');
INSERT INTO `upload` VALUES ('2', '2020年3月20日', '16', 'Java/hibernate/ppt/hibernate,一对一关联映射.pptx');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `school` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `major` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `presondescribe` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `mainmajor` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '黄勇', 'E10ADC3949BA59ABBE56E057F20F883E', 'statics/base/images/micon.png', '15529935999@163.com', '河北师范大学', '计算机科学与技术', null, null);
INSERT INTO `users` VALUES ('2', '无涯', 'E10ADC3949BA59ABBE56E057F20F883E', 'statics/base/images/micon.png', '15529935989@163.com', '河北师范大学', '计算机科学与技术', null, null);
INSERT INTO `users` VALUES ('3', '陈廷聿', 'E10ADC3949BA59ABBE56E057F20F883E', 'statics/base/images/micon.png', '15539935989@163.com', '河北师范大学', '计算机科学与技术', null, null);
INSERT INTO `users` VALUES ('4', '麻瓜编程', 'E10ADC3949BA59ABBE56E057F20F883E', 'statics/base/images/micon.png', '13539935989@163.com', '河北师范大学', '计算机科学与技术', null, null);
INSERT INTO `users` VALUES ('5', '侯爵', 'E10ADC3949BA59ABBE56E057F20F883E', 'statics/base/images/micon.png', '13539935589@163.com', '河北师范大学', '计算机科学与技术', null, null);
INSERT INTO `users` VALUES ('6', '小蚊子', 'E10ADC3949BA59ABBE56E057F20F883E', 'statics/base/images/micon.png', '13539935589@163.com', '河北师范大学', '计算机科学与技术', null, null);
INSERT INTO `users` VALUES ('7', '王顺子', 'E10ADC3949BA59ABBE56E057F20F883E', 'statics/base/images/micon.png', '15529945999@163.com', '河北师范大学', '计算机科学与技术', null, null);
INSERT INTO `users` VALUES ('10', '小布', 'E10ADC3949BA59ABBE56E057F20F883E', 'statics/base/images/micon.png', '15529945939@163.com', '河北师范大学', '计算机科学与技术', null, null);
INSERT INTO `users` VALUES ('11', '助教海', 'E10ADC3949BA59ABBE56E057F20F883E', 'statics/base/images/micon.png', '15529935939@163.com', '河北师范大学', '计算机科学与技术', null, null);
INSERT INTO `users` VALUES ('12', '黑板课', 'E10ADC3949BA59ABBE56E057F20F883E', 'statics/base/images/micon.png', '15729945939@163.com', '河北师范大学', '计算机科学与技术', null, null);
INSERT INTO `users` VALUES ('13', '唐宇帝', 'E10ADC3949BA59ABBE56E057F20F883E', 'statics/base/images/micon.png', '15729645939@163.com', '河北师范大学', '计算机科学与技术', null, null);
INSERT INTO `users` VALUES ('14', '车万翔', 'E10ADC3949BA59ABBE56E057F20F883E', 'statics/base/images/micon.png', '15723645939@163.com', '河北师范大学', '计算机科学与技术', null, null);
INSERT INTO `users` VALUES ('15', '乐上轻至', 'E10ADC3949BA59ABBE56E057F20F883E', 'statics/base/images/micon.png', '16723645939@163.com', '河北师范大学', '计算机科学与技术', null, null);
INSERT INTO `users` VALUES ('16', '鲍彩倩', 'E10ADC3949BA59ABBE56E057F20F883E', 'statics/base/images/micon.png', '15226535887@163.com', '河北师范大学', '计算机科学与技术', null, null);
INSERT INTO `users` VALUES ('17', 'BCQ', 'E10ADC3949BA59ABBE56E057F20F883E', 'statics/base/images/micon.png', '15267878956@163.com', '河北师范大学', '计算机科学与技术', null, null);
INSERT INTO `users` VALUES ('18', '独孤慕雪', 'E10ADC3949BA59ABBE56E057F20F883E', 'statics/base/images/micon.png', '1523338923@163.com', '河北师范大学', '计算机科学与技术', null, null);
INSERT INTO `users` VALUES ('19', '张新成', 'E10ADC3949BA59ABBE56E057F20F883E', 'statics/base/images/micon.png', '48912389@163.com', '河北师范大学', '计算机科学与技术', null, null);
INSERT INTO `users` VALUES ('20', '张耀', 'E10ADC3949BA59ABBE56E057F20F883E', 'statics/base/images/micon.png', 'dwasiufds@163.com', '河北师范大学', '计算机科学与技术', null, null);
INSERT INTO `users` VALUES ('21', '胡一天', 'E10ADC3949BA59ABBE56E057F20F883E', 'statics/base/images/micon.png', 'dskaj@163.com', '河北师范大学', '计算机科学与技术', null, null);
INSERT INTO `users` VALUES ('22', '胡一天', 'E10ADC3949BA59ABBE56E057F20F883E', 'statics/base/images/micon.png', 'dskaj@163.com', '河北师范大学', '计算机科学与技术', null, null);
INSERT INTO `users` VALUES ('23', '张云龙', 'E10ADC3949BA59ABBE56E057F20F883E', 'statics/base/images/micon.png', 'fs@163.com', '河北师范大学', '计算机科学与技术', null, null);
INSERT INTO `users` VALUES ('24', '许放', 'E10ADC3949BA59ABBE56E057F20F883E', 'statics/base/images/micon.png', 'xufang@163.com', '河北师范大学', '计算机科学与技术', null, null);
INSERT INTO `users` VALUES ('25', '黎语冰', 'E10ADC3949BA59ABBE56E057F20F883E', 'statics/base/images/micon.png', 'liyubing@163.com', '河北师范大学', '计算机科学与技术', null, null);
INSERT INTO `users` VALUES ('26', '黎语冰', 'E10ADC3949BA59ABBE56E057F20F883E', 'statics/base/images/micon.png', 'liyubing@163.com', '河北师范大学', '计算机科学与技术', null, null);
INSERT INTO `users` VALUES ('27', 'tangxue', 'E10ADC3949BA59ABBE56E057F20F883E', 'statics/base/images/micon.png', 'tangxue@130.com', '河北师范大学', '计算机科学与技术', null, null);
INSERT INTO `users` VALUES ('28', 'c语言', 'E10ADC3949BA59ABBE56E057F20F883E', 'statics/base/images/micon.png', 'das@163.com', '河北师范大学', '计算机科学与技术', null, null);
INSERT INTO `users` VALUES ('29', '侯明辉', 'E10ADC3949BA59ABBE56E057F20F883E', 'statics/base/images/micon.png', 'dhwis@163.com', '河北师范大学', '计算机科学与技术', null, null);
INSERT INTO `users` VALUES ('30', 'sjdh', 'E10ADC3949BA59ABBE56E057F20F883E', 'statics/base/images/micon.png', 'cz@163.com', '河北师范大学', '计算机科学与技术', null, null);
INSERT INTO `users` VALUES ('31', 'sjdh', 'E10ADC3949BA59ABBE56E057F20F883E', 'statics/base/images/micon.png', 'cz@163.com', '河北师范大学', '计算机科学与技术', null, null);
