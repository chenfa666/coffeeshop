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
-- Table structure for table `emailsupplier`
--

DROP TABLE IF EXISTS `emailsupplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emailsupplier` (
  `SupplierEmailID` int NOT NULL AUTO_INCREMENT,
  `SupplierID` int DEFAULT NULL,
  `SupplierEmail` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`SupplierEmailID`),
  UNIQUE KEY `SupplierEmail` (`SupplierEmail`),
  KEY `SupplierID` (`SupplierID`),
  CONSTRAINT `emailsupplier_ibfk_1` FOREIGN KEY (`SupplierID`) REFERENCES `supplier` (`SupplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailsupplier`
--

LOCK TABLES `emailsupplier` WRITE;
/*!40000 ALTER TABLE `emailsupplier` DISABLE KEYS */;
INSERT INTO `emailsupplier` VALUES (1,3,'e7zMIn88bw@example.com'),(2,3,'rg0Zyvtq0z@example.com'),(3,2,'t95ALlVyRy@example.com'),(4,2,'MQmpo4LHpx@example.com'),(5,13,'sDYBeJfRNx@example.com'),(6,11,'edXljbJ5o4@example.com'),(7,6,'A5SBoe6Rrh@example.com'),(8,8,'T1seaPdLRe@example.com'),(9,8,'V40E8qjrxU@example.com'),(10,10,'LHe6E9Baht@example.com'),(11,20,'RzM3Vvs55h@example.com'),(12,20,'BXRP0BBpOC@example.com'),(13,19,'MXIPFyYCzt@example.com'),(14,1,'BlBAqVLVts@example.com'),(15,1,'h0xw16DCFk@example.com'),(16,18,'sLYkQviyyf@example.com'),(17,18,'eNWYv6gvDk@example.com'),(18,4,'KfbJbBIqI0@example.com'),(19,4,'QZGNI2jwsR@example.com'),(20,17,'MXm6xJ68gp@example.com'),(21,17,'L8RJdKK5EE@example.com'),(22,7,'flDMrVRIPQ@example.com'),(23,7,'xIb4e0Cw6C@example.com'),(24,9,'Vj5xCARD1u@example.com'),(25,14,'ypuDZ4G6SU@example.com'),(26,16,'kuPpsMTSr5@example.com'),(27,16,'3IIseDqMsB@example.com'),(28,12,'JBGYvPP8ET@example.com'),(29,12,'2ZICx6D5S3@example.com'),(30,15,'KItwEZ5XlR@example.com'),(31,5,'VvKoiMG8VY@example.com'),(32,5,'ehAEajvltv@example.com');
/*!40000 ALTER TABLE `emailsupplier` ENABLE KEYS */;
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
