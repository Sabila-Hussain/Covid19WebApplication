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
-- Table structure for table `ydayusa`
--

DROP TABLE IF EXISTS `ydayusa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ydayusa` (
  `state` varchar(50) NOT NULL,
  `confcases` int(11) DEFAULT NULL,
  `confdeaths` int(11) DEFAULT NULL,
  PRIMARY KEY (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ydayusa`
--

LOCK TABLES `ydayusa` WRITE;
/*!40000 ALTER TABLE `ydayusa` DISABLE KEYS */;
INSERT INTO `ydayusa` VALUES ('Alabama ',7888,290),('Alaska ',368,9),('Arizona ',8640,362),('Arkansas ',3431,76),('California ',52197,2134),('Colorado ',16635,842),('Connecticut ',29287,2495),('Delaware ',5208,177),('Florida ',32138,1088),('Georgia ',28671,1179),('Hawaii ',620,17),('Idaho ',2061,64),('Illinois ',61499,2618),('Indiana ',19933,1246),('Iowa ',9169,184),('Kansas  ',4896,143),('Kentucky ',5130,253),('Louisiana ',27068,1740),('Maine ',1185,57),('Maryland ',25462,1281),('Massachusetts ',68087,4004),('Michigan ',43754,4049),('Minnesota ',6663,419),('Mississippi ',7550,303),('Missouri ',8434,377),('Montana ',455,16),('Nebraska ',5659,78),('Nevada ',5426,262),('New Hampshire ',2518,86),('New Jersey ',121190,7538),('New Mexico ',3850,151),('New York ',323883,24648),('North Carolina ',11743,432),('North Dakota ',1191,25),('Ohio ',16325,753),('Oklahoma ',3972,238),('Oregon ',2680,109),('Pennsylvania ',43155,1860),('Rhode Island ',9477,320),('South Carolina ',6626,275),('South Dakota ',2631,21),('Tennessee ',13177,210),('Texas ',25516,672),('USA Total',1188421,68602),('Utah ',5175,50),('Vermont ',897,52),('Virginia ',18671,660),('Washington ',13686,765),('West Virginia ',1195,50),('Wisconsin ',7964,339),('Wyoming ',586,7);
/*!40000 ALTER TABLE `ydayusa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-04 15:51:54
