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
  `avatar` varchar(255) DEFAULT NULL,
  `image` varchar(245) DEFAULT NULL,
  `area` double DEFAULT NULL,
  `price` int DEFAULT NULL,
  `sale_rent` varchar(4) DEFAULT NULL,
  `description` longtext,
  `phone` varchar(12) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `total_view` int DEFAULT NULL,
  `userid` varchar(10) DEFAULT NULL,
  `create_day` varchar(45) DEFAULT NULL,
  `post_type` int DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `read_unread` int DEFAULT NULL,
  `update_day` varchar(45) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `categoryid` varchar(50) DEFAULT NULL,
  `priod` int DEFAULT NULL,
  `end_day` varchar(45) DEFAULT NULL,
  `room` int DEFAULT NULL,
  `bath` int DEFAULT NULL,
  `district` varchar(55) DEFAULT NULL,
  `ward` varchar(55) DEFAULT NULL,
  `detail_address` varchar(245) DEFAULT NULL,
  `province_value` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`postid`),
  KEY `CategoryID_idx` (`categoryid`),
  KEY `UserID_idx` (`userid`),
  CONSTRAINT `categoryid` FOREIGN KEY (`categoryid`) REFERENCES `tbl_category` (`categoryid`) ON UPDATE CASCADE,
  CONSTRAINT `UserI` FOREIGN KEY (`userid`) REFERENCES `tbl_user` (`userid`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_post`
--

LOCK TABLES `tbl_post` WRITE;
/*!40000 ALTER TABLE `tbl_post` DISABLE KEYS */;
INSERT INTO `tbl_post` VALUES (1,'Contemporary 114sqm 3-bedroom apartment at L5','template/img/item/1.jpg',NULL,70,1100,'rent','Size of the contemporary apartment at L5 Ciputra is 114sqm, with 2bathrooms. It has living room combined with dining room, a separated kitchen with access to laundry room, natural light and fresh air via the decent size of windows.','029292929','minhnv33@gmail.com',NULL,'US000001','09/10/2021',2,'avaible',1,NULL,'Hồ Chí Minh','1',30,'25/01/2022',3,2,NULL,NULL,NULL,NULL),(2,'River view 2 bedrooms in Landmark Plus, Vinhomes','template/img/item/2.jpg',NULL,80,200000,'sale','For Sale5 Rooms 2 Beds 3 Baths 1100 SQ FT River view 2 bedrooms in Landmark Plus, Vinhomes Landmark Plus apartment for rent on high floor, 84m2 area with 2 bedrooms and 2 toilets. Apartment design following the trend of open, modern, spacious living room with balcony.','029292929','minhnv33@gmail.com',NULL,'US000001','19/10/2021',2,'avaible',1,NULL,'Hà Nội','1',30,'12/02/2022',2,1,'Cầu Giấy','Dịch Vọng','107 Nguyễn Phong Sắc',NULL),(3,'River view 3 bedrooms in Landmark Plus, Vinhomes','template/img/item/3.jpg',NULL,120,1200,'rent','5 Rooms 2 Beds 3 Baths 1100 SQ FT River view 2 bedrooms in Landmark Plus, Vinhomes Landmark Plus apartment for rent on high floor, 84m2 area with 2 bedrooms and 2 toilets. Apartment design following the trend of open, modern, spacious living room with balcony.','029292929','minhnv33@gmail.com',NULL,'US000001','29/10/2021',2,'avaible',1,NULL,'Hồ Chí Minh','1',30,'116/02/2022',5,3,NULL,NULL,NULL,NULL),(4,'River view 4 bedrooms in Landmark Plus, Vinhomes','template/img/item/4.jpg',NULL,130,230000,'sale','5 Rooms 2 Beds 3 Baths 1100 SQ FT River view 2 bedrooms in Landmark Plus, Vinhomes Landmark Plus apartment for rent on high floor, 84m2 area with 2 bedrooms and 2 toilets. Apartment design following the trend of open, modern, spacious living room with balcony.','029292929','minhnv33@gmail.com',NULL,'US000001','06/10/2021',2,'avaible',1,NULL,'Hồ Chí Minh','1',30,'23/01/2022',3,1,NULL,NULL,NULL,NULL),(5,'River view 2 bedrooms in Landmark Plus, Vinhomes','template/img/item/5.jpg',NULL,60,240000,'sale','5 Rooms 2 Beds 3 Baths 1100 SQ FT River view 2 bedrooms in Landmark Plus, Vinhomes Landmark Plus apartment for rent on high floor, 84m2 area with 2 bedrooms and 2 toilets. Apartment design following the trend of open, modern, spacious living room with balcony.','029292929','minhnv33@gmail.com',NULL,'US000001','01/10/2021',2,'avaible',1,NULL,'Hồ Chí Minh','1',30,'22/01/2022',4,2,NULL,NULL,NULL,NULL),(6,'River view 5 bedrooms in Landmark Plus, Vinhomes','template/img/item/6.jpg',NULL,70,1100,'rent','5 Rooms 2 Beds 3 Baths 1100 SQ FT River view 2 bedrooms in Landmark Plus, Vinhomes Landmark Plus apartment for rent on high floor, 84m2 area with 2 bedrooms and 2 toilets. Apartment design following the trend of open, modern, spacious living room with balcony.','029292929','minhnv33@gmail.com',NULL,'US000001','09/10/2021',2,'avaible',1,NULL,'Hà  Nội','1',30,'25/01/2022',6,3,NULL,NULL,NULL,NULL),(7,'River view 3 bedrooms in Landmark Plus, Vinhomes','template/img/item/7.jfif',NULL,70,1100,'rent','5 Rooms 2 Beds 3 Baths 1100 SQ FT River view 2 bedrooms in Landmark Plus, Vinhomes Landmark Plus apartment for rent on high floor, 84m2 area with 2 bedrooms and 2 toilets. Apartment design following the trend of open, modern, spacious living room with balcony.','029292929','minhnv33@gmail.com',NULL,'US000001','09/10/2021',2,'avaible',1,NULL,'Hồ Chí Minh','1',30,'26/01/2022',2,1,NULL,NULL,NULL,NULL),(8,'River view 2 bedrooms in Landmark Plus, Vinhomes','template/img/item/8.jfif',NULL,70,175000,'sale','5 Rooms 2 Beds 3 Baths 1100 SQ FT River view 2 bedrooms in Landmark Plus, Vinhomes Landmark Plus apartment for rent on high floor, 84m2 area with 2 bedrooms and 2 toilets. Apartment design following the trend of open, modern, spacious living room with balcony.','029292929','minhnv33@gmail.com',NULL,'US000001','09/10/2021',2,'avaible',1,NULL,'Hồ Chí Minh','1',30,'27/01/2022',5,2,NULL,NULL,NULL,NULL),(9,'River view 3 bedrooms in Landmark Plus, Vinhomes','template/img/item/9.jfif',NULL,70,1100,'rent','5 Rooms 2 Beds 3 Baths 1100 SQ FT River view 2 bedrooms in Landmark Plus, Vinhomes Landmark Plus apartment for rent on high floor, 84m2 area with 2 bedrooms and 2 toilets. Apartment design following the trend of open, modern, spacious living room with balcony.','029292929','minhnv33@gmail.com',NULL,'US000001','09/10/2021',2,'avaible',1,NULL,'Hồ Chí Minh','1',30,'02/02/2022',6,3,NULL,NULL,NULL,NULL),(10,'River view 5 bedrooms in Landmark Plus, Vinhomes','template/img/item/4.jpg',NULL,70,200000,'sale','5 Rooms 2 Beds 3 Baths 1100 SQ FT River view 2 bedrooms in Landmark Plus, Vinhomes Landmark Plus apartment for rent on high floor, 84m2 area with 2 bedrooms and 2 toilets. Apartment design following the trend of open, modern, spacious living room with balcony.','029292929','minhnv33@gmail.com',NULL,'US000001','09/10/2021',2,'avaible',1,NULL,'Hà Nội','1',30,'05/02/2022',3,2,NULL,NULL,NULL,NULL),(11,'River view 2 bedrooms in Landmark Plus, Vinhomes','template/img/item/5.jpg',NULL,70,300000,'sale','5 Rooms 2 Beds 3 Baths 1100 SQ FT River view 2 bedrooms in Landmark Plus, Vinhomes Landmark Plus apartment for rent on high floor, 84m2 area with 2 bedrooms and 2 toilets. Apartment design following the trend of open, modern, spacious living room with balcony.','029292929','minhnv33@gmail.com',NULL,'US000001','09/10/2021',2,'avaible',1,NULL,'Hồ Chí Minh','1',30,'07/02/2022',2,1,NULL,NULL,NULL,NULL),(12,'River view 1 bedrooms in Landmark Plus, Vinhomes','template/img/item/6.jpg',NULL,70,1100,'rent','5 Rooms 2 Beds 3 Baths 1100 SQ FT River view 2 bedrooms in Landmark Plus, Vinhomes Landmark Plus apartment for rent on high floor, 84m2 area with 2 bedrooms and 2 toilets. Apartment design following the trend of open, modern, spacious living room with balcony.','029292929','minhnv33@gmail.com',NULL,'US000001','09/10/2021',2,'avaible',1,NULL,'Hồ Chí Minh','1',30,'08/02/2022',4,2,NULL,NULL,NULL,NULL),(25,'23423sdfsd','https://master.tus.io/files/4de5becf867b0e25ae853dc003d297e0+Nsb9uSTD1H0yZjQCzxxlEfOO9gz8trBrogvucV3FACoUgEgXg0DmuTw8IrHBPYye3wIW4Ai9VBGMZZvz_ahciwfdAI76R9ePkStNqhC153C_fLF1I6DD_qv4zmsXyM5s',NULL,123,123,'sale','dgdfgdfgdf','0868626396','tranmanh@gmail.com',NULL,'US000001','2021/12/22',3,NULL,0,NULL,'Bắc Kạn',NULL,NULL,'2021-12-31',12,12,'Thị Xã Bắc Kạn','Xã Sơn Phú','234234234',NULL),(26,'ádfsdf','https://master.tus.io/files/46800900df877149444275f803c9dfa5+xrtvzyvGDFjxcCAK6x8gPIux0tfSaoEGNMI_vxUkWvazkWuz7kSx7AZGOmz1Iwehaw5P9JsNC8OVCYwHYsuJLZhmKTpCy1iLp3JPBRQuSfxOXkK30_HOhfWT23MCRkWo',NULL,123123,123123,'sale','sdfsdfsdf','0868626396','tranmanh@gmail.com',NULL,'US000001','2021/12/22',4,NULL,0,NULL,'Cần Thơ',NULL,NULL,'2021-12-25',123,123,'Quận Ninh Kiều','Phường Cái Khế','sdfsdf',NULL),(27,'ádfsdf','',NULL,34234,123,'sale','sdfsdf','0868626396','tranmanh@gmail.com',NULL,'US000001','2021/12/22',1,NULL,0,NULL,'Đắk Lắk',NULL,NULL,'2021-12-25',12,12,'Huyện Cư M\'gar','Thị Trấn Ea Pốk','sdfsdf',NULL),(28,'sadfasdfsdf','https://master.tus.io/files/9de485d85174293f6c752facb18004ce+Z5ZMPQqHqhC97zaZRjSjUxKnWUFzS6clJfqnb9TeIUl5fooAzS5E.6VAJYX8IMxKk.JWZIwBQS5.9m1LsRovKmBQcrqNon0GHdw_uz4KHav97JXyKE4_ehbU8msuPd0O',NULL,12312,12312,'sale','ádfsdfsdfsdf','0868626396','tranmanh@gmail.com',NULL,'US000001','2021/12/22',4,NULL,0,NULL,'Đắk Nông',NULL,NULL,'2021-12-25',12,12,'Huyện Đắk Mil','Xã Đắk R\'la','sdfsadfsd',NULL),(29,'12312','https://master.tus.io/files/ff0d94fcf6d8ebccf164d601f17e11dd+zl7Bb5YsqYJhRJes3iH0GaQHqVqAg31R3JopfjJ2kxAU5Au19ZpISi36wYUPH9tfeMkVzE7iylR_2faGj99HT4bU6MQefF5ZPDbPaYyhItJi_Am7lbpIDPXjgtQ2JbeL',NULL,123,123,'sale','123123','0868626394','tranmanh@gmail.com',NULL,'US000001','2021/12/22',3,NULL,0,NULL,'Bình Định',NULL,NULL,'2021-12-23',12,12,'Thành Phố Qui Nhơn','Phường Lê Lợi','107 Nguyễn Phong Sắc, Cầu Giấy, Hà Nôi, Việt Nam','52'),(30,'dfg','https://master.tus.io/files/7ed70e7f0b8c5d50f04315d2626252ef+KDlGZpRQv7Ot8uS4YMiZIuk5RJRts4G5gPJ3GCEH5_vnetYG41XbZQ3.o_c5bc.BARVK5yDlvypWnzHLNv9LAUouexS4MiEK1QlgR0v59Lwoelic_PlqKONIGj.AMdNQ',NULL,345,345,'sale','dfgd','0868626396','tranmanh@gmail.com',NULL,'US000001','2021/12/22',2,NULL,0,NULL,'Bắc Ninh',NULL,NULL,'2021-12-24',2,3,'Huyện Quế Võ','Xã Châu Phong','dfg','27'),(31,'sdfs','',NULL,23,234,'sale','sdf','0868626396','tranmanh@gmail.com',NULL,'US000001','2021/12/22',2,NULL,0,NULL,'Bắc Kạn',NULL,NULL,'2021-12-24',2,2,'Huyện Bạch Thông','Xã Lục Bình','dsfsdf','6'),(32,'new test','',NULL,234,234,'sale','new test','0868626396','tranmanh@gmail.com',NULL,'US000001','2021/12/22',2,NULL,0,NULL,'Cần Thơ','4',NULL,'2021-12-25',2,3,'Quận Ninh Kiều','Phường An Hội','new test','92'),(33,'sdfsdf','',NULL,234,234,'sale','sdfsdf','0868626396','tranmanh@gmail.com',NULL,'US000001','2021/12/22',3,NULL,0,NULL,'Bắc Kạn','5',NULL,'2021-12-25',2,2,'Huyện Chợ Mới','Xã Hoà Mục','sdfdsf','6');
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

-- Dump completed on 2021-12-22 19:40:36
