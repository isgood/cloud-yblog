/*
 Navicat Premium Data Transfer

 Source Server         : demo-01
 Source Server Type    : MySQL
 Source Server Version : 50711
 Source Host           : localhost:3306
 Source Schema         : cloud_yblog_system

 Target Server Type    : MySQL
 Target Server Version : 50711
 File Encoding         : 65001

 Date: 30/07/2021 18:19:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_img
-- ----------------------------
DROP TABLE IF EXISTS `t_img`;
CREATE TABLE `t_img`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `big_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '大图',
  `small_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '缩略图',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_img
-- ----------------------------
INSERT INTO `t_img` VALUES (40, '/big_img/737a8c142adc4ced96da6e74299583cc.jpg', '/small_img/15cbc114f6dc4b989d3572d00d39b98a.jpg');
INSERT INTO `t_img` VALUES (41, '/big_img/d56f5256b92843f79bd8c18d9db42cbc.jpg', '/small_img/fb13f900136d4249b88bb22a261ea073.jpg');
INSERT INTO `t_img` VALUES (42, '/big_img/0626624dfce74d1e82bb809c756d0e94.jpg', '/small_img/09fc4b62bbf44ea2b0109bf1b442a426.jpg');
INSERT INTO `t_img` VALUES (43, '/big_img/2eb18727a9e24f88987fd24c7a1a0530.jpg', '/small_img/f928d7e8be8447a9a843e2cbd90bd4e9.jpg');
INSERT INTO `t_img` VALUES (44, '/big_img/a1ec722d5206473cb23d9e7a7eeea1f1.jpg', '/small_img/7730f5c1b2ae4c4ca945bcbfac423b89.jpg');
INSERT INTO `t_img` VALUES (45, '/big_img/922a534b91bc45fba9a72b3c1f20154e.jpg', '/small_img/c2fc213600384af89debb4686b3bb9e6.jpg');
INSERT INTO `t_img` VALUES (46, '/big_img/006944ba01ff40afa8a690e77d77cfe8.jpg', '/small_img/9201675f0af1425baddd454b8a5a9dfc.jpg');
INSERT INTO `t_img` VALUES (47, '/big_img/97ad47ff95ed4de18ebef5838fdca7d8.jpg', '/small_img/0df93f830ef142e0862db407ebf55dd9.jpg');
INSERT INTO `t_img` VALUES (48, '/big_img/d0a16d4a86994c2c9f0debdc8cc28eb1.jpg', '/small_img/718e6982dd2e476880112f6a529192f3.jpg');
INSERT INTO `t_img` VALUES (49, '/big_img/97c6b63df1a949ce9c4df53307f92ee0.png', '/small_img/90575e68d84c4232b0727c7d255595bb.png');
INSERT INTO `t_img` VALUES (50, '/big_img/06a8784208bf492caa96890341b49150.png', '/small_img/3ad349ea0eb149fbaa3c750f1a036d80.png');
INSERT INTO `t_img` VALUES (51, '/big_img/91a14d49f03e4129b09834cdabd5724f.png', '/small_img/c8f03e4be38f49c38acca26cb0aee02a.png');
INSERT INTO `t_img` VALUES (56, '/big_img/6cb90cc5112447a0837431f0df55eaf6.jpg', '/small_img/1c85bd73c41e432d9d965814cf128a94.jpg');
INSERT INTO `t_img` VALUES (57, '/big_img/0003fc2cfaab4e8aba648da3b03fd11d.jpg', '/small_img/d48ea4a9d0754382b0f14ab3853f3df8.jpg');
INSERT INTO `t_img` VALUES (59, '/big_img/20b583444192422bb2b21086badd7979.png', '/small_img/90b60384fb4d41d5acaaa19ff4cf4cf7.png');

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authority` int(11) NOT NULL COMMENT '权限id',
  `menu` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单JSON',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `authority`(`authority`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES (1, 1, '[{\"id\":1,\"title\":\"工作空间\",\"type\":0,\"icon\":\"layui-icon layui-icon-console\",\"href\":\"\",\"children\":[{\"id\":10,\"title\":\"控制后台\",\"icon\":\"layui-icon layui-icon-console\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"/pear/toconsole\"},{\"id\":14,\"title\":\"百度一下\",\"icon\":\"layui-icon layui-icon-console\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"http://www.baidu.com\"}]},{\"id\":\"component\",\"title\":\"文章管理\",\"icon\":\"layui-icon layui-icon-component\",\"type\":0,\"href\":\"\",\"children\":[{\"id\":203,\"title\":\"发布文章\",\"icon\":\"layui-icon layui-icon-console\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"/pear/topublish\"},{\"id\":205,\"title\":\"文章管理\",\"icon\":\"layui-icon layui-icon-console\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"/pear/toArticleManager\"},{\"id\":206,\"title\":\"我的草稿\",\"icon\":\"layui-icon layui-icon-console\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"/pear/toDraft\"},{\"id\":207,\"title\":\"分类管理\",\"icon\":\"layui-icon layui-icon-console\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"/pear/toCategory\"},{\"id\":208,\"title\":\"标签管理\",\"icon\":\"layui-icon layui-icon-console\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"/pear/toTag\"}]},{\"id\":\"result\",\"title\":\"常用工具\",\"icon\":\"layui-icon layui-icon-auz\",\"type\":0,\"href\":\"\",\"children\":[{\"id\":\"success\",\"title\":\"附件管理\",\"icon\":\"layui-icon layui-icon-face-smile\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"/pear/toFileUpload\"},{\"id\":\"failure\",\"title\":\"爬取数据\",\"icon\":\"layui-icon layui-icon-face-cry\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"/pear/toCatchData\"}]},{\"id\":\"error\",\"title\":\"用户管理\",\"icon\":\"layui-icon layui-icon-face-cry\",\"type\":0,\"href\":\"\",\"children\":[{\"id\":403,\"title\":\"用户管理\",\"icon\":\"layui-icon layui-icon-face-smile\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"/pear/toUserManager\"},{\"id\":404,\"title\":\"友链管理\",\"icon\":\"layui-icon layui-icon-face-cry\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"/pear/toLink\"},{\"id\":500,\"title\":\"个人资料\",\"icon\":\"layui-icon layui-icon-face-cry\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"/pear/touser\"}]},{\"id\":\"system\",\"title\":\"访客管理\",\"icon\":\"layui-icon layui-icon-set-fill\",\"type\":0,\"href\":\"\",\"children\":[{\"id\":601,\"title\":\"访客记录\",\"icon\":\"layui-icon layui-icon-face-smile\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"/pear/toVisitor\"},{\"id\":602,\"title\":\"黑名单\",\"icon\":\"layui-icon layui-icon-face-cry\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"/pear/toBlack\"},{\"id\":604,\"title\":\"拦截记录\",\"icon\":\"layui-icon layui-icon-face-cry\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"/pear/toInterceptorLog\"},{\"id\":605,\"title\":\"行为日志\",\"icon\":\"layui-icon layui-icon-face-cry\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"/pear/toLog\"}]},{\"id\":\"common\",\"title\":\"监控管理\",\"icon\":\"layui-icon layui-icon-component\",\"type\":0,\"href\":\"\",\"children\":[{\"id\":701,\"title\":\"数据监控\",\"icon\":\"layui-icon layui-icon-console\",\"type\":0,\"children\":[{\"id\":2011,\"title\":\"RabbitMQ\",\"icon\":\"layui-icon layui-icon-face-smile\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"http://localhost:15672/\"},{\"id\":2014,\"title\":\"ElasticSearch\",\"icon\":\"layui-icon layui-icon-face-cry\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"http://localhost:5601/\"},{\"id\":2010,\"title\":\"Druid\",\"icon\":\"layui-icon layui-icon-face-cry\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"http://127.0.0.1:8080/druid/index.html\"}]},{\"id\":2017,\"title\":\"接口监控\",\"icon\":\"layui-icon layui-icon-face-smile\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"/pear/monitorInterface\"}]},{\"id\":\"echarts\",\"title\":\"数据图表\",\"icon\":\"layui-icon layui-icon-chart\",\"type\":0,\"href\":\"\",\"children\":[{\"id\":12121,\"title\":\"数据图表\",\"icon\":\"layui-icon layui-icon-face-smile\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"/pear/toEcharts\"}]},{\"id\":\"code\",\"title\":\"系统设置\",\"icon\":\"layui-icon layui-icon-util\",\"type\":0,\"href\":\"\",\"children\":[{\"id\":801,\"title\":\"系统设置\",\"icon\":\"layui-icon layui-icon-util\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"/pear/toSetting\"}]}]');
INSERT INTO `t_menu` VALUES (2, 2, '[{\"id\":1,\"title\":\"工作空间\",\"type\":0,\"icon\":\"layui-icon layui-icon-console\",\"href\":\"\",\"children\":[{\"id\":10,\"title\":\"控制后台\",\"icon\":\"layui-icon layui-icon-console\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"/pear/toconsole\"},{\"id\":14,\"title\":\"百度一下\",\"icon\":\"layui-icon layui-icon-console\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"http://www.baidu.com\"}]},{\"id\":\"component\",\"title\":\"文章管理\",\"icon\":\"layui-icon layui-icon-component\",\"type\":0,\"href\":\"\",\"children\":[{\"id\":203,\"title\":\"发布文章\",\"icon\":\"layui-icon layui-icon-console\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"/pear/topublish\"},{\"id\":206,\"title\":\"我的草稿\",\"icon\":\"layui-icon layui-icon-console\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"/pear/toDraft\"},{\"id\":208,\"title\":\"标签管理\",\"icon\":\"layui-icon layui-icon-console\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"/pear/toTag\"}]},{\"id\":\"result\",\"title\":\"常用工具\",\"icon\":\"layui-icon layui-icon-auz\",\"type\":0,\"href\":\"\",\"children\":[{\"id\":\"success\",\"title\":\"附件管理\",\"icon\":\"layui-icon layui-icon-face-smile\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"/pear/toFileUpload\"},{\"id\":\"failure\",\"title\":\"爬取数据\",\"icon\":\"layui-icon layui-icon-face-cry\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"/pear/toCatchData\"}]},{\"id\":\"error\",\"title\":\"用户管理\",\"icon\":\"layui-icon layui-icon-face-cry\",\"type\":0,\"href\":\"\",\"children\":[{\"id\":500,\"title\":\"个人资料\",\"icon\":\"layui-icon layui-icon-face-cry\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"/pear/touser\"}]},{\"id\":\"echarts\",\"title\":\"数据图表\",\"icon\":\"layui-icon layui-icon-chart\",\"type\":0,\"href\":\"\",\"children\":[{\"id\":12121,\"title\":\"数据图表\",\"icon\":\"layui-icon layui-icon-face-smile\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"/pear/toEcharts\"}]},{\"id\":\"code\",\"title\":\"系统设置\",\"icon\":\"layui-icon layui-icon-util\",\"type\":0,\"href\":\"\",\"children\":[{\"id\":801,\"title\":\"系统设置\",\"icon\":\"layui-icon layui-icon-util\",\"type\":1,\"openType\":\"_iframe\",\"href\":\"/pear/toSetting\"}]}]');

-- ----------------------------
-- Table structure for t_setting
-- ----------------------------
DROP TABLE IF EXISTS `t_setting`;
CREATE TABLE `t_setting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'user/img/bloglogo.jpg' COMMENT 'logo地址',
  `foot` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '页尾信息',
  `theme` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'calmlog' COMMENT '主题模板',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_setting
-- ----------------------------
INSERT INTO `t_setting` VALUES (7, 'admin', '/user/img/bloglogo.jpg', '111', 'calmlog');
INSERT INTO `t_setting` VALUES (8, '李四', '/user/img/bloglogo.jpg', '222', 'calmlog');
INSERT INTO `t_setting` VALUES (9, '东方不败', '/user/img/bloglogo.jpg', '333', 'calmlog');
INSERT INTO `t_setting` VALUES (10, 'tom', '/user/img/bloglogo.jpg', '6666', 'default');
INSERT INTO `t_setting` VALUES (12, 'deep', '/user/img/bloglogo.jpg', '2021 &copy; Powered By 游政杰', 'calmlog');
INSERT INTO `t_setting` VALUES (14, '8310894', '/user/img/4f8c8e189a444f2d8f87e33d9be2a05d.jpg', '----2022---', 'calmlog');
INSERT INTO `t_setting` VALUES (15, '981305', '/user/img/bloglogo.jpg', '----2021----', 'calmlog');
INSERT INTO `t_setting` VALUES (16, '71135975', '/user/img/bloglogo.jpg', '----2021----', 'calmlog');

SET FOREIGN_KEY_CHECKS = 1;
