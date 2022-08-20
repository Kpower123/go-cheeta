-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: kanishka_db
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.20.04.2

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
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `driver_id` int DEFAULT NULL,
  `vehicle_type` int DEFAULT NULL,
  `register_no` varchar(45) DEFAULT NULL,
  `rate_per_km` double DEFAULT NULL,
  `create` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `upadate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (1,7,6,'WA 2081',45,'2022-08-20 09:45:15','2022-08-20 09:45:15'),(2,7,7,'WA 2081',45,'2022-08-20 09:45:42','2022-08-20 09:45:42'),(3,7,7,'WA 2081',45,'2022-08-20 09:45:42','2022-08-20 09:45:42'),(4,7,7,'WA 2081',45,'2022-08-20 09:45:42','2022-08-20 09:45:42'),(5,7,7,'WA 2081',45,'2022-08-20 09:45:42','2022-08-20 09:45:42'),(6,7,7,'WA 2081',45,'2022-08-20 09:45:43','2022-08-20 09:45:43'),(8,7,7,'WA 2081',45,'2022-08-20 09:45:43','2022-08-20 09:45:43'),(9,7,7,'WA 2081',45,'2022-08-20 09:45:43','2022-08-20 09:45:43'),(10,7,7,'WA 2081',45,'2022-08-20 09:45:43','2022-08-20 09:45:43'),(11,7,7,'WA 2081',45,'2022-08-20 09:45:43','2022-08-20 09:45:43'),(14,7,7,'WA 2081 dwe',45,'2022-08-20 10:07:14','2022-08-20 10:07:14'),(15,7,7,'WA 2081 dwe',50,'2022-08-20 10:07:18','2022-08-20 10:07:18'),(16,8,7,'WA 2081 dwe',50,'2022-08-20 10:07:25','2022-08-20 10:07:25');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-20 17:09:36
