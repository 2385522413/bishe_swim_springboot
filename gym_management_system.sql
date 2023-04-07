/*
 Navicat Premium Data Transfer

 Source Server         : swim
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : gym_management_system

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 07/04/2023 18:23:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `admin_account` int(0) NOT NULL COMMENT '管理员账号',
  `admin_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '管理员密码',
  PRIMARY KEY (`admin_account`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1001, '123456');
INSERT INTO `admin` VALUES (1002, '123456');
INSERT INTO `admin` VALUES (1003, '123456');

-- ----------------------------
-- Table structure for class_order
-- ----------------------------
DROP TABLE IF EXISTS `class_order`;
CREATE TABLE `class_order`  (
  `class_order_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '报名表id',
  `class_id` int(0) NULL DEFAULT NULL COMMENT '课程id',
  `class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '课程名称',
  `coach` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '教练',
  `member_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '会员姓名',
  `member_account` int(0) NULL DEFAULT NULL COMMENT '会员账号',
  `class_begin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '开课时间',
  PRIMARY KEY (`class_order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of class_order
-- ----------------------------
INSERT INTO `class_order` VALUES (21, 2, '乌鸦坐飞机', '万豪', '顾问', 202252271, '2023年2月13日12：13');
INSERT INTO `class_order` VALUES (22, 1, '增肌', '增肌教练', '小张', 202124238, '2022年4月1日 15:00');
INSERT INTO `class_order` VALUES (23, 2, '乌鸦坐飞机', '万豪', '小张', 202124238, '2023年2月13日12：13');

-- ----------------------------
-- Table structure for class_table
-- ----------------------------
DROP TABLE IF EXISTS `class_table`;
CREATE TABLE `class_table`  (
  `class_id` int(0) NOT NULL DEFAULT 0 COMMENT '课程id',
  `class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '课程名称',
  `class_begin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '开课时间',
  `class_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '课程时长',
  `coach` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '教练',
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of class_table
-- ----------------------------
INSERT INTO `class_table` VALUES (1235, '游泳耐力提升', '2023年2月16日12：00', '100', '王明');
INSERT INTO `class_table` VALUES (1357, '20天成为仰泳高手', '2023年4月7日2:00', '800', '孙杨');
INSERT INTO `class_table` VALUES (1389, '游泳速度提升', '2023年2月13日12：13', '60', '王明');
INSERT INTO `class_table` VALUES (1578, '自由泳课程', '2022年4月1日 15:00', '60', '王明');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `employee_account` int(0) NOT NULL COMMENT '员工账号',
  `employee_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `employee_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `employee_gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '员工性别',
  `employee_age` int(0) NULL DEFAULT NULL COMMENT '员工年龄',
  `entry_time` date NULL DEFAULT NULL COMMENT '入职时间',
  `staff` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职务',
  `employee_message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注信息',
  `state` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '未预约' COMMENT '预约状态',
  `yuyueName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '无人预约',
  PRIMARY KEY (`employee_account`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (101038721, '123456', '李云龙', '女', 26, '2016-06-29', '蛙泳教练', '蛙泳冠军', '未预约', '无人预约');
INSERT INTO `employee` VALUES (101045354, '123456', '孙杨', '男', 24, '2021-01-07', '仰泳教练', '奥运冠军', '未预约', '无人预约');
INSERT INTO `employee` VALUES (101053687, '123456', '王明', '男', 30, '2020-06-06', '自由泳教练', '自由泳高手', '已预约', '小张');
INSERT INTO `employee` VALUES (101072089, '123456', '张亮', '男', 40, '2023-02-13', '仰泳教练', '国家队退休教练', '未预约', '无人预约');

-- ----------------------------
-- Table structure for eq_order
-- ----------------------------
DROP TABLE IF EXISTS `eq_order`;
CREATE TABLE `eq_order`  (
  `eq_order_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '报名表id',
  `eq_id` int(0) NULL DEFAULT NULL COMMENT '课程id',
  `eq_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '课程名称',
  `coach` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '教练',
  `member_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '会员姓名',
  `member_account` int(0) NULL DEFAULT NULL COMMENT '会员账号',
  `eq_begin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '开课时间',
  `eq_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`eq_order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 519 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of eq_order
-- ----------------------------
INSERT INTO `eq_order` VALUES (442, 1, '游泳圈', '50', '顾问', 202252271, '08点-12点', '2023-02-13', '已预约');
INSERT INTO `eq_order` VALUES (443, 2, '泳衣', '50', NULL, NULL, '08点-12点', '2023-02-13', '未预约');
INSERT INTO `eq_order` VALUES (444, 1, '游泳圈', '50', '顾问', 202252271, '14点-18点', '2023-02-13', '爽约');
INSERT INTO `eq_order` VALUES (445, 2, '泳衣', '50', NULL, NULL, '14点-18点', '2023-02-13', '未预约');
INSERT INTO `eq_order` VALUES (446, 1, '游泳圈', '50', NULL, NULL, '18点-22点', '2023-02-13', '未预约');
INSERT INTO `eq_order` VALUES (447, 2, '泳衣', '50', '顾问', 202252271, '18点-22点', '2023-02-13', '已到店');
INSERT INTO `eq_order` VALUES (484, 1, '游泳圈', '50', NULL, NULL, '08点-12点', '2023-02-14', '未预约');
INSERT INTO `eq_order` VALUES (485, 2, '泳衣', '50', NULL, NULL, '08点-12点', '2023-02-14', '未预约');
INSERT INTO `eq_order` VALUES (486, 1, '游泳圈', '50', NULL, NULL, '14点-18点', '2023-02-14', '未预约');
INSERT INTO `eq_order` VALUES (487, 2, '泳衣', '50', '顾问', 202252271, '14点-18点', '2023-02-14', '已预约');
INSERT INTO `eq_order` VALUES (488, 1, '游泳圈', '50', NULL, NULL, '18点-22点', '2023-02-14', '未预约');
INSERT INTO `eq_order` VALUES (489, 2, '泳衣', '50', NULL, NULL, '18点-22点', '2023-02-14', '未预约');
INSERT INTO `eq_order` VALUES (496, 1, '游泳圈', '50', NULL, NULL, '08点-12点', '2023-02-15', '未预约');
INSERT INTO `eq_order` VALUES (497, 2, '泳衣', '50', '顾问', 202252271, '08点-12点', '2023-02-15', '已预约');
INSERT INTO `eq_order` VALUES (498, 1, '游泳圈', '50', NULL, NULL, '14点-18点', '2023-02-15', '未预约');
INSERT INTO `eq_order` VALUES (499, 2, '泳衣', '50', NULL, NULL, '14点-18点', '2023-02-15', '未预约');
INSERT INTO `eq_order` VALUES (500, 1, '游泳圈', '50', NULL, NULL, '18点-22点', '2023-02-15', '未预约');
INSERT INTO `eq_order` VALUES (501, 2, '泳衣', '50', NULL, NULL, '18点-22点', '2023-02-15', '未预约');
INSERT INTO `eq_order` VALUES (502, 1, '游泳圈', '50', NULL, NULL, '08点-12点', '2023-02-16', '未预约');
INSERT INTO `eq_order` VALUES (503, 2, '泳衣', '50', NULL, NULL, '08点-12点', '2023-02-16', '未预约');
INSERT INTO `eq_order` VALUES (504, 1, '游泳圈', '50', NULL, NULL, '14点-18点', '2023-02-16', '未预约');
INSERT INTO `eq_order` VALUES (505, 2, '泳衣', '50', NULL, NULL, '14点-18点', '2023-02-16', '未预约');
INSERT INTO `eq_order` VALUES (506, 1, '游泳圈', '50', NULL, NULL, '18点-22点', '2023-02-16', '未预约');
INSERT INTO `eq_order` VALUES (507, 2, '泳衣', '50', NULL, NULL, '18点-22点', '2023-02-16', '未预约');
INSERT INTO `eq_order` VALUES (508, 1, '游泳圈', '50', NULL, NULL, '08点-12点', '2023-02-21', '未预约');
INSERT INTO `eq_order` VALUES (509, 2, '泳衣', '50', NULL, NULL, '08点-12点', '2023-02-21', '未预约');
INSERT INTO `eq_order` VALUES (510, 1, '游泳圈', '50', NULL, NULL, '14点-18点', '2023-02-21', '未预约');
INSERT INTO `eq_order` VALUES (511, 2, '泳衣', '50', NULL, NULL, '14点-18点', '2023-02-21', '未预约');
INSERT INTO `eq_order` VALUES (512, 1, '游泳圈', '50', NULL, NULL, '18点-22点', '2023-02-21', '未预约');
INSERT INTO `eq_order` VALUES (513, 2, '泳衣', '50', NULL, NULL, '18点-22点', '2023-02-21', '未预约');
INSERT INTO `eq_order` VALUES (514, 1, '游泳圈', '50', NULL, NULL, '08点-12点', '2023-02-24', '未预约');
INSERT INTO `eq_order` VALUES (515, 2, '泳衣', '50', NULL, NULL, '08点-12点', '2023-02-24', '未预约');
INSERT INTO `eq_order` VALUES (516, 1, '游泳圈', '50', NULL, NULL, '14点-18点', '2023-02-24', '未预约');
INSERT INTO `eq_order` VALUES (517, 2, '泳衣', '50', NULL, NULL, '14点-18点', '2023-02-24', '未预约');
INSERT INTO `eq_order` VALUES (518, 1, '游泳圈', '50', NULL, NULL, '18点-22点', '2023-02-24', '未预约');
INSERT INTO `eq_order` VALUES (519, 2, '泳衣', '50', NULL, NULL, '18点-22点', '2023-02-24', '未预约');

-- ----------------------------
-- Table structure for equipment
-- ----------------------------
DROP TABLE IF EXISTS `equipment`;
CREATE TABLE `equipment`  (
  `equipment_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '器材id',
  `equipment_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '器材名称',
  `equipment_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '器材位置',
  `equipment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '器材状态',
  `equipment_message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '器材备注信息',
  `equipment_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`equipment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of equipment
-- ----------------------------
INSERT INTO `equipment` VALUES (1, '游泳圈', '1号场地', '正常', '新手适合', '50');
INSERT INTO `equipment` VALUES (2, '护目镜', '3号房间', '正常', '防水', '50');
INSERT INTO `equipment` VALUES (11, '泳衣', '1号场地', '损坏', '新手适合', NULL);
INSERT INTO `equipment` VALUES (12, '泳衣', '1号场地', '损坏', '新手适合', NULL);
INSERT INTO `equipment` VALUES (14, '泳衣', '1号场地', '损坏', '新手适合', NULL);
INSERT INTO `equipment` VALUES (15, '泳衣', '3号房间', '正常', '减少游泳阻力', NULL);

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `member_account` int(0) NOT NULL COMMENT '会员账号',
  `member_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '123456' COMMENT '会员密码',
  `member_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '会员姓名',
  `member_gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '会员性别',
  `member_age` int(0) NULL DEFAULT NULL COMMENT '会员年龄',
  `member_height` int(0) NULL DEFAULT NULL COMMENT '会员身高',
  `member_weight` int(0) NULL DEFAULT NULL COMMENT '会员体重',
  `member_phone` bigint(0) NULL DEFAULT NULL COMMENT '会员电话',
  `card_time` date NULL DEFAULT NULL COMMENT '办卡时间',
  `card_class` int(0) NULL DEFAULT NULL COMMENT '购买课时',
  `card_next_class` int(0) NULL DEFAULT NULL COMMENT '剩余课时',
  PRIMARY KEY (`member_account`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES (202124238, '123456', '小张', '女', 35, 156, 50, 13309224144, '2023-04-07', 500, 500);
INSERT INTO `member` VALUES (202162425, '123456', '小赵', '女', 45, 175, 60, 15294616666, '2023-04-07', 400, 400);
INSERT INTO `member` VALUES (202171121, '123456', '小明', '男', 18, 180, 68, 17710221034, '2023-04-07', 600, 600);
INSERT INTO `member` VALUES (202171122, '123456', '小王', '男', 18, 180, 68, 17710221034, '2023-04-07', 600, 600);
INSERT INTO `member` VALUES (202195118, '123456', '小李', '女', 23, 180, 68, 13933333333, '2023-04-07', 400, 400);
INSERT INTO `member` VALUES (202206725, '123456', 'Tom', '男', 24, 178, 90, 13758784959, '2022-04-02', 30, 30);
INSERT INTO `member` VALUES (202252271, '123456', '顾帝豪', '男', 26, 175, 60, 18838772318, '2023-02-13', 999, 900);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '内容',
  `time` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (10, '大优惠', '买三送一', NULL);
INSERT INTO `notice` VALUES (12, '公告', '公告', NULL);

SET FOREIGN_KEY_CHECKS = 1;
