-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ems
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `event_details`
--

DROP TABLE IF EXISTS `event_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dept_id` int NOT NULL,
  `dept_name` varchar(45) NOT NULL,
  `event_category` varchar(45) NOT NULL,
  `event_date` varchar(45) NOT NULL,
  `event_topic` varchar(100) NOT NULL,
  `event_time` varchar(45) NOT NULL,
  `resource_person_details` varchar(250) NOT NULL,
  `broucher` varchar(45) NOT NULL,
  `image1` varchar(45) NOT NULL,
  `image2` varchar(45) NOT NULL,
  `description` varchar(9000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `did_idx` (`dept_id`),
  CONSTRAINT `did` FOREIGN KEY (`dept_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_details`
--

LOCK TABLES `event_details` WRITE;
/*!40000 ALTER TABLE `event_details` DISABLE KEYS */;
INSERT INTO `event_details` VALUES (13,3,'Information Technology','Guest Lecture','2023-07-10','artificial Intelligence','11am - 12.30pm','Mr.Sriganth G , dmi college of engineering ,chennai','807895.jpg','860701.jpg','860702.jpg','Department Of Information Technology organizesseminar on Cloud Computing and its Application..Guest Lecture was attended by second and final year students of IT . The session is about how the cloud computing is implemented and its application..'),(14,7,'Computer Science and engineering','Workshop','2023-08-17','cloud computing','10.30am - 1230pm','Mr.Sriganth G ,Teaching fello , Department of Information Technology ,Dmi college of engineering , chennai','860703.jpg','860704.jpg','860706.jpg','Department Of Information Technology organizesseminar on Cloud Computing and its Application..Guest Lecture was attended by second and final year students of CSE . The session is about how the cloud computing is implemented and its application..'),(15,3,'Information Technology','Webinar','2023-07-11','Mobile App development','9.30am - 12.25pm','Dr K.Muralishankar, Founder & chief visionary officer ,Yardstic digital sollutions ,yardstic Acadamy','WhatsApp Image 2023-07-19 at 11.01.16.jpg','WhatsApp Image 2023-07-19 at 14.54.22.jpg','WhatsApp Image 2023-07-14 at 14.19.16.jpg','The session was most interesting and interacting and got a good feedback from the students. At the end of the session the speakers answered all our queries. We are immensely grateful to our principal and our Head of the Department for giving us this opportunity and also we are thankful to the resource person who spend his valuable time with us by teaching in an interactive way.'),(16,6,'Mechanical engineering','Guest Lecture','2023-07-23','mechatronics','9:00 am - 12:00 pm','Dr.J.E.arulraj','71YXLlv3svL._SX466_.jpg','50913eeb04768a5b1fa9985c16704d96.jpg','1200px-Wine_grapes07.jpg','gddawurhwq b');
/*!40000 ALTER TABLE `event_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-27  0:02:36
