/*
Navicat MySQL Data Transfer

Source Server         : local-mysql
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : alleyz

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-05-15 00:09:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_attend
-- ----------------------------
DROP TABLE IF EXISTS `tbl_attend`;
CREATE TABLE `tbl_attend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attend_month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attend_normal` tinyint(255) DEFAULT NULL,
  `early_count` tinyint(255) DEFAULT NULL,
  `sick_count` tinyint(255) DEFAULT NULL,
  `leave_count` tinyint(255) DEFAULT NULL,
  `absent_count` tinyint(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ATTEND_TEA_ID` (`user_id`),
  CONSTRAINT `ATTEND_TEA_ID` FOREIGN KEY (`user_id`) REFERENCES `tbl_teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for tbl_check
-- ----------------------------
DROP TABLE IF EXISTS `tbl_check`;
CREATE TABLE `tbl_check` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `item` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `tbl_check_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for tbl_medcial
-- ----------------------------
DROP TABLE IF EXISTS `tbl_medcial`;
CREATE TABLE `tbl_medcial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `med_month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_count` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `tbl_medcial_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for tbl_salary
-- ----------------------------
DROP TABLE IF EXISTS `tbl_salary`;
CREATE TABLE `tbl_salary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_period` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_pay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bonus` float(255,0) DEFAULT NULL,
  `allowance` float(255,0) DEFAULT NULL,
  `salary` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `tbl_salary_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tbl_teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for tbl_teacher
-- ----------------------------
DROP TABLE IF EXISTS `tbl_teacher`;
CREATE TABLE `tbl_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `dep` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_time` datetime DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
