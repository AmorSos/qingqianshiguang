/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80028 (8.0.28)
 Source Host           : localhost:3306
 Source Schema         : wallts

 Target Server Type    : MySQL
 Target Server Version : 80028 (8.0.28)
 File Encoding         : 65001

 Date: 20/12/2023 20:30:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `wallId` int NOT NULL COMMENT '墙留言ID',
  `userId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论者ID',
  `imgurl` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像路径',
  `comment` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论内容',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `moment` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (5, 20, '::1', '3', '我是小黑子', '123', '2023-12-19T14:12:15.376Z');
INSERT INTO `comments` VALUES (6, 20, '::1', '0', '不 我不是', '456', '2023-12-19T14:37:48.153Z');
INSERT INTO `comments` VALUES (7, 20, '::1', '6', '123', '匿名', '2023-12-19T14:42:53.093Z');
INSERT INTO `comments` VALUES (8, 20, '::1', '1', '史蒂夫', '匿名', '2023-12-19T14:43:20.306Z');
INSERT INTO `comments` VALUES (9, 19, '::1', '10', '你在说什么？？？', '项真', '2023-12-19T14:46:05.068Z');
INSERT INTO `comments` VALUES (10, 22, '::1', '1', '好的', '项真', '2023-12-20T03:37:46.153Z');
INSERT INTO `comments` VALUES (11, 24, '::1', '2', '真好看', '匿名', '2023-12-20T04:07:21.735Z');

-- ----------------------------
-- Table structure for feedbacks
-- ----------------------------
DROP TABLE IF EXISTS `feedbacks`;
CREATE TABLE `feedbacks`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `wallId` int NOT NULL COMMENT '墙留言ID',
  `userId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '反馈者ID',
  `type` int NOT NULL COMMENT '反馈类型0喜欢1举报2撤销',
  `moment` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feedbacks
-- ----------------------------
INSERT INTO `feedbacks` VALUES (1, 1, '::1', 0, '2023-12-19T12:41:01.438Z');
INSERT INTO `feedbacks` VALUES (2, 20, '::1', 0, '2023-12-19T13:54:34.898Z');
INSERT INTO `feedbacks` VALUES (3, 22, '::1', 0, '2023-12-20T04:02:00.802Z');
INSERT INTO `feedbacks` VALUES (4, 21, '::1', 0, '2023-12-20T04:02:02.698Z');
INSERT INTO `feedbacks` VALUES (5, 23, '::1', 0, '2023-12-20T04:06:52.172Z');

-- ----------------------------
-- Table structure for walls
-- ----------------------------
DROP TABLE IF EXISTS `walls`;
CREATE TABLE `walls`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` int NOT NULL COMMENT '类型0信息1图片2',
  `message` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '留言',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `userId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者ID',
  `moment` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  `label` int NOT NULL COMMENT '标签',
  `color` int NULL DEFAULT NULL COMMENT '颜色',
  `imgurl` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of walls
-- ----------------------------
INSERT INTO `walls` VALUES (1, 0, '你是谁？？？', '项真', '::1', '2023-12-18T16:14:41.948Z', 5, 4, '');
INSERT INTO `walls` VALUES (2, 0, '我是谁', '张力佳', '::1', '2023-12-12T15:06:22.940Z', 1, 3, 'www.baidu.com');
INSERT INTO `walls` VALUES (9, 0, '撒飒飒', '打撒飒飒', '::1', '2023-12-13T11:29:29.215Z', 1, 2, '');
INSERT INTO `walls` VALUES (10, 0, '阿斯顿', '阿三 ', '::1', '2023-12-13T11:35:32.991Z', 7, 1, '');
INSERT INTO `walls` VALUES (12, 0, '12321132213', '12123312132', '::1', '2023-12-18T09:56:17.532Z', 0, 0, '');
INSERT INTO `walls` VALUES (13, 0, '34534撒旦士大夫', '12123312132', '::1', '2023-12-18T09:56:34.040Z', 0, 0, '');
INSERT INTO `walls` VALUES (14, 0, '阿三大苏打倒萨', '234', '::1', '2023-12-18T09:58:19.694Z', 9, 2, '');
INSERT INTO `walls` VALUES (16, 0, '我是新的一条', '毛宇航', '::1', '2023-12-18T16:52:47.463Z', 5, 4, '');
INSERT INTO `walls` VALUES (17, 0, '青浅时光是本人独自开发的，为便于与用户交流的留言平台。\n\n用户将留言便签贴在留言墙上，用户可以自定义便签颜色和内容属性，不仅可以用于交流，也是一场记录', '234', '::1', '2023-12-19T08:19:49.524Z', 9, 3, '');
INSERT INTO `walls` VALUES (18, 0, '载如下内容：\n1、反对宪法所确定的基本原则的；\n2、危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家 统一的；', '士大夫', '::1', '2023-12-19T09:16:32.358Z', 7, 0, '');
INSERT INTO `walls` VALUES (19, 0, '谣言，扰乱社会秩序，破坏社会稳定的；\n7、散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；\n8、侮辱或者诽谤他人，侵害他人合法权益的；\n9、含有法律、行政法规禁止的', '法国风格化法国', '::1', '2023-12-19T09:16:45.295Z', 8, 3, '');
INSERT INTO `walls` VALUES (20, 0, '你是小黑子吗？？？', '蔡徐坤', '::1', '2023-12-19T10:51:56.311Z', 10, 2, '');
INSERT INTO `walls` VALUES (21, 1, '', '匿名', '::1', '2023-12-20T03:19:27.162Z', 0, 5, '/photo/1703042367238.png');
INSERT INTO `walls` VALUES (22, 1, '扫码添加好友', '涂宇星', '::1', '2023-12-20T03:35:13.718Z', 2, 5, '/photo/1703043313807.png');
INSERT INTO `walls` VALUES (23, 1, '', '匿名', '::1', '2023-12-20T04:05:55.831Z', 0, 5, '/photo/1703045155916.jpg');
INSERT INTO `walls` VALUES (24, 1, '美丽的风景', '啊倒萨', '::1', '2023-12-20T04:07:09.632Z', 4, 5, '/photo/1703045229734.jpg');
INSERT INTO `walls` VALUES (25, 1, '123', '士大夫方法', '::1', '2023-12-20T11:24:50.460Z', 5, 5, '/photo/1703071490555.jpg');
INSERT INTO `walls` VALUES (26, 1, '风景', '匿名', '::1', '2023-12-20T11:25:01.683Z', 3, 5, '/photo/1703071501710.jpg');
INSERT INTO `walls` VALUES (27, 0, '撒旦撒', '匿名', '::1', '2023-12-20T12:25:53.261Z', 7, 2, '');

SET FOREIGN_KEY_CHECKS = 1;
