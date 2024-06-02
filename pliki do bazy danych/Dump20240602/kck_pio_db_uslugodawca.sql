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
-- Table structure for table `uslugodawca`
--

DROP TABLE IF EXISTS `uslugodawca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uslugodawca` (
  `id_uslugodawcy` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa_firmy` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `nr_telefonu` varchar(9) DEFAULT NULL,
  `adres` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id_uslugodawcy`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uslugodawca`
--

LOCK TABLES `uslugodawca` WRITE;
/*!40000 ALTER TABLE `uslugodawca` DISABLE KEYS */;
INSERT INTO `uslugodawca` VALUES (1,'Indeks','kontakt@indeks.pl','426367341','ul. Stefanowskiego 17, Łódź'),(2,'Miejski Klub Tenisowy','kontak@mkt.pl','426376504','ul. Żeromskiego 117, Łódź'),(3,'Zatoka Sportu','kontakt@zatoka.pl','426312978','al. Politechniki 10, Łódź'),(4,'Farina Bianco','farina.bianco@gmail.com','601700715','al. Piłsudskiego 14, Łódź'),(5,'Klub Sportowy Budowlani','budolodz@infocentrum.com','426563225','sul. Górnicza 5, Łódź'),(6,'Bar Bambus','bambus@info.com','426574444','Marynarska 45, Łódź'),(7,'Zatoka Smaku','zatoka_smaku@infocentru.com','426567239','al. Politechniki 10, Łódź');
/*!40000 ALTER TABLE `uslugodawca` ENABLE KEYS */;
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
