-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: smartphamarcy
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `product_product`
--

DROP TABLE IF EXISTS `product_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_product` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `productCategory_id` int DEFAULT NULL,
  `productDescription` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `productManufacturer_id` int DEFAULT NULL,
  `productName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `productPrice` double DEFAULT NULL,
  `unitStock` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `productImage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_uid` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `write_uid` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `deleted` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `fk_cate_idx` (`productCategory_id`),
  KEY `fk_manu_idx` (`productManufacturer_id`),
  CONSTRAINT `fk_cate` FOREIGN KEY (`productCategory_id`) REFERENCES `product_productcategory` (`id`),
  CONSTRAINT `fk_manu` FOREIGN KEY (`productManufacturer_id`) REFERENCES `product_productmanufactorer` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_product`
--

LOCK TABLES `product_product` WRITE;
/*!40000 ALTER TABLE `product_product` DISABLE KEYS */;
INSERT INTO `product_product` VALUES (1,7,NULL,7,'C? M? 300g',120000,'12','1','1','1','true'),(9,8,'test',8,'thuoc la',NULL,'100','9','1','1','true'),(10,8,'test',8,'thuoc la',NULL,'100','10','1','1','true'),(11,8,'abc',8,'co nhu',200,'100','11','1','1','true'),(12,9,'Aerius Desloratadine 5mg',8,'Aerius Desloratadine 5mg',NULL,'12','12','1','1','true'),(13,10,'Blackmores Glucosamine',8,'Blackmores Glucosamine',NULL,'13','13','1','1','true'),(17,13,'Blackmores Glucosamine',9,'Blackmores Glucosamine',NULL,'11','17','1','1','true'),(18,14,'Blackmores Glucosamine',10,'Blackmores Glucosamine',2000,'11','18','1','1','true'),(19,15,'Clorpheniramin 4mg',11,'Clorpheniramin 4mg',99,'12','19','1','1','true'),(20,16,'Blackmores Glucosamine',12,'Blackmores Glucosamine',1260,'89','20','1','2','false'),(21,16,'Aerius Desloratadine 5mg',13,'Aerius Desloratadine 5mg',3026,'66','21','1','2','false'),(22,17,'Clorpheniramin 4mg',14,'Clorpheniramin 4mg',2100,'34','22','1','1','false'),(23,17,'Enterogermina (5ml)',15,'Enterogermina (5ml)',2130,'56','23','1','1','false'),(24,18,'Fugacar Mebendazole(500mg)',16,'Fugacar Mebendazole(500mg)',4250,'78','24','1','1','false'),(25,18,'Metoclopramide 10mg',17,'Metoclopramide 10mg',7890,'45','25','1','1','false'),(26,17,NULL,15,'Nitrofurantoin 50mg',10000,'88','26','1','1','false');
/*!40000 ALTER TABLE `product_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_productcategory`
--

DROP TABLE IF EXISTS `product_productcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_productcategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_uid` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `write_uid` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `deleted` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_productcategory`
--

LOCK TABLES `product_productcategory` WRITE;
/*!40000 ALTER TABLE `product_productcategory` DISABLE KEYS */;
INSERT INTO `product_productcategory` VALUES (1,'Cỏ','1','1','false'),(2,'Đá','1','1','false'),(6,'1','1','1','false'),(7,'C?','1','1','false'),(8,'test','1','1','false'),(9,'Thuoc A','1','1','false'),(10,'ThuocA','1','1','false'),(11,'ThuocB','1','1','false'),(12,'Aerius Desloratadine 5mg','1','1','true'),(13,'Blackmores Glucosamine','1','1','true'),(14,'Blackmores Glucosamine','1','1','true'),(15,'Clorpheniramin 4mg','1','1','true'),(16,'Thuoc 1','1','1','false'),(17,'Thuoc 2','1','1','false'),(18,'Thuoc 3','1','1','false');
/*!40000 ALTER TABLE `product_productcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_productmanufactorer`
--

DROP TABLE IF EXISTS `product_productmanufactorer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_productmanufactorer` (
  `mid` int NOT NULL AUTO_INCREMENT,
  `manufactorer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_uid` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `write_uid` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `deleted` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_productmanufactorer`
--

LOCK TABLES `product_productmanufactorer` WRITE;
/*!40000 ALTER TABLE `product_productmanufactorer` DISABLE KEYS */;
INSERT INTO `product_productmanufactorer` VALUES (1,'Mỹ','1','1','false'),(2,'Pháp','1','1','false'),(6,'1','1','1','false'),(7,'M?','1','1','false'),(8,'vietnam','1','1','true'),(9,'US','1','1','true'),(10,'US','1','1','true'),(11,'US','1','1','true'),(12,'Vietnam','1','1','false'),(13,'US','1','1','false'),(14,'Singapore','1','1','false'),(15,'Japan','1','1','false'),(16,'Cuba','1','1','false'),(17,'France','1','1','false');
/*!40000 ALTER TABLE `product_productmanufactorer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `res_cart`
--

DROP TABLE IF EXISTS `res_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `res_cart` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `create_uid` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `write_uid` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `deleted` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `fk_cus_idx` (`customer_id`),
  CONSTRAINT `fk_cus` FOREIGN KEY (`customer_id`) REFERENCES `res_customer` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `res_cart`
--

LOCK TABLES `res_cart` WRITE;
/*!40000 ALTER TABLE `res_cart` DISABLE KEYS */;
INSERT INTO `res_cart` VALUES (1,1,0,'2','2','false'),(2,5,0,'2','1','false');
/*!40000 ALTER TABLE `res_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `res_cartitem`
--

DROP TABLE IF EXISTS `res_cartitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `res_cartitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cart_id` int DEFAULT NULL,
  `quality` int DEFAULT NULL,
  `price` double DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `create_uid` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `write_uid` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `deleted` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cart_idx` (`cart_id`),
  CONSTRAINT `fk_cart` FOREIGN KEY (`cart_id`) REFERENCES `res_cart` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `res_cartitem`
--

LOCK TABLES `res_cartitem` WRITE;
/*!40000 ALTER TABLE `res_cartitem` DISABLE KEYS */;
INSERT INTO `res_cartitem` VALUES (1,1,2,240000,1,'1','2','true'),(2,1,3,600,11,'2','2','true'),(3,1,5,0,16,'2','2','true'),(4,1,2,4000,18,'2','1','true'),(5,1,1,0,16,'2','2','true'),(6,1,1,99,19,'2','1','true'),(7,1,1,1000,16,'2','2','true'),(8,1,1,1000,16,'2','2','true'),(9,1,2,2000,16,'2','2','true'),(10,1,2,2000,16,'2','2','true'),(11,1,1,1000,16,'2','1','true'),(12,1,1,1260,20,'2','2','true'),(13,1,1,3026,21,'2','2','true'),(14,1,1,1260,20,'2','2','true'),(15,1,2,6000,26,'2','2','true');
/*!40000 ALTER TABLE `res_cartitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `res_contact`
--

DROP TABLE IF EXISTS `res_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `res_contact` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `deleted` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `res_contact`
--

LOCK TABLES `res_contact` WRITE;
/*!40000 ALTER TABLE `res_contact` DISABLE KEYS */;
INSERT INTO `res_contact` VALUES (1,'ano1','Xin','Xin123','false');
/*!40000 ALTER TABLE `res_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `res_customer`
--

DROP TABLE IF EXISTS `res_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `res_customer` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `lname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `customerPhone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `shipping_id` int DEFAULT NULL,
  `uid` int DEFAULT NULL,
  `create_uid` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `write_uid` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `deleted` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `fk_shipping_idx` (`shipping_id`),
  KEY `fk_user_idx` (`uid`),
  CONSTRAINT `fk_ship` FOREIGN KEY (`shipping_id`) REFERENCES `res_shipping` (`sid`),
  CONSTRAINT `fk_u` FOREIGN KEY (`uid`) REFERENCES `res_users` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `res_customer`
--

LOCK TABLES `res_customer` WRITE;
/*!40000 ALTER TABLE `res_customer` DISABLE KEYS */;
INSERT INTO `res_customer` VALUES (1,'Thanh','Nhân','0768185158',1,2,'2','2','false'),(2,'Ngọc','Doanh','0123848289',2,3,'3','1','true'),(5,'Le Nguyen','Thanh Nhan','123123',5,4,'4','1','true');
/*!40000 ALTER TABLE `res_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `res_order`
--

DROP TABLE IF EXISTS `res_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `res_order` (
  `oid` int NOT NULL AUTO_INCREMENT,
  `cart_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `shipping_id` int DEFAULT NULL,
  `create_uid` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `write_uid` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `deleted` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `fk_cart_idx` (`cart_id`),
  KEY `fk_cus_idx` (`customer_id`),
  KEY `fk_ship_idx` (`shipping_id`),
  CONSTRAINT `fk1` FOREIGN KEY (`customer_id`) REFERENCES `res_customer` (`cid`),
  CONSTRAINT `fk2` FOREIGN KEY (`cart_id`) REFERENCES `res_cart` (`cid`),
  CONSTRAINT `fk3` FOREIGN KEY (`shipping_id`) REFERENCES `res_shipping` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `res_order`
--

LOCK TABLES `res_order` WRITE;
/*!40000 ALTER TABLE `res_order` DISABLE KEYS */;
INSERT INTO `res_order` VALUES (1,1,1,2,'2','2','false'),(2,1,1,2,'2','2','false'),(3,1,1,2,'2','2','false'),(4,1,1,2,'2','2','false'),(5,1,1,2,'null','null','false'),(6,1,1,2,'null','null','false'),(7,1,1,2,'null','null','false'),(8,1,1,2,'null','null','false'),(9,1,1,2,'null','null','false'),(10,1,1,2,'null','null','false'),(11,1,1,2,'2','2','false'),(12,1,1,2,'2','2','false'),(13,1,1,2,'2','2','false'),(14,1,1,2,'2','2','false'),(15,1,1,2,'2','2','false'),(16,1,1,2,'2','2','false'),(17,1,1,2,'2','2','false'),(18,1,1,2,'2','2','false'),(19,1,1,2,'null','null','false'),(20,1,1,2,'2','2','false'),(21,1,1,2,'2','2','false'),(22,1,1,2,'2','2','false'),(23,1,1,2,'2','2','false'),(24,1,1,2,'2','2','false'),(25,1,1,2,'2','2','false'),(26,1,1,2,'2','2','false'),(27,1,1,2,'2','2','false'),(28,1,1,2,'2','2','false'),(29,1,1,2,'2','2','false'),(30,1,1,2,'2','2','false'),(31,1,1,2,'2','2','false'),(32,1,1,2,'2','2','false'),(33,1,1,2,'2','2','false'),(34,1,1,2,'2','2','false'),(35,1,1,2,'2','2','false'),(36,1,1,2,'2','2','false'),(37,1,1,2,'2','2','false'),(38,1,1,2,'2','2','false'),(39,1,1,2,'2','2','false'),(40,1,1,2,'2','2','false'),(41,1,1,2,'2','2','false'),(42,1,1,2,'2','2','false'),(43,1,1,2,'2','2','false');
/*!40000 ALTER TABLE `res_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `res_shipping`
--

DROP TABLE IF EXISTS `res_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `res_shipping` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `zipcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_uid` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `write_uid` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `deleted` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `res_shipping`
--

LOCK TABLES `res_shipping` WRITE;
/*!40000 ALTER TABLE `res_shipping` DISABLE KEYS */;
INSERT INTO `res_shipping` VALUES (1,'Đường số 2','Ho Chi Minh City','Ho Chi Minh','70000','Vietnam','2','2','false'),(2,'95 ĐT835B','Cần Giuộc','Long An','70000','Vietnam','2','1','true'),(5,'Quan 9','Ho Chi Minh','Ho Chi Minh','70000','Vietnam','4','1','true');
/*!40000 ALTER TABLE `res_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `res_users`
--

DROP TABLE IF EXISTS `res_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `res_users` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `emailId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `enabled` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `deleted` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `res_users`
--

LOCK TABLES `res_users` WRITE;
/*!40000 ALTER TABLE `res_users` DISABLE KEYS */;
INSERT INTO `res_users` VALUES (1,'admin@gmail.com','admin','true','false','ROLE_ADMIN'),(2,'tnlnguyen@gmail.com','thanhnhan','true','false','ROLE_USER'),(3,'doanh@gmail.com','doanh','true','true','ROLE_USER'),(4,'test@gmail.com','123','true','true','ROLE_USER');
/*!40000 ALTER TABLE `res_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'smartphamarcy'
--
/*!50003 DROP PROCEDURE IF EXISTS `product_product_ById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `product_product_ById`(
	_id varchar(255)
)
BEGIN

    DECLARE `_rollback` BOOL DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_rollback` = 1;
    START TRANSACTION;
    
    select * from smartphamarcy.product_product t1 join
    smartphamarcy.product_productcategory t2 on t1.productCategory_id = t2.id join
	smartphamarcy.product_productmanufactorer t3 on t1.productManufacturer_id = t3.mid
    where t1.pid = _id and t1.deleted = 'false' and t2.deleted = 'false' and t3.deleted = 'false';
    
    IF `_rollback` THEN
        ROLLBACK;
    ELSE
        COMMIT;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `product_product_Create` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `product_product_Create`(
    _productDescription varchar(255),
	_productName varchar(255),
	_categoryName varchar(255),
	_manufactorerName varchar(255),
	_productPrice varchar(255),
    _unitStock varchar(255),
    _uid varchar(255)
)
BEGIN

    DECLARE `_rollback` BOOL DEFAULT 0;
	Declare categoryID int default 0;
	Declare manufactorerID int default 0;
    declare result int default 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_rollback` = 1;
    START TRANSACTION;
    
     if not exists (select * from smartphamarcy.product_productcategory where Category_name = _categoryName and deleted = 'false')
		then
		 insert into smartphamarcy.product_productcategory
		(Category_name,create_uid,write_uid,deleted) values
		(_categoryName,_uid,_uid,'false');
		set categoryID = last_insert_id();
	else set categoryID = (select id from smartphamarcy.product_productcategory where Category_name = _categoryName);
	end if;
    
    
    if not exists (select * from smartphamarcy.product_productmanufactorer where manufactorer_name = _manufactorerName and deleted = 'false')
		then
         insert into smartphamarcy.product_productmanufactorer
		(manufactorer_name,create_uid,write_uid,deleted) values
		(_manufactorerName,_uid,_uid,'false');
        set manufactorerID = last_insert_id();
	else set manufactorerID = (select mid from smartphamarcy.product_productmanufactorer where manufactorer_name = _manufactorerName);
	end if;
    
   insert into smartphamarcy.product_product
    (productCategory_id,productDescription,productManufacturer_id,productName,productPrice
    ,unitStock,productImage,create_uid,write_uid,deleted) values
    (categoryID,_productDescription,manufactorerID,_productName,_productPrice,_unitStock,"",_uid,_uid,'false'); 
    
    set result = (select last_insert_id());
    update smartphamarcy.product_product set productImage = result where pid = result;
    
    select result;
    
    IF `_rollback` THEN
        ROLLBACK;
    ELSE
        COMMIT;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `product_product_DeleteById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `product_product_DeleteById`(
	_id varchar(255),
    _uid varchar(255)
)
BEGIN

    DECLARE `_rollback` BOOL DEFAULT 0;
    declare cateID int default 0;
    declare manuID int default 0;
    declare oldquantity int default 0;
	declare oldprice double default 0.0;
	declare oldcartId int default 0;
	declare oldId int default 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_rollback` = 1;
    START TRANSACTION;
    
    set cateID = (select productCategory_id from smartphamarcy.product_product where pid = _id);
	set manuID = (select productManufacturer_id from smartphamarcy.product_product where pid = _id);

    update smartphamarcy.product_product set
    write_uid = _uid, deleted = 'true' where pid = _id;
    
    if not exists (select * from smartphamarcy.product_product where productCategory_id = cateID and deleted = 'false')
		then
		update smartphamarcy.product_productcategory set
		write_uid = _uid, deleted = 'true' where id = cateID;
	end if;
	
    if not exists (select * from smartphamarcy.product_product where productManufacturer_id = manuID and deleted = 'false')
		then
		update smartphamarcy.product_productmanufactorer set
		write_uid = _uid, deleted = 'true' where mid = manuID;
	end if;
    
    set oldquantity = (select quality from smartphamarcy.res_cartitem where product_id = _id and deleted = 'false');
	set oldprice = (select price from smartphamarcy.res_cartitem where product_id = _id and deleted = 'false');
	set oldcartId = (select cart_id from smartphamarcy.res_cartitem where product_id = _id and deleted = 'false');
	set oldId = (select id from smartphamarcy.res_cartitem where product_id = _id and deleted = 'false');

    update smartphamarcy.res_cartitem set 
    write_uid = _uid, deleted = 'true' where id = oldId;
    
    update smartphamarcy.res_cart set
    total_price = total_price - (oldquantity*oldprice), write_uid = _uid where cid = oldcartId;
    
    select 1;
    
    IF `_rollback` THEN
        ROLLBACK;
    ELSE
        COMMIT;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `product_product_EditById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `product_product_EditById`(
	_id varchar(255),
    _categoryName varchar(255),
	_productDescription varchar(255),
    _manufactorerName varchar(255),
	_productName varchar(255),
	_productPrice varchar(255),
    _unitStock varchar(255),
    _uid varchar(255)
)
BEGIN

    DECLARE `_rollback` BOOL DEFAULT 0;
    Declare categoryID int default 0;
	Declare manufactorerID int default 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_rollback` = 1;
    START TRANSACTION;
    
    
      if not exists (select * from smartphamarcy.product_productcategory where Category_name = _categoryName)
		then
         insert into smartphamarcy.product_productcategory
		(Category_name,create_uid,write_uid,deleted) values
		(_categoryName,_uid,_uid,'false');
        set categoryID = last_insert_id();
	else set categoryID = (select id from smartphamarcy.product_productcategory where Category_name = _categoryName);
	end if;
    
    
    if not exists (select * from smartphamarcy.product_productmanufactorer where manufactorer_name = _manufactorerName)
		then
         insert into smartphamarcy.product_productmanufactorer
		(manufactorer_name,create_uid,write_uid,deleted) values
		(_manufactorerName,_uid,_uid,'false');
        set manufactorerID = last_insert_id();
	else set manufactorerID = (select mid from smartphamarcy.product_productmanufactorer where manufactorer_name = _manufactorerName);
	end if;
    
    update smartphamarcy.product_product set
		productCategory_id = categoryID, productDescription = _productDescription, 
		productManufacturer_id = manufactorerID , productName = _productName,
		productPrice = _productPrice , unitStock = _unitStock , write_uid = _uid
    where pid = _id;

	select 1;

    IF `_rollback` THEN
        ROLLBACK;
    ELSE
        COMMIT;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `product_product_GetAllProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `product_product_GetAllProduct`(
)
BEGIN

    DECLARE `_rollback` BOOL DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_rollback` = 1;
    START TRANSACTION;
    select * from smartphamarcy.product_product t1 join
    smartphamarcy.product_productcategory t2 on t1.productCategory_id = t2.id join
    smartphamarcy.product_productmanufactorer t3 on t1.productManufacturer_id = t3.mid
    where t1.deleted = 'false' and t2.deleted = 'false' and t3.deleted = 'false';
    IF `_rollback` THEN
        ROLLBACK;
    ELSE
        COMMIT;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `res_cartitem_Create` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `res_cartitem_Create`(
	_cart_id varchar(255),
	_quality varchar(255),
	_price varchar(255),
	_product_id varchar(255),
	_uid varchar(255)
)
BEGIN

    DECLARE `_rollback` BOOL DEFAULT 0;
    declare itemId int default 0;
    declare oldId int default 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_rollback` = 1;
    START TRANSACTION;
    
    if not exists (select * from smartphamarcy.res_cartitem where cart_id = _cart_id and product_id = _product_id and deleted = 'false')
    then 
		insert into smartphamarcy.res_cartitem
		(cart_id,quality,price,product_id,create_uid,write_uid,deleted) values
		(_cart_id,_quality,_price,_product_id,_uid,_uid,'false');
    else
		set oldId = (select id from smartphamarcy.res_cartitem where cart_id = _cart_id and product_id = _product_id and deleted = 'false');

		update smartphamarcy.res_cartitem set
		quality = quality + 1, price = price + _price
        where id = oldId;
    end if;
    
    update smartphamarcy.res_cart set 
    total_price = total_price + _price where cid = _cart_id;

	select 1;
    
    IF `_rollback` THEN
        ROLLBACK;
    ELSE
        COMMIT;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `res_cart_ById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `res_cart_ById`(
	_id varchar(255)
)
BEGIN

    DECLARE `_rollback` BOOL DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_rollback` = 1;
    START TRANSACTION;
    
    select * from smartphamarcy.res_cart t1 join
    smartphamarcy.res_cartitem t2 on t1.cid = t2.cart_id join
    smartphamarcy.product_product t3 on t2.product_id = t3.pid join
    smartphamarcy.product_productcategory t4 on t3.productCategory_id = t4.id join
    smartphamarcy.product_productmanufactorer t5 on t3.productManufacturer_id = t5.mid
    where t1.cid = _id and t1.deleted = 'false' and t2.deleted = 'false' 
    and t3.deleted = 'false' and t4.deleted = 'false' and t5.deleted = 'false';
    
    IF `_rollback` THEN
        ROLLBACK;
    ELSE
        COMMIT;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `res_cart_CreateOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `res_cart_CreateOrder`(
	_cart_id varchar(255),
    _uid varchar(255)
)
BEGIN

    DECLARE `_rollback` BOOL DEFAULT 0;
    declare cusId int default 0;
    declare shipId int default 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_rollback` = 1;
    START TRANSACTION;
    
	set cusId = (select customer_id from smartphamarcy.res_cart where cid = _cart_id);
    
	set shipId = (select uid from smartphamarcy.res_customer where cid = cusId);
    
     insert into smartphamarcy.res_order
		(cart_id,customer_id,shipping_id,create_uid,write_uid,deleted) values
		(_cart_id,cusId,shipId,_uid,_uid,'false');

	select 1;
    
    IF `_rollback` THEN
        ROLLBACK;
    ELSE
        COMMIT;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `res_cart_DeleteAllCartItem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `res_cart_DeleteAllCartItem`(
	_id varchar(255),
    _uid varchar(255)
)
BEGIN

    DECLARE `_rollback` BOOL DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_rollback` = 1;
    START TRANSACTION;
    
    update smartphamarcy.res_cartitem set
    deleted = 'true', write_uid = _uid where cart_id = _id;
    
    select 1;
    
    IF `_rollback` THEN
        ROLLBACK;
    ELSE
        COMMIT;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `res_cart_DeleteCartItem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `res_cart_DeleteCartItem`(
	_id varchar(255),
    _uid varchar(255)
)
BEGIN

    DECLARE `_rollback` BOOL DEFAULT 0;
    declare oldquantity int default 0;
    declare oldprice double default 0.0;
	declare cartId int default 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_rollback` = 1;
    START TRANSACTION;
    
    set oldquantity = (select quality from smartphamarcy.res_cartitem where id = _id);
    set oldprice = (select price from smartphamarcy.res_cartitem where id = _id);
    set cartId = (select cart_id from smartphamarcy.res_cartitem where id = _id);
	if (oldquantity >= 2)
		then
		update smartphamarcy.res_cartitem set quality = quality - 1 where id = _id;
	else 
		update smartphamarcy.res_cartitem set
		deleted = 'true', write_uid = _uid where id = _id;
    end if;
    
    update smartphamarcy.res_cart set
    total_price = total_price - oldprice, write_uid = _uid where cid = cartId;
    
    select 1;
    
    IF `_rollback` THEN
        ROLLBACK;
    ELSE
        COMMIT;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `res_cart_getIdByUid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `res_cart_getIdByUid`(
	_uid varchar(255)
)
BEGIN

    DECLARE `_rollback` BOOL DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_rollback` = 1;
    START TRANSACTION;
    
    select * from smartphamarcy.res_users t1 join
    smartphamarcy.res_customer t2 on t1.uid = t2.uid join
    smartphamarcy.res_cart t3 on t2.cid = t3.customer_id
    where t1.uid = _uid and t1.deleted = 'false' and t2.deleted = 'false' and t3.deleted = 'false';
    
    IF `_rollback` THEN
        ROLLBACK;
    ELSE
        COMMIT;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `res_order_GetById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `res_order_GetById`(
	_id varchar(255)
)
BEGIN

    DECLARE `_rollback` BOOL DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_rollback` = 1;
    START TRANSACTION;
    
    select *, t2.cid as cusId from smartphamarcy.res_cart t1 join
    smartphamarcy.res_customer t2 on t1.customer_id = t2.cid join
	smartphamarcy.res_shipping t3 on t2.shipping_id = t3.sid
    where t1.cid = _id and t1.deleted = 'false' and t2.deleted = 'false' and t3.deleted = 'false';
    
    IF `_rollback` THEN
        ROLLBACK;
    ELSE
        COMMIT;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `res_order_Summit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `res_order_Summit`(
	_cart_id varchar(255),
    _product_id varchar(255),
    _cart_item varchar(255),
    _quantity varchar(255),
	_uid varchar(255)
)
BEGIN

    DECLARE `_rollback` BOOL DEFAULT 0;
    declare oldquan int default 0;
	declare oldId int default 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_rollback` = 1;
    START TRANSACTION;
    
    update smartphamarcy.res_cartitem set
    deleted = 'true', write_uid = _uid where id = _cart_item;
      
	set oldquan = (select unitStock from smartphamarcy.product_product where pid = _product_id and deleted = 'false');
      
	if (oldquan >= 2)
		then
			update smartphamarcy.product_product set
			unitStock = unitStock - _quantity, write_uid = _uid where pid = _product_id;
            
            update smartphamarcy.res_cart set 
            total_price = 0, write_uid = _uid where cid = _cart_id;
        else
			update smartphamarcy.product_product set
			deleted = 'true' , write_uid = _uid where pid = _product_id;
            
			set oldId = (select id from smartphamarcy.res_cartitem where product_id = _product_id and deleted = 'false');

			update smartphamarcy.res_cartitem set 
			write_uid = _uid, deleted = 'true' where id = oldId;
			
			update smartphamarcy.res_cart set
			total_price = 0, write_uid = _uid where cid = _cart_id;
                        
	end if;
    
    select 1;
    
    IF `_rollback` THEN
        ROLLBACK;
    ELSE
        COMMIT;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `res_users_ByList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `res_users_ByList`(
)
BEGIN

    DECLARE `_rollback` BOOL DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_rollback` = 1;
    START TRANSACTION;
	select * from smartphamarcy.res_users t1 join smartphamarcy.res_customer t2 on t1.uid = t2.uid
    join smartphamarcy.res_shipping t3 on t2.shipping_id = t3.sid
    where t1.deleted = 'false' and  t2.deleted = 'false' and  t3.deleted = 'false'; 
    IF `_rollback` THEN
        ROLLBACK;
    ELSE
        COMMIT;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `res_users_Create` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `res_users_Create`(
	_email varchar(255),
    _password varchar(255),
    _role varchar(255),
    
    _address varchar(255),
    _city varchar(255),
    _state varchar(255),
    _zipcode varchar(255),
    _country varchar(255),
    
    _fname varchar(255),
    _lname varchar(255),
    _customerPhone varchar(255)
)
BEGIN

    DECLARE `_rollback` BOOL DEFAULT 0;
    DECLARE lastuID int DEFAULT 0;
	DECLARE lastsID int DEFAULT 0;
	DECLARE lastcID int DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_rollback` = 1;
    START TRANSACTION;
    insert into smartphamarcy.res_users
    (emailId,password,enabled,deleted,role) values
    (_email,_password,'true','false',_role);
    
    set lastuID = (select LAST_INSERT_ID());
    
    insert into smartphamarcy.res_shipping
    (address,city,state,zipcode,country,create_uid,write_uid,deleted) values
    (_address,_city,_state,_zipcode,_country,lastuID,lastuID,'false');
    
    set lastsID = (select LAST_INSERT_ID());
    
    insert into smartphamarcy.res_customer
    (fname,lname,customerPhone,shipping_id,uid,create_uid,write_uid,deleted) values
    (_fname,_lname,_customerPhone,lastsID,lastuID,lastuID,lastuID,'false');
    
    set lastcID = (select LAST_INSERT_ID());
    
    insert into smartphamarcy.res_cart
    (customer_id,total_price,create_uid,write_uid,deleted) values
    (lastcID,0,lastuID,lastuID,'false');
    
    select LAST_INSERT_ID();
    
    IF `_rollback` THEN
        ROLLBACK;
    ELSE
        COMMIT;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `res_users_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `res_users_Delete`(
	_id varchar(255),
    _uid varchar(255)
)
BEGIN

    DECLARE `_rollback` BOOL DEFAULT 0;
    declare last_shipping_id INT default 0;
	declare last_cus_id INT default 0;
	declare last_cart_id INT default 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_rollback` = 1;
    START TRANSACTION;
    
    set last_shipping_id = (select shipping_id from smartphamarcy.res_customer where uid = _id);
	set last_cus_id = (select cid from smartphamarcy.res_customer where uid = _id);
	set last_cart_id = ifnull((select cid from smartphamarcy.res_cart where customer_id = last_cus_id),0);
    
    update smartphamarcy.res_customer set
    deleted = 'true', write_uid = _uid where uid = _id;
    
	update smartphamarcy.res_shipping set
    deleted = 'true', write_uid = _uid where sid = last_shipping_id;
    
	update smartphamarcy.res_users set
    deleted = 'true' where uid = _id;
    
    update smartphamarcy.res_order set
    deleted = 'true', write_uid = _uid where customer_id = last_cus_id;
    
     if (last_cart_id != 0)
     then
		 update smartphamarcy.res_cartitem set
		deleted = 'true', write_uid = _uid where cart_id = last_cart_id;
		
		 update smartphamarcy.res_cart set
		deleted = 'true', write_uid = _uid where customer_id = last_cus_id;
     end if;
    
    select 1;
    
    IF `_rollback` THEN
        ROLLBACK;
    ELSE
        COMMIT;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `res_users_Login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `res_users_Login`(
	_email varchar(255),
    _password varchar(255)
)
BEGIN

    DECLARE `_rollback` BOOL DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_rollback` = 1;
    START TRANSACTION;
    select * from smartphamarcy.res_users where emailId = _email and password = _password and enabled = 'true' and deleted = 'false';
    IF `_rollback` THEN
        ROLLBACK;
    ELSE
        COMMIT;
    END IF;
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

-- Dump completed on 2020-12-22 10:54:59
