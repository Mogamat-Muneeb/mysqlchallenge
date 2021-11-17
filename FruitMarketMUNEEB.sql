-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: FruitMarket
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Products`
--

DROP TABLE IF EXISTS `Products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Products` (
  `ProductId` varchar(10) NOT NULL,
  `ProductName` varchar(30) NOT NULL,
  `Price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `Weight` varchar(15) NOT NULL DEFAULT '0',
  `Stock` int NOT NULL,
  `SupplierId` varchar(10) NOT NULL,
  PRIMARY KEY (`ProductId`),
  KEY `SupplierId` (`SupplierId`),
  CONSTRAINT `Products_ibfk_1` FOREIGN KEY (`SupplierId`) REFERENCES `Suppliers` (`SupplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Products`
--

LOCK TABLES `Products` WRITE;
/*!40000 ALTER TABLE `Products` DISABLE KEYS */;
INSERT INTO `Products` VALUES ('1001','Lady Finger Bananas',17.95,' 750g',45,'SUPP0001'),('1002','Pink Lady Apples',18.95,' 1,5kg',15,'SUPP0001'),('1003','Red Anjou Pears',22.99,' 1kg',24,'SUPP0001'),('1004','Cavendish Bananas',15.95,'1kg',18,'SUPP0001'),('2001','Tenderstem Broccoli',35.90,'400g',8,'SUPP0002'),('2002','Portabellini Mushrooms',18.99,'250g',16,'SUPP0002'),('3001','Raw Almonds',99.00,'1kg',6,'SUPP0003'),('3002','Macaroon Butter',32.95,'410g',9,'SUPP0003'),('3003','Organic Coconut Oil',89.95,'500ml',15,'SUPP0003'),('4001','Ayrshire Milk',33.95,'3l',23,'SUPP0004'),('4002','Simonzola Blue Cheese',27.65,'270g',4,'SUPP0004');
/*!40000 ALTER TABLE `Products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `Q114`
--

DROP TABLE IF EXISTS `Q114`;
/*!50001 DROP VIEW IF EXISTS `Q114`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Q114` AS SELECT 
 1 AS `user`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Q117`
--

DROP TABLE IF EXISTS `Q117`;
/*!50001 DROP VIEW IF EXISTS `Q117`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Q117` AS SELECT 
 1 AS `Total_unit_price`,
 1 AS `Average_price`,
 1 AS `Number_of_Products`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Q118`
--

DROP TABLE IF EXISTS `Q118`;
/*!50001 DROP VIEW IF EXISTS `Q118`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Q118` AS SELECT 
 1 AS `SupplierId`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Q15`
--

DROP TABLE IF EXISTS `Q15`;
/*!50001 DROP VIEW IF EXISTS `Q15`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Q15` AS SELECT 
 1 AS `ProductId`,
 1 AS `ProductName`,
 1 AS `Price`,
 1 AS `Weight`,
 1 AS `Stock`,
 1 AS `SupplierId`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Q16`
--

DROP TABLE IF EXISTS `Q16`;
/*!50001 DROP VIEW IF EXISTS `Q16`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Q16` AS SELECT 
 1 AS `CompanyName`,
 1 AS `ContactNo`,
 1 AS `ProductName`,
 1 AS `Price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Q18`
--

DROP TABLE IF EXISTS `Q18`;
/*!50001 DROP VIEW IF EXISTS `Q18`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Q18` AS SELECT 
 1 AS `COUNT(DISTINCT SupplierId)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Q19`
--

DROP TABLE IF EXISTS `Q19`;
/*!50001 DROP VIEW IF EXISTS `Q19`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Q19` AS SELECT 
 1 AS `COUNT(ProductId)`,
 1 AS `SupplierId`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Q20`
--

DROP TABLE IF EXISTS `Q20`;
/*!50001 DROP VIEW IF EXISTS `Q20`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Q20` AS SELECT 
 1 AS `COUNT(ProductId)`,
 1 AS `SupplierId`,
 1 AS `sum(Price*Stock)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Q9`
--

DROP TABLE IF EXISTS `Q9`;
/*!50001 DROP VIEW IF EXISTS `Q9`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Q9` AS SELECT 
 1 AS `ProductId`,
 1 AS `ProductName`,
 1 AS `Price`,
 1 AS `Weight`,
 1 AS `Stock`,
 1 AS `SupplierId`,
 1 AS `TotalPrice`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Suppliers`
--

DROP TABLE IF EXISTS `Suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Suppliers` (
  `SupplierID` varchar(10) NOT NULL,
  `CompanyName` varchar(30) NOT NULL,
  `CompanyPerson` varchar(30) NOT NULL,
  `ContactNo` varchar(15) NOT NULL DEFAULT '0',
  `ProductCategory` varchar(55) NOT NULL,
  PRIMARY KEY (`SupplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Suppliers`
--

LOCK TABLES `Suppliers` WRITE;
/*!40000 ALTER TABLE `Suppliers` DISABLE KEYS */;
INSERT INTO `Suppliers` VALUES ('SUPP0001','Fruit City','Themba','011506209','Fruit'),('SUPP0002','Vegan Veggie Xpress','Chinyere','0137228936','Vegetables'),('SUPP0003','THE Nut House','Sam','0216965133','Nuts'),('SUPP0004','The Lazy Cow','Angelo','021694157','Diary'),('SUPP0006','Fruit&Veg','Abdu','0216965111','Nuts');
/*!40000 ALTER TABLE `Suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `Q114`
--

/*!50001 DROP VIEW IF EXISTS `Q114`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`muneeb`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Q114` AS select `mysql`.`user`.`User` AS `user` from `mysql`.`user` where ((`mysql`.`user`.`User` = 'muneeb_d') or (`mysql`.`user`.`User` = 'lifechoices')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Q117`
--

/*!50001 DROP VIEW IF EXISTS `Q117`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`muneeb`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Q117` AS select sum(`Products`.`Price`) AS `Total_unit_price`,avg(`Products`.`Price`) AS `Average_price`,count(`Products`.`ProductName`) AS `Number_of_Products` from `Products` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Q118`
--

/*!50001 DROP VIEW IF EXISTS `Q118`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`muneeb`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Q118` AS select distinct `Products`.`SupplierId` AS `SupplierId` from `Products` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Q15`
--

/*!50001 DROP VIEW IF EXISTS `Q15`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`muneeb`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Q15` AS select `Products`.`ProductId` AS `ProductId`,`Products`.`ProductName` AS `ProductName`,`Products`.`Price` AS `Price`,`Products`.`Weight` AS `Weight`,`Products`.`Stock` AS `Stock`,`Products`.`SupplierId` AS `SupplierId` from `Products` where ((`Products`.`ProductId` = '4002') or (`Products`.`ProductId` = '3001') or (`Products`.`ProductId` = '2001') or (`Products`.`ProductId` = '3002') or (`Products`.`ProductId` = '4001') or (`Products`.`ProductId` = '1003') or (`Products`.`ProductId` = '1001')) order by `Products`.`Stock` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Q16`
--

/*!50001 DROP VIEW IF EXISTS `Q16`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`muneeb`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Q16` AS select `Suppliers`.`CompanyName` AS `CompanyName`,`Suppliers`.`ContactNo` AS `ContactNo`,`Products`.`ProductName` AS `ProductName`,`Products`.`Price` AS `Price` from (`Suppliers` left join `Products` on((`Suppliers`.`SupplierID` = `Products`.`SupplierId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Q18`
--

/*!50001 DROP VIEW IF EXISTS `Q18`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`muneeb`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Q18` AS select count(distinct `Products`.`SupplierId`) AS `COUNT(DISTINCT SupplierId)` from `Products` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Q19`
--

/*!50001 DROP VIEW IF EXISTS `Q19`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`muneeb`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Q19` AS select count(`Products`.`ProductId`) AS `COUNT(ProductId)`,`Products`.`SupplierId` AS `SupplierId` from `Products` group by `Products`.`SupplierId` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Q20`
--

/*!50001 DROP VIEW IF EXISTS `Q20`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`muneeb`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Q20` AS select count(`Products`.`ProductId`) AS `COUNT(ProductId)`,`Products`.`SupplierId` AS `SupplierId`,sum((`Products`.`Price` * `Products`.`Stock`)) AS `sum(Price*Stock)` from `Products` group by `Products`.`SupplierId` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Q9`
--

/*!50001 DROP VIEW IF EXISTS `Q9`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`muneeb`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Q9` AS select `Products`.`ProductId` AS `ProductId`,`Products`.`ProductName` AS `ProductName`,`Products`.`Price` AS `Price`,`Products`.`Weight` AS `Weight`,`Products`.`Stock` AS `Stock`,`Products`.`SupplierId` AS `SupplierId`,((`Products`.`Price` * `Products`.`Stock`) + (0.15 * (`Products`.`Price` * `Products`.`Stock`))) AS `TotalPrice` from `Products` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-16 12:18:25
