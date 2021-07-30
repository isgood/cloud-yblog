/*
 Navicat Premium Data Transfer

 Source Server         : demo-01
 Source Server Type    : MySQL
 Source Server Version : 50711
 Source Host           : localhost:3306
 Source Schema         : cloud_yblog_user

 Target Server Type    : MySQL
 Target Server Version : 50711
 File Encoding         : 65001

 Date: 30/07/2021 18:19:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_authority
-- ----------------------------
DROP TABLE IF EXISTS `t_authority`;
CREATE TABLE `t_authority`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authority` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_authority
-- ----------------------------
INSERT INTO `t_authority` VALUES (1, 'ROLE_admin');
INSERT INTO `t_authority` VALUES (2, 'ROLE_common');

-- ----------------------------
-- Table structure for t_blacklist
-- ----------------------------
DROP TABLE IF EXISTS `t_blacklist`;
CREATE TABLE `t_blacklist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `black_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '黑名单IP',
  `black_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '黑名单IP对应的地址',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `black_ip`(`black_ip`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_blacklist
-- ----------------------------
INSERT INTO `t_blacklist` VALUES (1, '222.111.221.111', '韩国');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` date NULL DEFAULT NULL,
  `valid` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE COMMENT '用户名唯一'
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_latvian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin', '$2a$10$dtyRbcyzIySz7qk19LQw8ubNRgIP6g.zLtbFPozM8zEKE/S7ANSWG', '1550324080@qq.com', '2018-10-01', 1);
INSERT INTO `t_user` VALUES (2, '李四', '$2a$10$5ooQI8dir8jv0/gCa1Six.GpzAdIPf6pMqdminZ/3ijYzivCyPlfK', '1768653040@qq.com', '2018-11-13', 0);
INSERT INTO `t_user` VALUES (3, '东方不败', '$2a$10$5ooQI8dir8jv0/gCa1Six.GpzAdIPf6pMqdminZ/3ijYzivCyPlfK', '13718391550@163.com', '2018-12-18', 1);
INSERT INTO `t_user` VALUES (4, 'tom', '$2a$10$5ooQI8dir8jv0/gCa1Six.GpzAdIPf6pMqdminZ/3ijYzivCyPlfK', 'asexeees@sohu.com', '2018-12-03', 1);
INSERT INTO `t_user` VALUES (5, 'deep', '$2a$10$CHP4OE/6rLmopT.UxXjuEuVUFkiA2z1VtD2jiOkctWoCEUZHElWb6', '1550324080@qq.com', '2021-06-20', 1);
INSERT INTO `t_user` VALUES (7, '8310894', '$2a$10$wKSPz2RMPa39nSBeX0XbXe/A46psZeb3Y.sWyAHxCjm69yJMJavkW', NULL, '2021-06-20', 1);
INSERT INTO `t_user` VALUES (15, '981305', '$2a$10$p33JAVuqvrlzq4xpHd/r0Oz6V8LmB/dMaJTtTgiYwmcQq8HATocHC', '1550324080@qq.com', '2021-07-05', 1);
INSERT INTO `t_user` VALUES (16, '71135975', '$2a$10$X9iK2x0szPHq8ItkpcRI3e4huZmjV/CKETufTkEVr6ijssjBq98ma', NULL, '2021-07-14', 1);

-- ----------------------------
-- Table structure for t_user_authority
-- ----------------------------
DROP TABLE IF EXISTS `t_user_authority`;
CREATE TABLE `t_user_authority`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '关联的用户id',
  `authority_id` int(11) NOT NULL COMMENT '关联的权限id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_authority
-- ----------------------------
INSERT INTO `t_user_authority` VALUES (1, 1, 1);
INSERT INTO `t_user_authority` VALUES (2, 2, 2);
INSERT INTO `t_user_authority` VALUES (3, 3, 2);
INSERT INTO `t_user_authority` VALUES (4, 4, 2);
INSERT INTO `t_user_authority` VALUES (5, 5, 2);
INSERT INTO `t_user_authority` VALUES (7, 7, 1);
INSERT INTO `t_user_authority` VALUES (15, 15, 2);
INSERT INTO `t_user_authority` VALUES (16, 16, 2);

-- ----------------------------
-- Table structure for t_user_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_user_detail`;
CREATE TABLE `t_user_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `blogName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '博客名称',
  `job` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '从事工作',
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户详情',
  `github` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'github',
  `weibo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'weibo',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像地址',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  UNIQUE INDEX `blogName`(`blogName`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_detail
-- ----------------------------
INSERT INTO `t_user_detail` VALUES (1, 'admin', '高级开发', 'Java高级开发', '个人博客小站，主要发表关于Java、Spring、Docker、Linux等相关文章，精通各种框架源码，对多线程高并发有研究，会JVM调优', 'https://github.com/', 'https://weibo.com/?category=10011', '/user_img/641140e1b5d741a584a3b7055d6187cb.jpg');
INSERT INTO `t_user_detail` VALUES (2, '李四', '啥也不会', 'Java初级开发', '啥也不会', 'https://github.com/', 'https://weibo.com/?category=7', NULL);
INSERT INTO `t_user_detail` VALUES (3, '东方不败', '菜鸟少年', 'Java中级开发', '会一点点，只会一点点', 'https://github.com/', 'https://weibo.com/?category=12', NULL);
INSERT INTO `t_user_detail` VALUES (4, 'tom', '马化腾11', 'Java架构师', '我全都会，精通linux内核，各种框架底层源码', 'https://github.com/', 'https://weibo.com/?category=10018', '');
INSERT INTO `t_user_detail` VALUES (6, '8310894', 'yblog', '编程', '暂无详情', 'https://github.com/', 'https://weibo.com/', '/user_img/0323477285af430a9399e2bca7c616a2.jpg');
INSERT INTO `t_user_detail` VALUES (16, '981305', '981305', '编程', '暂无详情', 'https://github.com/', 'https://weibo.com/', NULL);
INSERT INTO `t_user_detail` VALUES (17, '71135975', '71135975', '编程', '暂无详情', 'https://github.com/', 'https://weibo.com/', NULL);

SET FOREIGN_KEY_CHECKS = 1;
