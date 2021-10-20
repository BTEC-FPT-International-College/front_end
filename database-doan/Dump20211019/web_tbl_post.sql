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
  `Total_View` int DEFAULT NULL,
  `UserID` varchar(10) DEFAULT NULL,
  `Create_Day` varchar(45) DEFAULT NULL,
  `Post_Type` int DEFAULT NULL,
  `Satus` varchar(10) DEFAULT NULL,
  `Read_Unread` int DEFAULT NULL,
  `Update_Day` varchar(45) DEFAULT NULL,
  `Location` mediumtext,
  `CategoryID` varchar(5) DEFAULT NULL,
  `Priod` int DEFAULT NULL,
  PRIMARY KEY (`PostID`),
  KEY `CategoryID_idx` (`CategoryID`),
  KEY `UserID_idx` (`UserID`),
  CONSTRAINT `CategoryI` FOREIGN KEY (`CategoryID`) REFERENCES `tbl_category` (`CategoryID`),
  CONSTRAINT `UserI` FOREIGN KEY (`UserID`) REFERENCES `tbl_user` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_post`
--

LOCK TABLES `tbl_post` WRITE;
/*!40000 ALTER TABLE `tbl_post` DISABLE KEYS */;
INSERT INTO `tbl_post` VALUES ('1','Căn hộ Paris Hoàng Kim Quận 2 chính thức mở bán. Giá gốc chủ đầu tư.',NULL,57,1,73,'* Vị trí \"vàng\" đáp ứng đủ 3 tiêu chí \'Nhất cận thị - Nhị cận giang - Tam cận lộ.','0292922991','vinhlc@gmail.com',NULL,'US1','07/10/2021',3,'selling',1,NULL,'Lương Định Của, Phường Bình Khánh, Quận 2, Hồ Chí Minh','CTG01',7),('2','Bán nhà phố thương mại dự án Royal Town Dĩ An Bình Dương, giá gốc chủ đầu tư. Liên hệ chọn căn đẹp',NULL,80,1,56,'CHÍNH THỨC NHẬN BOOKING NGAY HÔM NAY | CƠ HỘI VÀNG SỞ HỮU SẢN PHẨM KHAN HIẾM ?','020202919','phunv@gmail.com',NULL,'US10','07/10/2021',1,'selling',1,NULL,'Nguyễn Thị Khắp, Phường Tân Đông Hiệp, Dĩ An, Bình Dương','CTG01',12),('3','Mở bán đất nền nhà phố, biệt thự dự án Lagi New City Bình Thuận, giá gốc chủ đầu tư.',NULL,80,1,35,'Sản phẩm đất nền siêu \"HOT\" tại thủ phủ resort Bình Thuận. Khu đô thị Lagi New City','029202022','thuylt@gmail.com',NULL,'US2','08/10/2021',2,'stop',1,NULL,'Phường Phước Lộc, La Gi, Bình Thuận','CTG01',34),('4','Chính chủ cho thuê căn hộ chung cư central field 219 trung kính, dt 70m2, giá 14tr/th',NULL,70,1,14,'Chính chủ cho thuê căn hộ chung cư Central Field 219 Trung Kính, Cầu Giấy, Hà Nội.','029292929','minhnv@gmail.com',NULL,'US4','09/10/2001',2,'renting',1,NULL,'Trung Kính, Phường Yên Hòa, Cầu Giấy, Hà Nội','CTG02',30),('5','Cho thuê Lucky Palace-Novaland Q6. 2pn full nội thất giá 11tr',NULL,78,1,11,'Chính chủ cho thuê căn hộ cao cấp Lucky Palace của Novaland, 50 Đường Phan Văn Khỏe, phường 2, Quận 6, Hồ Chí Minh. Diện tích 78m2, 2 phòng ngủ, 2wc. Trang bị đầy đủ nội thất căn hộ, tiện nghi cho khách thuê, chỉ cần xách vali vào ở ngay. View thoáng không bị che, nằm trong khu dân cư hiện hữu ,cho thuê dài hạn. gần chợ, trường học.. thuận tiện đi lại','029292922','hoangvv@gmail.com',NULL,'US3','09/10/2001',1,'renting',1,NULL,'Phan Văn Khỏe, Phường 2, Quận 6, Hồ Chí Minh','CTG02',26),('6','Cho thuê sàn văn phòng view kính 150m2 đường Hoàng Sa, Quận 1',NULL,NULL,NULL,72,'Cho thuê văn phòng đường hoàng sa phường Đa Kao Q1 gần vòng xoay điện biên phủ','029292291','hant@gmail.com',NULL,'US5','10/10/2021',2,'renting',1,NULL,'Hoàng Sa, Phường Đa Kao, Quận 1, Hồ Chí Minh','CTG02',30);
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

-- Dump completed on 2021-10-19 11:10:22
