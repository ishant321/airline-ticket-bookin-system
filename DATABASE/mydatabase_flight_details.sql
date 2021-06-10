-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: mydatabase
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `flight_details`
--

DROP TABLE IF EXISTS `flight_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_details` (
  `flight_company` varchar(30) DEFAULT NULL,
  `total_seats` int DEFAULT NULL,
  `first_class` int DEFAULT NULL,
  `business` int DEFAULT NULL,
  `economy` int DEFAULT NULL,
  `departure_city` varchar(30) DEFAULT NULL,
  `arrival_city` varchar(30) DEFAULT NULL,
  `departure_time` varchar(10) DEFAULT NULL,
  `arrival_time` varchar(10) DEFAULT NULL,
  `fare` int DEFAULT NULL,
  `flight_id` varchar(10) DEFAULT NULL,
  `available_first_class` int DEFAULT NULL,
  `available_business` int DEFAULT NULL,
  `available_economy` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_details`
--

LOCK TABLES `flight_details` WRITE;
/*!40000 ALTER TABLE `flight_details` DISABLE KEYS */;
INSERT INTO `flight_details` VALUES ('Indigo',50,10,20,30,'Bhubaneswar','Mumbai','10AM','1PM',3299,'F001',10,20,30),('Vistara',80,20,30,30,'Bhubaneswar','Mumbai','3PM','6PM',3529,'F002',15,30,30),('Vistara',80,20,30,30,'Bhubaneswar','Delhi','9AM','11AM',3999,'F003',20,30,30),('Spice-jet',90,20,20,50,'Bhubaneswar','Delhi','2PM','4PM',4199,'F004',20,20,50),('Air-Asia',70,20,20,30,'Bhubaneswar','Chennai','10AM','12PM',3799,'F005',20,20,30),('Air-India',60,10,30,30,'Bhubaneswar','Kolkata','11AM','12PM',2099,'F006',10,27,30),('Air-Asia',70,20,20,30,'Bhubaneswar','Kolkata','2PM','3PM',1999,'F007',20,20,30),('Spice-Jet',90,20,20,50,'Bhubaneswar','Bangalore','1PM','3PM',3009,'F008',20,20,47),('Indigo',50,10,20,30,'Delhi','Mumbai','10AM','1PM',4109,'F009',10,20,30),('Vistara',80,20,30,30,'Delhi','Mumbai','3PM','6PM',3839,'F010',20,30,30),('Vistara',80,20,30,30,'Delhi','Bhubaneswar','9AM','11AM',4299,'F011',20,30,30),('Spice-Jet',80,20,30,30,'Delhi','Bhubaneswar','2PM','4PM',4909,'F012',20,30,30),('Air-Asia',70,20,20,30,'Delhi','Chennai','10AM','12PM',5199,'F014',20,20,25),('Air-India',60,10,30,30,'Delhi','Kolkata','11AM','12PM',3999,'F015',10,30,30),('Air-Asia',70,20,20,30,'Delhi','Kolkata','2PM','5PM',3599,'F016',20,20,30),('Indigo',50,10,20,30,'Mumbai','Bhubaneswar','10AM','1PM',3749,'F013',10,20,30),('Vistara',80,20,30,30,'Mumbai','Bhubaneswar','3PM','6PM',4299,'F017',20,30,30),('Vistara',80,20,30,30,'Mumbai','Delhi','9AM','11AM',4599,'F018',20,30,30),('Spice-Jet',80,20,30,30,'Mumbai','Delhi','2PM','4PM',4759,'F019',20,30,30),('Air-Asia',70,20,20,30,'Mumbai','Chennai','10AM','12PM',3759,'F020',20,20,30),('Air-India',60,10,30,30,'Mumbai','Kolkata','11AM','12PM',3259,'F021',10,30,30),('Air-Asia',70,20,20,30,'Mumbai','Kolkata','2PM','3PM',3959,'F022',20,20,30),('Spice-Jet',90,20,20,50,'Mumbai','Bangalore','1PM','3PM',3059,'F023',20,20,50),('Indigo',50,10,20,30,'Bangalore','Mumbai','10AM','1PM',3159,'F024',10,17,30),('Vistara',80,20,30,30,'Bangalore','Mumbai','3PM','6PM',3559,'F025',20,30,30),('Vistara',80,20,30,30,'Bangalore','Bhubaneswar','9AM','11AM',4059,'F026',20,30,30),('Spice-Jet',80,20,30,30,'Bangalore','Bhubaneswar','2PM','4PM',4359,'F027',20,30,30),('Air-Asia',70,20,20,30,'Bangalore','Chennai','10AM','12PM',2599,'F028',20,20,30),('Air-India',60,10,30,30,'Bangalore','Kolkata','11AM','12PM',4199,'F029',10,30,30),('Air-Asia',70,20,20,30,'Bangalore','Kolkata','2PM','5PM',4359,'F030',20,20,30),('Spice-Jet',90,20,20,50,'Bangalore','Delhi','1PM','5PM',4359,'F032',20,20,50),('Indigo',50,10,20,30,'Kolkata','Mumbai','10AM','1PM',4059,'F031',10,20,30),('Vistara',80,20,30,30,'Kolkata','Mumbai','3PM','6PM',4129,'F039',20,30,30),('Vistara',80,20,30,30,'Kolkata','Delhi','9AM','11AM',4229,'F033',20,30,30),('Spice-Jet',80,20,30,30,'Kolkata','Delhi','2PM','4PM',3029,'F034',20,30,30),('Air-Asia',70,20,20,30,'Kolkata','Chennai','10AM','12PM',3129,'F035',20,20,30),('Air-India',60,10,30,30,'Kolkata','Bhubaneswar','11AM','12PM',2119,'F036',10,30,30),('Air-Asia',70,20,20,30,'Kolkata','Bhubaneswar','2PM','3PM',2019,'F037',20,20,30),('Spice-Jet',90,20,20,50,'Kolkata','Bangalore','1PM','3PM',3119,'F038',20,20,50);
/*!40000 ALTER TABLE `flight_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-10 10:41:16
