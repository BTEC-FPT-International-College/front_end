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
-- Table structure for table `tbl_recharge_transaction`
--

DROP TABLE IF EXISTS `tbl_recharge_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_recharge_transaction` (
  `rechargeID` varchar(50) NOT NULL,
  `Create_Date` varchar(45) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Bank` varchar(45) DEFAULT NULL,
  `Bank_Account` varchar(45) DEFAULT NULL,
  `Content` mediumtext,
  `walletID` varchar(10) DEFAULT NULL,
  `Create_Hour` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`rechargeID`),
  KEY `WalletID_idx` (`walletID`),
  CONSTRAINT `WalletID` FOREIGN KEY (`walletID`) REFERENCES `user_wallet` (`walletID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_recharge_transaction`
--

LOCK TABLES `tbl_recharge_transaction` WRITE;
/*!40000 ALTER TABLE `tbl_recharge_transaction` DISABLE KEYS */;
INSERT INTO `tbl_recharge_transaction` VALUES ('1','3/11/2021',10,'Nguyen Ba Mang','Mbbank','020202020','ck','WL01','00:00:01'),('2','6/11/2021',10,'Nguyen Thi No','VCB','200202','ck','WL02','20:00:12'),('3','7/11/2021',20,'Nguyen Ba Mang','Mbbank','0201002010','ck','WL01','20:00:11'),('4','11/11/2021',100,'A','VCB','0101010','ck','WL03','09:09:01'),('5','1/11/2021',600,'A','VCB','10101001','ck','WL04','22:11:22');
/*!40000 ALTER TABLE `tbl_recharge_transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-09 21:26:35
