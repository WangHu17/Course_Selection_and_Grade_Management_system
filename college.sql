/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : college

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 07/07/2021 23:12:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for class_info
-- ----------------------------
DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info`  (
  `class_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `student_num` int NOT NULL,
  `monitor` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `study_committee` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `life_committee` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`class_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class_info
-- ----------------------------
INSERT INTO `class_info` VALUES ('1班', 10, 'lucy', 'tom', 'jack');
INSERT INTO `class_info` VALUES ('2班', 10, 'mary', 'kris', 'barry');
INSERT INTO `class_info` VALUES ('3班', 10, 'hh', 'ss', 'ww');
INSERT INTO `class_info` VALUES ('4班', 10, 'qq', 'ee', 'rr');
INSERT INTO `class_info` VALUES ('5班', 10, 'aa', 'dd', 'ff');

-- ----------------------------
-- Table structure for stu_curriculum
-- ----------------------------
DROP TABLE IF EXISTS `stu_curriculum`;
CREATE TABLE `stu_curriculum`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NULL DEFAULT NULL,
  `course_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `course_nature` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `course_selected_ID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `course_selected_stu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `course_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `grade` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `course_name`(`course_name`) USING BTREE,
  INDEX `course_selected_ID`(`course_selected_ID`) USING BTREE,
  INDEX `course_id`(`course_id`) USING BTREE,
  CONSTRAINT `stu_curriculum_ibfk_2` FOREIGN KEY (`course_selected_ID`) REFERENCES `student` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `stu_curriculum_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `training_program` (`course_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 149 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stu_curriculum
-- ----------------------------
INSERT INTO `stu_curriculum` VALUES (1, 1, '随机过程', '学位课', '2201002001', 'wh', '已修', 91);
INSERT INTO `stu_curriculum` VALUES (2, 3, '传感器网络', '选修课', '2201002001', 'wh', '已修', 85);
INSERT INTO `stu_curriculum` VALUES (15, 6, '硕士基础英语', '学位课', '2201002001', 'wh', '未修', 90);
INSERT INTO `stu_curriculum` VALUES (16, 8, '数据库新技术', '选修课', '2201002001', 'wh', '已修', 99);
INSERT INTO `stu_curriculum` VALUES (17, 7, '计算机教育学', '选修课', '2201002031', 'qq', '已修', 80);
INSERT INTO `stu_curriculum` VALUES (18, 6, '硕士基础英语', '学位课', '2201002031', 'qq', '未修', 80);
INSERT INTO `stu_curriculum` VALUES (19, 8, '数据库新技术', '选修课', '2201002031', 'qq', '已修', 90);
INSERT INTO `stu_curriculum` VALUES (20, 4, '高级计算机网络', '选修课', '2201002001', 'wh', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (21, 1, '随机过程', '学位课', '2201002002', 'lucy', '已修', 90);
INSERT INTO `stu_curriculum` VALUES (22, 3, '传感器网络', '选修课', '2201002002', 'lucy', '已修', 89);
INSERT INTO `stu_curriculum` VALUES (23, 4, '高级计算机网络', '选修课', '2201002002', 'lucy', '未修', 80);
INSERT INTO `stu_curriculum` VALUES (24, 5, '人工智能', '选修课', '2201002002', 'lucy', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (25, 6, '硕士基础英语', '学位课', '2201002002', 'lucy', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (26, 8, '数据库新技术', '选修课', '2201002002', 'lucy', '未修', 90);
INSERT INTO `stu_curriculum` VALUES (27, 9, '数据挖掘', '选修课', '2201002002', 'lucy', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (28, 10, '图像处理', '选修课', '2201002002', 'lucy', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (29, 20, '形式化验证', '选修课', '2201002002', 'lucy', '未修', 99);
INSERT INTO `stu_curriculum` VALUES (30, 21, '仿真建模与MATLAB', '选修课', '2201002002', 'lucy', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (31, 1, '随机过程', '学位课', '2201002003', 'tom', '已修', 100);
INSERT INTO `stu_curriculum` VALUES (32, 3, '传感器网络', '选修课', '2201002003', 'tom', '未修', 90);
INSERT INTO `stu_curriculum` VALUES (33, 4, '高级计算机网络', '选修课', '2201002003', 'tom', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (34, 5, '人工智能', '选修课', '2201002003', 'tom', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (35, 6, '硕士基础英语', '学位课', '2201002003', 'tom', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (36, 8, '数据库新技术', '选修课', '2201002003', 'tom', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (37, 9, '数据挖掘', '选修课', '2201002003', 'tom', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (38, 10, '图像处理', '选修课', '2201002003', 'tom', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (39, 20, '形式化验证', '选修课', '2201002003', 'tom', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (40, 21, '仿真建模与MATLAB', '选修课', '2201002003', 'tom', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (41, 1, '随机过程', '学位课', '2201002004', 'jack', '已修', 88);
INSERT INTO `stu_curriculum` VALUES (42, 3, '传感器网络', '选修课', '2201002004', 'jack', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (43, 4, '高级计算机网络', '选修课', '2201002004', 'jack', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (44, 5, '人工智能', '选修课', '2201002004', 'jack', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (45, 6, '硕士基础英语', '学位课', '2201002004', 'jack', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (46, 8, '数据库新技术', '选修课', '2201002004', 'jack', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (47, 9, '数据挖掘', '选修课', '2201002004', 'jack', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (48, 10, '图像处理', '选修课', '2201002004', 'jack', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (49, 20, '形式化验证', '选修课', '2201002004', 'jack', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (50, 21, '仿真建模与MATLAB', '选修课', '2201002004', 'jack', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (51, 1, '随机过程', '学位课', '2201002011', 'mary', '已修', 77);
INSERT INTO `stu_curriculum` VALUES (52, 3, '传感器网络', '选修课', '2201002011', 'mary', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (53, 4, '高级计算机网络', '选修课', '2201002011', 'mary', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (54, 5, '人工智能', '选修课', '2201002011', 'mary', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (55, 6, '硕士基础英语', '学位课', '2201002011', 'mary', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (56, 8, '数据库新技术', '选修课', '2201002011', 'mary', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (57, 9, '数据挖掘', '选修课', '2201002011', 'mary', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (58, 10, '图像处理', '选修课', '2201002011', 'mary', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (59, 20, '形式化验证', '选修课', '2201002011', 'mary', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (60, 21, '仿真建模与MATLAB', '选修课', '2201002011', 'mary', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (61, 1, '随机过程', '学位课', '2201002012', 'kris', '已修', 90);
INSERT INTO `stu_curriculum` VALUES (62, 3, '传感器网络', '选修课', '2201002012', 'kris', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (63, 4, '高级计算机网络', '选修课', '2201002012', 'kris', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (64, 5, '人工智能', '选修课', '2201002012', 'kris', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (65, 6, '硕士基础英语', '学位课', '2201002012', 'kris', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (66, 8, '数据库新技术', '选修课', '2201002012', 'kris', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (67, 9, '数据挖掘', '选修课', '2201002012', 'kris', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (68, 10, '图像处理', '选修课', '2201002012', 'kris', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (69, 20, '形式化验证', '选修课', '2201002012', 'kris', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (70, 21, '仿真建模与MATLAB', '选修课', '2201002012', 'kris', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (71, 1, '随机过程', '学位课', '2201002013', 'barry', '未修', 99);
INSERT INTO `stu_curriculum` VALUES (72, 3, '传感器网络', '选修课', '2201002013', 'barry', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (73, 4, '高级计算机网络', '选修课', '2201002013', 'barry', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (74, 5, '人工智能', '选修课', '2201002013', 'barry', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (75, 6, '硕士基础英语', '学位课', '2201002013', 'barry', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (76, 8, '数据库新技术', '选修课', '2201002013', 'barry', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (77, 9, '数据挖掘', '选修课', '2201002013', 'barry', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (78, 10, '图像处理', '选修课', '2201002013', 'barry', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (79, 20, '形式化验证', '选修课', '2201002013', 'barry', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (80, 21, '仿真建模与MATLAB', '选修课', '2201002013', 'barry', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (81, 2, '软件工程', '学位课', '2201002021', 'hh', '已修', 90);
INSERT INTO `stu_curriculum` VALUES (82, 6, '硕士基础英语', '学位课', '2201002021', 'hh', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (83, 8, '数据库新技术', '选修课', '2201002021', 'hh', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (84, 9, '数据挖掘', '选修课', '2201002021', 'hh', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (85, 10, '图像处理', '选修课', '2201002021', 'hh', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (86, 20, '形式化验证', '选修课', '2201002021', 'hh', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (87, 21, '仿真建模与MATLAB', '选修课', '2201002021', 'hh', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (88, 2, '软件工程', '学位课', '2201002022', 'ss', '已修', 89);
INSERT INTO `stu_curriculum` VALUES (89, 6, '硕士基础英语', '学位课', '2201002022', 'ss', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (90, 8, '数据库新技术', '选修课', '2201002022', 'ss', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (91, 9, '数据挖掘', '选修课', '2201002022', 'ss', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (92, 10, '图像处理', '选修课', '2201002022', 'ss', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (93, 20, '形式化验证', '选修课', '2201002022', 'ss', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (94, 21, '仿真建模与MATLAB', '选修课', '2201002022', 'ss', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (95, 2, '软件工程', '学位课', '2201002023', 'ww', '已修', 67);
INSERT INTO `stu_curriculum` VALUES (96, 6, '硕士基础英语', '学位课', '2201002023', 'ww', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (97, 8, '数据库新技术', '选修课', '2201002023', 'ww', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (98, 9, '数据挖掘', '选修课', '2201002023', 'ww', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (99, 10, '图像处理', '选修课', '2201002023', 'ww', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (100, 20, '形式化验证', '选修课', '2201002023', 'ww', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (101, 21, '仿真建模与MATLAB', '选修课', '2201002023', 'ww', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (102, 9, '数据挖掘', '选修课', '2201002031', 'qq', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (103, 10, '图像处理', '选修课', '2201002031', 'qq', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (104, 18, '教育科学研究方法', '学位课', '2201002031', 'qq', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (105, 19, '信息技术教育研究', '选修课', '2201002031', 'qq', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (106, 20, '形式化验证', '选修课', '2201002031', 'qq', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (107, 21, '仿真建模与MATLAB', '选修课', '2201002031', 'qq', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (108, 6, '硕士基础英语', '学位课', '2201002032', 'ee', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (109, 7, '计算机教育学', '选修课', '2201002032', 'ee', '已修', 70);
INSERT INTO `stu_curriculum` VALUES (110, 8, '数据库新技术', '选修课', '2201002032', 'ee', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (111, 9, '数据挖掘', '选修课', '2201002032', 'ee', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (112, 10, '图像处理', '选修课', '2201002032', 'ee', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (113, 18, '教育科学研究方法', '学位课', '2201002032', 'ee', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (114, 19, '信息技术教育研究', '选修课', '2201002032', 'ee', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (115, 20, '形式化验证', '选修课', '2201002032', 'ee', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (116, 21, '仿真建模与MATLAB', '选修课', '2201002032', 'ee', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (117, 6, '硕士基础英语', '学位课', '2201002033', 'rr', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (118, 7, '计算机教育学', '选修课', '2201002033', 'rr', '已修', 89);
INSERT INTO `stu_curriculum` VALUES (119, 8, '数据库新技术', '选修课', '2201002033', 'rr', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (120, 9, '数据挖掘', '选修课', '2201002033', 'rr', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (121, 10, '图像处理', '选修课', '2201002033', 'rr', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (122, 18, '教育科学研究方法', '学位课', '2201002033', 'rr', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (123, 19, '信息技术教育研究', '选修课', '2201002033', 'rr', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (124, 20, '形式化验证', '选修课', '2201002033', 'rr', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (125, 21, '仿真建模与MATLAB', '选修课', '2201002033', 'rr', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (126, 6, '硕士基础英语', '学位课', '2201002041', 'aa', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (127, 8, '数据库新技术', '选修课', '2201002041', 'aa', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (128, 9, '数据挖掘', '选修课', '2201002041', 'aa', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (129, 10, '图像处理', '选修课', '2201002041', 'aa', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (130, 11, '传感技术与数据采集', '选修课', '2201002041', 'aa', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (131, 6, '硕士基础英语', '学位课', '2201002042', 'dd', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (132, 11, '传感技术与数据采集', '选修课', '2201002042', 'dd', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (133, 20, '形式化验证', '选修课', '2201002042', 'dd', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (134, 21, '仿真建模与MATLAB', '选修课', '2201002042', 'dd', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (135, 6, '硕士基础英语', '学位课', '2201002043', 'ff', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (136, 10, '图像处理', '选修课', '2201002043', 'ff', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (137, 11, '传感技术与数据采集', '选修课', '2201002043', 'ff', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (138, 20, '形式化验证', '选修课', '2201002043', 'ff', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (139, 5, '人工智能', '选修课', '2201002001', 'wh', '未修', NULL);
INSERT INTO `stu_curriculum` VALUES (148, 9, '数据挖掘', '选修课', '2201002001', 'wh', '未修', 99);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `ID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `student_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ID_card` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone_number` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `start_year` year NULL DEFAULT NULL,
  `student_source` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `class_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `class_name`(`class_name`) USING BTREE,
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`class_name`) REFERENCES `class_info` (`class_name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('2201002001', 'wh', '100000000000000000', '10000000000', 2020, '北京', '电子信息', '1班');
INSERT INTO `student` VALUES ('2201002002', 'lucy', '100000000000000001', '10000000001', 2020, '北京', '电子信息', '1班');
INSERT INTO `student` VALUES ('2201002003', 'tom', '100000000000000002', '10000000002', 2020, '北京', '电子信息', '1班');
INSERT INTO `student` VALUES ('2201002004', 'jack', '100000000000000003', '10000000003', 2020, '北京', '电子信息', '1班');
INSERT INTO `student` VALUES ('2201002005', '66ff0', '100000000000000004', '10000000004', 2020, '北京', '电子信息', '1班');
INSERT INTO `student` VALUES ('2201002006', '2abb7', '100000000000000005', '10000000005', 2020, '北京', '电子信息', '1班');
INSERT INTO `student` VALUES ('2201002007', '1d3c1', '100000000000000006', '10000000006', 2020, '北京', '电子信息', '1班');
INSERT INTO `student` VALUES ('2201002008', '63b90', '100000000000000007', '10000000007', 2020, '北京', '电子信息', '1班');
INSERT INTO `student` VALUES ('2201002009', '053f4', '100000000000000008', '10000000008', 2020, '北京', '电子信息', '1班');
INSERT INTO `student` VALUES ('2201002010', '5555e', '100000000000000009', '10000000009', 2020, '北京', '电子信息', '1班');
INSERT INTO `student` VALUES ('2201002011', 'mary', '100000000000000010', '10000000010', 2020, '北京', '电子信息', '2班');
INSERT INTO `student` VALUES ('2201002012', 'kris', '100000000000000011', '10000000011', 2020, '北京', '电子信息', '2班');
INSERT INTO `student` VALUES ('2201002013', 'barry', '100000000000000012', '10000000012', 2020, '北京', '电子信息', '2班');
INSERT INTO `student` VALUES ('2201002014', 'ff5c0', '100000000000000013', '10000000013', 2020, '北京', '电子信息', '2班');
INSERT INTO `student` VALUES ('2201002015', 'cd6fe', '100000000000000014', '10000000014', 2020, '北京', '电子信息', '2班');
INSERT INTO `student` VALUES ('2201002016', '0a21a', '100000000000000015', '10000000015', 2020, '北京', '电子信息', '2班');
INSERT INTO `student` VALUES ('2201002017', '38153', '100000000000000016', '10000000016', 2020, '北京', '电子信息', '2班');
INSERT INTO `student` VALUES ('2201002018', '7d0bf', '100000000000000017', '10000000017', 2020, '北京', '电子信息', '2班');
INSERT INTO `student` VALUES ('2201002019', 'c4d2e', '100000000000000018', '10000000018', 2020, '北京', '电子信息', '2班');
INSERT INTO `student` VALUES ('2201002020', '740a4', '100000000000000019', '10000000019', 2020, '北京', '电子信息', '2班');
INSERT INTO `student` VALUES ('2201002021', 'hh', '100000000000000020', '10000000020', 2020, '北京', '软件工程', '3班');
INSERT INTO `student` VALUES ('2201002022', 'ss', '100000000000000021', '10000000021', 2020, '北京', '软件工程', '3班');
INSERT INTO `student` VALUES ('2201002023', 'ww', '100000000000000022', '10000000022', 2020, '北京', '软件工程', '3班');
INSERT INTO `student` VALUES ('2201002024', '8719f', '100000000000000023', '10000000023', 2020, '北京', '软件工程', '3班');
INSERT INTO `student` VALUES ('2201002025', 'd3f1b', '100000000000000024', '10000000024', 2020, '北京', '软件工程', '3班');
INSERT INTO `student` VALUES ('2201002026', '0f875', '100000000000000025', '10000000025', 2020, '北京', '软件工程', '3班');
INSERT INTO `student` VALUES ('2201002027', 'ac84e', '100000000000000026', '10000000026', 2020, '北京', '软件工程', '3班');
INSERT INTO `student` VALUES ('2201002028', '7cfcf', '100000000000000027', '10000000027', 2020, '北京', '软件工程', '3班');
INSERT INTO `student` VALUES ('2201002029', '7c18d', '100000000000000028', '10000000028', 2020, '北京', '软件工程', '3班');
INSERT INTO `student` VALUES ('2201002030', 'f5586', '100000000000000029', '10000000029', 2020, '北京', '软件工程', '3班');
INSERT INTO `student` VALUES ('2201002031', 'qq', '100000000000000030', '10000000030', 2020, '北京', '智能教育', '4班');
INSERT INTO `student` VALUES ('2201002032', 'ee', '100000000000000031', '10000000031', 2020, '北京', '智能教育', '4班');
INSERT INTO `student` VALUES ('2201002033', 'rr', '100000000000000032', '10000000032', 2020, '北京', '智能教育', '4班');
INSERT INTO `student` VALUES ('2201002034', 'aa1a1', '100000000000000033', '10000000033', 2020, '北京', '智能教育', '4班');
INSERT INTO `student` VALUES ('2201002035', '240a9', '100000000000000034', '10000000034', 2020, '北京', '智能教育', '4班');
INSERT INTO `student` VALUES ('2201002036', '51ec4', '100000000000000035', '10000000035', 2020, '北京', '智能教育', '4班');
INSERT INTO `student` VALUES ('2201002037', '7620a', '100000000000000036', '10000000036', 2020, '北京', '智能教育', '4班');
INSERT INTO `student` VALUES ('2201002038', '0aff0', '100000000000000037', '10000000037', 2020, '北京', '智能教育', '4班');
INSERT INTO `student` VALUES ('2201002039', 'cbf0d', '100000000000000038', '10000000038', 2020, '北京', '智能教育', '4班');
INSERT INTO `student` VALUES ('2201002040', '0fd3f', '100000000000000039', '10000000039', 2020, '北京', '智能教育', '4班');
INSERT INTO `student` VALUES ('2201002041', 'aa', '100000000000000040', '10000000040', 2020, '北京', '通信工程', '5班');
INSERT INTO `student` VALUES ('2201002042', 'dd', '100000000000000041', '10000000041', 2020, '北京', '通信工程', '5班');
INSERT INTO `student` VALUES ('2201002043', 'ff', '100000000000000042', '10000000042', 2020, '北京', '通信工程', '5班');
INSERT INTO `student` VALUES ('2201002044', '12e71', '100000000000000043', '10000000043', 2020, '北京', '通信工程', '5班');
INSERT INTO `student` VALUES ('2201002045', '49c8b', '100000000000000044', '10000000044', 2020, '北京', '通信工程', '5班');
INSERT INTO `student` VALUES ('2201002046', 'f949b', '100000000000000045', '10000000045', 2020, '北京', '通信工程', '5班');
INSERT INTO `student` VALUES ('2201002047', '20aec', '100000000000000046', '10000000046', 2020, '北京', '通信工程', '5班');
INSERT INTO `student` VALUES ('2201002048', '86005', '100000000000000047', '10000000047', 2020, '北京', '通信工程', '5班');
INSERT INTO `student` VALUES ('2201002049', '0f320', '100000000000000048', '10000000048', 2020, '北京', '通信工程', '5班');
INSERT INTO `student` VALUES ('2201002050', 'b45a3', '100000000000000049', '10000000049', 2020, '北京', '通信工程', '5班');

-- ----------------------------
-- Table structure for training_program
-- ----------------------------
DROP TABLE IF EXISTS `training_program`;
CREATE TABLE `training_program`  (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `course_nature` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `course_major` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `course_teacher` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `course_attributes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `preliminary_course` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `followup_course` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`course_id`) USING BTREE,
  INDEX `id`(`course_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of training_program
-- ----------------------------
INSERT INTO `training_program` VALUES (1, '随机过程', '学位课', '电子信息', '王老师', '2', '线性代数', '1');
INSERT INTO `training_program` VALUES (2, '软件工程', '学位课', '软件工程', '李老师', '教室：512', '1', '1');
INSERT INTO `training_program` VALUES (3, '传感器网络', '选修课', '电子信息', '张老师', '无', '无', '无');
INSERT INTO `training_program` VALUES (4, '高级计算机网络', '选修课', '电子信息', '李老师', '教室：520', '计算机网络', '无');
INSERT INTO `training_program` VALUES (5, '人工智能', '选修课', '电子信息', '刘老师', '人工zz', '无', '无');
INSERT INTO `training_program` VALUES (6, '硕士基础英语', '学位课', '公共课', '王老师', '线上课程', '无', '硕士高级英语');
INSERT INTO `training_program` VALUES (7, '计算机教育学', '选修课', '智能教育', '王老师', '无', '无', '无');
INSERT INTO `training_program` VALUES (8, '数据库新技术', '选修课', '公共课', '王老师', '无', '数据库旧技术', '无');
INSERT INTO `training_program` VALUES (9, '数据挖掘', '选修课', '公共课', '李老师', '无', '无', '无');
INSERT INTO `training_program` VALUES (10, '图像处理', '选修课', '公共课', '刘老师', NULL, NULL, NULL);
INSERT INTO `training_program` VALUES (11, '传感技术与数据采集', '选修课', '通信工程', '张老师', NULL, NULL, NULL);
INSERT INTO `training_program` VALUES (12, '超高等数学', '选修课', '数学', '毛老师', '毛老师很菜', '无', '无');
INSERT INTO `training_program` VALUES (13, '硕士超高级英语', '选修课', '英语', '肖老师', '超级高级', '硕士高级英语', '硕士超级无敌高级英语');
INSERT INTO `training_program` VALUES (18, '教育科学研究方法', '学位课', '智能教育', '刘老师', NULL, NULL, NULL);
INSERT INTO `training_program` VALUES (19, '信息技术教育研究', '选修课', '智能教育', '张老师', NULL, NULL, NULL);
INSERT INTO `training_program` VALUES (20, '形式化验证', '选修课', '公共课', '王老师', '无', '2', '2');
INSERT INTO `training_program` VALUES (21, '仿真建模与MATLAB', '选修课', '公共课', '李老师', '3', '12', '222');

-- ----------------------------
-- Table structure for u_student
-- ----------------------------
DROP TABLE IF EXISTS `u_student`;
CREATE TABLE `u_student`  (
  `ID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  CONSTRAINT `u_student_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `student` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of u_student
-- ----------------------------
INSERT INTO `u_student` VALUES ('2201002001', '2001');
INSERT INTO `u_student` VALUES ('2201002002', '2002');
INSERT INTO `u_student` VALUES ('2201002003', '2003');
INSERT INTO `u_student` VALUES ('2201002004', '2004');
INSERT INTO `u_student` VALUES ('2201002005', '2005');
INSERT INTO `u_student` VALUES ('2201002006', '2006');
INSERT INTO `u_student` VALUES ('2201002007', '2007');
INSERT INTO `u_student` VALUES ('2201002008', '2008');
INSERT INTO `u_student` VALUES ('2201002009', '2009');
INSERT INTO `u_student` VALUES ('2201002010', '2010');
INSERT INTO `u_student` VALUES ('2201002011', '2011');
INSERT INTO `u_student` VALUES ('2201002012', '2012');
INSERT INTO `u_student` VALUES ('2201002013', '2013');
INSERT INTO `u_student` VALUES ('2201002014', '2014');
INSERT INTO `u_student` VALUES ('2201002015', '2015');
INSERT INTO `u_student` VALUES ('2201002016', '2016');
INSERT INTO `u_student` VALUES ('2201002017', '2017');
INSERT INTO `u_student` VALUES ('2201002018', '2018');
INSERT INTO `u_student` VALUES ('2201002019', '2019');
INSERT INTO `u_student` VALUES ('2201002020', '2020');
INSERT INTO `u_student` VALUES ('2201002021', '2021');
INSERT INTO `u_student` VALUES ('2201002022', '2022');
INSERT INTO `u_student` VALUES ('2201002023', '2023');
INSERT INTO `u_student` VALUES ('2201002024', '2024');
INSERT INTO `u_student` VALUES ('2201002025', '2025');
INSERT INTO `u_student` VALUES ('2201002026', '2026');
INSERT INTO `u_student` VALUES ('2201002027', '2027');
INSERT INTO `u_student` VALUES ('2201002028', '2028');
INSERT INTO `u_student` VALUES ('2201002029', '2029');
INSERT INTO `u_student` VALUES ('2201002030', '2030');
INSERT INTO `u_student` VALUES ('2201002031', '2031');
INSERT INTO `u_student` VALUES ('2201002032', '2032');
INSERT INTO `u_student` VALUES ('2201002033', '2033');
INSERT INTO `u_student` VALUES ('2201002034', '2034');
INSERT INTO `u_student` VALUES ('2201002035', '2035');
INSERT INTO `u_student` VALUES ('2201002036', '2036');
INSERT INTO `u_student` VALUES ('2201002037', '2037');
INSERT INTO `u_student` VALUES ('2201002038', '2038');
INSERT INTO `u_student` VALUES ('2201002039', '2039');
INSERT INTO `u_student` VALUES ('2201002040', '2040');
INSERT INTO `u_student` VALUES ('2201002041', '2041');
INSERT INTO `u_student` VALUES ('2201002042', '2042');
INSERT INTO `u_student` VALUES ('2201002043', '2043');
INSERT INTO `u_student` VALUES ('2201002044', '2044');
INSERT INTO `u_student` VALUES ('2201002045', '2045');
INSERT INTO `u_student` VALUES ('2201002046', '2046');
INSERT INTO `u_student` VALUES ('2201002047', '2047');
INSERT INTO `u_student` VALUES ('2201002048', '2048');
INSERT INTO `u_student` VALUES ('2201002049', '2049');
INSERT INTO `u_student` VALUES ('2201002050', '2050');

-- ----------------------------
-- Table structure for u_teacher
-- ----------------------------
DROP TABLE IF EXISTS `u_teacher`;
CREATE TABLE `u_teacher`  (
  `ID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of u_teacher
-- ----------------------------
INSERT INTO `u_teacher` VALUES ('1', '王老师', '1');
INSERT INTO `u_teacher` VALUES ('2', '李老师', '2');
INSERT INTO `u_teacher` VALUES ('3', '张老师', '3');
INSERT INTO `u_teacher` VALUES ('4', '刘老师', '4');
INSERT INTO `u_teacher` VALUES ('5', '肖老师', '5');
INSERT INTO `u_teacher` VALUES ('6', '毛老师', '6');
INSERT INTO `u_teacher` VALUES ('7', '孙老师', '7');

-- ----------------------------
-- Table structure for u_tsecretary
-- ----------------------------
DROP TABLE IF EXISTS `u_tsecretary`;
CREATE TABLE `u_tsecretary`  (
  `ID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of u_tsecretary
-- ----------------------------
INSERT INTO `u_tsecretary` VALUES ('11', '教秘', '11');

SET FOREIGN_KEY_CHECKS = 1;
