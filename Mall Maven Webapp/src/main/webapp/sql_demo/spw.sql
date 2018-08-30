/*
Navicat MySQL Data Transfer

Source Server         : 235
Source Server Version : 50529
Source Host           : 192.168.1.235:3306
Source Database       : spw

Target Server Type    : MYSQL
Target Server Version : 50529
File Encoding         : 65001

Date: 2018-08-30 18:38:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `actual_work`
-- ----------------------------
DROP TABLE IF EXISTS `actual_work`;
CREATE TABLE `actual_work` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) DEFAULT NULL COMMENT '签到人',
  `plan_id` int(10) DEFAULT NULL COMMENT '班次Id',
  `plan_line_id` int(10) DEFAULT NULL COMMENT '班次明细',
  `shift_line_id` int(10) DEFAULT NULL COMMENT '计划巡更点明细id',
  `patrol_id` int(10) DEFAULT NULL COMMENT '巡更点',
  `sign_time` datetime DEFAULT NULL COMMENT '打卡时间',
  `status_flag` int(1) DEFAULT NULL COMMENT '状态 1正常 2 异常 3超时',
  `finsh_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='实时工作';

-- ----------------------------
-- Records of actual_work
-- ----------------------------

-- ----------------------------
-- Table structure for `actual_work_line`
-- ----------------------------
DROP TABLE IF EXISTS `actual_work_line`;
CREATE TABLE `actual_work_line` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `actual_id` int(10) DEFAULT NULL COMMENT '实时工作id',
  `line_patrol_id` int(10) DEFAULT NULL COMMENT '计划任务明细id',
  `line_patrol_at_id` int(10) DEFAULT NULL COMMENT '计划项目明细id',
  `patrol_line_at_id` int(10) DEFAULT NULL COMMENT '项目id',
  `content` varchar(255) DEFAULT NULL COMMENT '巡更记录',
  `img_url` varchar(255) DEFAULT NULL COMMENT '上传照片文件url',
  `video_url` varchar(255) DEFAULT NULL COMMENT '上传视频文件url',
  `voice_url` varchar(255) DEFAULT NULL COMMENT '上传音频文件url',
  `states_flag` int(1) DEFAULT NULL COMMENT '状态 1正常 2 异常',
  `create_staff_id` int(10) DEFAULT NULL COMMENT '创建人编号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_create_id` int(10) DEFAULT NULL COMMENT '修改人编号',
  `last_create_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='实时工作明细';

-- ----------------------------
-- Records of actual_work_line
-- ----------------------------

-- ----------------------------
-- Table structure for `apk_version`
-- ----------------------------
DROP TABLE IF EXISTS `apk_version`;
CREATE TABLE `apk_version` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `version` varchar(12) DEFAULT NULL COMMENT '版本号',
  `url` varchar(255) DEFAULT NULL COMMENT '文件地址',
  `upload_time` datetime DEFAULT NULL COMMENT '上传时间',
  `status` int(1) DEFAULT NULL COMMENT '0:正常 9:删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apk_version
-- ----------------------------
INSERT INTO `apk_version` VALUES ('1', '1.0.0', '\\imgs_msgy\\upload\\sos\\201709010324509288.png', '2017-09-13 19:31:17', '9');
INSERT INTO `apk_version` VALUES ('2', '1.0.1', '\\imgs_msgy\\upload\\sos\\201708260447444106.png', '2017-09-19 20:20:43', '9');
INSERT INTO `apk_version` VALUES ('3', '1.0.2', '\\imgs_msgy\\upload\\sos\\201709010947078490.htm', '2017-09-13 21:47:35', '0');
INSERT INTO `apk_version` VALUES ('6', '1.0.3', '\\imgs_msgy\\upload\\sos\\201709010952490471.htm', '2017-09-01 21:54:27', '0');
INSERT INTO `apk_version` VALUES ('7', '1.0.4', '\\imgs_msgy\\upload\\sos\\201709010953350152.htm', '2017-09-01 21:55:12', '9');
INSERT INTO `apk_version` VALUES ('8', '1.0.5', '\\imgs_msgy\\upload\\sos\\201709010954360561.htm', '2017-09-01 21:56:13', '0');
INSERT INTO `apk_version` VALUES ('9', '1.0.6', '\\imgs_msgy\\upload\\sos\\201709010954440648.htm', '2017-09-01 21:56:22', '0');
INSERT INTO `apk_version` VALUES ('10', '1.0.7', '\\imgs_msgy\\upload\\sos\\201709010954547139.htm', '2017-09-01 21:56:32', '0');
INSERT INTO `apk_version` VALUES ('11', '1.0.8', '\\imgs_msgy\\upload\\sos\\201709010955021173.htm', '2017-09-01 21:56:40', '0');
INSERT INTO `apk_version` VALUES ('12', '1.0.9', '\\imgs_msgy\\upload\\sos\\201709010955105527.htm', '2017-09-01 21:56:48', '0');
INSERT INTO `apk_version` VALUES ('13', '1.1.0', '\\imgs_msgy\\upload\\sos\\201709010955211887.htm', '2017-09-01 21:56:59', '0');
INSERT INTO `apk_version` VALUES ('14', '1.1.1', '\\imgs_msgy\\upload\\sos\\201709010957581909.htm', '2017-09-01 21:59:35', '0');
INSERT INTO `apk_version` VALUES ('15', '1.1.2', '\\imgs_msgy\\upload\\sos\\201709010958060203.htm', '2017-09-01 21:59:43', '0');
INSERT INTO `apk_version` VALUES ('16', '1.1.3', '\\imgs_msgy\\upload\\sos\\201709010958138694.htm', '2017-09-01 21:59:51', '9');
INSERT INTO `apk_version` VALUES ('17', '1.1.3', '\\imgs_msgy\\upload\\sos\\201709010959599381.htm', '2017-09-01 22:01:37', '0');
INSERT INTO `apk_version` VALUES ('21', '1.1.4', '\\imgs_msgy\\upload\\sos\\xlsx\\201709070514177279.xlsx', '2017-09-07 17:21:47', '0');

-- ----------------------------
-- Table structure for `authority`
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `role_id` int(10) DEFAULT NULL COMMENT '角色id',
  `employee_id` int(10) DEFAULT NULL COMMENT '人员id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of authority
-- ----------------------------
INSERT INTO `authority` VALUES ('6', '1', '4');
INSERT INTO `authority` VALUES ('7', '1', '3');
INSERT INTO `authority` VALUES ('8', '9', '5');
INSERT INTO `authority` VALUES ('9', '10', '6');
INSERT INTO `authority` VALUES ('10', '11', '7');
INSERT INTO `authority` VALUES ('11', '13', '8');
INSERT INTO `authority` VALUES ('12', '1', '9');
INSERT INTO `authority` VALUES ('13', '1', '13');
INSERT INTO `authority` VALUES ('14', '1', '14');
INSERT INTO `authority` VALUES ('15', '1', '15');
INSERT INTO `authority` VALUES ('16', '1', '16');
INSERT INTO `authority` VALUES ('17', '1', '17');
INSERT INTO `authority` VALUES ('18', '13', '18');
INSERT INTO `authority` VALUES ('19', '1', '19');
INSERT INTO `authority` VALUES ('20', '39', '22');
INSERT INTO `authority` VALUES ('21', '40', '24');
INSERT INTO `authority` VALUES ('22', '94', '67');
INSERT INTO `authority` VALUES ('23', '1', '2');
INSERT INTO `authority` VALUES ('24', '1', '23');
INSERT INTO `authority` VALUES ('25', '2', '31');
INSERT INTO `authority` VALUES ('26', '35', '39');
INSERT INTO `authority` VALUES ('27', '49', '68');
INSERT INTO `authority` VALUES ('28', '50', '69');
INSERT INTO `authority` VALUES ('29', '0', '70');
INSERT INTO `authority` VALUES ('30', '1', '10');
INSERT INTO `authority` VALUES ('31', '0', '73');
INSERT INTO `authority` VALUES ('32', '0', '76');
INSERT INTO `authority` VALUES ('33', '0', '78');
INSERT INTO `authority` VALUES ('34', '95', '74');
INSERT INTO `authority` VALUES ('35', '106', '94');
INSERT INTO `authority` VALUES ('36', '106', '101');
INSERT INTO `authority` VALUES ('37', '106', '102');

-- ----------------------------
-- Table structure for `authority_line`
-- ----------------------------
DROP TABLE IF EXISTS `authority_line`;
CREATE TABLE `authority_line` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `authority_id` int(10) DEFAULT NULL COMMENT '权限id',
  `relation_id` int(10) DEFAULT NULL,
  `type` int(1) DEFAULT NULL COMMENT '0菜单 1 按钮',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=390 DEFAULT CHARSET=utf8 COMMENT='权限明细表';

-- ----------------------------
-- Records of authority_line
-- ----------------------------
INSERT INTO `authority_line` VALUES ('5', '9', '30000', '0');
INSERT INTO `authority_line` VALUES ('6', '9', '30100', '0');
INSERT INTO `authority_line` VALUES ('7', '9', '30102', '0');
INSERT INTO `authority_line` VALUES ('8', '9', '5', '1');
INSERT INTO `authority_line` VALUES ('9', '9', '6', '1');
INSERT INTO `authority_line` VALUES ('10', '9', '7', '1');
INSERT INTO `authority_line` VALUES ('11', '9', '8', '1');
INSERT INTO `authority_line` VALUES ('23', '11', '10000', '0');
INSERT INTO `authority_line` VALUES ('24', '11', '10100', '0');
INSERT INTO `authority_line` VALUES ('25', '11', '10101', '0');
INSERT INTO `authority_line` VALUES ('26', '11', '10102', '0');
INSERT INTO `authority_line` VALUES ('27', '11', '20000', '0');
INSERT INTO `authority_line` VALUES ('28', '11', '20100', '0');
INSERT INTO `authority_line` VALUES ('29', '11', '20101', '0');
INSERT INTO `authority_line` VALUES ('30', '11', '20102', '0');
INSERT INTO `authority_line` VALUES ('31', '11', '20103', '0');
INSERT INTO `authority_line` VALUES ('32', '11', '30000', '0');
INSERT INTO `authority_line` VALUES ('33', '11', '30100', '0');
INSERT INTO `authority_line` VALUES ('34', '11', '30102', '0');
INSERT INTO `authority_line` VALUES ('35', '11', '5', '1');
INSERT INTO `authority_line` VALUES ('36', '11', '6', '1');
INSERT INTO `authority_line` VALUES ('37', '11', '7', '1');
INSERT INTO `authority_line` VALUES ('38', '11', '8', '1');
INSERT INTO `authority_line` VALUES ('39', '20', '10000', '0');
INSERT INTO `authority_line` VALUES ('40', '20', '10100', '0');
INSERT INTO `authority_line` VALUES ('41', '20', '10101', '0');
INSERT INTO `authority_line` VALUES ('42', '20', '10102', '0');
INSERT INTO `authority_line` VALUES ('43', '20', '20000', '0');
INSERT INTO `authority_line` VALUES ('44', '20', '20100', '0');
INSERT INTO `authority_line` VALUES ('45', '20', '20101', '0');
INSERT INTO `authority_line` VALUES ('46', '20', '20102', '0');
INSERT INTO `authority_line` VALUES ('47', '20', '20103', '0');
INSERT INTO `authority_line` VALUES ('48', '20', '30000', '0');
INSERT INTO `authority_line` VALUES ('49', '20', '30100', '0');
INSERT INTO `authority_line` VALUES ('50', '20', '30102', '0');
INSERT INTO `authority_line` VALUES ('51', '20', '5', '1');
INSERT INTO `authority_line` VALUES ('52', '20', '6', '1');
INSERT INTO `authority_line` VALUES ('53', '20', '7', '1');
INSERT INTO `authority_line` VALUES ('54', '20', '8', '1');
INSERT INTO `authority_line` VALUES ('55', '20', '30103', '0');
INSERT INTO `authority_line` VALUES ('56', '21', '10000', '0');
INSERT INTO `authority_line` VALUES ('57', '21', '10100', '0');
INSERT INTO `authority_line` VALUES ('58', '21', '10101', '0');
INSERT INTO `authority_line` VALUES ('59', '21', '10102', '0');
INSERT INTO `authority_line` VALUES ('60', '21', '20000', '0');
INSERT INTO `authority_line` VALUES ('61', '21', '20100', '0');
INSERT INTO `authority_line` VALUES ('62', '21', '20101', '0');
INSERT INTO `authority_line` VALUES ('63', '21', '20102', '0');
INSERT INTO `authority_line` VALUES ('64', '21', '20103', '0');
INSERT INTO `authority_line` VALUES ('65', '21', '30000', '0');
INSERT INTO `authority_line` VALUES ('66', '21', '30100', '0');
INSERT INTO `authority_line` VALUES ('67', '21', '30101', '0');
INSERT INTO `authority_line` VALUES ('68', '21', '1', '1');
INSERT INTO `authority_line` VALUES ('69', '21', '2', '1');
INSERT INTO `authority_line` VALUES ('70', '21', '3', '1');
INSERT INTO `authority_line` VALUES ('71', '21', '4', '1');
INSERT INTO `authority_line` VALUES ('72', '21', '30102', '0');
INSERT INTO `authority_line` VALUES ('73', '21', '5', '1');
INSERT INTO `authority_line` VALUES ('74', '21', '6', '1');
INSERT INTO `authority_line` VALUES ('75', '21', '7', '1');
INSERT INTO `authority_line` VALUES ('76', '21', '8', '1');
INSERT INTO `authority_line` VALUES ('77', '21', '30103', '0');
INSERT INTO `authority_line` VALUES ('97', '22', '10000', '0');
INSERT INTO `authority_line` VALUES ('98', '22', '10101', '0');
INSERT INTO `authority_line` VALUES ('99', '22', '20000', '0');
INSERT INTO `authority_line` VALUES ('100', '22', '20101', '0');
INSERT INTO `authority_line` VALUES ('101', '22', '30000', '0');
INSERT INTO `authority_line` VALUES ('102', '22', '30101', '0');
INSERT INTO `authority_line` VALUES ('103', '22', '30102', '0');
INSERT INTO `authority_line` VALUES ('104', '6', '10000', '0');
INSERT INTO `authority_line` VALUES ('105', '6', '10101', '0');
INSERT INTO `authority_line` VALUES ('106', '6', '20000', '0');
INSERT INTO `authority_line` VALUES ('107', '6', '20101', '0');
INSERT INTO `authority_line` VALUES ('108', '6', '30000', '0');
INSERT INTO `authority_line` VALUES ('109', '6', '30102', '0');
INSERT INTO `authority_line` VALUES ('110', '23', '10000', '0');
INSERT INTO `authority_line` VALUES ('111', '23', '10101', '0');
INSERT INTO `authority_line` VALUES ('112', '23', '10102', '0');
INSERT INTO `authority_line` VALUES ('113', '23', '20000', '0');
INSERT INTO `authority_line` VALUES ('114', '23', '20101', '0');
INSERT INTO `authority_line` VALUES ('115', '23', '20102', '0');
INSERT INTO `authority_line` VALUES ('116', '23', '20103', '0');
INSERT INTO `authority_line` VALUES ('117', '23', '30105', '0');
INSERT INTO `authority_line` VALUES ('118', '23', '30106', '0');
INSERT INTO `authority_line` VALUES ('132', '25', '10000', '0');
INSERT INTO `authority_line` VALUES ('133', '25', '10102', '0');
INSERT INTO `authority_line` VALUES ('134', '25', '20000', '0');
INSERT INTO `authority_line` VALUES ('135', '25', '20101', '0');
INSERT INTO `authority_line` VALUES ('136', '25', '30000', '0');
INSERT INTO `authority_line` VALUES ('137', '25', '30101', '0');
INSERT INTO `authority_line` VALUES ('138', '26', '10000', '0');
INSERT INTO `authority_line` VALUES ('139', '26', '10101', '0');
INSERT INTO `authority_line` VALUES ('140', '26', '20000', '0');
INSERT INTO `authority_line` VALUES ('141', '26', '20101', '0');
INSERT INTO `authority_line` VALUES ('142', '26', '30000', '0');
INSERT INTO `authority_line` VALUES ('143', '26', '30101', '0');
INSERT INTO `authority_line` VALUES ('171', '27', '10000', '0');
INSERT INTO `authority_line` VALUES ('172', '27', '10101', '0');
INSERT INTO `authority_line` VALUES ('173', '27', '10102', '0');
INSERT INTO `authority_line` VALUES ('174', '27', '20000', '0');
INSERT INTO `authority_line` VALUES ('175', '27', '20101', '0');
INSERT INTO `authority_line` VALUES ('176', '27', '20102', '0');
INSERT INTO `authority_line` VALUES ('177', '27', '20103', '0');
INSERT INTO `authority_line` VALUES ('178', '27', '30105', '0');
INSERT INTO `authority_line` VALUES ('179', '27', '30000', '0');
INSERT INTO `authority_line` VALUES ('180', '27', '30101', '0');
INSERT INTO `authority_line` VALUES ('181', '27', '30102', '0');
INSERT INTO `authority_line` VALUES ('182', '27', '30103', '0');
INSERT INTO `authority_line` VALUES ('189', '28', '10000', '0');
INSERT INTO `authority_line` VALUES ('190', '28', '10101', '0');
INSERT INTO `authority_line` VALUES ('191', '28', '20000', '0');
INSERT INTO `authority_line` VALUES ('192', '28', '20102', '0');
INSERT INTO `authority_line` VALUES ('193', '28', '30000', '0');
INSERT INTO `authority_line` VALUES ('194', '28', '30102', '0');
INSERT INTO `authority_line` VALUES ('195', '29', '10000', '0');
INSERT INTO `authority_line` VALUES ('196', '29', '10101', '0');
INSERT INTO `authority_line` VALUES ('197', '29', '20000', '0');
INSERT INTO `authority_line` VALUES ('198', '29', '20101', '0');
INSERT INTO `authority_line` VALUES ('199', '29', '30000', '0');
INSERT INTO `authority_line` VALUES ('200', '29', '30101', '0');
INSERT INTO `authority_line` VALUES ('213', '30', '10000', '0');
INSERT INTO `authority_line` VALUES ('214', '30', '10101', '0');
INSERT INTO `authority_line` VALUES ('215', '30', '10102', '0');
INSERT INTO `authority_line` VALUES ('216', '30', '20000', '0');
INSERT INTO `authority_line` VALUES ('217', '30', '20101', '0');
INSERT INTO `authority_line` VALUES ('218', '30', '20102', '0');
INSERT INTO `authority_line` VALUES ('219', '30', '20103', '0');
INSERT INTO `authority_line` VALUES ('220', '30', '30105', '0');
INSERT INTO `authority_line` VALUES ('221', '30', '30106', '0');
INSERT INTO `authority_line` VALUES ('222', '30', '30000', '0');
INSERT INTO `authority_line` VALUES ('223', '30', '30102', '0');
INSERT INTO `authority_line` VALUES ('224', '30', '30107', '0');
INSERT INTO `authority_line` VALUES ('225', '24', '10000', '0');
INSERT INTO `authority_line` VALUES ('226', '24', '10101', '0');
INSERT INTO `authority_line` VALUES ('227', '24', '10102', '0');
INSERT INTO `authority_line` VALUES ('228', '24', '20000', '0');
INSERT INTO `authority_line` VALUES ('229', '24', '20101', '0');
INSERT INTO `authority_line` VALUES ('230', '24', '20102', '0');
INSERT INTO `authority_line` VALUES ('231', '24', '20103', '0');
INSERT INTO `authority_line` VALUES ('232', '24', '30105', '0');
INSERT INTO `authority_line` VALUES ('233', '24', '30106', '0');
INSERT INTO `authority_line` VALUES ('234', '24', '30000', '0');
INSERT INTO `authority_line` VALUES ('235', '24', '30102', '0');
INSERT INTO `authority_line` VALUES ('250', '31', '10000', '0');
INSERT INTO `authority_line` VALUES ('251', '31', '10101', '0');
INSERT INTO `authority_line` VALUES ('252', '31', '10102', '0');
INSERT INTO `authority_line` VALUES ('253', '31', '20000', '0');
INSERT INTO `authority_line` VALUES ('254', '31', '20101', '0');
INSERT INTO `authority_line` VALUES ('255', '31', '20102', '0');
INSERT INTO `authority_line` VALUES ('256', '31', '20103', '0');
INSERT INTO `authority_line` VALUES ('257', '31', '30105', '0');
INSERT INTO `authority_line` VALUES ('258', '31', '30108', '0');
INSERT INTO `authority_line` VALUES ('259', '31', '30000', '0');
INSERT INTO `authority_line` VALUES ('260', '31', '30101', '0');
INSERT INTO `authority_line` VALUES ('261', '31', '30102', '0');
INSERT INTO `authority_line` VALUES ('262', '31', '30103', '0');
INSERT INTO `authority_line` VALUES ('263', '31', '30107', '0');
INSERT INTO `authority_line` VALUES ('264', '32', '10000', '0');
INSERT INTO `authority_line` VALUES ('265', '32', '10101', '0');
INSERT INTO `authority_line` VALUES ('266', '32', '10102', '0');
INSERT INTO `authority_line` VALUES ('267', '32', '20000', '0');
INSERT INTO `authority_line` VALUES ('268', '32', '20101', '0');
INSERT INTO `authority_line` VALUES ('269', '32', '20102', '0');
INSERT INTO `authority_line` VALUES ('270', '32', '20103', '0');
INSERT INTO `authority_line` VALUES ('271', '32', '30105', '0');
INSERT INTO `authority_line` VALUES ('272', '32', '30108', '0');
INSERT INTO `authority_line` VALUES ('273', '32', '30000', '0');
INSERT INTO `authority_line` VALUES ('274', '32', '30101', '0');
INSERT INTO `authority_line` VALUES ('275', '32', '30102', '0');
INSERT INTO `authority_line` VALUES ('276', '32', '30103', '0');
INSERT INTO `authority_line` VALUES ('277', '32', '30107', '0');
INSERT INTO `authority_line` VALUES ('278', '33', '10000', '0');
INSERT INTO `authority_line` VALUES ('279', '33', '10101', '0');
INSERT INTO `authority_line` VALUES ('280', '33', '10102', '0');
INSERT INTO `authority_line` VALUES ('281', '33', '20000', '0');
INSERT INTO `authority_line` VALUES ('282', '33', '20101', '0');
INSERT INTO `authority_line` VALUES ('283', '33', '20102', '0');
INSERT INTO `authority_line` VALUES ('284', '33', '20103', '0');
INSERT INTO `authority_line` VALUES ('285', '33', '30105', '0');
INSERT INTO `authority_line` VALUES ('286', '33', '30108', '0');
INSERT INTO `authority_line` VALUES ('287', '33', '30000', '0');
INSERT INTO `authority_line` VALUES ('288', '33', '30101', '0');
INSERT INTO `authority_line` VALUES ('289', '33', '30102', '0');
INSERT INTO `authority_line` VALUES ('290', '33', '30103', '0');
INSERT INTO `authority_line` VALUES ('291', '33', '30107', '0');
INSERT INTO `authority_line` VALUES ('294', '34', '20000', '0');
INSERT INTO `authority_line` VALUES ('295', '34', '20101', '0');
INSERT INTO `authority_line` VALUES ('296', '34', '80000', '0');
INSERT INTO `authority_line` VALUES ('297', '34', '80001', '0');
INSERT INTO `authority_line` VALUES ('298', '34', '80002', '0');
INSERT INTO `authority_line` VALUES ('299', '34', '80003', '0');
INSERT INTO `authority_line` VALUES ('300', '34', '80004', '0');
INSERT INTO `authority_line` VALUES ('301', '34', '80005', '0');
INSERT INTO `authority_line` VALUES ('302', '34', '110012', '0');
INSERT INTO `authority_line` VALUES ('303', '34', '110013', '0');
INSERT INTO `authority_line` VALUES ('304', '34', '110014', '0');
INSERT INTO `authority_line` VALUES ('305', '34', '110015', '0');
INSERT INTO `authority_line` VALUES ('306', '35', '10000', '0');
INSERT INTO `authority_line` VALUES ('307', '35', '10101', '0');
INSERT INTO `authority_line` VALUES ('308', '35', '10102', '0');
INSERT INTO `authority_line` VALUES ('309', '35', '10103', '0');
INSERT INTO `authority_line` VALUES ('310', '35', '20000', '0');
INSERT INTO `authority_line` VALUES ('311', '35', '20101', '0');
INSERT INTO `authority_line` VALUES ('312', '35', '20102', '0');
INSERT INTO `authority_line` VALUES ('313', '35', '20103', '0');
INSERT INTO `authority_line` VALUES ('314', '35', '30105', '0');
INSERT INTO `authority_line` VALUES ('315', '35', '30108', '0');
INSERT INTO `authority_line` VALUES ('316', '35', '30000', '0');
INSERT INTO `authority_line` VALUES ('317', '35', '30101', '0');
INSERT INTO `authority_line` VALUES ('318', '35', '30102', '0');
INSERT INTO `authority_line` VALUES ('319', '35', '30103', '0');
INSERT INTO `authority_line` VALUES ('320', '35', '30107', '0');
INSERT INTO `authority_line` VALUES ('321', '35', '40000', '0');
INSERT INTO `authority_line` VALUES ('322', '35', '40102', '0');
INSERT INTO `authority_line` VALUES ('323', '35', '40103', '0');
INSERT INTO `authority_line` VALUES ('324', '35', '110002', '0');
INSERT INTO `authority_line` VALUES ('325', '35', '110003', '0');
INSERT INTO `authority_line` VALUES ('326', '35', '110004', '0');
INSERT INTO `authority_line` VALUES ('327', '35', '110005', '0');
INSERT INTO `authority_line` VALUES ('328', '35', '110006', '0');
INSERT INTO `authority_line` VALUES ('329', '35', '110009', '0');
INSERT INTO `authority_line` VALUES ('330', '35', '110011', '0');
INSERT INTO `authority_line` VALUES ('331', '35', '40101', '0');
INSERT INTO `authority_line` VALUES ('332', '35', '50000', '0');
INSERT INTO `authority_line` VALUES ('333', '35', '50101', '0');
INSERT INTO `authority_line` VALUES ('334', '35', '110007', '0');
INSERT INTO `authority_line` VALUES ('335', '35', '110008', '0');
INSERT INTO `authority_line` VALUES ('336', '35', '60000', '0');
INSERT INTO `authority_line` VALUES ('337', '35', '60101', '0');
INSERT INTO `authority_line` VALUES ('338', '35', '60102', '0');
INSERT INTO `authority_line` VALUES ('339', '35', '60103', '0');
INSERT INTO `authority_line` VALUES ('340', '35', '70000', '0');
INSERT INTO `authority_line` VALUES ('341', '35', '70101', '0');
INSERT INTO `authority_line` VALUES ('342', '35', '70102', '0');
INSERT INTO `authority_line` VALUES ('343', '35', '110010', '0');
INSERT INTO `authority_line` VALUES ('344', '35', '80000', '0');
INSERT INTO `authority_line` VALUES ('345', '35', '80001', '0');
INSERT INTO `authority_line` VALUES ('346', '35', '80002', '0');
INSERT INTO `authority_line` VALUES ('347', '35', '80003', '0');
INSERT INTO `authority_line` VALUES ('348', '35', '80004', '0');
INSERT INTO `authority_line` VALUES ('349', '35', '80005', '0');
INSERT INTO `authority_line` VALUES ('350', '35', '110012', '0');
INSERT INTO `authority_line` VALUES ('351', '35', '110013', '0');
INSERT INTO `authority_line` VALUES ('352', '35', '110014', '0');
INSERT INTO `authority_line` VALUES ('353', '35', '110015', '0');
INSERT INTO `authority_line` VALUES ('354', '35', '90000', '0');
INSERT INTO `authority_line` VALUES ('355', '35', '90001', '0');
INSERT INTO `authority_line` VALUES ('356', '35', '90002', '0');
INSERT INTO `authority_line` VALUES ('357', '36', '10000', '0');
INSERT INTO `authority_line` VALUES ('358', '36', '10101', '0');
INSERT INTO `authority_line` VALUES ('359', '36', '10102', '0');
INSERT INTO `authority_line` VALUES ('360', '36', '10103', '0');
INSERT INTO `authority_line` VALUES ('361', '36', '20000', '0');
INSERT INTO `authority_line` VALUES ('362', '36', '20101', '0');
INSERT INTO `authority_line` VALUES ('363', '36', '20102', '0');
INSERT INTO `authority_line` VALUES ('364', '36', '20103', '0');
INSERT INTO `authority_line` VALUES ('365', '36', '30105', '0');
INSERT INTO `authority_line` VALUES ('366', '36', '30108', '0');
INSERT INTO `authority_line` VALUES ('367', '36', '30000', '0');
INSERT INTO `authority_line` VALUES ('368', '36', '30101', '0');
INSERT INTO `authority_line` VALUES ('369', '36', '30102', '0');
INSERT INTO `authority_line` VALUES ('370', '36', '30103', '0');
INSERT INTO `authority_line` VALUES ('371', '36', '30107', '0');
INSERT INTO `authority_line` VALUES ('372', '36', '50000', '0');
INSERT INTO `authority_line` VALUES ('373', '36', '50101', '0');
INSERT INTO `authority_line` VALUES ('374', '36', '110007', '0');
INSERT INTO `authority_line` VALUES ('375', '36', '110008', '0');
INSERT INTO `authority_line` VALUES ('376', '37', '10000', '0');
INSERT INTO `authority_line` VALUES ('377', '37', '10101', '0');
INSERT INTO `authority_line` VALUES ('378', '37', '10102', '0');
INSERT INTO `authority_line` VALUES ('379', '37', '10103', '0');
INSERT INTO `authority_line` VALUES ('380', '37', '20000', '0');
INSERT INTO `authority_line` VALUES ('381', '37', '20101', '0');
INSERT INTO `authority_line` VALUES ('382', '37', '20102', '0');
INSERT INTO `authority_line` VALUES ('383', '37', '20103', '0');
INSERT INTO `authority_line` VALUES ('384', '37', '30105', '0');
INSERT INTO `authority_line` VALUES ('385', '37', '30108', '0');
INSERT INTO `authority_line` VALUES ('386', '37', '100000', '0');
INSERT INTO `authority_line` VALUES ('387', '37', '100001', '0');
INSERT INTO `authority_line` VALUES ('388', '37', '110000', '0');
INSERT INTO `authority_line` VALUES ('389', '37', '110001', '0');

-- ----------------------------
-- Table structure for `big_danger`
-- ----------------------------
DROP TABLE IF EXISTS `big_danger`;
CREATE TABLE `big_danger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `identify_material` varchar(50) DEFAULT NULL,
  `max_reserves` int(12) DEFAULT NULL,
  `is_del` int(1) DEFAULT NULL COMMENT '是否删除 0:未删除 1:已删除',
  `critical_reserves` int(12) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of big_danger
-- ----------------------------
INSERT INTO `big_danger` VALUES ('1', '5', '37', '1234', '0', '122', 'as12das123');
INSERT INTO `big_danger` VALUES ('2', '3', '24', '123', '0', '50', '啊是dads');
INSERT INTO `big_danger` VALUES ('3', '1', '1', '1233', '1', '123', 'as12das3asd');
INSERT INTO `big_danger` VALUES ('4', '2', '12', '123', '0', '23', '12asd');
INSERT INTO `big_danger` VALUES ('5', '8', '62', '12', '0', '10', '斯蒂芬森分');
INSERT INTO `big_danger` VALUES ('6', '3', '21', '1232', '1', '50', '阿斯顿阿实打实的');

-- ----------------------------
-- Table structure for `big_danger_info`
-- ----------------------------
DROP TABLE IF EXISTS `big_danger_info`;
CREATE TABLE `big_danger_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `danger_rank` varchar(50) DEFAULT NULL,
  `czrk` int(12) DEFAULT NULL,
  `emp_num` int(12) DEFAULT NULL,
  `is_warning` int(1) DEFAULT NULL,
  `qvalue` double(16,2) DEFAULT NULL,
  `main_danger` varchar(50) DEFAULT NULL,
  `lxr` varchar(50) DEFAULT NULL,
  `lxr_phone` varchar(50) DEFAULT NULL,
  `accident_prone` varchar(50) DEFAULT NULL,
  `safe_monitoring` varchar(500) DEFAULT NULL,
  `rvalue` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of big_danger_info
-- ----------------------------
INSERT INTO `big_danger_info` VALUES ('5', '2', '30', '321', '1', null, '0,1,2,3,4,5,8,11,14', '阿斯顿', '13635978861', '1,2,3,4,5,6,7,8,9,10,11,12,13,16,', 'a1sd2as1d123asd', '301');

-- ----------------------------
-- Table structure for `button_detail`
-- ----------------------------
DROP TABLE IF EXISTS `button_detail`;
CREATE TABLE `button_detail` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '按钮名称',
  `menu_id` int(10) DEFAULT NULL COMMENT '所属菜单',
  `type` int(1) DEFAULT NULL COMMENT '0 按钮 1总公司权限 2 分公司权限 3 本部门权限',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按钮属性';

-- ----------------------------
-- Records of button_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `certificate`
-- ----------------------------
DROP TABLE IF EXISTS `certificate`;
CREATE TABLE `certificate` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `certificate_no` varchar(100) DEFAULT NULL,
  `certificate_name` varchar(200) DEFAULT NULL,
  `begin_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `emp_id` varchar(12) DEFAULT NULL,
  `is_del` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of certificate
-- ----------------------------
INSERT INTO `certificate` VALUES ('1', '1', '1', '2018-01-01 00:00:00', '2018-12-31 00:00:00', '56', '0');
INSERT INTO `certificate` VALUES ('2', '2', '2', '2014-04-01 17:36:54', '2018-08-23 17:37:05', '57', '1');
INSERT INTO `certificate` VALUES ('3', '3', '3', '2010-02-01 17:37:31', '2020-08-24 17:39:04', '58', '0');
INSERT INTO `certificate` VALUES ('4', '阿斯顿2', '阿斯顿2', '2018-08-27 00:00:00', '2018-08-26 00:00:00', '108', '0');
INSERT INTO `certificate` VALUES ('5', '阿斯顿2', '阿斯顿2', '2017-05-23 00:00:00', '2018-09-01 00:00:00', '107', '0');
INSERT INTO `certificate` VALUES ('6', '123asd', '12asd', '2015-06-01 00:00:00', '2019-08-28 00:00:00', '107', '0');
INSERT INTO `certificate` VALUES ('7', '11111', '11111', '2018-07-30 00:00:00', '2018-08-26 00:00:00', '94', '0');
INSERT INTO `certificate` VALUES ('8', '11111', '111', '2018-08-27 00:00:00', '2018-08-30 00:00:00', '94', '0');

-- ----------------------------
-- Table structure for `classify`
-- ----------------------------
DROP TABLE IF EXISTS `classify`;
CREATE TABLE `classify` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `company_id` int(11) DEFAULT NULL COMMENT '隶属公司',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `states_flag` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='大类表';

-- ----------------------------
-- Records of classify
-- ----------------------------
INSERT INTO `classify` VALUES ('1', null, '大门口', '0');
INSERT INTO `classify` VALUES ('2', null, '开票房', '0');
INSERT INTO `classify` VALUES ('3', null, '二道门', '0');
INSERT INTO `classify` VALUES ('4', null, '地磅房', '0');
INSERT INTO `classify` VALUES ('5', null, '氮气装置', '0');
INSERT INTO `classify` VALUES ('6', null, '氯乙烯装车台', '0');
INSERT INTO `classify` VALUES ('7', null, 'T-101装车台', '0');
INSERT INTO `classify` VALUES ('8', null, 'T-102装车台', '0');
INSERT INTO `classify` VALUES ('9', null, 'T-103装车台', '0');
INSERT INTO `classify` VALUES ('10', null, 'T-104装车台', '0');
INSERT INTO `classify` VALUES ('11', null, 'T-105装车台', '0');
INSERT INTO `classify` VALUES ('12', null, 'T-106装车台', '0');
INSERT INTO `classify` VALUES ('13', null, 'T-107装车台', '0');
INSERT INTO `classify` VALUES ('14', null, 'T-109装车台', '0');
INSERT INTO `classify` VALUES ('15', null, 'T-110装车台', '0');
INSERT INTO `classify` VALUES ('16', null, 'T-201装车台', '0');
INSERT INTO `classify` VALUES ('17', null, 'T-202装车台', '0');
INSERT INTO `classify` VALUES ('18', null, 'T-203装车台', '0');
INSERT INTO `classify` VALUES ('19', null, 'T-204装车台', '0');
INSERT INTO `classify` VALUES ('20', null, 'T-205装车台', '0');
INSERT INTO `classify` VALUES ('21', null, 'T-206装车台', '0');
INSERT INTO `classify` VALUES ('22', null, 'T-207装车台', '0');
INSERT INTO `classify` VALUES ('23', null, 'T-208装车台', '0');
INSERT INTO `classify` VALUES ('24', null, 'T-209装车台', '0');
INSERT INTO `classify` VALUES ('25', null, 'T-210装车台', '0');
INSERT INTO `classify` VALUES ('26', null, 'T-301装车台', '0');
INSERT INTO `classify` VALUES ('27', null, 'T-302装车台', '0');
INSERT INTO `classify` VALUES ('28', null, 'T-303装车台', '0');
INSERT INTO `classify` VALUES ('29', null, 'V-01装车台', '0');
INSERT INTO `classify` VALUES ('30', null, 'V-02装车台', '0');
INSERT INTO `classify` VALUES ('31', null, 'V-03装车台', '0');
INSERT INTO `classify` VALUES ('32', null, '储罐区尾气回收装置', '0');
INSERT INTO `classify` VALUES ('33', null, 'V-01球罐', '0');
INSERT INTO `classify` VALUES ('34', null, 'V-01球罐罐顶', '0');
INSERT INTO `classify` VALUES ('35', null, 'V-02球罐', '0');
INSERT INTO `classify` VALUES ('36', null, 'V-02球罐罐顶', '0');
INSERT INTO `classify` VALUES ('37', null, 'V-03球罐', '0');
INSERT INTO `classify` VALUES ('38', null, 'V-03球罐罐顶', '0');
INSERT INTO `classify` VALUES ('39', null, '氯乙烯泵房', '0');
INSERT INTO `classify` VALUES ('40', null, '一号泵房', '0');
INSERT INTO `classify` VALUES ('41', null, '二号泵房', '0');
INSERT INTO `classify` VALUES ('42', null, 'T-101储罐', '0');
INSERT INTO `classify` VALUES ('43', null, 'T-102储罐', '0');
INSERT INTO `classify` VALUES ('44', null, 'T-103储罐', '0');
INSERT INTO `classify` VALUES ('45', null, 'T-104储罐', '0');
INSERT INTO `classify` VALUES ('46', null, 'T-105储罐', '0');
INSERT INTO `classify` VALUES ('47', null, 'T-106储罐', '0');
INSERT INTO `classify` VALUES ('48', null, 'T-107储罐', '0');
INSERT INTO `classify` VALUES ('49', null, 'T-108储罐', '0');
INSERT INTO `classify` VALUES ('50', null, 'T-109储罐', '0');
INSERT INTO `classify` VALUES ('51', null, 'T-110储罐', '0');
INSERT INTO `classify` VALUES ('52', null, 'T-201储罐', '0');
INSERT INTO `classify` VALUES ('53', null, 'T-202储罐', '0');
INSERT INTO `classify` VALUES ('54', null, 'T-203储罐', '0');
INSERT INTO `classify` VALUES ('55', null, 'T-204储罐', '0');
INSERT INTO `classify` VALUES ('56', null, 'T-205储罐', '0');
INSERT INTO `classify` VALUES ('57', null, 'T-206储罐', '0');
INSERT INTO `classify` VALUES ('58', null, 'T-207储罐', '0');
INSERT INTO `classify` VALUES ('59', null, 'T-208储罐', '0');
INSERT INTO `classify` VALUES ('60', null, 'T-209储罐', '0');
INSERT INTO `classify` VALUES ('61', null, 'T-210储罐', '0');
INSERT INTO `classify` VALUES ('62', null, 'T-301储罐', '0');
INSERT INTO `classify` VALUES ('63', null, 'T-302储罐', '0');
INSERT INTO `classify` VALUES ('64', null, 'T-303储罐', '0');
INSERT INTO `classify` VALUES ('65', null, 'T-501储罐', '0');
INSERT INTO `classify` VALUES ('66', null, 'T-502储罐', '0');
INSERT INTO `classify` VALUES ('67', null, 'T-101储罐罐顶', '0');
INSERT INTO `classify` VALUES ('68', null, 'T-102储罐罐顶', '0');
INSERT INTO `classify` VALUES ('69', null, 'T-103储罐罐顶', '0');
INSERT INTO `classify` VALUES ('70', null, 'T-104储罐罐顶', '0');
INSERT INTO `classify` VALUES ('71', null, 'T-105储罐罐顶', '0');
INSERT INTO `classify` VALUES ('72', null, 'T-106储罐罐顶', '0');
INSERT INTO `classify` VALUES ('73', null, 'T-107储罐罐顶', '0');
INSERT INTO `classify` VALUES ('74', null, 'T-108储罐罐顶', '0');
INSERT INTO `classify` VALUES ('75', null, 'T-109储罐罐顶', '0');
INSERT INTO `classify` VALUES ('76', null, 'T-110储罐罐顶', '0');
INSERT INTO `classify` VALUES ('77', null, 'T-201储罐罐顶', '0');
INSERT INTO `classify` VALUES ('78', null, 'T-202储罐罐顶', '0');
INSERT INTO `classify` VALUES ('79', null, 'T-203储罐罐顶', '0');
INSERT INTO `classify` VALUES ('80', null, 'T-204储罐罐顶', '0');
INSERT INTO `classify` VALUES ('81', null, 'T-205储罐罐顶', '0');
INSERT INTO `classify` VALUES ('82', null, 'T-206储罐罐顶', '0');
INSERT INTO `classify` VALUES ('83', null, 'T-207储罐罐顶', '0');
INSERT INTO `classify` VALUES ('84', null, 'T-208储罐罐顶', '0');
INSERT INTO `classify` VALUES ('85', null, 'T-209储罐罐顶', '0');
INSERT INTO `classify` VALUES ('86', null, 'T-210储罐罐顶', '0');
INSERT INTO `classify` VALUES ('87', null, 'T-301储罐罐顶', '0');
INSERT INTO `classify` VALUES ('88', null, 'T-302储罐罐顶', '0');
INSERT INTO `classify` VALUES ('89', null, 'T-303储罐罐顶', '0');
INSERT INTO `classify` VALUES ('90', null, 'T-501储罐罐顶', '0');
INSERT INTO `classify` VALUES ('91', null, 'T-502储罐罐顶', '0');
INSERT INTO `classify` VALUES ('92', null, '配管站', '0');
INSERT INTO `classify` VALUES ('93', null, '污水处理', '0');
INSERT INTO `classify` VALUES ('94', null, '消防水池', '0');
INSERT INTO `classify` VALUES ('95', null, '消防泵房', '0');
INSERT INTO `classify` VALUES ('96', null, '应急发电机', '0');
INSERT INTO `classify` VALUES ('97', null, '配电房', '0');
INSERT INTO `classify` VALUES ('98', null, '空压机房', '0');

-- ----------------------------
-- Table structure for `classif_line`
-- ----------------------------
DROP TABLE IF EXISTS `classif_line`;
CREATE TABLE `classif_line` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parent_id` int(11) DEFAULT NULL COMMENT '大类',
  `name` varchar(255) DEFAULT NULL COMMENT '小类名称',
  `states_flag` int(1) DEFAULT NULL,
  `result_type` varchar(5) DEFAULT '00000' COMMENT '文字 图片 音频 视频 打电话',
  `concat_name` varchar(50) DEFAULT NULL COMMENT '联系人',
  `concat_phone` varchar(20) DEFAULT NULL COMMENT '联系人手机号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1082 DEFAULT CHARSET=utf8 COMMENT='小分类集合';

-- ----------------------------
-- Records of classif_line
-- ----------------------------
INSERT INTO `classif_line` VALUES ('1', '1', '办公区电子栏杆是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('2', '1', '发货区电子栏杆是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('3', '1', '办公区电动伸缩门是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('4', '1', '发货区电动伸缩门是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('5', '1', '人员显示屏是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('6', '1', '安全教育显示屏是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('7', '1', '重点部位显示屏是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('8', '1', '扩音系统是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('9', '1', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('10', '1', '门卫室人员是否在岗', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('11', '1', '门卫室人员是否在做与工作无关的事情', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('12', '1', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('13', '2', '开票房人员是否在岗', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('14', '2', '开票室人员是否在做与工作无关的事情', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('15', '2', '开票室卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('16', '3', '翼闸是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('17', '3', '休息室卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('18', '4', '地磅上是否有异物', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('19', '4', '地磅房人员是否在岗', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('20', '4', '地磅房人员是否在做与工作无关的事情', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('21', '4', '地磅房及地磅卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('22', '5', '氮气液位是否在允许范围以内，数值是多少', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('23', '5', '氮气压力是否在允许范围以内，数值是多少', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('24', '5', '氮封缓冲罐的压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('25', '5', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('26', '5', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('27', '6', '鹤管是否就位', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('28', '6', '阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('29', '6', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('30', '6', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('31', '6', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('32', '6', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('33', '6', '静电接地报警装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('34', '6', '静电接地线是否摆放整齐', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('35', '6', '周边围墙是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('36', '6', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('37', '6', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('38', '7', '鹤管是否就位', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('39', '7', '阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('40', '7', '低点阀门是否关闭', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('41', '7', '过滤器阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('42', '7', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('43', '7', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('44', '7', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('45', '7', '管线是否存在涨液情况', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('46', '7', '管线压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('47', '7', '尾气装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('48', '7', '自动发货系统是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('49', '7', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('50', '7', '静电接地报警装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('51', '7', '静电接地线是否摆放整齐', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('52', '7', '洗眼器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('53', '7', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('54', '7', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('55', '7', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('56', '8', '鹤管是否就位', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('57', '8', '阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('58', '8', '低点阀门是否关闭', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('59', '8', '过滤器阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('60', '8', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('61', '8', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('62', '8', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('63', '8', '管线是否存在涨液情况', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('64', '8', '管线压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('65', '8', '尾气装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('66', '8', '自动发货系统是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('67', '8', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('68', '8', '静电接地报警装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('69', '8', '静电接地线是否摆放整齐', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('70', '8', '洗眼器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('71', '8', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('72', '8', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('73', '8', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('74', '9', '鹤管是否就位', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('75', '9', '阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('76', '9', '低点阀门是否关闭', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('77', '9', '过滤器阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('78', '9', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('79', '9', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('80', '9', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('81', '9', '管线是否存在涨液情况', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('82', '9', '管线压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('83', '9', '尾气装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('84', '9', '自动发货系统是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('85', '9', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('86', '9', '静电接地报警装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('87', '9', '静电接地线是否摆放整齐', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('88', '9', '洗眼器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('89', '9', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('90', '9', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('91', '9', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('92', '10', '鹤管是否就位', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('93', '10', '阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('94', '10', '低点阀门是否关闭', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('95', '10', '过滤器阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('96', '10', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('97', '10', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('98', '10', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('99', '10', '管线是否存在涨液情况', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('100', '10', '管线压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('101', '10', '尾气装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('102', '10', '自动发货系统是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('103', '10', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('104', '10', '静电接地报警装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('105', '10', '静电接地线是否摆放整齐', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('106', '10', '洗眼器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('107', '10', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('108', '10', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('109', '10', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('110', '11', '鹤管是否就位', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('111', '11', '阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('112', '11', '低点阀门是否关闭', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('113', '11', '过滤器阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('114', '11', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('115', '11', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('116', '11', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('117', '11', '管线是否存在涨液情况', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('118', '11', '管线压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('119', '11', '尾气装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('120', '11', '自动发货系统是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('121', '11', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('122', '11', '静电接地报警装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('123', '11', '静电接地线是否摆放整齐', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('124', '11', '洗眼器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('125', '11', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('126', '11', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('127', '11', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('128', '12', '鹤管是否就位', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('129', '12', '阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('130', '12', '低点阀门是否关闭', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('131', '12', '过滤器阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('132', '12', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('133', '12', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('134', '12', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('135', '12', '管线是否存在涨液情况', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('136', '12', '管线压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('137', '12', '尾气装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('138', '12', '自动发货系统是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('139', '12', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('140', '12', '静电接地报警装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('141', '12', '静电接地线是否摆放整齐', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('142', '12', '洗眼器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('143', '12', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('144', '12', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('145', '12', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('146', '13', '鹤管是否就位', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('147', '13', '阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('148', '13', '低点阀门是否关闭', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('149', '13', '过滤器阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('150', '13', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('151', '13', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('152', '13', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('153', '13', '管线是否存在涨液情况', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('154', '13', '管线压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('155', '13', '尾气装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('156', '13', '自动发货系统是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('157', '13', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('158', '13', '静电接地报警装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('159', '13', '静电接地线是否摆放整齐', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('160', '13', '洗眼器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('161', '13', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('162', '13', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('163', '13', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('164', '14', '鹤管是否就位', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('165', '14', '阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('166', '14', '低点阀门是否关闭', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('167', '14', '过滤器阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('168', '14', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('169', '14', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('170', '14', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('171', '14', '管线是否存在涨液情况', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('172', '14', '管线压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('173', '14', '尾气装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('174', '14', '自动发货系统是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('175', '14', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('176', '14', '静电接地报警装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('177', '14', '静电接地线是否摆放整齐', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('178', '14', '洗眼器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('179', '14', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('180', '14', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('181', '14', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('182', '15', '鹤管是否就位', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('183', '15', '阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('184', '15', '低点阀门是否关闭', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('185', '15', '过滤器阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('186', '15', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('187', '15', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('188', '15', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('189', '15', '管线是否存在涨液情况', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('190', '15', '管线压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('191', '15', '尾气装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('192', '15', '自动发货系统是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('193', '15', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('194', '15', '静电接地报警装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('195', '15', '静电接地线是否摆放整齐', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('196', '15', '洗眼器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('197', '15', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('198', '15', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('199', '15', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('200', '16', '鹤管是否就位', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('201', '16', '阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('202', '16', '低点阀门是否关闭', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('203', '16', '过滤器阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('204', '16', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('205', '16', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('206', '16', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('207', '16', '管线是否存在涨液情况', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('208', '16', '管线压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('209', '16', '尾气装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('210', '16', '自动发货系统是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('211', '16', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('212', '16', '静电接地报警装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('213', '16', '静电接地线是否摆放整齐', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('214', '16', '洗眼器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('215', '16', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('216', '16', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('217', '16', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('218', '17', '鹤管是否就位', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('219', '17', '阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('220', '17', '低点阀门是否关闭', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('221', '17', '过滤器阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('222', '17', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('223', '17', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('224', '17', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('225', '17', '管线是否存在涨液情况', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('226', '17', '管线压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('227', '17', '尾气装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('228', '17', '自动发货系统是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('229', '17', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('230', '17', '静电接地报警装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('231', '17', '静电接地线是否摆放整齐', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('232', '17', '洗眼器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('233', '17', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('234', '17', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('235', '17', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('236', '18', '鹤管是否就位', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('237', '18', '阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('238', '18', '低点阀门是否关闭', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('239', '18', '过滤器阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('240', '18', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('241', '18', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('242', '18', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('243', '18', '管线是否存在涨液情况', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('244', '18', '管线压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('245', '18', '尾气装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('246', '18', '自动发货系统是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('247', '18', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('248', '18', '静电接地报警装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('249', '18', '静电接地线是否摆放整齐', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('250', '18', '洗眼器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('251', '18', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('252', '18', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('253', '18', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('254', '19', '鹤管是否就位', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('255', '19', '阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('256', '19', '低点阀门是否关闭', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('257', '19', '过滤器阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('258', '19', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('259', '19', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('260', '19', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('261', '19', '管线是否存在涨液情况', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('262', '19', '管线压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('263', '19', '尾气装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('264', '19', '自动发货系统是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('265', '19', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('266', '19', '静电接地报警装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('267', '19', '静电接地线是否摆放整齐', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('268', '19', '洗眼器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('269', '19', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('270', '19', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('271', '19', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('272', '20', '鹤管是否就位', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('273', '20', '阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('274', '20', '低点阀门是否关闭', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('275', '20', '过滤器阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('276', '20', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('277', '20', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('278', '20', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('279', '20', '管线是否存在涨液情况', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('280', '20', '管线压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('281', '20', '尾气装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('282', '20', '自动发货系统是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('283', '20', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('284', '20', '静电接地报警装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('285', '20', '静电接地线是否摆放整齐', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('286', '20', '洗眼器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('287', '20', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('288', '20', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('289', '20', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('290', '21', '鹤管是否就位', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('291', '21', '阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('292', '21', '低点阀门是否关闭', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('293', '21', '过滤器阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('294', '21', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('295', '21', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('296', '21', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('297', '21', '管线是否存在涨液情况', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('298', '21', '管线压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('299', '21', '尾气装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('300', '21', '自动发货系统是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('301', '21', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('302', '21', '静电接地报警装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('303', '21', '静电接地线是否摆放整齐', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('304', '21', '洗眼器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('305', '21', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('306', '21', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('307', '21', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('308', '22', '鹤管是否就位', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('309', '22', '阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('310', '22', '低点阀门是否关闭', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('311', '22', '过滤器阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('312', '22', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('313', '22', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('314', '22', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('315', '22', '管线是否存在涨液情况', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('316', '22', '管线压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('317', '22', '尾气装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('318', '22', '自动发货系统是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('319', '22', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('320', '22', '静电接地报警装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('321', '22', '静电接地线是否摆放整齐', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('322', '22', '洗眼器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('323', '22', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('324', '22', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('325', '22', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('326', '23', '鹤管是否就位', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('327', '23', '阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('328', '23', '低点阀门是否关闭', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('329', '23', '过滤器阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('330', '23', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('331', '23', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('332', '23', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('333', '23', '管线是否存在涨液情况', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('334', '23', '管线压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('335', '23', '尾气装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('336', '23', '自动发货系统是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('337', '23', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('338', '23', '静电接地报警装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('339', '23', '静电接地线是否摆放整齐', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('340', '23', '洗眼器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('341', '23', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('342', '23', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('343', '23', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('344', '24', '鹤管是否就位', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('345', '24', '阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('346', '24', '低点阀门是否关闭', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('347', '24', '过滤器阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('348', '24', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('349', '24', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('350', '24', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('351', '24', '管线是否存在涨液情况', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('352', '24', '管线压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('353', '24', '尾气装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('354', '24', '自动发货系统是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('355', '24', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('356', '24', '静电接地报警装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('357', '24', '静电接地线是否摆放整齐', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('358', '24', '洗眼器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('359', '24', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('360', '24', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('361', '24', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('362', '25', '鹤管是否就位', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('363', '25', '阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('364', '25', '低点阀门是否关闭', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('365', '25', '过滤器阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('366', '25', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('367', '25', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('368', '25', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('369', '25', '管线是否存在涨液情况', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('370', '25', '管线压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('371', '25', '尾气装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('372', '25', '自动发货系统是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('373', '25', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('374', '25', '静电接地报警装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('375', '25', '静电接地线是否摆放整齐', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('376', '25', '洗眼器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('377', '25', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('378', '25', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('379', '25', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('380', '26', '鹤管是否就位', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('381', '26', '阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('382', '26', '低点阀门是否关闭', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('383', '26', '过滤器阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('384', '26', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('385', '26', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('386', '26', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('387', '26', '管线是否存在涨液情况', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('388', '26', '管线压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('389', '26', '尾气装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('390', '26', '自动发货系统是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('391', '26', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('392', '26', '静电接地报警装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('393', '26', '静电接地线是否摆放整齐', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('394', '26', '洗眼器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('395', '26', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('396', '26', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('397', '26', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('398', '27', '鹤管是否就位', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('399', '27', '阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('400', '27', '低点阀门是否关闭', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('401', '27', '过滤器阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('402', '27', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('403', '27', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('404', '27', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('405', '27', '管线是否存在涨液情况', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('406', '27', '管线压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('407', '27', '尾气装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('408', '27', '自动发货系统是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('409', '27', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('410', '27', '静电接地报警装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('411', '27', '静电接地线是否摆放整齐', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('412', '27', '洗眼器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('413', '27', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('414', '27', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('415', '27', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('416', '28', '鹤管是否就位', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('417', '28', '阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('418', '28', '低点阀门是否关闭', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('419', '28', '过滤器阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('420', '28', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('421', '28', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('422', '28', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('423', '28', '管线是否存在涨液情况', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('424', '28', '管线压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('425', '28', '尾气装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('426', '28', '自动发货系统是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('427', '28', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('428', '28', '静电接地报警装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('429', '28', '静电接地线是否摆放整齐', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('430', '28', '洗眼器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('431', '28', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('432', '28', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('433', '28', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('434', '29', '鹤管是否就位', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('435', '29', '阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('436', '29', '低点阀门是否关闭', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('437', '29', '过滤器阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('438', '29', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('439', '29', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('440', '29', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('441', '29', '管线是否存在涨液情况', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('442', '29', '管线压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('443', '29', '尾气装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('444', '29', '自动发货系统是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('445', '29', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('446', '29', '静电接地报警装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('447', '29', '静电接地线是否摆放整齐', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('448', '29', '洗眼器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('449', '29', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('450', '29', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('451', '29', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('452', '30', '鹤管是否就位', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('453', '30', '阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('454', '30', '低点阀门是否关闭', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('455', '30', '过滤器阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('456', '30', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('457', '30', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('458', '30', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('459', '30', '管线是否存在涨液情况', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('460', '30', '管线压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('461', '30', '尾气装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('462', '30', '自动发货系统是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('463', '30', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('464', '30', '静电接地报警装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('465', '30', '静电接地线是否摆放整齐', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('466', '30', '洗眼器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('467', '30', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('468', '30', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('469', '30', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('470', '31', '鹤管是否就位', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('471', '31', '阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('472', '31', '低点阀门是否关闭', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('473', '31', '过滤器阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('474', '31', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('475', '31', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('476', '31', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('477', '31', '管线是否存在涨液情况', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('478', '31', '管线压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('479', '31', '尾气装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('480', '31', '自动发货系统是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('481', '31', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('482', '31', '静电接地报警装置是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('483', '31', '静电接地线是否摆放整齐', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('484', '31', '洗眼器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('485', '31', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('486', '31', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('487', '31', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('488', '32', '设备是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('489', '33', '液相压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('490', '33', '进出货管线阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('491', '33', '液相液位是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('492', '33', '液相温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('493', '33', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('494', '33', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('495', '33', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('496', '33', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('497', '33', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('498', '33', '过路管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('499', '33', '周边围墙是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('500', '33', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('501', '33', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('502', '34', '安全阀状态是否在校验有效期内', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('503', '34', '阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('504', '34', '气相压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('505', '34', '气相温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('506', '34', '喷淋装置是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('507', '34', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('508', '34', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('509', '34', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('510', '35', '液相压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('511', '35', '进出货管线阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('512', '35', '液相液位是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('513', '35', '液相温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('514', '35', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('515', '35', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('516', '35', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('517', '35', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('518', '35', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('519', '35', '过路管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('520', '35', '周边围墙是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('521', '35', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('522', '35', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('523', '36', '安全阀状态是否在校验有效期内', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('524', '36', '阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('525', '36', '气相压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('526', '36', '气相温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('527', '36', '喷淋装置是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('528', '36', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('529', '36', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('530', '36', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('531', '37', '液相压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('532', '37', '进出货管线阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('533', '37', '液相液位是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('534', '37', '液相温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('535', '37', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('536', '37', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('537', '37', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('538', '37', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('539', '37', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('540', '37', '过路管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('541', '37', '周边围墙是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('542', '37', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('543', '37', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('544', '38', '安全阀状态是否在校验有效期内', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('545', '38', '阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('546', '38', '气相压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('547', '38', '气相温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('548', '38', '喷淋装置是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('549', '38', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('550', '38', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('551', '38', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('552', '39', '一号装车泵是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('553', '39', '二号装车泵是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('554', '39', '三号装车泵是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('555', '39', '压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('556', '39', '阀门组是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('557', '39', '泵尾循环状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('558', '39', '缓冲罐压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('559', '39', '缓冲罐安全阀是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('560', '39', '压缩机压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('561', '39', '压缩机油位是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('562', '39', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('563', '39', '洗眼器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('564', '39', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('565', '39', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('566', '39', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('567', '39', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('568', '39', '沿途管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('569', '39', '周边围墙是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('570', '39', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('571', '39', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('572', '40', 'T-201泵及阀门组是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('573', '40', 'T-202泵及阀门组是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('574', '40', 'T-203泵及阀门组是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('575', '40', 'T-204泵及阀门组是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('576', '40', 'T-205泵及阀门组是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('577', '40', 'T-206泵及阀门组是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('578', '40', 'T-207泵及阀门组是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('579', '40', 'T-208泵及阀门组是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('580', '40', 'T-209泵及阀门组是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('581', '40', 'T-210泵及阀门组是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('582', '40', 'T-302泵及阀门组是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('583', '40', 'T-303泵及阀门组是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('584', '40', '装船泵1#是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('585', '40', '装船泵2#是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('586', '40', '备用泵1#是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('587', '40', '备用泵2#是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('588', '40', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('589', '40', '洗眼器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('590', '40', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('591', '40', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('592', '40', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('593', '40', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('594', '40', '管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('595', '40', '周边围墙是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('596', '40', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('597', '40', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('598', '41', 'T-201泵及阀门组是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('599', '41', 'T-202泵及阀门组是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('600', '41', 'T-203泵及阀门组是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('601', '41', 'T-204泵及阀门组是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('602', '41', 'T-205泵及阀门组是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('603', '41', 'T-206泵及阀门组是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('604', '41', 'T-207泵及阀门组是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('605', '41', 'T-208泵及阀门组是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('606', '41', 'T-209泵及阀门组是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('607', '41', 'T-210泵及阀门组是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('608', '41', 'T-302泵及阀门组是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('609', '41', 'T-303泵及阀门组是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('610', '41', '装船泵1#是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('611', '41', '装船泵2#是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('612', '41', '备用泵1#是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('613', '41', '备用泵2#是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('614', '41', '可燃、有毒气体探测器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('615', '41', '洗眼器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('616', '41', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('617', '41', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('618', '41', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('619', '41', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('620', '41', '管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('621', '41', '周边围墙是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('622', '41', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('623', '41', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('624', '42', '液位、压力、温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('625', '42', '罐根阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('626', '42', '紧急切断阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('627', '42', '罐基础状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('628', '42', '保温罐保温是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('629', '42', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('630', '42', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('631', '42', '管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('632', '42', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('633', '42', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('634', '43', '液位、压力、温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('635', '43', '罐根阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('636', '43', '紧急切断阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('637', '43', '罐基础状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('638', '43', '保温罐保温是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('639', '43', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('640', '43', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('641', '43', '管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('642', '43', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('643', '43', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('644', '44', '液位、压力、温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('645', '44', '罐根阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('646', '44', '紧急切断阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('647', '44', '罐基础状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('648', '44', '保温罐保温是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('649', '44', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('650', '44', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('651', '44', '管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('652', '44', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('653', '44', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('654', '45', '液位、压力、温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('655', '45', '罐根阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('656', '45', '紧急切断阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('657', '45', '罐基础状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('658', '45', '保温罐保温是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('659', '45', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('660', '45', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('661', '45', '管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('662', '45', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('663', '45', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('664', '46', '液位、压力、温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('665', '46', '罐根阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('666', '46', '紧急切断阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('667', '46', '罐基础状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('668', '46', '保温罐保温是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('669', '46', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('670', '46', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('671', '46', '管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('672', '46', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('673', '46', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('674', '47', '液位、压力、温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('675', '47', '罐根阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('676', '47', '紧急切断阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('677', '47', '罐基础状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('678', '47', '保温罐保温是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('679', '47', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('680', '47', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('681', '47', '管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('682', '47', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('683', '47', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('684', '48', '液位、压力、温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('685', '48', '罐根阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('686', '48', '紧急切断阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('687', '48', '罐基础状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('688', '48', '保温罐保温是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('689', '48', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('690', '48', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('691', '48', '管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('692', '48', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('693', '48', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('694', '49', '液位、压力、温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('695', '49', '罐根阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('696', '49', '紧急切断阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('697', '49', '罐基础状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('698', '49', '保温罐保温是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('699', '49', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('700', '49', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('701', '49', '管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('702', '49', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('703', '49', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('704', '50', '液位、压力、温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('705', '50', '罐根阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('706', '50', '紧急切断阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('707', '50', '罐基础状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('708', '50', '保温罐保温是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('709', '50', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('710', '50', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('711', '50', '管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('712', '50', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('713', '50', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('714', '51', '液位、压力、温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('715', '51', '罐根阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('716', '51', '紧急切断阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('717', '51', '罐基础状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('718', '51', '保温罐保温是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('719', '51', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('720', '51', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('721', '51', '管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('722', '51', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('723', '51', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('724', '52', '液位、压力、温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('725', '52', '罐根阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('726', '52', '紧急切断阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('727', '52', '罐基础状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('728', '52', '保温罐保温是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('729', '52', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('730', '52', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('731', '52', '管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('732', '52', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('733', '52', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('734', '53', '液位、压力、温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('735', '53', '罐根阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('736', '53', '紧急切断阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('737', '53', '罐基础状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('738', '53', '保温罐保温是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('739', '53', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('740', '53', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('741', '53', '管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('742', '53', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('743', '53', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('744', '54', '液位、压力、温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('745', '54', '罐根阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('746', '54', '紧急切断阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('747', '54', '罐基础状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('748', '54', '保温罐保温是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('749', '54', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('750', '54', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('751', '54', '管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('752', '54', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('753', '54', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('754', '55', '液位、压力、温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('755', '55', '罐根阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('756', '55', '紧急切断阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('757', '55', '罐基础状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('758', '55', '保温罐保温是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('759', '55', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('760', '55', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('761', '55', '管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('762', '55', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('763', '55', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('764', '56', '液位、压力、温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('765', '56', '罐根阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('766', '56', '紧急切断阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('767', '56', '罐基础状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('768', '56', '保温罐保温是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('769', '56', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('770', '56', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('771', '56', '管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('772', '56', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('773', '56', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('774', '57', '液位、压力、温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('775', '57', '罐根阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('776', '57', '紧急切断阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('777', '57', '罐基础状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('778', '57', '保温罐保温是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('779', '57', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('780', '57', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('781', '57', '管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('782', '57', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('783', '57', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('784', '58', '液位、压力、温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('785', '58', '罐根阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('786', '58', '紧急切断阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('787', '58', '罐基础状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('788', '58', '保温罐保温是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('789', '58', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('790', '58', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('791', '58', '管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('792', '58', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('793', '58', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('794', '59', '液位、压力、温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('795', '59', '罐根阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('796', '59', '紧急切断阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('797', '59', '罐基础状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('798', '59', '保温罐保温是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('799', '59', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('800', '59', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('801', '59', '管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('802', '59', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('803', '59', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('804', '60', '液位、压力、温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('805', '60', '罐根阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('806', '60', '紧急切断阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('807', '60', '罐基础状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('808', '60', '保温罐保温是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('809', '60', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('810', '60', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('811', '60', '管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('812', '60', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('813', '60', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('814', '61', '液位、压力、温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('815', '61', '罐根阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('816', '61', '紧急切断阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('817', '61', '罐基础状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('818', '61', '保温罐保温是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('819', '61', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('820', '61', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('821', '61', '管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('822', '61', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('823', '61', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('824', '62', '液位、压力、温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('825', '62', '罐根阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('826', '62', '紧急切断阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('827', '62', '罐基础状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('828', '62', '保温罐保温是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('829', '62', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('830', '62', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('831', '62', '管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('832', '62', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('833', '62', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('834', '63', '液位、压力、温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('835', '63', '罐根阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('836', '63', '紧急切断阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('837', '63', '罐基础状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('838', '63', '保温罐保温是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('839', '63', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('840', '63', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('841', '63', '管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('842', '63', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('843', '63', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('844', '64', '液位、压力、温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('845', '64', '罐根阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('846', '64', '紧急切断阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('847', '64', '罐基础状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('848', '64', '保温罐保温是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('849', '64', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('850', '64', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('851', '64', '管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('852', '64', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('853', '64', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('854', '65', '液位、压力、温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('855', '65', '罐根阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('856', '65', '紧急切断阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('857', '65', '罐基础状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('858', '65', '保温罐保温是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('859', '65', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('860', '65', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('861', '65', '管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('862', '65', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('863', '65', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('864', '66', '液位、压力、温度是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('865', '66', '罐根阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('866', '66', '紧急切断阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('867', '66', '罐基础状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('868', '66', '保温罐保温是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('869', '66', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('870', '66', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('871', '66', '管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('872', '66', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('873', '66', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('874', '67', '呼吸阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('875', '67', '喷淋装置状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('876', '67', '光孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('877', '67', '量油孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('878', '67', '泡沫发生器状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('879', '67', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('880', '68', '呼吸阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('881', '68', '喷淋装置状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('882', '68', '光孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('883', '68', '量油孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('884', '68', '泡沫发生器状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('885', '68', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('886', '69', '呼吸阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('887', '69', '喷淋装置状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('888', '69', '光孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('889', '69', '量油孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('890', '69', '泡沫发生器状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('891', '69', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('892', '70', '呼吸阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('893', '70', '喷淋装置状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('894', '70', '光孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('895', '70', '量油孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('896', '70', '泡沫发生器状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('897', '70', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('898', '71', '呼吸阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('899', '71', '喷淋装置状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('900', '71', '光孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('901', '71', '量油孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('902', '71', '泡沫发生器状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('903', '71', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('904', '72', '呼吸阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('905', '72', '喷淋装置状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('906', '72', '光孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('907', '72', '量油孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('908', '72', '泡沫发生器状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('909', '72', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('910', '73', '呼吸阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('911', '73', '喷淋装置状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('912', '73', '光孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('913', '73', '量油孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('914', '73', '泡沫发生器状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('915', '73', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('916', '74', '呼吸阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('917', '74', '喷淋装置状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('918', '74', '光孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('919', '74', '量油孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('920', '74', '泡沫发生器状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('921', '74', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('922', '75', '呼吸阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('923', '75', '喷淋装置状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('924', '75', '光孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('925', '75', '量油孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('926', '75', '泡沫发生器状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('927', '75', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('928', '76', '呼吸阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('929', '76', '喷淋装置状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('930', '76', '光孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('931', '76', '量油孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('932', '76', '泡沫发生器状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('933', '76', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('934', '77', '呼吸阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('935', '77', '喷淋装置状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('936', '77', '光孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('937', '77', '量油孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('938', '77', '泡沫发生器状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('939', '77', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('940', '78', '呼吸阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('941', '78', '喷淋装置状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('942', '78', '光孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('943', '78', '量油孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('944', '78', '泡沫发生器状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('945', '78', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('946', '79', '呼吸阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('947', '79', '喷淋装置状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('948', '79', '光孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('949', '79', '量油孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('950', '79', '泡沫发生器状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('951', '79', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('952', '80', '呼吸阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('953', '80', '喷淋装置状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('954', '80', '光孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('955', '80', '量油孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('956', '80', '泡沫发生器状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('957', '80', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('958', '81', '呼吸阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('959', '81', '喷淋装置状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('960', '81', '光孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('961', '81', '量油孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('962', '81', '泡沫发生器状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('963', '81', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('964', '82', '呼吸阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('965', '82', '喷淋装置状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('966', '82', '光孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('967', '82', '量油孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('968', '82', '泡沫发生器状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('969', '82', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('970', '83', '呼吸阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('971', '83', '喷淋装置状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('972', '83', '光孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('973', '83', '量油孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('974', '83', '泡沫发生器状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('975', '83', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('976', '84', '呼吸阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('977', '84', '喷淋装置状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('978', '84', '光孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('979', '84', '量油孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('980', '84', '泡沫发生器状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('981', '84', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('982', '85', '呼吸阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('983', '85', '喷淋装置状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('984', '85', '光孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('985', '85', '量油孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('986', '85', '泡沫发生器状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('987', '85', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('988', '86', '呼吸阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('989', '86', '喷淋装置状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('990', '86', '光孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('991', '86', '量油孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('992', '86', '泡沫发生器状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('993', '86', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('994', '87', '呼吸阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('995', '87', '喷淋装置状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('996', '87', '光孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('997', '87', '量油孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('998', '87', '泡沫发生器状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('999', '87', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1000', '88', '呼吸阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1001', '88', '喷淋装置状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1002', '88', '光孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1003', '88', '量油孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1004', '88', '泡沫发生器状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1005', '88', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1006', '89', '呼吸阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1007', '89', '喷淋装置状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1008', '89', '光孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1009', '89', '量油孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1010', '89', '泡沫发生器状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1011', '89', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1012', '90', '呼吸阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1013', '90', '喷淋装置状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1014', '90', '光孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1015', '90', '量油孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1016', '90', '泡沫发生器状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1017', '90', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1018', '91', '呼吸阀状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1019', '91', '喷淋装置状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1020', '91', '光孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1021', '91', '量油孔状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1022', '91', '泡沫发生器状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1023', '91', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1024', '92', '外管线阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1025', '92', '内管线阀门状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1026', '92', '收球器是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1027', '92', '排污口状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1028', '92', '扫球供气管线是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1029', '92', '终端盲板是否封堵', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1030', '92', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1031', '92', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1032', '92', '沿途管线是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1033', '92', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1034', '92', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1035', '92', '冷冻机状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1036', '92', '配电柜是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1037', '92', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1038', '92', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1039', '92', '电气线路是否防爆、老化', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1040', '92', '冷却水塔是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1041', '92', '水箱水位是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1042', '92', '循环泵状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1043', '92', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1044', '92', '周边围墙是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1045', '93', '处理装置运行是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1046', '93', '雨污水收集池液位是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1047', '93', '雨水排放口状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1048', '93', '周边围墙是否异常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1049', '94', '水位是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1050', '94', '消防泵的状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1051', '94', '缓冲罐安全阀是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1052', '94', '缓冲罐压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1053', '94', '配电柜是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1054', '94', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1055', '94', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1056', '95', '消防泵状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1057', '95', '稳压泵状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1058', '95', '泡沫发生器状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1059', '95', '泡沫泵状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1060', '95', '阀门组是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1061', '95', '所有连接螺栓是否齐全、紧固', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1062', '95', '静电接地及跨接是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1063', '95', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1064', '96', '蓄电池电量是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1065', '96', '发电机油位是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1066', '96', '发电机机油是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1067', '96', '发电机水箱水位是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1068', '96', '配电柜是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1069', '96', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1070', '97', '高压配电柜是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1071', '97', '低压配电柜是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1072', '97', '应急灯状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1073', '97', '人员是否在岗', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1074', '97', '人员是否在做与工作无关的事情', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1075', '97', '卫生是否整洁', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1076', '97', '灭火器及消防栓是否完好', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1077', '98', '空压机状态是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1078', '98', '缓冲罐安全阀是否在校验有效期内', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1079', '98', '缓冲罐压力是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1080', '98', '阀门组是否正常', '0', '11000', null, null);
INSERT INTO `classif_line` VALUES ('1081', '98', '卫生是否整洁', '0', '11000', null, null);

-- ----------------------------
-- Table structure for `company`
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '创建人编号',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `logo` varchar(255) DEFAULT NULL COMMENT 'logo',
  `back_img` varchar(255) DEFAULT NULL COMMENT '后台背景图片',
  `app_imgs` varchar(500) DEFAULT NULL COMMENT '移动端图片',
  `manager_phone` varchar(255) DEFAULT NULL COMMENT '管理员手机号码',
  `create_id` int(10) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_create_id` int(10) DEFAULT NULL COMMENT '修改人编号',
  `last_create_time` datetime DEFAULT NULL COMMENT '修改时间',
  `url` varchar(50) DEFAULT NULL COMMENT '独立访问地址',
  `states_flag` int(2) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COMMENT='公司表';

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('63', '双志储运', null, null, '\\imgs_msgy\\upload\\sos\\png\\201808270808342434.png,\\imgs_msgy\\upload\\sos\\png\\201808270808433629.png,\\imgs_msgy\\upload\\sos\\png\\201808270808502328.png', '13813881388', null, '2018-07-16 21:33:29', null, '2018-08-27 20:10:19', 'cz', '0');

-- ----------------------------
-- Table structure for `company_detail`
-- ----------------------------
DROP TABLE IF EXISTS `company_detail`;
CREATE TABLE `company_detail` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `build_time` datetime DEFAULT NULL,
  `register_add` varchar(200) DEFAULT NULL,
  `postcode` varchar(30) DEFAULT NULL,
  `work_add` varchar(200) DEFAULT NULL,
  `w_postcode` varchar(30) DEFAULT NULL,
  `principal` varchar(50) DEFAULT NULL,
  `p_phone` varchar(50) DEFAULT NULL,
  `register_type` varchar(50) DEFAULT NULL,
  `trade_type` varchar(50) DEFAULT NULL,
  `main_unit` varchar(50) DEFAULT NULL,
  `output_rmb` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `is_manager` varchar(50) DEFAULT NULL,
  `sanitary_control` varchar(50) DEFAULT NULL,
  `s_principal` varchar(50) DEFAULT NULL,
  `s_phone` varchar(20) DEFAULT NULL,
  `s_num` varchar(12) DEFAULT NULL,
  `s_apply_type` varchar(50) DEFAULT NULL,
  `s_change_reason` varchar(50) DEFAULT NULL,
  `work_num` int(12) DEFAULT NULL,
  `w_female` int(12) DEFAULT NULL,
  `w_peasant` int(12) DEFAULT NULL,
  `touch_disease` int(12) DEFAULT NULL,
  `t_female` int(12) DEFAULT NULL,
  `t_peasant` int(12) DEFAULT NULL,
  `attend_cultivate` int(12) DEFAULT NULL,
  `disease_count` int(12) DEFAULT NULL,
  `add_count` int(12) DEFAULT NULL,
  `suspected_count` int(12) DEFAULT NULL,
  `tjgq_count` int(12) DEFAULT NULL,
  `tjgz_count` int(12) DEFAULT NULL,
  `tjlz_count` int(12) DEFAULT NULL,
  `pic` varchar(200) DEFAULT NULL,
  `is_del` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_detail
-- ----------------------------
INSERT INTO `company_detail` VALUES ('5', '常州市双志石油化工储运有限公司a', '2019-01-24 00:00:00', '新北区春江镇圩塘江花路18号说a啊啊', '213033', '新北区春江镇圩塘江花路18号啊', '213033', '卓祖宏a', '13915842672', '有限责任公司', '化工', '政府', '7040', '73422', '有', '安全部', '镇向红', '13915842672', '23', '申报', '职场改建', '50', '2', '30', '50', '1', '50', '20', '50', '30', '12', '50', '60', '60', '\\\\files\\upload\\png\\(201808010503486771)a.png', '0');

-- ----------------------------
-- Table structure for `console_menu`
-- ----------------------------
DROP TABLE IF EXISTS `console_menu`;
CREATE TABLE `console_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(20) NOT NULL COMMENT '菜单名称',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父级菜单ID 0表示根节点',
  `priority` int(6) NOT NULL DEFAULT '0' COMMENT '菜单顺序',
  `branch` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是枝节点 1-是 0-否',
  `icon` varchar(20) NOT NULL COMMENT '菜单图标样式',
  `url` varchar(255) NOT NULL COMMENT '菜单链接地址 总是以‘/’开头，相对于项目根路径',
  `label` varchar(40) NOT NULL COMMENT '菜单标签 用于对同名菜单加以区分',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `priority` (`priority`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=110017 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

-- ----------------------------
-- Records of console_menu
-- ----------------------------
INSERT INTO `console_menu` VALUES ('10000', '查看报表', '0', '1000', '1', '', '', '');
INSERT INTO `console_menu` VALUES ('10101', '巡检详情', '10000', '1002', '0', '', '/actual_work/list', '');
INSERT INTO `console_menu` VALUES ('10102', 'SOS', '10000', '1003', '0', ' ', '/actual_work/sos/list', ' ');
INSERT INTO `console_menu` VALUES ('10103', '实时工作', '10000', '1001', '0', '', '/show/worklist', '');
INSERT INTO `console_menu` VALUES ('20000', '巡更设置', '0', '2000', '1', ' ', ' ', ' ');
INSERT INTO `console_menu` VALUES ('20101', '巡更点管理', '20000', '2002', '0', '', '/patrol/list', '');
INSERT INTO `console_menu` VALUES ('20102', '巡更计划管理', '20000', '2005', '0', '', '/patrol/plan/list', '');
INSERT INTO `console_menu` VALUES ('20103', '分配管理', '20000', '2006', '0', ' ', '/patrol/arrange/list', ' ');
INSERT INTO `console_menu` VALUES ('30000', '基础数据', '0', '3000', '1', '', '', '');
INSERT INTO `console_menu` VALUES ('30101', '云客户管理', '30000', '3002', '0', '', '/company/list', '');
INSERT INTO `console_menu` VALUES ('30102', '人员管理', '30000', '3003', '0', '', '/employee/list', '');
INSERT INTO `console_menu` VALUES ('30103', '版本管理', '30000', '3004', '0', '', '/mversion/version', '');
INSERT INTO `console_menu` VALUES ('30105', '巡检点任务管理', '20000', '2003', '0', '', '/patrol/list_line', '');
INSERT INTO `console_menu` VALUES ('30107', '权限管理', '30000', '3005', '0', '', '/company/authority', '');
INSERT INTO `console_menu` VALUES ('30108', '任务管理', '20000', '2001', '0', '', '/patrol/classify_list', '');
INSERT INTO `console_menu` VALUES ('40000', '基础档案管理', '0', '4000', '1', '', '', '');
INSERT INTO `console_menu` VALUES ('40101', '物料信息', '1', '40055', '0', '', '/show/matter', '/material/list');
INSERT INTO `console_menu` VALUES ('40102', '储罐信息', '40000', '4003', '0', '', '/reservoir/listReservoir', '');
INSERT INTO `console_menu` VALUES ('40103', '特种设备信息', '40000', '4007', '0', '', '/equipment/list', '');
INSERT INTO `console_menu` VALUES ('50000', '安全知识库', '0', '5000', '1', '', '', '');
INSERT INTO `console_menu` VALUES ('50101', 'MSDS', '50000', '5001', '0', '', '/show/DSDSList', '');
INSERT INTO `console_menu` VALUES ('60000', '培训教育', '0', '6000', '1', '', '', '');
INSERT INTO `console_menu` VALUES ('60101', '题库管理', '60000', '6001', '0', '', '/qshow/qblist', '');
INSERT INTO `console_menu` VALUES ('60102', '试卷管理', '60000', '6002', '0', '', '/qshow/papersTlist', '');
INSERT INTO `console_menu` VALUES ('60103', '考试管理', '60000', '6003', '0', '', '/qshow/examinationlist', '');
INSERT INTO `console_menu` VALUES ('70000', '职业卫生管理', '0', '7000', '1', '', '', '');
INSERT INTO `console_menu` VALUES ('70101', '职业卫生档案', '70000', '7001', '0', '', '/show/zywsgl', '');
INSERT INTO `console_menu` VALUES ('70102', '个人职业健康档案', '70000', '7002', '0', '', '/show/healthlist', '');
INSERT INTO `console_menu` VALUES ('80000', '特殊作业', '0', '8000', '1', '', '', '');
INSERT INTO `console_menu` VALUES ('80001', '签批模版设置', '80000', '8001', '0', '', '/show/OAtemplatelist', '');
INSERT INTO `console_menu` VALUES ('80002', '临时用电安全作业证', '80000', '8002', '0', '', '/show/OAlist', '');
INSERT INTO `console_menu` VALUES ('80003', '动火安全作业证', '80000', '8003', '0', '', '/show/flarelist', '');
INSERT INTO `console_menu` VALUES ('80004', '受限空间安全作业证', '80000', '8004', '0', '', '/show/confinedspacelist', '');
INSERT INTO `console_menu` VALUES ('80005', '盲板抽堵安全作业证', '80000', '8005', '0', '', '/show/platelist', '');
INSERT INTO `console_menu` VALUES ('90000', '危险源管理', '0', '9000', '1', '', '', '');
INSERT INTO `console_menu` VALUES ('90001', '风险辨识', '90000', '9001', '0', '', '/show/Dangrelist', '');
INSERT INTO `console_menu` VALUES ('90002', '事故事件', '90000', '9002', '0', '', '/show/malfunctionlist', '');
INSERT INTO `console_menu` VALUES ('100000', '隐患排查', '0', '10000', '1', '', '', '');
INSERT INTO `console_menu` VALUES ('100001', '隐患排查', '100000', '10001', '0', '', '/show/hdlist', '');
INSERT INTO `console_menu` VALUES ('100002', '安全检查', '100000', '10002', '0', ' ', '/show/inspection/colligation', ' ');
INSERT INTO `console_menu` VALUES ('110000', '应急管理', '0', '11000', '1', '', '', '');
INSERT INTO `console_menu` VALUES ('110001', '应急管理', '110000', '11001', '0', '', '/show/outburstlist', '');
INSERT INTO `console_menu` VALUES ('110002', '操作规范', '40000', '4005', '0', '', '/show/OPlist', '');
INSERT INTO `console_menu` VALUES ('110003', '管理制度', '40000', '4006', '0', '', '/show/managerlist', '');
INSERT INTO `console_menu` VALUES ('110005', '设备档案管理', '40000', '4007', '0', '', '/show/equipmentlist', '');
INSERT INTO `console_menu` VALUES ('110006', '重大危险源管理', '40000', '4009', '0', '', '/show/bigdangerlist', '');
INSERT INTO `console_menu` VALUES ('110007', '法律法规', '50000', '5002', '0', '', '/show/lawlist', '');
INSERT INTO `console_menu` VALUES ('110008', '培训课件', '50000', '5003', '0', '', '/show/tclist', '');
INSERT INTO `console_menu` VALUES ('110009', '人员管理', '40000', '4001', '0', '', '/show/staffList', '');
INSERT INTO `console_menu` VALUES ('110010', '职业病危害因素检测情况', '70000', '7003', '0', '', '/show/zybjxDetaillist', '/show/ZYBlist');
INSERT INTO `console_menu` VALUES ('110011', '安全培训信息', '40000', '4008', '0', '', '/show/safecultivatelist', '');
INSERT INTO `console_menu` VALUES ('110012', '高处安全作业证', '80000', '8006', '0', '', '/show/OAHeightList', '');
INSERT INTO `console_menu` VALUES ('110013', '吊装安全作业证', '80000', '8007', '0', '', '/show/OAHositList', '');
INSERT INTO `console_menu` VALUES ('110014', '动土安全作业证', '80000', '8008', '0', '', '/show/OASoilList', '');
INSERT INTO `console_menu` VALUES ('110015', '断路安全作业证', '80000', '8009', '0', '', '/show/OAOffList', '');
INSERT INTO `console_menu` VALUES ('110016', '证书管理', '40000', '4002', '0', '', '/show/zslist', '');

-- ----------------------------
-- Table structure for `danger_begin`
-- ----------------------------
DROP TABLE IF EXISTS `danger_begin`;
CREATE TABLE `danger_begin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upload_url` varchar(100) DEFAULT NULL COMMENT '名称',
  `upload_time` datetime DEFAULT NULL COMMENT '上传时间',
  `upload_emp` int(12) DEFAULT NULL COMMENT '上传人id',
  `is_del` int(1) DEFAULT NULL COMMENT '是否删除 0:未删除 1:已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of danger_begin
-- ----------------------------
INSERT INTO `danger_begin` VALUES ('7', '\\imgs_msgy\\files\\upload\\pptx\\file(2018062510201309510).pptx', '2018-06-25 10:21:07', '1', '0');
INSERT INTO `danger_begin` VALUES ('8', '\\imgs_msgy\\files\\upload\\docx\\file(201806251020255030).docx', '2018-06-25 10:21:18', '1', '0');
INSERT INTO `danger_begin` VALUES ('10', '\\imgs_msgy\\files\\upload\\docx\\啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx(201806251021541505).docx', '2018-06-25 10:22:46', '1', '0');
INSERT INTO `danger_begin` VALUES ('11', '\\imgs_msgy\\files\\upload\\docx\\啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx(201806251024426707).docx', '2018-06-25 15:59:35', '1', '1');
INSERT INTO `danger_begin` VALUES ('12', '\\imgs_msgy\\files\\upload\\docx\\(201806251025451834)啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx', '2018-06-25 15:59:33', '1', '1');
INSERT INTO `danger_begin` VALUES ('13', '\\imgs_msgy\\files\\upload\\docx\\(201806251111541099)啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx', '2018-06-25 15:59:31', '1', '1');
INSERT INTO `danger_begin` VALUES ('14', '\\imgs_msgy\\files\\upload\\pptx\\(201806250322416448)asd.pptx', '2018-06-25 15:24:11', '1', '1');
INSERT INTO `danger_begin` VALUES ('15', '\\imgs_msgy\\files\\upload\\pdf\\(201806250414401969)魏晓民高管资料终稿.pdf', '2018-06-25 16:15:32', '1', '0');
INSERT INTO `danger_begin` VALUES ('16', '\\imgs_msgy\\files\\upload\\pptx\\(201806260843421343)asd.pptx', '2018-06-26 08:44:32', '1', '0');

-- ----------------------------
-- Table structure for `danger_gather`
-- ----------------------------
DROP TABLE IF EXISTS `danger_gather`;
CREATE TABLE `danger_gather` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `danger_factors` varchar(50) DEFAULT NULL,
  `work_space` varchar(50) DEFAULT NULL,
  `danger_source` varchar(50) DEFAULT NULL,
  `material_name` varchar(50) DEFAULT NULL,
  `work_type` varchar(50) DEFAULT NULL,
  `is_quarantine` varchar(50) DEFAULT NULL,
  `all_count` int(12) DEFAULT NULL,
  `female_count` int(12) DEFAULT NULL,
  `nbg_count` int(12) DEFAULT NULL,
  `intensity` varchar(50) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `is_del` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of danger_gather
-- ----------------------------
INSERT INTO `danger_gather` VALUES ('1', '丙二醇', '库区', '泄漏', '全封闭', '机械化', '是', '23', '12', '2', null, '0', '0');
INSERT INTO `danger_gather` VALUES ('2', '正丁醇', '库区', '泄漏', '全封闭', '机械化', '是', '23', '12', '21', null, '0', '0');
INSERT INTO `danger_gather` VALUES ('3', '三氯乙烯', '库区', '泄漏', '全封闭', '机械化', '是', '23', '1', '3', null, '0', '0');
INSERT INTO `danger_gather` VALUES ('4', '苯乙烯', '库区', '泄漏', '全封闭', '机械化', '是', '23', '1', '4', null, '0', '0');
INSERT INTO `danger_gather` VALUES ('5', '二甲苯', '库区', '泄漏', '全封闭', '机械化', '是', '23', '1', '5', '', '0', '0');
INSERT INTO `danger_gather` VALUES ('6', '氯乙烯', '库区', '泄漏', '全封闭', '机械化', '是', '23', '1', '3', null, '0', '0');
INSERT INTO `danger_gather` VALUES ('7', '苯', '库区', '泄漏', '全封闭', '机械化', '是', '23', '1', '2', null, '0', '0');
INSERT INTO `danger_gather` VALUES ('8', '甲醇', '库区', '泄漏', '全封闭', '机械化', '是', '23', '1', '5', null, '0', '0');
INSERT INTO `danger_gather` VALUES ('9', '丙酮', '库区', '泄漏', '全封闭', '机械化', '是', '23', '1', null, null, '0', '0');
INSERT INTO `danger_gather` VALUES ('10', '苯酚', '库区', '泄漏', '全封闭', '机械化', '是', '231', '1', '32', null, '0', '0');
INSERT INTO `danger_gather` VALUES ('11', '环氧丙烷', '库区', '泄漏', '全封闭', '机械化', '是', '23', '1', '5', null, '1', '0');
INSERT INTO `danger_gather` VALUES ('12', '噪声', '库区', '泄漏', '库区', '机械化3', '是', '23', '1', '23', null, '0', '0');
INSERT INTO `danger_gather` VALUES ('13', '飒飒的', null, null, null, null, null, null, null, null, null, '1', '0');
INSERT INTO `danger_gather` VALUES ('14', '啊实打实', '啊实打实', null, null, '2', null, '25', '1', '5', null, '0', '0');
INSERT INTO `danger_gather` VALUES ('15', 'sds', 'sds', null, null, null, null, null, null, null, null, '1', '0');

-- ----------------------------
-- Table structure for `departments`
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `is_del` varchar(1) DEFAULT NULL COMMENT '0:未删除 1:已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES ('1', '123阿斯顿', '0');
INSERT INTO `departments` VALUES ('2', '财务部阿斯顿', '0');
INSERT INTO `departments` VALUES ('32', '123', '0');
INSERT INTO `departments` VALUES ('33', '风险部啊', '0');
INSERT INTO `departments` VALUES ('34', '人力部阿', '1');
INSERT INTO `departments` VALUES ('35', '啊实打实', '1');
INSERT INTO `departments` VALUES ('36', '萨丢斯', '1');
INSERT INTO `departments` VALUES ('37', '为啥子', '1');
INSERT INTO `departments` VALUES ('38', '阿斯顿', '0');
INSERT INTO `departments` VALUES ('39', '阿斯顿', null);
INSERT INTO `departments` VALUES ('40', '阿斯顿', null);
INSERT INTO `departments` VALUES ('41', '啊实打实', '1');
INSERT INTO `departments` VALUES ('42', '啊飒飒的', '1');
INSERT INTO `departments` VALUES ('43', '啊实打实啊', '1');
INSERT INTO `departments` VALUES ('44', '阿斯顿阿斯顿啊', '1');
INSERT INTO `departments` VALUES ('45', '阿斯顿', '1');
INSERT INTO `departments` VALUES ('46', '阿斯顿阿三', '1');
INSERT INTO `departments` VALUES ('47', '阿斯顿', '1');
INSERT INTO `departments` VALUES ('48', '123阿斯顿', '0');
INSERT INTO `departments` VALUES ('49', '啊实打实', '1');
INSERT INTO `departments` VALUES ('50', '阿斯顿', '1');
INSERT INTO `departments` VALUES ('51', '啊实打实的', '1');
INSERT INTO `departments` VALUES ('52', '123123', '1');
INSERT INTO `departments` VALUES ('53', '阿斯顿123', '1');
INSERT INTO `departments` VALUES ('54', '23阿斯顿', '1');
INSERT INTO `departments` VALUES ('55', 'asd', '0');

-- ----------------------------
-- Table structure for `edu_option`
-- ----------------------------
DROP TABLE IF EXISTS `edu_option`;
CREATE TABLE `edu_option` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `question_id` varchar(10) DEFAULT NULL COMMENT '题目id',
  `option_name` varchar(500) DEFAULT NULL COMMENT '选项名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_option
-- ----------------------------
INSERT INTO `edu_option` VALUES ('76', '51', '违法行为');
INSERT INTO `edu_option` VALUES ('77', '51', '过失行为');
INSERT INTO `edu_option` VALUES ('78', '51', '违规行为');
INSERT INTO `edu_option` VALUES ('79', '51', '违章行为');
INSERT INTO `edu_option` VALUES ('86', '55', '空调制冷');
INSERT INTO `edu_option` VALUES ('87', '55', '空气循环');
INSERT INTO `edu_option` VALUES ('88', '55', '冷风暖气风扇');
INSERT INTO `edu_option` VALUES ('89', '55', '雪地起步模式');
INSERT INTO `edu_option` VALUES ('90', '56', '200');
INSERT INTO `edu_option` VALUES ('91', '56', '300');
INSERT INTO `edu_option` VALUES ('92', '56', '0');
INSERT INTO `edu_option` VALUES ('93', '56', '100');
INSERT INTO `edu_option` VALUES ('94', '57', '居民身份证');
INSERT INTO `edu_option` VALUES ('95', '57', '从业资格证');
INSERT INTO `edu_option` VALUES ('96', '57', '机动车通行证');
INSERT INTO `edu_option` VALUES ('97', '57', '机动车驾驶证');
INSERT INTO `edu_option` VALUES ('98', '58', '错');
INSERT INTO `edu_option` VALUES ('99', '58', '对');
INSERT INTO `edu_option` VALUES ('108', '60', '对');
INSERT INTO `edu_option` VALUES ('109', '60', '错');
INSERT INTO `edu_option` VALUES ('116', '59', '错');
INSERT INTO `edu_option` VALUES ('117', '59', '对');
INSERT INTO `edu_option` VALUES ('120', '62', '错');
INSERT INTO `edu_option` VALUES ('121', '62', '对');
INSERT INTO `edu_option` VALUES ('122', '61', '对');
INSERT INTO `edu_option` VALUES ('123', '61', '错');
INSERT INTO `edu_option` VALUES ('124', '53', '对');
INSERT INTO `edu_option` VALUES ('125', '53', '错');
INSERT INTO `edu_option` VALUES ('126', '54', '居住地');
INSERT INTO `edu_option` VALUES ('127', '54', '所在地');
INSERT INTO `edu_option` VALUES ('128', '54', '迁入地');
INSERT INTO `edu_option` VALUES ('129', '54', '迁出地');

-- ----------------------------
-- Table structure for `edu_paper`
-- ----------------------------
DROP TABLE IF EXISTS `edu_paper`;
CREATE TABLE `edu_paper` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `paper_name` varchar(50) DEFAULT NULL COMMENT '试卷名称',
  `choice_num` varchar(10) DEFAULT NULL COMMENT '单选数量',
  `judge_num` varchar(10) DEFAULT NULL COMMENT '判断题数量',
  `choice_score` varchar(10) DEFAULT NULL COMMENT '单选每个分数',
  `judge_score` varchar(10) DEFAULT NULL COMMENT '判断题分数',
  `total` varchar(10) DEFAULT NULL COMMENT '总分',
  `time` varchar(10) DEFAULT NULL COMMENT '考试时长',
  `pass_score` varchar(10) DEFAULT NULL COMMENT '通过分数',
  `choice_detail` varchar(500) DEFAULT NULL COMMENT '单选详情',
  `judge_detail` varchar(500) DEFAULT NULL COMMENT '判断详情',
  `create_time` datetime DEFAULT NULL,
  `is_del` int(1) DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_paper
-- ----------------------------
INSERT INTO `edu_paper` VALUES ('1', '第一套试题', '22', '22', '10', '10', '440', '30', '60', '1@11,2@11', '2@11,1@11', '2018-08-15 19:53:31', '0');
INSERT INTO `edu_paper` VALUES ('2', '第二套试题', '3', '3', '2', '30', '96', '30', '60', '1@1,2@1,3@1', '2@1,1@1,3@1', '2018-08-15 20:45:01', '0');

-- ----------------------------
-- Table structure for `edu_question`
-- ----------------------------
DROP TABLE IF EXISTS `edu_question`;
CREATE TABLE `edu_question` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `question_category` varchar(200) DEFAULT NULL COMMENT '题目大类',
  `question_type` varchar(1) DEFAULT NULL COMMENT '题目类型  1=单选题 2=判断题',
  `question` varchar(500) DEFAULT NULL COMMENT '题目',
  `answer` varchar(500) DEFAULT NULL COMMENT '问题答案',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '修改日期',
  `is_del` int(1) DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_question
-- ----------------------------
INSERT INTO `edu_question` VALUES ('51', '1', '1', '驾驶机动车在道路上违反道路交通安全法的行为，属于什么行为？', '76', '2018-08-15 19:31:34', '2018-08-16 14:30:36', '0');
INSERT INTO `edu_question` VALUES ('53', '2', '1', '驾驶机动车超车时，可以鸣喇叭替代开启转向灯', '125', '2018-08-16 14:31:36', '2018-08-23 10:24:38', '0');
INSERT INTO `edu_question` VALUES ('54', '3', '1', '驾驶人户籍迁出原车辆管理所需要向什么地方的车辆管所提出申请？', '129', '2018-08-16 14:57:01', '2018-08-23 10:24:43', '0');
INSERT INTO `edu_question` VALUES ('55', '1', '1', '机动车仪表板上（如图所示）这个符号表示什么', '89', '2018-08-16 14:58:03', '2018-08-16 14:59:07', '0');
INSERT INTO `edu_question` VALUES ('56', '1', '1', '100+100=?', '90', '2018-08-16 15:00:27', '2018-08-16 15:00:53', '0');
INSERT INTO `edu_question` VALUES ('57', '1', '1', '驾驶人未携带哪种证件驾驶机动车上路，交通警察可依法扣留车辆？', '97', '2018-08-16 15:01:48', '2018-08-16 15:01:49', '0');
INSERT INTO `edu_question` VALUES ('58', '1', '2', '在高速公路上行驶感觉疲劳时，应立即停车休息。', '99', '2018-08-16 15:02:36', '2018-08-16 15:02:39', '0');
INSERT INTO `edu_question` VALUES ('59', '1', '2', '漫水道路行车时，应挂高速档，快速通过', '116', '2018-08-16 15:03:22', '2018-08-16 15:11:43', '0');
INSERT INTO `edu_question` VALUES ('60', '1', '2', '如图所示，A车具有优先通行权', '108', '2018-08-16 15:04:23', '2018-08-16 15:06:46', '0');
INSERT INTO `edu_question` VALUES ('61', '3', '2', '仪表显示当前车速是20公里/小时', '122', '2018-08-16 15:07:14', '2018-08-23 10:24:31', '0');
INSERT INTO `edu_question` VALUES ('62', '2', '2', '这题的答案是对是错', '121', '2018-08-22 19:05:10', '2018-08-23 10:24:24', '0');

-- ----------------------------
-- Table structure for `edu_test_record`
-- ----------------------------
DROP TABLE IF EXISTS `edu_test_record`;
CREATE TABLE `edu_test_record` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) DEFAULT NULL COMMENT '用户id',
  `paperid` int(10) DEFAULT NULL COMMENT '试卷id',
  `begin_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '交卷时间',
  `score` double(10,2) DEFAULT NULL COMMENT '分数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_test_record
-- ----------------------------
INSERT INTO `edu_test_record` VALUES ('47', '1', '2', '2018-08-23 10:48:04', '2018-08-23 10:48:22', '62.00');
INSERT INTO `edu_test_record` VALUES ('50', '1', '2', '2018-08-23 10:53:39', null, null);
INSERT INTO `edu_test_record` VALUES ('51', '1', '2', '2018-08-23 14:14:26', null, null);
INSERT INTO `edu_test_record` VALUES ('52', '1', '2', '2018-08-27 20:26:06', null, null);
INSERT INTO `edu_test_record` VALUES ('53', '1', '2', '2018-08-28 16:17:23', null, null);
INSERT INTO `edu_test_record` VALUES ('54', '1', '2', '2018-08-28 18:02:32', null, null);
INSERT INTO `edu_test_record` VALUES ('55', '1', '2', '2018-08-28 19:47:33', null, null);

-- ----------------------------
-- Table structure for `edu_test_record_detail`
-- ----------------------------
DROP TABLE IF EXISTS `edu_test_record_detail`;
CREATE TABLE `edu_test_record_detail` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `recordid` int(10) DEFAULT NULL COMMENT '考试记录id',
  `qustionid` varchar(1000) DEFAULT NULL,
  `answerid` varchar(1000) DEFAULT NULL,
  `user_answerid` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_test_record_detail
-- ----------------------------
INSERT INTO `edu_test_record_detail` VALUES ('46', '47', '56,53,54,62,59,61', '90,125,129,121,116,122', '93,125,128,121,117,122');
INSERT INTO `edu_test_record_detail` VALUES ('49', '50', '51,53,54,62,60,61', '76,125,129,121,108,122', null);
INSERT INTO `edu_test_record_detail` VALUES ('50', '51', '57,53,54,62,59,61', '97,125,129,121,116,122', null);
INSERT INTO `edu_test_record_detail` VALUES ('51', '52', '55,53,54,62,59,61', '89,125,129,121,116,122', null);
INSERT INTO `edu_test_record_detail` VALUES ('52', '53', '55,53,54,62,58,61', '89,125,129,121,99,122', null);
INSERT INTO `edu_test_record_detail` VALUES ('53', '54', '56,53,54,62,60,61', '90,125,129,121,108,122', null);
INSERT INTO `edu_test_record_detail` VALUES ('54', '55', '55,53,54,62,60,61', '89,125,129,121,108,122', null);

-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(50) DEFAULT NULL COMMENT '手机号码',
  `role_id` int(10) DEFAULT NULL COMMENT '用户角色',
  `pass_word` varchar(50) DEFAULT NULL COMMENT '登录密码',
  `states` int(1) DEFAULT NULL COMMENT '状态',
  `create_id` int(10) DEFAULT NULL COMMENT '创建人编号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_create_id` int(10) DEFAULT NULL COMMENT '修改人编号',
  `last_create_time` datetime DEFAULT NULL COMMENT '修改时间',
  `py` varchar(20) DEFAULT NULL,
  `quanpin` varchar(50) DEFAULT NULL,
  `head_portrait` varchar(255) DEFAULT NULL COMMENT '头像',
  `is_del` int(1) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `sex` int(1) DEFAULT NULL COMMENT '性别',
  `position` varchar(100) DEFAULT NULL COMMENT '岗位',
  `education` int(2) DEFAULT NULL COMMENT '学历',
  `specialty` varchar(100) DEFAULT NULL COMMENT '专业',
  `occupation_rank` int(2) DEFAULT NULL COMMENT '职称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COMMENT='人员表';

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', 'admin', '18626554456', null, 'qhgydDbaxjg=', '1', null, '2017-07-24 17:49:14', null, '2017-09-07 11:14:59', 'admin', 'admin', '/files/upload/20170907110619_684.jpg', '0', null, '0', null, null, null, null);
INSERT INTO `employee` VALUES ('83', '汪', '13813881388', null, 'QET+S3Loqfw=', null, '1', '2018-07-16 21:33:29', null, '2018-08-27 20:10:19', 'W', 'wang', null, '0', null, '0', null, null, null, null);
INSERT INTO `employee` VALUES ('85', '汪孟林', '13913916685', null, 'QET+S3Loqfw=', '1', '1', '2018-07-16 21:41:08', null, null, 'WML', 'wangmenglin', null, '0', null, '0', null, null, null, null);
INSERT INTO `employee` VALUES ('86', 'test', '13888888888', '100', 'qhgydDbaxjg=', '1', '1', '2018-07-16 21:43:04', null, null, 'test', 'test', null, '0', null, '0', null, null, null, null);
INSERT INTO `employee` VALUES ('87', '安环', '13777777777', '101', 'qhgydDbaxjg=', '1', '1', '2018-07-23 23:45:09', '1', '2018-08-01 20:44:27', 'AH', 'anhuan', null, '0', null, '0', null, null, null, null);
INSERT INTO `employee` VALUES ('88', '门卫', '13666666666', '101', 'qhgydDbaxjg=', '1', '1', '2018-07-24 00:09:45', '1', '2018-08-01 20:44:16', 'MW', 'menwei', null, '0', null, '0', null, null, null, null);
INSERT INTO `employee` VALUES ('89', '镇向红', '13915842672', null, 'qhgydDbaxjg=', '1', '1', '2018-07-24 10:06:27', null, null, 'ZXH', 'zhenxianghong', null, '0', null, '0', null, null, null, null);
INSERT INTO `employee` VALUES ('90', '镇向红', '18961292087', '100', 'qhgydDbaxjg=', '1', '1', '2018-07-24 10:13:35', null, null, 'ZXH', 'zhenxianghong', null, '0', null, '0', null, null, null, null);
INSERT INTO `employee` VALUES ('91', '设备', '13555555555', '101', 'qhgydDbaxjg=', '1', '1', '2018-08-01 20:45:04', null, null, 'SB', 'shebei', null, '0', null, '0', null, null, null, null);
INSERT INTO `employee` VALUES ('92', '储运', '13444444444', '101', 'qhgydDbaxjg=', '1', '1', '2018-08-01 20:45:31', null, null, 'CY', 'chuyun', null, '0', null, '0', null, null, null, null);
INSERT INTO `employee` VALUES ('93', 'gtfhgf', '18625665525', '101', 'qhgydDbaxjg=', '9', null, '2018-08-27 20:03:03', null, null, 'gtfhgf', 'gtfhgf', null, '1', 'fdsfdsfdsds', '1', 'sefdes', '0', 'sdfdsfd', '0');
INSERT INTO `employee` VALUES ('94', '储运部人员1', '15589898989', '102', 'qhgydDbaxjg=', '1', null, '2018-08-27 20:07:26', null, null, 'CYBRY1', 'chuyunburenyuan1', null, '0', null, '1', null, null, null, null);
INSERT INTO `employee` VALUES ('95', '储运部人员2', '15578787878', '102', 'qhgydDbaxjg=', '1', null, '2018-08-27 20:08:02', null, null, 'CYBRY2', 'chuyunburenyuan2', null, '0', null, '0', '111', '2', '11111', '1');

-- ----------------------------
-- Table structure for `equipment_doc`
-- ----------------------------
DROP TABLE IF EXISTS `equipment_doc`;
CREATE TABLE `equipment_doc` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `equipment_no` varchar(50) DEFAULT NULL,
  `equipment_name` varchar(100) DEFAULT NULL,
  `equipment_model` varchar(50) DEFAULT NULL,
  `manufacturer` varchar(100) DEFAULT NULL,
  `release_date` datetime DEFAULT NULL,
  `activate_date` datetime DEFAULT NULL,
  `install_address` varchar(200) DEFAULT NULL,
  `is_del` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of equipment_doc
-- ----------------------------
INSERT INTO `equipment_doc` VALUES ('1', '阿桑多阿斯顿1', '阿三都阿三的1', '阿斯顿阿萨1的1', '阿什d5as都3 ', '2018-07-20 00:00:00', '2018-07-11 00:00:00', '阿斯顿阿萨d1', '0');
INSERT INTO `equipment_doc` VALUES ('2', '阿什顿阿斯d20', '阿什顿 0', '阿斯顿20', '啊是大0', '2018-07-10 00:00:00', '2018-07-18 00:00:00', '阿斯顿阿萨 0', '1');
INSERT INTO `equipment_doc` VALUES ('3', '阿什顿1吖2·', '阿三都阿三的', '阿斯顿阿萨1的', '啊是大0', '2018-07-11 00:00:00', '2018-07-26 00:00:00', '123132', '0');

-- ----------------------------
-- Table structure for `health_doc`
-- ----------------------------
DROP TABLE IF EXISTS `health_doc`;
CREATE TABLE `health_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upload_url` varchar(100) DEFAULT NULL COMMENT '名称',
  `upload_time` datetime DEFAULT NULL COMMENT '上传时间',
  `upload_emp` int(12) DEFAULT NULL COMMENT '上传人id',
  `is_del` int(1) DEFAULT NULL COMMENT '是否删除 0:未删除 1:已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of health_doc
-- ----------------------------
INSERT INTO `health_doc` VALUES ('7', '\\imgs_msgy\\files\\upload\\pptx\\file(2018062510201309510).pptx', '2018-06-25 16:00:22', '1', '1');
INSERT INTO `health_doc` VALUES ('8', '\\imgs_msgy\\files\\upload\\docx\\file(201806251020255030).docx', '2018-06-25 16:00:15', '1', '1');
INSERT INTO `health_doc` VALUES ('10', '\\imgs_msgy\\files\\upload\\docx\\啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx(201806251021541505).docx', '2018-06-25 15:42:41', '1', '1');
INSERT INTO `health_doc` VALUES ('11', '\\imgs_msgy\\files\\upload\\docx\\啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx(201806251024426707).docx', '2018-06-25 15:42:39', '1', '1');
INSERT INTO `health_doc` VALUES ('12', '\\imgs_msgy\\files\\upload\\docx\\(201806251025451834)啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx', '2018-06-25 15:42:37', '1', '1');
INSERT INTO `health_doc` VALUES ('13', '\\imgs_msgy\\files\\upload\\docx\\(201806251111541099)啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx', '2018-06-25 15:42:34', '1', '1');
INSERT INTO `health_doc` VALUES ('14', '\\imgs_msgy\\files\\upload\\pptx\\(201806250322416448)asd.pptx', '2018-06-25 15:24:11', '1', '1');
INSERT INTO `health_doc` VALUES ('15', '\\imgs_msgy\\files\\upload\\pdf\\(2018062503415765010)魏晓民高管资料终稿.pdf', '2018-06-25 16:00:10', '1', '1');
INSERT INTO `health_doc` VALUES ('16', '\\imgs_msgy\\files\\upload\\pptx\\(201806250342083249)asd.pptx', '2018-06-25 16:00:07', '1', '1');
INSERT INTO `health_doc` VALUES ('17', '\\imgs_msgy\\files\\upload\\pptx\\(201806250359370656)asd.pptx', '2018-06-25 16:00:29', '1', '0');
INSERT INTO `health_doc` VALUES ('18', '\\imgs_msgy\\files\\upload\\pdf\\(201806250400013959)魏晓民高管资料终稿.pdf', '2018-06-25 16:00:53', '1', '0');

-- ----------------------------
-- Table structure for `identify_material`
-- ----------------------------
DROP TABLE IF EXISTS `identify_material`;
CREATE TABLE `identify_material` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `type_id` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of identify_material
-- ----------------------------
INSERT INTO `identify_material` VALUES ('1', '叠氮化钡', '1');
INSERT INTO `identify_material` VALUES ('2', '叠氮化铅', '1');
INSERT INTO `identify_material` VALUES ('3', '雷酸汞', '1');
INSERT INTO `identify_material` VALUES ('4', '三硝基苯甲醚', '1');
INSERT INTO `identify_material` VALUES ('5', '三硝基甲苯', '1');
INSERT INTO `identify_material` VALUES ('6', '硝化甘油', '1');
INSERT INTO `identify_material` VALUES ('7', '硝化纤维素', '1');
INSERT INTO `identify_material` VALUES ('8', '硝酸铵（含可燃物＞0.2%）', '1');
INSERT INTO `identify_material` VALUES ('9', '1.1A项爆炸品', '1');
INSERT INTO `identify_material` VALUES ('10', '除1.1A项外的其他1.1项爆炸品', '1');
INSERT INTO `identify_material` VALUES ('11', '除1.1项外的其他爆炸品', '1');
INSERT INTO `identify_material` VALUES ('12', '丁二烯', '2');
INSERT INTO `identify_material` VALUES ('13', '二甲醚', '2');
INSERT INTO `identify_material` VALUES ('14', '甲烷，天然气', '2');
INSERT INTO `identify_material` VALUES ('15', '氯乙烯,', '2');
INSERT INTO `identify_material` VALUES ('16', '氢', '2');
INSERT INTO `identify_material` VALUES ('17', '液化石油气（含丙烷、丁烷及其混合物）', '2');
INSERT INTO `identify_material` VALUES ('18', '一甲胺', '2');
INSERT INTO `identify_material` VALUES ('19', '乙炔', '2');
INSERT INTO `identify_material` VALUES ('20', '乙烯', '2');
INSERT INTO `identify_material` VALUES ('21', '黄磷', '3');
INSERT INTO `identify_material` VALUES ('22', '烷基铝', '3');
INSERT INTO `identify_material` VALUES ('23', '戊硼烷', '3');
INSERT INTO `identify_material` VALUES ('24', '危险性属于4.2项且包装为I或II类的物质', '3');
INSERT INTO `identify_material` VALUES ('25', '发烟硫酸', '4');
INSERT INTO `identify_material` VALUES ('26', '过氧化钾', '4');
INSERT INTO `identify_material` VALUES ('27', '过氧化钠', '4');
INSERT INTO `identify_material` VALUES ('28', '氯酸钾', '4');
INSERT INTO `identify_material` VALUES ('29', '氯酸钠', '4');
INSERT INTO `identify_material` VALUES ('30', '硝酸（发红烟的）', '4');
INSERT INTO `identify_material` VALUES ('31', '硝酸（发红烟的除外，含硝酸＞70%）', '4');
INSERT INTO `identify_material` VALUES ('32', '硝酸铵（含可燃物≤0.2%）', '4');
INSERT INTO `identify_material` VALUES ('33', '硝酸铵基化肥', '4');
INSERT INTO `identify_material` VALUES ('34', '危险性属于5.1项且包装为I类的物质', '4');
INSERT INTO `identify_material` VALUES ('35', '危险性属于5.1项且包装为II或III类的物质', '4');
INSERT INTO `identify_material` VALUES ('36', '发过氧乙酸（含量≥60%）', '5');
INSERT INTO `identify_material` VALUES ('37', '过氧化甲乙酮（含量≥60%）', '5');
INSERT INTO `identify_material` VALUES ('38', '危险性属于5.2项的物质', '5');
INSERT INTO `identify_material` VALUES ('42', '丙酮合氰化氢', '6');
INSERT INTO `identify_material` VALUES ('43', '丙烯醛', '6');
INSERT INTO `identify_material` VALUES ('44', '氟化氢', '6');
INSERT INTO `identify_material` VALUES ('45', '环氧氯丙烷（3-氯-1,2-环氧丙烷）', '6');
INSERT INTO `identify_material` VALUES ('46', '环氧溴丙烷（表溴醇）', '6');
INSERT INTO `identify_material` VALUES ('47', '甲苯二异氰酸酯', '6');
INSERT INTO `identify_material` VALUES ('48', '氯化硫', '6');
INSERT INTO `identify_material` VALUES ('49', '氰化氢', '6');
INSERT INTO `identify_material` VALUES ('50', '三氧化硫', '6');
INSERT INTO `identify_material` VALUES ('51', '烯丙胺', '6');
INSERT INTO `identify_material` VALUES ('52', '溴', '6');
INSERT INTO `identify_material` VALUES ('53', '乙撑亚胺', '6');
INSERT INTO `identify_material` VALUES ('54', '异氰酸甲酯', '6');
INSERT INTO `identify_material` VALUES ('55', '危险性属于6.1项且急性毒性为类别1的物质', '6');
INSERT INTO `identify_material` VALUES ('56', '危险性属于6.1项且急性毒性为类别2的物质', '6');
INSERT INTO `identify_material` VALUES ('57', '易燃气体：危险性属于2.1项的气体', '7');
INSERT INTO `identify_material` VALUES ('58', '氧化性气体：危险性属于2.2项非易燃无毒气体且次要危险性为5类的气体', '7');
INSERT INTO `identify_material` VALUES ('59', '剧毒气体：危险性属于2.3项且急性毒性为类别1的毒性气体', '7');
INSERT INTO `identify_material` VALUES ('60', '有毒气体：危险性属于2.3项的其他毒性气体', '7');
INSERT INTO `identify_material` VALUES ('61', '苯', '8');
INSERT INTO `identify_material` VALUES ('62', '苯乙烯', '8');
INSERT INTO `identify_material` VALUES ('63', '丙酮', '8');
INSERT INTO `identify_material` VALUES ('64', '丙烯腈', '8');
INSERT INTO `identify_material` VALUES ('65', '二硫化碳', '8');
INSERT INTO `identify_material` VALUES ('66', '环己烷', '8');
INSERT INTO `identify_material` VALUES ('67', '环氧丙烷', '8');
INSERT INTO `identify_material` VALUES ('68', '甲苯', '8');
INSERT INTO `identify_material` VALUES ('69', '甲醇', '8');
INSERT INTO `identify_material` VALUES ('70', '汽油', '8');
INSERT INTO `identify_material` VALUES ('71', '乙醇', '8');
INSERT INTO `identify_material` VALUES ('72', '乙醚', '8');
INSERT INTO `identify_material` VALUES ('73', '乙酸乙酯', '8');
INSERT INTO `identify_material` VALUES ('74', '正己烷', '8');
INSERT INTO `identify_material` VALUES ('75', '极易燃液体：沸点≤35℃且闪点＜0℃的液体；或保存温度一直在其沸点以上的易燃液体', '8');
INSERT INTO `identify_material` VALUES ('76', '高度易燃液体：闪点＜23℃的液体（不包括极易燃液体）；液态退敏爆炸品', '8');
INSERT INTO `identify_material` VALUES ('77', '易燃液体：23℃≤闪点＜61℃的液体', '8');
INSERT INTO `identify_material` VALUES ('78', '危险性属于4.1项且包装为I类的物质', '9');
INSERT INTO `identify_material` VALUES ('79', '电石', '10');
INSERT INTO `identify_material` VALUES ('80', '钾', '10');
INSERT INTO `identify_material` VALUES ('81', '钠', '10');
INSERT INTO `identify_material` VALUES ('82', '危险性属于4.3项且包装为I或II的物质', '10');

-- ----------------------------
-- Table structure for `inspection`
-- ----------------------------
DROP TABLE IF EXISTS `inspection`;
CREATE TABLE `inspection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `type` int(2) DEFAULT NULL COMMENT '类型',
  `number` int(11) DEFAULT NULL COMMENT '顺序',
  `index` double(11,2) DEFAULT NULL COMMENT '检查顺序',
  `inspection` varchar(255) DEFAULT NULL COMMENT '检查项目',
  `standard` varchar(500) DEFAULT NULL COMMENT '检查标准',
  `way` varchar(255) DEFAULT NULL COMMENT '检查方法',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8 COMMENT='隐患排查基础数据';

-- ----------------------------
-- Records of inspection
-- ----------------------------
INSERT INTO `inspection` VALUES ('1', '1', '1', '1.10', '静电接地：静电接地线的连接方式', '符合《化工企业静电接地设计技术规定》要求', '现场检查，查检测报告');
INSERT INTO `inspection` VALUES ('2', '1', '2', '1.20', '静电接地：各固定设备接地电阻', '接地电阻≤4Ω', '查检测报告');
INSERT INTO `inspection` VALUES ('3', '1', '3', '1.30', '静电接地：物料泵、管道', '应做好各种接地', '现场抽查');
INSERT INTO `inspection` VALUES ('4', '1', '4', '1.40', '静电接地：发货台', '灌装时，必须用防静电夹子接引静电', '现场抽查');
INSERT INTO `inspection` VALUES ('5', '1', '5', '1.50', '静电接地：桶灌装', '1）用金属管嘴或漏斗加注，必须保持良好接触或连接可靠接地；\r\n2）抗静电接地塑料容器金属部件必须与管道跨接，使用金属漏斗加注必须接地。', '现场抽查');
INSERT INTO `inspection` VALUES ('6', '1', '6', '2.10', '避雷设施：避雷器与接地电阻', '按规定要求测试，接地电阻≤10Ω', '查记录，查检测报告');
INSERT INTO `inspection` VALUES ('7', '1', '7', '2.20', '避雷设施：避雷针', '2~3年进行一次全面检查', '抽查，检查检测记录');
INSERT INTO `inspection` VALUES ('8', '1', '8', '2.30', '避雷设施：建筑物修缮或变化时', '避雷设施应相应改变以满足要求', '抽查记录');
INSERT INTO `inspection` VALUES ('9', '1', '9', '2.40', '避雷设施：避雷针与接地装置的设置，安装', '符合建筑物防雷设计要求', '现场抽查');
INSERT INTO `inspection` VALUES ('10', '1', '10', '2.50', '避雷设施：储罐周围接地', '应设闭合环形接地，接地点均布并不少于2个头，接电电阻≤10Ω', '现场抽查');
INSERT INTO `inspection` VALUES ('11', '2', '1', '1.10', '防暑降温：电风扇、空调', '有可靠接地，接线桩头牢固', '现场检查');
INSERT INTO `inspection` VALUES ('12', '2', '2', '1.20', '防暑降温：开关', '符合安装要求，牢固', '现场检查');
INSERT INTO `inspection` VALUES ('13', '2', '3', '1.30', '防暑降温：氧气、乙炔瓶瓶', '应放置于阴凉处，或用东西遮阳', '现场检查');
INSERT INTO `inspection` VALUES ('14', '2', '4', '1.40', '防暑降温：物料桶', '露天堆放的，必须有凉水喷淋装置', '现场检查');
INSERT INTO `inspection` VALUES ('15', '2', '5', '1.50', '防暑降温：贮槽', '冷却系统是否完好', '现场检查');
INSERT INTO `inspection` VALUES ('16', '2', '6', '1.60', '防暑降温：防暑药品的发放', '检查发放记录', '查记录');
INSERT INTO `inspection` VALUES ('17', '2', '7', '1.70', '防暑降温：饮料', '检查发放记录', '查记录');
INSERT INTO `inspection` VALUES ('18', '2', '8', '2.10', '防台风：屋顶', '无杂物，以防吹落', '现场检查');
INSERT INTO `inspection` VALUES ('19', '2', '9', '2.20', '防台风：贮槽', '地脚螺丝是否牢固，槽顶围栏设施是否牢固', '现场检查');
INSERT INTO `inspection` VALUES ('20', '2', '10', '2.30', '防台风：高空作业', '台风来临时，不准高空作业', '现场检查');
INSERT INTO `inspection` VALUES ('21', '2', '11', '3.10', '防洪防汛：低洼作业场所', '应及时配好抽水泵及围堰', '现场检查');
INSERT INTO `inspection` VALUES ('22', '2', '12', '3.20', '防洪防汛：地沟', '无杂物，通畅', '现场检查');
INSERT INTO `inspection` VALUES ('23', '2', '13', '3.30', '防洪防汛：防洪应急设施', '配备的防洪防洪物质，如沙袋、铁锹、排水泵等，对易进水的配电室、厂房等防水设施是否完好', '现场检查');
INSERT INTO `inspection` VALUES ('24', '2', '14', '3.40', '防洪防汛：巡回检查', '一旦发生危险，及时采取措施', '现场检查');
INSERT INTO `inspection` VALUES ('25', '3', '1', '1.10', '防火：动火作业', '有无动火证，及防范措施', '现场检查');
INSERT INTO `inspection` VALUES ('26', '3', '2', '1.20', '防火：消防器材', '禁火区内配备相应的灭火器材', '现场检查');
INSERT INTO `inspection` VALUES ('27', '3', '3', '1.30', '防火：现场', '无杂草、无易燃物品堆放', '现场检查');
INSERT INTO `inspection` VALUES ('28', '3', '4', '1.40', '防火：严禁吸烟', '禁烟区内严禁吸烟，无烟蒂', '现场检查');
INSERT INTO `inspection` VALUES ('29', '3', '5', '1.50', '防火：防火堤', '各槽罐防火堤完好无损', '现场检查');
INSERT INTO `inspection` VALUES ('30', '3', '6', '1.60', '防火：消防通道', '消防通道是否畅通', '现场检查');
INSERT INTO `inspection` VALUES ('31', '3', '7', '2.10', '防冻保温：操作室门窗', '是否完好', '现场检查');
INSERT INTO `inspection` VALUES ('32', '3', '8', '2.20', '防冻保温：设备', '设备防冻保温材料是否脱落', '现场检查');
INSERT INTO `inspection` VALUES ('33', '3', '9', '2.30', '防冻保温：液位计压力表', '是否有加温装置', '现场检查');
INSERT INTO `inspection` VALUES ('34', '3', '10', '2.40', '防冻保温：管道', '保温是否到位，是否欠缺', '现场检查');
INSERT INTO `inspection` VALUES ('35', '3', '11', '2.50', '防冻保温：阀门', '是否有保温措施', '现场检查');
INSERT INTO `inspection` VALUES ('36', '4', '1', '1.10', '防火：动火作业', '有无动火证，及防范措施', '现场检查');
INSERT INTO `inspection` VALUES ('37', '4', '2', '1.20', '防火：消防器材', '禁火区内配备相应的灭火器材', '现场检查');
INSERT INTO `inspection` VALUES ('38', '4', '3', '1.30', '防火：严禁吸烟', '禁烟区内严禁吸烟，无烟蒂', '现场检查');
INSERT INTO `inspection` VALUES ('39', '4', '4', '1.40', '防火：防火堤', '各槽罐防火堤完好无损', '现场检查');
INSERT INTO `inspection` VALUES ('40', '4', '5', '2.10', '防爆：动火前分析', '测爆仪处于安全位置', '查动火分析');
INSERT INTO `inspection` VALUES ('41', '4', '6', '2.20', '防爆：盲板', '与生产设备可靠隔绝', '现场查看');
INSERT INTO `inspection` VALUES ('42', '4', '7', '2.30', '防爆：清洗', '将塔内、管内易燃易爆物质置换、清洗干净', '查分析记录');
INSERT INTO `inspection` VALUES ('43', '4', '8', '3.10', '防中毒：分析室', '样气排放接在室外', '现场检查');
INSERT INTO `inspection` VALUES ('44', '4', '9', '3.20', '防中毒：通风', '室内保持通风，保证室内空气新鲜', '现场检查');
INSERT INTO `inspection` VALUES ('45', '4', '10', '3.30', '防中毒：跑冒滴漏', '及时消除', '现场检查');
INSERT INTO `inspection` VALUES ('46', '4', '11', '3.40', '防中毒：可燃、有毒气体报警仪', '是否完好', '现场检查');
INSERT INTO `inspection` VALUES ('47', '4', '12', '4.10', '防冻：水管', '应保持流畅，无滴漏，不用的管子放空', '现场检查');
INSERT INTO `inspection` VALUES ('48', '4', '13', '4.20', '防冻：解冻措施', '不准用明火烘烤，应用热水或蒸汽解冻', '现场检查');
INSERT INTO `inspection` VALUES ('49', '4', '14', '4.30', '防冻：闲置设备', '无积水清洁、防护恰当，放置稳妥', '现场检查');
INSERT INTO `inspection` VALUES ('50', '4', '15', '5.10', '防滑：地面、楼梯、钢制平台', '无积水、积雪、结冰现象，应打扫干净', '现场检查');
INSERT INTO `inspection` VALUES ('51', '4', '16', '5.20', '防滑：鞋子', '穿戴规定的工作鞋', '现场检查');
INSERT INTO `inspection` VALUES ('52', '5', '1', '1.10', '消防泵站：服务范围', '主要服务本公司及119台指令出警', '检查出警记录');
INSERT INTO `inspection` VALUES ('53', '5', '2', '1.20', '消防泵站：消防通道', '应面向道路及道路通畅', '现场检查');
INSERT INTO `inspection` VALUES ('54', '5', '3', '1.30', '消防泵站：消防泵房', '消防泵是否运行正常，泡沫系统是否正常，泡液是否定期更换', '现场检查，查记录');
INSERT INTO `inspection` VALUES ('55', '5', '4', '1.40', '消防泵站：照明', '库区、发货台、值班室、宿舍照明符合要求', '现场检查');
INSERT INTO `inspection` VALUES ('56', '5', '5', '2.10', '设备：黄砂箱', '砂桶内是否有足够的黄砂，工具是否担缺损', '现场检查');
INSERT INTO `inspection` VALUES ('57', '5', '6', '2.20', '设备：灭火器', '整洁、有效、定时更换', '现场查看');
INSERT INTO `inspection` VALUES ('58', '5', '7', '2.30', '设备：室外消火栓', '阀门是否运行正常，工具是否齐全', '现场查看');
INSERT INTO `inspection` VALUES ('59', '5', '8', '2.40', '设备：消防炮', '阀门是否运行正常', '现场查看');
INSERT INTO `inspection` VALUES ('60', '5', '9', '2.50', '设备：室内消火栓', '阀门运行正常，工具是否齐全，增压按钮是否灵活有效', '现场查看');
INSERT INTO `inspection` VALUES ('61', '5', '10', '2.60', '设备：应急照明', '是否有效', '现场查看');
INSERT INTO `inspection` VALUES ('62', '5', '11', '2.70', '设备：管理', '应定期进行义务训练，熟练掌握灭火知识和消防器材的使用方法', '查训练台帐');
INSERT INTO `inspection` VALUES ('63', '6', '1', '1.10', '灯光系统与信务系统', '1、 大灯照明正常，光束平行均匀；<br>2、 小灯照明正常；<br>3、 刹车灯照明有效；<br>4、 方向灯指示正常；<br>5、 喇叭声响宏亮；<br>6、倒车蜂鸣器正常；<br>7、刮雨器工作正常。', '现场检查');
INSERT INTO `inspection` VALUES ('64', '6', '2', '2.10', '刹车系统', '1、总泵贮液正常，制动软管无破裂、无漏油、气阻现象；<br>\r\n2、管路无空气，踏板自由行程正常，制动管路无渗油；<br>\r\n3、轮胎左右气压正常，制动摩擦片接触良好，无油污、硬化或铆钉外露现象；<br>\r\n4、车轮制动器工作可靠有效，回轴孔不堵塞，皮碗、皮圈无损坏；<br>\r\n5、动作可靠、有效；<br>\r\n6、手刹制动有效可靠。', '现场检查');
INSERT INTO `inspection` VALUES ('65', '6', '3', '3.10', '转向系统', '1、方向盘转动灵活，轮胎气压正常，转向垂臂不弯曲变形，转向油缸不缺油；<br>\r\n2、前后车桥应平行，转向油路无漏损，横、直拉杆球头、摇臂不松动，前束准确；<br>\r\n3、方向盘自由行程正常；<br>\r\n4、油箱油位正常，吸入管或滤油器无堵塞；<br>\r\n5、转向桥无移位，碰撞变形、断裂现象。', '现场检查');
INSERT INTO `inspection` VALUES ('66', '6', '4', '4.10', '传动与行驶系统', '1、液力变矩器工作正常；<br>\r\n2、传动轴螺栓齐全，无枪支现象，驱动桥油温正常，无异响；<br>\r\n3、车架、车身无碰蹭现象，车身清洁明亮；<br>\r\n4、轮胎螺栓无松动。', '现场检查');
INSERT INTO `inspection` VALUES ('67', '6', '5', '5.10', '液压与起重系统', '1、操纵杆操纵自如，工作正常；<br>\r\n2、回路无渗油、漏油现象；<br>\r\n3、门架无变形、损坏现象；<br>\r\n4、侧滚轮滑动正常，无干磨卡死现象；<br>\r\n5、货架无变形、弯曲、损坏现象；<br>\r\n6、链无断裂，左右长短一致。', '现场检查');
INSERT INTO `inspection` VALUES ('68', '7', '1', '1.10', '耐火等级检查', '1、厂房建筑物是否符合耐火等级要求；<br>\r\n2、建筑物的安全疏散门是否向外开启。', '查看现场');
INSERT INTO `inspection` VALUES ('69', '7', '2', '2.10', '防雷电检查', '1、厂房、建筑物避雷设施是否符合防雷要求；<br>\r\n2、放空管是否在避雷针保护范围内。', '查看现场及记录');
INSERT INTO `inspection` VALUES ('70', '7', '3', '3.10', '现场检查', '1、各区域是否符合职业卫生防护和防火防爆要求；<br>\r\n2、建筑物、构筑物是否经常进行维护，有无变形、开裂、露筋、下沉和超负荷情况；<br>\r\n3、防汛、排水设施是否完好。', '看现场');
INSERT INTO `inspection` VALUES ('71', '7', '4', '4.10', '防护设施', '1、厂房、建（构）筑物爬梯、围栏、平台是否牢固可靠并符合安全要求；<br>\r\n2、防护设施无明显缺陷、无腐蚀等；<br>\r\n3、地沟、地沟盖板是否完好。', '看现场');
INSERT INTO `inspection` VALUES ('72', '8', '1', '1.10', '电气作业', '1.认真执行《电力安全作业规程》等电业法规；做好系统模拟图、二次线路图、电缆走向图。认真执行工作票、操作票、临时用电票。定期检修、定期试验、定期清理。<br>\r\n2、落实好检修规程、运行规程、试验规程、安全作业规程、事故处理规程。做好检修记录、运行记录、试验记录、事故记录设备缺陷记录。各项作业都要严格落实安全措施。', '查操作票证和记录');
INSERT INTO `inspection` VALUES ('73', '8', '2', '2.10', '变配电间管理', '1、控制室、配电室等电气专用建筑物，密闭、防火、防爆、防雨是否符合规程要求；<br>\r\n2、各类保护装置的完整性、可靠性检查，包括继电保护装置的校验、整定记录、避雷针、避雷器的保护范围，技术参数，接地装置是否符合规程要求，各种保护接地、接零是否正确可靠，是否合格；<br>\r\n3、电气安全用具和灭火器材是否配备齐全；<br>\r\n4、配电柜防护是否符合安全要求；<br>\r\n5、配电柜安装是否按标准进行设置和安装。', '查现场管理');
INSERT INTO `inspection` VALUES ('74', '8', '3', '3.10', '电气设备', '1、电气设备运行中的电压、电流、油压、温度等指标是否正常，有无违反标准现象；<br>\r\n2、电气设备完好情况，包括年度绝缘预防性试验情况；主要设备的绝缘试验报告，缺陷和处理意见档案；<br>\r\n3、各种电气设备是否完好；<br>\r\n4、充油设备、检查油位正常与否，漏油情况；<br>\r\n5、瓷绝缘部件是否有裂痕，掉碴情况；<br>\r\n6、临时设备，临时线是否有明确的安装要求，使用时间和安全注意事项；', '查现场管理及设施');
INSERT INTO `inspection` VALUES ('75', '8', '4', '4.10', '防护用品', '1、值班电工是否按规定穿绝缘鞋值班操作；<br>\r\n2、各值班配电室内是否配备绝缘靴、绝缘手套及其它安全防护用品；<br>\r\n3、绝缘靴、绝缘手套等是否按规定进行定期打压实验合格。', '查现场防护用品管理');
INSERT INTO `inspection` VALUES ('76', '8', '5', '5.10', '压力表', '1、仪表安装位置应便于观察，维护方便，周围干燥、无腐蚀性气体；<br>\r\n2、仪表安装位置应避开强震动源，并采取震动措施；<br>\r\n3、压力表外观无明显缺陷；紧固件不得松动；密封件应无泄露；仪表及连接部分清洁、整齐、无腐蚀；<br>\r\n4、仪表及连接法兰等部位无泄露；<br>\r\n5、膜盒无损坏、无变形、无泄露；<br>\r\n6、特种介质压力测量采用专用压力表', null);
INSERT INTO `inspection` VALUES ('77', '8', '6', '6.10', '智能仪表', '1、压力表外观无明显缺陷；紧固件不得松动；密封件应无泄露。仪表及连接部分清洁、整齐、无腐蚀；<br>\r\n2、进行仪表电器检查维修时必须已断开电源；<br>\r\n3、仪表及连接法兰等部位无泄露；<br>\r\n4、膜片和毛细管无损坏、无变形、无泄露；<br>\r\n5、仪表安装位置应便于观察，维护方便，周围干燥、无腐蚀性气体；<br>\r\n6、电源电压正常、接线准确牢固。', null);
INSERT INTO `inspection` VALUES ('78', '8', '7', '7.10', '自控阀门', '1、阀门供气压力正常，连接管路无泄露、无损坏、无腐蚀。<br>\r\n2、阀门开度与输入信号应一致，有明显差异时应进行检查和校准。<br>\r\n3、每月对调节阀的阀杆密封填料压盖的松紧状态进行调整，保持不泄露工艺介质。<br>\r\n4、仪表自控阀门的铭牌标志应清晰、准确；外观无明显缺陷；零部件应齐全、完好，紧固件不得松动；手轮机构及可动部件应灵活可靠。<br>\r\n5、自控阀门无腐蚀，阀门卫生状况良好。', null);
INSERT INTO `inspection` VALUES ('79', '8', '8', '8.10', '中控系统', '1、控制室温度应满足恒温（20℃±5℃）、相对湿度（40%-80%）和防震、防电磁、防尘条件。散热风扇和空气过滤网齐全、完好；铭牌、标志清晰无误。<br>\r\n2、接插件接触良好；紧固件不得松动；端子接线应牢固；机柜防护门应完好无损。<br>\r\n3、运行时，系统各装置的状态指示灯显示正常；状态画面所显示的各装置运行状态正常；各装置散热风扇运转正常；CRT显示清晰，亮度适中；打印机打字清楚，字符完整。<br>\r\n4、在操作站上分别调出各个控制站的运行画面，检查其各部件及通讯系统运行状态应正常。<br>\r\n5、.各装置无异常噪音和气味。<br>\r\n6、通过查看所有插件及电源和通讯耦合器上状态指示灯，判断各装置运行正常。<br>\r\n7、控制室要始终保持卫生清洁，不许有任何与工作无关的物品。<br>\r\n8、操作台上必须保持清洁干净，严禁放置任何与工作无关物品，键盘上更不许放置任何物品（包括记录本），以免碰损键盘或导致操作。<br>\r\n9、操作人员应严格遵守操作规程，不得从事其他操作无关的工作，严禁在操作台上喝水、吃东西。', null);
INSERT INTO `inspection` VALUES ('80', '8', '9', '9.10', '特种气体监控系统', '探头和控制器的连线无异常，控制器提供的电压在10-30VDC之间。', null);
INSERT INTO `inspection` VALUES ('81', '9', '1', '1.10', '厂区及建筑物', '1、消防通道、紧急疏散通道是否通畅；<br>\r\n2、是否由足够的便于灭火的机动场地；<br>\r\n3、厂区交通道路的信号标志是否完好；<br>\r\n4、厂区交通道路是否有足够的照明；<br>\r\n5、各种照明设施是否完好；<br>\r\n6、阶梯、地面等是否完好；<br>\r\n7、厂区内物料堆放是否符合要求', '查现场设施');
INSERT INTO `inspection` VALUES ('82', '9', '2', '2.10', '生产过程', '1、属于危险化学品是否有无防范措施；<br>\r\n2、有无安全操作规程，作业时是否严格遵守安全操作规程；对可能发生的异常情况有无应急处理措施；', '查操作规程及记录');
INSERT INTO `inspection` VALUES ('83', '9', '3', '3.10', '消防设施', '1、有无火灾探测报警系统，是否完好；<br>\r\n2、各种灭火器材的配置种类、数量及完好程度是否符合要求；<br>\r\n3、消防供水系统是否可靠；<br>\r\n4、泡沫液是否定期更换。', '查现场');
INSERT INTO `inspection` VALUES ('84', '9', '4', '4.10', '作业现场', '1、作业现场符合防火要求；<br>\r\n2、各种动力设备的防护装置与设施是否完好；<br>\r\n3、有无明显标志的安全出口与紧急疏散通道并通向安全地点；<br>\r\n4、火灾爆炸危险场所的电气系统（包括电气设备、照明及布线等）是否符合防火防爆要求；<br>\r\n5有火灾爆炸危险的库房泄压措施是否符合要求；<br>\r\n6、高大建筑、变配电设备、易燃气体、液体储罐区、突出屋顶的排放可燃物放空管等有无避雷设施、是否完好；<br>\r\n7、作业场所可燃气（蒸汽）是否超标，通风是否良好，有无检测报警设施；<br>\r\n8、有无必要的、明显的安全标志，是否完好。', '查现场、查作业证票');
INSERT INTO `inspection` VALUES ('85', '9', '5', '5.10', '装置与设备', '1、各种机械、设备上安全设施是否齐全及灵敏好用；<br>\r\n2、有火灾爆炸危险的装置与设备，有无抑制火灾蔓延或者减少损失的预防措施；<br>\r\n3、有无电气系统接地、接零及防静电设施，是否完好；<br>\r\n4、动力源及仪器仪表是否正常、完好；<br>\r\n5、高温表面的耐火保护层是否完好；<br>\r\n6、对可能发生的异常情况有无应急处理措施，如安全泄压设施等。', '查现场管理');
INSERT INTO `inspection` VALUES ('86', '9', '6', '6.10', '安全管理', '1、有无按照规定配备专（兼）职安全管理人员，履行职责情况如何；<br>\r\n2、各种安全管理制度、安全技术规程是否齐全、实施情况如何；<br>\r\n3、是否进行安全检查，对检查结果如何处理；<br>\r\n4、是否开展安全教育培训，效果如何；<br>\r\n5、作业现场有无违章作业及违章指挥行为。', '查材料及现场');
INSERT INTO `inspection` VALUES ('87', '10', '1', '1.10', '安全设施', '安全标志、危害告知牌是否完整，位置是否醒目', '检查现场');
INSERT INTO `inspection` VALUES ('88', '10', '2', '1.20', '安全设施', '消防栓、消防水带、消防炮、灭火器等消防器材是否完好、有效', '检查现场');
INSERT INTO `inspection` VALUES ('89', '10', '3', '1.30', '安全设施', '报警装置是否完好、静电跨接、接地是否完好', '检查现场');
INSERT INTO `inspection` VALUES ('90', '10', '4', '1.40', '安全设施', '安全通道、消防通道是否畅通', '检查现场');
INSERT INTO `inspection` VALUES ('91', '10', '5', '2.10', '应急器材', '应急救援物资、器材准备是否充分', '检查现场');
INSERT INTO `inspection` VALUES ('92', '10', '6', '3.10', '设备管理', '设备转动部位安全防护罩是否齐全、完好。', '检查现场');
INSERT INTO `inspection` VALUES ('93', '10', '7', '3.20', '设备管理', '设备是否运行正常，电机运行是否正常。', '检查现场');
INSERT INTO `inspection` VALUES ('94', '10', '8', '3.30', '设备管理', '设备维护保养是否符合要求，润滑是否到位。', '检查现场');
INSERT INTO `inspection` VALUES ('95', '10', '9', '3.40', '设备管理', '设备运行记录填写是否工整、整洁、准确。', '检查现场');
INSERT INTO `inspection` VALUES ('96', '10', '10', '4.10', '现场', '现场是否清洁', '检查现场');
INSERT INTO `inspection` VALUES ('97', '10', '11', '5.10', '人员管理', '管理人员是否督促操作工执行和落实安全生产方针、政策、法规、制度。', '检查现场');
INSERT INTO `inspection` VALUES ('98', '10', '12', '5.20', '人员管理', '作业人员是否按规定穿戴劳动防护用品。', '检查现场');
INSERT INTO `inspection` VALUES ('99', '10', '13', '5.30', '人员管理', '人员是否按操作规程作业，是否按规定路线、频次进行巡回检查。', '检查现场');
INSERT INTO `inspection` VALUES ('100', '10', '14', '5.40', '人员管理', '是否按制度要求对外来人员、非本岗位操作人员管理。', '检查现场');
INSERT INTO `inspection` VALUES ('101', '11', '1', '1.10', '手持电动工具', '1、手持电动工具安全防护措施齐全、完好。<br>\r\n2、按照用电要求进行连接，保持手持部位绝对绝缘良好，电源部位接漏电保护器。<br>\r\n3、使用时，旋紧部位必须按照要求达到旋紧力进行紧固，不得出现松懈甩出、用力过大紧固变形或者裂损。<br>\r\n4、电源软线按规定架空，不挂在锋利的棱边上或放置在油、热的表面和化学品上，防止线路腐蚀老化出现漏电。<br>\r\n5、手持电动工具工作部位工作时，严谨朝着他人或自己进行作业，防止飞溅物造成意外伤害。<br>\r\n6、旋转部位旋转时严谨手摸或者强制进行停止，防止发生意外。<br>\r\n7、工作时，工作人员穿戴好劳动防护用品。', '查看现场');
INSERT INTO `inspection` VALUES ('102', '11', '2', '2.10', '电、气焊设备', '1、电焊机必须摆放在通风、防雨、防晒环境中，导线端裸露部分在屏护罩内。<br>\r\n2、电焊机一次、二次电气线路绝缘良好，装有独立的专用电源开关。<br>\r\n3、电焊机有可靠的接地、接零装置，外壳接地良好，焊钳绝缘可靠，隔热层完好。<br>\r\n4、电焊机使用场所清洁，无严重粉尘，周围无易燃易爆物。<br>\r\n5、禁止连接建筑金属构架和设备等作为焊接电源回路。\r\n6、电源线或电缆线应与焊机有可靠的连接。<br>\r\n7、氧气、乙炔气瓶要在检验期内充装压力不超标，并有安全标签；<br>\r\n8、氧气瓶和乙炔瓶的安全距离保持5米以上，氧气瓶和乙炔瓶与动火点的安全距离保持10米以上。<br>\r\n9、气瓶的防震圈、防火帽齐全，气瓶所用压力表标识清楚、有效。<br>\r\n10、乙炔气瓶装有阻火器；气焊、割矩完好，胶管耐压能力符合要求。<br>\r\n11、不可把氧气、乙炔气瓶放在有油污、严重腐蚀、日光暴晒、明火、热辐射等易引起瓶温过高、压力剧增的环境中；乙炔瓶不能倒放。<br>\r\n12、要有防弧光辐射、通风防尘措施。<br>\r\n13、操作人员持证上岗。', '查看现场');
INSERT INTO `inspection` VALUES ('103', '12', '1', '1.10', '保卫、消防', '1、门卫是否严格执行制度，进入库区是否执行交出手机、烟火等制度；<br>\r\n2、消防设施是否完好可靠。', '看现场及有关记录');
INSERT INTO `inspection` VALUES ('104', '12', '2', '2.10', '物资准备、备用设备', '1、 生产物资准备是否充足，是否能保障正常生产。<br>\r\n2、应急救援物资准备是否充足。<br>\r\n3、备用设备是否完好。', '看现场及有关记录');
INSERT INTO `inspection` VALUES ('105', '12', '3', '3.10', '应急预案', '1、应急预案是否定期组织演练。<br>\r\n2、应急救援器材是否齐全完好。<br>\r\n3、应急通讯器材是否完好；保证通讯24小时畅通', '看现场及有关记录');
INSERT INTO `inspection` VALUES ('106', '12', '4', '4.10', '劳动纪律', '1、厂区内有无吸烟现象；<br>\r\n2、有无酒后上班现象；<br>\r\n3、有无迟到、早退现象；<br>\r\n4、班中上班人员是否私自换岗、串岗、脱岗、睡岗干与生产无关的事；<br>\r\n5、班中上班人员是否按时巡检及严格执行交接班制度。', '看现场及有关记录');
INSERT INTO `inspection` VALUES ('107', '13', '1', '1.10', '球罐', '基础是否下沉、倾斜、开裂现象', '现场检查');
INSERT INTO `inspection` VALUES ('108', '13', '2', '1.20', '球罐', '防腐层是否完好', '现场检查');
INSERT INTO `inspection` VALUES ('109', '13', '3', '1.30', '球罐', '罐体是否无异常振动或响声', '现场检查');
INSERT INTO `inspection` VALUES ('110', '13', '4', '1.40', '球罐', '罐体是否无裂纹、无渗漏', '现场检查');
INSERT INTO `inspection` VALUES ('111', '13', '5', '1.50', '球罐', '法兰等连接处是否无泄漏', '现场检查');
INSERT INTO `inspection` VALUES ('112', '13', '6', '2.10', '喷淋', '喷淋冷却是否正常', '现场检查');
INSERT INTO `inspection` VALUES ('113', '13', '7', '3.10', '液位计', '指示是否正常', '现场检查');
INSERT INTO `inspection` VALUES ('114', '13', '8', '3.20', '液位计', '贮存量是否在控制范围内', '现场检查');
INSERT INTO `inspection` VALUES ('115', '13', '9', '4.10', '阀门', '开关是否灵活（每周一次）', '现场检查');
INSERT INTO `inspection` VALUES ('116', '13', '10', '4.20', '阀门', '压盖是否泄漏', '现场检查');
INSERT INTO `inspection` VALUES ('117', '13', '11', '4.30', '阀门', '螺栓是否腐蚀生锈', '现场检查');
INSERT INTO `inspection` VALUES ('118', '13', '12', '5.10', '防护围堰', '堤墙是否无损坏、无渗漏，防静电设施是否正常', '现场检查');
INSERT INTO `inspection` VALUES ('119', '13', '13', '6.10', '应急用品', '是否具备应急使用条件', '现场检查');
INSERT INTO `inspection` VALUES ('120', '13', '14', '7.10', '防毒设施', '防毒面具等设施是否定期检查并作好记录', '现场检查');
INSERT INTO `inspection` VALUES ('121', '13', '15', '8.10', '防雷设施', '各部分连接牢固可靠', '现场检查');
INSERT INTO `inspection` VALUES ('122', '13', '16', '8.20', '防雷设施', '腐蚀或锈蚀是否低于30%', '现场检查');
INSERT INTO `inspection` VALUES ('123', '14', '1', '1.10', '安全书签', '对储存的危险化学品是否向生产单位（供应商）索取安全技术说明书与安全标签。', '查档案');
INSERT INTO `inspection` VALUES ('124', '14', '2', '2.10', '贮存', '1、应按照有关制度，核对、校验进库物料的规格、质量、数量。无产地、铭牌、检验合格证、一书一签的危化品不得入库。<br>\r\n2、库存物料应当分类、分罐贮存。甲、乙类物品和容易相互发生化学反应或者灭火方法不同的物品，分罐区贮存，并在醒目处标明贮存物品的名称、性质和灭火方法。<br>\r\n3、易燃、易爆物品的储罐具有防火措施。<br>\r\n4、保管人员根据所保管的危险化学品的性质，是否配备必要的防护用品、器具；<br>\r\n5、各种承压贮罐，其液面计、压力计、温度计、呼吸阀、阻火器、安全阀等安全附件是否完整好用，易燃液体贮罐应设置绝热设施或降温设施，现场电器设备应为防爆电器。<br>\r\n6、易燃、可燃气体贮罐区，不应有与贮罐无关的管道、电缆等穿越。与贮罐区有关的管道、电缆穿过防火（护）堤时，洞口应有不燃材料填实，电缆应采用跨越防火（护）堤方式铺设，罐区防火堤的排水管应相应设置隔油池或水封井，并在出口管上设置切断阀。', '查现场查记录');
INSERT INTO `inspection` VALUES ('125', '14', '3', '3.10', '装卸运输', '1、危险化学品的装卸运输人员，是否对所装卸的危险化学品的理化性质和防护措施有所了解，装卸危险化学品，是否佩带相应的防护用具；<br>\r\n2、装运易燃液体、可燃气体等物品是否使用符合安全要求的装卸和运输工具，运输易燃、易爆物品的机动车，其排气管应装阻火器，并符合危险化学品的运输资质；<br>\r\n3、危险化学品装卸前应按有关规定对车辆进行静电导出、通风、静电等操作；<br>\r\n4、运输化学品的车辆，应该指定路线限定速度行驶。', '现场检查');
INSERT INTO `inspection` VALUES ('126', '15', '1', '1.10', '严格压力容器、压力管道的检验', '1、新投用压力容器必须有使用许可证<br>\r\n2、未经检验的压力容器和压力管道不准使用<br>\r\n3、压力管道外部每年至少检验一次检测（查检测报告）<br>\r\n4、Ⅰ、Ⅱ、Ⅲ类管道每3～6年至少进行一次检测', '查看安全阀台账和检验资料，现场查看外观和标识');
INSERT INTO `inspection` VALUES ('127', '15', '2', '2.10', '压力容器周期检验', '1、安全状况等级为1～2级的，每隔6年至少检验一次；安全状况等级为3～4级的，每隔3年至少检验一次<br>\r\n2、检验资料如：设计资料，制造安装质量证明资料，运行操作资料，修理、改造资料，历次检验资料等齐全', '查记录台账、档案');
INSERT INTO `inspection` VALUES ('128', '15', '3', '3.10', '操作人员的教育与持证情况', '1、必须持有效证件上岗<br>\r\n2、特种作业复审<br>\r\n3、操作人员经常接受教育', '查检查记录，现场查看');
INSERT INTO `inspection` VALUES ('129', '15', '4', '4.10', '压力管道管理', '1、贯彻执行有关法律法规，健全安全管理制度<br>\r\n2、有专职或兼职的人员负责压力管道的安全管理工作<br>\r\n3、建立压力管道操作的技术档案<br>\r\n4、对压力管道操作人员进行安全技术培训', '查检查记录，现场查看');
INSERT INTO `inspection` VALUES ('130', '15', '5', '5.10', '安全附件', '1、压力表是否定期校验；<br>\r\n2、液位计显示是否清晰准确，是否有防护装置；<br>\r\n3、安全阀是否定期校验，整定压力是否符合要求。', '现场检查');
INSERT INTO `inspection` VALUES ('131', '16', '1', '1.10', '贮罐', '基础是否下沉、倾斜、开裂现象', '现场检查');
INSERT INTO `inspection` VALUES ('132', '16', '2', '1.20', '贮罐', '防腐层是否完好', '现场检查');
INSERT INTO `inspection` VALUES ('133', '16', '3', '1.30', '贮罐', '罐体是否无异常振动或响声', '现场检查');
INSERT INTO `inspection` VALUES ('134', '16', '4', '1.40', '贮罐', '罐体是否无裂纹、无渗漏', '现场检查');
INSERT INTO `inspection` VALUES ('135', '16', '5', '1.50', '贮罐', '法兰等连接处是否无泄漏', '现场检查');
INSERT INTO `inspection` VALUES ('136', '16', '6', '2.10', '液位计', '指示是否正常', '现场检查');
INSERT INTO `inspection` VALUES ('137', '16', '7', '2.20', '液位计', '贮存量是否在控制范围内', '现场检查');
INSERT INTO `inspection` VALUES ('138', '16', '8', '3.10', '阀门', '开关是否灵活（每周一次）', '现场检查');
INSERT INTO `inspection` VALUES ('139', '16', '9', '3.20', '阀门', '压盖是否泄漏', '现场检查');
INSERT INTO `inspection` VALUES ('140', '16', '10', '3.30', '阀门', '螺栓是否腐蚀生锈', '现场检查');
INSERT INTO `inspection` VALUES ('141', '16', '11', '4.10', '防护围堰', '堤墙是否无损坏、无渗漏', '现场检查');
INSERT INTO `inspection` VALUES ('142', '16', '12', '5.10', '应急用品', '是否具备应急使用条件', '现场检查');
INSERT INTO `inspection` VALUES ('143', '16', '13', '6.10', '防毒设施', '防毒面具等设施是否定期检查并作好记录', '现场检查');
INSERT INTO `inspection` VALUES ('144', '16', '14', '7.10', '防雷设施', '各部分连接牢固可靠', '现场检查');
INSERT INTO `inspection` VALUES ('145', '16', '15', '7.20', '防雷设施', '腐蚀或锈蚀是否低于30%', '现场检查');
INSERT INTO `inspection` VALUES ('146', '17', '1', '1.10', '从业人员：持证上岗', '操作人员经技术培训考试合格', '现场检查');
INSERT INTO `inspection` VALUES ('147', '17', '2', '1.20', '从业人员：安全学习并记录', '必须参加安全学习', '抽查记录');
INSERT INTO `inspection` VALUES ('148', '17', '3', '1.30', '从业人员：作业票制度', '需办理作业票的场所必须办理作业票', '现场检查');
INSERT INTO `inspection` VALUES ('149', '17', '4', '1.40', '从业人员：巡回检查', '按时按路线巡检', '现场检查');
INSERT INTO `inspection` VALUES ('150', '17', '5', '1.50', '从业人员：劳动保护', '特种作业须穿戴好劳保用品', '现场检查');
INSERT INTO `inspection` VALUES ('151', '17', '6', '1.60', '从业人员：操作记录要求', '按时、准确，无涂改', '现场检查');
INSERT INTO `inspection` VALUES ('152', '17', '7', '1.70', '从业人员：交接班内容', '上班、本班情况，遗留问题记录清楚', '现场检查');
INSERT INTO `inspection` VALUES ('153', '17', '8', '1.80', '从业人员：班前（后）会', '交接班应有安全内容', '参加会议检查');
INSERT INTO `inspection` VALUES ('154', '17', '9', '2.10', '压力容器：基础资料', '设计、施工、竣工、验收资料，设备档案、压力容器使用证、年检报告等内容齐全、翔实、准确', '查相关技术资料');
INSERT INTO `inspection` VALUES ('155', '17', '10', '2.20', '压力容器：安全附件', '安装到位，符合规定，并定期校验', '现场检查，检查资料');
INSERT INTO `inspection` VALUES ('156', '17', '11', '2.30', '压力容器：基础', '牢固，无裂缝，各螺栓齐全、紧固', '现场检查');
INSERT INTO `inspection` VALUES ('157', '17', '12', '2.40', '压力容器：设备主体', '外观无凹陷、凸出，满足工艺要求', '现场检查');
INSERT INTO `inspection` VALUES ('158', '17', '13', '2.50', '压力容器：人孔及法兰', '螺栓坚固，无缺损，法兰等级符合要求', '现场检查');
INSERT INTO `inspection` VALUES ('159', '17', '14', '2.60', '压力容器：保温', '所用材料符合要求', '现场检查');
INSERT INTO `inspection` VALUES ('160', '17', '15', '2.70', '压力容器：密封', '良好无泄漏', '现场检查');
INSERT INTO `inspection` VALUES ('161', '17', '16', '2.80', '压力容器：防雷、静电接地', '完好，定期检查，接地电阻≤10Ω', '现场用接地电阻仪抽检');
INSERT INTO `inspection` VALUES ('162', '17', '17', '2.90', '压力容器：走台扶梯、护栏', '符合安全规定', '现场检查');
INSERT INTO `inspection` VALUES ('163', '17', '18', '3.10', '设备设施管道：常压储罐', '检查罐体、设备、管道保温层完好，油漆防腐情况良好；安全标识完好，安全附件良好。', '现场检查');
INSERT INTO `inspection` VALUES ('164', '17', '19', '3.20', '设备设施管道：围堰', '是否完好', '现场检查');
INSERT INTO `inspection` VALUES ('165', '17', '20', '3.30', '设备设施管道：管道支架', '支撑牢固，无弯曲，管架无倾斜，钢结构无开裂', '现场检查');
INSERT INTO `inspection` VALUES ('166', '17', '21', '3.40', '设备设施管道：厂区内管线', '无跑冒滴漏现象，管路无锈蚀，油漆保温完好，静电跨接完好', '现场检查');
INSERT INTO `inspection` VALUES ('167', '17', '22', '3.50', '设备设施管道：地磅', '及时校验，表面干燥整洁，使用正常', '现场检查');
INSERT INTO `inspection` VALUES ('168', '17', '23', '3.60', '设备设施管道：物料泵', '运行无异响，密封点无泄漏', '现场检查');
INSERT INTO `inspection` VALUES ('169', '17', '24', '3.70', '设备设施管道：发货台', '无跑冒滴漏现象，油漆保温完好，静电跨接完好', '现场检查');
INSERT INTO `inspection` VALUES ('170', '17', '25', '3.80', '设备设施管道：空压机', '运转正常，保养及时，有维护保养记录', '现场检查');
INSERT INTO `inspection` VALUES ('171', '17', '26', '3.90', '设备设施管道：码头配管站', '无跑冒滴漏现象，管路无锈蚀，油漆保温完好，静电跨接完好', '现场检查');
INSERT INTO `inspection` VALUES ('172', '17', '27', '4.10', '压力表、温度计、液位计、安全阀、报警器：选用及安装', '根据介质的不同选用，便于观察', '现场抽查，查设备档案');
INSERT INTO `inspection` VALUES ('173', '17', '28', '4.20', '压力表、温度计、液位计、安全阀、报警器：雷达液位计，联锁系统', '液位显示正常，联锁动作有效', '现场检查');
INSERT INTO `inspection` VALUES ('174', '17', '29', '4.30', '压力表、温度计、液位计、安全阀、报警器：液位显示', '清晰、准确、高低位的标志明显', '现场抽查');
INSERT INTO `inspection` VALUES ('175', '17', '30', '4.40', '压力表、温度计、液位计、安全阀、报警器：液位计及阀门', '完好无泄漏，定期清洗', '现场检查');
INSERT INTO `inspection` VALUES ('176', '17', '31', '4.50', '压力表、温度计、液位计、安全阀、报警器：压力表、温度表', '表观正常、显示正常', '现场检查');
INSERT INTO `inspection` VALUES ('177', '17', '32', '4.60', '压力表、温度计、液位计、安全阀、报警器：安全阀技术资料', '产品质量保证书，检维修记录齐全', '查档案');
INSERT INTO `inspection` VALUES ('178', '17', '33', '4.70', '压力表、温度计、液位计、安全阀、报警器：定压', '操作压力的1.25倍', '查设备档案');
INSERT INTO `inspection` VALUES ('179', '17', '34', '4.80', '压力表、温度计、液位计、安全阀、报警器：安全阀的校验', '在校验期内，铅封完好，标识齐全', '查校验记录');
INSERT INTO `inspection` VALUES ('180', '17', '35', '4.90', '压力表、温度计、液位计、安全阀、报警器：报警器', '投用率和准确率达100%，完好，测试有效', '现场抽查');
INSERT INTO `inspection` VALUES ('181', '17', '36', '4.10', '压力表、温度计、液位计、安全阀、报警器：可燃/有毒气体报警', '数据显示正常，电流正常', '现场检查');
INSERT INTO `inspection` VALUES ('182', '17', '37', '5.10', '电气设施：参数', '电压、电流、容量等参数在额定允许范围内', '现场检查');
INSERT INTO `inspection` VALUES ('183', '17', '38', '5.20', '电气设施：标号及用户名称', '铭牌清晰、标号及用户名称明显清楚', '现场检查');
INSERT INTO `inspection` VALUES ('184', '17', '39', '5.30', '电气设施：开关柜内', '无杂音、异味，无异响、无杂物', '现场检查');
INSERT INTO `inspection` VALUES ('185', '17', '40', '5.40', '电气设施：开关性能', '符合要求，无松动、无变色变形、标识齐全', '现场检查');
INSERT INTO `inspection` VALUES ('186', '17', '41', '5.50', '电气设施：开关动作', '灵活可靠', '现场检查');
INSERT INTO `inspection` VALUES ('187', '17', '42', '5.60', '电气设施：继电保护装置', '各开关、交流器、各仪表信号装置运行正常，整定值正确', '现场检查');
INSERT INTO `inspection` VALUES ('188', '17', '43', '5.70', '电气设施：电缆头', '无过热、变色', '现场检查');
INSERT INTO `inspection` VALUES ('189', '17', '44', '5.80', '电气设施：刀闸', '刀口接触严密', '现场检查');
INSERT INTO `inspection` VALUES ('190', '17', '45', '5.90', '电气设施：套管', '清洁、无破损、裂缝无放电痕迹', '现场抽查');
INSERT INTO `inspection` VALUES ('191', '17', '46', '5.10', '电气设施：引线接头、电缆、母线', '无发热现象', '现场抽查');
INSERT INTO `inspection` VALUES ('192', '17', '47', '5.11', '电气设施：运行', '声音正常，运行平稳', '现场抽查');
INSERT INTO `inspection` VALUES ('193', '17', '48', '5.12', '电气设施：电气设施', '绝缘电阻测定合格，耐压试验按标准进行', '抽查记录');
INSERT INTO `inspection` VALUES ('194', '17', '49', '5.13', '电气设施：安全距离', '符合安全工作规程要求', '现场抽查');
INSERT INTO `inspection` VALUES ('195', '17', '50', '5.14', '电气设施：安全标志牌', '齐全醒目', '现场抽查');
INSERT INTO `inspection` VALUES ('196', '17', '51', '5.15', '电气设施：颜色', '配电装置、设备母线按规定“涂色”', '现场抽查');
INSERT INTO `inspection` VALUES ('197', '17', '52', '5.16', '电气设施：配电间配电柜', '电气设备符合防爆要求，接地电阻按时检测', '查检测资料');
INSERT INTO `inspection` VALUES ('198', '17', '53', '5.17', '电气设施：中控室线路', '中控室线路温度处于正常范围', '现场检查');
INSERT INTO `inspection` VALUES ('199', '17', '54', '5.18', '电气设施：库区电气设施', '线路通畅有效，无破损，电气是否符合防爆要求', '现场检查');
INSERT INTO `inspection` VALUES ('200', '17', '55', '6.10', '职业卫生设施的管理：防毒面具', '防毒面具定点存放，定期进行检查维护保养。', '现场检查');
INSERT INTO `inspection` VALUES ('201', '17', '56', '6.20', '职业卫生设施的管理：洗眼器、喷淋', '能正常使用，现场测试有效，完好。', '现场检查');
INSERT INTO `inspection` VALUES ('202', '17', '57', '6.30', '职业卫生设施的管理：告知牌', '告知牌是否完好', '现场检查');
INSERT INTO `inspection` VALUES ('203', '17', '58', '7.10', '现场卫生：办公区、中控', '卫生情况良好，办公桌整齐', '现场检查');
INSERT INTO `inspection` VALUES ('204', '17', '59', '7.20', '现场卫生：设备部值班室/配电间', '卫生情况良好，办公桌整齐，配电间内干燥', '现场检查');
INSERT INTO `inspection` VALUES ('205', '17', '60', '7.30', '现场卫生：消防泵房/空压机房', '卫生情况良好，办公桌整齐，地面干燥无污渍，无滴漏', '现场检查');
INSERT INTO `inspection` VALUES ('206', '17', '61', '7.40', '现场卫生：值班宿舍区', '卫生情况良好，个人物品收纳整齐，无明显污渍，不使用大功率电器，不使用明火', '现场检查');
INSERT INTO `inspection` VALUES ('207', '17', '62', '7.50', '现场卫生：操作班值班室', '卫生情况良好，个人物品收纳整齐，无明显污渍', '现场检查');
INSERT INTO `inspection` VALUES ('208', '17', '63', '7.60', '现场卫生：门卫值班室', '卫生情况良好，个人物品收纳整齐，无明显污渍，防静电服装、安全帽、记录本收纳整齐，桌面干净整洁', '现场检查');
INSERT INTO `inspection` VALUES ('209', '17', '64', '7.70', '现场卫生：开票室', '卫生情况良好，个人物品收纳整齐，无明显污渍，记录本收纳整齐，桌面干净整洁', '现场检查');
INSERT INTO `inspection` VALUES ('210', '17', '65', '7.80', '现场卫生：地磅房', '卫生情况良好，个人物品收纳整齐，无明显污渍，记录本收纳整齐，桌面干净整洁', '现场检查');
INSERT INTO `inspection` VALUES ('211', '17', '66', '7.90', '现场卫生：食堂', '干净整洁，餐具、炊具洁净，着装整洁，厨余及时处理，无异味', '现场检查');
INSERT INTO `inspection` VALUES ('212', '17', '67', '7.10', '现场卫生：库区', '卫生情况汇报良好，无明显异味、噪音，无跑冒滴漏现象', '现场检查');
INSERT INTO `inspection` VALUES ('213', '17', '68', '8.10', '消防设施：消防器材', '定点存放，检查记录完善、标识齐全，在校期内。', '现场检查');
INSERT INTO `inspection` VALUES ('214', '17', '69', '8.20', '消防设施：消防泵', '运行正常，保养及时，保温良好无渗漏，有维护保养记录', '现场检查');

-- ----------------------------
-- Table structure for `inspection_work`
-- ----------------------------
DROP TABLE IF EXISTS `inspection_work`;
CREATE TABLE `inspection_work` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workkey` varchar(255) DEFAULT NULL COMMENT '组别',
  `inspection_id` int(11) DEFAULT NULL COMMENT '安全id',
  `danger_img` varchar(255) DEFAULT NULL COMMENT '安全图片',
  `check_date` datetime DEFAULT NULL COMMENT '检查日期',
  `check_people` varchar(255) DEFAULT NULL COMMENT '检查人员',
  `check_depart` varchar(255) DEFAULT NULL COMMENT '检查部门',
  `device` varchar(255) DEFAULT NULL COMMENT '描述',
  `status` int(2) DEFAULT '0' COMMENT '排查状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='安全检查内容';

-- ----------------------------
-- Records of inspection_work
-- ----------------------------
INSERT INTO `inspection_work` VALUES ('1', '35dd3bab97c44ca39abec87149a08870', '1', null, '2018-08-20 00:00:00', '', null, '北方四岛一直都是日本与俄罗斯之间最大的矛4盾所在', '1');
INSERT INTO `inspection_work` VALUES ('2', '35dd3bab97c44ca39abec87149a08870', '2', null, '2018-08-20 00:00:00', '', null, '北方四岛一直都是日本与俄罗斯之间最大的矛3盾所在', '1');
INSERT INTO `inspection_work` VALUES ('3', '35dd3bab97c44ca39abec87149a08870', '5', null, '2018-08-20 00:00:00', '', null, '北方四岛一直都是日本与俄罗斯之间最大的矛2盾所在', '1');
INSERT INTO `inspection_work` VALUES ('4', '35dd3bab97c44ca39abec87149a08870', '6', null, '2018-08-20 00:00:00', '', null, 'hgfhgfh', '1');
INSERT INTO `inspection_work` VALUES ('5', 'c4007bac13aa4fed8891e1cdfbdf17cb', '146', null, '2018-08-20 00:00:00', '12121', '21212', 'dssd 的深V', '1');
INSERT INTO `inspection_work` VALUES ('6', 'c4007bac13aa4fed8891e1cdfbdf17cb', '150', null, '2018-08-20 00:00:00', '', null, '大幅度反弹', '1');
INSERT INTO `inspection_work` VALUES ('7', 'c4007bac13aa4fed8891e1cdfbdf17cb', '151', null, '2018-08-20 00:00:00', '', null, 'd发的', '1');
INSERT INTO `inspection_work` VALUES ('8', 'c4007bac13aa4fed8891e1cdfbdf17cb', '153', null, '2018-08-20 00:00:00', '', null, 'd反对地方', '1');
INSERT INTO `inspection_work` VALUES ('9', 'c4007bac13aa4fed8891e1cdfbdf17cb', '155', null, '2018-08-20 00:00:00', '', null, 'f大幅度反弹', '1');
INSERT INTO `inspection_work` VALUES ('10', 'c4007bac13aa4fed8891e1cdfbdf17cb', '162', null, '2018-08-20 00:00:00', '', null, '大幅度反弹地方', '1');
INSERT INTO `inspection_work` VALUES ('11', 'c4007bac13aa4fed8891e1cdfbdf17cb', '163', null, '2018-08-20 00:00:00', '', null, '对方答复', '1');
INSERT INTO `inspection_work` VALUES ('12', 'c4007bac13aa4fed8891e1cdfbdf17cb', '169', null, '2018-08-20 00:00:00', '', null, 'd辅导费', '1');
INSERT INTO `inspection_work` VALUES ('13', 'c4007bac13aa4fed8891e1cdfbdf17cb', '170', null, '2018-08-20 00:00:00', '', null, 'f的房贷', '1');
INSERT INTO `inspection_work` VALUES ('14', 'c4007bac13aa4fed8891e1cdfbdf17cb', '176', null, '2018-08-20 00:00:00', '', null, 'fdfdfd的', '1');
INSERT INTO `inspection_work` VALUES ('15', '72e35a20d3914e15bc453ab7d68aa03d', '146', null, '2018-08-22 00:00:00', '', null, 'cvc', '1');
INSERT INTO `inspection_work` VALUES ('16', '72e35a20d3914e15bc453ab7d68aa03d', '147', '/files/upload/20180822203600_848.jpg', '2018-08-22 00:00:00', '', null, 'jh', '1');
INSERT INTO `inspection_work` VALUES ('17', '72e35a20d3914e15bc453ab7d68aa03d', '148', '/files/upload/20180822204932_582.jpg', '2018-08-22 20:49:33', '', null, 'hgfh', '1');
INSERT INTO `inspection_work` VALUES ('18', '52097d5fd9414bb8badbf540ab6d6f66', '146', '/files/upload/20180825120739_508.jpg', '2018-08-25 12:07:41', '巡检员', '巡检员1', 'ghhh', '1');
INSERT INTO `inspection_work` VALUES ('19', '440b5d3b642f4f51b346f16f7a83c9dd', '68', '/files/upload/20180827170706_472.jpg', '2018-08-27 17:07:08', '刘德华', null, '李经', '0');
INSERT INTO `inspection_work` VALUES ('20', '3ba9db8e229b45309d1fe77f10c77d88', '7', '/files/upload/20180827193723_745.jpg', '2018-08-27 19:37:28', '', null, null, '0');
INSERT INTO `inspection_work` VALUES ('21', '3ba9db8e229b45309d1fe77f10c77d88', '8', null, '2018-08-27 19:37:34', '', null, null, '0');
INSERT INTO `inspection_work` VALUES ('22', 'b0b5aebc2d6f481f88022d695bfb07d8', '52', null, '2018-08-27 19:50:30', '刘德华', '展业部', '太可怜', '1');

-- ----------------------------
-- Table structure for `job_apply`
-- ----------------------------
DROP TABLE IF EXISTS `job_apply`;
CREATE TABLE `job_apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `type` int(2) DEFAULT NULL COMMENT '1 动火安全作业证 2 受限空间安全作业证 3 盲板抽堵安全作业证 4 高处安全作业证 5 吊装安全作业证 6 动土安全作业证 7断路安全作业证 8 临时用电安全作业证',
  `status` int(1) DEFAULT NULL COMMENT '状态 0未完成 1 完成',
  `memo` varchar(255) DEFAULT NULL COMMENT '描述',
  `apply_time` datetime DEFAULT NULL COMMENT '申请时间',
  `employee_id` int(11) DEFAULT NULL COMMENT '申请人id',
  `job_id` int(11) DEFAULT NULL COMMENT '作业证id',
  `sign_employee` varchar(3000) DEFAULT NULL COMMENT '所有签字人员集合',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='作业证申请';

-- ----------------------------
-- Records of job_apply
-- ----------------------------
INSERT INTO `job_apply` VALUES ('14', '1', '0', '签字中', '2018-08-10 17:14:15', '74', '14', ',samplingpeople2@75,confirm3@75,confirm5@75,confirm7@75,signpeople2@75,signpeople3@75,');
INSERT INTO `job_apply` VALUES ('15', '1', '0', '签字中', '2018-08-10 17:45:25', '74', '15', ',confirm1@75,');
INSERT INTO `job_apply` VALUES ('16', '3', '1', '完成', '2018-08-12 14:44:08', '74', '1', ',');
INSERT INTO `job_apply` VALUES ('17', '8', '0', '签字中', '2018-08-12 15:21:19', '74', '1', ',confirm4@74,confirm5@74,confirm6@74,confirm7@74,confirm8@74,confirm9@74,confirm10@74,signpeople1@74,signpeople2@74,signpeople4@74,');
INSERT INTO `job_apply` VALUES ('18', '1', '0', '签字中', '2018-08-12 15:39:37', '74', '16', ',confirm10@74,signpeople1@74,signpeople2@74,signpeople3@74,signpeople4@74,');
INSERT INTO `job_apply` VALUES ('23', '4', '0', '签字中', '2018-08-12 16:17:20', '74', '3', ',signpeople4@74,74,');
INSERT INTO `job_apply` VALUES ('25', '4', '0', '签字中', '2018-08-12 17:04:21', '74', '5', ',confirm1@75,signpeople4@74,74,');
INSERT INTO `job_apply` VALUES ('26', '4', '0', '签字中', '2018-08-12 17:06:55', '74', '6', ',confirm1@75,confirm2@74,confirm3@74,confirm4@74,confirm5@74,confirm6@74,confirm7@74,confirm8@74,confirm9@74,confirm10@74,confirm11@74,confirm12@74,confirm13@74,signpeople1@74,signpeople2@74,signpeople3@74,signpeople4@74,74,');
INSERT INTO `job_apply` VALUES ('27', '4', '0', '签字中', '2018-08-12 17:11:04', '74', '7', ',confirm1@75,confirm3@74,confirm4@74,confirm5@74,confirm6@74,confirm7@74,confirm8@74,confirm9@74,confirm10@74,confirm11@74,confirm12@74,confirm13@74,signpeople1@74,signpeople2@74,signpeople3@74,signpeople4@74,74,');
INSERT INTO `job_apply` VALUES ('28', '4', '0', '签字中', '2018-08-12 17:12:35', '74', '8', ',confirm2@75,confirm4@74,confirm5@74,confirm6@74,confirm7@74,confirm8@74,confirm9@74,confirm10@74,confirm11@74,confirm12@74,signpeople1@74,signpeople2@74,signpeople3@74,signpeople4@74,74,');
INSERT INTO `job_apply` VALUES ('29', '4', '0', '签字中', '2018-08-12 17:34:55', '74', '9', ',confirm1@74,confirm2@74,confirm3@74,confirm4@74,confirm5@74,confirm6@74,confirm7@74,confirm8@74,confirm9@74,confirm10@74,confirm11@74,confirm12@74,confirm13@74,confirm14@74,signpeople1@74,signpeople2@74,signpeople3@74,signpeople4@74,74,');
INSERT INTO `job_apply` VALUES ('30', '4', '0', '签字中', '2018-08-12 17:38:23', '74', '10', ',confirm1@74,confirm2@74,confirm3@74,confirm4@74,confirm5@74,confirm6@74,confirm7@74,confirm8@74,confirm9@74,confirm10@74,confirm11@74,confirm12@74,confirm13@74,confirm14@74,signpeople1@74,signpeople2@74,signpeople3@74,signpeople4@74,74,');
INSERT INTO `job_apply` VALUES ('31', '4', '1', '完成', '2018-08-12 17:39:31', '74', '11', ',');
INSERT INTO `job_apply` VALUES ('32', '1', '0', '签字中', '2018-08-13 09:51:44', '74', '16', ',');
INSERT INTO `job_apply` VALUES ('33', '4', '0', '签字中', '2018-08-13 14:25:13', '74', '12', ',confirm1@74,confirm2@75,confirm3@74,confirm4@74,confirm5@74,confirm6@74,confirm7@74,confirm8@74,confirm9@74,confirm10@74,confirm11@74,confirm12@74,confirm13@74,confirm14@74,signpeople1@74,');
INSERT INTO `job_apply` VALUES ('34', '5', '0', '签字中', '2018-08-13 14:27:41', '74', '1', ',confirm2@75,confirm7@75,');
INSERT INTO `job_apply` VALUES ('35', '5', '1', '完成', '2018-08-13 15:39:35', '74', '2', ',');
INSERT INTO `job_apply` VALUES ('40', '4', '0', '签字中', '2018-08-13 16:48:58', '74', '13', ',confirm1@74,confirm2@74,confirm3@74,confirm4@74,confirm5@74,confirm6@74,confirm7@74,confirm8@74,confirm9@74,confirm10@74,confirm11@74,confirm12@74,confirm13@74,confirm14@74,signpeople1@74,signpeople2@74,signpeople3@74,signpeople4@74,');
INSERT INTO `job_apply` VALUES ('41', '4', '0', '签字中', '2018-08-13 16:50:25', '74', '14', ',confirm1@74,confirm2@74,confirm3@74,confirm4@74,confirm5@74,confirm6@74,confirm7@74,confirm8@74,confirm9@74,confirm10@74,confirm11@74,confirm12@74,confirm13@74,confirm14@74,signpeople1@74,signpeople2@74,signpeople3@74,signpeople4@74,');
INSERT INTO `job_apply` VALUES ('42', '6', '0', '签字中', '2018-08-13 16:51:46', '74', '1', ',confirm1@74,confirm2@74,confirm3@74,confirm4@74,confirm5@74,confirm6@74,confirm7@74,confirm8@74,confirm9@74,confirm10@74,confirm11@74,confirm12@74,confirm13@74,confirm14@74,confirm15@74,confirm16@74,signpeople1@74,signpeople2@74,signpeople3@74,signpeople4@74,');
INSERT INTO `job_apply` VALUES ('43', '6', '0', '签字中', '2018-08-13 16:54:56', '74', '2', ',confirm1@74,confirm2@74,confirm3@74,confirm4@74,confirm5@74,confirm6@74,confirm7@74,confirm8@74,confirm9@74,confirm10@74,confirm11@74,confirm12@74,confirm13@74,confirm14@74,confirm15@74,confirm16@74,signpeople1@74,signpeople2@74,signpeople3@74,signpeople4@74,');
INSERT INTO `job_apply` VALUES ('44', '6', '0', '签字中', '2018-08-13 16:55:08', '74', '3', ',confirm1@74,confirm2@74,confirm3@74,confirm4@74,confirm5@74,confirm6@74,confirm7@74,confirm8@74,confirm9@74,confirm10@74,confirm11@74,confirm12@74,confirm13@74,confirm14@74,confirm15@74,confirm16@74,signpeople1@74,signpeople2@74,signpeople3@74,signpeople4@74,');
INSERT INTO `job_apply` VALUES ('45', '6', '0', '签字中', '2018-08-13 16:58:04', '74', '4', ',confirm1@74,confirm2@74,confirm3@74,confirm4@74,confirm5@74,confirm6@74,confirm7@74,confirm8@74,confirm9@74,confirm10@74,confirm11@74,confirm12@74,confirm13@74,confirm14@74,confirm15@74,confirm16@74,signpeople1@74,signpeople2@74,signpeople3@74,signpeople4@74,');
INSERT INTO `job_apply` VALUES ('46', '6', '0', '签字中', '2018-08-13 16:58:25', '74', '5', ',confirm1@74,confirm2@74,confirm3@74,confirm4@74,confirm5@74,confirm6@74,confirm7@74,confirm8@74,confirm9@74,confirm10@74,confirm11@74,confirm12@74,confirm13@74,confirm14@74,confirm15@74,confirm16@74,signpeople1@74,signpeople2@74,signpeople3@74,signpeople4@74,');
INSERT INTO `job_apply` VALUES ('47', '8', '0', '签字中', '2018-08-13 17:21:29', '1', '6', ',');
INSERT INTO `job_apply` VALUES ('48', '8', '0', '签字中', '2018-08-13 17:23:05', '1', '7', ',');
INSERT INTO `job_apply` VALUES ('49', '8', '0', '签字中', '2018-08-13 17:24:22', '1', '8', ',');
INSERT INTO `job_apply` VALUES ('50', '8', '0', '签字中', '2018-08-13 17:25:11', '1', '9', ',');
INSERT INTO `job_apply` VALUES ('51', '6', '0', '签字中', '2018-08-13 17:28:57', '74', '6', ',confirm1@74,confirm2@74,confirm3@74,confirm4@74,confirm5@74,confirm6@74,confirm7@74,confirm8@74,confirm9@74,confirm10@75,confirm11@74,confirm12@74,confirm13@74,confirm14@74,confirm15@74,confirm16@74,signpeople1@74,signpeople2@74,signpeople3@74,signpeople4@74,');
INSERT INTO `job_apply` VALUES ('52', '6', '1', '完成', '2018-08-13 17:36:44', '74', '7', ',');
INSERT INTO `job_apply` VALUES ('53', '6', '0', '签字中', '2018-08-13 18:12:12', '74', '8', ',confirm1@74,confirm2@74,confirm3@74,74,signpeople1@74,signpeople2@74,signpeople3@74,signpeople4@74,');
INSERT INTO `job_apply` VALUES ('54', '7', '0', '签字中', '2018-08-13 18:15:50', '74', '1', ',confirm1@74,confirm2@74,confirm3@74,74,signpeople1@74,signpeople2@74,signpeople3@74,signpeople4@74,signpeople5@74,');
INSERT INTO `job_apply` VALUES ('55', '7', '0', '签字中', '2018-08-13 18:18:29', '74', '2', ',confirm1@74,confirm2@74,confirm3@74,74,signpeople1@74,signpeople2@74,signpeople3@74,signpeople4@74,signpeople5@74,');
INSERT INTO `job_apply` VALUES ('56', '7', '0', '签字中', '2018-08-13 18:22:06', '74', '3', ',confirm3@74,74,signpeople1@74,signpeople2@74,signpeople3@74,signpeople4@74,signpeople5@74,');
INSERT INTO `job_apply` VALUES ('57', '7', '1', '完成', '2018-08-13 18:26:56', '74', '4', ',');
INSERT INTO `job_apply` VALUES ('58', '2', '0', '签字中', '2018-08-14 10:04:17', '1', '1', ',');
INSERT INTO `job_apply` VALUES ('59', '4', '0', '签字中', '2018-08-14 10:38:56', '74', '15', ',confirm1@75,confirm7@74,confirm8@74,confirm9@74,confirm10@74,confirm11@74,confirm12@74,confirm13@74,signpeople3@74,signpeople4@74,');
INSERT INTO `job_apply` VALUES ('60', '4', '1', '完成', '2018-08-14 11:34:46', '74', '16', ',');
INSERT INTO `job_apply` VALUES ('61', '4', '1', '完成', '2018-08-14 11:38:06', '74', '17', ',');
INSERT INTO `job_apply` VALUES ('62', '5', '0', '签字中', '2018-08-14 15:44:25', '74', '3', ',confirm1@74,confirm2@74,confirm3@74,confirm4@74,confirm5@74,confirm6@74,confirm7@74,confirm8@74,confirm9@74,confirm10@74,confirm11@74,confirm12@74,confirm13@74,confirm14@74,confirm15@74,confirm16@74,confirm17@74,confirm18@74,confirm19@74,confirm20@74,confirm21@74,confirm22@74,confirm23@74,confirm24@74,confirm25@74,confirm26@74,confirm27@74,confirm28@74,confirm29@74,confirm30@74,confirm31@74,confirm32@74,confirm33@74,confirm34@74,confirm35@74,confirm36@74,confirm37@74,signpeople1@74,');
INSERT INTO `job_apply` VALUES ('63', '5', '1', '完成', '2018-08-14 15:55:26', '74', '4', ',');
INSERT INTO `job_apply` VALUES ('64', '8', '0', '签字中', '2018-08-14 17:05:39', '74', '10', ',confirm1@74,confirm2@74,confirm3@74,confirm4@74,confirm5@74,confirm6@74,confirm7@74,confirm8@74,confirm9@74,confirm10@74,signpeople1@74,signpeople2@74,signpeople3@74,signpeople4@74,');
INSERT INTO `job_apply` VALUES ('65', '6', '0', '签字中', '2018-08-14 17:07:52', '74', '9', ',confirm1@74,confirm2@74,confirm3@74,confirm4@74,confirm5@74,confirm6@74,confirm7@74,confirm8@74,confirm9@74,confirm10@74,confirm11@74,confirm12@74,confirm13@74,confirm14@74,confirm15@74,confirm16@74,signpeople1@74,signpeople2@74,signpeople3@74,signpeople4@74,');
INSERT INTO `job_apply` VALUES ('66', '6', '1', '完成', '2018-08-14 17:14:10', '74', '10', ',');
INSERT INTO `job_apply` VALUES ('67', '6', '0', '签字中', '2018-08-14 19:08:27', '74', '11', ',confirm1@74,confirm2@74,confirm4@74,signpeople1@74,signpeople2@74,signpeople3@74,signpeople4@74,');
INSERT INTO `job_apply` VALUES ('68', '7', '1', '完成', '2018-08-14 19:09:30', '74', '5', ',');
INSERT INTO `job_apply` VALUES ('69', '4', '1', '完成', '2018-08-14 19:11:19', '74', '18', ',');
INSERT INTO `job_apply` VALUES ('70', '5', '1', '完成', '2018-08-14 19:13:33', '74', '5', ',');
INSERT INTO `job_apply` VALUES ('71', '6', '0', '签字中', '2018-08-14 19:16:14', '74', '12', ',confirm1@74,confirm2@74,confirm3@74,confirm4@74,confirm5@74,confirm6@74,confirm7@74,confirm8@74,confirm9@74,confirm10@74,confirm11@74,confirm12@74,confirm13@74,confirm14@74,confirm15@74,confirm16@74,signpeople1@74,signpeople2@74,signpeople3@74,signpeople4@74,');
INSERT INTO `job_apply` VALUES ('72', '6', '1', '完成', '2018-08-14 19:18:34', '74', '13', ',');
INSERT INTO `job_apply` VALUES ('73', '8', '0', '签字中', '2018-08-14 19:28:28', '74', '11', ',');
INSERT INTO `job_apply` VALUES ('74', '4', '0', '签字中', '2018-08-14 19:36:45', '74', '19', ',');
INSERT INTO `job_apply` VALUES ('75', '7', '0', '签字中', '2018-08-14 20:28:00', '1', '6', ',');
INSERT INTO `job_apply` VALUES ('76', '4', '0', '签字中', '2018-08-22 17:02:18', '1', '20', ',');

-- ----------------------------
-- Table structure for `job_confinedspace`
-- ----------------------------
DROP TABLE IF EXISTS `job_confinedspace`;
CREATE TABLE `job_confinedspace` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `companyname` varchar(255) DEFAULT NULL COMMENT '公司名称',
  `serialnum` varchar(255) DEFAULT NULL COMMENT '作业证编号',
  `spacecompanyname` varchar(255) DEFAULT NULL COMMENT '受限空间所属单位',
  `spacename` varchar(255) DEFAULT NULL COMMENT '受限空间名称',
  `workmemo` varchar(255) DEFAULT NULL COMMENT '作业内容',
  `spaceagent` varchar(255) DEFAULT NULL COMMENT '受限空间内原有介质名称',
  `workstarttime` datetime DEFAULT NULL COMMENT '作业时间开始时间',
  `workendtime` datetime DEFAULT NULL COMMENT '作业结束时间',
  `workemployee` varchar(50) DEFAULT NULL COMMENT '作业单位负责人',
  `keeper` varchar(255) DEFAULT NULL COMMENT '监护人',
  `worker` varchar(255) DEFAULT NULL COMMENT '作业人',
  `othermemo` varchar(255) DEFAULT NULL COMMENT '涉及的其他特殊作业',
  `dangermemo` varchar(255) DEFAULT NULL COMMENT '危害辨识',
  `standard` varchar(255) DEFAULT NULL COMMENT '分析标准-有毒有害介质',
  `standardair` varchar(255) DEFAULT NULL COMMENT '分析标准-可燃气',
  `standardgas` varchar(255) DEFAULT NULL COMMENT '分析标准-氧含量',
  `analyse1` varchar(255) DEFAULT NULL COMMENT '分析数据-有毒有害介质',
  `analyseair1` varchar(255) DEFAULT NULL COMMENT '分析数据-可燃气',
  `analysegas1` varchar(255) DEFAULT NULL COMMENT '分析数据-氧含量',
  `analysetime1` datetime DEFAULT NULL COMMENT '分析数据-时间',
  `analyseplace1` varchar(255) DEFAULT NULL COMMENT '分析数据-部位',
  `analyseemployee1` varchar(255) DEFAULT NULL COMMENT '分析数据-分析人',
  `analyse2` varchar(255) DEFAULT NULL COMMENT '分析数据-有毒有害介质2',
  `analyseair2` varchar(255) DEFAULT NULL COMMENT '分析数据-可燃气2',
  `analysegas2` varchar(255) DEFAULT NULL COMMENT '分析数据-氧含量2',
  `analysetime2` datetime DEFAULT NULL COMMENT '分析数据-时间2',
  `analyseplace2` varchar(255) DEFAULT NULL COMMENT '分析数据-部位2',
  `analyseemployee2` varchar(255) DEFAULT NULL COMMENT '分析数据-分析人2',
  `analyse3` varchar(255) DEFAULT NULL COMMENT '分析数据-有毒有害介质3',
  `analyseair3` varchar(255) DEFAULT NULL COMMENT '分析数据-可燃气3',
  `analysegas3` varchar(255) DEFAULT NULL COMMENT '分析数据-氧含量3',
  `analysetime3` datetime DEFAULT NULL COMMENT '分析数据-时间3',
  `analyseplace3` varchar(255) DEFAULT NULL COMMENT '分析数据-部位3',
  `analyseemployee3` varchar(255) DEFAULT NULL COMMENT '分析数据-分析人3',
  `analyse4` varchar(255) DEFAULT NULL COMMENT '分析数据-有毒有害介质4',
  `analyseair4` varchar(255) DEFAULT NULL COMMENT '分析数据-可燃气4',
  `analysegas4` varchar(255) DEFAULT NULL COMMENT '分析数据-氧含量4',
  `analysetime4` datetime DEFAULT NULL COMMENT '分析数据-时间4',
  `analyseplace4` varchar(255) DEFAULT NULL COMMENT '分析数据-部位4',
  `analyseemployee4` varchar(255) DEFAULT NULL COMMENT '分析数据-分析人4',
  `confirm1` varchar(255) DEFAULT NULL COMMENT '确认人',
  `confirmimg1` varchar(255) DEFAULT NULL COMMENT '确认人1签字',
  `confirm2` varchar(255) DEFAULT NULL COMMENT '确认人2',
  `confirmimg2` varchar(255) DEFAULT NULL COMMENT '确认人2签字',
  `confirm3` varchar(255) DEFAULT NULL COMMENT '确认人3',
  `confirmimg3` varchar(255) DEFAULT NULL COMMENT '确认人3签字',
  `confirm4` varchar(255) DEFAULT NULL COMMENT '确认人4',
  `confirmimg4` varchar(255) DEFAULT NULL COMMENT '确认人4签字',
  `confirm5` varchar(255) DEFAULT NULL COMMENT '确认人5',
  `confirmimg5` varchar(255) DEFAULT NULL COMMENT '确认人5签字',
  `confirm6` varchar(255) DEFAULT NULL COMMENT '确认人6',
  `confirmimg6` varchar(255) DEFAULT NULL COMMENT '确认人6签字',
  `confirm7` varchar(255) DEFAULT NULL COMMENT '确认人7',
  `confirmimg7` varchar(255) DEFAULT NULL COMMENT '确认人7签字',
  `confirm8` varchar(255) DEFAULT NULL COMMENT '确认人8',
  `confirmimg8` varchar(255) DEFAULT NULL COMMENT '确认人8签字',
  `confirm9` varchar(255) DEFAULT NULL COMMENT '确认人9',
  `confirmimg9` varchar(255) DEFAULT NULL COMMENT '确认人9签字',
  `confirm10` varchar(255) DEFAULT NULL COMMENT '确认人10',
  `confirmimg10` varchar(255) DEFAULT NULL COMMENT '确认人10签字',
  `educate` varchar(255) DEFAULT NULL COMMENT '安全教育人',
  `signtime1` datetime DEFAULT NULL COMMENT '签字时间1',
  `signpeople1` varchar(255) DEFAULT NULL COMMENT '签字人1',
  `signimg1` varchar(255) DEFAULT NULL COMMENT '签字图片1',
  `signmemo1` varchar(255) DEFAULT NULL COMMENT '意见1',
  `signtime2` datetime DEFAULT NULL COMMENT '签字时间2',
  `signpeople2` varchar(255) DEFAULT NULL COMMENT '签字人2',
  `signimg2` varchar(255) DEFAULT NULL COMMENT '签字图片2',
  `signmemo2` varchar(255) DEFAULT NULL COMMENT '意见2',
  `signtime3` datetime DEFAULT NULL COMMENT '签字时间3',
  `signpeople3` varchar(255) DEFAULT NULL COMMENT '签字人3',
  `signimg3` varchar(255) DEFAULT NULL COMMENT '签字图片3',
  `signmemo3` varchar(255) DEFAULT NULL COMMENT '意见3',
  `steamnum` varchar(255) DEFAULT NULL COMMENT '消防器材',
  `extinguishernum` varchar(255) DEFAULT NULL COMMENT '救生绳',
  `spadenum` varchar(255) DEFAULT NULL COMMENT '气防装备',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='受限空间安全作业证';

-- ----------------------------
-- Records of job_confinedspace
-- ----------------------------
INSERT INTO `job_confinedspace` VALUES ('1', '申请单位2', 'NO.S-YY00753', '所属单位', '空间', '内容', '截止名称', '2018-08-14 10:02:00', '2018-08-30 10:02:00', null, null, null, null, null, '1', '2', '3', '4', '5', '6', '2018-08-14 10:02:00', '7', null, '8', '9', '10', '2018-08-15 10:02:00', '11', null, '12', '13', '14', '2018-08-16 10:02:00', '15', null, '16', '17', '18', '2018-08-14 10:03:00', '19', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '3', '4');

-- ----------------------------
-- Table structure for `job_electricity`
-- ----------------------------
DROP TABLE IF EXISTS `job_electricity`;
CREATE TABLE `job_electricity` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `companyname` varchar(255) DEFAULT NULL COMMENT '公司名称',
  `serialnum` varchar(255) DEFAULT NULL COMMENT '作业证编号',
  `workstarttime` datetime DEFAULT NULL COMMENT '作业时间开始时间',
  `workendtime` datetime DEFAULT NULL COMMENT '作业结束时间',
  `workplace` varchar(255) DEFAULT NULL COMMENT '作业地点',
  `powerplace` varchar(255) DEFAULT NULL COMMENT '电源接入点',
  `workelectric` varchar(255) DEFAULT NULL COMMENT '工作电压',
  `workdevice` varchar(255) DEFAULT NULL COMMENT '用电设备及功率',
  `workpeople` varchar(255) DEFAULT NULL COMMENT '作业人',
  `powerno` varchar(255) DEFAULT NULL COMMENT '电工证号',
  `dangermemo` varchar(255) DEFAULT NULL COMMENT '危害辨识',
  `confirm1` varchar(255) DEFAULT NULL COMMENT '确认人',
  `confirmimg1` varchar(255) DEFAULT NULL COMMENT '确认人1签字',
  `confirm2` varchar(255) DEFAULT NULL COMMENT '确认人2',
  `confirmimg2` varchar(255) DEFAULT NULL COMMENT '确认人2签字',
  `confirm3` varchar(255) DEFAULT NULL COMMENT '确认人3',
  `confirmimg3` varchar(255) DEFAULT NULL COMMENT '确认人3签字',
  `confirm4` varchar(255) DEFAULT NULL COMMENT '确认人4',
  `confirmimg4` varchar(255) DEFAULT NULL COMMENT '确认人4签字',
  `confirm5` varchar(255) DEFAULT NULL COMMENT '确认人5',
  `confirmimg5` varchar(255) DEFAULT NULL COMMENT '确认人5签字',
  `confirm6` varchar(255) DEFAULT NULL COMMENT '确认人6',
  `confirmimg6` varchar(255) DEFAULT NULL COMMENT '确认人6签字',
  `confirm7` varchar(255) DEFAULT NULL COMMENT '确认人7',
  `confirmimg7` varchar(255) DEFAULT NULL COMMENT '确认人7签字',
  `confirm8` varchar(255) DEFAULT NULL COMMENT '确认人8',
  `confirmimg8` varchar(255) DEFAULT NULL COMMENT '确认人8签字',
  `confirm9` varchar(255) DEFAULT NULL COMMENT '确认人9',
  `confirmimg9` varchar(255) DEFAULT NULL COMMENT '确认人9签字',
  `confirm10` varchar(255) DEFAULT NULL COMMENT '确认人10',
  `confirmimg10` varchar(255) DEFAULT NULL COMMENT '确认人10签字',
  `educate` varchar(255) DEFAULT NULL COMMENT '安全教育人',
  `signtime1` datetime DEFAULT NULL COMMENT '签字时间1',
  `signpeople1` varchar(255) DEFAULT NULL COMMENT '签字人1',
  `signimg1` varchar(255) DEFAULT NULL COMMENT '签字图片1',
  `signmemo1` varchar(255) DEFAULT NULL COMMENT '意见1',
  `signtime2` datetime DEFAULT NULL COMMENT '签字时间2',
  `signpeople2` varchar(255) DEFAULT NULL COMMENT '签字人2',
  `signimg2` varchar(255) DEFAULT NULL COMMENT '签字图片2',
  `signmemo2` varchar(255) DEFAULT NULL COMMENT '意见2',
  `signtime3` datetime DEFAULT NULL COMMENT '签字时间3',
  `signpeople3` varchar(255) DEFAULT NULL COMMENT '签字人3',
  `signimg3` varchar(255) DEFAULT NULL COMMENT '签字图片3',
  `signmemo3` varchar(255) DEFAULT NULL COMMENT '意见3',
  `signtime4` datetime DEFAULT NULL COMMENT '签字时间4',
  `signpeople4` varchar(255) DEFAULT NULL COMMENT '签字人4',
  `signimg4` varchar(255) DEFAULT NULL COMMENT '签字图片4',
  `signmemo4` varchar(255) DEFAULT NULL COMMENT '意见4',
  `otherconfirm` varchar(255) DEFAULT NULL COMMENT '其他安全措施',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='临时用电安全作业证';

-- ----------------------------
-- Records of job_electricity
-- ----------------------------
INSERT INTO `job_electricity` VALUES ('1', '申请单位1', 'NO.S-YY00363', '2018-08-12 12:15:00', '2018-08-12 15:16:00', '作业地点2', '电源接入点1', '工作电压1', '用电设备1', '巡检员1', '电工证号125', '危害标识11', '74', '/job/sign/74/20180813170602_142.jpg', '74', '/job/sign/74/20180813171236_280.jpg', '74', '/job/sign/74/20180813171650_577.jpg', '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '巡检员2', null, '74', null, null, null, '74', null, null, '2018-08-13 17:13:55', '74', '/job/sign/74/20180813171250_230.jpg', null, null, '74', null, null, '其他安全措施22');
INSERT INTO `job_electricity` VALUES ('6', null, 'NO.S-YY00499', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `job_electricity` VALUES ('7', null, 'NO.S-YY00500', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `job_electricity` VALUES ('8', null, 'NO.S-YY00501', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `job_electricity` VALUES ('9', null, 'NO.S-YY00502', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `job_electricity` VALUES ('10', null, 'NO.S-YY00925', null, null, null, null, null, null, null, null, null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, null, null, '74', null, null, null, '74', null, null, null, '74', null, null, null, '74', null, null, null);
INSERT INTO `job_electricity` VALUES ('11', null, 'NO.S-YY00986', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `job_flare`
-- ----------------------------
DROP TABLE IF EXISTS `job_flare`;
CREATE TABLE `job_flare` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `grade` varchar(20) DEFAULT NULL COMMENT '动火作业级别  特级 一级  二级 ',
  `serialnum` varchar(255) DEFAULT NULL COMMENT '编号',
  `companyname` varchar(255) DEFAULT NULL COMMENT '申请单位',
  `countersignature` varchar(255) DEFAULT NULL COMMENT '会签单位',
  `flareplace` varchar(255) DEFAULT NULL COMMENT '动火地点',
  `flareway` varchar(255) DEFAULT NULL COMMENT '动火内容方式',
  `flarestarttime` datetime DEFAULT NULL COMMENT '动火开始时间',
  `flareendtime` datetime DEFAULT NULL COMMENT '动火结束时间',
  `workplace` varchar(255) DEFAULT NULL COMMENT '施工单位',
  `workprincipal` varchar(255) DEFAULT NULL COMMENT '施工负责人',
  `flarepeople1` varchar(255) DEFAULT NULL COMMENT '动火人1',
  `special1` varchar(255) DEFAULT NULL COMMENT '特殊工种类别1',
  `specialno1` varchar(255) DEFAULT NULL COMMENT '特殊工种证号1',
  `special2` varchar(255) DEFAULT NULL COMMENT '特殊工种类别2',
  `specialno2` varchar(255) DEFAULT NULL COMMENT '特殊工种证号2',
  `special3` varchar(255) DEFAULT NULL COMMENT '监火人',
  `specialno3` varchar(255) DEFAULT NULL COMMENT '监火资格证号',
  `samplingtime1` datetime DEFAULT NULL COMMENT '采样分析时间',
  `samplingplace1` varchar(255) DEFAULT NULL COMMENT '采样部位',
  `samplingair1` varchar(255) DEFAULT NULL COMMENT '作业环境大气',
  `sampling1` varchar(255) DEFAULT NULL COMMENT '设备、容器、管线内部',
  `samplingpoison1` varchar(255) DEFAULT NULL COMMENT '有毒气体',
  `samplingpeople1` varchar(255) DEFAULT NULL COMMENT '分析人员签字',
  `samplingimg1` varchar(255) DEFAULT NULL COMMENT '分析人员签字',
  `samplingtime2` datetime DEFAULT NULL COMMENT '采样分析时间2',
  `samplingplace2` varchar(255) DEFAULT NULL COMMENT '采样部位2',
  `samplingair2` varchar(255) DEFAULT NULL COMMENT '作业环境大气2',
  `sampling2` varchar(255) DEFAULT NULL COMMENT '设备、容器、管线内部2',
  `samplingpoison2` varchar(255) DEFAULT NULL COMMENT '有毒气体2',
  `samplingpeople2` varchar(255) DEFAULT NULL COMMENT '分析人员签字2',
  `samplingimg2` varchar(255) DEFAULT NULL COMMENT '分析人员签字2',
  `samplingtime3` datetime DEFAULT NULL COMMENT '采样分析时间3',
  `samplingplace3` varchar(255) DEFAULT NULL COMMENT '采样部位3',
  `samplingair3` varchar(255) DEFAULT NULL COMMENT '作业环境大气3',
  `sampling3` varchar(255) DEFAULT NULL COMMENT '设备、容器、管线内部3',
  `samplingpoison3` varchar(255) DEFAULT NULL COMMENT '有毒气体3',
  `samplingpeople3` varchar(255) DEFAULT NULL COMMENT '分析人员签字3',
  `samplingimg3` varchar(255) DEFAULT NULL COMMENT '分析人员签字3',
  `harm` varchar(255) DEFAULT NULL COMMENT '危害辨识 火灾爆炸 中毒和窒息 触电灼烫 机械伤害 高处坠落 物体打击 坍塌',
  `otherwork` varchar(255) DEFAULT NULL COMMENT '涉及的其他特殊作业',
  `platenum` int(11) DEFAULT NULL COMMENT '盲板',
  `steamnum` int(11) DEFAULT NULL COMMENT '蒸汽带',
  `extinguishernum` int(11) DEFAULT NULL COMMENT '灭火器',
  `spadenum` int(11) DEFAULT NULL COMMENT '铁锹',
  `clothnum` int(11) DEFAULT NULL COMMENT '石棉布',
  `confirm1` varchar(255) DEFAULT NULL COMMENT '确认人',
  `confirmimg1` varchar(255) DEFAULT NULL COMMENT '确认人1签字',
  `confirm2` varchar(255) DEFAULT NULL COMMENT '确认人2',
  `confirmimg2` varchar(255) DEFAULT NULL COMMENT '确认人2签字',
  `confirm3` varchar(255) DEFAULT NULL COMMENT '确认人3',
  `confirmimg3` varchar(255) DEFAULT NULL COMMENT '确认人3签字',
  `confirm4` varchar(255) DEFAULT NULL COMMENT '确认人4',
  `confirmimg4` varchar(255) DEFAULT NULL COMMENT '确认人4签字',
  `confirm5` varchar(255) DEFAULT NULL COMMENT '确认人5',
  `confirmimg5` varchar(255) DEFAULT NULL COMMENT '确认人5签字',
  `confirm6` varchar(255) DEFAULT NULL COMMENT '确认人6',
  `confirmimg6` varchar(255) DEFAULT NULL COMMENT '确认人6签字',
  `confirm7` varchar(255) DEFAULT NULL COMMENT '确认人7',
  `confirmimg7` varchar(255) DEFAULT NULL COMMENT '确认人7签字',
  `confirm8` varchar(255) DEFAULT NULL COMMENT '确认人8',
  `confirmimg8` varchar(255) DEFAULT NULL COMMENT '确认人8签字',
  `confirm9` varchar(255) DEFAULT NULL COMMENT '确认人9',
  `confirmimg9` varchar(255) DEFAULT NULL COMMENT '确认人9签字',
  `confirm10` varchar(255) DEFAULT NULL COMMENT '确认人10',
  `confirmimg10` varchar(255) DEFAULT NULL COMMENT '确认人10签字',
  `educate` varchar(255) DEFAULT NULL COMMENT '安全教育人',
  `signtime1` datetime DEFAULT NULL COMMENT '签字时间1',
  `signpeople1` varchar(255) DEFAULT NULL COMMENT '签字人1',
  `signimg1` varchar(255) DEFAULT NULL COMMENT '签字图片1',
  `signmemo1` varchar(255) DEFAULT NULL COMMENT '意见1',
  `signtime2` datetime DEFAULT NULL COMMENT '签字时间2',
  `signpeople2` varchar(255) DEFAULT NULL COMMENT '签字人2',
  `signimg2` varchar(255) DEFAULT NULL COMMENT '签字图片2',
  `signmemo2` varchar(255) DEFAULT NULL COMMENT '意见2',
  `signtime3` datetime DEFAULT NULL COMMENT '签字时间3',
  `signpeople3` varchar(255) DEFAULT NULL COMMENT '签字人3',
  `signimg3` varchar(255) DEFAULT NULL COMMENT '签字图片3',
  `signmemo3` varchar(255) DEFAULT NULL COMMENT '意见3',
  `signtime4` datetime DEFAULT NULL COMMENT '签字时间4',
  `signpeople4` varchar(255) DEFAULT NULL COMMENT '签字人4',
  `signimg4` varchar(255) DEFAULT NULL COMMENT '签字图片4',
  `signmemo4` varchar(255) DEFAULT NULL COMMENT '意见4',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='动火安全作业证\r\n';

-- ----------------------------
-- Records of job_flare
-- ----------------------------
INSERT INTO `job_flare` VALUES ('14', '1', 'NO.S-YY00246', '单位～～', '汇钱到底', '动火部位～～～', '内容5555', '2018-08-10 17:05:00', '2018-08-10 17:05:00', '施工单位？', '巡检员1', '巡检员1', '特殊累白', '号码8558885', '特殊？黄家驹', '公告？？？？', '巡检员1', '劳劳碌碌', '2018-08-10 06:05:00', '白羊部位', '劳劳碌碌', '路路通', '啦啦啦', '74', '/job/sign/74/20180810174024_286.jpg', '2018-08-10 11:05:00', '劳劳碌碌', '屠龙记', '劳劳碌碌', '太空旅客', '75', null, '2018-08-10 17:09:00', '太空旅客', '图了', '卡册', '啦啦啦', '74', '/job/sign/74/20180810174722_563.jpg', '中毒和窒息,灼烫,物体打击,其它', '健健康康健健康康', '1', '1', '2', '3', '4', '74', '/job/sign/74/20180810171758_808.jpg', '74', '/job/sign/74/20180810173642_516.jpg', '75', null, '74', '/job/sign/74/20180810174000_741.jpg', '75', null, '74', '/job/sign/74/20180810173338_182.jpg', '75', null, '74', '/job/sign/74/20180810174702_949.jpg', '74', '/job/sign/74/20180810174725_729.jpg', '74', '/job/sign/74/20180810174729_884.jpg', '75', null, null, null, null, null, '75', null, null, null, '75', null, null, '2018-08-10 17:28:35', '74', '/job/sign/74/20180810172734_43.jpg', null);
INSERT INTO `job_flare` VALUES ('15', '0', 'NO.S-YY00247', '辣鸡', '科技馆', '啦啦啦', '啦啦啦', '2018-08-10 17:41:00', '2018-08-10 17:41:00', '积极', '巡检员1', '巡检员1', '啦啦啦', '啦啦啦', '出来了', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '75', null, '74', '/job/sign/74/20180810174533_919.jpg', '74', '/job/sign/74/20180810174535_216.jpg', null, null, null, null, null, null, null, null, null, null, null, null, '74', '/job/sign/74/20180810174505_62.jpg', '巡检员1', '2018-08-10 17:46:10', '74', '/job/sign/74/20180810174509_354.jpg', null, null, null, null, null, '2018-08-10 17:46:13', '74', '/job/sign/74/20180810174512_691.jpg', null, '2018-08-10 17:46:15', '74', '/job/sign/74/20180810174515_490.jpg', null);
INSERT INTO `job_flare` VALUES ('16', '1', 'NO.S-YY00404', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `job_height`
-- ----------------------------
DROP TABLE IF EXISTS `job_height`;
CREATE TABLE `job_height` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `apply_unit` varchar(255) DEFAULT NULL,
  `serialnum` varchar(50) DEFAULT NULL,
  `work_space` varchar(200) DEFAULT NULL,
  `work_begin_time` datetime DEFAULT NULL,
  `work_end_time` datetime DEFAULT NULL,
  `work_content` varchar(255) DEFAULT NULL,
  `work_height` varchar(255) DEFAULT NULL,
  `work_unit` varchar(255) DEFAULT NULL,
  `work_person` varchar(50) DEFAULT NULL,
  `work_type` varchar(50) DEFAULT NULL,
  `work_guardian` varchar(50) DEFAULT NULL,
  `special_work_relation` varchar(255) DEFAULT NULL,
  `dranger_identify` varchar(255) DEFAULT NULL,
  `confirm1` varchar(255) DEFAULT NULL,
  `confirmimg1` varchar(255) DEFAULT NULL,
  `confirm2` varchar(255) DEFAULT NULL,
  `confirmimg2` varchar(255) DEFAULT NULL,
  `confirm3` varchar(255) DEFAULT NULL,
  `confirmimg3` varchar(255) DEFAULT NULL,
  `confirm4` varchar(255) DEFAULT NULL,
  `confirmimg4` varchar(255) DEFAULT NULL,
  `confirm5` varchar(255) DEFAULT NULL,
  `confirmimg5` varchar(255) DEFAULT NULL,
  `confirm6` varchar(255) DEFAULT NULL,
  `confirmimg6` varchar(255) DEFAULT NULL,
  `confirm7` varchar(255) DEFAULT NULL,
  `confirmimg7` varchar(255) DEFAULT NULL,
  `confirm8` varchar(255) DEFAULT NULL,
  `confirmimg8` varchar(255) DEFAULT NULL,
  `confirm9` varchar(255) DEFAULT NULL,
  `confirmimg9` varchar(255) DEFAULT NULL,
  `confirm10` varchar(255) DEFAULT NULL,
  `confirmimg10` varchar(255) DEFAULT NULL,
  `confirm11` varchar(255) DEFAULT NULL,
  `confirmimg11` varchar(255) DEFAULT NULL,
  `confirm12` varchar(255) DEFAULT NULL,
  `confirmimg12` varchar(255) DEFAULT NULL,
  `confirm13` varchar(255) DEFAULT NULL,
  `confirmimg13` varchar(255) DEFAULT NULL,
  `confirm14` varchar(255) DEFAULT NULL,
  `confirmimg14` varchar(255) DEFAULT NULL,
  `prepare_person` varchar(255) DEFAULT NULL,
  `application` varchar(255) DEFAULT NULL,
  `safe_jxr` varchar(100) DEFAULT NULL,
  `signtime1` datetime DEFAULT NULL,
  `signpeople1` varchar(255) DEFAULT NULL,
  `signmemo1` varchar(255) DEFAULT NULL,
  `signimg1` varchar(255) DEFAULT NULL,
  `signtime2` datetime DEFAULT NULL,
  `signpeople2` varchar(255) DEFAULT NULL,
  `signmemo2` varchar(255) DEFAULT NULL,
  `signimg2` varchar(255) DEFAULT NULL,
  `signtime3` datetime DEFAULT NULL,
  `signmemo3` varchar(255) DEFAULT NULL,
  `signpeople3` varchar(255) DEFAULT NULL,
  `signimg3` varchar(255) DEFAULT NULL,
  `signtime4` datetime DEFAULT NULL,
  `signmemo4` varchar(255) DEFAULT NULL,
  `signpeople4` varchar(255) DEFAULT NULL,
  `signimg4` varchar(255) DEFAULT NULL,
  `signtime5` datetime DEFAULT NULL,
  `signpeople5` varchar(255) DEFAULT NULL,
  `signimg5` varchar(255) DEFAULT NULL,
  `signmemo5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='高处安全作业证';

-- ----------------------------
-- Records of job_height
-- ----------------------------
INSERT INTO `job_height` VALUES ('3', '12', 'NO.S-YY00374', '1', '2018-08-29 16:44:58', '2018-08-16 16:45:02', null, '1', '1', '巡检员1', '1', '巡检员1', '1', '1', '74', '/job/sign/74/20180812162829_460.jpg', '74', '/job/sign/74/20180812162842_386.jpg', '74', '/job/sign/74/20180812162846_878.jpg', '74', '/job/sign/74/20180812162851_950.jpg', '74', '/job/sign/74/20180812162855_108.jpg', '74', '/job/sign/74/20180812162859_222.jpg', '74', '/job/sign/74/20180812164754_976.jpg', '74', '/job/sign/74/20180812164757_977.jpg', '74', '/job/sign/74/20180812164759_605.jpg', '74', '/job/sign/74/20180812164813_114.jpg', '74', '/job/sign/74/20180812164816_230.jpg', '74', '/job/sign/74/20180812164819_659.jpg', '74', '/job/sign/74/20180812164821_152.jpg', '74', '/job/sign/74/20180812165108_777.jpg', '74', '11', '巡检员1', '2018-08-15 16:57:23', '74', null, '/job/sign/74/20180812165110_657.jpg', '2018-08-30 16:52:21', '74', null, '/job/sign/74/20180812165158_363.jpg', '2018-08-15 16:52:36', null, '74', '/job/sign/74/20180812165136_603.jpg', '2018-08-15 16:52:47', null, '74', '/job/sign/74/20180812165900_19.jpg', '2018-08-15 16:57:52', '74', '/job/sign/74/20180812165910_453.jpg', null);
INSERT INTO `job_height` VALUES ('5', '2', 'NO.S-YY00375', '2', '2018-08-12 16:59:00', '2018-08-12 16:59:00', '2', '2', '2', '巡检员1', '2', '巡检员1', '2', '2', '75', null, '74', '/job/sign/74/20180812170311_5.jpg', '74', '/job/sign/74/20180812170313_511.jpg', '74', '/job/sign/74/20180812170316_634.jpg', '74', '/job/sign/74/20180812170320_714.jpg', '74', '/job/sign/74/20180812170322_214.jpg', '74', '/job/sign/74/20180812170324_598.jpg', '74', '/job/sign/74/20180812170326_161.jpg', '74', '/job/sign/74/20180812170328_190.jpg', '74', '/job/sign/74/20180812170329_823.jpg', '74', '/job/sign/74/20180812170333_925.jpg', '74', '/job/sign/74/20180812170335_630.jpg', '74', '/job/sign/74/20180812170337_295.jpg', null, null, '74', '2', '巡检员1', null, '74', null, '/job/sign/74/20180812170342_739.jpg', null, '74', null, '/job/sign/74/20180812170343_367.jpg', null, null, '74', '/job/sign/74/20180812170346_166.jpg', null, null, '74,74', null, null, null, null, null);
INSERT INTO `job_height` VALUES ('6', '2', 'NO.S-YY00375', '2', '2018-08-12 16:59:00', '2018-08-12 16:59:00', '2', '2', '2', '巡检员1', '2', '巡检员1', '2', '2', '75', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, null, null, '74', '2', '巡检员1', null, '74', null, null, null, '74', null, null, null, null, '74', null, null, null, '74,74', null, null, null, null, null);
INSERT INTO `job_height` VALUES ('7', '2', 'NO.S-YY00375', '2', '2018-08-12 16:59:00', '2018-08-12 16:59:00', '2', '2', '2', '巡检员1', '2', '巡检员1', '2', '2', '75', null, '74', '/job/sign/74/20180813111747_466.jpg', '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, null, null, '74', '2', '巡检员1', null, '74', null, null, null, '74', null, null, null, null, '74', null, null, null, '74,74', null, null, null, null, null);
INSERT INTO `job_height` VALUES ('8', '3', 'NO.S-YY00377', '3', '2018-08-12 17:09:00', '2018-08-31 23:50:00', '3', '3', '3', '巡检员1', '3', '巡检员2', '3', '3', '74', '/job/sign/74/20180812171110_607.jpg', '75', null, '74', '/job/sign/74/20180812171112_160.jpg', '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', '/job/sign/74/20180812171119_523.jpg', '74', '/job/sign/74/20180812171122_342.jpg', '74', '3', '巡检员1', null, '74', null, null, null, '74', null, null, null, null, '74', null, null, null, '74,74', null, null, null, null, null);
INSERT INTO `job_height` VALUES ('9', '4', 'NO.S-YY00378', '44', '2018-08-12 17:32:00', '2018-08-12 17:32:00', '4', '4', '4', '巡检员1', '4', '巡检员1', '4', '4', '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', '4', '巡检员1', null, '74', null, null, null, '74', null, null, null, null, '74', null, null, null, '74,74', null, null, null, null, null);
INSERT INTO `job_height` VALUES ('10', '4', 'NO.S-YY00378', '44', '2018-08-12 17:32:00', '2018-08-12 17:32:00', '4', '4', '4', '巡检员1', '4', '巡检员1', '4', '4', '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', '4', '巡检员1', null, '74', null, null, null, '74', null, null, null, null, '74', null, null, null, '74,74', null, null, null, null, null);
INSERT INTO `job_height` VALUES ('11', '5', 'NO.S-YY00380', '5', '2018-08-12 17:36:00', '2018-08-12 17:36:00', '5', '5', '5', '巡检员2', '5', '巡检员1', '5', '5', '74', '/job/sign/74/20180812173739_784.jpg', '74', '/job/sign/74/20180812173742_162.jpg', '74', '/job/sign/74/20180812173744_28.jpg', '74', '/job/sign/74/20180812173746_447.jpg', '74', '/job/sign/74/20180812173747_632.jpg', '74', '/job/sign/74/20180812173749_780.jpg', '74', '/job/sign/74/20180812173750_979.jpg', '74', '/job/sign/74/20180812173752_592.jpg', '74', '/job/sign/74/20180812173754_758.jpg', '74', '/job/sign/74/20180812173755_622.jpg', '74', '/job/sign/74/20180812173757_215.jpg', '74', '/job/sign/74/20180812173759_643.jpg', '74', '/job/sign/74/20180812173802_933.jpg', '74', '/job/sign/74/20180812173804_328.jpg', '74', '5', '巡检员1', '2018-08-12 17:50:12', '74', null, '/job/sign/74/20180812173806_439.jpg', '2018-08-12 17:40:15', '74', null, '/job/sign/74/20180812173811_923.jpg', '2018-08-12 17:40:20', null, '74', '/job/sign/74/20180812173816_165.jpg', '2018-08-12 17:44:46', null, '74', '/job/sign/74/20180812174242_86.jpg', '2018-08-12 17:52:08', '74', '/job/sign/74/20180812175003_116.jpg', null);
INSERT INTO `job_height` VALUES ('12', null, 'NO.S-YY00417', null, null, null, null, null, null, null, null, null, null, '1', '74', null, '75', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, null, null, null, null, '74', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `job_height` VALUES ('13', '1', 'NO.S-YY00493', null, '2018-08-13 16:46:00', '2018-08-13 16:46:00', '1', null, null, null, null, null, null, '1', '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, null, null, null, '2018-06-20 06:15:00', '74', null, null, null, '74', null, null, null, null, '74', null, null, null, '74', null, null, '74', null, null);
INSERT INTO `job_height` VALUES ('14', '1', 'NO.S-YY00495', null, '2018-08-13 16:47:00', '2018-08-13 16:47:00', '1', null, null, null, null, null, null, '1', '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, null, null, null, null, '74', null, null, null, '74', null, null, null, null, '74', null, null, null, '74', null, null, '74', null, null);
INSERT INTO `job_height` VALUES ('15', '1', 'NO.S-YY00785', '1', '2018-08-15 10:36:00', '2018-08-23 10:36:00', '1', '1', '1', '巡检员', '1', '1', '1', '1', '75', null, '74', '/job/sign/74/20180814111731_888.jpg', '74', '/job/sign/74/20180814111733_286.jpg', '74', '/job/sign/74/20180814111735_765.jpg', '74', '/job/sign/74/20180814111737_246.jpg', '74', '/job/sign/74/20180814111805_447.jpg', '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', '/job/sign/74/20180814111743_928.jpg', null, null, null, '2018-08-14 11:19:53', '74', null, '/job/sign/74/20180814111748_748.jpg', '2018-08-14 11:20:13', '74', null, '/job/sign/74/20180814111808_658.jpg', null, null, '74', null, null, null, '74', null, null, '74', null, null);
INSERT INTO `job_height` VALUES ('16', '1', 'NO.S-YY00809', '1', '2018-08-14 11:27:00', '2018-08-14 11:27:00', '1', '1', '1', '巡检员', '1', '1', '1', '1', '74', '/job/sign/74/20180814113328_97.jpg', '74', '/job/sign/74/20180814113330_685.jpg', '74', '/job/sign/74/20180814113332_467.jpg', '74', '/job/sign/74/20180814113333_781.jpg', '74', '/job/sign/74/20180814113335_396.jpg', '74', '/job/sign/74/20180814113336_55.jpg', '74', '/job/sign/74/20180814113338_935.jpg', '74', '/job/sign/74/20180814113339_547.jpg', '74', '/job/sign/74/20180814113341_422.jpg', '74', '/job/sign/74/20180814113342_386.jpg', '74', '/job/sign/74/20180814113344_688.jpg', '74', '/job/sign/74/20180814113346_898.jpg', '74', '/job/sign/74/20180814113348_562.jpg', null, null, '巡检员', '1', '巡检员', '2018-08-14 11:36:00', '74', null, '/job/sign/74/20180814113355_521.jpg', '2018-08-14 11:36:02', '74', null, '/job/sign/74/20180814113357_684.jpg', '2018-08-14 11:36:05', null, '74', '/job/sign/74/20180814113400_858.jpg', '2018-08-14 11:36:06', null, '74', '/job/sign/74/20180814113401_487.jpg', '2018-08-14 11:36:08', '74', '/job/sign/74/20180814113403_635.jpg', null);
INSERT INTO `job_height` VALUES ('17', '1', 'NO.S-YY00823', '1', '2018-08-30 11:35:00', '2018-08-30 11:35:00', '1', '1', '1', '巡检员', '1', '1', '1', '1', '74', '/job/sign/74/20180814113620_195.jpg', '74', '/job/sign/74/20180814113622_380.jpg', '74', '/job/sign/74/20180814113623_482.jpg', '74', '/job/sign/74/20180814113625_135.jpg', '74', '/job/sign/74/20180814113626_612.jpg', '74', '/job/sign/74/20180814113627_468.jpg', '74', '/job/sign/74/20180814113629_124.jpg', '74', '/job/sign/74/20180814113631_863.jpg', '74', '/job/sign/74/20180814113632_988.jpg', '74', '/job/sign/74/20180814113634_213.jpg', '74', '/job/sign/74/20180814113637_842.jpg', '74', '/job/sign/74/20180814113636_451.jpg', '74', '/job/sign/74/20180814113639_199.jpg', '74', '/job/sign/74/20180814113640_71.jpg', '巡检员', '1', '巡检员', '2018-08-14 11:38:47', '74', null, '/job/sign/74/20180814113642_192.jpg', '2018-08-14 11:38:50', '74', null, '/job/sign/74/20180814113646_950.jpg', '2018-08-14 11:38:52', null, '74', '/job/sign/74/20180814113647_415.jpg', '2018-08-14 11:38:53', null, '74', '/job/sign/74/20180814113649_479.jpg', '2018-08-14 11:38:56', '74', '/job/sign/74/20180814113651_856.jpg', null);
INSERT INTO `job_height` VALUES ('18', '1', 'NO.S-YY00974', '11', '2018-08-14 19:08:00', '2018-08-16 19:08:00', '1', '1', '1', '巡检员', '1', '巡检员', '1', '1', '74', '/job/sign/74/20180814190936_890.jpg', '74', '/job/sign/74/20180814190938_818.jpg', '74', '/job/sign/74/20180814190939_319.jpg', '74', '/job/sign/74/20180814190941_527.jpg', '74', '/job/sign/74/20180814190942_572.jpg', '74', '/job/sign/74/20180814190944_102.jpg', '74', '/job/sign/74/20180814190946_813.jpg', '74', '/job/sign/74/20180814190948_278.jpg', '74', '/job/sign/74/20180814190950_97.jpg', '74', '/job/sign/74/20180814190951_947.jpg', '74', '/job/sign/74/20180814190953_942.jpg', null, null, '74', '/job/sign/74/20180814190955_580.jpg', '74', '/job/sign/74/20180814190956_839.jpg', '巡检员', '1', '巡检员', '2018-08-14 19:12:03', '74', null, '/job/sign/74/20180814190958_239.jpg', '2018-08-14 19:12:06', '74', null, '/job/sign/74/20180814191000_50.jpg', '2018-08-14 19:12:05', null, '74', '/job/sign/74/20180814190959_774.jpg', '2018-08-14 19:12:08', null, '74', '/job/sign/74/20180814191003_174.jpg', '2018-08-14 19:12:10', '74', '/job/sign/74/20180814191005_693.jpg', null);
INSERT INTO `job_height` VALUES ('19', null, 'NO.S-YY01000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `job_height` VALUES ('20', null, 'NO.S-YY01063', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `job_hoist`
-- ----------------------------
DROP TABLE IF EXISTS `job_hoist`;
CREATE TABLE `job_hoist` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `hoist_place` varchar(255) DEFAULT NULL,
  `hoist_tool` varchar(255) DEFAULT NULL,
  `serialnum` varchar(255) DEFAULT NULL,
  `emp_work_no` varchar(255) DEFAULT NULL,
  `manager_work_no` varchar(255) DEFAULT NULL,
  `guardian` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `work_begin_time` datetime DEFAULT NULL,
  `work_end_time` datetime DEFAULT NULL,
  `hoist_content` varchar(255) DEFAULT NULL,
  `danger_identify` varchar(255) DEFAULT NULL,
  `confirm1` varchar(100) DEFAULT NULL,
  `confirmimg1` varchar(100) DEFAULT NULL,
  `confirm2` varchar(100) DEFAULT NULL,
  `confirmimg2` varchar(100) DEFAULT NULL,
  `confirm3` varchar(100) DEFAULT NULL,
  `confirmimg3` varchar(100) DEFAULT NULL,
  `confirm4` varchar(100) DEFAULT NULL,
  `confirmimg4` varchar(100) DEFAULT NULL,
  `confirm5` varchar(100) DEFAULT NULL,
  `confirmimg5` varchar(100) DEFAULT NULL,
  `confirm6` varchar(100) DEFAULT NULL,
  `confirmimg6` varchar(100) DEFAULT NULL,
  `confirm7` varchar(100) DEFAULT NULL,
  `confirmimg7` varchar(100) DEFAULT NULL,
  `confirm8` varchar(100) DEFAULT NULL,
  `confirmimg8` varchar(100) DEFAULT NULL,
  `confirm9` varchar(100) DEFAULT NULL,
  `confirmimg9` varchar(100) DEFAULT NULL,
  `confirm10` varchar(100) DEFAULT NULL,
  `confirmimg10` varchar(100) DEFAULT NULL,
  `confirm11` varchar(100) DEFAULT NULL,
  `confirmimg11` varchar(100) DEFAULT NULL,
  `confirm12` varchar(100) DEFAULT NULL,
  `confirmimg12` varchar(100) DEFAULT NULL,
  `confirm13` varchar(100) DEFAULT NULL,
  `confirmimg13` varchar(100) DEFAULT NULL,
  `confirm14` varchar(100) DEFAULT NULL,
  `confirmimg14` varchar(100) DEFAULT NULL,
  `confirm15` varchar(100) DEFAULT NULL,
  `confirmimg15` varchar(100) DEFAULT NULL,
  `confirm16` varchar(100) DEFAULT NULL,
  `confirmimg16` varchar(100) DEFAULT NULL,
  `confirm17` varchar(100) DEFAULT NULL,
  `confirmimg17` varchar(100) DEFAULT NULL,
  `confirm18` varchar(100) DEFAULT NULL,
  `confirmimg18` varchar(100) DEFAULT NULL,
  `confirm19` varchar(100) DEFAULT NULL,
  `confirmimg19` varchar(100) DEFAULT NULL,
  `confirm20` varchar(100) DEFAULT NULL,
  `confirmimg20` varchar(100) DEFAULT NULL,
  `confirm21` varchar(100) DEFAULT NULL,
  `confirmimg21` varchar(255) DEFAULT NULL,
  `confirm22` varchar(100) DEFAULT NULL,
  `confirmimg22` varchar(100) DEFAULT NULL,
  `confirm23` varchar(100) DEFAULT NULL,
  `confirmimg23` varchar(100) DEFAULT NULL,
  `confirm24` varchar(100) DEFAULT NULL,
  `confirmimg24` varchar(100) DEFAULT NULL,
  `confirm25` varchar(100) DEFAULT NULL,
  `confirmimg25` varchar(100) DEFAULT NULL,
  `confirm26` varchar(100) DEFAULT NULL,
  `confirmimg26` varchar(100) DEFAULT NULL,
  `confirm27` varchar(100) DEFAULT NULL,
  `confirmimg27` varchar(100) DEFAULT NULL,
  `confirm28` varchar(100) DEFAULT NULL,
  `confirmimg28` varchar(100) DEFAULT NULL,
  `confirm29` varchar(100) DEFAULT NULL,
  `confirmimg29` varchar(100) DEFAULT NULL,
  `confirm30` varchar(100) DEFAULT NULL,
  `confirmimg30` varchar(100) DEFAULT NULL,
  `confirm31` varchar(100) DEFAULT NULL,
  `confirmimg31` varchar(100) DEFAULT NULL,
  `confirm32` varchar(100) DEFAULT NULL,
  `confirmimg32` varchar(100) DEFAULT NULL,
  `confirm33` varchar(100) DEFAULT NULL,
  `confirmimg33` varchar(100) DEFAULT NULL,
  `confirm34` varchar(100) DEFAULT NULL,
  `confirmimg34` varchar(100) DEFAULT NULL,
  `confirm35` varchar(100) DEFAULT NULL,
  `confirmimg35` varchar(100) DEFAULT NULL,
  `confirm36` varchar(100) DEFAULT NULL,
  `confirmimg36` varchar(100) DEFAULT NULL,
  `confirm37` varchar(100) DEFAULT NULL,
  `confirmimg37` varchar(100) DEFAULT NULL,
  `other_measure` varchar(255) DEFAULT NULL,
  `originator_person` varchar(255) DEFAULT NULL,
  `max_weight` varchar(255) DEFAULT NULL,
  `execute_safe_person` varchar(255) DEFAULT NULL,
  `signtime1` varchar(255) DEFAULT NULL,
  `signpeople1` varchar(255) DEFAULT NULL,
  `signmemo1` varchar(255) DEFAULT NULL,
  `signimg1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='吊装安全作业证';

-- ----------------------------
-- Records of job_hoist
-- ----------------------------
INSERT INTO `job_hoist` VALUES ('1', '1', '1', 'NO.S-YY00418', '1', '1', '巡检员', '1', '2018-08-01 14:47:26', '2018-08-08 14:47:29', '啊飒飒的', '啊实打实', '74', '/job/sign/74/20180813153358_87.jpg', '75', null, '74', '/job/sign/74/20180813153404_191.jpg', '74', '/job/sign/74/20180813153406_522.jpg', '74', '/job/sign/74/20180813153407_32.jpg', '74', '/job/sign/74/20180813153409_655.jpg', '75', null, '74', '/job/sign/74/20180813153411_480.jpg', '74', '/job/sign/74/20180813153414_492.jpg', '74', '/job/sign/74/20180813153415_938.jpg', '74', '/job/sign/74/20180813153417_890.jpg', '74', '/job/sign/74/20180813153419_261.jpg', '74', '/job/sign/74/20180813153421_756.jpg', '74', '/job/sign/74/20180813153422_193.jpg', '74', '/job/sign/74/20180813153424_219.jpg', '74', '/job/sign/74/20180813153426_673.jpg', '74', '/job/sign/74/20180813153428_45.jpg', '74', '/job/sign/74/20180813153429_528.jpg', '74', '/job/sign/74/20180813153431_573.jpg', '74', '/job/sign/74/20180813153432_332.jpg', '74', '/job/sign/74/20180813153434_39.jpg', '74', '/job/sign/74/20180813153436_713.jpg', '74', '/job/sign/74/20180813153437_939.jpg', '74', '/job/sign/74/20180813153440_432.jpg', '74', '/job/sign/74/20180813153442_290.jpg', '74', '/job/sign/74/20180813153443_847.jpg', '74', '/job/sign/74/20180813153446_64.jpg', '74', '/job/sign/74/20180813153447_578.jpg', '74', '/job/sign/74/20180813153449_579.jpg', '74', '/job/sign/74/20180813153451_101.jpg', '74', '/job/sign/74/20180813153452_81.jpg', '74', '/job/sign/74/20180813153454_248.jpg', '74', '/job/sign/74/20180813153456_340.jpg', '74', '/job/sign/74/20180813153458_653.jpg', '74', '/job/sign/74/20180813153500_160.jpg', '74', '/job/sign/74/20180813153504_73.jpg', '74', '/job/sign/74/20180813153506_44.jpg', '1', '74', '12', '74', '2018-08-13 15:37:13', '74', null, '/job/sign/74/20180813153508_969.jpg');
INSERT INTO `job_hoist` VALUES ('2', '2', '2', 'NO.S-YY00431', '2', '2', '巡检员', '2', '2018-08-13 15:36:00', '2018-08-13 15:36:00', '2', '2', '74', '/job/sign/74/20180813154019_329.jpg', '74', '/job/sign/74/20180813154021_128.jpg', '74', '/job/sign/74/20180813154024_425.jpg', '74', '/job/sign/74/20180813154026_427.jpg', '74', '/job/sign/74/20180813154042_259.jpg', '74', '/job/sign/74/20180813154043_920.jpg', '74', '/job/sign/74/20180813154045_3.jpg', '74', '/job/sign/74/20180813154046_764.jpg', '74', '/job/sign/74/20180813154047_302.jpg', '74', '/job/sign/74/20180813154050_679.jpg', '74', '/job/sign/74/20180813154052_733.jpg', '74', '/job/sign/74/20180813154054_364.jpg', '74', '/job/sign/74/20180813154055_636.jpg', '74', '/job/sign/74/20180813154057_247.jpg', '74', '/job/sign/74/20180813154058_131.jpg', '74', '/job/sign/74/20180813154100_123.jpg', '74', '/job/sign/74/20180813154102_862.jpg', '74', '/job/sign/74/20180813154103_304.jpg', '74', '/job/sign/74/20180813154105_316.jpg', '74', '/job/sign/74/20180813154106_258.jpg', '74', '/job/sign/74/20180813154109_368.jpg', '74', '/job/sign/74/20180813154110_206.jpg', '74', '/job/sign/74/20180813154112_759.jpg', null, null, '74', '/job/sign/74/20180813154114_489.jpg', '74', '/job/sign/74/20180813154125_683.jpg', '74', '/job/sign/74/20180813154116_445.jpg', '74', '/job/sign/74/20180813154153_243.jpg', '74', '/job/sign/74/20180813154155_926.jpg', '74', '/job/sign/74/20180813154156_591.jpg', '74', '/job/sign/74/20180813154158_276.jpg', '74', '/job/sign/74/20180813154159_237.jpg', '74', '/job/sign/74/20180813154201_490.jpg', '74', '/job/sign/74/20180813154202_438.jpg', '74', '/job/sign/74/20180813154204_628.jpg', '74', '/job/sign/74/20180813154206_798.jpg', null, null, '2', '74', '2', '74', '2018-08-13 15:44:13', '74', null, '/job/sign/74/20180813154208_102.jpg');
INSERT INTO `job_hoist` VALUES ('3', null, null, 'NO.S-YY00875', '1', '1', '巡检员', '1', '2018-08-14 15:40:00', '2018-08-14 15:40:00', '1', '1', '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '1', '74', null, '74', null, '74', null, null);
INSERT INTO `job_hoist` VALUES ('4', '1', '1', 'NO.S-YY00880', '1', '1', '巡检员', '1', '2018-08-14 15:52:00', '2018-08-14 15:52:00', '1', '1', '74', '/job/sign/74/20180814155338_152.jpg', '74', '/job/sign/74/20180814155340_903.jpg', '74', '/job/sign/74/20180814155341_311.jpg', '74', '/job/sign/74/20180814155343_947.jpg', '74', '/job/sign/74/20180814155344_935.jpg', '74', '/job/sign/74/20180814155345_60.jpg', '74', '/job/sign/74/20180814155347_564.jpg', '74', '/job/sign/74/20180814155349_50.jpg', '74', '/job/sign/74/20180814155351_328.jpg', '74', '/job/sign/74/20180814155352_981.jpg', '74', '/job/sign/74/20180814155354_564.jpg', '74', '/job/sign/74/20180814155355_726.jpg', '74', '/job/sign/74/20180814155357_406.jpg', '74', '/job/sign/74/20180814155358_702.jpg', '74', '/job/sign/74/20180814155400_606.jpg', '74', '/job/sign/74/20180814155401_683.jpg', '74', '/job/sign/74/20180814155402_847.jpg', '74', '/job/sign/74/20180814155404_306.jpg', '74', '/job/sign/74/20180814155406_366.jpg', '74', '/job/sign/74/20180814155407_452.jpg', '74', '/job/sign/74/20180814155410_404.jpg', '74', '/job/sign/74/20180814155412_299.jpg', '74', '/job/sign/74/20180814155413_570.jpg', '74', '/job/sign/74/20180814155415_132.jpg', '74', '/job/sign/74/20180814155416_164.jpg', '74', '/job/sign/74/20180814155418_243.jpg', '74', '/job/sign/74/20180814155420_642.jpg', '74', '/job/sign/74/20180814155422_956.jpg', '74', '/job/sign/74/20180814155424_909.jpg', '74', '/job/sign/74/20180814155426_533.jpg', '74', '/job/sign/74/20180814155427_306.jpg', '74', '/job/sign/74/20180814155430_816.jpg', '74', '/job/sign/74/20180814155432_970.jpg', '74', '/job/sign/74/20180814155435_704.jpg', '74', '/job/sign/74/20180814155436_594.jpg', '74', '/job/sign/74/20180814155438_486.jpg', '74', '/job/sign/74/20180814155439_300.jpg', '1', '74', null, '74', '2018-08-14 15:56:46', '74', null, '/job/sign/74/20180814155441_194.jpg');
INSERT INTO `job_hoist` VALUES ('5', '1', '1', 'NO.S-YY00975', '1', '1', '巡检员2', '1', '2018-08-14 19:10:00', '2018-08-14 19:10:00', '1', '1', '74', '/job/sign/74/20180814191144_451.jpg', '74', '/job/sign/74/20180814191151_640.jpg', '74', '/job/sign/74/20180814191152_866.jpg', '74', '/job/sign/74/20180814191155_121.jpg', '74', '/job/sign/74/20180814191228_56.jpg', '74', '/job/sign/74/20180814191230_845.jpg', '74', '/job/sign/74/20180814191231_926.jpg', '74', '/job/sign/74/20180814191233_583.jpg', '74', '/job/sign/74/20180814191235_327.jpg', '74', '/job/sign/74/20180814191236_928.jpg', '74', '/job/sign/74/20180814191237_533.jpg', '74', '/job/sign/74/20180814191239_911.jpg', '74', '/job/sign/74/20180814191240_683.jpg', '74', '/job/sign/74/20180814191242_479.jpg', '74', '/job/sign/74/20180814191243_330.jpg', '74', '/job/sign/74/20180814191244_70.jpg', '74', '/job/sign/74/20180814191246_545.jpg', '74', '/job/sign/74/20180814191248_431.jpg', '74', '/job/sign/74/20180814191249_891.jpg', '74', '/job/sign/74/20180814191252_212.jpg', '74', '/job/sign/74/20180814191254_939.jpg', '74', '/job/sign/74/20180814191255_666.jpg', '74', '/job/sign/74/20180814191256_25.jpg', '74', '/job/sign/74/20180814191258_428.jpg', '74', '/job/sign/74/20180814191259_993.jpg', '74', '/job/sign/74/20180814191301_764.jpg', '74', '/job/sign/74/20180814191303_396.jpg', '74', '/job/sign/74/20180814191304_725.jpg', '74', '/job/sign/74/20180814191306_508.jpg', '74', '/job/sign/74/20180814191307_725.jpg', '74', '/job/sign/74/20180814191309_957.jpg', '74', '/job/sign/74/20180814191310_541.jpg', '74', '/job/sign/74/20180814191311_270.jpg', '74', '/job/sign/74/20180814191313_374.jpg', '74', '/job/sign/74/20180814191314_452.jpg', '74', '/job/sign/74/20180814191315_969.jpg', '74', '/job/sign/74/20180814191317_91.jpg', '1', '74', null, '74', '2018-08-14 19:15:25', '74', null, '/job/sign/74/20180814191319_68.jpg');

-- ----------------------------
-- Table structure for `job_off`
-- ----------------------------
DROP TABLE IF EXISTS `job_off`;
CREATE TABLE `job_off` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `apply_unit` varchar(100) DEFAULT NULL,
  `serialnum` varchar(100) DEFAULT NULL,
  `work_unit` varchar(100) DEFAULT NULL,
  `unti_relation` varchar(100) DEFAULT NULL,
  `off_reason` varchar(100) DEFAULT NULL,
  `off_pic` varchar(200) DEFAULT NULL,
  `off_content` varchar(255) DEFAULT NULL,
  `danger_identify` varchar(200) DEFAULT NULL,
  `confirm1` varchar(100) DEFAULT NULL,
  `confirmimg1` varchar(100) DEFAULT NULL,
  `confirm2` varchar(100) DEFAULT NULL,
  `confirmimg2` varchar(100) DEFAULT NULL,
  `confirm3` varchar(100) DEFAULT NULL,
  `confirmimg3` varchar(100) DEFAULT NULL,
  `confirm4` varchar(100) DEFAULT NULL,
  `confirmimg4` varchar(100) DEFAULT NULL,
  `other_safe_measure` varchar(100) DEFAULT NULL,
  `originator_person` varchar(100) DEFAULT NULL,
  `excut_safe_person` varchar(100) DEFAULT NULL,
  `signtime1` varchar(100) DEFAULT NULL,
  `signpeople1` varchar(100) DEFAULT NULL,
  `signmemo1` varchar(100) DEFAULT NULL,
  `signimg1` varchar(100) DEFAULT NULL,
  `signtime2` varchar(100) DEFAULT NULL,
  `signpeople2` varchar(100) DEFAULT NULL,
  `signmemo2` varchar(100) DEFAULT NULL,
  `signimg2` varchar(100) DEFAULT NULL,
  `signtime3` varchar(100) DEFAULT NULL,
  `signpeople3` varchar(100) DEFAULT NULL,
  `signmemo3` varchar(100) DEFAULT NULL,
  `signimg3` varchar(100) DEFAULT NULL,
  `signtime4` varchar(100) DEFAULT NULL,
  `signpeople4` varchar(100) DEFAULT NULL,
  `signmemo4` varchar(100) DEFAULT NULL,
  `signimg4` varchar(100) DEFAULT NULL,
  `signtime5` varchar(100) DEFAULT NULL,
  `signpeople5` varchar(100) DEFAULT NULL,
  `signmemo5` varchar(100) DEFAULT NULL,
  `signimg5` varchar(100) DEFAULT NULL,
  `signpeople6` varchar(100) DEFAULT NULL,
  `signmemo6` varchar(100) DEFAULT NULL,
  `signimg6` varchar(100) DEFAULT NULL,
  `signtime6` varchar(100) DEFAULT NULL,
  `work_begin_time` varchar(100) DEFAULT NULL,
  `work_end_time` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='段路';

-- ----------------------------
-- Records of job_off
-- ----------------------------
INSERT INTO `job_off` VALUES ('1', '1', null, '1', '1', '1', null, '1', '1', '74', null, '74', null, '74,74', null, null, null, '1', '74', '巡检员', null, '74', null, null, null, '74', null, null, null, '74', null, null, null, '74', null, null, null, '74', null, null, '74', null, null, null, '2018-08-13 18:11', '2018-08-13 18:12');
INSERT INTO `job_off` VALUES ('2', '1', 'NO.S-YY00550', '1', '1', '1', null, '1', '1', '74', null, '74', null, '74,74', null, null, null, '1', '74', '巡检员', null, '74', null, null, null, '74', null, null, null, '74', null, null, null, '74', null, null, null, '74', null, null, '74', null, '/job/sign/74/20180813181753_598.jpg', null, '2018-08-13 18:11', '2018-08-13 18:12');
INSERT INTO `job_off` VALUES ('3', '1', 'NO.S-YY00550', '1', '1', '1', null, '1', '1', '74', '/job/sign/74/20180813182224_954.jpg', '74', '/job/sign/74/20180813182227_269.jpg', '74,74', null, null, null, '1', '74', '巡检员', null, '74', null, null, null, '74', null, null, null, '74', null, null, null, '74', null, null, null, '74', null, null, '74', null, '/job/sign/74/20180813182054_949.jpg', '2018-08-13 18:22:57', '2018-08-13 18:11', '2018-08-13 18:12');
INSERT INTO `job_off` VALUES ('4', '2', 'NO.S-YY00560', '2', '2', '2', null, '2', '2', '74', '/job/sign/74/20180813182504_52.jpg', '74', '/job/sign/74/20180813182505_924.jpg', '74', '/job/sign/74/20180813182508_681.jpg', '74', '/job/sign/74/20180813182509_168.jpg', '2', '74', '巡检员', '2018-08-13 18:27:15', '74', null, '/job/sign/74/20180813182511_576.jpg', '2018-08-13 18:27:16', '74', null, '/job/sign/74/20180813182513_268.jpg', '2018-08-13 18:27:19', '74', null, '/job/sign/74/20180813182515_432.jpg', '2018-08-13 18:29:23', '74', null, '/job/sign/74/20180813182720_692.jpg', '2018-08-13 18:29:26', '74', null, '/job/sign/74/20180813182722_48.jpg', '74', null, '/job/sign/74/20180813182501_163.jpg', '2018-08-13 18:27:04', '2018-08-13 18:24', '2018-08-13 18:24');
INSERT INTO `job_off` VALUES ('5', '1', 'NO.S-YY00973', '1', '1', '1', null, '1', '1', '74', '/job/sign/74/20180814190759_650.jpg', '74', '/job/sign/74/20180814190801_504.jpg', '74', '/job/sign/74/20180814190802_550.jpg', '74', '/job/sign/74/20180814190809_160.jpg', '1', '74', '巡检员', '2018-08-14 19:10:19', '74', null, '/job/sign/74/20180814190814_486.jpg', '2018-08-14 19:10:21', '74', null, '/job/sign/74/20180814190816_145.jpg', '2018-08-14 19:10:23', '74', null, '/job/sign/74/20180814190817_672.jpg', '2018-08-14 19:10:25', '74', null, '/job/sign/74/20180814190819_90.jpg', '2018-08-14 19:10:26', '74', null, '/job/sign/74/20180814190821_990.jpg', '74', null, '/job/sign/74/20180814190755_210.jpg', '2018-08-14 19:10:01', '2018-08-14 19:06', '2018-08-14 19:06');
INSERT INTO `job_off` VALUES ('6', null, 'NO.S-YY01019', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '巡检员', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `job_plate`
-- ----------------------------
DROP TABLE IF EXISTS `job_plate`;
CREATE TABLE `job_plate` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `companyname` varchar(255) DEFAULT NULL COMMENT '公司名称',
  `serialnum` varchar(255) DEFAULT NULL COMMENT '作业证编号',
  `devicename` varchar(255) DEFAULT NULL COMMENT '设备管道名称',
  `agent` varchar(255) DEFAULT NULL COMMENT '介质',
  `temperature` varchar(255) DEFAULT NULL COMMENT '温度',
  `pressure` varchar(255) DEFAULT NULL COMMENT '压力',
  `platequality` varchar(255) DEFAULT NULL COMMENT '材质',
  `platespec` varchar(255) DEFAULT NULL COMMENT '规格',
  `plateno` varchar(255) DEFAULT NULL COMMENT '编号',
  `blocktime` datetime DEFAULT NULL COMMENT '堵-实施时间',
  `puttime` datetime DEFAULT NULL COMMENT '抽-实施时间',
  `blockemployee` varchar(255) DEFAULT NULL COMMENT '堵-作业人',
  `putemployee` varchar(255) DEFAULT NULL COMMENT '抽-作业人',
  `blockkeeper` varchar(255) DEFAULT NULL COMMENT '堵-监护人',
  `putkeeper` varchar(255) DEFAULT NULL COMMENT '抽-监护人',
  `producer` varchar(255) DEFAULT NULL COMMENT '生产单位作业指挥',
  `workemployee` varchar(255) DEFAULT NULL COMMENT '作业单位负责人',
  `othermemo` varchar(255) DEFAULT NULL COMMENT '涉及的其他特殊作业',
  `platelocation` varchar(255) DEFAULT NULL COMMENT '盲板位置图及编号',
  `confirm1` varchar(255) DEFAULT NULL COMMENT '确认人',
  `confirmimg1` varchar(255) DEFAULT NULL COMMENT '确认人1签字',
  `confirm2` varchar(255) DEFAULT NULL COMMENT '确认人2',
  `confirmimg2` varchar(255) DEFAULT NULL COMMENT '确认人2签字',
  `confirm3` varchar(255) DEFAULT NULL COMMENT '确认人3',
  `confirmimg3` varchar(255) DEFAULT NULL COMMENT '确认人3签字',
  `confirm4` varchar(255) DEFAULT NULL COMMENT '确认人4',
  `confirmimg4` varchar(255) DEFAULT NULL COMMENT '确认人4签字',
  `confirm5` varchar(255) DEFAULT NULL COMMENT '确认人5',
  `confirmimg5` varchar(255) DEFAULT NULL COMMENT '确认人5签字',
  `confirm6` varchar(255) DEFAULT NULL COMMENT '确认人6',
  `confirmimg6` varchar(255) DEFAULT NULL COMMENT '确认人6签字',
  `confirm7` varchar(255) DEFAULT NULL COMMENT '确认人7',
  `confirmimg7` varchar(255) DEFAULT NULL COMMENT '确认人7签字',
  `confirm8` varchar(255) DEFAULT NULL COMMENT '确认人8',
  `confirmimg8` varchar(255) DEFAULT NULL COMMENT '确认人8签字',
  `educate` varchar(255) DEFAULT NULL COMMENT '安全教育人',
  `signtime1` datetime DEFAULT NULL COMMENT '签字时间1',
  `signpeople1` varchar(255) DEFAULT NULL COMMENT '签字人1',
  `signimg1` varchar(255) DEFAULT NULL COMMENT '签字图片1',
  `signmemo1` varchar(255) DEFAULT NULL COMMENT '意见1',
  `signtime2` datetime DEFAULT NULL COMMENT '签字时间2',
  `signpeople2` varchar(255) DEFAULT NULL COMMENT '签字人2',
  `signimg2` varchar(255) DEFAULT NULL COMMENT '签字图片2',
  `signmemo2` varchar(255) DEFAULT NULL COMMENT '意见2',
  `signtime3` datetime DEFAULT NULL COMMENT '签字时间3',
  `signpeople3` varchar(255) DEFAULT NULL COMMENT '签字人3',
  `signimg3` varchar(255) DEFAULT NULL COMMENT '签字图片3',
  `signmemo3` varchar(255) DEFAULT NULL COMMENT '意见3',
  `signtime4` datetime DEFAULT NULL COMMENT '签字时间4',
  `signpeople4` varchar(255) DEFAULT NULL COMMENT '签字人4',
  `signimg4` varchar(255) DEFAULT NULL COMMENT '签字图片4',
  `signmemo4` varchar(255) DEFAULT NULL COMMENT '意见4',
  `signtime5` datetime DEFAULT NULL COMMENT '签字时间5',
  `signpeople5` varchar(255) DEFAULT NULL COMMENT '签字人5',
  `signimg5` varchar(255) DEFAULT NULL COMMENT '签字图片5',
  `signmemo5` varchar(255) DEFAULT NULL COMMENT '意见5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='盲板抽堵安全作业证';

-- ----------------------------
-- Records of job_plate
-- ----------------------------
INSERT INTO `job_plate` VALUES ('1', '申请单位嘛', 'NO.S-YY00302', '管道', '戒指', '温度多少', '压力指', '材质', '规格', '编号123', '2018-08-12 12:35:00', '2018-08-12 14:50:00', '巡检员2', '巡检员1', null, '巡检员1', '巡检员1', '巡检员1', '其他特殊', '位置级编号', '74', '/job/sign/74/20180812145457_503.jpg', '74', '/job/sign/74/20180812145501_727.jpg', '74', '/job/sign/74/20180812145504_220.jpg', '74', '/job/sign/74/20180812145507_529.jpg', '74', '/job/sign/74/20180812145510_29.jpg', '74', '/job/sign/74/20180812145513_68.jpg', '74', '/job/sign/74/20180812145516_522.jpg', '74', '/job/sign/74/20180812145520_993.jpg', '巡检员2', '2018-08-12 14:56:37', '74', '/job/sign/74/20180812145533_354.jpg', null, '2018-08-12 14:56:42', '74', '/job/sign/74/20180812145538_312.jpg', null, '2018-08-12 14:56:45', '74', '/job/sign/74/20180812145541_361.jpg', null, '2018-08-12 14:56:48', '74', '/job/sign/74/20180812145544_41.jpg', null, '2018-08-12 14:56:52', '74', '/job/sign/74/20180812145548_300.jpg', null);

-- ----------------------------
-- Table structure for `job_serialnum_controller`
-- ----------------------------
DROP TABLE IF EXISTS `job_serialnum_controller`;
CREATE TABLE `job_serialnum_controller` (
  `code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='作业证编号控制';

-- ----------------------------
-- Records of job_serialnum_controller
-- ----------------------------
INSERT INTO `job_serialnum_controller` VALUES ('NO.S-YY01097');

-- ----------------------------
-- Table structure for `job_soil`
-- ----------------------------
DROP TABLE IF EXISTS `job_soil`;
CREATE TABLE `job_soil` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `apply_unit` varchar(100) DEFAULT NULL,
  `serialnum` varchar(100) DEFAULT NULL,
  `guardian` varchar(100) DEFAULT NULL,
  `work_begin_time` varchar(100) DEFAULT NULL,
  `work_end_time` varchar(100) DEFAULT NULL,
  `work_place` varchar(100) DEFAULT NULL,
  `work_unti` varchar(100) DEFAULT NULL,
  `spec_work` varchar(100) DEFAULT NULL,
  `work_content` varchar(255) DEFAULT NULL,
  `work_pic` varchar(200) DEFAULT NULL,
  `danger_identify` varchar(100) DEFAULT NULL,
  `confirm1` varchar(100) DEFAULT NULL,
  `confirmimg1` varchar(100) DEFAULT NULL,
  `confirm2` varchar(100) DEFAULT NULL,
  `confirmimg2` varchar(100) DEFAULT NULL,
  `confirm3` varchar(100) DEFAULT NULL,
  `confirmimg3` varchar(100) DEFAULT NULL,
  `confirm4` varchar(100) DEFAULT NULL,
  `confirmimg4` varchar(100) DEFAULT NULL,
  `confirm5` varchar(100) DEFAULT NULL,
  `confirmimg5` varchar(100) DEFAULT NULL,
  `confirm6` varchar(100) DEFAULT NULL,
  `confirmimg6` varchar(100) DEFAULT NULL,
  `confirm7` varchar(100) DEFAULT NULL,
  `confirmimg7` varchar(100) DEFAULT NULL,
  `confirm8` varchar(100) DEFAULT NULL,
  `confirmimg8` varchar(100) DEFAULT NULL,
  `confirm9` varchar(100) DEFAULT NULL,
  `confirmimg9` varchar(100) DEFAULT NULL,
  `confirm10` varchar(100) DEFAULT NULL,
  `confirmimg10` varchar(100) DEFAULT NULL,
  `confirm11` varchar(100) DEFAULT NULL,
  `confirmimg11` varchar(100) DEFAULT NULL,
  `confirm12` varchar(100) DEFAULT NULL,
  `confirmimg12` varchar(100) DEFAULT NULL,
  `confirm13` varchar(100) DEFAULT NULL,
  `confirmimg13` varchar(100) DEFAULT NULL,
  `confirm14` varchar(100) DEFAULT NULL,
  `confirmimg14` varchar(100) DEFAULT NULL,
  `confirm15` varchar(100) DEFAULT NULL,
  `confirmimg15` varchar(100) DEFAULT NULL,
  `confirm16` varchar(100) DEFAULT NULL,
  `confirmimg16` varchar(100) DEFAULT NULL,
  `other_safe_measure` varchar(100) DEFAULT NULL,
  `originator` varchar(100) DEFAULT NULL,
  `excute_safe_person` varchar(100) DEFAULT NULL,
  `signtime1` varchar(100) DEFAULT NULL,
  `signpeople1` varchar(100) DEFAULT NULL,
  `signimg1` varchar(100) DEFAULT NULL,
  `signtime2` varchar(100) DEFAULT NULL,
  `signpeople2` varchar(100) DEFAULT NULL,
  `signimg2` varchar(100) DEFAULT NULL,
  `signtime3` varchar(100) DEFAULT NULL,
  `signpeople3` varchar(100) DEFAULT NULL,
  `signimg3` varchar(100) DEFAULT NULL,
  `signtime4` varchar(100) DEFAULT NULL,
  `signpeople4` varchar(100) DEFAULT NULL,
  `signimg4` varchar(100) DEFAULT NULL,
  `signtime5` varchar(100) DEFAULT NULL,
  `signpeople5` varchar(100) DEFAULT NULL,
  `signimg5` varchar(100) DEFAULT NULL,
  `signtime6` varchar(100) DEFAULT NULL,
  `signpeople6` varchar(100) DEFAULT NULL,
  `signimg6` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='动土安全作业证';

-- ----------------------------
-- Records of job_soil
-- ----------------------------
INSERT INTO `job_soil` VALUES ('1', '1', 'NO.S-YY00496', null, '2018-08-13 16:48', '2018-08-13 16:48', '1', '11', '1', '1111', null, null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '1', '74', '巡检员', null, '74', null, null, '74', null, null, '74', null, null, '74', null, null, '74', null, null, '巡检员', null);
INSERT INTO `job_soil` VALUES ('2', '1', 'NO.S-YY00496', '巡检员', '2018-08-13 16:48', '2018-08-13 16:48', '1', '11', '1', '1111', null, null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '1', '74', '巡检员', null, '74', null, null, '74', null, null, '74', null, null, '74', null, null, '74', null, null, '巡检员', null);
INSERT INTO `job_soil` VALUES ('3', '1', 'NO.S-YY00496', '巡检员', '2018-08-13 16:48', '2018-08-13 16:48', '1', '11', '1', '1111', null, null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '1', '74', '巡检员', null, '74', null, null, '74', null, null, '74', null, null, '74', null, null, '74', null, null, '巡检员', null);
INSERT INTO `job_soil` VALUES ('4', '1', 'NO.S-YY00497', null, '2018-08-13 16:55', '2018-08-13 16:55', '1', null, '1', '1', null, null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '11', '74', null, null, '74', null, null, '74', null, null, '74', null, null, '74', null, null, '74', null, null, '巡检员', null);
INSERT INTO `job_soil` VALUES ('5', '1', 'NO.S-YY00497', '巡检员', '2018-08-13 16:55', '2018-08-13 16:55', '1', '1', '1', '1', null, null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '11', '74', null, null, '74', null, null, '74', null, null, '74', null, null, '74', null, null, '74', null, null, '巡检员', null);
INSERT INTO `job_soil` VALUES ('6', '1', 'NO.S-YY00505', '巡检员', '2018-08-13 17:26', '2018-08-13 17:26', '1', '1', '1', '1', null, null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '75', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '1', '74', '巡检员', null, '74', null, null, '74', null, null, '74', null, null, '74', null, null, '74', null, '2018-08-13 17:31:11', '74', '/job/sign/74/20180813172908_975.jpg');
INSERT INTO `job_soil` VALUES ('7', '1', 'NO.S-YY00509', '巡检员', '2018-08-13 17:34', '2018-08-13 17:34', '1', '1', '1', '1', null, '1', '74', '/job/sign/74/20180813173456_223.jpg', '74', '/job/sign/74/20180813173458_243.jpg', '74', '/job/sign/74/20180813173459_271.jpg', '74', '/job/sign/74/20180813173501_426.jpg', '74', '/job/sign/74/20180813173502_653.jpg', '74', '/job/sign/74/20180813173504_210.jpg', '74', '/job/sign/74/20180813173506_16.jpg', '74', '/job/sign/74/20180813173508_298.jpg', '74', '/job/sign/74/20180813173511_626.jpg', '74', '/job/sign/74/20180813173512_491.jpg', '74', '/job/sign/74/20180813173514_308.jpg', '74', '/job/sign/74/20180813173516_461.jpg', '74', '/job/sign/74/20180813173517_264.jpg', '74', '/job/sign/74/20180813173520_23.jpg', '74', '/job/sign/74/20180813173522_549.jpg', '74', '/job/sign/74/20180813173523_722.jpg', '1', '74', '巡检员', '2018-08-13 17:37:31', '74', '/job/sign/74/20180813173528_347.jpg', '2018-08-13 17:37:36', '74', '/job/sign/74/20180813173533_369.jpg', '2018-08-13 17:37:40', '74', '/job/sign/74/20180813173537_285.jpg', '2018-08-13 17:37:42', '74', '/job/sign/74/20180813173539_366.jpg', '2018-08-13 17:37:44', '74', '/job/sign/74/20180813173541_118.jpg', '2018-08-13 17:36:54', '74', '/job/sign/74/20180813173451_28.jpg');
INSERT INTO `job_soil` VALUES ('8', '1', 'NO.S-YY00540', null, '2018-08-13 18:09', '2018-08-13 18:09', null, null, null, null, null, '1', '74', null, '74', null, '74,74', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '74', null, null, '74', null, null, '74', null, null, '74', null, null, '74', null, null, '74', null);
INSERT INTO `job_soil` VALUES ('9', '1', 'NO.S-YY00926', '巡检员', '2018-08-24 17:05', '2018-08-24 17:05', '1', null, '1', '1', null, null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '1', '74', '74', null, '74', null, null, '74', null, null, '74', null, null, '74', null, null, '74', null, null, '74', null);
INSERT INTO `job_soil` VALUES ('10', '1', 'NO.S-YY00929', '巡检员', '2018-08-14 17:11', '2018-09-14 17:11', '1', '1', '1', null, null, '1', '74', '/job/sign/74/20180814171410_49.jpg', '74', '/job/sign/74/20180814171411_863.jpg', '74', '/job/sign/74/20180814171412_419.jpg', '74', '/job/sign/74/20180814171414_307.jpg', '74', '/job/sign/74/20180814171415_482.jpg', '74', '/job/sign/74/20180814171416_793.jpg', '74', '/job/sign/74/20180814171418_799.jpg', '74', '/job/sign/74/20180814171420_538.jpg', '74', '/job/sign/74/20180814171422_313.jpg', '74', '/job/sign/74/20180814171424_750.jpg', '74', '/job/sign/74/20180814171425_262.jpg', '74', '/job/sign/74/20180814171427_944.jpg', '74', '/job/sign/74/20180814171429_283.jpg', '74', '/job/sign/74/20180814171431_161.jpg', '74', '/job/sign/74/20180814171433_795.jpg', '74', '/job/sign/74/20180814171434_47.jpg', '1', '74', '巡检员', '2018-08-14 17:16:41', '74', '/job/sign/74/20180814171436_829.jpg', '2018-08-14 17:16:43', '74', '/job/sign/74/20180814171437_108.jpg', '2018-08-14 17:16:45', '74', '/job/sign/74/20180814171439_43.jpg', '2018-08-14 17:16:46', '74', '/job/sign/74/20180814171441_819.jpg', '2018-08-14 17:16:48', '74', '/job/sign/74/20180814171442_552.jpg', '2018-08-14 17:16:11', '74', '/job/sign/74/20180814171406_529.jpg');
INSERT INTO `job_soil` VALUES ('11', '1', 'NO.S-YY00971', null, '2018-08-14 19:05', '2018-08-14 19:05', null, null, null, null, null, null, '74', null, '74', null, null, null, '74', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '巡检员', null, '74', null, null, '74', null, null, '74', null, null, '74', null, null, '74', null, null, '74', null);
INSERT INTO `job_soil` VALUES ('12', '1', 'NO.S-YY00976', '巡检员', '2018-08-15 19:13', '2018-08-15 19:13', '1', '1', '1', null, null, null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '74', null, '1', '74', '巡检员', null, '74', null, null, '74', null, null, '74', null, null, '74', null, null, '74', null, '2018-08-14 19:16:21', '74', '/job/sign/74/20180814191415_639.jpg');
INSERT INTO `job_soil` VALUES ('13', '1', 'NO.S-YY00979', '巡检员', '2018-08-14 19:15', '2018-08-14 19:15', '1', '1', '1', '1', null, '1', '74', '/job/sign/74/20180814191638_740.jpg', '74', '/job/sign/74/20180814191639_718.jpg', '74', '/job/sign/74/20180814191641_51.jpg', '74', '/job/sign/74/20180814191643_10.jpg', '74', '/job/sign/74/20180814191644_610.jpg', '74', '/job/sign/74/20180814191646_538.jpg', '74', '/job/sign/74/20180814191648_543.jpg', '74', '/job/sign/74/20180814191650_180.jpg', '74', '/job/sign/74/20180814191651_305.jpg', '74', '/job/sign/74/20180814191653_298.jpg', '74', '/job/sign/74/20180814191655_688.jpg', '74', '/job/sign/74/20180814191656_410.jpg', '74', '/job/sign/74/20180814191658_409.jpg', '74', '/job/sign/74/20180814191659_898.jpg', '74', '/job/sign/74/20180814191700_107.jpg', '74', '/job/sign/74/20180814191702_263.jpg', null, '74', '巡检员', '2018-08-14 19:19:09', '74', '/job/sign/74/20180814191704_413.jpg', '2018-08-14 19:19:10', '74', '/job/sign/74/20180814191705_705.jpg', '2018-08-14 19:19:11', '74', '/job/sign/74/20180814191706_416.jpg', '2018-08-14 19:19:13', '74', '/job/sign/74/20180814191708_898.jpg', '2018-08-14 19:19:16', '74', '/job/sign/74/20180814191711_26.jpg', '2018-08-14 19:18:40', '74', '/job/sign/74/20180814191634_339.jpg');

-- ----------------------------
-- Table structure for `law`
-- ----------------------------
DROP TABLE IF EXISTS `law`;
CREATE TABLE `law` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upload_url` varchar(100) DEFAULT NULL COMMENT '名称',
  `upload_time` datetime DEFAULT NULL COMMENT '上传时间',
  `upload_emp` int(12) DEFAULT NULL COMMENT '上传人id',
  `is_del` int(1) DEFAULT NULL COMMENT '是否删除 0:未删除 1:已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of law
-- ----------------------------
INSERT INTO `law` VALUES ('7', '\\imgs_msgy\\files\\upload\\pptx\\file(2018062510201309510).pptx', '2018-06-25 16:00:22', '1', '1');
INSERT INTO `law` VALUES ('8', '\\imgs_msgy\\files\\upload\\docx\\file(201806251020255030).docx', '2018-06-25 16:00:15', '1', '1');
INSERT INTO `law` VALUES ('10', '\\imgs_msgy\\files\\upload\\docx\\啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx(201806251021541505).docx', '2018-06-25 15:42:41', '1', '1');
INSERT INTO `law` VALUES ('11', '\\imgs_msgy\\files\\upload\\docx\\啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx(201806251024426707).docx', '2018-06-25 15:42:39', '1', '1');
INSERT INTO `law` VALUES ('12', '\\imgs_msgy\\files\\upload\\docx\\(201806251025451834)啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx', '2018-06-25 15:42:37', '1', '1');
INSERT INTO `law` VALUES ('13', '\\imgs_msgy\\files\\upload\\docx\\(201806251111541099)啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx', '2018-06-25 15:42:34', '1', '1');
INSERT INTO `law` VALUES ('14', '\\imgs_msgy\\files\\upload\\pptx\\(201806250322416448)asd.pptx', '2018-06-25 15:24:11', '1', '1');
INSERT INTO `law` VALUES ('15', '\\imgs_msgy\\files\\upload\\pdf\\(2018062503415765010)魏晓民高管资料终稿.pdf', '2018-06-25 16:00:10', '1', '1');
INSERT INTO `law` VALUES ('16', '\\imgs_msgy\\files\\upload\\pptx\\(201806250342083249)asd.pptx', '2018-06-25 16:00:07', '1', '1');
INSERT INTO `law` VALUES ('17', '\\imgs_msgy\\files\\upload\\pptx\\(201806250359370656)asd.pptx', '2018-06-25 16:00:29', '1', '0');
INSERT INTO `law` VALUES ('18', '\\imgs_msgy\\files\\upload\\pdf\\(201806250400013959)魏晓民高管资料终稿.pdf', '2018-06-26 09:15:15', '1', '1');
INSERT INTO `law` VALUES ('19', '\\imgs_msgy\\files\\upload\\pdf\\(201806260914421629)未命名.pdf', '2018-06-26 09:15:32', '1', '0');
INSERT INTO `law` VALUES ('20', '\\imgs_msgy\\files\\upload\\xls\\(201807040601475381)燃气.xls', '2018-07-04 18:02:45', '1', '0');
INSERT INTO `law` VALUES ('21', '\\imgs_msgy\\files\\upload\\pdf\\(201807040602266574)交易服务部筹建.pdf', '2018-07-04 18:03:25', '1', '0');

-- ----------------------------
-- Table structure for `malfunction`
-- ----------------------------
DROP TABLE IF EXISTS `malfunction`;
CREATE TABLE `malfunction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upload_url` varchar(100) DEFAULT NULL COMMENT '名称',
  `upload_time` datetime DEFAULT NULL COMMENT '上传时间',
  `upload_emp` int(12) DEFAULT NULL COMMENT '上传人id',
  `is_del` int(1) DEFAULT NULL COMMENT '是否删除 0:未删除 1:已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of malfunction
-- ----------------------------
INSERT INTO `malfunction` VALUES ('7', '\\imgs_msgy\\files\\upload\\pptx\\file(2018062510201309510).pptx', '2018-06-25 10:21:07', '1', '0');
INSERT INTO `malfunction` VALUES ('8', '\\imgs_msgy\\files\\upload\\docx\\file(201806251020255030).docx', '2018-06-25 16:18:17', '1', '1');
INSERT INTO `malfunction` VALUES ('10', '\\imgs_msgy\\files\\upload\\docx\\啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx(201806251021541505).docx', '2018-06-25 16:18:13', '1', '1');
INSERT INTO `malfunction` VALUES ('11', '\\imgs_msgy\\files\\upload\\docx\\啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx(201806251024426707).docx', '2018-06-25 15:59:35', '1', '1');
INSERT INTO `malfunction` VALUES ('12', '\\imgs_msgy\\files\\upload\\docx\\(201806251025451834)啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx', '2018-06-25 15:59:33', '1', '1');
INSERT INTO `malfunction` VALUES ('13', '\\imgs_msgy\\files\\upload\\docx\\(201806251111541099)啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx', '2018-06-25 15:59:31', '1', '1');
INSERT INTO `malfunction` VALUES ('14', '\\imgs_msgy\\files\\upload\\pptx\\(201806250322416448)asd.pptx', '2018-06-25 15:24:11', '1', '1');
INSERT INTO `malfunction` VALUES ('15', '\\imgs_msgy\\files\\upload\\pptx\\(201806250417398432)asd.pptx', '2018-06-25 16:18:32', '1', '0');

-- ----------------------------
-- Table structure for `management_institution`
-- ----------------------------
DROP TABLE IF EXISTS `management_institution`;
CREATE TABLE `management_institution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upload_url` varchar(100) DEFAULT NULL COMMENT '名称',
  `upload_time` datetime DEFAULT NULL COMMENT '上传时间',
  `upload_emp` int(12) DEFAULT NULL COMMENT '上传人id',
  `is_del` int(1) DEFAULT NULL COMMENT '是否删除 0:未删除 1:已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of management_institution
-- ----------------------------
INSERT INTO `management_institution` VALUES ('1', null, '2018-06-25 10:00:59', '1', '1');
INSERT INTO `management_institution` VALUES ('2', null, '2018-06-25 10:01:06', '1', '1');
INSERT INTO `management_institution` VALUES ('3', null, '2018-06-06 16:38:16', '3', '1');
INSERT INTO `management_institution` VALUES ('4', '\\imgs_msgy\\files\\upload\\docx\\201806250953528513.docx', '2018-06-25 11:13:46', '1', '1');
INSERT INTO `management_institution` VALUES ('5', '\\imgs_msgy\\files\\upload\\pptx\\201806250954020301.pptx', '2018-06-25 11:17:48', '1', '1');
INSERT INTO `management_institution` VALUES ('6', '\\imgs_msgy\\files\\upload\\docx\\201806251017592821.docx', '2018-06-25 11:17:44', '1', '1');
INSERT INTO `management_institution` VALUES ('7', '\\imgs_msgy\\files\\upload\\pptx\\file(2018062510201309510).pptx', '2018-06-25 11:48:05', '1', '1');
INSERT INTO `management_institution` VALUES ('8', '\\imgs_msgy\\files\\upload\\docx\\file(201806251020255030).docx', '2018-06-25 11:13:51', '1', '1');
INSERT INTO `management_institution` VALUES ('9', '\\imgs_msgy\\files\\upload\\docx\\file(201806251021379348).docx', '2018-06-25 11:13:49', '1', '1');
INSERT INTO `management_institution` VALUES ('10', '\\imgs_msgy\\files\\upload\\docx\\啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx(201806251021541505).docx', '2018-06-25 11:17:51', '1', '1');
INSERT INTO `management_institution` VALUES ('11', '\\imgs_msgy\\files\\upload\\docx\\啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx(201806251024426707).docx', '2018-06-25 11:49:56', '1', '1');
INSERT INTO `management_institution` VALUES ('12', '\\imgs_msgy\\files\\upload\\docx\\(201806251025451834)啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx', '2018-06-25 14:38:28', '1', '1');
INSERT INTO `management_institution` VALUES ('13', '\\imgs_msgy\\files\\upload\\pptx\\(201806251112188599)asd.pptx', '2018-06-25 14:38:26', '1', '1');
INSERT INTO `management_institution` VALUES ('14', '\\imgs_msgy\\files\\upload\\pptx\\(201806251149208335)asd.pptx', '2018-06-25 14:38:25', '1', '1');
INSERT INTO `management_institution` VALUES ('15', '\\imgs_msgy\\files\\upload\\pptx\\(201806250229067228)asd.pptx', '2018-06-25 14:38:23', '1', '1');
INSERT INTO `management_institution` VALUES ('16', '\\imgs_msgy\\files\\upload\\pdf\\(201806250300100389)未命名.pdf', '2018-06-25 15:01:02', '1', '0');
INSERT INTO `management_institution` VALUES ('17', '\\imgs_msgy\\files\\upload\\pdf\\(201807311012143354)魏晓民高管资料终稿.pdf', '2018-07-31 10:15:50', '1', '0');

-- ----------------------------
-- Table structure for `material`
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(10) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `materialname` varchar(250) DEFAULT NULL,
  `usecount` varchar(10) DEFAULT NULL,
  `usecountper` varchar(10) DEFAULT NULL,
  `storagecount` varchar(10) DEFAULT NULL,
  `storageper` varchar(10) DEFAULT NULL,
  `casnum` varchar(20) DEFAULT NULL,
  `storagetype` int(1) DEFAULT NULL,
  `dangertype` int(2) DEFAULT NULL,
  `maindangercontent` int(2) DEFAULT NULL,
  `percursor` int(1) DEFAULT NULL,
  `cert` int(1) DEFAULT NULL,
  `supervision` int(2) DEFAULT NULL,
  `hemlock` int(1) DEFAULT NULL,
  `comment` varchar(250) DEFAULT NULL,
  `is_del` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of material
-- ----------------------------
INSERT INTO `material` VALUES ('1', null, '1', '甲烷', '50', '吨', '50', '吨', '75-4asd5-asd', '1', '5', '3', '0', '0', '0', '1', '阿三哒说的阿斯顿', '1');
INSERT INTO `material` VALUES ('2', null, '1', '甲烷asasd', '50', '吨a', '50', '吨a', '75-4asd5-s21', '1', '5', '3', '0', '1', '1', '0', '阿三大厦大苏打似的ssasdaaas', '0');
INSERT INTO `material` VALUES ('3', null, '0', '甲烷', '50', '吨a', '50', '吨', '75-4asd5-asd', '0', '4', '4', '0', '0', '0', '0', 'asd4as5d', '0');
INSERT INTO `material` VALUES ('4', null, '1', 'asdas', 'asd', 'asd', 'asd', 'asd', '', null, '4', null, null, '1', null, null, 'asda', '1');

-- ----------------------------
-- Table structure for `msds`
-- ----------------------------
DROP TABLE IF EXISTS `msds`;
CREATE TABLE `msds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upload_url` varchar(100) DEFAULT NULL COMMENT '名称',
  `upload_time` datetime DEFAULT NULL COMMENT '上传时间',
  `upload_emp` int(12) DEFAULT NULL COMMENT '上传人id',
  `is_del` int(1) DEFAULT NULL COMMENT '是否删除 0:未删除 1:已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of msds
-- ----------------------------
INSERT INTO `msds` VALUES ('7', '\\imgs_msgy\\files\\upload\\pptx\\file(2018062510201309510).pptx', '2018-06-25 10:21:07', '1', '0');
INSERT INTO `msds` VALUES ('8', '\\imgs_msgy\\files\\upload\\docx\\file(201806251020255030).docx', '2018-06-25 10:21:18', '1', '0');
INSERT INTO `msds` VALUES ('10', '\\imgs_msgy\\files\\upload\\docx\\啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx(201806251021541505).docx', '2018-06-25 10:22:46', '1', '0');
INSERT INTO `msds` VALUES ('11', '\\imgs_msgy\\files\\upload\\docx\\啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx(201806251024426707).docx', '2018-06-25 10:25:34', '1', '0');
INSERT INTO `msds` VALUES ('12', '\\imgs_msgy\\files\\upload\\docx\\(201806251025451834)啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx', '2018-06-25 10:26:37', '1', '0');
INSERT INTO `msds` VALUES ('13', '\\imgs_msgy\\files\\upload\\docx\\(201806251111541099)啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx', '2018-06-25 11:12:46', '1', '0');
INSERT INTO `msds` VALUES ('14', '\\imgs_msgy\\files\\upload\\pptx\\(201806250322416448)asd.pptx', '2018-06-25 15:24:11', '1', '1');
INSERT INTO `msds` VALUES ('15', '\\imgs_msgy\\files\\upload\\xls\\(201807170741244857)燃气.xls', '2018-07-17 19:42:49', '1', '0');
INSERT INTO `msds` VALUES ('16', '\\imgs_msgy\\files\\upload\\xls\\(201807230711011681)燃气.xls', '2018-07-23 19:12:34', '1', '0');
INSERT INTO `msds` VALUES ('17', '\\imgs_msgy\\files\\upload\\xls\\(201807241019482406)商城.xls', '2018-07-24 10:21:24', '1', '0');
INSERT INTO `msds` VALUES ('18', '\\imgs_msgy\\files\\upload\\png\\(201807241020178496)w.png', '2018-07-24 10:21:53', '1', '0');
INSERT INTO `msds` VALUES ('19', '\\imgs_msgy\\files\\upload\\txt\\(201807241027524807)新建文本文档.txt', '2018-07-24 10:29:28', '1', '0');
INSERT INTO `msds` VALUES ('20', '\\imgs_msgy\\files\\upload\\png\\(201807241028246803)w.png', '2018-07-24 10:30:00', '1', '0');
INSERT INTO `msds` VALUES ('21', '\\imgs_msgy\\files\\upload\\txt\\(201807241045499143)新建文本文档 (2).txt', '2018-07-24 10:47:25', '1', '0');
INSERT INTO `msds` VALUES ('22', '\\imgs_msgy\\files\\upload\\xls\\(201807311001100621)商城.xls', '2018-07-31 10:02:55', '1', '0');
INSERT INTO `msds` VALUES ('23', '\\imgs_msgy\\files\\upload\\png\\(201807311127197878)w.png', '2018-07-31 11:29:05', '1', '0');
INSERT INTO `msds` VALUES ('24', '\\imgs_msgy\\files\\upload\\png\\(201807311127362044)47685-20160605030224789-905696292.png', '2018-07-31 11:29:21', '1', '0');
INSERT INTO `msds` VALUES ('25', '\\imgs_msgy\\files\\upload\\jpg\\(201808030223469596)psbS0SDW812.jpg', '2018-08-28 11:02:01', '1', '1');

-- ----------------------------
-- Table structure for `operation_model`
-- ----------------------------
DROP TABLE IF EXISTS `operation_model`;
CREATE TABLE `operation_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upload_url` varchar(100) DEFAULT NULL COMMENT '名称',
  `upload_time` datetime DEFAULT NULL COMMENT '上传时间',
  `upload_emp` int(12) DEFAULT NULL COMMENT '上传人id',
  `is_del` int(1) DEFAULT NULL COMMENT '是否删除 0:未删除 1:已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_model
-- ----------------------------
INSERT INTO `operation_model` VALUES ('7', '\\imgs_msgy\\files\\upload\\pptx\\file(2018062510201309510).pptx', '2018-06-25 16:37:24', '1', '1');
INSERT INTO `operation_model` VALUES ('8', '\\imgs_msgy\\files\\upload\\docx\\file(201806251020255030).docx', '2018-06-25 16:18:17', '1', '1');
INSERT INTO `operation_model` VALUES ('10', '\\imgs_msgy\\files\\upload\\docx\\啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx(201806251021541505).docx', '2018-06-25 16:18:13', '1', '1');
INSERT INTO `operation_model` VALUES ('11', '\\imgs_msgy\\files\\upload\\docx\\啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx(201806251024426707).docx', '2018-06-25 15:59:35', '1', '1');
INSERT INTO `operation_model` VALUES ('12', '\\imgs_msgy\\files\\upload\\docx\\(201806251025451834)啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx', '2018-06-25 15:59:33', '1', '1');
INSERT INTO `operation_model` VALUES ('13', '\\imgs_msgy\\files\\upload\\docx\\(201806251111541099)啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx', '2018-06-25 15:59:31', '1', '1');
INSERT INTO `operation_model` VALUES ('14', '\\imgs_msgy\\files\\upload\\pptx\\(201806250322416448)asd.pptx', '2018-06-25 15:24:11', '1', '1');
INSERT INTO `operation_model` VALUES ('15', '\\imgs_msgy\\files\\upload\\pptx\\(201806250417398432)asd.pptx', '2018-06-25 16:36:13', '1', '1');
INSERT INTO `operation_model` VALUES ('16', '\\imgs_msgy\\files\\upload\\pdf\\(201806250436073681)未命名.pdf', '2018-06-25 16:36:59', '1', '0');
INSERT INTO `operation_model` VALUES ('17', '\\imgs_msgy\\files\\upload\\pdf\\(201806250436135586)魏晓民高管资料终稿.pdf', '2018-06-25 16:52:02', '1', '1');
INSERT INTO `operation_model` VALUES ('18', '\\imgs_msgy\\files\\upload\\pptx\\(201806250436210066)asd.pptx', '2018-06-25 16:52:00', '1', '1');
INSERT INTO `operation_model` VALUES ('19', '\\imgs_msgy\\files\\upload\\pdf\\(201806250451161950)未命名.pdf', '2018-06-25 16:52:08', '1', '0');
INSERT INTO `operation_model` VALUES ('20', '\\imgs_msgy\\files\\upload\\pptx\\(201806250451259351)asd.pptx', '2018-06-25 16:52:17', '1', '0');
INSERT INTO `operation_model` VALUES ('21', '\\imgs_msgy\\files\\upload\\xls\\(201806250509469754)1首页寿险业务 .xls', '2018-06-25 17:10:39', '1', '0');
INSERT INTO `operation_model` VALUES ('22', '\\imgs_msgy\\files\\upload\\pptx\\(201806250531393050)asd.pptx', '2018-06-25 17:32:31', '1', '0');
INSERT INTO `operation_model` VALUES ('23', '\\imgs_msgy\\files\\upload\\pdf\\(201806250554026121)未命名.pdf', '2018-06-25 17:54:55', '1', '0');
INSERT INTO `operation_model` VALUES ('24', '\\imgs_msgy\\files\\upload\\pdf\\(201806270513036977)魏晓民高管资料终稿.pdf', '2018-06-27 17:14:01', '1', '0');
INSERT INTO `operation_model` VALUES ('25', '\\imgs_msgy\\files\\upload\\xls\\(201806290922048241)logistics.xls', '2018-06-29 09:22:57', '1', '0');
INSERT INTO `operation_model` VALUES ('26', '\\imgs_msgy\\files\\upload\\pptx\\(201807040853067902)asd.pptx', '2018-07-04 08:54:10', '1', '0');

-- ----------------------------
-- Table structure for `outburst`
-- ----------------------------
DROP TABLE IF EXISTS `outburst`;
CREATE TABLE `outburst` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upload_url` varchar(100) DEFAULT NULL COMMENT '名称',
  `upload_time` datetime DEFAULT NULL COMMENT '上传时间',
  `upload_emp` int(12) DEFAULT NULL COMMENT '上传人id',
  `is_del` int(1) DEFAULT NULL COMMENT '是否删除 0:未删除 1:已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of outburst
-- ----------------------------
INSERT INTO `outburst` VALUES ('7', '\\imgs_msgy\\files\\upload\\pptx\\file(2018062510201309510).pptx', '2018-06-25 16:37:24', '1', '1');
INSERT INTO `outburst` VALUES ('8', '\\imgs_msgy\\files\\upload\\docx\\file(201806251020255030).docx', '2018-06-25 16:18:17', '1', '1');
INSERT INTO `outburst` VALUES ('10', '\\imgs_msgy\\files\\upload\\docx\\啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx(201806251021541505).docx', '2018-06-25 16:18:13', '1', '1');
INSERT INTO `outburst` VALUES ('11', '\\imgs_msgy\\files\\upload\\docx\\啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx(201806251024426707).docx', '2018-06-25 15:59:35', '1', '1');
INSERT INTO `outburst` VALUES ('12', '\\imgs_msgy\\files\\upload\\docx\\(201806251025451834)啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx', '2018-06-25 15:59:33', '1', '1');
INSERT INTO `outburst` VALUES ('13', '\\imgs_msgy\\files\\upload\\docx\\(201806251111541099)啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx', '2018-06-25 15:59:31', '1', '1');
INSERT INTO `outburst` VALUES ('14', '\\imgs_msgy\\files\\upload\\pptx\\(201806250322416448)asd.pptx', '2018-06-25 15:24:11', '1', '1');
INSERT INTO `outburst` VALUES ('15', '\\imgs_msgy\\files\\upload\\pptx\\(201806250417398432)asd.pptx', '2018-06-25 16:36:13', '1', '1');
INSERT INTO `outburst` VALUES ('16', '\\imgs_msgy\\files\\upload\\pdf\\(201806250436073681)未命名.pdf', '2018-06-25 16:36:59', '1', '0');
INSERT INTO `outburst` VALUES ('17', '\\imgs_msgy\\files\\upload\\pdf\\(201806250436135586)魏晓民高管资料终稿.pdf', '2018-06-25 16:37:05', '1', '0');
INSERT INTO `outburst` VALUES ('18', '\\imgs_msgy\\files\\upload\\pptx\\(201806250436210066)asd.pptx', '2018-06-25 16:37:13', '1', '0');

-- ----------------------------
-- Table structure for `patrol_area`
-- ----------------------------
DROP TABLE IF EXISTS `patrol_area`;
CREATE TABLE `patrol_area` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `company_id` int(10) DEFAULT NULL COMMENT '公司id',
  `patrol_name` varchar(50) DEFAULT NULL COMMENT '巡更点名称',
  `device_id` varchar(12) DEFAULT NULL COMMENT '设备id',
  `effect_time` int(3) DEFAULT NULL COMMENT '巡检时效 单位分钟',
  `states_flag` int(1) DEFAULT NULL COMMENT '状态',
  `create_id` int(10) DEFAULT NULL COMMENT '创建人编号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_create_id` int(10) DEFAULT NULL COMMENT '修改人编号',
  `last_create_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 COMMENT='巡更点表';

-- ----------------------------
-- Records of patrol_area
-- ----------------------------
INSERT INTO `patrol_area` VALUES ('109', '1', '大门口', '1', '0', '9', '1', '2018-05-21 11:08:08', '1', '2018-06-13 23:11:21');
INSERT INTO `patrol_area` VALUES ('110', '1', '二道门', '222', '0', '9', '1', '2018-05-21 11:08:25', '1', '2018-06-13 23:11:21');
INSERT INTO `patrol_area` VALUES ('111', '1', '1212121', '1111111', '0', '9', '1', '2018-05-27 16:03:37', '1', '2018-05-27 16:03:52');
INSERT INTO `patrol_area` VALUES ('112', '55', '大门', '1', '0', '0', '73', '2018-05-27 16:23:17', '73', '2018-05-27 16:23:17');
INSERT INTO `patrol_area` VALUES ('113', '55', '侧门', '2', '0', '0', '73', '2018-05-27 16:36:00', '73', '2018-05-27 16:36:00');
INSERT INTO `patrol_area` VALUES ('114', '56', '大门', '1', '0', '0', '76', '2018-05-28 21:47:40', '76', '2018-05-28 21:47:40');
INSERT INTO `patrol_area` VALUES ('115', '56', '侧门', '2', '0', '0', '76', '2018-05-28 21:47:47', '76', '2018-05-28 21:47:47');
INSERT INTO `patrol_area` VALUES ('116', '56', '侧门2', '3', '0', '0', '76', '2018-05-28 21:48:00', '76', '2018-05-28 21:48:00');
INSERT INTO `patrol_area` VALUES ('117', '57', '大门', '1', '0', '9', '78', '2018-05-29 20:50:14', '1', '2018-06-13 23:11:38');
INSERT INTO `patrol_area` VALUES ('118', '57', '侧门', '2', '0', '9', '78', '2018-05-29 20:50:20', '1', '2018-06-13 23:11:42');
INSERT INTO `patrol_area` VALUES ('119', '57', '侧门2', '3', '0', '0', '78', '2018-05-29 20:50:26', '78', '2018-05-29 20:50:26');

-- ----------------------------
-- Table structure for `patrol_area_line`
-- ----------------------------
DROP TABLE IF EXISTS `patrol_area_line`;
CREATE TABLE `patrol_area_line` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `patrol_id` int(10) DEFAULT NULL COMMENT '巡更点',
  `task_memo` varchar(255) DEFAULT NULL COMMENT '任务描述',
  `states_flag` int(1) DEFAULT NULL COMMENT '状态',
  `create_id` int(10) DEFAULT NULL COMMENT '创建人编号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_create_id` int(10) DEFAULT NULL COMMENT '修改人编号',
  `last_create_time` datetime DEFAULT NULL COMMENT '修改时间',
  `name` varchar(50) DEFAULT NULL COMMENT '任务名称',
  `classify_line_id` int(11) DEFAULT NULL COMMENT '任务id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 COMMENT='巡更点任务表';

-- ----------------------------
-- Records of patrol_area_line
-- ----------------------------
INSERT INTO `patrol_area_line` VALUES ('61', '109', null, '0', '1', '2018-05-21 11:09:20', '1', '2018-05-21 11:09:20', '一号道闸是否正常', '4');
INSERT INTO `patrol_area_line` VALUES ('62', '109', null, '0', '1', '2018-05-21 11:09:20', '1', '2018-05-21 11:09:20', '二号道闸是否正常', '5');
INSERT INTO `patrol_area_line` VALUES ('63', '109', null, '0', '1', '2018-05-21 11:09:20', '1', '2018-05-21 11:09:20', '一号平移式电动门是否正常', '6');
INSERT INTO `patrol_area_line` VALUES ('64', '109', null, '0', '1', '2018-05-21 11:09:20', '1', '2018-05-21 11:09:20', '扩音系统是否正常', '11');
INSERT INTO `patrol_area_line` VALUES ('65', '109', null, '0', '1', '2018-05-21 11:09:20', '1', '2018-05-21 11:09:20', '门卫室人员是否在岗', '12');
INSERT INTO `patrol_area_line` VALUES ('66', '109', null, '0', '1', '2018-05-21 11:09:20', '1', '2018-05-21 11:09:20', '开票室卫生是否达标', '17');
INSERT INTO `patrol_area_line` VALUES ('67', '110', null, '0', '1', '2018-05-21 11:10:14', '1', '2018-05-21 11:10:14', '翼闸是否正常', '18');
INSERT INTO `patrol_area_line` VALUES ('68', '110', null, '0', '1', '2018-05-21 11:10:14', '1', '2018-05-21 11:10:14', '休息室内卫生是否达标', '19');
INSERT INTO `patrol_area_line` VALUES ('69', '112', null, '0', '73', '2018-05-27 16:24:30', '73', '2018-05-27 16:24:30', '一号道闸是否正常', '4');
INSERT INTO `patrol_area_line` VALUES ('70', '112', null, '0', '73', '2018-05-27 16:24:30', '73', '2018-05-27 16:24:30', '二号道闸是否正常', '5');
INSERT INTO `patrol_area_line` VALUES ('71', '112', null, '0', '73', '2018-05-27 16:24:30', '73', '2018-05-27 16:24:30', '一号平移式电动门是否正常', '6');
INSERT INTO `patrol_area_line` VALUES ('72', '112', null, '0', '73', '2018-05-27 16:24:30', '73', '2018-05-27 16:24:30', '二号平移式电动门是否正常', '7');
INSERT INTO `patrol_area_line` VALUES ('73', '112', null, '0', '73', '2018-05-27 16:24:30', '73', '2018-05-27 16:24:30', '一号显示屏是否正常', '8');
INSERT INTO `patrol_area_line` VALUES ('74', '112', null, '0', '73', '2018-05-27 16:24:30', '73', '2018-05-27 16:24:30', '二号显示屏是否正常', '9');
INSERT INTO `patrol_area_line` VALUES ('75', '112', null, '0', '73', '2018-05-27 16:24:30', '73', '2018-05-27 16:24:30', '三号显示屏是否正常', '10');
INSERT INTO `patrol_area_line` VALUES ('76', '112', null, '0', '73', '2018-05-27 16:24:30', '73', '2018-05-27 16:24:30', '扩音系统是否正常', '11');
INSERT INTO `patrol_area_line` VALUES ('77', '112', null, '0', '73', '2018-05-27 16:24:30', '73', '2018-05-27 16:24:30', '门卫室人员是否在岗', '12');
INSERT INTO `patrol_area_line` VALUES ('78', '112', null, '0', '73', '2018-05-27 16:24:30', '73', '2018-05-27 16:24:30', '门卫室人员是否在做与工作无关的事情', '13');
INSERT INTO `patrol_area_line` VALUES ('79', '112', null, '0', '73', '2018-05-27 16:24:30', '73', '2018-05-27 16:24:30', '门卫室卫生是否达标', '14');
INSERT INTO `patrol_area_line` VALUES ('80', '112', null, '0', '73', '2018-05-27 16:24:30', '73', '2018-05-27 16:24:30', '开票房人员是否在岗', '15');
INSERT INTO `patrol_area_line` VALUES ('81', '112', null, '0', '73', '2018-05-27 16:24:30', '73', '2018-05-27 16:24:30', '开票室人员是否在做与工作无关的事情', '16');
INSERT INTO `patrol_area_line` VALUES ('82', '112', null, '0', '73', '2018-05-27 16:24:30', '73', '2018-05-27 16:24:30', '开票室卫生是否达标', '17');
INSERT INTO `patrol_area_line` VALUES ('83', '112', null, '0', '73', '2018-05-27 16:24:30', '73', '2018-05-27 16:24:30', 'dsd', '38');
INSERT INTO `patrol_area_line` VALUES ('84', '113', null, '9', '73', '2018-05-27 16:36:56', '73', '2018-05-27 16:37:03', '休息室内卫生是否达标', '19');
INSERT INTO `patrol_area_line` VALUES ('85', '113', null, '0', '73', '2018-05-27 16:37:28', '73', '2018-05-27 16:37:28', '氮气液位是否在上下限，数值是多少', '25');
INSERT INTO `patrol_area_line` VALUES ('86', '113', null, '0', '73', '2018-05-27 16:37:29', '73', '2018-05-27 16:37:29', '氮封缓冲罐的压力是否正常', '27');
INSERT INTO `patrol_area_line` VALUES ('87', '114', null, '0', '76', '2018-05-28 21:48:20', '76', '2018-05-28 21:48:20', '一号道闸是否正常', '4');
INSERT INTO `patrol_area_line` VALUES ('88', '114', null, '0', '76', '2018-05-28 21:48:21', '76', '2018-05-28 21:48:21', '二号道闸是否正常', '5');
INSERT INTO `patrol_area_line` VALUES ('89', '114', null, '0', '76', '2018-05-28 21:48:21', '76', '2018-05-28 21:48:21', '一号平移式电动门是否正常', '6');
INSERT INTO `patrol_area_line` VALUES ('90', '115', null, '9', '76', '2018-05-28 21:48:30', '76', '2018-05-28 21:49:04', '一号道闸是否正常', '4');
INSERT INTO `patrol_area_line` VALUES ('91', '115', null, '9', '76', '2018-05-28 21:48:30', '76', '2018-05-28 21:49:04', '二号道闸是否正常', '5');
INSERT INTO `patrol_area_line` VALUES ('92', '115', null, '9', '76', '2018-05-28 21:48:30', '76', '2018-05-28 21:49:04', '一号平移式电动门是否正常', '6');
INSERT INTO `patrol_area_line` VALUES ('93', '115', null, '0', '76', '2018-05-28 21:48:54', '76', '2018-05-28 21:48:54', '休息室内卫生是否达标', '19');
INSERT INTO `patrol_area_line` VALUES ('94', '116', null, '0', '76', '2018-05-28 21:49:54', '76', '2018-05-28 21:49:54', '翼闸是否正常', '18');
INSERT INTO `patrol_area_line` VALUES ('95', '117', null, '0', '78', '2018-05-29 20:50:56', '78', '2018-05-29 20:50:56', '一号道闸是否正常', '4');
INSERT INTO `patrol_area_line` VALUES ('96', '117', null, '0', '78', '2018-05-29 20:50:56', '78', '2018-05-29 20:50:56', '二号道闸是否正常', '5');
INSERT INTO `patrol_area_line` VALUES ('97', '117', null, '0', '78', '2018-05-29 20:50:56', '78', '2018-05-29 20:50:56', '一号平移式电动门是否正常', '6');
INSERT INTO `patrol_area_line` VALUES ('98', '117', null, '0', '78', '2018-05-29 20:50:56', '78', '2018-05-29 20:50:56', '二号平移式电动门是否正常', '7');
INSERT INTO `patrol_area_line` VALUES ('99', '117', null, '0', '78', '2018-05-29 20:50:56', '78', '2018-05-29 20:50:56', '一号显示屏是否正常', '8');
INSERT INTO `patrol_area_line` VALUES ('100', '117', null, '0', '78', '2018-05-29 20:50:56', '78', '2018-05-29 20:50:56', '二号显示屏是否正常', '9');
INSERT INTO `patrol_area_line` VALUES ('101', '117', null, '0', '78', '2018-05-29 20:50:56', '78', '2018-05-29 20:50:56', '扩音系统是否正常', '11');
INSERT INTO `patrol_area_line` VALUES ('102', '117', null, '0', '78', '2018-05-29 20:50:56', '78', '2018-05-29 20:50:56', '门卫室人员是否在岗', '12');
INSERT INTO `patrol_area_line` VALUES ('103', '117', null, '0', '78', '2018-05-29 20:50:56', '78', '2018-05-29 20:50:56', '门卫室人员是否在做与工作无关的事情', '13');
INSERT INTO `patrol_area_line` VALUES ('104', '117', null, '0', '78', '2018-05-29 20:50:56', '78', '2018-05-29 20:50:56', '门卫室卫生是否达标', '14');
INSERT INTO `patrol_area_line` VALUES ('105', '117', null, '0', '78', '2018-05-29 20:50:56', '78', '2018-05-29 20:50:56', '开票房人员是否在岗', '15');
INSERT INTO `patrol_area_line` VALUES ('106', '117', null, '0', '78', '2018-05-29 20:50:56', '78', '2018-05-29 20:50:56', '开票室人员是否在做与工作无关的事情', '16');
INSERT INTO `patrol_area_line` VALUES ('107', '117', null, '0', '78', '2018-05-29 20:50:56', '78', '2018-05-29 20:50:56', '开票室卫生是否达标', '17');
INSERT INTO `patrol_area_line` VALUES ('108', '117', null, '0', '78', '2018-05-29 20:50:56', '78', '2018-05-29 20:50:56', 'dsd', '38');
INSERT INTO `patrol_area_line` VALUES ('109', '117', null, '0', '78', '2018-05-29 20:50:56', '78', '2018-05-29 20:50:56', '测试123232', '39');
INSERT INTO `patrol_area_line` VALUES ('110', '118', null, '0', '78', '2018-05-29 21:04:17', '78', '2018-05-29 21:04:17', '翼闸是否正常', '18');
INSERT INTO `patrol_area_line` VALUES ('111', '118', null, '0', '78', '2018-05-29 21:04:17', '78', '2018-05-29 21:04:17', '休息室内卫生是否达标', '19');
INSERT INTO `patrol_area_line` VALUES ('112', '118', null, '9', '78', '2018-05-29 21:05:16', '78', '2018-05-29 21:05:26', '翼闸是否正常', '18');
INSERT INTO `patrol_area_line` VALUES ('113', '118', null, '9', '78', '2018-05-29 21:05:16', '78', '2018-05-29 21:05:26', '休息室内卫生是否达标', '19');
INSERT INTO `patrol_area_line` VALUES ('114', '119', null, '0', '78', '2018-05-29 21:05:43', '78', '2018-05-29 21:05:43', '翼闸是否正常', '18');
INSERT INTO `patrol_area_line` VALUES ('115', '119', null, '0', '78', '2018-05-29 21:05:43', '78', '2018-05-29 21:05:43', '休息室内卫生是否达标', '19');
INSERT INTO `patrol_area_line` VALUES ('116', '119', null, '0', '78', '2018-05-29 21:05:43', '78', '2018-05-29 21:05:43', '地磅上是否有异物', '21');
INSERT INTO `patrol_area_line` VALUES ('117', '119', null, '0', '78', '2018-05-29 21:05:43', '78', '2018-05-29 21:05:43', '地磅房人员是否在岗', '22');
INSERT INTO `patrol_area_line` VALUES ('118', '119', null, '0', '78', '2018-05-29 21:05:43', '78', '2018-05-29 21:05:43', '地磅房人员是否在做与工作无关的事情', '23');
INSERT INTO `patrol_area_line` VALUES ('119', '119', null, '0', '78', '2018-05-29 21:05:43', '78', '2018-05-29 21:05:43', '地磅房卫生是否达标', '24');
INSERT INTO `patrol_area_line` VALUES ('120', '118', null, '0', '78', '2018-05-29 21:06:29', '78', '2018-05-29 21:06:29', '翼闸是否正常', '18');
INSERT INTO `patrol_area_line` VALUES ('121', '118', null, '0', '78', '2018-05-29 21:06:29', '78', '2018-05-29 21:06:29', '休息室内卫生是否达标', '19');
INSERT INTO `patrol_area_line` VALUES ('122', '118', null, '0', '78', '2018-05-29 21:06:36', '78', '2018-05-29 21:06:36', '翼闸是否正常', '18');
INSERT INTO `patrol_area_line` VALUES ('123', '118', null, '0', '78', '2018-05-29 21:06:36', '78', '2018-05-29 21:06:36', '休息室内卫生是否达标', '19');
INSERT INTO `patrol_area_line` VALUES ('124', '118', null, '0', '78', '2018-05-29 21:06:58', '78', '2018-05-29 21:06:58', '翼闸是否正常', '18');
INSERT INTO `patrol_area_line` VALUES ('125', '118', null, '0', '78', '2018-05-29 21:06:58', '78', '2018-05-29 21:06:58', '休息室内卫生是否达标', '19');
INSERT INTO `patrol_area_line` VALUES ('126', '118', null, '0', '78', '2018-05-29 21:06:58', '78', '2018-05-29 21:06:58', '翼闸是否正常', '18');
INSERT INTO `patrol_area_line` VALUES ('127', '118', null, '0', '78', '2018-05-29 21:06:58', '78', '2018-05-29 21:06:58', '休息室内卫生是否达标', '19');
INSERT INTO `patrol_area_line` VALUES ('128', '118', null, '0', '78', '2018-05-29 21:06:58', '78', '2018-05-29 21:06:58', '翼闸是否正常', '18');
INSERT INTO `patrol_area_line` VALUES ('129', '118', null, '0', '78', '2018-05-29 21:06:58', '78', '2018-05-29 21:06:58', '休息室内卫生是否达标', '19');
INSERT INTO `patrol_area_line` VALUES ('130', '118', null, '0', '78', '2018-05-29 21:06:58', '78', '2018-05-29 21:06:58', '翼闸是否正常', '18');
INSERT INTO `patrol_area_line` VALUES ('131', '118', null, '0', '78', '2018-05-29 21:06:58', '78', '2018-05-29 21:06:58', '休息室内卫生是否达标', '19');

-- ----------------------------
-- Table structure for `patrol_area_line_at`
-- ----------------------------
DROP TABLE IF EXISTS `patrol_area_line_at`;
CREATE TABLE `patrol_area_line_at` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `line_id` int(10) DEFAULT NULL COMMENT '任务id',
  `name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `task_memo` varchar(255) DEFAULT NULL COMMENT '参考内容',
  `voice_url` varchar(255) DEFAULT NULL COMMENT '音频',
  `video_url` varchar(255) DEFAULT NULL COMMENT '视频',
  `task_url` varchar(255) DEFAULT NULL COMMENT '参考图片',
  `states_flag` int(1) DEFAULT NULL COMMENT '状态',
  `create_id` int(10) DEFAULT NULL COMMENT '创建人编号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_create_id` int(10) DEFAULT NULL COMMENT '修改人编号',
  `last_create_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='巡更点项目表';

-- ----------------------------
-- Records of patrol_area_line_at
-- ----------------------------

-- ----------------------------
-- Table structure for `person_zyjkda`
-- ----------------------------
DROP TABLE IF EXISTS `person_zyjkda`;
CREATE TABLE `person_zyjkda` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `work_num` varchar(12) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `join_time` datetime DEFAULT NULL,
  `health_detail` varchar(50) DEFAULT NULL,
  `body_check_time` datetime DEFAULT NULL,
  `body_check_detail` varchar(50) DEFAULT NULL,
  `file_url` varchar(200) DEFAULT NULL,
  `is_del` int(1) DEFAULT NULL,
  `sex` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of person_zyjkda
-- ----------------------------
INSERT INTO `person_zyjkda` VALUES ('1', 'H-ASDKL1', '刘德华1', null, null, null, null, null, '1', '1');
INSERT INTO `person_zyjkda` VALUES ('2', 'H-ASDKL', '阿斯顿', '2018-08-08 00:00:00', '良好', null, '阿斯顿', null, '1', '0');
INSERT INTO `person_zyjkda` VALUES ('3', 'H-ASDKL', 'test', '2018-07-31 00:00:00', '良好', null, '阿斯顿', null, '1', '1');
INSERT INTO `person_zyjkda` VALUES ('4', 'H-ASDKLa啊是大', 'sjm', '2018-08-25 00:00:00', '良好', '2018-09-01 00:00:00', '阿斯顿阿斯顿', null, '1', '0');
INSERT INTO `person_zyjkda` VALUES ('5', 'H-ASDKL', 'asda', '2018-08-07 00:00:00', '良好', '2018-08-02 00:00:00', '12312', '\\imgs_msgy\\files\\upload\\xlsx\\(201808010356420465)APP商城商品详细设计.xlsx', '0', '1');
INSERT INTO `person_zyjkda` VALUES ('6', 'H-ASDKL', 'asda', '2018-08-16 00:00:00', '良好', '2018-08-09 00:00:00', '阿斯顿阿斯顿', '\\imgs_msgy\\files\\upload\\xls\\(201808010359566663)商城.xls', '0', '1');
INSERT INTO `person_zyjkda` VALUES ('7', '阿斯顿', '阿三大', '2018-08-13 00:00:00', '阿斯顿', '2018-08-02 00:00:00', '12312', '\\imgs_msgy\\files\\upload\\txt\\(201808010357433207)svn.txt', '1', '0');

-- ----------------------------
-- Table structure for `reservoir`
-- ----------------------------
DROP TABLE IF EXISTS `reservoir`;
CREATE TABLE `reservoir` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `position_no` varchar(50) DEFAULT NULL COMMENT '位号',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `materiel_name` varchar(50) DEFAULT NULL COMMENT '存储物料名称',
  `radii` double(12,2) DEFAULT NULL,
  `height` double(12,2) DEFAULT NULL,
  `type` int(2) DEFAULT NULL,
  `cubage` int(12) DEFAULT NULL,
  `material` varchar(20) DEFAULT NULL,
  `area` int(20) DEFAULT NULL,
  `is_handle` int(1) DEFAULT NULL,
  `handle_area` int(20) DEFAULT NULL,
  `danger_rank` int(10) DEFAULT NULL,
  `cas_no` varchar(50) DEFAULT NULL,
  `danger_type` int(10) DEFAULT NULL,
  `is_del` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reservoir
-- ----------------------------
INSERT INTO `reservoir` VALUES ('1', '1345', 'a1液化罐', '氢气', '1.00', '2.00', '2', '50', 'asd', '600', '0', '600', '2', '21', '3', '1');
INSERT INTO `reservoir` VALUES ('2', '1345', 'a2液化罐', '氢气', '1.00', '2.00', '2', '50', 'asd', '600', '0', '600', '2', '21', '3', '0');
INSERT INTO `reservoir` VALUES ('3', '1345', 'a3液化罐', '氢气', '1.00', '2.00', '2', '50', 'asd', '600', '0', '600', '2', '21', '3', '0');
INSERT INTO `reservoir` VALUES ('4', 'asd121asd12', '测试储罐', '0', '50.00', '20.00', '1', '30', '1', '50', '0', null, '0', 'asda-asd12a', '0', '1');
INSERT INTO `reservoir` VALUES ('5', null, 'asda', null, null, null, null, null, null, null, null, null, null, null, '0', '1');
INSERT INTO `reservoir` VALUES ('6', '12-12asd12a', 'asda', '2', '50.00', '50.00', '2', '50', '4', '80', '0', null, '2', 'asd-a45sda-asda', '4', '0');
INSERT INTO `reservoir` VALUES ('7', '12-12asd12a', 'asda', '2', '50.00', '50.00', '2', '50', '4', '80', '0', null, '0', 'asd-a45sda-asda', '4', '0');
INSERT INTO `reservoir` VALUES ('8', '12-12asd12a', 'asda', '2', '50.00', '50.00', '3', '50', '4', '80', '0', null, '0', 'asd-a45sda-asda', '4', '0');

-- ----------------------------
-- Table structure for `reservoir_staff`
-- ----------------------------
DROP TABLE IF EXISTS `reservoir_staff`;
CREATE TABLE `reservoir_staff` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '姓名',
  `sex` int(1) DEFAULT NULL COMMENT '性别',
  `position` varchar(100) DEFAULT NULL COMMENT '岗位',
  `education` int(2) DEFAULT NULL,
  `specialty` varchar(100) DEFAULT NULL COMMENT '专业',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  `occupation_rank` int(2) DEFAULT NULL COMMENT '职称',
  `section` varchar(12) DEFAULT NULL COMMENT '部门',
  `is_del` int(1) DEFAULT NULL COMMENT '0:未删除1:已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reservoir_staff
-- ----------------------------
INSERT INTO `reservoir_staff` VALUES ('1', '啊实打实', '0', '1', null, null, '13535978860', null, '1', '0');
INSERT INTO `reservoir_staff` VALUES ('2', '刘德华啊', '0', '1', '0', '卖瓜啊', '13232321212', '3', '1', '0');
INSERT INTO `reservoir_staff` VALUES ('3', '啊实打实', '1', '2', '1', '阿斯顿', '18888888888', '0', '2', '1');
INSERT INTO `reservoir_staff` VALUES ('4', 'asda', '1', '2', '1', '卖瓜111', '13535978861', '1', '2', '0');
INSERT INTO `reservoir_staff` VALUES ('5', '阿斯顿', '0', '管理员 啊', '2', '卖瓜', '13535978860', '1', '1', '0');
INSERT INTO `reservoir_staff` VALUES ('6', '啊实打实', '1', '管理员', '2', '阿斯顿', '18888888888', '2', '1', '0');
INSERT INTO `reservoir_staff` VALUES ('7', '阿斯顿', '0', '管理员', '1', '卖瓜', '13535978860', '1', '55', '0');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `company_id` int(10) DEFAULT NULL COMMENT '公司id',
  `create_id` int(10) DEFAULT NULL COMMENT '创建人编号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_create_id` int(10) DEFAULT NULL COMMENT '修改人编号',
  `last_create_time` datetime DEFAULT NULL COMMENT '修改时间',
  `is_del` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('100', '管理员', '63', '1', '2018-07-16 21:34:11', null, null, '0');
INSERT INTO `role` VALUES ('101', '巡检员', '63', '1', '2018-07-23 23:44:40', null, null, '0');
INSERT INTO `role` VALUES ('102', '储运部', '63', null, null, null, null, '0');
INSERT INTO `role` VALUES ('103', '阿斯顿12', '63', null, null, null, null, '0');

-- ----------------------------
-- Table structure for `safe_cultivate`
-- ----------------------------
DROP TABLE IF EXISTS `safe_cultivate`;
CREATE TABLE `safe_cultivate` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `type` int(2) DEFAULT NULL,
  `last_cultivate` datetime DEFAULT NULL,
  `position` int(2) DEFAULT NULL,
  `next_cultivate` datetime DEFAULT NULL,
  `credential_government` int(2) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `is_del` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of safe_cultivate
-- ----------------------------
INSERT INTO `safe_cultivate` VALUES ('1', '啊实打实', '1', '2018-07-17 00:00:00', '1', '2018-06-07 00:00:00', '3', 'asdasd', '0');
INSERT INTO `safe_cultivate` VALUES ('2', 'asda', '1', '2018-07-10 00:00:00', '2', '2018-07-04 00:00:00', '1', '第三方是的发说地方士大夫似的', '0');

-- ----------------------------
-- Table structure for `shift`
-- ----------------------------
DROP TABLE IF EXISTS `shift`;
CREATE TABLE `shift` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `company_id` int(10) DEFAULT NULL COMMENT '隶属公司',
  `cost_time` int(3) DEFAULT NULL COMMENT '分钟',
  `states_flag` int(1) DEFAULT NULL COMMENT '状态',
  `create_id` int(10) DEFAULT NULL COMMENT '创建人编号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_create_id` int(10) DEFAULT NULL,
  `last_create_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='计划';

-- ----------------------------
-- Records of shift
-- ----------------------------

-- ----------------------------
-- Table structure for `shift_line`
-- ----------------------------
DROP TABLE IF EXISTS `shift_line`;
CREATE TABLE `shift_line` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `shift_id` int(10) DEFAULT NULL COMMENT '班次id',
  `patrol_id` int(10) DEFAULT NULL COMMENT '巡更点',
  `level` int(4) DEFAULT NULL COMMENT '顺序',
  `states_flag` int(1) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='计划巡更点明细';

-- ----------------------------
-- Records of shift_line
-- ----------------------------

-- ----------------------------
-- Table structure for `shift_line_patrol`
-- ----------------------------
DROP TABLE IF EXISTS `shift_line_patrol`;
CREATE TABLE `shift_line_patrol` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `line_id` int(10) DEFAULT NULL COMMENT '班次巡更点明细id',
  `patrol_line_id` int(10) DEFAULT NULL COMMENT '任务id',
  `level` int(4) DEFAULT NULL COMMENT '顺序',
  `states_flag` int(1) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='计划任务明细';

-- ----------------------------
-- Records of shift_line_patrol
-- ----------------------------

-- ----------------------------
-- Table structure for `shift_line_patrol_at`
-- ----------------------------
DROP TABLE IF EXISTS `shift_line_patrol_at`;
CREATE TABLE `shift_line_patrol_at` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `line_patrol_id` int(10) DEFAULT NULL COMMENT '任务明细id',
  `patrol_line_at_id` int(10) DEFAULT NULL COMMENT '项目id',
  `level` int(1) DEFAULT NULL COMMENT '顺序',
  `states_flag` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='计划项目明细';

-- ----------------------------
-- Records of shift_line_patrol_at
-- ----------------------------

-- ----------------------------
-- Table structure for `shift_plan`
-- ----------------------------
DROP TABLE IF EXISTS `shift_plan`;
CREATE TABLE `shift_plan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) DEFAULT NULL COMMENT '人员id',
  `start_date` date DEFAULT NULL COMMENT '开始',
  `end_date` date DEFAULT NULL COMMENT '结束结束',
  `name` varchar(255) DEFAULT NULL COMMENT '班次名称',
  `states_flag` int(1) DEFAULT NULL,
  `create_id` int(10) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_create_id` int(10) DEFAULT NULL COMMENT '修改人编号',
  `last_create_time` datetime DEFAULT NULL COMMENT '修改时间',
  `plan_start_time` varchar(20) DEFAULT NULL COMMENT '开始时间',
  `plan_end_time` varchar(20) DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='计划分配表';

-- ----------------------------
-- Records of shift_plan
-- ----------------------------

-- ----------------------------
-- Table structure for `shift_plan_line`
-- ----------------------------
DROP TABLE IF EXISTS `shift_plan_line`;
CREATE TABLE `shift_plan_line` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `plan_id` int(10) DEFAULT NULL COMMENT '班次id',
  `shift_id` int(10) DEFAULT NULL COMMENT '计划id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='班次明细';

-- ----------------------------
-- Records of shift_plan_line
-- ----------------------------

-- ----------------------------
-- Table structure for `souls`
-- ----------------------------
DROP TABLE IF EXISTS `souls`;
CREATE TABLE `souls` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `employee_id` int(10) DEFAULT NULL COMMENT '报告人',
  `work_line_id` int(10) DEFAULT NULL COMMENT '实时工作明细id',
  `shift_plan_id` int(12) DEFAULT NULL COMMENT '班次',
  `patrol_id` int(10) DEFAULT NULL COMMENT '巡更点',
  `patrol_line_id` int(10) DEFAULT NULL COMMENT '任务id',
  `patrol_line_at_id` int(10) DEFAULT NULL COMMENT '项目id',
  `content` varchar(255) DEFAULT NULL COMMENT '报告内容',
  `img_url` varchar(255) DEFAULT NULL COMMENT '上传照片文件url',
  `video_url` varchar(255) DEFAULT NULL COMMENT '上传视频文件url',
  `voice_url` varchar(255) DEFAULT NULL COMMENT '上传音频文件url',
  `reply_memo` varchar(255) DEFAULT NULL COMMENT '处理结果',
  `states_flag` int(1) DEFAULT NULL COMMENT '处理状态 1处理中 2处理结果-正常 3 处理结果-异常',
  `create_id` int(10) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_create_id` int(10) DEFAULT NULL COMMENT '修改人编号',
  `last_create_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='SOS表';

-- ----------------------------
-- Records of souls
-- ----------------------------
INSERT INTO `souls` VALUES ('1', '75', null, '0', '0', '0', '0', 'hdjdjdj', '', '', '', null, '1', null, '2018-05-28 16:51:44', null, null);
INSERT INTO `souls` VALUES ('2', '75', null, '0', '0', '0', '0', 'jdndndj', '', '', '', null, '1', null, '2018-05-28 16:53:03', null, null);
INSERT INTO `souls` VALUES ('3', '75', null, '0', '0', '0', '0', '', '', '', '', null, '1', null, '2018-05-28 16:57:39', null, null);
INSERT INTO `souls` VALUES ('4', '75', null, '0', '0', '0', '0', '啦啦啦', '', '', '', null, '1', null, '2018-05-28 17:14:02', '75', '2018-05-28 17:14:04');
INSERT INTO `souls` VALUES ('5', '75', null, '0', '0', '0', '0', '咯龙敏', '', '', '', null, '1', null, '2018-05-28 17:14:50', null, null);
INSERT INTO `souls` VALUES ('6', '75', '1380', '35', '113', '85', '0', '啦啦啦', '', '', '', '是打算', '2', '75', '2018-05-28 17:47:00', '1', '2018-05-29 21:59:03');
INSERT INTO `souls` VALUES ('15', '75', null, null, '113', '85', '0', '觉得觉得街道口', '', '', '', null, '1', '2', '2018-05-28 20:49:17', null, null);
INSERT INTO `souls` VALUES ('16', '77', '1457', '39', '115', '93', '0', 'yic', '', '', '', null, '1', '77', '2018-05-28 22:00:19', null, null);
INSERT INTO `souls` VALUES ('17', '77', null, null, '114', '87', '0', 'qwert', '', '', '', null, '1', '2', '2018-05-28 22:04:32', null, null);
INSERT INTO `souls` VALUES ('18', '77', null, null, '114', '88', '0', '', '\\imgs_msgy\\upload\\sos\\jpg\\201805281004363922.jpg', '', '', null, '1', '2', '2018-05-28 22:05:15', null, null);
INSERT INTO `souls` VALUES ('19', '75', null, null, '112', '69', '0', '回家几句话', '', '', '', null, '1', '2', '2018-05-28 22:11:12', null, null);
INSERT INTO `souls` VALUES ('20', '75', null, null, '112', '69', '0', '呵呵斤斤计较', '', '', '', null, '1', '2', '2018-05-28 22:11:24', null, null);
INSERT INTO `souls` VALUES ('21', '75', null, null, '112', '69', '0', '呵呵哈哈哈', '', '', '', null, '1', '2', '2018-05-29 20:09:02', null, null);
INSERT INTO `souls` VALUES ('22', '75', null, '0', '0', '0', '0', '就是都觉得就觉得', '', '', '', null, '1', null, '2018-05-29 20:10:14', null, null);
INSERT INTO `souls` VALUES ('23', '75', '4636', '53', '113', '86', '0', '不还', '', '', '', null, '1', '75', '2018-05-29 20:11:39', null, null);
INSERT INTO `souls` VALUES ('24', '75', null, '0', '0', '0', '0', '', '', '', '', null, '1', null, '2018-05-29 20:40:05', null, null);
INSERT INTO `souls` VALUES ('25', '75', null, null, '112', '69', '0', '呵呵哈哈哈呵呵哈哈哈哈好的还记得就到家打卡打几打几打肯德基都觉得街道口', '', '', '', null, '1', '2', '2018-05-29 20:40:29', null, null);
INSERT INTO `souls` VALUES ('26', '79', '4776', '54', '117', '95', '0', '可口可乐了', '', '', '', '213213213213', '2', '79', '2018-05-29 21:19:24', '78', '2018-05-29 21:24:53');

-- ----------------------------
-- Table structure for `special_equipment`
-- ----------------------------
DROP TABLE IF EXISTS `special_equipment`;
CREATE TABLE `special_equipment` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `device` varchar(100) DEFAULT NULL COMMENT '设备名称',
  `device_type` int(10) DEFAULT NULL COMMENT '设备类型',
  `serial_no` varchar(100) DEFAULT NULL COMMENT '出厂编号',
  `license_no` varchar(100) DEFAULT NULL COMMENT '使用证编号',
  `model_number` varchar(50) DEFAULT NULL COMMENT '出厂型号',
  `primary_param` varchar(50) DEFAULT NULL COMMENT '主要参数',
  `num` int(12) DEFAULT NULL COMMENT '数量',
  `fp` varchar(50) DEFAULT NULL COMMENT '功能',
  `check_unit` varchar(100) DEFAULT NULL COMMENT '检测单位',
  `check_file` varchar(200) DEFAULT NULL COMMENT '检测报告路径',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `is_del` int(1) DEFAULT NULL COMMENT '是否删除',
  `check_date` datetime DEFAULT NULL COMMENT '检测日期',
  `expiry_date` datetime DEFAULT NULL COMMENT '有效期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of special_equipment
-- ----------------------------
INSERT INTO `special_equipment` VALUES ('1', '深海探测仪', '1', '2sd1a2asdasda-asdasd1-asd', 'asd112as1d-asdasd12as-ss', '123123', 'asd1112', '50', '探测', '江苏省常州市aa检察院', '', '轻拿轻放', '1', null, null);
INSERT INTO `special_equipment` VALUES ('2', '深海探测仪1', '1', '2sd1a2asdasda-asdasd1-asd', 'asd112as1d-asdasd12as-ss', '123123', 'asd1112', '50', '探测', '江苏省常州市aa检察院', '', '轻拿轻放', '1', null, null);
INSERT INTO `special_equipment` VALUES ('3', '深海探测仪2', '1', '2sd1a2asdasda-asdasd1-asd', 'asd112as1d-asdasd12as-ss', '123123', 'asd1112', '50', '探测', '江苏省常州市aa检察院', '', '轻拿轻放', '0', null, null);
INSERT INTO `special_equipment` VALUES ('4', '深海探测仪3', '1', '2sd1a2asdasda-asdasd1-asd', 'asd112as1d-asdasd12as-ss', '123123', 'asd1112', '50', '探测', '江苏省常州市aa检察院', '', '轻拿轻放', '1', null, null);
INSERT INTO `special_equipment` VALUES ('5', 'asdasd', '2', 'asdasd', null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `special_equipment` VALUES ('6', 'asdasd', '2', 'asdasd', '21asd21asd', '1212asd1a', 'as1da2s1d', '50', 'asd1a2s1d', null, null, 'asd4as2d1a2asdasd', '0', '2018-06-14 00:00:00', '2018-06-22 00:00:00');
INSERT INTO `special_equipment` VALUES ('7', 'asdasd', '2', 'asdasd', '21asd21asd', '1212asd1a', 'as1da2s1d', '50', 'asd1a2s1d', null, null, 'asd1112adsda', '0', '2018-06-22 00:00:00', '2018-06-22 00:00:00');
INSERT INTO `special_equipment` VALUES ('8', 'tests', '2', 'asd12a2', 'asd123a1', 'as23d1', 'asd213', '15', 'as12d1', null, '\\imgs_msgy\\files\\upload\\pptx\\(201806270617518408)asd.pptx', 'asd1a2sd', '0', '2018-06-06 00:00:00', '2018-06-13 00:00:00');
INSERT INTO `special_equipment` VALUES ('9', 'asdas', '1', 'asdasd', 'asd31as5d1', 'asda10s2', 'asda31s2', '123', 'as21d2', null, '\\imgs_msgy\\files\\upload\\pptx\\(201807040858533102)asd.pptx', 'asda1sd561a', '0', '2018-07-21 00:00:00', '2018-07-19 00:00:00');
INSERT INTO `special_equipment` VALUES ('10', 'ASDASD', '2', null, null, null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `special_equipment` VALUES ('11', null, null, null, null, null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `special_equipment` VALUES ('12', null, null, null, null, null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `special_equipment` VALUES ('13', null, null, null, null, null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `special_equipment` VALUES ('14', null, null, null, null, null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `special_equipment` VALUES ('15', null, null, null, null, null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `special_equipment` VALUES ('16', null, null, null, null, null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `special_equipment` VALUES ('17', null, null, null, null, null, null, null, null, null, null, null, '0', null, null);

-- ----------------------------
-- Table structure for `staff_doc`
-- ----------------------------
DROP TABLE IF EXISTS `staff_doc`;
CREATE TABLE `staff_doc` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `role` varchar(50) DEFAULT NULL COMMENT '角色',
  `name` varchar(100) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话',
  `address` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `status` int(1) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `is_del` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staff_doc
-- ----------------------------
INSERT INTO `staff_doc` VALUES ('1', '打算', '阿斯顿', '13535978860', '啊实打实打是', '0', '2018-07-04 17:19:00', '1');
INSERT INTO `staff_doc` VALUES ('2', '啊实打实', '啊是大', '13535978860', 'as321d2a1sd ', '0', '2018-07-04 17:21:50', '0');

-- ----------------------------
-- Table structure for `state_control`
-- ----------------------------
DROP TABLE IF EXISTS `state_control`;
CREATE TABLE `state_control` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) NOT NULL COMMENT '人员',
  `plan_date` date DEFAULT NULL COMMENT '日期',
  `plan_id` int(10) DEFAULT NULL COMMENT '计划id',
  `plan_line_id` int(10) DEFAULT NULL COMMENT '班次明细',
  `statusFlag` varchar(255) DEFAULT NULL COMMENT '状态',
  `plan_start_time` datetime DEFAULT NULL COMMENT '计划开始时间',
  `plan_end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='状态控制';

-- ----------------------------
-- Records of state_control
-- ----------------------------

-- ----------------------------
-- Table structure for `training_courseware`
-- ----------------------------
DROP TABLE IF EXISTS `training_courseware`;
CREATE TABLE `training_courseware` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upload_url` varchar(100) DEFAULT NULL COMMENT '名称',
  `upload_time` datetime DEFAULT NULL COMMENT '上传时间',
  `upload_emp` int(12) DEFAULT NULL COMMENT '上传人id',
  `is_del` int(1) DEFAULT NULL COMMENT '是否删除 0:未删除 1:已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of training_courseware
-- ----------------------------
INSERT INTO `training_courseware` VALUES ('7', '\\imgs_msgy\\files\\upload\\pptx\\file(2018062510201309510).pptx', '2018-06-25 16:00:22', '1', '1');
INSERT INTO `training_courseware` VALUES ('8', '\\imgs_msgy\\files\\upload\\docx\\file(201806251020255030).docx', '2018-06-25 16:00:15', '1', '1');
INSERT INTO `training_courseware` VALUES ('10', '\\imgs_msgy\\files\\upload\\docx\\啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx(201806251021541505).docx', '2018-06-25 15:42:41', '1', '1');
INSERT INTO `training_courseware` VALUES ('11', '\\imgs_msgy\\files\\upload\\docx\\啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx(201806251024426707).docx', '2018-06-25 15:42:39', '1', '1');
INSERT INTO `training_courseware` VALUES ('12', '\\imgs_msgy\\files\\upload\\docx\\(201806251025451834)啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx', '2018-06-25 15:42:37', '1', '1');
INSERT INTO `training_courseware` VALUES ('13', '\\imgs_msgy\\files\\upload\\docx\\(201806251111541099)啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx', '2018-06-25 15:42:34', '1', '1');
INSERT INTO `training_courseware` VALUES ('14', '\\imgs_msgy\\files\\upload\\pptx\\(201806250322416448)asd.pptx', '2018-06-25 15:24:11', '1', '1');
INSERT INTO `training_courseware` VALUES ('15', '\\imgs_msgy\\files\\upload\\pdf\\(2018062503415765010)魏晓民高管资料终稿.pdf', '2018-06-25 16:00:10', '1', '1');
INSERT INTO `training_courseware` VALUES ('16', '\\imgs_msgy\\files\\upload\\pptx\\(201806250342083249)asd.pptx', '2018-06-25 16:00:07', '1', '1');
INSERT INTO `training_courseware` VALUES ('17', '\\imgs_msgy\\files\\upload\\pptx\\(201806250359370656)asd.pptx', '2018-06-25 16:00:29', '1', '0');
INSERT INTO `training_courseware` VALUES ('18', '\\imgs_msgy\\files\\upload\\pdf\\(201806250400013959)魏晓民高管资料终稿.pdf', '2018-06-26 09:15:49', '1', '1');
INSERT INTO `training_courseware` VALUES ('19', '\\imgs_msgy\\files\\upload\\pptx\\(201806260915150845)asd.pptx', '2018-06-26 09:16:31', '1', '1');

-- ----------------------------
-- Table structure for `troubleshooting`
-- ----------------------------
DROP TABLE IF EXISTS `troubleshooting`;
CREATE TABLE `troubleshooting` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `company_name` varchar(100) DEFAULT NULL COMMENT '单位名称',
  `check_date` date DEFAULT NULL COMMENT '检查日期',
  `check_depart` varchar(100) DEFAULT NULL COMMENT '检查部门',
  `check_people` varchar(100) DEFAULT NULL COMMENT '检查人员',
  `categoryType` varchar(2) DEFAULT NULL COMMENT '检查类别',
  `device` varchar(255) DEFAULT NULL COMMENT '安全隐患描述',
  `danger_big_class` varchar(2) DEFAULT NULL COMMENT '隐患大类',
  `danger_small_class` varchar(2) DEFAULT NULL COMMENT '隐患小类',
  `serial_no` varchar(2) DEFAULT NULL COMMENT '隐患级别',
  `check_department` varchar(255) DEFAULT NULL COMMENT '整改责任部门',
  `check_depart_people` varchar(255) DEFAULT NULL COMMENT '整改责任人',
  `check_finsh_date` date DEFAULT NULL COMMENT '计划完成日期',
  `check_way` varchar(255) DEFAULT NULL COMMENT '整改措施及方案',
  `check_type` int(1) DEFAULT NULL COMMENT '0 未整改 1 整改中 2 整改完成 3 复查通过 4 复查不通过',
  `danger_img` varchar(255) DEFAULT NULL COMMENT '隐患图片',
  `inspection_id` int(11) DEFAULT NULL COMMENT '隐患id',
  `workkey` varchar(255) DEFAULT NULL COMMENT '安全检查key',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='隐患排查';

-- ----------------------------
-- Records of troubleshooting
-- ----------------------------
INSERT INTO `troubleshooting` VALUES ('1', '常州市双志石油化工储运有限公司', '2018-06-28', '抽查', '占三、李四', '0', '1#泵房可燃气体检测仪支架脱落', '0', '0', '0', '1号责任部门', '罗汉果', '2018-06-29', '放松放松，干完活', '4', '', null, null);
INSERT INTO `troubleshooting` VALUES ('2', '常州市双志石油化工储运有限公司', '2018-06-28', '发呆呢', '萨的房价', '0', '房贷首付斯蒂芬', '0', '0', '1', '防守对方', '发送地', '2018-06-21', '放松的方式的', '2', '\\imgs_msgy\\upload\\sos\\jpg\\201806280521126946.jpg', null, null);
INSERT INTO `troubleshooting` VALUES ('3', '常州市双志石油化工储运有限公司', '2018-08-16', null, '', '0', '三个对方感到孤独', '0', '0', null, null, null, null, null, '0', null, null, null);
INSERT INTO `troubleshooting` VALUES ('4', null, '2018-08-20', '21212', '12121', '0', 'dssd 的深V 大幅度反弹 d发的 d反对地方 f大幅度反弹 大幅度反弹地方 对方答复 d辅导费 f的房贷 fdfdfd的', '17', '0', '0', 'dfd', 'dfdf', '2018-08-22', 'dfdfd', '2', '', null, 'c4007bac13aa4fed8891e1cdfbdf17cb');
INSERT INTO `troubleshooting` VALUES ('5', null, '2018-08-20', '21212', '12121', '0', 'dssd 的深V 大幅度反弹 d发的 d反对地方 f大幅度反弹 大幅度反弹地方 对方答复 d辅导费 f的房贷 fdfdfd的', '17', '0', '0', 'dfgdd', 'fdfgdfgd', '2018-08-22', 'gdfgfdgdf', '0', '', null, 'c4007bac13aa4fed8891e1cdfbdf17cb');
INSERT INTO `troubleshooting` VALUES ('6', null, '2018-08-22', 'dfd', 'dfd', '0', 'dfdd', '0', '0', '0', 'dfd', 'dfdf', '2018-08-22', 'dfdf', '0', '', null, '');
INSERT INTO `troubleshooting` VALUES ('7', '常州市双志石油化工储运有限公司', '2018-08-20', '21212', '12121', '0', 'dssd 的深V 大幅度反弹 d发的 d反对地方 f大幅度反弹 大幅度反弹地方 对方答复 d辅导费 f的房贷 fdfdfd的', '17', '0', '0', 'dfdfd', 'fdf', '2018-08-22', 'dfdfd', '2', '', null, 'c4007bac13aa4fed8891e1cdfbdf17cb');
INSERT INTO `troubleshooting` VALUES ('8', '常州市双志石油化工储运有限公司', '2018-08-15', 'dfgd', 'gdfgdfgfdg', '0', 'gdfgdf', '0', '0', '0', 'dgfd', 'gdfg', '2018-08-22', 'gdfg', '0', '', null, '');
INSERT INTO `troubleshooting` VALUES ('9', '常州市双志石油化工储运有限公司', '2018-08-20', '21212', '12121', '0', 'dssd 的深V 大幅度反弹 d发的 d反对地方 f大幅度反弹 大幅度反弹地方 对方答复 d辅导费 f的房贷 fdfdfd的', '17', '0', '0', 'gfdgdfg', 'fdgfd', '2018-08-22', 'gfdgdf', '4', '', null, 'c4007bac13aa4fed8891e1cdfbdf17cb');
INSERT INTO `troubleshooting` VALUES ('10', '常州市双志石油化工储运有限公司', '2018-08-27', '展业部', '刘德华', '0', '太可怜', '5', '0', '0', 'fd', 'df', '2018-08-27', 'dfdfd', '0', '', null, 'b0b5aebc2d6f481f88022d695bfb07d8');
INSERT INTO `troubleshooting` VALUES ('11', null, '2018-08-25', '巡检员1', '巡检员', null, 'ghhh ', '17', '0', '0', 'dfdf', 'dfd', '2018-08-27', 'dfdfdf', '0', '', null, null);
INSERT INTO `troubleshooting` VALUES ('12', '常州市双志石油化工储运有限公司', '2018-08-25', '巡检员1', '巡检员', '0', 'ghhh ', '17', '0', '0', 'gdfgdfgdf', 'gdfgdf', '2018-08-27', 'gdfg', '0', '', null, null);
INSERT INTO `troubleshooting` VALUES ('13', '常州市双志石油化工储运有限公司', '2018-08-25', '巡检员1', '巡检员', '0', 'ghhh ', '17', '0', '0', 'gdfgdfgdf', 'gdfgdf', '2018-08-27', 'gdfg', '0', '', null, '52097d5fd9414bb8badbf540ab6d6f66');
INSERT INTO `troubleshooting` VALUES ('14', '常州市双志石油化工储运有限公司', '2018-08-25', '巡检员1', '巡检员', '0', 'ghhh ', '17', '0', '0', '12', '121', '2018-08-27', '1212', '0', '', null, '52097d5fd9414bb8badbf540ab6d6f66');
INSERT INTO `troubleshooting` VALUES ('15', '常州市双志石油化工储运有限公司', '2018-08-25', '巡检员1', '巡检员', '0', 'ghhh ', '17', '0', '0', 'fgdgfd', 'gdfgdf', '2018-08-22', 'gfdgdf', '0', '/files/upload/20180827213938_455.jpg', null, '52097d5fd9414bb8badbf540ab6d6f66');
INSERT INTO `troubleshooting` VALUES ('16', '常州市双志石油化工储运有限公司', '2018-08-22', '', '', '0', 'cvc jh hgfh ', '17', '0', '1', '啦咯啦咯啦咯', '空军建军节', '2018-08-28', '啦咯啦咯啦咯', '0', '/files/upload/20180828094206_422.jpg', null, '72e35a20d3914e15bc453ab7d68aa03d');
INSERT INTO `troubleshooting` VALUES ('17', '常州市双志石油化工储运有限公司', '2018-08-20', '', '', '0', '北方四岛一直都是日本与俄罗斯之间最大的矛4盾所在 北方四岛一直都是日本与俄罗斯之间最大的矛3盾所在 北方四岛一直都是日本与俄罗斯之间最大的矛2盾所在 hgfhgfh ', '1', '0', '0', '太累了', '啦啦啦啦', '2018-08-28', '啦咯啦咯啦咯', '0', '', null, '35dd3bab97c44ca39abec87149a08870');

-- ----------------------------
-- Table structure for `troubleshooting_line`
-- ----------------------------
DROP TABLE IF EXISTS `troubleshooting_line`;
CREATE TABLE `troubleshooting_line` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parent_id` int(10) DEFAULT NULL COMMENT '排查id',
  `review_date` datetime DEFAULT NULL COMMENT '复查时间',
  `review_people` varchar(255) DEFAULT NULL,
  `check_type` int(1) DEFAULT NULL COMMENT '0 未整改 1 整改中 2 整改完成',
  `review_money` double(10,2) DEFAULT NULL COMMENT '已投入资金',
  `danger_memo` varchar(255) DEFAULT NULL COMMENT '整改情况',
  `danger_img` varchar(255) DEFAULT NULL COMMENT '整改图片',
  `type` varchar(1) DEFAULT NULL COMMENT '1 整改记录 2 复查记录',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='整改记录';

-- ----------------------------
-- Records of troubleshooting_line
-- ----------------------------
INSERT INTO `troubleshooting_line` VALUES ('1', '1', '2018-06-28 04:00:00', '给对方', '1', '1212.00', '法国', '', '1');
INSERT INTO `troubleshooting_line` VALUES ('2', '2', '2018-06-28 00:00:00', '大范甘迪', '1', '55555.00', '的房贷', '\\imgs_msgy\\upload\\sos\\png\\201806280525510943.png', '1');
INSERT INTO `troubleshooting_line` VALUES ('3', '1', '2018-06-28 15:00:00', 'gdfg', '2', '5000.00', 'gdfg', '\\imgs_msgy\\upload\\sos\\jpg\\201806280556533822.jpg', '1');
INSERT INTO `troubleshooting_line` VALUES ('4', '2', '2018-07-18 00:00:00', '的房贷', '0', '12121.00', '1', '\\imgs_msgy\\upload\\sos\\jpg\\201806280521126946.jpg', '1');
INSERT INTO `troubleshooting_line` VALUES ('5', '1', '2018-07-03 00:00:00', '辅导费', '4', '12121.00', '的房贷', '\\imgs_msgy\\upload\\sos\\jpg\\201807030816265989.jpg', '2');
INSERT INTO `troubleshooting_line` VALUES ('6', '2', '2018-07-03 00:00:00', '豆腐干地方', '2', '121212.00', '是否是', '\\imgs_msgy\\upload\\sos\\png\\201807030819356995.png', '1');
INSERT INTO `troubleshooting_line` VALUES ('7', '2', '2018-07-03 00:00:00', '大范甘迪', '3', '1000.00', '古典风格', '\\imgs_msgy\\upload\\sos\\jpg\\201806280521126946.jpg', '2');
INSERT INTO `troubleshooting_line` VALUES ('8', '2', '2018-07-03 00:00:00', '怪怪的风格', '0', '1212.00', '发雕塑', '\\imgs_msgy\\upload\\sos\\jpg\\201806280521126946.jpg', '1');
INSERT INTO `troubleshooting_line` VALUES ('9', '2', '2018-07-03 00:00:00', '豆腐干', '0', '212.00', '1212', '\\imgs_msgy\\upload\\sos\\jpg\\201806280521126946.jpg', '1');
INSERT INTO `troubleshooting_line` VALUES ('10', '2', '2018-07-04 00:00:00', 'gjgh', '0', '156516.00', 'jghjgh', '\\imgs_msgy\\upload\\sos\\jpg\\201806280521126946.jpg', '1');
INSERT INTO `troubleshooting_line` VALUES ('11', '2', '2018-07-04 00:00:00', 'fghgfhf', '2', '121.00', 'dfd', '\\imgs_msgy\\upload\\sos\\jpg\\201806280521126946.jpg', '1');
INSERT INTO `troubleshooting_line` VALUES ('12', '5', '2018-08-24 00:00:00', '121', '0', '121.00', '121', '', '1');
INSERT INTO `troubleshooting_line` VALUES ('13', '9', '2018-08-07 00:00:00', 'gfdgf', '2', '11.00', 'dgdfgf', '', '1');
INSERT INTO `troubleshooting_line` VALUES ('14', '8', '2018-08-24 00:00:00', 'regrd', '0', '1.00', '121', '', '1');
INSERT INTO `troubleshooting_line` VALUES ('15', '9', '2018-08-27 00:00:00', '李经理', '4', '55555.00', '吐了', '', '2');
INSERT INTO `troubleshooting_line` VALUES ('16', '7', '2018-08-27 00:00:00', '太可怜了', '2', '525855.00', '太可怜了', '', '1');
INSERT INTO `troubleshooting_line` VALUES ('17', '4', '2018-08-21 00:00:00', '李经理', '2', '11555.00', '太可怜了', '', '1');
INSERT INTO `troubleshooting_line` VALUES ('18', '4', '2018-08-21 00:00:00', '李经理', '2', '11555.00', '太可怜了', '', '1');

-- ----------------------------
-- Table structure for `type`
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '爆炸品');
INSERT INTO `type` VALUES ('2', '易燃气体');
INSERT INTO `type` VALUES ('3', '易于自燃的物质');
INSERT INTO `type` VALUES ('4', '氧化性物质');
INSERT INTO `type` VALUES ('5', '有机过氧化物');
INSERT INTO `type` VALUES ('6', '毒性物质');
INSERT INTO `type` VALUES ('7', '气体');
INSERT INTO `type` VALUES ('8', '易燃液体');
INSERT INTO `type` VALUES ('9', '易燃固体');
INSERT INTO `type` VALUES ('10', '遇水放出易燃气体的物质');

-- ----------------------------
-- Table structure for `t_base_pinyin`
-- ----------------------------
DROP TABLE IF EXISTS `t_base_pinyin`;
CREATE TABLE `t_base_pinyin` (
  `pin_yin_` varchar(255) CHARACTER SET gbk NOT NULL,
  `code_` int(11) NOT NULL,
  PRIMARY KEY (`code_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拼音表';

-- ----------------------------
-- Records of t_base_pinyin
-- ----------------------------
INSERT INTO `t_base_pinyin` VALUES ('zuo', '10254');
INSERT INTO `t_base_pinyin` VALUES ('zun', '10256');
INSERT INTO `t_base_pinyin` VALUES ('zui', '10260');
INSERT INTO `t_base_pinyin` VALUES ('zuan', '10262');
INSERT INTO `t_base_pinyin` VALUES ('zu', '10270');
INSERT INTO `t_base_pinyin` VALUES ('zou', '10274');
INSERT INTO `t_base_pinyin` VALUES ('zong', '10281');
INSERT INTO `t_base_pinyin` VALUES ('zi', '10296');
INSERT INTO `t_base_pinyin` VALUES ('zhuo', '10307');
INSERT INTO `t_base_pinyin` VALUES ('zhun', '10309');
INSERT INTO `t_base_pinyin` VALUES ('zhui', '10315');
INSERT INTO `t_base_pinyin` VALUES ('zhuang', '10322');
INSERT INTO `t_base_pinyin` VALUES ('zhuan', '10328');
INSERT INTO `t_base_pinyin` VALUES ('zhuai', '10329');
INSERT INTO `t_base_pinyin` VALUES ('zhua', '10331');
INSERT INTO `t_base_pinyin` VALUES ('zhu', '10519');
INSERT INTO `t_base_pinyin` VALUES ('zhou', '10533');
INSERT INTO `t_base_pinyin` VALUES ('zhong', '10544');
INSERT INTO `t_base_pinyin` VALUES ('zhi', '10587');
INSERT INTO `t_base_pinyin` VALUES ('zheng', '10764');
INSERT INTO `t_base_pinyin` VALUES ('zhen', '10780');
INSERT INTO `t_base_pinyin` VALUES ('zhe', '10790');
INSERT INTO `t_base_pinyin` VALUES ('zhao', '10800');
INSERT INTO `t_base_pinyin` VALUES ('zhang', '10815');
INSERT INTO `t_base_pinyin` VALUES ('zhan', '10832');
INSERT INTO `t_base_pinyin` VALUES ('zhai', '10838');
INSERT INTO `t_base_pinyin` VALUES ('zha', '11014');
INSERT INTO `t_base_pinyin` VALUES ('zeng', '11018');
INSERT INTO `t_base_pinyin` VALUES ('zen', '11019');
INSERT INTO `t_base_pinyin` VALUES ('zei', '11020');
INSERT INTO `t_base_pinyin` VALUES ('ze', '11024');
INSERT INTO `t_base_pinyin` VALUES ('zao', '11038');
INSERT INTO `t_base_pinyin` VALUES ('zang', '11041');
INSERT INTO `t_base_pinyin` VALUES ('zan', '11045');
INSERT INTO `t_base_pinyin` VALUES ('zai', '11052');
INSERT INTO `t_base_pinyin` VALUES ('za', '11055');
INSERT INTO `t_base_pinyin` VALUES ('yun', '11067');
INSERT INTO `t_base_pinyin` VALUES ('yue', '11077');
INSERT INTO `t_base_pinyin` VALUES ('yuan', '11097');
INSERT INTO `t_base_pinyin` VALUES ('yu', '11303');
INSERT INTO `t_base_pinyin` VALUES ('you', '11324');
INSERT INTO `t_base_pinyin` VALUES ('yong', '11339');
INSERT INTO `t_base_pinyin` VALUES ('yo', '11340');
INSERT INTO `t_base_pinyin` VALUES ('ying', '11358');
INSERT INTO `t_base_pinyin` VALUES ('yin', '11536');
INSERT INTO `t_base_pinyin` VALUES ('yi', '11589');
INSERT INTO `t_base_pinyin` VALUES ('ye', '11604');
INSERT INTO `t_base_pinyin` VALUES ('yao', '11781');
INSERT INTO `t_base_pinyin` VALUES ('yang', '11798');
INSERT INTO `t_base_pinyin` VALUES ('yan', '11831');
INSERT INTO `t_base_pinyin` VALUES ('ya', '11847');
INSERT INTO `t_base_pinyin` VALUES ('xun', '11861');
INSERT INTO `t_base_pinyin` VALUES ('xue', '11867');
INSERT INTO `t_base_pinyin` VALUES ('xuan', '12039');
INSERT INTO `t_base_pinyin` VALUES ('xu', '12058');
INSERT INTO `t_base_pinyin` VALUES ('xiu', '12067');
INSERT INTO `t_base_pinyin` VALUES ('xiong', '12074');
INSERT INTO `t_base_pinyin` VALUES ('xing', '12089');
INSERT INTO `t_base_pinyin` VALUES ('xin', '12099');
INSERT INTO `t_base_pinyin` VALUES ('xie', '12120');
INSERT INTO `t_base_pinyin` VALUES ('xiao', '12300');
INSERT INTO `t_base_pinyin` VALUES ('xiang', '12320');
INSERT INTO `t_base_pinyin` VALUES ('xian', '12346');
INSERT INTO `t_base_pinyin` VALUES ('xia', '12359');
INSERT INTO `t_base_pinyin` VALUES ('xi', '12556');
INSERT INTO `t_base_pinyin` VALUES ('wu', '12585');
INSERT INTO `t_base_pinyin` VALUES ('wo', '12594');
INSERT INTO `t_base_pinyin` VALUES ('weng', '12597');
INSERT INTO `t_base_pinyin` VALUES ('wen', '12607');
INSERT INTO `t_base_pinyin` VALUES ('wei', '12802');
INSERT INTO `t_base_pinyin` VALUES ('wang', '12812');
INSERT INTO `t_base_pinyin` VALUES ('wan', '12829');
INSERT INTO `t_base_pinyin` VALUES ('wai', '12831');
INSERT INTO `t_base_pinyin` VALUES ('wa', '12838');
INSERT INTO `t_base_pinyin` VALUES ('tuo', '12849');
INSERT INTO `t_base_pinyin` VALUES ('tun', '12852');
INSERT INTO `t_base_pinyin` VALUES ('tui', '12858');
INSERT INTO `t_base_pinyin` VALUES ('tuan', '12860');
INSERT INTO `t_base_pinyin` VALUES ('tu', '12871');
INSERT INTO `t_base_pinyin` VALUES ('tou', '12875');
INSERT INTO `t_base_pinyin` VALUES ('tong', '12888');
INSERT INTO `t_base_pinyin` VALUES ('ting', '13060');
INSERT INTO `t_base_pinyin` VALUES ('tie', '13063');
INSERT INTO `t_base_pinyin` VALUES ('tiao', '13068');
INSERT INTO `t_base_pinyin` VALUES ('tian', '13076');
INSERT INTO `t_base_pinyin` VALUES ('ti', '13091');
INSERT INTO `t_base_pinyin` VALUES ('teng', '13095');
INSERT INTO `t_base_pinyin` VALUES ('te', '13096');
INSERT INTO `t_base_pinyin` VALUES ('tao', '13107');
INSERT INTO `t_base_pinyin` VALUES ('tang', '13120');
INSERT INTO `t_base_pinyin` VALUES ('tan', '13138');
INSERT INTO `t_base_pinyin` VALUES ('tai', '13147');
INSERT INTO `t_base_pinyin` VALUES ('ta', '13318');
INSERT INTO `t_base_pinyin` VALUES ('suo', '13326');
INSERT INTO `t_base_pinyin` VALUES ('sun', '13329');
INSERT INTO `t_base_pinyin` VALUES ('sui', '13340');
INSERT INTO `t_base_pinyin` VALUES ('suan', '13343');
INSERT INTO `t_base_pinyin` VALUES ('su', '13356');
INSERT INTO `t_base_pinyin` VALUES ('sou', '13359');
INSERT INTO `t_base_pinyin` VALUES ('song', '13367');
INSERT INTO `t_base_pinyin` VALUES ('si', '13383');
INSERT INTO `t_base_pinyin` VALUES ('shuo', '13387');
INSERT INTO `t_base_pinyin` VALUES ('shun', '13391');
INSERT INTO `t_base_pinyin` VALUES ('shui', '13395');
INSERT INTO `t_base_pinyin` VALUES ('shuang', '13398');
INSERT INTO `t_base_pinyin` VALUES ('shuan', '13400');
INSERT INTO `t_base_pinyin` VALUES ('shuai', '13404');
INSERT INTO `t_base_pinyin` VALUES ('shua', '13406');
INSERT INTO `t_base_pinyin` VALUES ('shu', '13601');
INSERT INTO `t_base_pinyin` VALUES ('shou', '13611');
INSERT INTO `t_base_pinyin` VALUES ('shi', '13658');
INSERT INTO `t_base_pinyin` VALUES ('sheng', '13831');
INSERT INTO `t_base_pinyin` VALUES ('shen', '13847');
INSERT INTO `t_base_pinyin` VALUES ('she', '13859');
INSERT INTO `t_base_pinyin` VALUES ('shao', '13870');
INSERT INTO `t_base_pinyin` VALUES ('shang', '13878');
INSERT INTO `t_base_pinyin` VALUES ('shan', '13894');
INSERT INTO `t_base_pinyin` VALUES ('shai', '13896');
INSERT INTO `t_base_pinyin` VALUES ('sha', '13905');
INSERT INTO `t_base_pinyin` VALUES ('seng', '13906');
INSERT INTO `t_base_pinyin` VALUES ('sen', '13907');
INSERT INTO `t_base_pinyin` VALUES ('se', '13910');
INSERT INTO `t_base_pinyin` VALUES ('sao', '13914');
INSERT INTO `t_base_pinyin` VALUES ('sang', '13917');
INSERT INTO `t_base_pinyin` VALUES ('san', '14083');
INSERT INTO `t_base_pinyin` VALUES ('sai', '14087');
INSERT INTO `t_base_pinyin` VALUES ('sa', '14090');
INSERT INTO `t_base_pinyin` VALUES ('ruo', '14092');
INSERT INTO `t_base_pinyin` VALUES ('run', '14094');
INSERT INTO `t_base_pinyin` VALUES ('rui', '14097');
INSERT INTO `t_base_pinyin` VALUES ('ruan', '14099');
INSERT INTO `t_base_pinyin` VALUES ('ru', '14109');
INSERT INTO `t_base_pinyin` VALUES ('rou', '14112');
INSERT INTO `t_base_pinyin` VALUES ('rong', '14122');
INSERT INTO `t_base_pinyin` VALUES ('ri', '14123');
INSERT INTO `t_base_pinyin` VALUES ('reng', '14125');
INSERT INTO `t_base_pinyin` VALUES ('ren', '14135');
INSERT INTO `t_base_pinyin` VALUES ('re', '14137');
INSERT INTO `t_base_pinyin` VALUES ('rao', '14140');
INSERT INTO `t_base_pinyin` VALUES ('rang', '14145');
INSERT INTO `t_base_pinyin` VALUES ('ran', '14149');
INSERT INTO `t_base_pinyin` VALUES ('qun', '14151');
INSERT INTO `t_base_pinyin` VALUES ('que', '14159');
INSERT INTO `t_base_pinyin` VALUES ('quan', '14170');
INSERT INTO `t_base_pinyin` VALUES ('qu', '14345');
INSERT INTO `t_base_pinyin` VALUES ('qiu', '14353');
INSERT INTO `t_base_pinyin` VALUES ('qiong', '14355');
INSERT INTO `t_base_pinyin` VALUES ('qing', '14368');
INSERT INTO `t_base_pinyin` VALUES ('qin', '14379');
INSERT INTO `t_base_pinyin` VALUES ('qie', '14384');
INSERT INTO `t_base_pinyin` VALUES ('qiao', '14399');
INSERT INTO `t_base_pinyin` VALUES ('qiang', '14407');
INSERT INTO `t_base_pinyin` VALUES ('qian', '14429');
INSERT INTO `t_base_pinyin` VALUES ('qia', '14594');
INSERT INTO `t_base_pinyin` VALUES ('qi', '14630');
INSERT INTO `t_base_pinyin` VALUES ('pu', '14645');
INSERT INTO `t_base_pinyin` VALUES ('po', '14654');
INSERT INTO `t_base_pinyin` VALUES ('ping', '14663');
INSERT INTO `t_base_pinyin` VALUES ('pin', '14668');
INSERT INTO `t_base_pinyin` VALUES ('pie', '14670');
INSERT INTO `t_base_pinyin` VALUES ('piao', '14674');
INSERT INTO `t_base_pinyin` VALUES ('pian', '14678');
INSERT INTO `t_base_pinyin` VALUES ('pi', '14857');
INSERT INTO `t_base_pinyin` VALUES ('peng', '14871');
INSERT INTO `t_base_pinyin` VALUES ('pen', '14873');
INSERT INTO `t_base_pinyin` VALUES ('pei', '14882');
INSERT INTO `t_base_pinyin` VALUES ('pao', '14889');
INSERT INTO `t_base_pinyin` VALUES ('pang', '14894');
INSERT INTO `t_base_pinyin` VALUES ('pan', '14902');
INSERT INTO `t_base_pinyin` VALUES ('pai', '14908');
INSERT INTO `t_base_pinyin` VALUES ('pa', '14914');
INSERT INTO `t_base_pinyin` VALUES ('ou', '14921');
INSERT INTO `t_base_pinyin` VALUES ('o', '14922');
INSERT INTO `t_base_pinyin` VALUES ('nuo', '14926');
INSERT INTO `t_base_pinyin` VALUES ('nue', '14928');
INSERT INTO `t_base_pinyin` VALUES ('nuan', '14929');
INSERT INTO `t_base_pinyin` VALUES ('nv', '14930');
INSERT INTO `t_base_pinyin` VALUES ('nu', '14933');
INSERT INTO `t_base_pinyin` VALUES ('nong', '14937');
INSERT INTO `t_base_pinyin` VALUES ('niu', '14941');
INSERT INTO `t_base_pinyin` VALUES ('ning', '15109');
INSERT INTO `t_base_pinyin` VALUES ('nin', '15110');
INSERT INTO `t_base_pinyin` VALUES ('nie', '15117');
INSERT INTO `t_base_pinyin` VALUES ('niao', '15119');
INSERT INTO `t_base_pinyin` VALUES ('niang', '15121');
INSERT INTO `t_base_pinyin` VALUES ('nian', '15128');
INSERT INTO `t_base_pinyin` VALUES ('ni', '15139');
INSERT INTO `t_base_pinyin` VALUES ('neng', '15140');
INSERT INTO `t_base_pinyin` VALUES ('nen', '15141');
INSERT INTO `t_base_pinyin` VALUES ('nei', '15143');
INSERT INTO `t_base_pinyin` VALUES ('ne', '15144');
INSERT INTO `t_base_pinyin` VALUES ('nao', '15149');
INSERT INTO `t_base_pinyin` VALUES ('nang', '15150');
INSERT INTO `t_base_pinyin` VALUES ('nan', '15153');
INSERT INTO `t_base_pinyin` VALUES ('nai', '15158');
INSERT INTO `t_base_pinyin` VALUES ('na', '15165');
INSERT INTO `t_base_pinyin` VALUES ('mu', '15180');
INSERT INTO `t_base_pinyin` VALUES ('mou', '15183');
INSERT INTO `t_base_pinyin` VALUES ('mo', '15362');
INSERT INTO `t_base_pinyin` VALUES ('miu', '15363');
INSERT INTO `t_base_pinyin` VALUES ('ming', '15369');
INSERT INTO `t_base_pinyin` VALUES ('min', '15375');
INSERT INTO `t_base_pinyin` VALUES ('mie', '15377');
INSERT INTO `t_base_pinyin` VALUES ('miao', '15385');
INSERT INTO `t_base_pinyin` VALUES ('mian', '15394');
INSERT INTO `t_base_pinyin` VALUES ('mi', '15408');
INSERT INTO `t_base_pinyin` VALUES ('meng', '15416');
INSERT INTO `t_base_pinyin` VALUES ('men', '15419');
INSERT INTO `t_base_pinyin` VALUES ('mei', '15435');
INSERT INTO `t_base_pinyin` VALUES ('me', '15436');
INSERT INTO `t_base_pinyin` VALUES ('mao', '15448');
INSERT INTO `t_base_pinyin` VALUES ('mang', '15454');
INSERT INTO `t_base_pinyin` VALUES ('man', '15625');
INSERT INTO `t_base_pinyin` VALUES ('mai', '15631');
INSERT INTO `t_base_pinyin` VALUES ('ma', '15640');
INSERT INTO `t_base_pinyin` VALUES ('luo', '15652');
INSERT INTO `t_base_pinyin` VALUES ('lun', '15659');
INSERT INTO `t_base_pinyin` VALUES ('lue', '15661');
INSERT INTO `t_base_pinyin` VALUES ('luan', '15667');
INSERT INTO `t_base_pinyin` VALUES ('lv', '15681');
INSERT INTO `t_base_pinyin` VALUES ('lu', '15701');
INSERT INTO `t_base_pinyin` VALUES ('lou', '15707');
INSERT INTO `t_base_pinyin` VALUES ('long', '15878');
INSERT INTO `t_base_pinyin` VALUES ('liu', '15889');
INSERT INTO `t_base_pinyin` VALUES ('ling', '15903');
INSERT INTO `t_base_pinyin` VALUES ('lin', '15915');
INSERT INTO `t_base_pinyin` VALUES ('lie', '15920');
INSERT INTO `t_base_pinyin` VALUES ('liao', '15933');
INSERT INTO `t_base_pinyin` VALUES ('liang', '15944');
INSERT INTO `t_base_pinyin` VALUES ('lian', '15958');
INSERT INTO `t_base_pinyin` VALUES ('lia', '15959');
INSERT INTO `t_base_pinyin` VALUES ('li', '16155');
INSERT INTO `t_base_pinyin` VALUES ('leng', '16158');
INSERT INTO `t_base_pinyin` VALUES ('lei', '16169');
INSERT INTO `t_base_pinyin` VALUES ('le', '16171');
INSERT INTO `t_base_pinyin` VALUES ('lao', '16180');
INSERT INTO `t_base_pinyin` VALUES ('lang', '16187');
INSERT INTO `t_base_pinyin` VALUES ('lan', '16202');
INSERT INTO `t_base_pinyin` VALUES ('lai', '16205');
INSERT INTO `t_base_pinyin` VALUES ('la', '16212');
INSERT INTO `t_base_pinyin` VALUES ('kuo', '16216');
INSERT INTO `t_base_pinyin` VALUES ('kun', '16220');
INSERT INTO `t_base_pinyin` VALUES ('kui', '16393');
INSERT INTO `t_base_pinyin` VALUES ('kuang', '16401');
INSERT INTO `t_base_pinyin` VALUES ('kuan', '16403');
INSERT INTO `t_base_pinyin` VALUES ('kuai', '16407');
INSERT INTO `t_base_pinyin` VALUES ('kua', '16412');
INSERT INTO `t_base_pinyin` VALUES ('ku', '16419');
INSERT INTO `t_base_pinyin` VALUES ('kou', '16423');
INSERT INTO `t_base_pinyin` VALUES ('kong', '16427');
INSERT INTO `t_base_pinyin` VALUES ('keng', '16429');
INSERT INTO `t_base_pinyin` VALUES ('ken', '16433');
INSERT INTO `t_base_pinyin` VALUES ('ke', '16448');
INSERT INTO `t_base_pinyin` VALUES ('kao', '16452');
INSERT INTO `t_base_pinyin` VALUES ('kang', '16459');
INSERT INTO `t_base_pinyin` VALUES ('kan', '16465');
INSERT INTO `t_base_pinyin` VALUES ('kai', '16470');
INSERT INTO `t_base_pinyin` VALUES ('ka', '16474');
INSERT INTO `t_base_pinyin` VALUES ('jun', '16647');
INSERT INTO `t_base_pinyin` VALUES ('jue', '16657');
INSERT INTO `t_base_pinyin` VALUES ('juan', '16664');
INSERT INTO `t_base_pinyin` VALUES ('ju', '16689');
INSERT INTO `t_base_pinyin` VALUES ('jiu', '16706');
INSERT INTO `t_base_pinyin` VALUES ('jiong', '16708');
INSERT INTO `t_base_pinyin` VALUES ('jing', '16733');
INSERT INTO `t_base_pinyin` VALUES ('jin', '16915');
INSERT INTO `t_base_pinyin` VALUES ('jie', '16942');
INSERT INTO `t_base_pinyin` VALUES ('jiao', '16970');
INSERT INTO `t_base_pinyin` VALUES ('jiang', '16983');
INSERT INTO `t_base_pinyin` VALUES ('jian', '17185');
INSERT INTO `t_base_pinyin` VALUES ('jia', '17202');
INSERT INTO `t_base_pinyin` VALUES ('ji', '17417');
INSERT INTO `t_base_pinyin` VALUES ('huo', '17427');
INSERT INTO `t_base_pinyin` VALUES ('hun', '17433');
INSERT INTO `t_base_pinyin` VALUES ('hui', '17454');
INSERT INTO `t_base_pinyin` VALUES ('huang', '17468');
INSERT INTO `t_base_pinyin` VALUES ('huan', '17482');
INSERT INTO `t_base_pinyin` VALUES ('huai', '17487');
INSERT INTO `t_base_pinyin` VALUES ('hua', '17496');
INSERT INTO `t_base_pinyin` VALUES ('hu', '17676');
INSERT INTO `t_base_pinyin` VALUES ('hou', '17683');
INSERT INTO `t_base_pinyin` VALUES ('hong', '17692');
INSERT INTO `t_base_pinyin` VALUES ('heng', '17697');
INSERT INTO `t_base_pinyin` VALUES ('hen', '17701');
INSERT INTO `t_base_pinyin` VALUES ('hei', '17703');
INSERT INTO `t_base_pinyin` VALUES ('he', '17721');
INSERT INTO `t_base_pinyin` VALUES ('hao', '17730');
INSERT INTO `t_base_pinyin` VALUES ('hang', '17733');
INSERT INTO `t_base_pinyin` VALUES ('han', '17752');
INSERT INTO `t_base_pinyin` VALUES ('hai', '17759');
INSERT INTO `t_base_pinyin` VALUES ('ha', '17922');
INSERT INTO `t_base_pinyin` VALUES ('guo', '17928');
INSERT INTO `t_base_pinyin` VALUES ('gun', '17931');
INSERT INTO `t_base_pinyin` VALUES ('gui', '17947');
INSERT INTO `t_base_pinyin` VALUES ('guang', '17950');
INSERT INTO `t_base_pinyin` VALUES ('guan', '17961');
INSERT INTO `t_base_pinyin` VALUES ('guai', '17964');
INSERT INTO `t_base_pinyin` VALUES ('gua', '17970');
INSERT INTO `t_base_pinyin` VALUES ('gu', '17988');
INSERT INTO `t_base_pinyin` VALUES ('gou', '17997');
INSERT INTO `t_base_pinyin` VALUES ('gong', '18012');
INSERT INTO `t_base_pinyin` VALUES ('geng', '18181');
INSERT INTO `t_base_pinyin` VALUES ('gen', '18183');
INSERT INTO `t_base_pinyin` VALUES ('gei', '18184');
INSERT INTO `t_base_pinyin` VALUES ('ge', '18201');
INSERT INTO `t_base_pinyin` VALUES ('gao', '18211');
INSERT INTO `t_base_pinyin` VALUES ('gang', '18220');
INSERT INTO `t_base_pinyin` VALUES ('gan', '18231');
INSERT INTO `t_base_pinyin` VALUES ('gai', '18237');
INSERT INTO `t_base_pinyin` VALUES ('ga', '18239');
INSERT INTO `t_base_pinyin` VALUES ('fu', '18446');
INSERT INTO `t_base_pinyin` VALUES ('fou', '18447');
INSERT INTO `t_base_pinyin` VALUES ('fo', '18448');
INSERT INTO `t_base_pinyin` VALUES ('feng', '18463');
INSERT INTO `t_base_pinyin` VALUES ('fen', '18478');
INSERT INTO `t_base_pinyin` VALUES ('fei', '18490');
INSERT INTO `t_base_pinyin` VALUES ('fang', '18501');
INSERT INTO `t_base_pinyin` VALUES ('fan', '18518');
INSERT INTO `t_base_pinyin` VALUES ('fa', '18526');
INSERT INTO `t_base_pinyin` VALUES ('er', '18696');
INSERT INTO `t_base_pinyin` VALUES ('en', '18697');
INSERT INTO `t_base_pinyin` VALUES ('e', '18710');
INSERT INTO `t_base_pinyin` VALUES ('duo', '18722');
INSERT INTO `t_base_pinyin` VALUES ('dun', '18731');
INSERT INTO `t_base_pinyin` VALUES ('dui', '18735');
INSERT INTO `t_base_pinyin` VALUES ('duan', '18741');
INSERT INTO `t_base_pinyin` VALUES ('du', '18756');
INSERT INTO `t_base_pinyin` VALUES ('dou', '18763');
INSERT INTO `t_base_pinyin` VALUES ('dong', '18773');
INSERT INTO `t_base_pinyin` VALUES ('diu', '18774');
INSERT INTO `t_base_pinyin` VALUES ('ding', '18783');
INSERT INTO `t_base_pinyin` VALUES ('die', '18952');
INSERT INTO `t_base_pinyin` VALUES ('diao', '18961');
INSERT INTO `t_base_pinyin` VALUES ('dian', '18977');
INSERT INTO `t_base_pinyin` VALUES ('di', '18996');
INSERT INTO `t_base_pinyin` VALUES ('deng', '19003');
INSERT INTO `t_base_pinyin` VALUES ('de', '19006');
INSERT INTO `t_base_pinyin` VALUES ('dao', '19018');
INSERT INTO `t_base_pinyin` VALUES ('dang', '19023');
INSERT INTO `t_base_pinyin` VALUES ('dan', '19038');
INSERT INTO `t_base_pinyin` VALUES ('dai', '19212');
INSERT INTO `t_base_pinyin` VALUES ('da', '19218');
INSERT INTO `t_base_pinyin` VALUES ('cuo', '19224');
INSERT INTO `t_base_pinyin` VALUES ('cun', '19227');
INSERT INTO `t_base_pinyin` VALUES ('cui', '19235');
INSERT INTO `t_base_pinyin` VALUES ('cuan', '19238');
INSERT INTO `t_base_pinyin` VALUES ('cu', '19242');
INSERT INTO `t_base_pinyin` VALUES ('cou', '19243');
INSERT INTO `t_base_pinyin` VALUES ('cong', '19249');
INSERT INTO `t_base_pinyin` VALUES ('ci', '19261');
INSERT INTO `t_base_pinyin` VALUES ('chuo', '19263');
INSERT INTO `t_base_pinyin` VALUES ('chun', '19270');
INSERT INTO `t_base_pinyin` VALUES ('chui', '19275');
INSERT INTO `t_base_pinyin` VALUES ('chuang', '19281');
INSERT INTO `t_base_pinyin` VALUES ('chuan', '19288');
INSERT INTO `t_base_pinyin` VALUES ('chuai', '19289');
INSERT INTO `t_base_pinyin` VALUES ('chu', '19467');
INSERT INTO `t_base_pinyin` VALUES ('chou', '19479');
INSERT INTO `t_base_pinyin` VALUES ('chong', '19484');
INSERT INTO `t_base_pinyin` VALUES ('chi', '19500');
INSERT INTO `t_base_pinyin` VALUES ('cheng', '19515');
INSERT INTO `t_base_pinyin` VALUES ('chen', '19525');
INSERT INTO `t_base_pinyin` VALUES ('che', '19531');
INSERT INTO `t_base_pinyin` VALUES ('chao', '19540');
INSERT INTO `t_base_pinyin` VALUES ('chang', '19715');
INSERT INTO `t_base_pinyin` VALUES ('chan', '19725');
INSERT INTO `t_base_pinyin` VALUES ('chai', '19728');
INSERT INTO `t_base_pinyin` VALUES ('cha', '19739');
INSERT INTO `t_base_pinyin` VALUES ('ceng', '19741');
INSERT INTO `t_base_pinyin` VALUES ('ce', '19746');
INSERT INTO `t_base_pinyin` VALUES ('cao', '19751');
INSERT INTO `t_base_pinyin` VALUES ('cang', '19756');
INSERT INTO `t_base_pinyin` VALUES ('can', '19763');
INSERT INTO `t_base_pinyin` VALUES ('cai', '19774');
INSERT INTO `t_base_pinyin` VALUES ('ca', '19775');
INSERT INTO `t_base_pinyin` VALUES ('bu', '19784');
INSERT INTO `t_base_pinyin` VALUES ('bo', '19805');
INSERT INTO `t_base_pinyin` VALUES ('bing', '19976');
INSERT INTO `t_base_pinyin` VALUES ('bin', '19982');
INSERT INTO `t_base_pinyin` VALUES ('bie', '19986');
INSERT INTO `t_base_pinyin` VALUES ('biao', '19990');
INSERT INTO `t_base_pinyin` VALUES ('bian', '20002');
INSERT INTO `t_base_pinyin` VALUES ('bi', '20026');
INSERT INTO `t_base_pinyin` VALUES ('beng', '20032');
INSERT INTO `t_base_pinyin` VALUES ('ben', '20036');
INSERT INTO `t_base_pinyin` VALUES ('bei', '20051');
INSERT INTO `t_base_pinyin` VALUES ('bao', '20230');
INSERT INTO `t_base_pinyin` VALUES ('bang', '20242');
INSERT INTO `t_base_pinyin` VALUES ('ban', '20257');
INSERT INTO `t_base_pinyin` VALUES ('bai', '20265');
INSERT INTO `t_base_pinyin` VALUES ('ba', '20283');
INSERT INTO `t_base_pinyin` VALUES ('ao', '20292');
INSERT INTO `t_base_pinyin` VALUES ('ang', '20295');
INSERT INTO `t_base_pinyin` VALUES ('an', '20304');
INSERT INTO `t_base_pinyin` VALUES ('ai', '20317');
INSERT INTO `t_base_pinyin` VALUES ('a', '20319');

-- ----------------------------
-- Table structure for `zybjx_detail`
-- ----------------------------
DROP TABLE IF EXISTS `zybjx_detail`;
CREATE TABLE `zybjx_detail` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `part` varchar(50) DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  `check_organization` varchar(50) DEFAULT NULL,
  `zyb_name` varchar(50) DEFAULT NULL,
  `zyb_result` varchar(200) DEFAULT NULL,
  `allow_num` varchar(50) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `is_del` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zybjx_detail
-- ----------------------------
INSERT INTO `zybjx_detail` VALUES ('1', '口腔a', '2018-07-27 00:00:00', '长沙检测中心a', '口腔发炎a', '无传染a', '50pha', '无大碍,可正常接触aasdasd', '1');
INSERT INTO `zybjx_detail` VALUES ('2', '手臂', '2018-07-10 00:00:00', '新东方', '大码', '和好阿斯顿', '50', '啊实打实的阿萨打算大苏打是', '1');
INSERT INTO `zybjx_detail` VALUES ('3', '口腔aaasd', '2018-07-04 00:00:00', '新东方asdasd', '口腔发炎aasd', 'asda', '12', '123asdas', '0');
INSERT INTO `zybjx_detail` VALUES ('4', '口腔a', '2018-06-27 00:00:00', '长沙检测中心a', '口腔发炎a', '无传染a', '50pha', 'asdasd', '0');
INSERT INTO `zybjx_detail` VALUES ('5', null, null, null, null, null, null, null, '0');
INSERT INTO `zybjx_detail` VALUES ('6', null, null, null, null, null, null, null, '0');
INSERT INTO `zybjx_detail` VALUES ('7', null, null, null, null, null, null, null, '0');
INSERT INTO `zybjx_detail` VALUES ('8', null, null, null, null, null, null, null, '0');
INSERT INTO `zybjx_detail` VALUES ('9', null, null, null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for `zydisease_detail`
-- ----------------------------
DROP TABLE IF EXISTS `zydisease_detail`;
CREATE TABLE `zydisease_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upload_url` varchar(100) DEFAULT NULL COMMENT '名称',
  `upload_time` datetime DEFAULT NULL COMMENT '上传时间',
  `upload_emp` int(12) DEFAULT NULL COMMENT '上传人id',
  `is_del` int(1) DEFAULT NULL COMMENT '是否删除 0:未删除 1:已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zydisease_detail
-- ----------------------------
INSERT INTO `zydisease_detail` VALUES ('7', '\\imgs_msgy\\files\\upload\\pptx\\file(2018062510201309510).pptx', '2018-07-04 17:43:08', '1', '1');
INSERT INTO `zydisease_detail` VALUES ('8', '\\imgs_msgy\\files\\upload\\docx\\file(201806251020255030).docx', '2018-07-04 17:43:02', '1', '1');
INSERT INTO `zydisease_detail` VALUES ('10', '\\imgs_msgy\\files\\upload\\docx\\啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx(201806251021541505).docx', '2018-07-04 17:43:00', '1', '1');
INSERT INTO `zydisease_detail` VALUES ('11', '\\imgs_msgy\\files\\upload\\docx\\啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx(201806251024426707).docx', '2018-06-25 15:59:35', '1', '1');
INSERT INTO `zydisease_detail` VALUES ('12', '\\imgs_msgy\\files\\upload\\docx\\(201806251025451834)啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx', '2018-06-25 15:59:33', '1', '1');
INSERT INTO `zydisease_detail` VALUES ('13', '\\imgs_msgy\\files\\upload\\docx\\(201806251111541099)啊实打实大苏打似的啊真的撒旦阿斯顿阿三.docx', '2018-06-25 15:59:31', '1', '1');
INSERT INTO `zydisease_detail` VALUES ('14', '\\imgs_msgy\\files\\upload\\pptx\\(201806250322416448)asd.pptx', '2018-06-25 15:24:11', '1', '1');
INSERT INTO `zydisease_detail` VALUES ('15', '\\imgs_msgy\\files\\upload\\pdf\\(201806250414401969)魏晓民高管资料终稿.pdf', '2018-07-04 17:42:58', '1', '1');
INSERT INTO `zydisease_detail` VALUES ('16', '\\imgs_msgy\\files\\upload\\pptx\\(201806260843421343)asd.pptx', '2018-07-04 17:42:56', '1', '1');
INSERT INTO `zydisease_detail` VALUES ('17', '\\imgs_msgy\\files\\upload\\pptx\\(201807040541455063)asd.pptx', '2018-07-04 17:42:49', '1', '0');
INSERT INTO `zydisease_detail` VALUES ('18', '\\imgs_msgy\\files\\upload\\pdf\\(201807040542112801)魏晓民高管资料终稿.pdf', '2018-07-04 17:43:15', '1', '0');
INSERT INTO `zydisease_detail` VALUES ('19', '\\imgs_msgy\\files\\upload\\pdf\\(201807050900161479)魏晓民高管资料终稿.pdf', '2018-07-05 09:01:21', '1', '0');

-- ----------------------------
-- Function structure for `getPY`
-- ----------------------------
DROP FUNCTION IF EXISTS `getPY`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `getPY`(in_string VARCHAR(255)) RETURNS varchar(255) CHARSET utf8
BEGIN
	DECLARE
		tmp_str VARCHAR (255) CHARSET utf8 DEFAULT '' ; DECLARE
			str_len SMALLINT DEFAULT 0 ; DECLARE
				tmp_char VARCHAR (10) CHARSET utf8 DEFAULT '' ; DECLARE
					tmp_len SMALLINT DEFAULT 0 ; DECLARE
						tmp_rs VARCHAR (255) CHARSET utf8 DEFAULT '' ; DECLARE
							tmp_cc VARCHAR (10) CHARSET utf8 DEFAULT '' ;
						SET tmp_str = in_string ;
						SET str_len = LENGTH(tmp_str) ;
						WHILE str_len > 0 DO

						SET tmp_char = LEFT (tmp_str, 1) ;
						SET tmp_cc = tmp_char ;
						IF LENGTH(tmp_char) > 1 THEN
							SELECT
								ELT(
									INTERVAL (
										CONV(
											HEX(CONVERT(tmp_char USING gbk)),
											16,
											10
										),
										0xB0A1,
										0xB0C5,
										0xB2C1,
										0xB4EE,
										0xB6EA,
										0xB7A2,
										0xB8C1,
										0xB9FE,
										0xBBF7,
										0xBFA6,
										0xC0AC,
										0xC2E8,
										0xC4C3,
										0xC5B6,
										0xC5BE,
										0xC6DA,
										0xC8BB,
										0xC8F6,
										0xCBFA,
										0xCDDA,
										0xCEF4,
										0xD1B9,
										0xD4D1
									),
									'A',
									'B',
									'C',
									'D',
									'E',
									'F',
									'G',
									'H',
									'J',
									'K',
									'L',
									'M',
									'N',
									'O',
									'P',
									'Q',
									'R',
									'S',
									'T',
									'W',
									'X',
									'Y',
									'Z'
								) INTO tmp_cc ;
							END
							IF ;
							SET tmp_rs = CONCAT(tmp_rs, tmp_cc) ;
							SET tmp_len = CHAR_LENGTH(tmp_char) + 1 ;
							SET tmp_str = SUBSTRING(tmp_str, tmp_len) ;
							SET str_len = LENGTH(tmp_str) ;
							END
							WHILE ; RETURN tmp_rs ; END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `to_pinyin`
-- ----------------------------
DROP FUNCTION IF EXISTS `to_pinyin`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `to_pinyin`(NAME VARCHAR(255) CHARSET gbk) RETURNS varchar(255) CHARSET gbk
BEGIN
	DECLARE
		mycode INT ; DECLARE
			tmp_lcode VARCHAR (2) CHARSET gbk ; DECLARE
				lcode INT ; DECLARE
					tmp_rcode VARCHAR (2) CHARSET gbk ; DECLARE
						rcode INT ; DECLARE
							mypy VARCHAR (255) CHARSET gbk DEFAULT '' ; DECLARE
								lp INT ;
							SET mycode = 0 ;
							SET lp = 1 ;
							SET NAME = HEX(NAME) ;
							WHILE lp < LENGTH(NAME) DO

							SET tmp_lcode = SUBSTRING(NAME, lp, 2) ;
							SET lcode = CAST(
								ASCII(UNHEX(tmp_lcode)) AS UNSIGNED
							) ;
							SET tmp_rcode = SUBSTRING(NAME, lp + 2, 2) ;
							SET rcode = CAST(
								ASCII(UNHEX(tmp_rcode)) AS UNSIGNED
							) ;
							IF lcode > 128 THEN

							SET mycode = 65536 - lcode * 256 - rcode ; SELECT
								CONCAT(mypy, pin_yin_) INTO mypy
							FROM
								t_base_pinyin
							WHERE
								CODE_ >= ABS(mycode)
							ORDER BY
								CODE_ ASC
							LIMIT 1 ;
							SET lp = lp + 4 ;
							ELSE

							SET mypy = CONCAT(
								mypy,
								CHAR (
									CAST(
										ASCII(
											UNHEX(SUBSTRING(NAME, lp, 2))
										) AS UNSIGNED
									)
								)
							) ;
							SET lp = lp + 2 ;
							END
							IF ;
							END
							WHILE ; RETURN LOWER(mypy) ;
							END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `insert_employee`;
DELIMITER ;;
CREATE TRIGGER `insert_employee` BEFORE INSERT ON `employee` FOR EACH ROW BEGIN

SET new.py = getPY (new. NAME) ;
SET new.quanpin = to_pinyin (new. NAME) ;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `update_employee`;
DELIMITER ;;
CREATE TRIGGER `update_employee` BEFORE UPDATE ON `employee` FOR EACH ROW BEGIN

SET new.py = getPY (new. NAME) ;
SET new.quanpin = to_pinyin (new. NAME) ;
END
;;
DELIMITER ;
