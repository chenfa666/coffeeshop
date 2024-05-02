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
-- Table structure for table `ingredients_in_beverage`
--

DROP TABLE IF EXISTS `ingredients_in_beverage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredients_in_beverage` (
  `BeverageID` int NOT NULL,
  `FormulaDescription` varchar(150) DEFAULT NULL,
  KEY `BeverageID` (`BeverageID`),
  CONSTRAINT `ingredients_in_beverage_ibfk_1` FOREIGN KEY (`BeverageID`) REFERENCES `beverage` (`BeverageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients_in_beverage`
--

LOCK TABLES `ingredients_in_beverage` WRITE;
/*!40000 ALTER TABLE `ingredients_in_beverage` DISABLE KEYS */;
INSERT INTO `ingredients_in_beverage` VALUES (1,'Strong Vietnamese Robusta coffee grounds, ice cubes'),(2,'Strong Vietnamese Robusta coffee grounds, ice cubes'),(3,'Strong Vietnamese Robusta coffee grounds, condensed milk, ice cubes'),(4,'Strong Vietnamese Robusta coffee grounds, condensed milk, ice cubes'),(5,'Strong Vietnamese Robusta coffee grounds, condensed milk, no-sugar fresh milk, ice cubes'),(6,'Strong Vietnamese Robusta coffee grounds, condensed milk, no-sugar fresh milk, ice cubes'),(7,'Espresso beans'),(8,'Espresso beans'),(9,'Espresso beans, ice cubes'),(10,'Espresso beans, ice cubes'),(11,'Espresso shot (1-1.5 oz), Steamed milk (4-5 oz), Milk foam (1-1.5 oz)'),(12,'Espresso shot (1-1.5 oz), Steamed milk (4-5 oz), Milk foam (1-1.5 oz)'),(13,'Espresso shot (1-2 oz), water'),(14,'Espresso shot (1-2 oz), water'),(15,'Espresso shot (1-2 oz, )Steamed milk (whole milk preferred, but any type works - 5-6 oz), Optional: Sweetener (sugar, syrup, honey)'),(16,'Espresso shot (1-2 oz, )Steamed milk (whole milk preferred, but any type works - 5-6 oz), Optional: Sweetener (sugar, syrup, honey)'),(17,'Strong brewed coffee, coconut milk, sugar, ice cubes'),(18,'Strong brewed coffee, coconut milk, sugar, ice cubes'),(19,'Lychee (fresh or canned), water, green tea bags, sweetener, mint/lemon (optional), ice cubes'),(20,'Lychee (fresh or canned), water, green tea bags, sweetener, mint/lemon (optional), ice cubes'),(21,'2-3 ripe peaches, water, black tea bag, sweetener, peach syrup, ice cubes'),(22,'2-3 ripe peaches, water, black tea bag, sweetener, peach syrup, ice cubes'),(23,'Pomelo peel, black tea bag, sweetener, ice cubes'),(24,'Pomelo peel, black tea bag, sweetener, ice cubes'),(25,'1 ripe avocado, milk, condensed milk, coconut milk, ice cubes'),(26,'Durian flesh, milk, condensed milk, ice cubes'),(27,'Pineapple chunks, milk, condensed milk, ice cubes'),(28,'Fresh mint leaves, milk, Sweetener, Whipped cream, ice cubes'),(29,'Oreo cookies, milk, Sweetener, Whipped cream , ice cubes'),(30,'Chocolate flavor( Cocoa powder, syrup,...), milk, Sweetener, Whipped cream, ice cubes'),(31,'Matcha powder, milk, Sweetener, Whipped cream, ice cubes');
/*!40000 ALTER TABLE `ingredients_in_beverage` ENABLE KEYS */;
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
