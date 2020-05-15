-- MySQL dump 10.17  Distrib 10.3.22-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: demo
-- ------------------------------------------------------
-- Server version	10.3.22-MariaDB-0+deb10u1

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
-- Table structure for table `usa`
--

DROP TABLE IF EXISTS `usa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usa` (
  `state` varchar(50) NOT NULL,
  `confcases` int(11) DEFAULT NULL,
  `confdeaths` int(11) DEFAULT NULL,
  PRIMARY KEY (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usa`
--

LOCK TABLES `usa` WRITE;
/*!40000 ALTER TABLE `usa` DISABLE KEYS */;
INSERT INTO `usa` VALUES ('Alabama ',8112,298),('Alaska ',370,9),('Arizona ',8919,362),('Arkansas ',3469,80),('California ',52197,2134),('Colorado ',16907,851),('Connecticut ',30173,2556),('Delaware ',5288,182),('Florida ',32138,1088),('Georgia ',29438,1246),('Hawaii ',621,17),('Idaho ',2106,64),('Illinois ',63840,2662),('Indiana ',20507,1264),('Iowa ',9703,188),('Kansas  ',5328,156),('Kentucky ',5245,261),('Louisiana ',27068,1740),('Maine ',1205,57),('Maryland ',26408,1317),('Massachusetts ',69087,4090),('Michigan ',43950,4135),('Minnesota ',7234,428),('Mississippi ',7877,310),('Missouri ',8887,383),('Montana ',457,16),('Nebraska ',6083,79),('Nevada ',5491,266),('New Hampshire ',2588,86),('New Jersey ',121190,7538),('New Mexico ',4031,156),('New York ',327374,24944),('North Carolina ',11972,442),('North Dakota ',1225,25),('Ohio ',16325,753),('Oklahoma ',4044,238),('Oregon ',2759,109),('Pennsylvania ',43155,1860),('Rhode Island ',9652,341),('South Carolina ',6757,283),('South Dakota ',2668,21),('Tennessee ',13571,219),('Texas ',25516,672),('USA Total',1212955,69925),('Utah ',5317,50),('Vermont ',902,52),('Virginia ',19492,684),('Washington ',13686,765),('West Virginia ',1224,50),('Wisconsin ',8236,340),('Wyoming ',596,7);
/*!40000 ALTER TABLE `usa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-04 15:51:40
