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
-- Table structure for table `godziny_otwarcia`
--

DROP TABLE IF EXISTS `godziny_otwarcia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `godziny_otwarcia` (
  `id_godziny` int(11) NOT NULL AUTO_INCREMENT,
  `id_uslugodawcy` int(11) NOT NULL,
  `dzien_tygodnia` varchar(100) CHARACTER SET utf8 NOT NULL,
  `otwarcie` time NOT NULL,
  `zamkniecie` time NOT NULL,
  PRIMARY KEY (`id_godziny`),
  KEY `godziny_otwarcia_fk1` (`id_uslugodawcy`),
  CONSTRAINT `godziny_otwarcia_fk1` FOREIGN KEY (`id_uslugodawcy`) REFERENCES `uslugodawca` (`id_uslugodawcy`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `godziny_otwarcia`
--

LOCK TABLES `godziny_otwarcia` WRITE;
/*!40000 ALTER TABLE `godziny_otwarcia` DISABLE KEYS */;
INSERT INTO `godziny_otwarcia` VALUES (1,1,'poniedziałek','10:00:00','02:00:00'),(2,1,'wtorek','10:00:00','02:00:00'),(3,1,'środa','10:00:00','02:00:00'),(4,1,'czwartek','10:00:00','02:00:00'),(5,1,'piątek','10:00:00','02:00:00'),(6,1,'sobota','10:00:00','02:00:00'),(7,1,'niedziela','10:00:00','02:00:00'),(8,2,'poniedziałek','08:00:00','20:00:00'),(9,2,'wtorek','08:00:00','20:00:00'),(10,2,'środa','08:00:00','20:00:00'),(11,2,'czwartek','08:00:00','20:00:00'),(12,2,'piątek','08:00:00','20:00:00'),(13,2,'sobota','08:00:00','20:00:00'),(14,2,'niedziela','08:00:00','20:00:00'),(15,3,'poniedziałek','08:00:00','20:00:00'),(16,3,'wtorek','08:00:00','20:00:00'),(17,3,'środa','08:00:00','20:00:00'),(18,3,'czwartek','08:00:00','20:00:00'),(19,3,'piątek','08:00:00','20:00:00'),(20,3,'sobota','08:00:00','20:00:00'),(21,3,'niedziela','08:00:00','20:00:00'),(22,5,'poniedziałek','08:00:00','20:00:00'),(23,5,'wtorek','08:00:00','20:00:00'),(24,5,'środa','08:00:00','20:00:00'),(25,5,'czwartek','08:00:00','20:00:00'),(26,5,'piątek','08:00:00','20:00:00'),(27,5,'sobota','08:00:00','20:00:00'),(28,5,'niedziela','08:00:00','20:00:00'),(29,4,'poniedziałek','10:00:00','22:00:00'),(30,4,'wtorek','10:00:00','22:00:00'),(31,4,'środa','10:00:00','22:00:00'),(32,4,'czwartek','10:00:00','22:00:00'),(33,4,'piątek','10:00:00','22:00:00'),(34,4,'sobota','10:00:00','22:00:00'),(35,4,'niedziela','10:00:00','22:00:00'),(36,6,'poniedziałek','10:00:00','22:00:00'),(37,6,'wtorek','10:00:00','22:00:00'),(38,6,'środa','10:00:00','22:00:00'),(39,6,'czwartek','10:00:00','22:00:00'),(40,6,'piątek','10:00:00','22:00:00'),(41,6,'sobota','10:00:00','22:00:00'),(42,6,'niedziela','10:00:00','22:00:00'),(43,7,'poniedziałek','10:00:00','22:00:00'),(44,7,'wtorek','10:00:00','22:00:00'),(45,7,'środa','10:00:00','22:00:00'),(46,7,'czwartek','10:00:00','22:00:00'),(47,7,'piątek','10:00:00','22:00:00'),(48,7,'sobota','10:00:00','22:00:00'),(49,7,'niedziela','10:00:00','22:00:00');
/*!40000 ALTER TABLE `godziny_otwarcia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-22 18:38:27
