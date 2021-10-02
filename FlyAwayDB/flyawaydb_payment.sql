-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: flyawaydb
-- ------------------------------------------------------
-- Server version	5.7.35-log

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
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `card_number` varchar(255) NOT NULL,
  `expiration` date NOT NULL,
  `security_code` int(11) NOT NULL,
  `card_fname` varchar(255) NOT NULL,
  `card_lname` varchar(255) NOT NULL,
  `per_id` int(11) NOT NULL,
  PRIMARY KEY (`pay_id`),
  KEY `person_payment_fk` (`per_id`),
  CONSTRAINT `person_payment_fk` FOREIGN KEY (`per_id`) REFERENCES `person` (`per_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'1234 5678 1021 9182','2022-10-31',879,'k','Ganesh',1),(2,'1234 5678 1021 9182','2022-10-31',432,'Raj','Rahul',2),(3,'1234 5678 1021 9182','2022-10-31',678,'Val','Athul',3),(4,'1234 5678 1021 9182','2022-10-31',345,'San','Naga',4),(5,'1234 5678 1021 9182','2022-10-31',234,'Bhonagiri','Alley',5),(6,'1234 5678 1021 9182','2022-10-31',765,'Jah','Dev',6),(7,'1234 5678 1021 9182','2022-10-31',789,'Bill','Kill',7),(8,'1234 5678 1021 9182','2022-10-31',234,'Is','Who',8),(9,'1234123412341234','2021-10-20',987,'Bharat','Kumar',9),(10,'3214543687658765','2028-10-28',923,'Bharat','Kumar',10),(11,'3214543687658765','2028-10-28',923,'Bharat','Kumar',11);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-02 22:07:43
