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
-- Table structure for table `member_customer`
--

DROP TABLE IF EXISTS `member_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_customer` (
  `OrderCode` int NOT NULL,
  `MemberID` int NOT NULL,
  `WiFiPassword` int DEFAULT NULL,
  `Phone` varchar(10) NOT NULL,
  `BirthDate` date DEFAULT NULL,
  `Fullname` varchar(20) NOT NULL,
  `MembershipPoints` int DEFAULT NULL,
  `MembershipLevel` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`MemberID`),
  KEY `OrderCode` (`OrderCode`),
  CONSTRAINT `member_customer_ibfk_1` FOREIGN KEY (`OrderCode`) REFERENCES `onsite_customer` (`OrderCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_customer`
--

LOCK TABLES `member_customer` WRITE;
/*!40000 ALTER TABLE `member_customer` DISABLE KEYS */;
INSERT INTO `member_customer` VALUES (478,105,239582,'827.441.13','2000-05-04','Jacob Colon',824,'Gold'),(714,151,327946,'(979)878-6','1967-08-20','Melinda Barnes',1682,'Platinum'),(551,154,105232,'634.249.26','1939-02-03','Tiffany Sullivan',575,'Gold'),(85,186,333192,'001-427-31','1998-11-02','Carla Reed',1954,'Platinum'),(667,213,518740,'520-442-26','1982-09-18','James Joseph',1513,'Platinum'),(260,270,907887,'8049021089','1949-11-12','Susan Wu',833,'Gold'),(563,328,638535,'(408)894-3','1948-06-24','Dominique Hess',1060,'Platinum'),(153,369,955479,'277.426.56','1975-11-25','Erin Peters',1524,'Platinum'),(621,461,200292,'+1-958-371','1998-05-25','Paul Castillo',1162,'Platinum'),(327,576,608181,'852-272-95','1986-07-14','Chad Carter',915,'Gold'),(23,608,669704,'654.763.98','1957-03-18','Erika Robinson',1067,'Platinum'),(570,774,730805,'(458)867-4','1974-09-24','Alexis Braun',897,'Gold'),(608,1046,192152,'+1-573-296','1972-09-23','Paul Mills',1444,'Platinum'),(686,1109,235218,'513-508-64','1957-11-26','Shane Smith',857,'Gold'),(411,1167,426706,'289-990-50','1937-03-02','Stephanie Andrews',1300,'Platinum'),(255,1200,754132,'001-721-31','2004-02-17','Jennifer Blanchard',753,'Gold'),(450,1286,986556,'738.596.23','1999-04-01','Patrick Alexander',1889,'Platinum'),(29,1301,885642,'001-615-56','1959-07-08','Maurice Smith',273,'Silver'),(295,1428,749466,'001-526-36','1966-09-30','Daniel Solis',93,'Bronze'),(702,1520,611991,'215-373-53','1949-03-23','James Jensen',1914,'Platinum'),(53,1543,395004,'+1-306-776','1995-04-11','Tammy Anderson',362,'Silver'),(592,1624,304085,'230-411-40','1937-03-07','Amy Velasquez',244,'Silver'),(81,1685,676799,'3579944010','1998-04-10','Eric Rodriguez',1539,'Platinum'),(704,1756,672387,'001-290-66','1958-11-24','Sydney Contreras',1864,'Platinum'),(189,1767,112185,'001-902-88','1988-02-29','Nathaniel Terrell',1304,'Platinum'),(564,1836,695332,'294.687.96','1963-09-09','Patrick Jones',646,'Gold'),(572,1952,456060,'799-746-60','1976-10-23','Allison Haynes',1744,'Platinum'),(567,1984,823203,'246-525-01','1981-04-08','Mary Williams',1791,'Platinum'),(361,2313,610774,'948-344-29','1996-10-30','Sean Brown',1460,'Platinum'),(230,2357,870596,'634-637-66','1969-07-14','Scott Miller',478,'Silver'),(133,2381,936095,'(807)753-8','1942-03-28','Ronald Cline',320,'Silver'),(290,2589,686910,'+1-494-603','1951-11-30','Shawn Meyer',124,'Bronze'),(232,2590,573212,'+1-387-832','1968-10-18','Adriana Little',1548,'Platinum'),(727,3206,736414,'834-300-23','1939-07-19','James Decker',1545,'Platinum'),(210,3257,707960,'(240)995-3','1980-04-18','Melinda Cox',379,'Silver'),(65,3322,389914,'872-899-12','1951-12-11','Angela Gregory',827,'Gold'),(37,3410,954460,'001-903-62','1943-11-10','Daryl Winters',1895,'Platinum'),(8,3512,463270,'001-647-61','1945-01-26','Miranda Schaefer',1157,'Platinum'),(574,3525,709445,'+1-943-304','1951-03-27','Caleb Pope',1025,'Platinum'),(31,3542,969509,'653-646-02','1997-06-10','Jeffrey Hanna',993,'Gold'),(540,3654,653380,'+1-638-756','1944-09-20','Donald Nunez',1448,'Platinum'),(498,3970,941984,'263-498-24','1997-10-02','Travis Hernandez',978,'Gold'),(429,4015,494644,'001-234-90','1971-12-13','Tara Ramos',231,'Silver'),(107,4362,645443,'+1-651-821','1944-08-04','Kevin Rodriguez',1292,'Platinum'),(449,4473,131114,'416.640.71','1947-11-21','Jeanne Lee',1844,'Platinum'),(15,4633,414205,'+1-734-287','1983-12-22','Joshua Allen',1285,'Platinum'),(418,4641,470766,'357.284.88','1948-01-11','Diana Mahoney',1608,'Platinum'),(530,4664,613674,'(682)644-1','1967-08-26','Richard Bradley',1297,'Platinum'),(269,4820,519465,'452.296.81','1969-09-05','Raymond Villegas',184,'Bronze'),(475,5118,374906,'532-664-64','1951-08-30','David Melendez',1882,'Platinum'),(479,5210,608636,'463.723.45','1951-11-25','Kathy Kline',1035,'Platinum'),(505,5221,215607,'+1-790-409','1954-11-04','Jennifer Taylor',73,'Bronze'),(41,5431,536935,'302-941-09','1960-05-20','Kayla Johnson',444,'Silver'),(712,5850,777509,'+1-816-310','1948-07-16','Meghan Mclean',1027,'Platinum'),(489,5900,542049,'+1-760-840','1967-01-29','Erin Horton',921,'Gold'),(455,6045,891246,'(544)293-6','2003-08-10','Jesse Anthony',1340,'Platinum'),(575,6082,626641,'001-635-75','1947-12-19','Amy Wang',191,'Bronze'),(149,6104,947363,'303-326-26','1934-10-18','Jonathan Gibson',911,'Gold'),(390,6147,984719,'(722)612-6','1987-12-28','John Flores',727,'Gold'),(337,6174,460589,'+1-974-896','1969-05-24','Jennifer Ortiz MD',154,'Bronze'),(193,6310,336032,'001-331-94','1957-01-03','Eric Marquez',1383,'Platinum'),(588,6553,745121,'4474558322','1939-10-31','Erin Shaffer',747,'Gold'),(28,6681,223887,'(805)883-5','1953-07-11','Laura Johnson',654,'Gold'),(557,6704,426752,'423.379.41','2000-03-20','William James',535,'Gold'),(447,6765,813192,'001-945-97','1984-06-27','Heather Martin',595,'Gold'),(245,6818,732170,'(413)726-5','1964-08-12','Julie Cooper',1637,'Platinum'),(523,6824,295842,'+1-487-879','1952-08-12','Amber Garcia',1050,'Platinum'),(271,7138,523774,'001-567-47','1946-09-26','Tiffany Williams',1995,'Platinum'),(385,7259,238741,'977-353-77','2006-02-20','Anthony Miller',468,'Silver'),(55,7491,542091,'359.485.13','1937-06-20','Anthony Ward',1834,'Platinum'),(156,7499,276028,'650-449-35','1958-02-09','Melanie Chavez',1717,'Platinum'),(158,7633,299326,'(535)883-9','1976-09-06','Sarah Chen',83,'Bronze'),(402,7669,269785,'490.429.02','1944-10-25','Tammie Nelson',1718,'Platinum'),(340,7734,980962,'397-918-98','1966-11-02','Barry Valencia',873,'Gold'),(355,7842,340253,'001-503-89','1971-03-24','Brandy Li',1201,'Platinum'),(186,7874,796967,'7498783272','1947-11-23','Angela Pacheco',1732,'Platinum'),(137,7932,424052,'376-246-77','1993-02-24','Joseph Calderon',459,'Silver'),(369,8017,902113,'811.546.43','1986-10-16','Patricia Wright',1808,'Platinum'),(176,8029,949989,'510.418.32','1982-04-14','Cheryl Moore',1902,'Platinum'),(724,8076,333310,'001-247-92','1976-03-16','Sharon Salinas',1673,'Platinum'),(110,8077,995232,'635-964-11','1952-02-21','Nicole Mcgrath',644,'Gold'),(223,8272,550626,'659.509.03','2001-04-26','Michelle Palmer',355,'Silver'),(170,8385,967064,'7802441081','1983-08-16','Samantha Thompson',1972,'Platinum'),(22,8425,193886,'711-892-67','1948-10-15','Russell Holloway',635,'Gold'),(573,8636,544383,'(287)704-6','1992-11-03','Lance Hanson',1165,'Platinum'),(594,8674,419656,'(975)638-6','1982-01-23','Greg Waller',1251,'Platinum'),(524,8770,402960,'001-861-82','1958-02-28','Mrs. Donna Moore',1749,'Platinum'),(482,8845,306349,'875.749.20','1942-10-22','William Bush',712,'Gold'),(579,9094,791313,'001-305-67','2000-03-09','Mariah Woods',752,'Gold'),(625,9134,353709,'9328694826','1966-11-15','Cheyenne Jones',1297,'Platinum'),(266,9172,174070,'(411)807-0','1970-05-18','Alan Johnson',281,'Silver'),(699,9173,362815,'(217)360-4','1966-08-23','John Sawyer',1239,'Platinum'),(289,9226,879867,'+1-282-964','1982-01-24','Matthew Powers',241,'Silver'),(324,9340,628150,'001-258-80','2002-03-02','Jonathan Cox',1651,'Platinum'),(32,9567,252041,'524-965-88','1994-08-01','Chad Stokes',1231,'Platinum'),(658,9608,308957,'959.452.64','2005-12-06','Diane Conley',1581,'Platinum'),(205,9631,326840,'590-742-46','1957-06-02','Kevin Rice',13,'Bronze'),(172,9732,711303,'484-915-97','1996-10-26','Sherry Woods DDS',171,'Bronze'),(306,9776,689367,'789-776-11','1943-01-26','Christine Torres',585,'Gold'),(222,9788,126769,'544.906.26','1999-02-20','Jason Vang',336,'Silver');
/*!40000 ALTER TABLE `member_customer` ENABLE KEYS */;
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
