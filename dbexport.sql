-- MariaDB dump 10.19  Distrib 10.11.3-MariaDB, for debian-linux-gnueabihf (armv7l)
--
-- Host: localhost    Database: sensor_data
-- ------------------------------------------------------
-- Server version	10.11.3-MariaDB-1+rpi1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `distance`
--

DROP TABLE IF EXISTS `distance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `distance` float DEFAULT NULL,
  `timestamp` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distance`
--

LOCK TABLES `distance` WRITE;
/*!40000 ALTER TABLE `distance` DISABLE KEYS */;
INSERT INTO `distance` VALUES
(1,0,'2024-10-15 16:49:33'),
(2,0,'2024-10-15 16:49:45'),
(3,0,'2024-10-15 16:49:57'),
(4,0,'2024-10-15 16:50:09'),
(5,0,'2024-10-15 16:50:21'),
(6,0,'2024-10-15 16:50:34'),
(7,0,'2024-10-15 16:50:49'),
(8,0,'2024-10-15 16:51:01'),
(9,0,'2024-10-15 16:55:04'),
(10,0,'2024-10-15 16:55:18');
/*!40000 ALTER TABLE `distance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `light`
--

DROP TABLE IF EXISTS `light`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `light` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lux_value` float DEFAULT NULL,
  `cahaya_cuaca` varchar(50) DEFAULT NULL,
  `timestamp` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `light`
--

LOCK TABLES `light` WRITE;
/*!40000 ALTER TABLE `light` DISABLE KEYS */;
INSERT INTO `light` VALUES
(1,0,'Hujan','2024-10-15 16:49:33'),
(2,32.5,'Mendung','2024-10-15 16:49:45'),
(3,34.17,'Mendung','2024-10-15 16:49:57'),
(4,20,'Mendung','2024-10-15 16:50:09'),
(5,32.5,'Mendung','2024-10-15 16:50:21'),
(6,28.33,'Mendung','2024-10-15 16:50:34'),
(7,32.5,'Mendung','2024-10-15 16:50:49'),
(8,26.67,'Mendung','2024-10-15 16:51:01'),
(9,33.33,'Mendung','2024-10-15 16:55:04'),
(10,25,'Mendung','2024-10-15 16:55:18');
/*!40000 ALTER TABLE `light` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rainfall`
--

DROP TABLE IF EXISTS `rainfall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rainfall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jumlah_tip` int(11) DEFAULT NULL,
  `curah_hujan_per_menit` float DEFAULT NULL,
  `curah_hujan_per_jam` float DEFAULT NULL,
  `curah_hujan_per_hari` float DEFAULT NULL,
  `curah_hujan_hari_ini` float DEFAULT NULL,
  `cuaca` varchar(50) DEFAULT NULL,
  `timestamp` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rainfall`
--

LOCK TABLES `rainfall` WRITE;
/*!40000 ALTER TABLE `rainfall` DISABLE KEYS */;
INSERT INTO `rainfall` VALUES
(1,0,0,0,0,0,'Berawan','2024-10-15 16:49:33'),
(2,0,0,0,0,0,'Berawan','2024-10-15 16:49:45'),
(3,0,0,0,0,0,'Berawan','2024-10-15 16:49:57'),
(4,8,1.4,1.4,0,5.6,'Hujan Ringan','2024-10-15 16:50:09'),
(5,8,4.2,5.6,0,5.6,'Hujan Ringan','2024-10-15 16:50:20'),
(6,8,0,5.6,0,5.6,'Hujan Ringan','2024-10-15 16:50:34'),
(7,8,0,5.6,0,5.6,'Hujan Ringan','2024-10-15 16:50:49'),
(8,8,0,5.6,0,5.6,'Hujan Ringan','2024-10-15 16:51:01'),
(9,12,0,8.4,0,8.4,'Hujan Ringan','2024-10-15 16:55:04'),
(10,12,0,8.4,0,8.4,'Hujan Ringan','2024-10-15 16:55:18');
/*!40000 ALTER TABLE `rainfall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wind`
--

DROP TABLE IF EXISTS `wind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wind` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rotasi_per_detik` float DEFAULT NULL,
  `kecepatan_meter_per_detik` float DEFAULT NULL,
  `kecepatan_kilometer_per_jam` float DEFAULT NULL,
  `timestamp` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wind`
--

LOCK TABLES `wind` WRITE;
/*!40000 ALTER TABLE `wind` DISABLE KEYS */;
INSERT INTO `wind` VALUES
(1,0,0,0,'2024-10-15 16:49:33'),
(2,1.3,3.2,11.4,'2024-10-15 16:49:45'),
(3,1.4,3.3,11.9,'2024-10-15 16:49:57'),
(4,0.4,2,7,'2024-10-15 16:50:09'),
(5,0.3,1.8,6.6,'2024-10-15 16:50:20'),
(6,0.6,2.2,8,'2024-10-15 16:50:34'),
(7,1.5,3.4,12.4,'2024-10-15 16:50:49'),
(8,1.5,3.4,12.4,'2024-10-15 16:51:01'),
(9,0.1,1.5,5.6,'2024-10-15 16:55:04'),
(10,0,0,0,'2024-10-15 16:55:18');
/*!40000 ALTER TABLE `wind` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-15 17:27:29
