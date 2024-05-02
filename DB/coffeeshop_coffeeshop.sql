-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: coffeeshop
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `coffeeshop`
--

DROP TABLE IF EXISTS `coffeeshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coffeeshop` (
  `ShopID` int NOT NULL,
  `Street` varchar(20) DEFAULT NULL,
  `District` varchar(20) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `OpeningDate` date NOT NULL,
  PRIMARY KEY (`ShopID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coffeeshop`
--

LOCK TABLES `coffeeshop` WRITE;
/*!40000 ALTER TABLE `coffeeshop` DISABLE KEYS */;
INSERT INTO `coffeeshop` VALUES (1,'Gutierrez Forge','berg','East Timothyview','2019-12-28'),(2,'Chelsea Pass','land','South Michaelview','2019-09-28'),(3,'Cuevas Forks','furt','East Katelyntown','2021-08-16'),(4,'Hill Ranch','view','Larryport','2022-12-04'),(5,'Malik Terrace','side','Lake Amy','2020-06-05'),(6,'Martha Well','town','Lake Elizabethfort','2022-03-06'),(7,'Joseph Isle','fort','Port Angelamouth','2020-12-09'),(8,'Haas Plaza','land','East Aaronbury','2019-11-27'),(9,'Spencer Lodge','berg','West Robertbury','2020-08-02'),(10,'Bishop Alley','burgh','North Jillville','2020-06-07');
/*!40000 ALTER TABLE `coffeeshop` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-01 16:07:59
