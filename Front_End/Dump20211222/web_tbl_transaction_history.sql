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
-- Table structure for table `tbl_transaction_history`
--

DROP TABLE IF EXISTS `tbl_transaction_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_transaction_history` (
  `postid` bigint NOT NULL,
  `walletid` bigint NOT NULL,
  `content` varchar(45) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `create_day` varchar(45) DEFAULT NULL,
  `create_hour` varchar(45) DEFAULT NULL,
  `transactionid` bigint NOT NULL AUTO_INCREMENT,
  `packet` int DEFAULT NULL,
  PRIMARY KEY (`transactionid`),
  KEY `walletI_idx` (`walletid`),
  KEY `index3` (`postid`),
  CONSTRAINT `postI` FOREIGN KEY (`postid`) REFERENCES `tbl_post` (`postid`),
  CONSTRAINT `walletI` FOREIGN KEY (`walletid`) REFERENCES `user_wallet` (`walletid`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_transaction_history`
--

LOCK TABLES `tbl_transaction_history` WRITE;
/*!40000 ALTER TABLE `tbl_transaction_history` DISABLE KEYS */;
INSERT INTO `tbl_transaction_history` VALUES (1,1,'Thanh toan goi vip ngay 20-11',1023400,'20-11-2021','22',12,2),(10,2,'Dang bai ngay 20-11',1004650,'20-11-2021','22',23,23),(12,3,'Gia han goi vip ngay 22-11',5000,'22-11-2021','22',123,3),(33,1,'New Post',9,'2021/12/22','16:42:33',124,3);
/*!40000 ALTER TABLE `tbl_transaction_history` ENABLE KEYS */;
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
