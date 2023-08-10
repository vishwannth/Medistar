-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL,
  `doc_id` int NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `doctor_name` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (22,1009,54,'Vikrant','Cardiology','Ragavi','2023-05-12','11:00 AM'),(27,1016,52,'Varsha','Nephrology','Karnan','2023-05-15','12:00 PM'),(30,1009,56,'Vikrant','Radiology','Rohit','2023-05-17','03:00 PM'),(46,1009,57,'Vikrant','Pediatrics','Rajini','2023-05-10','5:00 PM'),(49,1011,55,'Krishna','Medicine','Kanishkaa','2023-05-10','12:00 PM'),(50,1014,54,'Sudeep','Cardiology','Ragavi','2023-05-10','01:00 PM'),(52,1015,52,'Hemanth','Nephrology','Karnan','2023-05-10','05:00 PM'),(56,1009,50,'Vikrant','General','Ramesh','2023-05-12','10:00 AM'),(57,1009,54,'Vikrant','Cardiology','Ragavi','2023-05-10','05:00 PM'),(65,1010,51,'Tharun','General','Suresh','2023-05-17','01:00 PM'),(66,1010,51,'Tharun','General','Suresh','2023-05-12','01:00 PM'),(72,1009,51,'Vikrant','General','Suresh','2023-05-12','01:00 PM'),(73,1009,51,'Vikrant','General','Suresh','2023-05-17','02:00 PM'),(74,1009,51,'Vikrant','General','Suresh','2023-05-17','02:00 PM'),(75,1009,51,'Vikrant','General','Suresh','2023-05-17','02:00 PM'),(76,1009,55,'Vikrant','Medicine','Kanishkaa','2023-05-18','11:00 AM'),(77,1009,51,'Vikrant','General','Suresh','2023-05-12','11:00 AM');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-12 18:44:33
