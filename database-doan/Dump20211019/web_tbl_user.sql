-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: web
-- ------------------------------------------------------
-- Server version	8.0.26

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
  `UserID` varchar(10) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `Phone` varchar(12) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Date_of_birth` datetime(6) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Reward_point` int DEFAULT NULL,
  `Gender` varchar(7) DEFAULT NULL,
  `Create_Day` varchar(45) DEFAULT NULL,
  `Update_Day` varchar(45) DEFAULT NULL,
  `RoleID` int DEFAULT NULL,
  PRIMARY KEY (`UserID`),
  KEY `RoleID_idx` (`RoleID`) /*!80000 INVISIBLE */,
  CONSTRAINT `RoleID` FOREIGN KEY (`RoleID`) REFERENCES `tbl_role` (`RoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES ('ADM01','Nguyen Ba Mang','099988887','mangnbbhaf190168@fpt.edu.vn','Ha Noi','2001-06-30 00:00:00.000000','anhmang123',NULL,'Male','21/10/2021',NULL,1),('SUP01','Nguyen Van Manh','098767654','manhnv@gmail.com.vn','Ho Chi Minh','1998-09-08 00:00:00.000000','manhnv123',NULL,'Male','29/10/2021',NULL,2),('SUP02','Nguyen Thi Hue','029282726','huent@gmail.com','Ha Noi','1999-12-09 00:00:00.000000','huent123',NULL,'Female','29/10/2021',NULL,2),('US1','Le Cong Vinh','029292921','vinhlc@gmail.com','Yen Bai','1987-02-20 00:00:00.000000','vinhlc123',0,'Male','02/10/2021',NULL,3),('US10','Nguyen Van Phu','029292919','phunv@gmail.com','Lao Cai','1988-09-09 00:00:00.000000','phunv123',0,'Male','07/10/2021',NULL,3),('US2','Le Thuy Tien','087278218','thuylt@gmail.com','Bac Ninh','1994-09-03 00:00:00.000000','thuylt123',0,'Female','02/10/2021',NULL,3),('US3','Hoang Van Vo','049494949','hoangvv@gmail.com','Ha Noi','1999-02-02 00:00:00.000000','hoangvv123',0,'Male','03/10/2021',NULL,3),('US4','Nguyen Van Minh','098767876','minhnv@gmail.com','Ha Noi','1989-09-12 00:00:00.000000','minhnv123',0,'Male','03/10/2021',NULL,3),('US5','Nguyen Thi Ha','029292919','hant@gmail.com','Ha Noi','1998-02-02 00:00:00.000000','hant123',0,'Female','03/10/2001',NULL,3),('US6','Ngo Ba Kha','082929292','khanb@gmail.com','Bac Ninh','2000-09-04 00:00:00.000000','khanb123',0,'Male','04/10/2021',NULL,3),('US7','Pham Nhat Vuong','018219999','vuongnv@gmail.com','Ho Chi Minh','1976-09-12 00:00:00.000000','vuongnv123',0,'Male','04/10/2021',NULL,3),('US8','Hoang Thuy Linh','092828281','linhht@gmail.com','Ha Noi','1997-07-08 00:00:00.000000','linhht123',0,'Female','05/10/2021',NULL,3),('US9','Le Minh Hue','029292921','huelm@gmail.com','Ho Chi Minh','1992-09-17 00:00:00.000000','huelm123',0,'Male','06/10/2021',NULL,3);
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

-- Dump completed on 2021-10-19 11:10:22
