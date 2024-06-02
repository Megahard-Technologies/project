CREATE DATABASE  IF NOT EXISTS `kck_pio_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `kck_pio_db`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: kck_pio_db
-- ------------------------------------------------------
-- Server version	5.7.44

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
-- Table structure for table `opinie`
--

DROP TABLE IF EXISTS `opinie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opinie` (
  `id_opinii` int(11) NOT NULL AUTO_INCREMENT,
  `id_uslugodawcy` int(11) NOT NULL,
  `ilosc_gwiazdek` int(11) DEFAULT NULL,
  `opis` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `czas` datetime NOT NULL,
  `adres_ip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_opinii`),
  KEY `opinie_fk1` (`id_uslugodawcy`),
  CONSTRAINT `opinie_fk1` FOREIGN KEY (`id_uslugodawcy`) REFERENCES `uslugodawca` (`id_uslugodawcy`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opinie`
--

LOCK TABLES `opinie` WRITE;
/*!40000 ALTER TABLE `opinie` DISABLE KEYS */;
INSERT INTO `opinie` VALUES (1,1,4,'Lorem ipsum','2024-05-23 15:00:28',NULL),(2,1,4,'Lorem ipsum','2024-05-19 00:00:00',NULL),(3,1,3,'Lorem ipsum','2024-04-29 00:00:00',NULL),(4,1,5,'Lorem ipsum','2024-03-09 00:00:00',NULL),(5,2,4,'Lorem ipsum','2024-05-23 15:00:28',NULL),(6,2,5,'Lorem ipsum','2024-05-18 00:00:00',NULL),(7,2,5,'Lorem ipsum','2024-01-06 00:00:00',NULL),(8,2,4,'Lorem ipsum','2023-12-14 00:00:00',NULL),(9,3,3,'Lorem ipsum','2024-05-23 15:00:28',NULL),(10,3,2,'Lorem ipsum','2024-03-27 00:00:00',NULL),(11,3,2,'Lorem ipsum','2024-01-01 00:00:00',NULL),(12,3,1,'Lorem ipsum','2024-05-05 00:00:00',NULL),(13,4,5,'Lorem ipsum','2024-05-23 15:00:28',NULL),(14,4,5,'Lorem ipsum','2024-02-19 00:00:00',NULL),(15,4,5,'Lorem ipsum','2024-02-02 00:00:00',NULL),(16,4,4,'Lorem ipsum','2024-04-06 00:00:00',NULL),(17,5,4,'Lorem ipsum','2024-05-23 15:00:28',NULL),(18,5,4,'Lorem ipsum','2024-01-13 00:00:00',NULL),(19,5,4,'Lorem ipsum','2024-03-03 00:00:00',NULL),(20,5,4,'Lorem ipsum','2024-03-07 00:00:00',NULL),(21,6,1,'Lorem ipsum','2024-05-23 15:00:28',NULL),(22,6,2,'Lorem ipsum','2024-05-30 00:00:00',NULL),(23,6,3,'Lorem ipsum','2024-04-04 00:00:00',NULL),(24,6,4,'Lorem ipsum','2024-02-08 00:00:00',NULL),(25,7,1,'Lorem ipsum','2024-05-23 15:00:28',NULL),(26,7,3,'Lorem ipsum','2024-04-12 00:00:00',NULL),(27,7,5,'Lorem ipsum','2024-05-05 00:00:00',NULL),(28,7,5,'Lorem ipsum','2024-01-09 00:00:00',NULL),(29,1,NULL,'Test','2024-05-24 13:15:25',NULL),(30,1,NULL,'opinia dla 1','2024-05-24 13:21:25',NULL),(31,1,NULL,'opinia dla 1 z innego eventu','2024-05-24 13:23:03',NULL),(32,2,NULL,'opinia dla 2','2024-05-24 13:23:20',NULL),(33,3,NULL,'opinia dla 3','2024-05-24 13:41:28',NULL),(34,2,NULL,'opinia dla 2 test','2024-05-24 13:42:22',NULL),(35,1,3,NULL,'2024-05-25 13:22:55',NULL),(36,2,3,'nowa opinia 3','2024-05-25 14:14:57',NULL),(37,2,3,'kolejna opinia 3','2024-05-25 14:15:27',NULL),(38,2,2,'','2024-05-25 14:15:54',NULL),(39,2,2,'','2024-05-25 14:16:58',NULL),(40,3,5,'nowa opinia 5 ','2024-05-25 14:19:28',NULL),(41,3,5,'','2024-05-25 14:19:38',NULL),(42,3,5,'','2024-05-25 14:19:45',NULL),(43,3,5,'','2024-05-25 14:19:53',NULL),(44,3,5,'','2024-05-25 14:20:00',NULL),(45,3,5,'','2024-05-25 14:20:06',NULL),(46,3,5,'','2024-05-25 14:20:14',NULL),(47,3,5,'','2024-05-25 14:25:44',NULL),(48,3,5,'','2024-05-25 14:25:49',NULL),(49,3,5,'','2024-05-25 14:25:54',NULL),(50,3,NULL,'bez oceny','2024-05-25 14:26:03',NULL),(51,2,4,'','2024-05-25 14:27:35',NULL),(52,2,4,'','2024-05-25 14:27:45',NULL),(53,2,NULL,'bez oceny','2024-05-25 14:28:02',NULL),(54,2,NULL,'bez oceny 1','2024-05-25 14:28:21',NULL),(55,1,4,'','2024-05-25 14:29:03',NULL),(56,1,4,'','2024-05-25 14:29:13',NULL),(57,1,5,'','2024-05-25 14:40:23',NULL),(58,1,5,'','2024-05-25 14:40:55',NULL),(59,1,4,'nowa opinia 4','2024-05-25 14:59:45',NULL),(60,2,4,'nowa ocena 4','2024-05-25 15:06:04',NULL),(61,2,4,'','2024-05-25 15:06:10',NULL),(62,2,NULL,'bez oceny','2024-05-25 15:06:24',NULL),(63,2,4,'','2024-05-25 15:06:32',NULL),(64,2,5,'','2024-05-25 15:08:33',NULL),(65,2,4,'','2024-05-25 15:12:15',NULL),(66,1,5,'Test z telefonu ','2024-05-25 15:15:20',NULL),(67,2,4,'Test z telefonu ','2024-05-25 15:16:06',NULL),(68,3,4,'Test z telefonu','2024-05-25 15:22:58',NULL),(69,1,4,'Fajny lokal, bardzo miła obsługa, ale daje 4 gwiazdki bo kot zesrał mi się w domu do butów.','2024-05-25 15:45:10',NULL),(70,1,2,'','2024-05-25 15:51:10',NULL),(71,1,1,'','2024-05-25 15:51:19',NULL),(72,1,NULL,'','2024-05-25 15:51:29',NULL),(73,1,NULL,'','2024-05-25 15:52:02',NULL),(74,1,NULL,'','2024-05-25 15:52:03',NULL),(75,1,NULL,'','2024-05-25 15:52:03',NULL),(76,1,NULL,'','2024-05-25 15:52:03',NULL),(77,1,NULL,'','2024-05-25 15:52:03',NULL),(78,1,NULL,'','2024-05-25 15:52:03',NULL),(79,1,NULL,'','2024-05-25 15:52:04',NULL),(80,1,NULL,'','2024-05-25 15:52:04',NULL),(81,1,NULL,'','2024-05-25 15:52:04',NULL),(82,1,NULL,'','2024-05-25 15:52:04',NULL),(83,1,NULL,'','2024-05-25 15:52:04',NULL),(84,1,NULL,'','2024-05-25 15:52:04',NULL),(85,1,NULL,'','2024-05-25 15:52:05',NULL),(86,1,NULL,'','2024-05-25 15:52:05',NULL),(87,1,NULL,'','2024-05-25 15:52:05',NULL),(88,1,4,'Test z telefonu 25.05','2024-05-26 11:11:01',NULL),(89,1,NULL,'26.05','2024-05-26 11:11:28',NULL),(90,2,4,'test 27.05','2024-05-27 08:28:26',NULL),(91,2,3,'Test','2024-05-27 08:32:48',NULL),(92,3,5,'Test z telefonu Miłosza 27.05','2024-05-27 09:05:54',NULL),(93,2,4,'','2024-05-27 16:45:26',NULL),(94,2,4,'','2024-05-27 16:45:40',NULL),(95,1,4,'test ip','2024-05-27 17:14:39',NULL),(96,2,4,'test ip','2024-05-27 17:20:21',NULL),(97,2,4,'test ip 1','2024-05-27 17:20:54',NULL),(98,1,4,'Test IP ','2024-05-27 17:21:10',NULL),(99,3,5,'test ip','2024-05-27 17:23:25',NULL),(100,1,5,'Test IP','2024-05-27 17:23:43',NULL),(101,1,5,'Test ip','2024-05-27 17:24:50',NULL),(102,1,4,'Test IP new','2024-05-27 17:32:04',NULL),(103,2,5,'Test','2024-05-27 17:37:51',NULL),(104,3,4,'Test IP ','2024-05-28 09:13:26',NULL),(105,1,4,'Test IP','2024-05-28 09:13:42',NULL),(106,3,4,'Test','2024-05-28 09:13:58',NULL),(107,2,3,'Test','2024-05-28 09:14:10',NULL),(108,3,4,'Test\n','2024-05-28 09:14:19',NULL),(109,3,3,'Test','2024-05-28 09:14:59',NULL),(110,2,3,'Test','2024-05-28 09:15:15',NULL),(111,1,4,'test','2024-05-28 09:16:48',NULL),(112,2,NULL,'','2024-05-28 09:16:56',NULL),(113,3,NULL,'','2024-05-28 09:17:01',NULL),(114,1,NULL,'','2024-05-28 09:17:05',NULL),(115,1,NULL,'','2024-05-28 12:26:41',NULL),(116,1,NULL,'','2024-05-28 12:27:01',NULL),(117,1,1,'T','2024-05-28 12:31:54',NULL),(118,1,1,'Te','2024-05-28 12:41:04',NULL),(119,1,2,'te','2024-05-28 12:45:40','192.168.0.1'),(123,3,NULL,'','2024-05-28 13:36:32','10.128.166.249'),(126,1,4,'Znikanie ','2024-05-28 16:38:27','192.168.0.104'),(127,2,5,'Znikanie','2024-05-28 16:39:57','192.168.0.104');
/*!40000 ALTER TABLE `opinie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-02 12:21:35
