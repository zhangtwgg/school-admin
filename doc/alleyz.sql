/*
Navicat MySQL Data Transfer

Source Server         : local-mysql
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : alleyz

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-05-21 12:14:19
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
  `late_count` tinyint(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ATTEND_TEA_ID` (`user_id`),
  CONSTRAINT `ATTEND_TEA_ID` FOREIGN KEY (`user_id`) REFERENCES `tbl_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tbl_attend
-- ----------------------------
INSERT INTO `tbl_attend` VALUES ('2', '2017-05', '21', '2', '3', '4', '5', '1', '1');
INSERT INTO `tbl_attend` VALUES ('3', '2017-04', '21', '2', '3', '4', '5', '1', '1');
INSERT INTO `tbl_attend` VALUES ('4', '2017-05', '21', '2', '3', '4', '5', '2', '1');
INSERT INTO `tbl_attend` VALUES ('5', '2017-04', '21', '2', '3', '4', '5', '2', '1');
INSERT INTO `tbl_attend` VALUES ('6', '2017-05', '21', '2', '3', '4', '5', '3', '1');
INSERT INTO `tbl_attend` VALUES ('7', '2017-04', '21', '2', '3', '4', '5', '3', '1');
INSERT INTO `tbl_attend` VALUES ('8', '2017-05', '21', '2', '3', '4', '5', '4', '1');
INSERT INTO `tbl_attend` VALUES ('9', '2017-04', '21', '2', '3', '4', '5', '4', '1');
INSERT INTO `tbl_attend` VALUES ('10', '2017-05', '21', '2', '3', '4', '5', '5', '1');
INSERT INTO `tbl_attend` VALUES ('11', '2017-04', '21', '2', '3', '4', '5', '5', '1');
INSERT INTO `tbl_attend` VALUES ('12', '2017-05', '21', '2', '3', '4', '5', '6', '1');
INSERT INTO `tbl_attend` VALUES ('13', '2017-04', '21', '2', '3', '4', '5', '6', '1');
INSERT INTO `tbl_attend` VALUES ('14', '2017-05', '21', '2', '3', '4', '5', '7', '1');
INSERT INTO `tbl_attend` VALUES ('15', '2017-04', '21', '2', '3', '4', '5', '7', '1');
INSERT INTO `tbl_attend` VALUES ('16', '2017-05', '21', '2', '3', '4', '5', '8', '1');
INSERT INTO `tbl_attend` VALUES ('17', '2017-04', '21', '2', '3', '4', '5', '8', '1');
INSERT INTO `tbl_attend` VALUES ('18', '2017-05', '21', '2', '3', '4', '5', '9', '1');
INSERT INTO `tbl_attend` VALUES ('19', '2017-04', '21', '2', '3', '4', '5', '9', '1');
INSERT INTO `tbl_attend` VALUES ('20', '2017-05', '21', '2', '3', '4', '5', '10', '1');
INSERT INTO `tbl_attend` VALUES ('21', '2017-04', '21', '2', '3', '4', '5', '10', '1');
INSERT INTO `tbl_attend` VALUES ('22', '2017-05', '21', '2', '3', '4', '5', '11', '1');
INSERT INTO `tbl_attend` VALUES ('23', '2017-04', '21', '2', '3', '4', '5', '11', '1');
INSERT INTO `tbl_attend` VALUES ('24', '2017-05', '21', '2', '3', '4', '5', '12', '1');
INSERT INTO `tbl_attend` VALUES ('25', '2017-04', '21', '2', '3', '4', '5', '12', '1');
INSERT INTO `tbl_attend` VALUES ('26', '2017-05', '21', '2', '3', '4', '5', '13', '1');
INSERT INTO `tbl_attend` VALUES ('27', '2017-04', '21', '2', '3', '4', '5', '13', '1');
INSERT INTO `tbl_attend` VALUES ('28', '2017-05', '21', '2', '3', '4', '5', '14', '1');
INSERT INTO `tbl_attend` VALUES ('29', '2017-04', '21', '2', '3', '4', '5', '14', '1');
INSERT INTO `tbl_attend` VALUES ('30', '2017-05', '21', '2', '3', '4', '5', '15', '1');
INSERT INTO `tbl_attend` VALUES ('31', '2017-04', '21', '2', '3', '4', '5', '15', '1');
INSERT INTO `tbl_attend` VALUES ('32', '2017-05', '21', '2', '3', '4', '5', '16', '1');
INSERT INTO `tbl_attend` VALUES ('33', '2017-04', '21', '2', '3', '4', '5', '16', '1');
INSERT INTO `tbl_attend` VALUES ('34', '2017-05', '21', '2', '3', '4', '5', '17', '1');
INSERT INTO `tbl_attend` VALUES ('35', '2017-04', '21', '2', '3', '4', '5', '17', '1');
INSERT INTO `tbl_attend` VALUES ('36', '2017-05', '21', '2', '3', '4', '5', '18', '1');
INSERT INTO `tbl_attend` VALUES ('37', '2017-04', '21', '2', '3', '4', '5', '18', '1');
INSERT INTO `tbl_attend` VALUES ('38', '2017-05', '21', '2', '3', '4', '5', '19', '1');
INSERT INTO `tbl_attend` VALUES ('39', '2017-04', '21', '2', '3', '4', '5', '19', '1');
INSERT INTO `tbl_attend` VALUES ('40', '2017-05', '21', '2', '3', '4', '5', '20', '1');
INSERT INTO `tbl_attend` VALUES ('41', '2017-04', '21', '2', '3', '4', '5', '20', '1');

-- ----------------------------
-- Table structure for tbl_check
-- ----------------------------
DROP TABLE IF EXISTS `tbl_check`;
CREATE TABLE `tbl_check` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `item` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `tbl_check_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tbl_check
-- ----------------------------
INSERT INTO `tbl_check` VALUES ('1', '1', '业绩考核', '良好', '2017-05-15');
INSERT INTO `tbl_check` VALUES ('2', '1', '考勤考核', '良好', '2017-05-16');
INSERT INTO `tbl_check` VALUES ('3', '2', '业绩考核', '良好', '2017-05-15');
INSERT INTO `tbl_check` VALUES ('4', '2', '考勤考核', '良好', '2017-05-16');
INSERT INTO `tbl_check` VALUES ('5', '3', '业绩考核', '良好', '2017-05-15');
INSERT INTO `tbl_check` VALUES ('6', '3', '考勤考核', '良好', '2017-05-16');
INSERT INTO `tbl_check` VALUES ('7', '4', '业绩考核', '良好', '2017-05-15');
INSERT INTO `tbl_check` VALUES ('8', '4', '考勤考核', '良好', '2017-05-16');
INSERT INTO `tbl_check` VALUES ('9', '5', '业绩考核', '良好', '2017-05-15');
INSERT INTO `tbl_check` VALUES ('10', '5', '考勤考核', '良好', '2017-05-16');
INSERT INTO `tbl_check` VALUES ('11', '6', '业绩考核', '良好', '2017-05-15');
INSERT INTO `tbl_check` VALUES ('12', '6', '考勤考核', '良好', '2017-05-16');
INSERT INTO `tbl_check` VALUES ('13', '7', '业绩考核', '良好', '2017-05-15');
INSERT INTO `tbl_check` VALUES ('14', '7', '考勤考核', '良好', '2017-05-16');
INSERT INTO `tbl_check` VALUES ('15', '8', '业绩考核', '良好', '2017-05-15');
INSERT INTO `tbl_check` VALUES ('16', '8', '考勤考核', '良好', '2017-05-16');
INSERT INTO `tbl_check` VALUES ('17', '9', '业绩考核', '良好', '2017-05-15');
INSERT INTO `tbl_check` VALUES ('18', '9', '考勤考核', '良好', '2017-05-16');
INSERT INTO `tbl_check` VALUES ('19', '10', '业绩考核', '良好', '2017-05-15');
INSERT INTO `tbl_check` VALUES ('20', '10', '考勤考核', '良好', '2017-05-16');
INSERT INTO `tbl_check` VALUES ('21', '11', '业绩考核', '良好', '2017-05-15');
INSERT INTO `tbl_check` VALUES ('22', '11', '考勤考核', '良好', '2017-05-16');
INSERT INTO `tbl_check` VALUES ('23', '12', '业绩考核', '良好', '2017-05-15');
INSERT INTO `tbl_check` VALUES ('24', '12', '考勤考核', '良好', '2017-05-16');
INSERT INTO `tbl_check` VALUES ('25', '13', '业绩考核', '良好', '2017-05-15');
INSERT INTO `tbl_check` VALUES ('26', '13', '考勤考核', '良好', '2017-05-16');
INSERT INTO `tbl_check` VALUES ('27', '14', '业绩考核', '良好', '2017-05-15');
INSERT INTO `tbl_check` VALUES ('28', '14', '考勤考核', '良好', '2017-05-16');
INSERT INTO `tbl_check` VALUES ('29', '15', '业绩考核', '良好', '2017-05-15');
INSERT INTO `tbl_check` VALUES ('30', '15', '考勤考核', '良好', '2017-05-16');
INSERT INTO `tbl_check` VALUES ('31', '16', '业绩考核', '良好', '2017-05-15');
INSERT INTO `tbl_check` VALUES ('32', '16', '考勤考核', '良好', '2017-05-16');
INSERT INTO `tbl_check` VALUES ('33', '17', '业绩考核', '良好', '2017-05-15');
INSERT INTO `tbl_check` VALUES ('34', '17', '考勤考核', '良好', '2017-05-16');
INSERT INTO `tbl_check` VALUES ('35', '18', '业绩考核', '良好', '2017-05-15');
INSERT INTO `tbl_check` VALUES ('36', '18', '考勤考核', '良好', '2017-05-16');
INSERT INTO `tbl_check` VALUES ('37', '19', '业绩考核', '良好', '2017-05-15');
INSERT INTO `tbl_check` VALUES ('38', '19', '考勤考核', '良好', '2017-05-16');
INSERT INTO `tbl_check` VALUES ('39', '20', '业绩考核', '良好', '2017-05-15');
INSERT INTO `tbl_check` VALUES ('40', '20', '考勤考核', '良好', '2017-05-16');

-- ----------------------------
-- Table structure for tbl_medcial
-- ----------------------------
DROP TABLE IF EXISTS `tbl_medcial`;
CREATE TABLE `tbl_medcial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `med_month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_count` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `tbl_medcial_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tbl_medcial
-- ----------------------------
INSERT INTO `tbl_medcial` VALUES ('1', '1', '2017-05', '172', '2017-05-15');
INSERT INTO `tbl_medcial` VALUES ('2', '1', '2017-04', '173', '2017-04-15');
INSERT INTO `tbl_medcial` VALUES ('3', '2', '2017-05', '172', '2017-05-15');
INSERT INTO `tbl_medcial` VALUES ('4', '2', '2017-04', '173', '2017-04-15');
INSERT INTO `tbl_medcial` VALUES ('5', '3', '2017-05', '172', '2017-05-15');
INSERT INTO `tbl_medcial` VALUES ('6', '3', '2017-04', '173', '2017-04-15');
INSERT INTO `tbl_medcial` VALUES ('7', '4', '2017-05', '172', '2017-05-15');
INSERT INTO `tbl_medcial` VALUES ('8', '4', '2017-04', '173', '2017-04-15');
INSERT INTO `tbl_medcial` VALUES ('9', '5', '2017-05', '172', '2017-05-15');
INSERT INTO `tbl_medcial` VALUES ('10', '5', '2017-04', '173', '2017-04-15');
INSERT INTO `tbl_medcial` VALUES ('11', '6', '2017-05', '172', '2017-05-15');
INSERT INTO `tbl_medcial` VALUES ('12', '6', '2017-04', '173', '2017-04-15');
INSERT INTO `tbl_medcial` VALUES ('13', '7', '2017-05', '172', '2017-05-15');
INSERT INTO `tbl_medcial` VALUES ('14', '7', '2017-04', '173', '2017-04-15');
INSERT INTO `tbl_medcial` VALUES ('15', '8', '2017-05', '172', '2017-05-15');
INSERT INTO `tbl_medcial` VALUES ('16', '8', '2017-04', '173', '2017-04-15');
INSERT INTO `tbl_medcial` VALUES ('17', '9', '2017-05', '172', '2017-05-15');
INSERT INTO `tbl_medcial` VALUES ('18', '9', '2017-04', '173', '2017-04-15');
INSERT INTO `tbl_medcial` VALUES ('19', '10', '2017-05', '172', '2017-05-15');
INSERT INTO `tbl_medcial` VALUES ('20', '10', '2017-04', '173', '2017-04-15');
INSERT INTO `tbl_medcial` VALUES ('21', '11', '2017-05', '172', '2017-05-15');
INSERT INTO `tbl_medcial` VALUES ('22', '11', '2017-04', '173', '2017-04-15');
INSERT INTO `tbl_medcial` VALUES ('23', '12', '2017-05', '172', '2017-05-15');
INSERT INTO `tbl_medcial` VALUES ('24', '12', '2017-04', '173', '2017-04-15');
INSERT INTO `tbl_medcial` VALUES ('25', '13', '2017-05', '172', '2017-05-15');
INSERT INTO `tbl_medcial` VALUES ('26', '13', '2017-04', '173', '2017-04-15');
INSERT INTO `tbl_medcial` VALUES ('27', '14', '2017-05', '172', '2017-05-15');
INSERT INTO `tbl_medcial` VALUES ('28', '14', '2017-04', '173', '2017-04-15');
INSERT INTO `tbl_medcial` VALUES ('29', '15', '2017-05', '172', '2017-05-15');
INSERT INTO `tbl_medcial` VALUES ('30', '15', '2017-04', '173', '2017-04-15');
INSERT INTO `tbl_medcial` VALUES ('31', '16', '2017-05', '172', '2017-05-15');
INSERT INTO `tbl_medcial` VALUES ('32', '16', '2017-04', '173', '2017-04-15');
INSERT INTO `tbl_medcial` VALUES ('33', '17', '2017-05', '172', '2017-05-15');
INSERT INTO `tbl_medcial` VALUES ('34', '17', '2017-04', '173', '2017-04-15');
INSERT INTO `tbl_medcial` VALUES ('35', '18', '2017-05', '172', '2017-05-15');
INSERT INTO `tbl_medcial` VALUES ('36', '18', '2017-04', '173', '2017-04-15');
INSERT INTO `tbl_medcial` VALUES ('37', '19', '2017-05', '172', '2017-05-15');
INSERT INTO `tbl_medcial` VALUES ('38', '19', '2017-04', '173', '2017-04-15');
INSERT INTO `tbl_medcial` VALUES ('39', '20', '2017-05', '172', '2017-05-15');
INSERT INTO `tbl_medcial` VALUES ('40', '20', '2017-04', '173', '2017-04-15');

-- ----------------------------
-- Table structure for tbl_salary
-- ----------------------------
DROP TABLE IF EXISTS `tbl_salary`;
CREATE TABLE `tbl_salary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `account_period` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_pay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bonus` float(255,0) DEFAULT NULL,
  `allowance` float(255,0) DEFAULT NULL,
  `salary` float(255,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_salary_ibfk_1` (`user_id`),
  CONSTRAINT `tbl_salary_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tbl_salary
-- ----------------------------
INSERT INTO `tbl_salary` VALUES ('1', '1', '2017-00', '10000.0', '5000', '160', '15160');
INSERT INTO `tbl_salary` VALUES ('2', '1', '2017-01', '10000.0', '5000', '160', '15160');
INSERT INTO `tbl_salary` VALUES ('3', '1', '2017-02', '10000.0', '5000', '160', '15160');
INSERT INTO `tbl_salary` VALUES ('4', '1', '2017-03', '10000.0', '5000', '160', '15160');
INSERT INTO `tbl_salary` VALUES ('5', '1', '2017-04', '10000.0', '5000', '160', '15160');
INSERT INTO `tbl_salary` VALUES ('6', '2', '2017-00', '8000.0', '2702', '160', '10862');
INSERT INTO `tbl_salary` VALUES ('7', '2', '2017-01', '8000.0', '2702', '160', '10862');
INSERT INTO `tbl_salary` VALUES ('8', '2', '2017-02', '8000.0', '2702', '160', '10862');
INSERT INTO `tbl_salary` VALUES ('9', '2', '2017-03', '8000.0', '2702', '160', '10862');
INSERT INTO `tbl_salary` VALUES ('10', '2', '2017-04', '8000.0', '2702', '160', '10862');
INSERT INTO `tbl_salary` VALUES ('11', '3', '2017-00', '8000.0', '3268', '160', '11428');
INSERT INTO `tbl_salary` VALUES ('12', '3', '2017-01', '8000.0', '3268', '160', '11428');
INSERT INTO `tbl_salary` VALUES ('13', '3', '2017-02', '8000.0', '3268', '160', '11428');
INSERT INTO `tbl_salary` VALUES ('14', '3', '2017-03', '8000.0', '3268', '160', '11428');
INSERT INTO `tbl_salary` VALUES ('15', '3', '2017-04', '8000.0', '3268', '160', '11428');
INSERT INTO `tbl_salary` VALUES ('16', '4', '2017-00', '10000.0', '4556', '160', '14716');
INSERT INTO `tbl_salary` VALUES ('17', '4', '2017-01', '10000.0', '4556', '160', '14716');
INSERT INTO `tbl_salary` VALUES ('18', '4', '2017-02', '10000.0', '4556', '160', '14716');
INSERT INTO `tbl_salary` VALUES ('19', '4', '2017-03', '10000.0', '4556', '160', '14716');
INSERT INTO `tbl_salary` VALUES ('20', '4', '2017-04', '10000.0', '4556', '160', '14716');
INSERT INTO `tbl_salary` VALUES ('21', '5', '2017-00', '8000.0', '4788', '160', '12948');
INSERT INTO `tbl_salary` VALUES ('23', '1', '2017-00', '10000.0', '5000', '160', '15160');
INSERT INTO `tbl_salary` VALUES ('24', '1', '2017-01', '10000.0', '5000', '160', '15160');
INSERT INTO `tbl_salary` VALUES ('25', '1', '2017-02', '10000.0', '5000', '160', '15160');
INSERT INTO `tbl_salary` VALUES ('26', '1', '2017-03', '10000.0', '5000', '160', '15160');
INSERT INTO `tbl_salary` VALUES ('27', '1', '2017-04', '10000.0', '5000', '160', '15160');
INSERT INTO `tbl_salary` VALUES ('28', '2', '2017-00', '8000.0', '2702', '160', '10862');
INSERT INTO `tbl_salary` VALUES ('29', '2', '2017-01', '8000.0', '2702', '160', '10862');
INSERT INTO `tbl_salary` VALUES ('30', '2', '2017-02', '8000.0', '2702', '160', '10862');
INSERT INTO `tbl_salary` VALUES ('31', '2', '2017-03', '8000.0', '2702', '160', '10862');
INSERT INTO `tbl_salary` VALUES ('32', '2', '2017-04', '8000.0', '2702', '160', '10862');
INSERT INTO `tbl_salary` VALUES ('33', '3', '2017-00', '8000.0', '3268', '160', '11428');
INSERT INTO `tbl_salary` VALUES ('34', '3', '2017-01', '8000.0', '3268', '160', '11428');
INSERT INTO `tbl_salary` VALUES ('35', '3', '2017-02', '8000.0', '3268', '160', '11428');
INSERT INTO `tbl_salary` VALUES ('36', '3', '2017-03', '8000.0', '3268', '160', '11428');
INSERT INTO `tbl_salary` VALUES ('37', '3', '2017-04', '8000.0', '3268', '160', '11428');
INSERT INTO `tbl_salary` VALUES ('38', '4', '2017-00', '10000.0', '4556', '160', '14716');
INSERT INTO `tbl_salary` VALUES ('39', '4', '2017-01', '10000.0', '4556', '160', '14716');
INSERT INTO `tbl_salary` VALUES ('40', '4', '2017-02', '10000.0', '4556', '160', '14716');
INSERT INTO `tbl_salary` VALUES ('41', '4', '2017-03', '10000.0', '4556', '160', '14716');
INSERT INTO `tbl_salary` VALUES ('42', '4', '2017-04', '10000.0', '4556', '160', '14716');
INSERT INTO `tbl_salary` VALUES ('43', '5', '2017-00', '8000.0', '4788', '160', '12948');
INSERT INTO `tbl_salary` VALUES ('44', '5', '2017-01', '8000.0', '4788', '160', '12948');
INSERT INTO `tbl_salary` VALUES ('45', '5', '2017-02', '8000.0', '4788', '160', '12948');
INSERT INTO `tbl_salary` VALUES ('46', '5', '2017-03', '8000.0', '4788', '160', '12948');
INSERT INTO `tbl_salary` VALUES ('47', '5', '2017-04', '8000.0', '4788', '160', '12948');
INSERT INTO `tbl_salary` VALUES ('48', '6', '2017-00', '8000.0', '4956', '160', '13116');
INSERT INTO `tbl_salary` VALUES ('49', '6', '2017-01', '8000.0', '4956', '160', '13116');
INSERT INTO `tbl_salary` VALUES ('50', '6', '2017-02', '8000.0', '4956', '160', '13116');
INSERT INTO `tbl_salary` VALUES ('51', '6', '2017-03', '8000.0', '4956', '160', '13116');
INSERT INTO `tbl_salary` VALUES ('52', '6', '2017-04', '8000.0', '4956', '160', '13116');
INSERT INTO `tbl_salary` VALUES ('53', '7', '2017-00', '10000.0', '640', '160', '10800');
INSERT INTO `tbl_salary` VALUES ('54', '7', '2017-01', '10000.0', '640', '160', '10800');
INSERT INTO `tbl_salary` VALUES ('55', '7', '2017-02', '10000.0', '640', '160', '10800');
INSERT INTO `tbl_salary` VALUES ('56', '7', '2017-03', '10000.0', '640', '160', '10800');
INSERT INTO `tbl_salary` VALUES ('57', '7', '2017-04', '10000.0', '640', '160', '10800');
INSERT INTO `tbl_salary` VALUES ('58', '8', '2017-00', '8000.0', '1503', '160', '9663');
INSERT INTO `tbl_salary` VALUES ('59', '8', '2017-01', '8000.0', '1503', '160', '9663');
INSERT INTO `tbl_salary` VALUES ('60', '8', '2017-02', '8000.0', '1503', '160', '9663');
INSERT INTO `tbl_salary` VALUES ('61', '8', '2017-03', '8000.0', '1503', '160', '9663');
INSERT INTO `tbl_salary` VALUES ('62', '8', '2017-04', '8000.0', '1503', '160', '9663');
INSERT INTO `tbl_salary` VALUES ('63', '9', '2017-00', '8000.0', '1959', '160', '10119');
INSERT INTO `tbl_salary` VALUES ('64', '9', '2017-01', '8000.0', '1959', '160', '10119');
INSERT INTO `tbl_salary` VALUES ('65', '9', '2017-02', '8000.0', '1959', '160', '10119');
INSERT INTO `tbl_salary` VALUES ('66', '9', '2017-03', '8000.0', '1959', '160', '10119');
INSERT INTO `tbl_salary` VALUES ('67', '9', '2017-04', '8000.0', '1959', '160', '10119');
INSERT INTO `tbl_salary` VALUES ('68', '10', '2017-00', '10000.0', '3883', '160', '14043');
INSERT INTO `tbl_salary` VALUES ('69', '10', '2017-01', '10000.0', '3883', '160', '14043');
INSERT INTO `tbl_salary` VALUES ('70', '10', '2017-02', '10000.0', '3883', '160', '14043');
INSERT INTO `tbl_salary` VALUES ('71', '10', '2017-03', '10000.0', '3883', '160', '14043');
INSERT INTO `tbl_salary` VALUES ('72', '10', '2017-04', '10000.0', '3883', '160', '14043');
INSERT INTO `tbl_salary` VALUES ('73', '11', '2017-00', '8000.0', '4312', '160', '12472');
INSERT INTO `tbl_salary` VALUES ('74', '11', '2017-01', '8000.0', '4312', '160', '12472');
INSERT INTO `tbl_salary` VALUES ('75', '11', '2017-02', '8000.0', '4312', '160', '12472');
INSERT INTO `tbl_salary` VALUES ('76', '11', '2017-03', '8000.0', '4312', '160', '12472');
INSERT INTO `tbl_salary` VALUES ('77', '11', '2017-04', '8000.0', '4312', '160', '12472');
INSERT INTO `tbl_salary` VALUES ('78', '12', '2017-00', '8000.0', '243', '160', '8403');
INSERT INTO `tbl_salary` VALUES ('79', '12', '2017-01', '8000.0', '243', '160', '8403');
INSERT INTO `tbl_salary` VALUES ('80', '12', '2017-02', '8000.0', '243', '160', '8403');
INSERT INTO `tbl_salary` VALUES ('81', '12', '2017-03', '8000.0', '243', '160', '8403');
INSERT INTO `tbl_salary` VALUES ('82', '12', '2017-04', '8000.0', '243', '160', '8403');
INSERT INTO `tbl_salary` VALUES ('83', '13', '2017-00', '10000.0', '4356', '160', '14516');
INSERT INTO `tbl_salary` VALUES ('84', '13', '2017-01', '10000.0', '4356', '160', '14516');
INSERT INTO `tbl_salary` VALUES ('85', '13', '2017-02', '10000.0', '4356', '160', '14516');
INSERT INTO `tbl_salary` VALUES ('86', '13', '2017-03', '10000.0', '4356', '160', '14516');
INSERT INTO `tbl_salary` VALUES ('87', '13', '2017-04', '10000.0', '4356', '160', '14516');
INSERT INTO `tbl_salary` VALUES ('88', '14', '2017-00', '8000.0', '3992', '160', '12152');
INSERT INTO `tbl_salary` VALUES ('89', '14', '2017-01', '8000.0', '3992', '160', '12152');
INSERT INTO `tbl_salary` VALUES ('90', '14', '2017-02', '8000.0', '3992', '160', '12152');
INSERT INTO `tbl_salary` VALUES ('91', '14', '2017-03', '8000.0', '3992', '160', '12152');
INSERT INTO `tbl_salary` VALUES ('92', '14', '2017-04', '8000.0', '3992', '160', '12152');
INSERT INTO `tbl_salary` VALUES ('93', '15', '2017-00', '8000.0', '1712', '160', '9872');
INSERT INTO `tbl_salary` VALUES ('94', '15', '2017-01', '8000.0', '1712', '160', '9872');
INSERT INTO `tbl_salary` VALUES ('95', '15', '2017-02', '8000.0', '1712', '160', '9872');
INSERT INTO `tbl_salary` VALUES ('96', '15', '2017-03', '8000.0', '1712', '160', '9872');
INSERT INTO `tbl_salary` VALUES ('97', '15', '2017-04', '8000.0', '1712', '160', '9872');
INSERT INTO `tbl_salary` VALUES ('98', '16', '2017-00', '10000.0', '1837', '160', '11997');
INSERT INTO `tbl_salary` VALUES ('99', '16', '2017-01', '10000.0', '1837', '160', '11997');
INSERT INTO `tbl_salary` VALUES ('100', '16', '2017-02', '10000.0', '1837', '160', '11997');
INSERT INTO `tbl_salary` VALUES ('101', '16', '2017-03', '10000.0', '1837', '160', '11997');
INSERT INTO `tbl_salary` VALUES ('102', '16', '2017-04', '10000.0', '1837', '160', '11997');
INSERT INTO `tbl_salary` VALUES ('103', '17', '2017-00', '8000.0', '199', '160', '8359');
INSERT INTO `tbl_salary` VALUES ('104', '17', '2017-01', '8000.0', '199', '160', '8359');
INSERT INTO `tbl_salary` VALUES ('105', '17', '2017-02', '8000.0', '199', '160', '8359');
INSERT INTO `tbl_salary` VALUES ('106', '17', '2017-03', '8000.0', '199', '160', '8359');
INSERT INTO `tbl_salary` VALUES ('107', '17', '2017-04', '8000.0', '199', '160', '8359');
INSERT INTO `tbl_salary` VALUES ('108', '18', '2017-00', '8000.0', '4998', '160', '13158');
INSERT INTO `tbl_salary` VALUES ('109', '18', '2017-01', '8000.0', '4998', '160', '13158');
INSERT INTO `tbl_salary` VALUES ('110', '18', '2017-02', '8000.0', '4998', '160', '13158');
INSERT INTO `tbl_salary` VALUES ('111', '18', '2017-03', '8000.0', '4998', '160', '13158');
INSERT INTO `tbl_salary` VALUES ('112', '18', '2017-04', '8000.0', '4998', '160', '13158');
INSERT INTO `tbl_salary` VALUES ('113', '19', '2017-00', '10000.0', '4574', '160', '14734');
INSERT INTO `tbl_salary` VALUES ('114', '19', '2017-01', '10000.0', '4574', '160', '14734');
INSERT INTO `tbl_salary` VALUES ('115', '19', '2017-02', '10000.0', '4574', '160', '14734');
INSERT INTO `tbl_salary` VALUES ('116', '19', '2017-03', '10000.0', '4574', '160', '14734');
INSERT INTO `tbl_salary` VALUES ('117', '19', '2017-04', '10000.0', '4574', '160', '14734');
INSERT INTO `tbl_salary` VALUES ('118', '20', '2017-00', '8000.0', '4801', '160', '12961');
INSERT INTO `tbl_salary` VALUES ('119', '20', '2017-01', '8000.0', '4801', '160', '12961');
INSERT INTO `tbl_salary` VALUES ('120', '20', '2017-02', '8000.0', '4801', '160', '12961');
INSERT INTO `tbl_salary` VALUES ('121', '20', '2017-03', '8000.0', '4801', '160', '12961');
INSERT INTO `tbl_salary` VALUES ('122', '20', '2017-04', '8000.0', '4801', '160', '12961');

-- ----------------------------
-- Table structure for tbl_teacher
-- ----------------------------
DROP TABLE IF EXISTS `tbl_teacher`;
CREATE TABLE `tbl_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dep` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tbl_teacher
-- ----------------------------
INSERT INTO `tbl_teacher` VALUES ('1', '10000', 'bocqh', '王己', '男', '学生处', '1992-05-11', '博士', '2017-05-11', '00000000000', '朝阳区北三环东路西坝河西里28号', '520520', '1');
INSERT INTO `tbl_teacher` VALUES ('2', '10001', 'idaoi', '吴丁', '女', '宣传部', '1992-05-13', '博士', '2017-05-13', '10000000013', '朝阳区北三环东路西坝河西里28号', '520520', '0');
INSERT INTO `tbl_teacher` VALUES ('3', '10002', 'gsbme', '吴壬', '男', '教务处', '1992-05-01', '硕士', '2017-05-01', '20000000026', '朝阳区北三环东路西坝河西里28号', '520520', '1');
INSERT INTO `tbl_teacher` VALUES ('4', '10003', 'dfoop', '郑丙', '女', '教务处', '1992-05-11', '硕士', '2017-05-11', '30000000039', '朝阳区北三环东路西坝河西里28号', '520520', '0');
INSERT INTO `tbl_teacher` VALUES ('5', '10004', 'aupnf', '郑辛', '男', '教务处', '1992-05-14', '硕士', '2017-05-14', '40000000052', '朝阳区紫玉东路1号', '520520', '1');
INSERT INTO `tbl_teacher` VALUES ('6', '10005', 'ijnrf', '孙丁', '女', '学生处', '1992-05-14', '博士', '2017-05-14', '50000000065', '朝阳区紫玉东路1号', '520520', '0');
INSERT INTO `tbl_teacher` VALUES ('7', '10006', 'fhoqb', '孙壬', '男', '宣传部', '1992-05-13', '本科', '2017-05-13', '60000000078', '朝阳区紫玉东路1号', '520520', '1');
INSERT INTO `tbl_teacher` VALUES ('8', '10007', 'qolqk', '周乙', '女', '宣传部', '1992-05-13', '硕士', '2017-05-13', '70000000091', '朝阳区北三环东路西坝河西里28号', '520520', '0');
INSERT INTO `tbl_teacher` VALUES ('9', '10008', 'ogmpa', '周辛', '男', '宣传部', '1992-05-09', '硕士', '2017-05-09', '80000000104', '顺义区天竺镇天竺村', '520520', '1');
INSERT INTO `tbl_teacher` VALUES ('10', '10009', 'vsqmb', '赵己', '女', '学生处', '1992-05-05', '硕士', '2017-05-05', '90000000117', '朝阳区紫玉东路1号', '520520', '0');
INSERT INTO `tbl_teacher` VALUES ('11', '10010', 'tqkro', '赵甲', '男', '学生处', '1992-05-14', '本科', '2017-05-14', '100000000130', '顺义区天竺镇天竺村', '520520', '1');
INSERT INTO `tbl_teacher` VALUES ('12', '10011', 'ganra', '钱戊', '女', '学生处', '1992-05-09', '本科', '2017-05-09', '110000000143', '朝阳区紫玉东路1号', '520520', '0');
INSERT INTO `tbl_teacher` VALUES ('13', '10012', 'epiqt', '钱癸', '男', '宣传部', '1992-05-03', '本科', '2017-05-03', '120000000156', '朝阳区北三环东路西坝河西里28号', '520520', '1');
INSERT INTO `tbl_teacher` VALUES ('14', '10013', 'lemnt', '郑辛', '女', '教务处', '1992-05-01', '本科', '2017-05-01', '130000000169', '顺义区天竺镇天竺村', '520520', '0');
INSERT INTO `tbl_teacher` VALUES ('15', '10014', 'jcnmj', '郑丁', '男', '学生处', '1992-05-05', '博士', '2017-05-05', '140000000182', '顺义区天竺镇天竺村', '520520', '1');
INSERT INTO `tbl_teacher` VALUES ('16', '10015', 'udkms', '王庚', '女', '学生处', '1992-05-03', '博士', '2017-05-03', '150000000195', '顺义区天竺镇天竺村', '520520', '0');
INSERT INTO `tbl_teacher` VALUES ('17', '10016', 'rbkro', '王乙', '男', '学生处', '1992-05-11', '博士', '2017-05-11', '160000000208', '朝阳区北三环东路西坝河西里28号', '520520', '1');
INSERT INTO `tbl_teacher` VALUES ('18', '10017', 'bnjpj', '吴癸', '女', '宣传部', '1992-05-11', '本科', '2017-05-11', '170000000221', '朝阳区北三环东路西坝河西里28号', '520520', '0');
INSERT INTO `tbl_teacher` VALUES ('19', '10018', 'wljnf', '周己', '男', '教务处', '1992-05-01', '硕士', '2017-05-01', '180000000234', '朝阳区北三环东路西坝河西里28号', '520520', '1');
INSERT INTO `tbl_teacher` VALUES ('20', '10019', 'aotsm', '吴壬', '女', '教务处', '1992-05-01', '博士', '2017-05-01', '190000000247', '顺义区天竺镇天竺村', '520520', '0');
INSERT INTO `tbl_teacher` VALUES ('21', '10020', 'vguqc', '吴戊', '男', '教务处', '1992-05-14', '硕士', '2017-05-14', '200000000260', '朝阳区紫玉东路1号', '520520', '1');
