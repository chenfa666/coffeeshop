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
-- Table structure for table `nonmember_customer`
--

DROP TABLE IF EXISTS `nonmember_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nonmember_customer` (
  `OrderCode` int NOT NULL,
  `LimitedWiFiPassword` int DEFAULT NULL,
  KEY `OrderCode` (`OrderCode`),
  CONSTRAINT `nonmember_customer_ibfk_1` FOREIGN KEY (`OrderCode`) REFERENCES `onsite_customer` (`OrderCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nonmember_customer`
--

LOCK TABLES `nonmember_customer` WRITE;
/*!40000 ALTER TABLE `nonmember_customer` DISABLE KEYS */;
INSERT INTO `nonmember_customer` VALUES (1,10568),(2,41043),(3,72805),(4,18353),(5,85744),(6,31679),(7,29885),(9,90119),(10,38301),(11,88102),(12,31120),(13,59640),(14,51788),(16,13587),(17,64833),(18,83566),(19,51180),(20,43140),(21,12902),(24,60628),(25,59140),(26,10199),(27,96580),(30,87916),(33,52652),(34,42736),(35,23875),(36,51575),(38,60570),(39,87635),(40,74524),(42,68823),(43,54355),(44,32461),(45,34881),(46,80183),(47,44815),(48,62619),(49,33545),(50,20183),(51,23443),(52,74237),(54,66178),(56,34266),(57,99957),(58,39692),(59,93687),(60,49634),(61,30760),(62,13866),(63,51839),(64,38172),(66,83344),(67,64110),(68,54137),(69,51735),(70,12814),(71,21484),(72,30439),(73,40267),(74,54777),(75,33153),(76,45880),(77,89946),(78,46855),(79,55406),(80,71918),(82,70731),(83,23407),(84,27365),(86,39877),(87,20018),(88,72446),(89,39053),(90,93941),(91,25038),(92,67291),(93,30834),(94,18657),(95,77474),(96,58438),(97,32654),(98,70277),(99,69274),(100,18564),(101,21780),(102,27513),(103,26055),(104,59556),(105,41488),(106,14565),(108,34099),(109,67313),(111,20095),(112,39996),(113,27868),(114,71114),(115,54591),(116,36660),(117,62877),(118,42054),(119,81285),(120,12974),(121,29459),(122,67442),(123,74679),(124,53723),(125,86360),(126,57535),(127,50426),(128,46616),(129,71988),(130,21396),(131,32561),(132,74891),(134,17085),(135,30446),(136,19379),(138,18577),(139,50180),(140,77624),(141,63559),(142,85721),(143,33360),(144,52233),(145,20927),(146,44552),(147,11929),(148,21656),(150,59116),(151,61439),(152,28231),(154,18190),(155,18400),(157,96507),(159,68836),(160,47374),(161,61045),(162,86460),(163,38508),(164,54307),(165,10678),(166,27911),(167,75506),(168,62832),(169,50319),(171,55864),(173,24138),(174,75134),(175,68894),(177,26608),(178,21143),(179,62789),(180,60682),(181,60139),(182,53051),(183,86395),(184,77636),(185,82026),(187,77470),(188,30056),(190,89494),(191,85430),(192,94304),(194,69040),(195,47081),(196,15301),(197,50175),(198,74223),(199,57939),(200,17016),(201,59505),(202,48720),(203,68161),(204,89442),(206,58976),(207,63537),(208,65938),(209,50771),(211,48141),(212,18400),(213,10586),(214,86037),(215,96862),(216,29106),(217,68968),(218,94738),(219,54704),(220,38233),(221,16539),(224,68051),(225,53423),(226,48294),(227,94078),(228,90020),(229,42867),(231,52020),(233,58669),(234,71197),(235,64935),(236,64017),(237,87418),(238,84046),(239,14311),(240,22972),(241,43178),(242,60604),(243,91729),(244,27178),(246,89118),(247,59824),(248,10232),(249,23509),(250,51790),(251,78949),(252,11247),(253,45775),(254,26428),(256,24390),(257,14791),(258,51312),(259,11413),(261,82397),(262,83037),(263,21043),(264,40057),(265,92829),(267,52203),(268,77968),(270,26089),(272,19964),(273,33754),(274,39985),(275,33753),(276,97286),(277,13871),(278,79714),(279,90098),(280,70616),(281,15202),(282,74625),(283,84094),(284,63640),(285,33742),(286,39386),(287,70330),(288,67809),(291,32623),(292,39087),(293,30823),(294,76309),(296,64638),(297,23248),(298,13636),(299,49999),(300,89353),(301,11230),(302,53002),(303,77312),(304,83885),(305,20303),(307,73737),(308,52139),(309,82987),(310,20957),(311,12597),(312,58967),(313,35510),(314,43733),(315,81141),(316,15162),(317,80455),(318,86871),(319,75942),(320,72928),(321,64290),(322,69475),(323,93280),(325,74690),(326,83541),(328,32746),(329,83651),(330,66405),(331,58418),(332,18479),(333,75057),(334,52913),(335,56627),(336,51073),(338,98187),(339,49686),(341,89873),(342,37350),(343,49299),(344,61854),(345,79258),(346,59717),(347,96062),(348,93182),(349,53845),(350,63842),(351,77886),(352,12988),(353,14654),(354,46142),(356,41411),(357,61922),(358,82694),(359,11606),(360,90348),(362,41640),(363,68551),(364,92106),(365,80787),(366,89355),(367,64431),(368,78286),(370,36124),(371,21667),(372,12111),(373,19141),(374,35455),(375,76648),(376,93746),(377,97779),(378,45084),(379,16341),(380,52094),(381,78537),(382,35911),(383,74795),(384,46602),(386,51723),(387,66495),(388,95602),(389,19453),(391,26235),(392,13824),(393,95177),(394,50147),(395,60911),(396,60324),(397,82328),(398,74144),(399,12256),(400,40549),(401,40007),(403,73214),(404,60832),(405,27231),(406,88307),(407,48759),(408,92541),(409,62842),(410,40621),(412,61690),(413,84676),(414,15399),(415,73483),(416,79219),(417,56542),(419,78814),(420,60107),(421,94648),(422,81070),(423,85091),(424,65766),(425,26232),(426,17750),(427,68289),(428,94638),(430,76816),(431,97477),(432,40705),(433,49968),(434,74135),(435,17430),(436,90294),(437,42134),(438,79905),(439,15070),(440,98037),(441,88569),(442,88475),(443,49557),(444,52746),(445,40281),(446,17872),(448,24184),(451,53103),(452,63809),(453,31972),(454,22628),(456,28840),(457,11144),(458,51859),(459,13973),(460,10923),(461,53704),(462,79518),(463,76555),(464,31300),(465,46630),(466,57645),(467,21144),(468,26369),(469,22620),(470,14427),(471,45482),(472,14722),(473,84622),(474,27135),(476,85236),(477,13092),(480,92876),(481,76883),(483,47942),(484,47920),(485,21336),(486,95582),(487,89694),(488,88544),(490,66780),(491,70729),(492,94151),(493,99178),(494,10894),(495,95210),(496,80926),(497,10237),(499,17906),(500,12830),(501,81201),(502,75999),(503,88944),(504,42181),(506,82311),(507,14081),(508,55859),(509,79894),(510,13694),(511,78561),(512,20456),(513,59302),(514,14350),(515,86796),(516,65255),(517,43252),(518,59383),(519,23397),(520,23762),(521,67122),(522,21519),(525,28942),(526,19871),(527,89040),(528,58594),(529,48181),(531,23343),(532,15206),(533,48110),(534,79345),(535,19083),(536,62608),(537,62541),(538,64395),(539,73783),(541,49840),(542,95511),(543,88691),(544,58928),(545,99601),(546,57452),(547,50134),(548,55280),(549,36303),(550,20406),(552,86752),(553,29388),(554,25791),(555,95214),(556,45812),(558,26999),(559,87203),(560,58179),(561,36514),(562,99546),(565,39261),(566,34847),(568,49255),(569,23136),(571,58121),(576,23762),(577,57633),(578,11905),(580,98548),(581,25242),(582,97151),(583,95510),(584,68493),(585,83493),(586,92756),(587,79743),(589,90587),(590,32105),(591,65939),(593,67181),(595,94223),(596,64831),(597,10419),(598,26731),(599,59243),(600,97114),(601,99685),(602,55238),(603,80980),(604,80145),(605,61084),(606,30052),(607,48012),(609,24213),(610,89061),(611,12588),(612,13045),(613,15085),(614,13523),(615,53266),(616,52005),(617,50197),(618,10316),(619,59339),(620,21984),(622,71995),(623,85155),(624,87350),(626,21328),(627,44279),(628,88980),(629,70981),(630,85313),(631,98429),(632,15487),(633,74498),(634,17144),(635,64466),(636,17602),(637,82943),(638,49767),(639,51403),(640,51848),(641,24817),(642,24169),(643,64267),(644,78224),(645,79617),(646,10246),(647,39129),(648,99440),(649,15149),(650,32669),(651,65140),(652,57679),(653,24151),(654,16344),(655,91062),(656,43408),(657,53320),(659,66676),(660,33627),(661,87160),(662,41675),(663,40371),(664,96744),(665,63684),(666,26693),(668,26751),(669,42926),(670,64344),(671,25041),(672,48243),(673,26193),(674,49762),(675,67405),(676,96717),(677,90326),(678,87557),(679,40772),(680,14043),(681,28734),(682,61741),(683,52547),(684,25205),(685,34810),(687,39281),(688,71179),(689,45862),(690,90519),(691,92525),(692,50595),(693,17226),(694,47094),(695,55440),(696,82556),(697,72472),(698,50459),(700,76462),(701,20222),(703,71103),(705,91382),(706,16570),(707,51956),(708,57556),(709,18398),(710,14501),(711,96487),(713,77486),(715,13850),(716,21071),(717,15462),(718,68884),(719,77644),(720,82600),(721,64708),(722,33899),(723,87387),(725,19252),(726,83278),(728,73949),(729,56035),(730,86366),(731,85016),(732,17754);
/*!40000 ALTER TABLE `nonmember_customer` ENABLE KEYS */;
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
