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
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `ManagerID` varchar(6) NOT NULL,
  `Firstname` varchar(10) DEFAULT NULL,
  `Lastname` varchar(10) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Sex` varchar(10) DEFAULT NULL,
  `StartedDate` date DEFAULT NULL,
  `CurrentSalary` decimal(12,2) DEFAULT NULL,
  `LoginPassword` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`ManagerID`),
  UNIQUE KEY `LoginPassword` (`LoginPassword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES ('M0000','Tony','Kroos','2024-01-05','Male','2024-01-05',29000000.00,'12345678'),('M0001','Tony','Kroos','2024-01-05','Male','2024-01-05',29000000.00,'12345670'),('M12272','Elizabeth','Morgan','1962-02-04','Male','2024-01-03',29000000.00,'RJ76nNVP'),('M33356','Alec','Charles','1969-02-16','Female','2024-01-10',29000000.00,'P8hUkia0'),('M56378','Betty','Chase','1991-04-02','Male','2024-01-08',29000000.00,'s3xinRji'),('M90639','Jessica','Scott','1962-09-09','Male','2024-01-03',29000000.00,'CdBz6Px7'),('M93703','Joseph','Moore','1975-09-12','Female','2024-01-09',29000000.00,'cFF5JrNo'),('M99975','David','Andrews','1992-07-05','Female','2024-01-03',29000000.00,'CiaqC7mO');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-01 16:08:00
