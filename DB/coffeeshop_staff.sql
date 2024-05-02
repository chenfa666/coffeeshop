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
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `StaffID` varchar(6) NOT NULL,
  `Firstname` varchar(10) DEFAULT NULL,
  `Lastname` varchar(10) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Sex` varchar(10) DEFAULT NULL,
  `StartedDate` date DEFAULT NULL,
  `CurrentSalary` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`StaffID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('S0000','Tony','Kroos','2024-01-05','Male','2024-01-05',1000000.00),('S0001','Tony','Dang','2024-01-05','Male','2024-01-05',15000000.00),('S0002','Tony','Dang','2024-01-05','Male','2024-01-05',22000000.00),('S2019','Tommy','Dinh','2002-09-21','Male','2024-01-05',24000000.00),('S40900','Tammy','Rodriguez','1977-04-16','Male','2024-01-06',7847024.88),('S56933','Kristin','Harris','1987-04-29','Female','2024-01-02',7552476.58),('S80829','Megan','Cross','1995-04-09','Female','2024-01-01',9661814.83),('S88230','Linda','Sanchez','1998-02-05','Male','2024-01-08',6635190.36),('S92610','Darlene','Thomas','1997-01-15','Male','2024-01-07',5480070.85);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `EnforceMinimumManagerSalaryTriggerInsert` AFTER INSERT ON `staff` FOR EACH ROW BEGIN
    DECLARE MaxNonManagerSalary DECIMAL(11, 2);

    SELECT MAX(CurrentSalary) INTO MaxNonManagerSalary FROM STAFF;
    
    -- Ensure manager's salary is at least 5000000 higher
    UPDATE MANAGER 
    SET CurrentSalary = 
	CASE
	    WHEN CurrentSalary <= MaxNonManagerSalary THEN MaxNonManagerSalary + 5000000
            WHEN CurrentSalary - MaxNonManagerSalary < 5000000 THEN MaxNonManagerSalary + 5000000
            ELSE CurrentSalary
        END;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `EnforceMinimumManagerSalaryTrigger` AFTER UPDATE ON `staff` FOR EACH ROW BEGIN
    DECLARE MaxNonManagerSalary DECIMAL(11, 2);

    SELECT MAX(CurrentSalary) INTO MaxNonManagerSalary FROM STAFF;
    
    -- Ensure manager's salary is at least 5000000 higher
    UPDATE MANAGER 
    SET CurrentSalary = 
	CASE
	    WHEN CurrentSalary <= MaxNonManagerSalary THEN MaxNonManagerSalary + 5000000
            WHEN CurrentSalary - MaxNonManagerSalary < 5000000 THEN MaxNonManagerSalary + 5000000
            ELSE CurrentSalary
        END;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-01 16:08:00
