/*
Navicat MySQL Data Transfer

Source Server         : soft
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : soft

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2020-03-17 23:15:21
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

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
  PRIMARY KEY (`courseid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'django快速开发网站', '2016级6班', '1', 'statics/base/images/classes.png', '2016年下学期', '1');
INSERT INTO `course` VALUES ('3', 'python接口自动化测试', '2016级6班', '3', 'statics/base/images/classes.png', '2016年下学期', '2');
INSERT INTO `course` VALUES ('4', 'python自动办公', '2016级6班', '4', 'statics/base/images/classes.png', '2016年下学期', '6');
INSERT INTO `course` VALUES ('5', 'python自动办公', '2016级6班', '15', 'statics/base/images/classes.png', '2016年下学期', '16');
INSERT INTO `course` VALUES ('6', 'python接口自动化测试', '2016级6班', '15', 'statics/base/images/classes.png', '2016年下学期', '16');
INSERT INTO `course` VALUES ('7', 'pythonGUI编程', '2017级6班', '15', 'statics/base/images/classes.png', '2018年下', '16');

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
-- Table structure for `resource`
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `course` int(11) NOT NULL,
  `classsystem` int(11) NOT NULL,
  `tag` varchar(255) CHARACTER SET utf8 NOT NULL,
  `owner` int(11) NOT NULL,
  `authority` int(11) NOT NULL,
  `size` varchar(255) CHARACTER SET utf8 NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL,
  `downtimes` int(11) NOT NULL,
  `looktimes` int(11) NOT NULL,
  `postfix` varchar(255) CHARACTER SET utf8 NOT NULL,
  `loadlog` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of resource
-- ----------------------------

-- ----------------------------
-- Table structure for `search`
-- ----------------------------
DROP TABLE IF EXISTS `search`;
CREATE TABLE `search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `searcher` int(11) NOT NULL,
  `arbitrary` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `course` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of search
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of upload
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `school` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `major` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `describe` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `mainmajor` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '黄勇', '123456', 'statics/base/images/micon.png', '15529935999@163.com', null, null, null, null);
INSERT INTO `users` VALUES ('2', '无涯', '123456', 'statics/base/images/micon.png', '15529935989@163.com', null, null, null, null);
INSERT INTO `users` VALUES ('3', '陈廷聿', '123456', 'statics/base/images/micon.png', '15539935989@163.com', null, null, null, null);
INSERT INTO `users` VALUES ('4', '麻瓜编程', '123456', 'statics/base/images/micon.png', '13539935989@163.com', null, null, null, null);
INSERT INTO `users` VALUES ('5', '侯爵', '123456', 'statics/base/images/micon.png', '13539935589@163.com', null, null, null, null);
INSERT INTO `users` VALUES ('6', '小蚊子', '123456', 'statics/base/images/micon.png', '13539935589@163.com', null, null, null, null);
INSERT INTO `users` VALUES ('7', '王顺子', '123456', 'statics/base/images/micon.png', '15529945999@163.com', null, null, null, null);
INSERT INTO `users` VALUES ('10', '小布', '123456', 'statics/base/images/micon.png', '15529945939@163.com', null, null, null, null);
INSERT INTO `users` VALUES ('11', '助教海', '123456', 'statics/base/images/micon.png', '15529935939@163.com', null, null, null, null);
INSERT INTO `users` VALUES ('12', '黑板课', '123456', 'statics/base/images/micon.png', '15729945939@163.com', null, null, null, null);
INSERT INTO `users` VALUES ('13', '唐宇帝', '123456', 'statics/base/images/micon.png', '15729645939@163.com', null, null, null, null);
INSERT INTO `users` VALUES ('14', '车万翔', '123456', 'statics/base/images/micon.png', '15723645939@163.com', null, null, null, null);
INSERT INTO `users` VALUES ('15', '乐上轻至', '123456', 'statics/base/images/micon.png', '16723645939@163.com', null, null, null, null);
INSERT INTO `users` VALUES ('16', '鲍彩倩', '123456', 'statics/base/images/micon.png', '15226535887@163.com', null, null, null, null);
