-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acc_details`
--

DROP TABLE IF EXISTS `acc_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_details` (
  `acc_no` int(11) DEFAULT NULL,
  `uname` varchar(7) DEFAULT NULL,
  `acc_type` varchar(7) DEFAULT NULL,
  `details` varchar(31) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_details`
--

LOCK TABLES `acc_details` WRITE;
/*!40000 ALTER TABLE `acc_details` DISABLE KEYS */;
INSERT INTO `acc_details` VALUES (7058129,'raj','STUDENT','Student Account'),(3029150,'anamika','CURRENT','Current Account');
/*!40000 ALTER TABLE `acc_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer`
--

DROP TABLE IF EXISTS `transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transfer` (
  `ID` varchar(0) DEFAULT NULL,
  `uname` varchar(0) DEFAULT NULL,
  `acc_no` varchar(0) DEFAULT NULL,
  `dest_acc` varchar(0) DEFAULT NULL,
  `amt` varchar(0) DEFAULT NULL,
  `details` varchar(0) DEFAULT NULL,
  `time1` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer`
--

LOCK TABLES `transfer` WRITE;
/*!40000 ALTER TABLE `transfer` DISABLE KEYS */;
/*!40000 ALTER TABLE `transfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_details`
--

DROP TABLE IF EXISTS `tx_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_details` (
  `id` tinyint(4) DEFAULT NULL,
  `uname` varchar(7) DEFAULT NULL,
  `acc_no` int(11) DEFAULT NULL,
  `operation` varchar(8) DEFAULT NULL,
  `amt` mediumint(9) DEFAULT NULL,
  `balance` mediumint(9) DEFAULT NULL,
  `time1` varchar(28) DEFAULT NULL,
  `isnew` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_details`
--

LOCK TABLES `tx_details` WRITE;
/*!40000 ALTER TABLE `tx_details` DISABLE KEYS */;
INSERT INTO `tx_details` VALUES (7,'raj',7058129,'DEPOSITE',2300,2300,'Thu Mar 18 22:28:32 IST 2020','NO'),(8,'raj',7058129,'DEPOSITE',200,2500,'Thu Mar 18 22:28:50 IST 2020','NO'),(9,'raj',7058129,'DEPOSITE',230,2730,'Thu Mar 18 22:32:54 IST 2020','NO'),(10,'raj',7058129,'DEPOSITE',730,3460,'Thu Mar 18 22:35:36 IST 2020','NO'),(11,'raj',7058129,'DEPOSITE',460,3920,'Thu Mar 18 22:38:43 IST 2020','NO'),(12,'raj',7058129,'WITHDRAW',720,3200,'Thu Mar 18 22:39:51 IST 2020','NO'),(13,'anamika',3029150,'DEPOSITE',23000,23000,'Thu Mar 18 23:40:41 IST 2020','NO'),(14,'anamika',3029150,'WITHDRAW',2000,21000,'Thu Mar 18 23:41:03 IST 2020','NO'),(15,'anamika',3029150,'WITHDRAW',2000,19000,'Thu Mar 18 23:43:45 IST 2020','NO'),(16,'raj',7058129,'DEPOSITE',2000,21000,'Thu Mar 18 23:43:45 IST 2020','NO'),(17,'raj',7058129,'WITHDRAW',6000,15000,'Thu Mar 18 23:45:02 IST 2020','NO'),(18,'raj',7058129,'WITHDRAW',2000,13000,'Thu Mar 18 23:45:36 IST 2020','NO'),(19,'anamika',3029150,'DEPOSITE',2000,15000,'Thu Mar 18 23:45:36 IST 2020','NO'),(20,'raj',7058129,'WITHDRAW',800,12200,'Thu Mar 18 23:48:43 IST 2020','NO'),(21,'anamika',3029150,'WITHDRAW',900,14100,'Thu Mar 18 23:52:55 IST 2020','NO'),(22,'raj',7058129,'DEPOSITE',8000,8000,'Thu Mar 18 23:56:24 IST 2020','NO'),(23,'raj',7058129,'WITHDRAW',500,7500,'Thu Mar 18 23:57:23 IST 2020','NO'),(24,'anamika',3029150,'WITHDRAW',200,13900,'Sat Mar 20 09:09:12 IST 2020','NO'),(25,'raj',7058129,'DEPOSITE',12000,12000,'Tue Oct 06 15:27:39 IST 2020','NO'),(26,'raj',7058129,'WITHDRAW',100,11900,'Tue Oct 06 15:28:17 IST 2020','YES');
/*!40000 ALTER TABLE `tx_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_details` (
  `ID` tinyint(4) DEFAULT NULL,
  `uname` varchar(7) DEFAULT NULL,
  `upass` varchar(7) DEFAULT NULL,
  `sec_question` varchar(22) DEFAULT NULL,
  `answer` varchar(4) DEFAULT NULL,
  `address` varchar(69) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES (2,'raj','raj','Your First School Name','zphs','7, Laxmi apmt ganeshpuri soc Opp chaitanya Hospital Warje Pune 411058','rajdudhare1@gmai.com',7058129495),(3,'anamika','anamika','Favorite Color','red','340, ganesh colony','anamika@gmail.com',7058129495),(4,'anita','anita','Favorite Color','red','234, Arandole','anita@gmail.com',7058129495);
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-22 15:26:15
