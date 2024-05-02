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
-- Dumping events for database 'coffeeshop'
--

--
-- Dumping routines for database 'coffeeshop'
--
/*!50003 DROP FUNCTION IF EXISTS `CalculateTotalPriceForReceipt` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CalculateTotalPriceForReceipt`(receiptID VARCHAR(10)) RETURNS decimal(10,2)
    READS SQL DATA
BEGIN
    DECLARE totalPrice DECIMAL(10, 2);
    
    SELECT SUM(b.BeveragePrice * bio.Quantity) INTO totalPrice
    FROM BEVERAGE_IN_ORDER bio
    JOIN BEVERAGE b ON bio.BeverageID = b.BeverageID
    WHERE bio.ReceiptID = receiptID;
    
    RETURN COALESCE(totalPrice, 0); -- Return 0 if no beverages in the receipt
END ;;

DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `CalculateTotalRevenueForDay` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;

-- Function: CalculateTotalSalesByGroup
DELIMITER //
CREATE FUNCTION CalculateTotalSalesByGroup(
    p_startDate DATE,
    p_endDate DATE,
    p_beverageGroup VARCHAR(20)
)
RETURNS DECIMAL(15, 2)
NOT DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE totalSales DECIMAL(15, 2);

    -- Calculate total sales for the specified beverage group within the given date range
    SELECT SUM(b.BeveragePrice * bio.Quantity) INTO totalSales
    FROM BEVERAGE_IN_ORDER bio
    JOIN DRINK_ORDER do ON bio.ReceiptID = do.ReceiptID
    JOIN ONSITE_CUSTOMER oc ON do.OrderCode = oc.OrderCode
    JOIN BEVERAGE b ON bio.BeverageID = b.BeverageID
    WHERE b.BeverageGroup = p_beverageGroup
    AND DATE(oc.EnteredTime) BETWEEN p_startDate AND p_endDate;

    -- If no data was found, ensure zero is returned instead of NULL
    IF totalSales IS NULL THEN
        SET totalSales = 0;
    END IF;

    RETURN totalSales;
END //
DELIMITER ;


DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CalculateTotalRevenueForDay`(targetDate DATE) RETURNS decimal(15,2)
    READS SQL DATA
BEGIN
    DECLARE totalRevenue DECIMAL(15, 2);
    
    SELECT SUM(b.BeveragePrice * bio.Quantity) INTO totalRevenue
    FROM BEVERAGE_IN_ORDER bio
    JOIN DRINK_ORDER do ON bio.ReceiptID = do.ReceiptID
    JOIN ONSITE_CUSTOMER oc ON do.OrderCode = oc.OrderCode
    JOIN BEVERAGE b ON bio.BeverageID = b.BeverageID
    WHERE DATE(oc.EnteredTime) = targetDate;
    
    RETURN COALESCE(totalRevenue, 0); -- Return 0 if no sales for the day
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `CheckMembershipStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CheckMembershipStatus`(customerPhone VARCHAR(10)) RETURNS tinyint(1)
    READS SQL DATA
BEGIN
    DECLARE isMember BOOLEAN;
    
    SELECT EXISTS (
        SELECT 1
        FROM MEMBER_CUSTOMER
        WHERE MEMBER_CUSTOMER.Phone = customerPhone
    ) INTO isMember;
    
    RETURN isMember;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetMemberPoint` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetMemberPoint`(memberID INT) RETURNS int
    READS SQL DATA
BEGIN
    DECLARE points INT;
    SELECT MembershipPoints INTO points FROM MEMBER_CUSTOMER
    WHERE MEMBER_CUSTOMER.MemberID = memberID;
    RETURN points;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddOrUpdateStaff` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddOrUpdateStaff`(
    IN staff_id VARCHAR(6), 
    IN first_name VARCHAR(10), 
    IN last_name VARCHAR(10), 
    IN birth_date DATE,
    IN sex VARCHAR(10),
    IN started_date DATE,
    IN new_salary DECIMAL(10, 2)
)
BEGIN
    -- Check if staff_id starts with 'S'
    IF LEFT(staff_id, 1) <> 'S' THEN
        -- Return nothing if staff_id doesn't start with 'S'
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid input parameters: StaffID must start with S.';
    END IF;

    IF EXISTS (SELECT * FROM STAFF WHERE StaffID = staff_id) THEN
        -- Update existing staff
        UPDATE STAFF SET 
            Firstname = first_name,
            Lastname = last_name,
            BirthDate = birth_date,
            Sex = sex,
            StartedDate = started_date,
            CurrentSalary = new_salary 
        WHERE StaffID = staff_id;
    ELSE
        -- Add new staff
        INSERT INTO STAFF (StaffID, Firstname, Lastname, BirthDate, Sex, StartedDate, CurrentSalary) 
        VALUES (staff_id, first_name, last_name, birth_date, sex, started_date, new_salary);
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GenerateSalesReport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GenerateSalesReport`(IN start_date DATE, IN end_date DATE)
BEGIN
    -- Validation of input parameters
    IF start_date IS NULL OR end_date IS NULL OR start_date > end_date THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid input parameters: Start date must be before end date.';
    END IF;

    -- Total revenue for the period
    SELECT CalculateTotalRevenueForDay(start_date) AS Total_Revenue;

    -- Total sales breakdown by beverage group for the period
    SELECT 
        CalculateTotalSalesByGroup(start_date, end_date, 'Coffee') AS Coffee_Sales,
        CalculateTotalSalesByGroup(start_date, end_date, 'Fruit Tea') AS Fruit_Tea_Sales,
        CalculateTotalSalesByGroup(start_date, end_date, 'Smoothie') AS Smoothie_Sales,
        CalculateTotalSalesByGroup(start_date, end_date, 'Ice Blended') AS Ice_Blended_Sales;

    -- Best-selling items for the period
    SELECT 
        b.BeverageName,
        SUM(bio.Quantity) AS Total_Sold
    FROM 
        BEVERAGE_IN_ORDER bio
    JOIN DRINK_ORDER do ON bio.ReceiptID = do.ReceiptID
    JOIN ONSITE_CUSTOMER oc ON do.OrderCode = oc.OrderCode
    JOIN BEVERAGE b ON bio.BeverageID = b.BeverageID
    WHERE 
        DATE(oc.EnteredTime) BETWEEN start_date AND end_date
    GROUP BY 
        b.BeverageName
    ORDER BY 
        Total_Sold DESC
    LIMIT 31;
END ;;
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
