/*
Navicat MySQL Data Transfer

Source Server         : soft
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : soft

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2020-03-02 16:02:13
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `owner` int(11) NOT NULL,
  `describe` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of classsystem
-- ----------------------------

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `class` varchar(255) CHARACTER SET utf8 NOT NULL,
  `system` int(11) NOT NULL,
  `teacher` int(11) NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8 NOT NULL,
  `path` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of course
-- ----------------------------

-- ----------------------------
-- Table structure for `down`
-- ----------------------------
DROP TABLE IF EXISTS `down`;
CREATE TABLE `down` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` int(11) NOT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of group
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
  `resorce` int(11) NOT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
