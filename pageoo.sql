/*
Navicat MySQL Data Transfer

Source Server         : Local
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : pageoo

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-03-10 21:13:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ci_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ci_sessions
-- ----------------------------
INSERT INTO `ci_sessions` VALUES ('cjnp4jc91fncburnr6ftpiu0tsoefgf6', '::1', '1583853163', 0x5F5F63695F6C6173745F726567656E65726174657C693A313538333835333136333B);
INSERT INTO `ci_sessions` VALUES ('a78u3lpo52086jqgpugjq5ed34lf3c3v', '::1', '1583853164', 0x5F5F63695F6C6173745F726567656E65726174657C693A313538333835333136343B);
INSERT INTO `ci_sessions` VALUES ('7ad4lhvk648h9kr8an9tnchj67so6g4t', '::1', '1583853165', 0x5F5F63695F6C6173745F726567656E65726174657C693A313538333835333136353B);
INSERT INTO `ci_sessions` VALUES ('e241mfp0tg74338k6ka21tgf1c4e03g6', '::1', '1583853169', 0x5F5F63695F6C6173745F726567656E65726174657C693A313538333835333136393B6964656E746974797C733A31353A2261646D696E4061646D696E2E636F6D223B656D61696C7C733A31353A2261646D696E4061646D696E2E636F6D223B757365725F69647C733A313A2231223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231353833383533303437223B6C6173745F636865636B7C693A313538333835333136393B);
INSERT INTO `ci_sessions` VALUES ('g56j3ur9mb9dns4gdgp2a90r7u0qa8bp', '::1', '1583853169', 0x5F5F63695F6C6173745F726567656E65726174657C693A313538333835333136393B6964656E746974797C733A31353A2261646D696E4061646D696E2E636F6D223B656D61696C7C733A31353A2261646D696E4061646D696E2E636F6D223B757365725F69647C733A313A2231223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231353833383533303437223B6C6173745F636865636B7C693A313538333835333136393B);
INSERT INTO `ci_sessions` VALUES ('uk4vancekldof0sajmjoe7tdskngp0i3', '::1', '1583853170', 0x5F5F63695F6C6173745F726567656E65726174657C693A313538333835333136393B);
INSERT INTO `ci_sessions` VALUES ('n0khq0rubdsaqq49i6rin6a7brha5ofj', '::1', '1583853173', 0x5F5F63695F6C6173745F726567656E65726174657C693A313538333835333137333B);
INSERT INTO `ci_sessions` VALUES ('9vl1r71si5kuqkh0st44rhrghsmcbe57', '::1', '1583853174', 0x5F5F63695F6C6173745F726567656E65726174657C693A313538333835333137343B);
INSERT INTO `ci_sessions` VALUES ('v3g28lk4j4plvkt2gepccd0u8vn1dhkb', '::1', '1583853364', 0x5F5F63695F6C6173745F726567656E65726174657C693A313538333835333336343B);
INSERT INTO `ci_sessions` VALUES ('uc5467p0vpq72q0r4nk6da3p1tat543v', '::1', '1583853365', 0x5F5F63695F6C6173745F726567656E65726174657C693A313538333835333336353B);
INSERT INTO `ci_sessions` VALUES ('fp47cmgremnpsl6lqqhqcbqihjeh3jjs', '::1', '1583853366', 0x5F5F63695F6C6173745F726567656E65726174657C693A313538333835333336363B);
INSERT INTO `ci_sessions` VALUES ('315bpj2r62mcs0il3h84037avsovs0d9', '::1', '1583853367', 0x5F5F63695F6C6173745F726567656E65726174657C693A313538333835333336373B);
INSERT INTO `ci_sessions` VALUES ('g2bqf82c04b4bqgtneoto58s6onum7lk', '::1', '1583853391', 0x5F5F63695F6C6173745F726567656E65726174657C693A313538333835333339313B6964656E746974797C733A31353A2261646D696E4061646D696E2E636F6D223B656D61696C7C733A31353A2261646D696E4061646D696E2E636F6D223B757365725F69647C733A313A2231223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231353833383533313639223B6C6173745F636865636B7C693A313538333835333339313B);
INSERT INTO `ci_sessions` VALUES ('69ibkfcs2fkp6nforamotpv627kma9lu', '::1', '1583853416', 0x5F5F63695F6C6173745F726567656E65726174657C693A313538333835333431363B6964656E746974797C733A31353A2261646D696E4061646D696E2E636F6D223B656D61696C7C733A31353A2261646D696E4061646D696E2E636F6D223B757365725F69647C733A313A2231223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231353833383533333931223B6C6173745F636865636B7C693A313538333835333431363B);
INSERT INTO `ci_sessions` VALUES ('3k5bqoj6rc117lrahuobjcmlrspgvin7', '::1', '1583853424', 0x5F5F63695F6C6173745F726567656E65726174657C693A313538333835333432343B);

-- ----------------------------
-- Table structure for `groups`
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES ('1', 'admin', 'Administrator');
INSERT INTO `groups` VALUES ('2', 'members', 'General User');

-- ----------------------------
-- Table structure for `login_attempts`
-- ----------------------------
DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_attempts
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_email` (`email`),
  UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  UNIQUE KEY `uc_remember_selector` (`remember_selector`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '127.0.0.1', 'administrator', '$2y$12$SNdds7HkNyUgPmVNlofr4OKyqJJt3MEvMRhXeCTK0SHM7TUtPYnea', 'admin@admin.com', null, '', null, null, null, null, null, '1268889823', '1583853416', '1', 'Admin', 'istrator', 'ADMIN', '0');

-- ----------------------------
-- Table structure for `users_groups`
-- ----------------------------
DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`),
  CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_groups
-- ----------------------------
INSERT INTO `users_groups` VALUES ('1', '1', '1');
INSERT INTO `users_groups` VALUES ('2', '1', '2');
