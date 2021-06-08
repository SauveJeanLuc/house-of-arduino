-- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
--
-- Host: localhost    Database: dbassignment
-- ------------------------------------------------------
-- Server version	8.0.20-0ubuntu0.19.10.1

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
-- Table structure for table `CUSTOMERS`
--

DROP TABLE IF EXISTS `CUSTOMERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CUSTOMERS` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) NOT NULL,
  `cusomer_location` varchar(255) NOT NULL,
  `customer_phone_number` varchar(200) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMERS`
--

LOCK TABLES `CUSTOMERS` WRITE;
/*!40000 ALTER TABLE `CUSTOMERS` DISABLE KEYS */;
INSERT INTO `CUSTOMERS` VALUES (1,'denyse mutoni','nyagatare','0784884775'),(2,'denyse','nyabihu','0784454775'),(3,'blessing','huye','0784354765');
/*!40000 ALTER TABLE `CUSTOMERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEPARTMENTS`
--

DROP TABLE IF EXISTS `DEPARTMENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DEPARTMENTS` (
  `department_id` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEPARTMENTS`
--

LOCK TABLES `DEPARTMENTS` WRITE;
/*!40000 ALTER TABLE `DEPARTMENTS` DISABLE KEYS */;
INSERT INTO `DEPARTMENTS` VALUES (1,'selling');
/*!40000 ALTER TABLE `DEPARTMENTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLOYEES`
--

DROP TABLE IF EXISTS `EMPLOYEES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EMPLOYEES` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `employee_name` varchar(255) NOT NULL,
  `employee_location` varchar(255) NOT NULL,
  `employee_phone_number` varchar(200) NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEES`
--

LOCK TABLES `EMPLOYEES` WRITE;
/*!40000 ALTER TABLE `EMPLOYEES` DISABLE KEYS */;
INSERT INTO `EMPLOYEES` VALUES (1,'Kicukiro','Kicukiro','80803244');
/*!40000 ALTER TABLE `EMPLOYEES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLOYEES_JOBS`
--

DROP TABLE IF EXISTS `EMPLOYEES_JOBS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EMPLOYEES_JOBS` (
  `job_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int DEFAULT NULL,
  PRIMARY KEY (`job_id`),
  KEY `FK_job_id` (`employee_id`),
  CONSTRAINT `FK_jb_id` FOREIGN KEY (`job_id`) REFERENCES `JOB_TITLES` (`job_id`),
  CONSTRAINT `FK_job_id` FOREIGN KEY (`employee_id`) REFERENCES `EMPLOYEES` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEES_JOBS`
--

LOCK TABLES `EMPLOYEES_JOBS` WRITE;
/*!40000 ALTER TABLE `EMPLOYEES_JOBS` DISABLE KEYS */;
INSERT INTO `EMPLOYEES_JOBS` VALUES (1,1),(2,1);
/*!40000 ALTER TABLE `EMPLOYEES_JOBS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLOYEE_DEPARTMENTS`
--

DROP TABLE IF EXISTS `EMPLOYEE_DEPARTMENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EMPLOYEE_DEPARTMENTS` (
  `department_id` int NOT NULL,
  `employee_id` int NOT NULL,
  KEY `FK_depa_id` (`department_id`),
  KEY `FK_emp_id` (`employee_id`),
  CONSTRAINT `FK_depa_id` FOREIGN KEY (`department_id`) REFERENCES `DEPARTMENTS` (`department_id`),
  CONSTRAINT `FK_emp_id` FOREIGN KEY (`employee_id`) REFERENCES `EMPLOYEES` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEE_DEPARTMENTS`
--

LOCK TABLES `EMPLOYEE_DEPARTMENTS` WRITE;
/*!40000 ALTER TABLE `EMPLOYEE_DEPARTMENTS` DISABLE KEYS */;
/*!40000 ALTER TABLE `EMPLOYEE_DEPARTMENTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JOB_TITLES`
--

DROP TABLE IF EXISTS `JOB_TITLES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `JOB_TITLES` (
  `job_id` int NOT NULL AUTO_INCREMENT,
  `job_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JOB_TITLES`
--

LOCK TABLES `JOB_TITLES` WRITE;
/*!40000 ALTER TABLE `JOB_TITLES` DISABLE KEYS */;
INSERT INTO `JOB_TITLES` VALUES (1,'receptionist'),(2,'translator');
/*!40000 ALTER TABLE `JOB_TITLES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MANAGER`
--

DROP TABLE IF EXISTS `MANAGER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MANAGER` (
  `manager_id` int NOT NULL AUTO_INCREMENT,
  `manager_name` varchar(200) NOT NULL,
  `department_id` int NOT NULL,
  PRIMARY KEY (`manager_id`),
  KEY `FK_manage_id` (`department_id`),
  CONSTRAINT `FK_manage_id` FOREIGN KEY (`department_id`) REFERENCES `DEPARTMENTS` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MANAGER`
--

LOCK TABLES `MANAGER` WRITE;
/*!40000 ALTER TABLE `MANAGER` DISABLE KEYS */;
INSERT INTO `MANAGER` VALUES (1,'best',1);
/*!40000 ALTER TABLE `MANAGER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ORDERED_PRODUCTS`
--

DROP TABLE IF EXISTS `ORDERED_PRODUCTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ORDERED_PRODUCTS` (
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int DEFAULT NULL,
  `unit_price` varchar(255) NOT NULL,
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `FK_ordered_id` (`product_id`),
  CONSTRAINT `FK_order_id` FOREIGN KEY (`order_id`) REFERENCES `ORDERS` (`order_id`),
  CONSTRAINT `FK_ordered_id` FOREIGN KEY (`product_id`) REFERENCES `PRODUCTS` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORDERED_PRODUCTS`
--

LOCK TABLES `ORDERED_PRODUCTS` WRITE;
/*!40000 ALTER TABLE `ORDERED_PRODUCTS` DISABLE KEYS */;
INSERT INTO `ORDERED_PRODUCTS` VALUES (1,1,400,'400 frw'),(2,2,50,'800');
/*!40000 ALTER TABLE `ORDERED_PRODUCTS` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `updateQuantinties` AFTER INSERT ON `ORDERED_PRODUCTS` FOR EACH ROW begin update PRODUCTS set product_quantity = product_quantity-new.quantity where product_id = new.product_id; end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `updateQuantintyByUpdate` AFTER UPDATE ON `ORDERED_PRODUCTS` FOR EACH ROW begin
update PRODUCTS set product_quantity = (product_quantity  + old.quantity ) -  new.quantity
where product_id = new.product_id;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ORDERS`
--

DROP TABLE IF EXISTS `ORDERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ORDERS` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `order_date` date NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FK_customer_id` (`customer_id`),
  CONSTRAINT `FK_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `CUSTOMERS` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORDERS`
--

LOCK TABLES `ORDERS` WRITE;
/*!40000 ALTER TABLE `ORDERS` DISABLE KEYS */;
INSERT INTO `ORDERS` VALUES (1,1,'2014-03-03'),(2,1,'2020-04-03');
/*!40000 ALTER TABLE `ORDERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCTS`
--

DROP TABLE IF EXISTS `PRODUCTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PRODUCTS` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_category_id` varchar(200) NOT NULL,
  `product_name` varchar(200) DEFAULT NULL,
  `product_man_date` date DEFAULT NULL,
  `product_expir_date` date DEFAULT NULL,
  `product_quantity` int DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCTS`
--

LOCK TABLES `PRODUCTS` WRITE;
/*!40000 ALTER TABLE `PRODUCTS` DISABLE KEYS */;
INSERT INTO `PRODUCTS` VALUES (1,'1','fish','2012-03-04','2018-03-03',300),(2,'1','tomato','2012-03-04','2018-03-03',50);
/*!40000 ALTER TABLE `PRODUCTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT_CATEGORY`
--

DROP TABLE IF EXISTS `PRODUCT_CATEGORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PRODUCT_CATEGORY` (
  `product_category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`product_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT_CATEGORY`
--

LOCK TABLES `PRODUCT_CATEGORY` WRITE;
/*!40000 ALTER TABLE `PRODUCT_CATEGORY` DISABLE KEYS */;
INSERT INTO `PRODUCT_CATEGORY` VALUES (1,'food'),(2,'studying');
/*!40000 ALTER TABLE `PRODUCT_CATEGORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RAW_MATERIALS`
--

DROP TABLE IF EXISTS `RAW_MATERIALS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RAW_MATERIALS` (
  `row_material_id` int NOT NULL AUTO_INCREMENT,
  `row_material_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`row_material_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RAW_MATERIALS`
--

LOCK TABLES `RAW_MATERIALS` WRITE;
/*!40000 ALTER TABLE `RAW_MATERIALS` DISABLE KEYS */;
INSERT INTO `RAW_MATERIALS` VALUES (1,'mangoes');
/*!40000 ALTER TABLE `RAW_MATERIALS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SUPPLIERS`
--

DROP TABLE IF EXISTS `SUPPLIERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SUPPLIERS` (
  `supplier_id` int NOT NULL AUTO_INCREMENT,
  `supplier_location_id` int NOT NULL,
  `supplier_name` varchar(200) NOT NULL,
  `supplier_phone_number` varchar(200) NOT NULL,
  PRIMARY KEY (`supplier_id`),
  KEY `FK_location` (`supplier_location_id`),
  CONSTRAINT `FK_location` FOREIGN KEY (`supplier_location_id`) REFERENCES `SUPPLIER_LOCATION` (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SUPPLIERS`
--

LOCK TABLES `SUPPLIERS` WRITE;
/*!40000 ALTER TABLE `SUPPLIERS` DISABLE KEYS */;
INSERT INTO `SUPPLIERS` VALUES (1,1,'gervais','807492423'),(2,1,'gisa','8237492423');
/*!40000 ALTER TABLE `SUPPLIERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SUPPLIER_LOCATION`
--

DROP TABLE IF EXISTS `SUPPLIER_LOCATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SUPPLIER_LOCATION` (
  `location_id` int NOT NULL AUTO_INCREMENT,
  `location_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SUPPLIER_LOCATION`
--

LOCK TABLES `SUPPLIER_LOCATION` WRITE;
/*!40000 ALTER TABLE `SUPPLIER_LOCATION` DISABLE KEYS */;
INSERT INTO `SUPPLIER_LOCATION` VALUES (1,'nyagatare'),(2,'huye');
/*!40000 ALTER TABLE `SUPPLIER_LOCATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SUPPLIER_RAW_MATERIALS`
--

DROP TABLE IF EXISTS `SUPPLIER_RAW_MATERIALS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SUPPLIER_RAW_MATERIALS` (
  `supplier_id` int NOT NULL,
  `raw_material_id` int NOT NULL,
  `delivery_date` date NOT NULL,
  PRIMARY KEY (`supplier_id`,`raw_material_id`),
  KEY `FK_raw_material_id` (`raw_material_id`),
  CONSTRAINT `FK_raw_material_id` FOREIGN KEY (`raw_material_id`) REFERENCES `RAW_MATERIALS` (`row_material_id`),
  CONSTRAINT `FK_supplier_id` FOREIGN KEY (`supplier_id`) REFERENCES `SUPPLIERS` (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SUPPLIER_RAW_MATERIALS`
--

LOCK TABLES `SUPPLIER_RAW_MATERIALS` WRITE;
/*!40000 ALTER TABLE `SUPPLIER_RAW_MATERIALS` DISABLE KEYS */;
INSERT INTO `SUPPLIER_RAW_MATERIALS` VALUES (1,1,'2010-03-04'),(2,1,'2010-10-04');
/*!40000 ALTER TABLE `SUPPLIER_RAW_MATERIALS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USERS`
--

DROP TABLE IF EXISTS `USERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USERS` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_type_id` int NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_phone_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `FK_users` (`user_type_id`),
  CONSTRAINT `FK_users` FOREIGN KEY (`user_type_id`) REFERENCES `USER_TYPES` (`user_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USERS`
--

LOCK TABLES `USERS` WRITE;
/*!40000 ALTER TABLE `USERS` DISABLE KEYS */;
INSERT INTO `USERS` VALUES (1,1,'sauve','8043943455'),(2,2,'Lo celso','80434343455');
/*!40000 ALTER TABLE `USERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_TYPES`
--

DROP TABLE IF EXISTS `USER_TYPES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_TYPES` (
  `user_type_id` int NOT NULL AUTO_INCREMENT,
  `user_type` varchar(20) NOT NULL,
  PRIMARY KEY (`user_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_TYPES`
--

LOCK TABLES `USER_TYPES` WRITE;
/*!40000 ALTER TABLE `USER_TYPES` DISABLE KEYS */;
INSERT INTO `USER_TYPES` VALUES (1,'admin'),(2,'public');
/*!40000 ALTER TABLE `USER_TYPES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!50001 DROP VIEW IF EXISTS `employees`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employees` AS SELECT 
 1 AS `employee_id`,
 1 AS `employee_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `employees_1`
--

DROP TABLE IF EXISTS `employees_1`;
/*!50001 DROP VIEW IF EXISTS `employees_1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employees_1` AS SELECT 
 1 AS `employee_name`,
 1 AS `employee_location`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `employees_3`
--

DROP TABLE IF EXISTS `employees_3`;
/*!50001 DROP VIEW IF EXISTS `employees_3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employees_3` AS SELECT 
 1 AS `user_id`,
 1 AS `user_name`,
 1 AS `user_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `employees_4`
--

DROP TABLE IF EXISTS `employees_4`;
/*!50001 DROP VIEW IF EXISTS `employees_4`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employees_4` AS SELECT 
 1 AS `user_id`,
 1 AS `user_name`,
 1 AS `user_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `employees`
--

/*!50001 DROP VIEW IF EXISTS `employees`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employees` AS select `EMPLOYEES`.`employee_id` AS `employee_id`,`EMPLOYEES`.`employee_name` AS `employee_name` from `EMPLOYEES` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employees_1`
--

/*!50001 DROP VIEW IF EXISTS `employees_1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employees_1` AS select `EMPLOYEES`.`employee_name` AS `employee_name`,`EMPLOYEES`.`employee_location` AS `employee_location` from `EMPLOYEES` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employees_3`
--

/*!50001 DROP VIEW IF EXISTS `employees_3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employees_3` AS select `USERS`.`user_id` AS `user_id`,`USERS`.`user_name` AS `user_name`,`USER_TYPES`.`user_type` AS `user_type` from (`USERS` join `USER_TYPES` on((`USERS`.`user_type_id` = `USER_TYPES`.`user_type_id`))) where (`USER_TYPES`.`user_type_id` = `USERS`.`user_type_id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employees_4`
--

/*!50001 DROP VIEW IF EXISTS `employees_4`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employees_4` AS select `USERS`.`user_id` AS `user_id`,`USERS`.`user_name` AS `user_name`,`USER_TYPES`.`user_type` AS `user_type` from (`USERS` join `USER_TYPES` on((`USERS`.`user_type_id` = `USER_TYPES`.`user_type_id`))) where (`USER_TYPES`.`user_type_id` = `USERS`.`user_type_id`) */;
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

-- Dump completed on 2021-02-03  8:46:13
