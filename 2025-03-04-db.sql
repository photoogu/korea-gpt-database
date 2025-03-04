CREATE DATABASE  IF NOT EXISTS `board_project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `board_project`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: board_project
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `board_category_tb`
--

DROP TABLE IF EXISTS `board_category_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_category_tb` (
  `board_category_id` int NOT NULL AUTO_INCREMENT,
  `board_category_name` varchar(255) NOT NULL,
  PRIMARY KEY (`board_category_id`),
  UNIQUE KEY `board_category_name_UNIQUE` (`board_category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_category_tb`
--

LOCK TABLES `board_category_tb` WRITE;
/*!40000 ALTER TABLE `board_category_tb` DISABLE KEYS */;
INSERT INTO `board_category_tb` VALUES (6,'HTML'),(3,'Java'),(2,'JavaScript'),(5,'MySQL'),(4,'React_test'),(1,'test');
/*!40000 ALTER TABLE `board_category_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_like_tb`
--

DROP TABLE IF EXISTS `board_like_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_like_tb` (
  `board_like_id` int NOT NULL AUTO_INCREMENT,
  `board_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`board_like_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_like_tb`
--

LOCK TABLES `board_like_tb` WRITE;
/*!40000 ALTER TABLE `board_like_tb` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_like_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_tb`
--

DROP TABLE IF EXISTS `board_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_tb` (
  `board_id` int NOT NULL AUTO_INCREMENT,
  `board_category_id` int NOT NULL,
  `user_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `view_count` int NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`board_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_tb`
--

LOCK TABLES `board_tb` WRITE;
/*!40000 ALTER TABLE `board_tb` DISABLE KEYS */;
INSERT INTO `board_tb` VALUES (1,1,7,'테스트','<h1>테스트 내용입니다.</h1>',0,'2025-03-04 07:44:57','2025-03-04 07:44:57'),(2,1,7,'testtest','<h2>testtest</h2>',0,'2025-03-04 08:16:50','2025-03-04 08:16:50'),(3,2,7,'JS_test','<h5><em>JS_test<span class=\"ql-cursor\">﻿</span></em></h5>',0,'2025-03-04 08:17:23','2025-03-04 08:17:23'),(4,3,7,'Java_test','<h1><u>Java_test</u></h1>',0,'2025-03-04 08:17:43','2025-03-04 08:17:43'),(5,4,7,'React_test','<h1><u>React_test</u></h1>',0,'2025-03-04 08:18:02','2025-03-04 08:18:02'),(6,1,1,'test','<h1><u>test</u></h1>',0,'2025-03-04 08:18:25','2025-03-04 08:18:25'),(7,5,1,'MySQL_test','<h1><em>MySQL_test</em><span class=\"ql-cursor\">﻿</span></h1>',0,'2025-03-04 08:18:52','2025-03-04 08:18:52'),(8,6,1,'HTML_test','<h1><s>HTML_test</s></h1>',0,'2025-03-04 08:19:11','2025-03-04 08:19:11'),(9,3,1,'Java_test2','<h1>Java_test2</h1>',0,'2025-03-04 08:20:14','2025-03-04 08:20:14');
/*!40000 ALTER TABLE `board_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_tb`
--

DROP TABLE IF EXISTS `role_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_tb` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) NOT NULL,
  `role_name_kor` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_name_UNIQUE` (`role_name`),
  UNIQUE KEY `role_name_kor_UNIQUE` (`role_name_kor`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_tb`
--

LOCK TABLES `role_tb` WRITE;
/*!40000 ALTER TABLE `role_tb` DISABLE KEYS */;
INSERT INTO `role_tb` VALUES (1,'ROLE_USER','일반사용자','2025-02-25 06:24:27'),(2,'ROLE_ADMIN','관리자','2025-02-25 06:24:27');
/*!40000 ALTER TABLE `role_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role_tb`
--

DROP TABLE IF EXISTS `user_role_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role_tb` (
  `user_role_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role_tb`
--

LOCK TABLES `user_role_tb` WRITE;
/*!40000 ALTER TABLE `user_role_tb` DISABLE KEYS */;
INSERT INTO `user_role_tb` VALUES (1,2,1,'2025-02-27 08:43:14'),(2,3,1,'2025-02-27 08:50:20'),(3,4,1,'2025-02-28 00:14:42'),(4,5,1,'2025-02-28 01:18:24'),(5,6,1,'2025-02-28 01:19:18'),(6,7,1,'2025-02-28 06:37:44');
/*!40000 ALTER TABLE `user_role_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_tb`
--

DROP TABLE IF EXISTS `user_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_tb` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) NOT NULL,
  `oauth2_name` varchar(255) DEFAULT NULL,
  `oauth2_provider` varchar(255) DEFAULT NULL,
  `profile_img` varchar(255) DEFAULT NULL,
  `account_expired` int NOT NULL,
  `account_locked` int NOT NULL,
  `credentials_expired` int NOT NULL,
  `account_enabled` int NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tb`
--

LOCK TABLES `user_tb` WRITE;
/*!40000 ALTER TABLE `user_tb` DISABLE KEYS */;
INSERT INTO `user_tb` VALUES (1,'test12345','$2a$10$FwU7.nWpWx7Xw88FEhx1.uXlPaG4alc1L6Nx6evCafvGo8ih2CGZe','test1@gmail.com','test12',NULL,NULL,'3157e4f2e9d348099037ea5fc995a3ea_default.jpg',1,1,1,1,'2025-02-25 04:55:37'),(2,'test1','$2a$10$hd1Rq0Xo3.0a5w11ArZ1n.PfQnb226PYuQzkj3NBe96sVYsupQPxa','hanigirl0@naver.com','test1',NULL,NULL,NULL,1,1,1,1,'2025-02-27 08:43:14'),(3,'nikke01','$2a$10$BLktQ4uO25Ht5YVs16N0I.iD7.fquKKvRFBw6Qu1B1zR9fxGBrBx.','yggdrasil8@naver.com','nikke01',NULL,NULL,NULL,1,1,1,0,'2025-02-27 08:50:20'),(4,'test2','$2a$10$YELJU0/LABTylcBM3fLTBetQXjzh7FBQpRjYftRz04IsLWVkLnxji','hanigirl0@naver.com','test2',NULL,NULL,NULL,1,1,1,1,'2025-02-28 00:14:42'),(5,'test3','$2a$10$4ahL8JHNtf1plEDeeqlOQuhY/oN4cS/jgX7TKDxTcD3iYpyT2Ut/i','hanigirl0@naver.com','test3',NULL,NULL,NULL,1,1,1,1,'2025-02-28 01:18:24'),(6,'test4','$2a$10$/ZPiAkmNJXBLTC5YyvB8zefGrPy9oXjcY0KjTARMmkd2Jbid9933u','hanigirl0@naver.com','test4',NULL,NULL,NULL,1,1,1,1,'2025-02-28 01:19:18'),(7,'google_116130954672349415603',NULL,'hanigirl0@naver.com','google_1161309546723','116130954672349415603','google',NULL,1,1,1,1,'2025-02-28 06:37:44');
/*!40000 ALTER TABLE `user_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'board_project'
--

--
-- Dumping routines for database 'board_project'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-04 17:50:40
