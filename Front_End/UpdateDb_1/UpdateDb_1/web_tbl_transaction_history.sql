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
-- Table structure for table `tbl_transaction_history`
--

DROP TABLE IF EXISTS `tbl_transaction_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_transaction_history` (
  `PostID` varchar(10) NOT NULL,
  `walletID` varchar(10) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Create_Day` varchar(45) DEFAULT NULL,
  `Create_Hour` varchar(45) DEFAULT NULL,
  `TransactionID` int(11) NOT NULL,
  `Packet` int(11) DEFAULT NULL,
  PRIMARY KEY (`TransactionID`),
  KEY `walletI_idx` (`walletID`),
  KEY `index3` (`PostID`),
  CONSTRAINT `postI` FOREIGN KEY (`PostID`) REFERENCES `tbl_post` (`PostID`),
  CONSTRAINT `walletI` FOREIGN KEY (`walletID`) REFERENCES `user_wallet` (`walletID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_transaction_history`
--

LOCK TABLES `tbl_transaction_history` WRITE;
/*!40000 ALTER TABLE `tbl_transaction_history` DISABLE KEYS */;
INSERT INTO `tbl_transaction_history` VALUES ('5','WL03',10,'8/11/2021',NULL,1,1),('4','WL04',20,'3/11/2021',NULL,2,2),('4','WL04',80,'2/11/2021',NULL,3,3),('4','WL04',40,'1/11/2021',NULL,4,4),('6','WL05',10,'11/11/201',NULL,5,1),('7','WL04',80,'12/11/2021',NULL,6,4);
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

-- Dump completed on 2021-11-09 21:26:34