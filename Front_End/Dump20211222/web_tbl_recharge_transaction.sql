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
  `rechargeid` bigint NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_recharge_transaction`
--

LOCK TABLES `tbl_recharge_transaction` WRITE;
/*!40000 ALTER TABLE `tbl_recharge_transaction` DISABLE KEYS */;
INSERT INTO `tbl_recharge_transaction` VALUES (1,'3/11/2021',10,'Nguyen Ba Mang','Mbbank','020202020','Customers pay money into wallet on 11/3/2021',0,'00:00:01'),(2,'6/11/2021',10,'Nguyen Thi No','VCB','200202','Customers pay money into wallet on 11/6/2021',0,'20:00:12'),(3,'7/11/2021',20,'Nguyen Ba Mang','Mbbank','0201002010','Customers pay money into wallet on 11/7/2021',0,'20:00:11'),(4,'11/11/2021',1000000,'Tran Manh','VCB','0101010','Customers pay money into wallet on 11/11/2021',0,'09:09:01'),(5,'1/11/2021',600,'A','VCB','10101001','Customers pay money into wallet on 11/1/2021',0,'22:11:22'),(6,'2021/12/18',4,'fddd','vietcombank','1243234141232134','Chuyen khoan',1,'18:13:26'),(7,'2021/12/18',5,'aaaaaaaa','vietcombank','1231523512432341','Chuyen khoan',1,'18:15:00'),(8,'2021/12/22',23,'Phan Van Thai','vietcombank','2332222222222222','Chuyen khoan',1,'16:50:26');
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

-- Dump completed on 2021-12-22 19:40:37
