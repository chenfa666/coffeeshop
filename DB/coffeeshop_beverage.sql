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
-- Table structure for table `beverage`
--

DROP TABLE IF EXISTS `beverage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beverage` (
  `BeverageID` int NOT NULL AUTO_INCREMENT,
  `BeverageName` varchar(20) NOT NULL,
  `BeverageGroup` varchar(15) DEFAULT NULL,
  `BeverageSize` varchar(6) DEFAULT NULL,
  `BeveragePrice` decimal(5,0) DEFAULT NULL,
  PRIMARY KEY (`BeverageID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beverage`
--

LOCK TABLES `beverage` WRITE;
/*!40000 ALTER TABLE `beverage` DISABLE KEYS */;
INSERT INTO `beverage` VALUES (1,'VN Black Coffee','Coffee','Medium',25000),(2,'VN Black Coffee','Coffee','Large',30000),(3,'VN Milk Coffee','Coffee','Medium',30000),(4,'VN Milk Coffee','Coffee','Large',35000),(5,'VN White Coffee','Coffee','Medium',30000),(6,'VN White Coffee','Coffee','Large',35000),(7,'Expresso (hot)','Coffee','Medium',30000),(8,'Expresso (hot)','Coffee','Large',35000),(9,'Expresso (cold)','Coffee','Medium',30000),(10,'Expresso (cold)','Coffee','Large',35000),(11,'Cappuccino','Coffee','Medium',35000),(12,'Cappuccino','Coffee','Large',40000),(13,'Americano','Coffee','Medium',35000),(14,'Americano','Coffee','Large',40000),(15,'Latte','Coffee','Medium',35000),(16,'Latte','Coffee','Large',40000),(17,'Coconut Milk Coffee','Coffee','Medium',35000),(18,'Coconut Milk Coffee','Coffee','Large',40000),(19,'Lychee tea','Fruit Tea','Medium',40000),(20,'Lychee tea','Fruit Tea','Large',45000),(21,'Peach tea','Fruit Tea','Medium',40000),(22,'Peach tea','Fruit Tea','Large',45000),(23,'Pomelo tea','Fruit Tea','Medium',40000),(24,'Pomelo tea','Fruit Tea','Large',45000),(25,'Avocado','Smoothie',NULL,35000),(26,'Durian','Smoothie',NULL,35000),(27,'Pineapple','Smoothie',NULL,35000),(28,'Green Mint','Ice Blended',NULL,40000),(29,'Oreo Cookies','Ice Blended',NULL,40000),(30,'Chocolate','Ice Blended',NULL,40000),(31,'Matcha','Ice Blended',NULL,40000);
/*!40000 ALTER TABLE `beverage` ENABLE KEYS */;
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
