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
-- Table structure for table `tbl_recharge_transaction`
--

DROP TABLE IF EXISTS `tbl_recharge_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_recharge_transaction` (
  `rechargeid` bigint NOT NULL,
  `create_date` varchar(45) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `bank` varchar(45) DEFAULT NULL,
  `bank_account` varchar(45) DEFAULT NULL,
  `content` mediumtext,
  `walletid` bigint DEFAULT NULL,
  `create_hour` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`rechargeid`),
  KEY `WalletID_idx` (`walletid`),
  CONSTRAINT `walletid` FOREIGN KEY (`walletid`) REFERENCES `user_wallet` (`walletid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_recharge_transaction`
--

LOCK TABLES `tbl_recharge_transaction` WRITE;
/*!40000 ALTER TABLE `tbl_recharge_transaction` DISABLE KEYS */;
INSERT INTO `tbl_recharge_transaction` VALUES (1,'3/11/2021',10,'Nguyen Ba Mang','Mbbank','020202020','ck',0,'00:00:01'),(2,'6/11/2021',10,'Nguyen Thi No','VCB','200202','ck',0,'20:00:12'),(3,'7/11/2021',20,'Nguyen Ba Mang','Mbbank','0201002010','ck',0,'20:00:11'),(4,'11/11/2021',100,'A','VCB','0101010','ck',0,'09:09:01'),(5,'1/11/2021',600,'A','VCB','10101001','ck',0,'22:11:22');
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

-- Dump completed on 2021-11-11 16:47:11
