-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: web
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `tbl_post`
--

DROP TABLE IF EXISTS `tbl_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_post` (
  `postid` bigint NOT NULL AUTO_INCREMENT,
  `title` mediumtext,
  `avatar` varchar(45) DEFAULT NULL,
  `area` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `description` longtext,
  `phone` varchar(12) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `total_view` int DEFAULT NULL,
  `userid` varchar(10) DEFAULT NULL,
  `create_day` varchar(45) DEFAULT NULL,
  `post_type` int DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `read_unread` int DEFAULT NULL,
  `update_day` varchar(45) DEFAULT NULL,
  `location` mediumtext,
  `categoryid` varchar(50) DEFAULT NULL,
  `priod` int DEFAULT NULL,
  `end_day` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`postid`),
  KEY `CategoryID_idx` (`categoryid`),
  KEY `UserID_idx` (`userid`),
  CONSTRAINT `categoryid` FOREIGN KEY (`categoryid`) REFERENCES `tbl_category` (`categoryid`) ON UPDATE CASCADE,
  CONSTRAINT `UserI` FOREIGN KEY (`userid`) REFERENCES `tbl_user` (`userid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_post`
--

LOCK TABLES `tbl_post` WRITE;
/*!40000 ALTER TABLE `tbl_post` DISABLE KEYS */;
INSERT INTO `tbl_post` VALUES (1,'Chính chủ cho thuê căn hộ chung cư central field 219 trung kính, dt 70m2, giá 14tr/th',NULL,70,14,'Chính chủ cho thuê căn hộ chung cư Central Field 219 Trung Kính, Cầu Giấy, Hà Nội22.','029292929','minhnv@gmail.com',NULL,'1','05/10/2001',2,'renting',1,NULL,'Trung Kính, Phường Yên Hòa, Cầu Giấy, Hà Nội','1',30,NULL),(4,'Chính chủ cho thuê căn hộ chung cư central field 219 trung kính, dt 70m2, giá 14tr/th',NULL,70,14,'Chính chủ cho thuê căn hộ chung cư Central Field 219 Trung Kính, Cầu Giấy, Hà Nội.','029292929','minhnv@gmail.com',NULL,'1','09/10/2001',2,'renting',1,NULL,'Trung Kính, Phường Yên Hòa, Cầu Giấy, Hà Nội','1',30,NULL),(5,'fffffChính chủ cho thuê căn hộ chung cư central field 219 trung kính, dt 70m2, giá 14tr/th',NULL,70,14,'Chính chủ cho thuê căn hộ chung cư Central Field 219 Trung Kính, Cầu Giấy, Hà Nội.','029292929','minhnv33@gmail.com',NULL,'1','09/10/2001',2,'renting',1,NULL,'Trung Kính, Phường Yên Hòa, Cầu Giấy, Hà Nội','1',30,NULL);
/*!40000 ALTER TABLE `tbl_post` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-11 16:47:11
