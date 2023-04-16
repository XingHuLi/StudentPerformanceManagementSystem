/*
 Navicat MySQL Data Transfer

 Source Server         : 3308
 Source Server Type    : MySQL
 Source Server Version : 50651
 Source Host           : localhost:3308
 Source Schema         : StudentSystemDao

 Target Server Type    : MySQL
 Target Server Version : 50651
 File Encoding         : 65001

 Date: 15/04/2023 11:12:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_Classe
-- ----------------------------
DROP TABLE IF EXISTS `tb_Classe`;
CREATE TABLE `tb_Classe`  (
                              `Classe` int(11) NOT NULL,
                              `Grade` int(11) NOT NULL,
                              `Major_ID` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
                              PRIMARY KEY (`Classe`, `Grade`, `Major_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_Classe
-- ----------------------------
INSERT INTO `tb_Classe` VALUES (1, 2015, '12');
INSERT INTO `tb_Classe` VALUES (1, 2015, '13');
INSERT INTO `tb_Classe` VALUES (1, 2015, '2');
INSERT INTO `tb_Classe` VALUES (2, 2015, '12');
INSERT INTO `tb_Classe` VALUES (2, 2015, '13');
INSERT INTO `tb_Classe` VALUES (2, 2015, '2');
INSERT INTO `tb_Classe` VALUES (3, 2015, '12');
INSERT INTO `tb_Classe` VALUES (3, 2015, '13');
INSERT INTO `tb_Classe` VALUES (3, 2015, '2');
INSERT INTO `tb_Classe` VALUES (4, 2015, '12');
INSERT INTO `tb_Classe` VALUES (4, 2015, '13');
INSERT INTO `tb_Classe` VALUES (4, 2015, '2');
INSERT INTO `tb_Classe` VALUES (5, 2015, '12');
INSERT INTO `tb_Classe` VALUES (5, 2015, '13');
INSERT INTO `tb_Classe` VALUES (5, 2015, '2');
INSERT INTO `tb_Classe` VALUES (6, 2015, '12');
INSERT INTO `tb_Classe` VALUES (6, 2015, '13');
INSERT INTO `tb_Classe` VALUES (6, 2015, '2');
INSERT INTO `tb_Classe` VALUES (7, 2015, '12');
INSERT INTO `tb_Classe` VALUES (7, 2015, '13');
INSERT INTO `tb_Classe` VALUES (7, 2015, '2');
INSERT INTO `tb_Classe` VALUES (8, 2015, '12');
INSERT INTO `tb_Classe` VALUES (8, 2015, '13');
INSERT INTO `tb_Classe` VALUES (8, 2015, '2');
INSERT INTO `tb_Classe` VALUES (9, 2015, '12');
INSERT INTO `tb_Classe` VALUES (9, 2015, '13');
INSERT INTO `tb_Classe` VALUES (9, 2015, '2');

-- ----------------------------
-- Table structure for tb_Course
-- ----------------------------
DROP TABLE IF EXISTS `tb_Course`;
CREATE TABLE `tb_Course`  (
                              `Course_Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                              `Major_ID` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
                              `Grade` int(11) NOT NULL,
                              PRIMARY KEY (`Course_Name`, `Major_ID`, `Grade`) USING BTREE,
                              INDEX `Major_ID`(`Major_ID`) USING BTREE,
                              CONSTRAINT `tb_Course_ibfk_1` FOREIGN KEY (`Major_ID`) REFERENCES `tb_Major` (`Major_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_Course
-- ----------------------------
INSERT INTO `tb_Course` VALUES ('数据结构', '12', 2015);
INSERT INTO `tb_Course` VALUES ('英语', '12', 2015);
INSERT INTO `tb_Course` VALUES ('软件工程导论', '12', 2015);
INSERT INTO `tb_Course` VALUES ('面向对象程序设计', '12', 2015);
INSERT INTO `tb_Course` VALUES ('高等数学', '12', 2015);
INSERT INTO `tb_Course` VALUES ('数据结构', '13', 2015);
INSERT INTO `tb_Course` VALUES ('英语', '13', 2015);
INSERT INTO `tb_Course` VALUES ('计算机网络', '13', 2015);
INSERT INTO `tb_Course` VALUES ('面向对象程序设计', '13', 2015);
INSERT INTO `tb_Course` VALUES ('高等数学', '13', 2015);
INSERT INTO `tb_Course` VALUES ('数据结构', '2', 2015);
INSERT INTO `tb_Course` VALUES ('英语', '2', 2015);
INSERT INTO `tb_Course` VALUES ('计算机组成原理', '2', 2015);
INSERT INTO `tb_Course` VALUES ('面向对象程序设计', '2', 2015);
INSERT INTO `tb_Course` VALUES ('高等数学', '2', 2015);

-- ----------------------------
-- Table structure for tb_Department
-- ----------------------------
DROP TABLE IF EXISTS `tb_Department`;
CREATE TABLE `tb_Department`  (
                                  `Department_ID` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
                                  `Department_Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                  PRIMARY KEY (`Department_ID`) USING BTREE,
                                  UNIQUE INDEX `Department_Name`(`Department_Name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_Department
-- ----------------------------
INSERT INTO `tb_Department` VALUES ('02', '中国语言文学系');
INSERT INTO `tb_Department` VALUES ('10', '公共管理系');
INSERT INTO `tb_Department` VALUES ('12', '化学与药学系');
INSERT INTO `tb_Department` VALUES ('08', '国际贸易与金融系');
INSERT INTO `tb_Department` VALUES ('13', '外语系');
INSERT INTO `tb_Department` VALUES ('09', '工商管理系');
INSERT INTO `tb_Department` VALUES ('11', '建筑学系');
INSERT INTO `tb_Department` VALUES ('06', '旅游管理系');
INSERT INTO `tb_Department` VALUES ('07', '机械与汽车工程系');
INSERT INTO `tb_Department` VALUES ('05', '物流与信息管理系');
INSERT INTO `tb_Department` VALUES ('03', '电子信息系');
INSERT INTO `tb_Department` VALUES ('01', '艺术系');
INSERT INTO `tb_Department` VALUES ('30', '计算机科学与技术系');
INSERT INTO `tb_Department` VALUES ('14', '音乐舞蹈学院');

-- ----------------------------
-- Table structure for tb_Major
-- ----------------------------
DROP TABLE IF EXISTS `tb_Major`;
CREATE TABLE `tb_Major`  (
                             `Major_ID` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
                             `Major_Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                             `Department_ID` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
                             PRIMARY KEY (`Major_ID`) USING BTREE,
                             UNIQUE INDEX `Major_Name`(`Major_Name`) USING BTREE,
                             INDEX `Department_ID`(`Department_ID`) USING BTREE,
                             CONSTRAINT `tb_Major_ibfk_1` FOREIGN KEY (`Department_ID`) REFERENCES `tb_Department` (`Department_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_Major
-- ----------------------------
INSERT INTO `tb_Major` VALUES ('01', '视觉传达设计专业', '01');
INSERT INTO `tb_Major` VALUES ('02', '动画专业', '01');
INSERT INTO `tb_Major` VALUES ('03', '汉语言文学专业', '02');
INSERT INTO `tb_Major` VALUES ('04', '广告学专业', '02');
INSERT INTO `tb_Major` VALUES ('05', '汉语国际教育专业', '02');
INSERT INTO `tb_Major` VALUES ('06', '电子信息科学与技术专业', '03');
INSERT INTO `tb_Major` VALUES ('07', '微电子科学与工程专业', '03');
INSERT INTO `tb_Major` VALUES ('08', '自动化专业', '03');
INSERT INTO `tb_Major` VALUES ('09', '通信工程专业', '03');
INSERT INTO `tb_Major` VALUES ('10', '测控技术与仪器专业', '03');
INSERT INTO `tb_Major` VALUES ('12', '软件工程专业', '30');
INSERT INTO `tb_Major` VALUES ('13', '网络工程专业', '30');
INSERT INTO `tb_Major` VALUES ('14', '物流管理专业', '05');
INSERT INTO `tb_Major` VALUES ('15', '信息管理与信息系统专业', '05');
INSERT INTO `tb_Major` VALUES ('16', '电子商务专业', '05');
INSERT INTO `tb_Major` VALUES ('17', '旅游管理专业', '06');
INSERT INTO `tb_Major` VALUES ('18', '机械设计制造及其自动化专业', '07');
INSERT INTO `tb_Major` VALUES ('19', '汽车服务工程专业', '07');
INSERT INTO `tb_Major` VALUES ('2', '计算机科学与技术专业', '30');
INSERT INTO `tb_Major` VALUES ('20', '车辆工程专业', '07');
INSERT INTO `tb_Major` VALUES ('21', '工业工程专业', '07');
INSERT INTO `tb_Major` VALUES ('22', '国际经济与贸易专业', '08');
INSERT INTO `tb_Major` VALUES ('23', '金融学专业', '08');
INSERT INTO `tb_Major` VALUES ('24', '工商管理专业', '09');
INSERT INTO `tb_Major` VALUES ('25', '市场营销专业', '09');
INSERT INTO `tb_Major` VALUES ('26', '人力资源管理专业', '09');
INSERT INTO `tb_Major` VALUES ('27', '会计学专业', '09');
INSERT INTO `tb_Major` VALUES ('28', '行政管理专业', '10');
INSERT INTO `tb_Major` VALUES ('29', '劳动与社会保障专业', '10');
INSERT INTO `tb_Major` VALUES ('30', '社会工作专业', '10');
INSERT INTO `tb_Major` VALUES ('31', '建筑学专业', '11');
INSERT INTO `tb_Major` VALUES ('32', '城乡规划专业', '11');
INSERT INTO `tb_Major` VALUES ('33', '应用化学专业', '12');
INSERT INTO `tb_Major` VALUES ('34', '制药工程(生物制药)专业', '12');
INSERT INTO `tb_Major` VALUES ('35', '药物制剂专业', '12');
INSERT INTO `tb_Major` VALUES ('36', '中药学专业', '12');
INSERT INTO `tb_Major` VALUES ('37', '化学工程与工艺专业', '12');
INSERT INTO `tb_Major` VALUES ('38', '英语专业', '13');
INSERT INTO `tb_Major` VALUES ('39', '日语专业', '13');
INSERT INTO `tb_Major` VALUES ('40', '朝鲜语（韩国语）专业', '13');
INSERT INTO `tb_Major` VALUES ('41', '音乐表演专业', '14');
INSERT INTO `tb_Major` VALUES ('42', '舞蹈编导专业', '14');

-- ----------------------------
-- Table structure for tb_Score
-- ----------------------------
DROP TABLE IF EXISTS `tb_Score`;
CREATE TABLE `tb_Score`  (
                             `Student_Id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
                             `Student_Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                             `Course_Name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                             `Score` decimal(4, 1) NULL DEFAULT NULL,
                             PRIMARY KEY (`Course_Name`, `Student_Id`) USING BTREE,
                             INDEX `Student_Id`(`Student_Id`) USING BTREE,
                             CONSTRAINT `tb_Score_ibfk_1` FOREIGN KEY (`Student_Id`) REFERENCES `tb_Student` (`Student_Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
                             CONSTRAINT `tb_Score_ibfk_2` FOREIGN KEY (`Course_Name`) REFERENCES `tb_Course` (`Course_Name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_Score
-- ----------------------------
INSERT INTO `tb_Score` VALUES ('2015302350', '杨志千', '数据结构', 100.0);
INSERT INTO `tb_Score` VALUES ('2015302357', '张衡', '数据结构', 90.0);
INSERT INTO `tb_Score` VALUES ('2015302363', '章国瑞', '数据结构', 80.0);
INSERT INTO `tb_Score` VALUES ('2015302417', '陈梦杰', '数据结构', 70.0);
INSERT INTO `tb_Score` VALUES ('2015302429', '高杰', '数据结构', 60.0);
INSERT INTO `tb_Score` VALUES ('2015302440', '李兴虎', '数据结构', 66.0);
INSERT INTO `tb_Score` VALUES ('2015302350', '杨志千', '英语', 100.0);
INSERT INTO `tb_Score` VALUES ('2015302357', '张衡', '英语', 90.0);
INSERT INTO `tb_Score` VALUES ('2015302363', '章国瑞', '英语', 80.0);
INSERT INTO `tb_Score` VALUES ('2015302417', '陈梦杰', '英语', 70.0);
INSERT INTO `tb_Score` VALUES ('2015302429', '高杰', '英语', 60.0);
INSERT INTO `tb_Score` VALUES ('2015302440', '李兴虎', '英语', 66.0);
INSERT INTO `tb_Score` VALUES ('2015302350', '杨志千', '计算机组成原理', 100.0);
INSERT INTO `tb_Score` VALUES ('2015302357', '张衡', '计算机组成原理', 90.0);
INSERT INTO `tb_Score` VALUES ('2015302363', '章国瑞', '计算机组成原理', 80.0);
INSERT INTO `tb_Score` VALUES ('2015302417', '陈梦杰', '计算机组成原理', 70.0);
INSERT INTO `tb_Score` VALUES ('2015302429', '高杰', '计算机组成原理', 60.0);
INSERT INTO `tb_Score` VALUES ('2015302440', '李兴虎', '计算机组成原理', 66.0);
INSERT INTO `tb_Score` VALUES ('2015302350', '杨志千', '面向对象程序设计', 100.0);
INSERT INTO `tb_Score` VALUES ('2015302357', '张衡', '面向对象程序设计', 90.0);
INSERT INTO `tb_Score` VALUES ('2015302363', '章国瑞', '面向对象程序设计', 80.0);
INSERT INTO `tb_Score` VALUES ('2015302417', '陈梦杰', '面向对象程序设计', 70.0);
INSERT INTO `tb_Score` VALUES ('2015302429', '高杰', '面向对象程序设计', 60.0);
INSERT INTO `tb_Score` VALUES ('2015302440', '李兴虎', '面向对象程序设计', 90.0);
INSERT INTO `tb_Score` VALUES ('2015302350', '杨志千', '高等数学', 100.0);
INSERT INTO `tb_Score` VALUES ('2015302357', '张衡', '高等数学', 90.0);
INSERT INTO `tb_Score` VALUES ('2015302363', '章国瑞', '高等数学', 80.0);
INSERT INTO `tb_Score` VALUES ('2015302417', '陈梦杰', '高等数学', 70.0);
INSERT INTO `tb_Score` VALUES ('2015302429', '高杰', '高等数学', 60.0);
INSERT INTO `tb_Score` VALUES ('2015302440', '李兴虎', '高等数学', 66.0);

-- ----------------------------
-- Table structure for tb_Student
-- ----------------------------
DROP TABLE IF EXISTS `tb_Student`;
CREATE TABLE `tb_Student`  (
                               `Student_Id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
                               `Student_Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                               `Student_Sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '男',
                               `Grade` int(11) NOT NULL,
                               `Classe` int(11) NOT NULL,
                               `Major_ID` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
                               `Major_Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                               `Department_ID` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
                               `Department_Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                               PRIMARY KEY (`Student_Id`) USING BTREE,
                               INDEX `Department_ID`(`Department_ID`) USING BTREE,
                               INDEX `Major_ID`(`Major_ID`) USING BTREE,
                               INDEX `Department_Name`(`Department_Name`) USING BTREE,
                               INDEX `Major_Name`(`Major_Name`) USING BTREE,
                               CONSTRAINT `tb_Student_ibfk_1` FOREIGN KEY (`Department_ID`) REFERENCES `tb_Department` (`Department_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
                               CONSTRAINT `tb_Student_ibfk_2` FOREIGN KEY (`Major_ID`) REFERENCES `tb_Major` (`Major_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
                               CONSTRAINT `tb_Student_ibfk_3` FOREIGN KEY (`Department_Name`) REFERENCES `tb_Department` (`Department_Name`) ON DELETE RESTRICT ON UPDATE RESTRICT,
                               CONSTRAINT `tb_Student_ibfk_4` FOREIGN KEY (`Major_Name`) REFERENCES `tb_Major` (`Major_Name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_Student
-- ----------------------------
INSERT INTO `tb_Student` VALUES ('2015302350', '杨志千', '男', 2015, 3, '2', '计算机科学与技术专业', '30', '计算机科学与技术系');
INSERT INTO `tb_Student` VALUES ('2015302357', '张衡', '男', 2015, 3, '2', '计算机科学与技术专业', '30', '计算机科学与技术系');
INSERT INTO `tb_Student` VALUES ('2015302363', '章国瑞', '男', 2015, 3, '2', '计算机科学与技术专业', '30', '计算机科学与技术系');
INSERT INTO `tb_Student` VALUES ('2015302417', '陈梦杰', '男', 2015, 4, '2', '计算机科学与技术专业', '30', '计算机科学与技术系');
INSERT INTO `tb_Student` VALUES ('2015302429', '高杰', '男', 2015, 4, '2', '计算机科学与技术专业', '30', '计算机科学与技术系');
INSERT INTO `tb_Student` VALUES ('2015302440', '李兴虎', '男', 2015, 4, '2', '计算机科学与技术专业', '30', '计算机科学与技术系');

-- ----------------------------
-- Table structure for tb_User
-- ----------------------------
DROP TABLE IF EXISTS `tb_User`;
CREATE TABLE `tb_User`  (
                            `User_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                            `Password_` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
                            `IsLogin` bit(1) NOT NULL DEFAULT b'0',
                            PRIMARY KEY (`User_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_User
-- ----------------------------
INSERT INTO `tb_User` VALUES ('lxh', '1', b'0');
INSERT INTO `tb_User` VALUES ('李兴虎', 'admin', b'1');

-- ----------------------------
-- Triggers structure for table tb_Student
-- ----------------------------
DROP TRIGGER IF EXISTS `trg_DeleteStudent`;
delimiter ;;
CREATE TRIGGER `trg_DeleteStudent` BEFORE DELETE ON `tb_Student` FOR EACH ROW BEGIN
    -- 删除学生在成绩表中的数据
    DELETE FROM tb_Score WHERE Student_Id = OLD.Student_Id;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
