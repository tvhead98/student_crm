-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: crm
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `applicant`
--

DROP TABLE IF EXISTS `applicant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applicant` (
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `region` varchar(255) DEFAULT NULL,
  `graduation_school` varchar(255) DEFAULT NULL,
  `test_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `transfer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `remarks` text,
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant`
--

LOCK TABLES `applicant` WRITE;
/*!40000 ALTER TABLE `applicant` DISABLE KEYS */;
INSERT INTO `applicant` VALUES ('gue_0001','四川省','四川省绵阳中学','0001','管理科学与工程系','0',''),('gue_0002','福建省','厦门外国语学校','0002','化学','0','无'),('gue_0003','湖南省','湖南师范大学附属中学','0003','生物','0','无'),('gue_0004','香港','中华基督教会公理书院','0004','历史','1','无'),('gue_0005','青海省','青海湟川中学','0005','政治','1','无'),('gue_0006','广东省','广东实验中学','0006','地理','0','无');
/*!40000 ALTER TABLE `applicant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_test`
--

DROP TABLE IF EXISTS `applicant_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applicant_test` (
  `test_number` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `score` int DEFAULT NULL,
  `id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_test`
--

LOCK TABLES `applicant_test` WRITE;
/*!40000 ALTER TABLE `applicant_test` DISABLE KEYS */;
INSERT INTO `applicant_test` VALUES ('0001','2021.06.20 14:00-16:00','数学','南强二110','成绩已录入',94,NULL),('0001','2021.06.21 14:00-16:00','英语','南强二208','成绩未录入',NULL,NULL),('0001','2021.06.25 8:00-10:00','物理','南强二410','考试未完成',NULL,NULL),('0001','2021.06.23 8:00-10:00','语文','南强二301','成绩已录入',85,NULL),('0002','2021.06.25 8:00-10:00','化学','南强二201','考试未完成',NULL,NULL),('0003','2021.06.25 8:00-10:00','生物','南强二203','考试未完成',NULL,NULL),('0004','2021.06.25 8:00-10:00','历史','南强二307','考试未完成',NULL,NULL),('0005','2021.06.25 8:00-10:00','政治','南强二305','考试未完成',NULL,NULL),('0006','2021.06.25 8:00-10:00','地理','南强二409','考试未完成',NULL,NULL),('0002','2021.06.20 14:00-16:00','数学','南强二110','成绩已录入',93,NULL),('0003','2021.06.20 14:00-16:00','数学','南强二110','成绩已录入',96,NULL),('0004','2021.06.20 14:00-16:00','数学','南强二110','成绩已录入',88,NULL),('0005','2021.06.20 14:00-16:00','数学','南强二110','成绩已录入',89,NULL),('0006','2021.06.20 14:00-16:00','数学','南强二110','成绩已录入',90,NULL),('0002','2021.06.21 14:00-16:00','英语','南强二208','成绩未录入',NULL,NULL),('0003','2021.06.21 14:00-16:00','英语','南强二208','成绩未录入',NULL,NULL),('0004','2021.06.21 14:00-16:00','英语','南强二208','成绩未录入',NULL,NULL),('0005','2021.06.21 14:00-16:00','英语','南强二208','成绩未录入',NULL,NULL),('0006','2021.06.21 14:00-16:00','英语','南强二208','成绩未录入',NULL,NULL),('0002','2021.06.23 8:00-10:00','语文','南强二301','成绩已录入',87,NULL),('0003','2021.06.23 8:00-10:00','语文','南强二301','成绩已录入',88,NULL),('0004','2021.06.23 8:00-10:00','语文','南强二301','成绩已录入',91,NULL),('0005','2021.06.23 8:00-10:00','语文','南强二301','成绩已录入',89,NULL),('0006','2021.06.23 8:00-10:00','语文','南强二301','成绩已录入',92,NULL);
/*!40000 ALTER TABLE `applicant_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add user',1,'add_user'),(2,'Can change user',1,'change_user'),(3,'Can delete user',1,'delete_user'),(4,'Can view user',1,'view_user'),(5,'Can add course',2,'add_course'),(6,'Can change course',2,'change_course'),(7,'Can delete course',2,'delete_course'),(8,'Can view course',2,'view_course'),(9,'Can add course info',3,'add_courseinfo'),(10,'Can change course info',3,'change_courseinfo'),(11,'Can delete course info',3,'delete_courseinfo'),(12,'Can view course info',3,'view_courseinfo'),(13,'Can add course program',4,'add_courseprogram'),(14,'Can change course program',4,'change_courseprogram'),(15,'Can delete course program',4,'delete_courseprogram'),(16,'Can view course program',4,'view_courseprogram'),(17,'Can add course score',5,'add_coursescore'),(18,'Can change course score',5,'change_coursescore'),(19,'Can delete course score',5,'delete_coursescore'),(20,'Can view course score',5,'view_coursescore'),(21,'Can add course test',6,'add_coursetest'),(22,'Can change course test',6,'change_coursetest'),(23,'Can delete course test',6,'delete_coursetest'),(24,'Can view course test',6,'view_coursetest'),(25,'Can add graduate edu',7,'add_graduateedu'),(26,'Can change graduate edu',7,'change_graduateedu'),(27,'Can delete graduate edu',7,'delete_graduateedu'),(28,'Can view graduate edu',7,'view_graduateedu'),(29,'Can add graduate job',8,'add_graduatejob'),(30,'Can change graduate job',8,'change_graduatejob'),(31,'Can delete graduate job',8,'delete_graduatejob'),(32,'Can view graduate job',8,'view_graduatejob'),(33,'Can add graduate return',9,'add_graduatereturn'),(34,'Can change graduate return',9,'change_graduatereturn'),(35,'Can delete graduate return',9,'delete_graduatereturn'),(36,'Can view graduate return',9,'view_graduatereturn'),(37,'Can add student basic',10,'add_studentbasic'),(38,'Can change student basic',10,'change_studentbasic'),(39,'Can delete student basic',10,'delete_studentbasic'),(40,'Can view student basic',10,'view_studentbasic'),(41,'Can add student course',11,'add_studentcourse'),(42,'Can change student course',11,'change_studentcourse'),(43,'Can delete student course',11,'delete_studentcourse'),(44,'Can view student course',11,'view_studentcourse'),(45,'Can add log entry',12,'add_logentry'),(46,'Can change log entry',12,'change_logentry'),(47,'Can delete log entry',12,'delete_logentry'),(48,'Can view log entry',12,'view_logentry'),(49,'Can add permission',13,'add_permission'),(50,'Can change permission',13,'change_permission'),(51,'Can delete permission',13,'delete_permission'),(52,'Can view permission',13,'view_permission'),(53,'Can add group',14,'add_group'),(54,'Can change group',14,'change_group'),(55,'Can delete group',14,'delete_group'),(56,'Can view group',14,'view_group'),(57,'Can add user',15,'add_user'),(58,'Can change user',15,'change_user'),(59,'Can delete user',15,'delete_user'),(60,'Can view user',15,'view_user'),(61,'Can add content type',16,'add_contenttype'),(62,'Can change content type',16,'change_contenttype'),(63,'Can delete content type',16,'delete_contenttype'),(64,'Can view content type',16,'view_contenttype'),(65,'Can add session',17,'add_session'),(66,'Can change session',17,'change_session'),(67,'Can delete session',17,'delete_session'),(68,'Can view session',17,'view_session'),(69,'Can add applicant',18,'add_applicant'),(70,'Can change applicant',18,'change_applicant'),(71,'Can delete applicant',18,'delete_applicant'),(72,'Can view applicant',18,'view_applicant'),(73,'Can add applicant_test',19,'add_applicant_test'),(74,'Can change applicant_test',19,'change_applicant_test'),(75,'Can delete applicant_test',19,'delete_applicant_test'),(76,'Can view applicant_test',19,'view_applicant_test');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` int NOT NULL,
  `teacher` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `credit` varchar(255) DEFAULT NULL,
  `course_name` varchar(255) NOT NULL,
  PRIMARY KEY (`course_id`,`course_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (111,'彭丽芳老师','周三下午7-8节','嘉庚二-203','专业选修','2','信息系统分析与设计'),(112,'陈继光老师','周二上午3-4节','嘉庚二-208','专业选修','2','网络经济学'),(113,'韩水华老师','周一上午3-4节','嘉庚二-203','专业选修','2','电子商务技术'),(114,'贾艳丽老师','周四晚上9-11节','嘉庚二-203','公共必修','3','高等心理学'),(115,'刘斌老师','周一上午2-4节','嘉庚二-201','公共必修','3','高等管理学'),(116,'管科系老师','周五下午5-6节','嘉庚一-507','公共必修','2','管科与技经写作'),(117,'张扬老师','周二上午3-4节','嘉庚二-203','专业必修','3','企业财务分析'),(118,'李山石老师','周四上午7-8节','嘉庚二-209','专业选修','2','旅游企业战略管理'),(119,'李慧颖老师','周五上午1-2节','嘉庚二--208','专业选修','2','互联网金融');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_info`
--

DROP TABLE IF EXISTS `course_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_info` (
  `id` int NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `course_id` int NOT NULL,
  `course_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `course_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `course_place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `course_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `course_teacher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `course_credit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`,`course_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_info`
--

LOCK TABLES `course_info` WRITE;
/*!40000 ALTER TABLE `course_info` DISABLE KEYS */;
INSERT INTO `course_info` VALUES (1,'stu_20001',111,'信息系统分析与设计','周三下午7-8节','嘉庚二-203','选修','彭丽芳老师','2'),(2,'stu_20001',112,'网络经济学','周二上午3-4节','嘉庚二-208','选修','陈继光老师','2'),(3,'stu_20001',113,'电子商务技术','周一上午3-4节','嘉庚二-203','选修','韩水华老师','2'),(4,'stu_20001',114,'高等心理学','周四晚上9-11节','嘉庚二-203','必修','贾晓丽','3'),(5,'stu_20002',111,'信息系统分析与设计','周三下午7-8节','嘉庚二-203','选修','彭丽芳老师','2'),(6,'stu_20002',112,'网络经济学','周二上午3-4节','嘉庚二-208','选修','陈继光老师','2'),(7,'stu_20002',113,'电子商务技术','周一上午3-4节','嘉庚二-203','选修','韩水华老师','2'),(8,'stu_20002',114,'高等心理学','周四晚上9-11节','嘉庚二-203','必修','贾晓丽','3'),(9,'stu_20003',111,'信息系统分析与设计','周三下午7-8节','嘉庚二-203','选修','彭丽芳老师','2'),(10,'stu_20004',112,'网络经济学','周二上午3-4节','嘉庚二-208','选修','陈继光老师','2'),(11,'stu_20003',115,'高等管理学','周一上午1-3节','嘉庚二-201','必修','刘斌老师','3'),(12,'stu_20004',115,'高等管理学','周一上午1-3节','嘉庚二-201','必修','刘斌老师','3'),(13,'stu_20003',117,'企业财务分析','周二上午3-4节','嘉庚二-201','必修','张扬老师','3'),(14,'stu_20004',118,'旅游企业战略管理','周四上午7-8节','嘉庚二-209','选修','李山石老师','2'),(15,'stu_20003',113,'电子商务技术','周一上午3-4节','嘉庚二-203','选修','韩水华老师','2'),(16,'stu_20004',119,'互联网金融','周五上午1-2节','嘉庚二--208','选修','李慧颖老师','2');
/*!40000 ALTER TABLE `course_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_program`
--

DROP TABLE IF EXISTS `course_program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_program` (
  `id` bigint NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_id` int NOT NULL,
  `course_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_rank` varchar(255) NOT NULL,
  `course_length` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_choice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_credit` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_program`
--

LOCK TABLES `course_program` WRITE;
/*!40000 ALTER TABLE `course_program` DISABLE KEYS */;
INSERT INTO `course_program` VALUES (1,'stu_20001',111,'信息系统分析与设计','选修','管理科学系','48学时','必选',2),(2,'stu_20001',112,'网络经济学','选修','管理科学系','32学时','必选',2),(3,'stu_20001',113,'电子商务技术','选修','管理科学系','32学时','必选',2),(4,'stu_20001',115,'高等管理学','必修','管理学院','48学时','必选',3),(5,'stu_20002',111,'信息系统分析与设计','选修','管理科学系','48学时','必选',2),(6,'stu_20002',112,'网络经济学','选修','管理科学系','32学时','必选',2),(7,'stu_20002',113,'电子商务技术','选修','管理科学系','32学时','必选',2),(8,'stu_20002',115,'高等管理学','必修','管理学院','48学时','必选',3),(9,'stu_20003',115,'高等管理学','必修','管理学院','48学时','必选',3),(10,'stu_20003',117,'企业财务分析','必修','会计系','32学时','必选',3),(11,'stu_20003',113,'电子商务技术','选修','管理科学系','32学时','非必选',2),(12,'stu_20003',111,'信息系统分析与设计','选修','管理科学系','48学时','非必选',2),(13,'stu_20004',115,'高等管理学','必修','管理学院','48学时','必选',3),(14,'stu_20004',118,'旅游企业战略管理','选修','旅游管理系','32学时','必选',2),(15,'stu_20004',119,'互联网金融','选修','旅游管理系','32学时','必选',2),(16,'stu_20004',112,'网络经济学','选修','管理科学系','32学时','非必选',2);
/*!40000 ALTER TABLE `course_program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_score`
--

DROP TABLE IF EXISTS `course_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_score` (
  `id` bigint NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `course_id` int NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_type` varchar(255) NOT NULL,
  `course_length` varchar(255) NOT NULL,
  `course_credit` varchar(255) NOT NULL,
  `course_score` varchar(255) NOT NULL,
  `course_ranking` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_score`
--

LOCK TABLES `course_score` WRITE;
/*!40000 ALTER TABLE `course_score` DISABLE KEYS */;
INSERT INTO `course_score` VALUES (1,'stu_20001',111,'信息系统分析与设计','选修','48学时','2','88','12/36'),(2,'stu_20001',112,'网络经济学','选修','32学时','2','83','14/24'),(3,'stu_20001',113,'电子商务技术','选修','32学时','2','90','4/34'),(4,'stu_20001',115,'高等管理学','必修','48学时','3','93','13/105'),(5,'stu_20002',111,'信息系统分析与设计','选修','48学时','2','92','1/36'),(6,'stu_20002',112,'网络经济学','选修','32学时','2','95','2/36'),(7,'stu_20002',113,'电子商务技术','选修','32学时','2','88','14/34'),(8,'stu_20002',115,'高等管理学','必修','48学时','3','91','23/105'),(9,'stu_20003',115,'高等管理学','必修','48学时','3','96','4/105'),(10,'stu_20003',117,'企业财务分析','必修','32学时','3','89','24/78'),(11,'stu_20003',113,'电子商务技术','选修','32学时','2','92','2/34'),(12,'stu_20003',111,'信息系统分析与设计','选修','48学时','2','88','12/36'),(13,'stu_20004',115,'高等管理学','必修','48学时','3','90','45/105'),(14,'stu_20004',118,'旅游企业战略管理','选修','32学时','2','90','4/20'),(15,'stu_20004',119,'互联网金融','选修','32学时','2','96','1/20'),(16,'stu_20004',112,'网络经济学','选修','32学时','2','92','5/24');
/*!40000 ALTER TABLE `course_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_test`
--

DROP TABLE IF EXISTS `course_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_test` (
  `id` bigint NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_id` int NOT NULL,
  `course_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_credit` int NOT NULL,
  `course_teacher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_test`
--

LOCK TABLES `course_test` WRITE;
/*!40000 ALTER TABLE `course_test` DISABLE KEYS */;
INSERT INTO `course_test` VALUES (1,'stu_20001',111,'信息系统分析与设计','第十七周：周三下午7-8节','嘉庚二-203','选修',2,'彭丽芳老师'),(2,'stu_20001',112,'网络经济学','第十八周：周二上午3-4节','嘉庚二-203','选修',2,'陈继光老师'),(3,'stu_20001',113,'电子商务技术','第十七周：周一上午3-4节','嘉庚二-203','选修',2,'韩水华老师'),(4,'stu_20001',114,'高等心理学','第十六周：周四晚上9-11节','嘉庚二-203','选修',2,'贾晓丽'),(5,'stu_20002',111,'信息系统分析与设计','第十七周：周三下午7-8节','嘉庚二-203','选修',2,'彭丽芳老师'),(6,'stu_20002',112,'网络经济学','第十八周：周二上午3-4节','嘉庚二-208','选修',2,'陈继光老师'),(7,'stu_20002',113,'电子商务技术','第十七周：周一上午3-4节','嘉庚二-203','选修',2,'韩水华老师'),(8,'stu_20002',114,'高等心理学','第十六周：周四晚上9-11节','嘉庚二-203','必修',3,'贾晓丽'),(9,'stu_20003',111,'信息系统分析与设计','第十七周：周三下午7-8节','嘉庚二-203','选修',2,'彭丽芳老师'),(10,'stu_20004',112,'网络经济学','第十八周：周二上午3-4节','嘉庚二-208','选修',2,'陈继光老师'),(11,'stu_20003',115,'高等管理学','第十七周：周一上午1-3节','嘉庚二-201','必修',3,'刘斌老师'),(12,'stu_20004',115,'高等管理学','第十七周：周一上午1-3节','嘉庚二-201','必修',3,'刘斌老师'),(13,'stu_20003',117,'企业财务分析','第十六周：周二上午3-4节','嘉庚二-201','必修',3,'张扬老师'),(14,'stu_20004',118,'旅游企业战略管理','第十七周：周四上午7-8节','嘉庚二-209','选修',2,'李山石老师'),(15,'stu_20003',113,'电子商务技术','第十七周：周一上午3-4节','嘉庚二-203','选修',2,'韩水华老师'),(16,'stu_20004',119,'互联网金融','第十八周：周五上午1-2节','嘉庚二--208','选修',2,'李慧颖老师');
/*!40000 ALTER TABLE `course_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (12,'admin','logentry'),(14,'auth','group'),(13,'auth','permission'),(15,'auth','user'),(16,'contenttypes','contenttype'),(17,'sessions','session'),(18,'system','applicant'),(19,'system','applicant_test'),(2,'system','course'),(3,'system','courseinfo'),(4,'system','courseprogram'),(5,'system','coursescore'),(6,'system','coursetest'),(7,'system','graduateedu'),(8,'system','graduatejob'),(9,'system','graduatereturn'),(10,'system','studentbasic'),(11,'system','studentcourse'),(1,'system','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-06-20 17:11:16.073251'),(2,'auth','0001_initial','2021-06-20 17:11:17.743590'),(3,'admin','0001_initial','2021-06-20 17:11:18.245705'),(4,'admin','0002_logentry_remove_auto_add','2021-06-20 17:11:18.261334'),(5,'admin','0003_logentry_add_action_flag_choices','2021-06-20 17:11:18.292593'),(6,'contenttypes','0002_remove_content_type_name','2021-06-20 17:11:18.599748'),(7,'auth','0002_alter_permission_name_max_length','2021-06-20 17:11:18.735805'),(8,'auth','0003_alter_user_email_max_length','2021-06-20 17:11:19.167900'),(9,'auth','0004_alter_user_username_opts','2021-06-20 17:11:19.191897'),(10,'auth','0005_alter_user_last_login_null','2021-06-20 17:11:19.363936'),(11,'auth','0006_require_contenttypes_0002','2021-06-20 17:11:19.363936'),(12,'auth','0007_alter_validators_add_error_messages','2021-06-20 17:11:19.395993'),(13,'auth','0008_alter_user_username_max_length','2021-06-20 17:11:19.600875'),(14,'auth','0009_alter_user_last_name_max_length','2021-06-20 17:11:19.772823'),(15,'auth','0010_alter_group_name_max_length','2021-06-20 17:11:20.040545'),(16,'auth','0011_update_proxy_permissions','2021-06-20 17:11:20.056197'),(17,'auth','0012_alter_user_first_name_max_length','2021-06-20 17:11:20.212488'),(18,'sessions','0001_initial','2021-06-20 17:11:20.306246'),(19,'system','0001_initial','2021-06-20 17:11:20.384419'),(20,'system','0002_auto_20210626_1205','2021-06-26 12:06:08.556954'),(21,'system','0003_auto_20210626_1214','2021-06-26 12:15:06.055210');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('00vsqdmzmv59ax9evwyd43qam57ozx6s','eyJpc19sb2dpbiI6dHJ1ZSwidXNlcm5hbWUiOiIxMjM0In0:1lwz09:C7tuCI103zg47XvqE6T7Fu8WROHMe8YcyjKQfYY-mnA','2021-07-10 11:29:01.824663'),('05poa141eabzuuzehasfz9kz05aykrnx','eyJpc19sb2dpbiI6dHJ1ZSwidXNlcm5hbWUiOiJndWVfMDAwMSJ9:1lxSOl:9_EB7LSbsuqfL9WbfeEN5YMptk8NNw7yUw4IC1zQsks','2021-07-11 18:52:23.063679'),('6fr3mu8o1ona7sriqqjp2m2fk60xokka','eyJpc19sb2dpbiI6dHJ1ZSwidXNlcm5hbWUiOiIxMjM0In0:1lx3RV:eHvce0TMXBjr9g5tzqTEAz23ECFOA8Qp98dfipR1ZNw','2021-07-10 16:13:33.622399'),('ag62jnvh5lkma10h2vej1djg53rb98jc','eyJpc19sb2dpbiI6dHJ1ZSwidXNlcm5hbWUiOiJzdHVfMjAwMDEifQ:1lxPRo:tGZIq_1vnuxFWapR-5bur09_L72dSnu0DWSiFQXnFIs','2021-07-11 15:43:20.697517'),('cyr6f7l8yv4eo2kxu969je0olnumpp7f','eyJpc19sb2dpbiI6dHJ1ZSwidXNlcm5hbWUiOiIxMjM0In0:1lx3Qm:1tzrgRW5QVy8gO0DfZT1gVXE9G5KtYdEs2MBAzlPnPY','2021-07-10 16:12:48.700802'),('d837w5wtmkdy84u1j8luohjjn6w0o8iu','eyJpc19sb2dpbiI6dHJ1ZSwidXNlcm5hbWUiOiJhbHVtbmlfcXloIn0:1lxOgE:ypkLnrORYQTT2eQF2--k47LFpDPmfAitM_PqQ_0ayhc','2021-07-11 14:54:10.262159'),('ep9ppfrjl1drqz6jbivuapf5u78tf80o','eyJpc19sb2dpbiI6dHJ1ZSwidXNlcm5hbWUiOiJzdHVfMjAwMDEifQ:1lxPqj:nq8BW3PwcnE9vAYxyivpPoJidPlDWDjPkbVr0i7H-kg','2021-07-11 16:09:05.576210'),('fqgllf4e0kxg4e0sblqisz11x5ffqaor','eyJpc19sb2dpbiI6dHJ1ZSwidXNlcm5hbWUiOiIxMjM0In0:1lwOWE:g0GJIc6RHb1dl2RsF2E6raa9QaFf2LzaJs19obllYT8','2021-07-08 20:31:42.611035'),('jyr062fplofwqgsotlbnh5l6pyl96ajv','eyJpc19sb2dpbiI6dHJ1ZSwidXNlcm5hbWUiOiIxMjM0In0:1lx4Az:PpUXLOGefRukfFs7ThClcQHUVMU3V4nKOn9DSoaOxqI','2021-07-10 17:00:33.921508'),('modap965jtwmvuzhf27uhphb5ur89xp2','eyJpc19sb2dpbiI6dHJ1ZSwidXNlcm5hbWUiOiIxMjM0In0:1lx3PG:orcXmCjZ7RgheT9DizuO9xLj8HFPbmNPkAbZeLHvadg','2021-07-10 16:11:14.447414'),('queyq3okd1urc9cbzngzjn3vm6mtul7b','eyJpc19sb2dpbiI6dHJ1ZSwidXNlcm5hbWUiOiJzdHVfMjAwMDEifQ:1lxPZ1:N09rSfZCcCWLR9Tj0TMwF3pZ-_a-lRCo_CASYWoQwWA','2021-07-11 15:50:47.311829'),('rm5jc8updrlk5x41d8k54zjbir894vl2','eyJpc19sb2dpbiI6dHJ1ZSwidXNlcm5hbWUiOiJhbHVtbmlfcXloIn0:1lxPh5:qeR7rQ92Etwm46lhsMeg-PO44nt-5eUCuPhT5n1yZEQ','2021-07-11 15:59:07.644771'),('sapyot102p3tkizsefdcfeoldawfe84b','eyJpc19sb2dpbiI6dHJ1ZSwidXNlcm5hbWUiOiJsaXVfeWFuZyJ9:1lxR7d:MlmwtMcxFMHlihAsR_8M9wuV-5GBth4mfI1fwet_noA','2021-07-11 17:30:37.468233'),('t4g2yols9h6dl4e6ftzsog8ppi1z9i8u','eyJpc19sb2dpbiI6dHJ1ZSwidXNlcm5hbWUiOiJzdHVfMjAwMDEifQ:1lxMaf:uChdf26BK6hfArN6U87khx7jyoGQ0tzpnXYQRyC0i4Y','2021-07-11 12:40:17.486751'),('tgk12n9ij7csihimyt676aakc031z11g','eyJpc19sb2dpbiI6dHJ1ZSwidXNlcm5hbWUiOiIxMjM0In0:1lx45W:RmT31nyq8DITyoy7gfdE2FaMkNkp3UXTtca-FkergOY','2021-07-10 16:54:54.680454'),('u7rws0ngjio5725uxg92qnv9uzp59hbq','eyJpc19sb2dpbiI6dHJ1ZSwidXNlcm5hbWUiOiIxMjM0In0:1lx3Y7:o8XSBvRSoeCYhTbT49Bq3iVco_DfZKYQCW3CuC90h24','2021-07-10 16:20:23.319822'),('v2dahnz1zb4lhqonsa8pnp37fuzzitkm','eyJpc19sb2dpbiI6dHJ1ZSwidXNlcm5hbWUiOiIxMjM0In0:1lwb89:qikGk2vTpTFWlhmFuKFfgPjiCukdDZpRlbDC-QmlytU','2021-07-09 09:59:41.570556'),('vyr0bndgtgcf87cih6jr3fmm3s8vu9x3','eyJpc19sb2dpbiI6dHJ1ZSwidXNlcm5hbWUiOiJzdHVfMjAwMDEifQ:1lxMob:c9yM4bCSIUWiyo0bY8L3GsrH1_BUGRcIXJyRnHV3dfo','2021-07-11 12:54:41.492489'),('wv1nav4lf9rlcqyjslss5ytja6msp89w','eyJpc19sb2dpbiI6dHJ1ZSwidXNlcm5hbWUiOiIxMjM0In0:1lv9t2:IeJoBJ45VKuf486GUQb_vBfbI4zSo-h2_TNv_VAR3yA','2021-07-05 10:42:08.065600'),('x729runtri7b5xd2kb1uqvsb7izvbyx5','eyJpc19sb2dpbiI6dHJ1ZSwidXNlcm5hbWUiOiIxMjM0In0:1lx22S:GLgFmLhqvbD-HeDdB7PorHRHP8lh3sIP4xm8tH-BYfk','2021-07-10 14:43:36.495311'),('zg09f8sb44un5w27csig9epec0osdpfz','eyJpc19sb2dpbiI6dHJ1ZSwidXNlcm5hbWUiOiJhYmMifQ:1lx3Q6:dEds4NUOsyQB0v2UNDuR8TaScFr3l_gBd7hsQhvYrEQ','2021-07-10 16:12:06.671382');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graduate_edu`
--

DROP TABLE IF EXISTS `graduate_edu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `graduate_edu` (
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `further_school` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `further_major` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `further_degree` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `further_full_part_time` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `further_start_time` date DEFAULT NULL,
  `further_graduate_time` date DEFAULT NULL,
  PRIMARY KEY (`user_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graduate_edu`
--

LOCK TABLES `graduate_edu` WRITE;
/*!40000 ALTER TABLE `graduate_edu` DISABLE KEYS */;
INSERT INTO `graduate_edu` VALUES ('alumni_js','清华大学','管理科学与工程','博士后','是','2021-06-03','2021-06-30');
/*!40000 ALTER TABLE `graduate_edu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graduate_job`
--

DROP TABLE IF EXISTS `graduate_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `graduate_job` (
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `graduate_employer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `graduate_job_position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `graduate_job_start_time` date DEFAULT NULL,
  `graduate_job_end_time` date DEFAULT NULL,
  PRIMARY KEY (`user_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graduate_job`
--

LOCK TABLES `graduate_job` WRITE;
/*!40000 ALTER TABLE `graduate_job` DISABLE KEYS */;
INSERT INTO `graduate_job` VALUES ('alumni_js','华为','数据分析师','2021-06-09','2021-06-30');
/*!40000 ALTER TABLE `graduate_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graduate_return`
--

DROP TABLE IF EXISTS `graduate_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `graduate_return` (
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nationality` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `id_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `student_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `graduate_depart_nation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `graduate_depart_province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `graduate_depart_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `graduate_return_date` date DEFAULT NULL,
  `graduate_return_time` time DEFAULT NULL,
  `graduate_return_campus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `graduate_return_gate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`user_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graduate_return`
--

LOCK TABLES `graduate_return` WRITE;
/*!40000 ALTER TABLE `graduate_return` DISABLE KEYS */;
INSERT INTO `graduate_return` VALUES ('alumni_js','中国','身份证','430528198811250203','17798099809','中国','北京','北京','2021-06-26','19:24:07','思明','西门');
/*!40000 ALTER TABLE `graduate_return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `potential_student`
--

DROP TABLE IF EXISTS `potential_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `potential_student` (
  `major_of_interest` varchar(255) DEFAULT NULL,
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `community_of_interest` varchar(255) DEFAULT NULL,
  `teacher_of_interest` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `potential_student`
--

LOCK TABLES `potential_student` WRITE;
/*!40000 ALTER TABLE `potential_student` DISABLE KEYS */;
/*!40000 ALTER TABLE `potential_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_basic`
--

DROP TABLE IF EXISTS `student_basic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_basic` (
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_cs_0900_ai_ci NOT NULL,
  `student_id` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `entrance_time` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `fee` varchar(255) DEFAULT NULL,
  `electricity_fee` varchar(255) DEFAULT NULL,
  `money` int DEFAULT NULL,
  `dorm` varchar(255) DEFAULT NULL,
  `educate_plan` varchar(255) DEFAULT NULL,
  `score_completed` varchar(255) DEFAULT NULL,
  `GPA` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `work_place` varchar(255) DEFAULT NULL,
  `home` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_basic`
--

LOCK TABLES `student_basic` WRITE;
/*!40000 ALTER TABLE `student_basic` DISABLE KEYS */;
INSERT INTO `student_basic` VALUES ('alumni_js','江山','17720091150866','管理科学','1班','2009-09-01 20:04:23','本科',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('alumni_qyh','阙渔寰','17720201150888','管理科学','1班','2020-09-01 20:06:08','研究生',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('stu_20001','张无忌','201150871','技术经济及管理','1班','2020-09-10 21:43:22','全日制','0','40',150,'海韵7-531','技经专业培养方案','14','3.6','在读','12246877351','','福建'),('stu_20002','赵小敏','201150872','管理科学与工程','1班','2020-09-10 21:44:33','全日制','0','30',254,'海韵8-328','管科专业培养方案','16','3.5','在读','13068003130',NULL,'广东'),('stu_20003','周小若','201150873','会计学','1班','2020-09-10 21:33:23','全日制','2','44',132,'海韵10-222','会计专业培养方案','16','3.9','在读','13345343111',NULL,'四川'),('stu_20004','令小冲','201150874','旅游学','1班','2020-09-10 15:43:19','全日制','0','15',163,'海韵2-522','旅游专业培养方案','20','3.7','在读','18688423139',NULL,'上海');
/*!40000 ALTER TABLE `student_basic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_course`
--

DROP TABLE IF EXISTS `student_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_course` (
  `student_id` int NOT NULL,
  `course_id` int NOT NULL,
  `course_score` varchar(255) DEFAULT NULL,
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `course_name` varchar(255) NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_course`
--

LOCK TABLES `student_course` WRITE;
/*!40000 ALTER TABLE `student_course` DISABLE KEYS */;
INSERT INTO `student_course` VALUES (201150871,111,'80','lvg','信息系统分析与设计'),(201150871,112,'86','lvg','网络经济学'),(201150871,113,'83','lvg','电子商务技术'),(201150871,114,'90','lvg','高等心理学'),(201150872,111,'88','1234','信息系统分析与设计'),(201150872,112,'83','1234','网络经济学'),(201150872,113,'81','1234','电子商务技术'),(201150872,114,'86','1234','高等心理学');
/*!40000 ALTER TABLE `student_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `identity` varchar(20) NOT NULL,
  `id_number` varchar(18) NOT NULL,
  `age` int NOT NULL,
  `gender` longblob NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_name` varchar(30) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `id` varchar(20) DEFAULT '1',
  `identity` varchar(30) DEFAULT NULL,
  `id_number` varchar(18) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `true_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('alumni_js','123456','2021-06-26 19:09:54','1','alumni','430528198811250203',33,'123456@qq.com','江山','0'),('alumni_qyh','123456','2021-06-26 19:18:19','1','alumni','360729199503030028',26,'123456@qq.com','阙渔寰','0'),('gue_0001','111',NULL,'1','applicant','1111111',17,'111@qq.com','常阁','0'),('gue_0002','224',NULL,'1','applicant','2222222',18,'122@qq.com','卑一久','1'),('gue_0003','339',NULL,'1','applicant','3333333',19,'133@qq.com','曾续琦','0'),('gue_0004','446',NULL,'1','applicant','4444444',17,'144@qq.com','狄秋','0'),('gue_0005','555',NULL,'1','applicant','5555555',18,'155@qq.com','阏李紫','0'),('gue_0006','666',NULL,'1','applicant','6666666',19,'166@qq.com','符枫','1'),('liu_yang','1234',NULL,NULL,NULL,NULL,NULL,'liu_yang@163.com',NULL,NULL),('liu_yangdong','1234',NULL,NULL,NULL,NULL,NULL,'liu_yangdong@qqq.com',NULL,NULL),('stu_20001','123','2021-06-23 18:55:11','1','student','4409811996',25,'664234@qq.com','张无忌','1'),('stu_20002','123','2021-06-26 20:45:11','1','student','4409221998',23,'552342@qq.com','赵小敏','0'),('stu_20003','123','2021-06-26 20:46:39','1','student','4409221999',22,'234412@qq.com','周小若','0'),('stu_20004','123','2021-06-26 20:47:16','1','student','4409341998',23,'555142@qq.com','令小冲','1');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-27 18:52:59
