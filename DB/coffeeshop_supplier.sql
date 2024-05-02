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
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `SupplierID` int NOT NULL AUTO_INCREMENT,
  `SupplierTaxcode` varchar(10) NOT NULL,
  `SupplierName` varchar(40) DEFAULT NULL,
  `SupplierStreet` varchar(20) DEFAULT NULL,
  `SupplierDistrict` varchar(20) DEFAULT NULL,
  `SupplierCity` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`SupplierID`),
  UNIQUE KEY `SupplierTaxcode` (`SupplierTaxcode`),
  UNIQUE KEY `SupplierName` (`SupplierName`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'KNHY5K9IXO','Green Bean Co.','Main Street','Uptown','Chicago'),(2,'2LNFVL6F27','Fresh Ingredients Inc.','Main Street','East Side','Chicago'),(3,'0NZNH6DRLX','Quality Roasters Ltd.','Main Street','Downtown','Philadelphia'),(4,'L3KQT6F5GJ','Organic Coffee Farms','Cedar Lane','West End','New York'),(5,'ZLZ2MOLVRS','Brewers Supply Co.','Main Street','West End','Los Angeles'),(6,'6CD7U3PNXU','Coffee Bean Importers','Main Street','West End','Houston'),(7,'NLS2F960VG','Java Harvesters','Maple Street','East Side','Chicago'),(8,'9EWY3J4KAA','Gourmet Roasting Co.','Oak Avenue','East Side','Philadelphia'),(9,'OFQZ2L2WZF','Fair Trade Coffee Distributors','Main Street','Midtown','Philadelphia'),(10,'I7QDS7FF4P','Artisan Coffee Co.','Cedar Lane','East Side','Los Angeles'),(11,'3ESRIB36GH','Bean and Leaf Growers','Main Street','Downtown','New York'),(12,'SEDS7G746E','Morning Dew Suppliers','Maple Street','Uptown','Chicago'),(13,'2Q14TUSPE9','Craft Coffee Roasters','Main Street','Downtown','Houston'),(14,'RLXNQ2LRVI','Sunrise Coffee Traders','Cedar Lane','Uptown','Philadelphia'),(15,'WFEQ1A2KE5','Premium Coffee Blenders','Maple Street','Uptown','Los Angeles'),(16,'S92GS3R8RT','Morning Glory Farms','Main Street','Uptown','Houston'),(17,'N937ALG351','Golden Bean Roasting','Oak Avenue','East Side','Houston'),(18,'KZK7F3PPCI','Gourmet Beans Direct','Cedar Lane','West End','Houston'),(19,'JLK0GB3OAS','Harvest Moon Coffee','Main Street','Uptown','New York'),(20,'IV2HQOR6QC','Roastmaster\'s Choice','Cedar Lane','East Side','New York');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
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
