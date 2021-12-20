-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: localhost    Database: web
-- ------------------------------------------------------
-- Server version	8.0.16

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
  `PostID` varchar(10) NOT NULL,
  `Title` mediumtext,
  `Avatar` varchar(45) DEFAULT NULL,
  `Log` double DEFAULT NULL,
  `Width` double DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `Descrition` longtext,
  `Phone` varchar(12) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Total_View` int(11) DEFAULT NULL,
  `UserID` varchar(10) DEFAULT NULL,
  `Create_Day` varchar(45) DEFAULT NULL,
  `Post_Type` int(11) DEFAULT NULL,
  `Satus` varchar(10) DEFAULT NULL,
  `Read_Unread` int(11) DEFAULT NULL,
  `Update_Day` varchar(45) DEFAULT NULL,
  `Location` mediumtext,
  `CategoryID` varchar(5) DEFAULT NULL,
  `Priod` int(11) DEFAULT NULL,
  `End_Day` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PostID`),
  KEY `CategoryID_idx` (`CategoryID`),
  KEY `UserID_idx` (`UserID`),
  CONSTRAINT `CategoryID` FOREIGN KEY (`CategoryID`) REFERENCES `tbl_category` (`CategoryID`) ON UPDATE CASCADE,
  CONSTRAINT `UserI` FOREIGN KEY (`UserID`) REFERENCES `tbl_user` (`UserID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_post`
--

LOCK TABLES `tbl_post` WRITE;
/*!40000 ALTER TABLE `tbl_post` DISABLE KEYS */;
INSERT INTO `tbl_post` VALUES ('4','Chính chủ cho thuê căn hộ chung cư central field 219 trung kính, dt 70m2, giá 14tr/th',NULL,70,1,14,'Chính chủ cho thuê căn hộ chung cư Central Field 219 Trung Kính, Cầu Giấy, Hà Nội.','029292929','minhnv@gmail.com',NULL,'US4','09/10/2001',2,'renting',1,NULL,'Trung Kính, Phường Yên Hòa, Cầu Giấy, Hà Nội','a',30,NULL),('5','Cho thuê Lucky Palace-Novaland Q6. 2pn full nội thất giá 11tr',NULL,78,1,11,'Chính chủ cho thuê căn hộ cao cấp Lucky Palace của Novaland, 50 Đường Phan Văn Khỏe, phường 2, Quận 6, Hồ Chí Minh. Diện tích 78m2, 2 phòng ngủ, 2wc. Trang bị đầy đủ nội thất căn hộ, tiện nghi cho khách thuê, chỉ cần xách vali vào ở ngay. View thoáng không bị che, nằm trong khu dân cư hiện hữu ,cho thuê dài hạn. gần chợ, trường học.. thuận tiện đi lại','029292922','hoangvv@gmail.com',NULL,'US3','09/10/2001',1,'renting',1,NULL,'Phan Văn Khỏe, Phường 2, Quận 6, Hồ Chí Minh',NULL,26,NULL),('6','Cho thuê sàn văn phòng view kính 150m2 đường Hoàng Sa, Quận 1',NULL,NULL,NULL,72,'Cho thuê văn phòng đường hoàng sa phường Đa Kao Q1 gần vòng xoay điện biên phủ','029292291','hant@gmail.com',NULL,'US5','10/10/2021',2,'renting',1,NULL,'Hoàng Sa, Phường Đa Kao, Quận 1, Hồ Chí Minh','kaka',30,NULL),('7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'US4',NULL,NULL,NULL,NULL,NULL,NULL,'a',NULL,NULL);
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

-- Dump completed on 2021-11-09 21:26:34