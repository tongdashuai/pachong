/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-04-26 15:39:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for testmodel_weather
-- ----------------------------
DROP TABLE IF EXISTS `testmodel_weather`;
CREATE TABLE `testmodel_weather` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `weather` varchar(70) NOT NULL,
  `temp` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of testmodel_weather
-- ----------------------------
INSERT INTO `testmodel_weather` VALUES ('1', '北京', '25日（今天）', '多云', '8℃');
INSERT INTO `testmodel_weather` VALUES ('2', '北京', '26日（明天）', '晴转多云', '21℃/10℃');
INSERT INTO `testmodel_weather` VALUES ('3', '北京', '27日（后天）', '多云', '18℃/7℃');
INSERT INTO `testmodel_weather` VALUES ('4', '北京', '28日（周日）', '多云', '21℃/9℃');
INSERT INTO `testmodel_weather` VALUES ('5', '北京', '29日（周一）', '多云转小雨', '24℃/13℃');
INSERT INTO `testmodel_weather` VALUES ('6', '北京', '30日（周二）', '多云', '26℃/14℃');
INSERT INTO `testmodel_weather` VALUES ('7', '北京', '1日（周三）', '多云', '24℃/14℃');
INSERT INTO `testmodel_weather` VALUES ('8', '上海', '25日（今天）', '阴', '14℃');
INSERT INTO `testmodel_weather` VALUES ('9', '上海', '26日（明天）', '多云转晴', '18℃/12℃');
INSERT INTO `testmodel_weather` VALUES ('10', '上海', '27日（后天）', '多云', '18℃/14℃');
INSERT INTO `testmodel_weather` VALUES ('11', '上海', '28日（周日）', '小雨转多云', '23℃/17℃');
INSERT INTO `testmodel_weather` VALUES ('12', '上海', '29日（周一）', '中雨转阴', '24℃/17℃');
INSERT INTO `testmodel_weather` VALUES ('13', '上海', '30日（周二）', '阴转小雨', '22℃/17℃');
INSERT INTO `testmodel_weather` VALUES ('14', '上海', '1日（周三）', '小雨转多云', '23℃/17℃');
INSERT INTO `testmodel_weather` VALUES ('15', '深圳', '25日（今天）', '小雨', '25℃');
INSERT INTO `testmodel_weather` VALUES ('16', '深圳', '26日（明天）', '中雨转大雨', '29℃/24℃');
INSERT INTO `testmodel_weather` VALUES ('17', '深圳', '27日（后天）', '大雨转雷阵雨', '27℃/23℃');
INSERT INTO `testmodel_weather` VALUES ('18', '深圳', '28日（周日）', '雷阵雨', '28℃/24℃');
INSERT INTO `testmodel_weather` VALUES ('19', '深圳', '29日（周一）', '雷阵雨', '30℃/25℃');
INSERT INTO `testmodel_weather` VALUES ('20', '深圳', '30日（周二）', '雷阵雨转暴雨', '30℃/23℃');
INSERT INTO `testmodel_weather` VALUES ('21', '深圳', '1日（周三）', '暴雨转阵雨', '27℃/23℃');
INSERT INTO `testmodel_weather` VALUES ('22', '广州', '25日（今天）', '雷阵雨', '24℃');
INSERT INTO `testmodel_weather` VALUES ('23', '广州', '26日（明天）', '中雨转中到大雨', '28℃/24℃');
INSERT INTO `testmodel_weather` VALUES ('24', '广州', '27日（后天）', '中到大雨转雷阵雨', '28℃/24℃');
INSERT INTO `testmodel_weather` VALUES ('25', '广州', '28日（周日）', '雷阵雨', '29℃/25℃');
INSERT INTO `testmodel_weather` VALUES ('26', '广州', '29日（周一）', '雷阵雨转中雨', '30℃/25℃');
INSERT INTO `testmodel_weather` VALUES ('27', '广州', '30日（周二）', '中雨转大到暴雨', '30℃/22℃');
INSERT INTO `testmodel_weather` VALUES ('28', '广州', '1日（周三）', '大到暴雨转多云', '26℃/20℃');
