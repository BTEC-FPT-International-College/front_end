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
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user` (
  `userid` varchar(10) NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `date_of_birth` varchar(100) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `reward_point` int DEFAULT NULL,
  `gender` varchar(7) DEFAULT NULL,
  `create_day` varchar(45) DEFAULT NULL,
  `update_day` varchar(45) DEFAULT NULL,
  `roleid` bigint DEFAULT NULL,
  `status` bigint DEFAULT NULL,
  PRIMARY KEY (`userid`),
  KEY `RoleID_idx` (`roleid`) /*!80000 INVISIBLE */,
  CONSTRAINT `roleid` FOREIGN KEY (`roleid`) REFERENCES `tbl_role` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES ('US000001','Dinh Manh Tran','0868626396','tranmanh@gmail.com','107 Nguyễn Phong Sắc, Cầu Giấy, Hà Nôi, Việt Nam','07-02-2001','manh','tranmanh@123',1093,'1',NULL,NULL,1,NULL),('US000002','ManhTRan','345341234234','manh@gmail','HA Noi City','07-02-2001','manhtran','tranmanh@123',2343,'1',NULL,NULL,1,NULL),('US000003','Mark',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL),('US000004',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL),('US000005','','','',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),('US000006','','','',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),('US000007','','','',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),('US000008','','','',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),('US000009','Pham Hung','0868626396','long@gmai.com',NULL,NULL,NULL,'123',NULL,NULL,NULL,NULL,NULL,NULL),('US000010','Dinh Manh Tran test','0868626396','long@gmai.com',NULL,NULL,NULL,'123',NULL,NULL,NULL,NULL,NULL,NULL),('US000011','Dinh Manh Tran test999','0868626396','long@gmai.com',NULL,NULL,NULL,'123',NULL,NULL,NULL,NULL,NULL,NULL),('US000012','Dinh Manh Tran test999','0868626396','long@gmai.com',NULL,NULL,NULL,'123',NULL,NULL,NULL,NULL,NULL,NULL),('US000013','Dinh Tran','0868626394','long@gmai.com',NULL,NULL,NULL,'123',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-22 19:40:37
