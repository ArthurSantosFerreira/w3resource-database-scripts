CREATE DATABASE  IF NOT EXISTS `employee` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `employee`;
-- MySQL dump 10.13  Distrib 5.7.34, for Linux (x86_64)
--
-- Host: localhost    Database: employee
-- ------------------------------------------------------
-- Server version	5.7.34-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `dep_id` int(11) NOT NULL,
  `dep_name` varchar(20) DEFAULT NULL,
  `dep_location` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`dep_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1001,'FINANCE','SYDNEY'),(2001,'AUDIT','MELBOURNE'),(3001,'MARKETING','PERTH'),(4001,'PRODUCTION','BRISBANE');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(15) DEFAULT NULL,
  `job_name` varchar(10) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `commission` decimal(7,2) DEFAULT NULL,
  `dep_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `dep_id` (`dep_id`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`dep_id`) REFERENCES `department` (`dep_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (63679,'SANDRINE','CLERK',69062,'1990-12-18',900.00,NULL,2001),(64989,'ADELYN','SALESMAN',66928,'1991-02-20',1700.00,400.00,3001),(65271,'WADE','SALESMAN',66928,'1991-02-22',1350.00,600.00,3001),(65646,'JONAS','MANAGER',68319,'1991-04-02',2957.00,NULL,2001),(66564,'MADDEN','SALESMAN',66928,'1991-09-28',1350.00,1500.00,3001),(66928,'BLAZE','MANAGER',68319,'1991-05-01',2750.00,NULL,3001),(67832,'CLARE','MANAGER',68319,'1991-06-09',2550.00,NULL,1001),(67858,'SCARLET','ANALYST',65646,'1997-04-19',3100.00,NULL,2001),(68319,'KAYLING','PRESIDENT',NULL,'1991-11-18',6000.00,NULL,1001),(68454,'TUCKER','SALESMAN',66928,'1991-09-08',1600.00,0.00,3001),(68736,'ADNRES','CLERK',67858,'1997-05-23',1200.00,NULL,2001),(69000,'JULIUS','CLERK',66928,'1991-12-03',1050.00,NULL,3001),(69062,'FRANK','ANALYST',65646,'1991-12-03',3100.00,NULL,2001),(69324,'MARKER','CLERK',67832,'1992-01-23',1400.00,NULL,1001);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary_grade`
--

DROP TABLE IF EXISTS `salary_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary_grade` (
  `grade` int(11) NOT NULL,
  `min_salary` int(11) DEFAULT NULL,
  `max_salary` int(11) DEFAULT NULL,
  PRIMARY KEY (`grade`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_grade`
--

LOCK TABLES `salary_grade` WRITE;
/*!40000 ALTER TABLE `salary_grade` DISABLE KEYS */;
INSERT INTO `salary_grade` VALUES (1,800,1300),(2,1301,1500),(3,1501,2100),(4,2101,3100),(5,3101,9999);
/*!40000 ALTER TABLE `salary_grade` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-12 17:34:55
