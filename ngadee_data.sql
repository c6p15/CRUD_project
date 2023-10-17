-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0+deb9u2

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
-- Table structure for table `Application`
--

DROP TABLE IF EXISTS `Application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Application` (
  `ApID` tinyint(4) DEFAULT NULL,
  `UID` tinyint(4) DEFAULT NULL,
  `JID` tinyint(4) DEFAULT NULL,
  `ApDateTime` varchar(10) DEFAULT NULL,
  `ApStatus` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Application`
--

LOCK TABLES `Application` WRITE;
/*!40000 ALTER TABLE `Application` DISABLE KEYS */;
INSERT INTO `Application` VALUES (1,6,1,'02-12-2023','pending'),(2,4,2,'04-12-2023','accept'),(3,3,3,'06-12-2023','reject');
/*!40000 ALTER TABLE `Application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Assignment`
--

DROP TABLE IF EXISTS `Assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Assignment` (
  `AsID` tinyint(4) DEFAULT NULL,
  `UID` tinyint(4) DEFAULT NULL,
  `RID` tinyint(4) DEFAULT NULL,
  `AsDateTime` varchar(10) DEFAULT NULL,
  `AsStatus` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Assignment`
--

LOCK TABLES `Assignment` WRITE;
/*!40000 ALTER TABLE `Assignment` DISABLE KEYS */;
INSERT INTO `Assignment` VALUES (1,1,1,'12-12-2023','pending'),(2,2,2,'13-12-2023','accept'),(3,5,2,'14-12-2023','reject');
/*!40000 ALTER TABLE `Assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Job`
--

DROP TABLE IF EXISTS `Job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Job` (
  `JID` tinyint(4) DEFAULT NULL,
  `UID` tinyint(4) DEFAULT NULL,
  `JName` varchar(35) DEFAULT NULL,
  `JShopname` varchar(91) DEFAULT NULL,
  `Salary` varchar(10) DEFAULT NULL,
  `Jobtype` varchar(9) DEFAULT NULL,
  `JShopAddr` varchar(31) DEFAULT NULL,
  `JTime` varchar(16) DEFAULT NULL,
  `Qulification` varchar(48) DEFAULT NULL,
  `JDetail` varchar(78) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Job`
--

LOCK TABLES `Job` WRITE;
/*!40000 ALTER TABLE `Job` DISABLE KEYS */;
INSERT INTO `Job` VALUES (1,6,'หาคนล้างจานร้านก๋วยเตี๋ยวข้างเซเว่น','ร้านก๋วยเตี๋ยวหมูตุ๋น สูตรคุณปู่','200/วัน','พาร์ทไทม์','ข้างเซเว่นฝั่งเดียวกับม.พะเยา','09:00 - 17:00 น.','มีมือมีตีน มาร้านเองได้ ','มีทิป ถ้าล้างจานสะอาดและเร็ว'),(2,4,'ทำความสะอาดห้องน้ำ ราคาดี','ร้านลองสั่งอาหารตามสั่ง สั่งปุ๊บได้ปัํบ สั่งปั๊บได้ปุ๊บ อ่าวสั่งไปแล้วไม่ได้อย่างที่ต้องการ','195/วัน','พาร์ทไทม์','ตรงข้ามม.พะเยา เลยไฟแดงมานิดนึง','10:00 - 12:00 น.','มีมือมีตีน มาร้านเองได้ ล้างห้องน้ำเป็น','มาถึงตอนไหนล้างตอนนั้น ไม่มีกำหนดเวลา'),(3,3,'เป็นพนักงานขายของชำ เฝ้าร้านกะดึก','ร้านขายของชำประจำพะเยา','2500/เดือน','ฟูลไทม์','ร้านตรงนั้นแหละ','19:00 - 03:00 น.','มีมือมีตีน มาร้านเองได้ ไม่ง่วงนอนง่าย ไม่กลัวผี','ระวังตอนตี 2 ครึ่ง จะมีสิ่งผิดปกติ จงจำกฏไว้ 10 ข้อที่เขียนไว้อยู่ใต้แคชเชียร์');
/*!40000 ALTER TABLE `Job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Resume`
--

DROP TABLE IF EXISTS `Resume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Resume` (
  `RID` tinyint(4) DEFAULT NULL,
  `UID` tinyint(4) DEFAULT NULL,
  `RReligion` varchar(4) DEFAULT NULL,
  `RSkill` varchar(41) DEFAULT NULL,
  `REducation` varchar(9) DEFAULT NULL,
  `RJobRequire` varchar(18) DEFAULT NULL,
  `RPostingDate` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Resume`
--

LOCK TABLES `Resume` WRITE;
/*!40000 ALTER TABLE `Resume` DISABLE KEYS */;
INSERT INTO `Resume` VALUES (1,1,'Thai','เป็นคนชอบทำความสะอาดห้องน้ำเป็นการส่วนตัว','ปริญญาตรี','ทำความสะอาดห้องน้ำ','12-12-2023'),(2,2,'Thai','คุยกับคนเก่ง เคยเป็นเซลล์ขายรถ','ม.6','เด็กเสิร์ฟ','13-12-2023'),(3,5,'Thai','เคยถูพื้นดาวอังคารมา 5 รอบ','ปริญญาเอก','ถูพื้น','15-12-2023');
/*!40000 ALTER TABLE `Resume` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_Chat`
--

DROP TABLE IF EXISTS `User_Chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User_Chat` (
  `UID_Sender` tinyint(4) DEFAULT NULL,
  `UID_Receiver` tinyint(4) DEFAULT NULL,
  `DateTime` varchar(19) DEFAULT NULL,
  `File` varchar(18) DEFAULT NULL,
  `TextFile` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_Chat`
--

LOCK TABLES `User_Chat` WRITE;
/*!40000 ALTER TABLE `User_Chat` DISABLE KEYS */;
INSERT INTO `User_Chat` VALUES (4,1,'12-12-2023 18:24 น.','','หิวซอยจุ๊'),(5,2,'13-12-2023','','มีไรสสั'),(2,3,'14-12-2023','','รักนะครับ'),(1,4,'15-12-2023','รูปแปลกๆพิศดาล.jpg',''),(2,5,'16-12-2023','','ควย'),(4,1,'19-12-2023','CV.pdf','');
/*!40000 ALTER TABLE `User_Chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `UID` tinyint(4) DEFAULT NULL,
  `SSN` bigint(20) DEFAULT NULL,
  `UName` varchar(17) DEFAULT NULL,
  `UGender` varchar(1) DEFAULT NULL,
  `UBirthDate` varchar(10) DEFAULT NULL,
  `UDetail` varchar(76) DEFAULT NULL,
  `UAddr` varchar(8) DEFAULT NULL,
  `UEmail` varchar(25) DEFAULT NULL,
  `UPhoneNo.` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,-579082638,'สมหมาย สายใจ','M','24-05-1995','จบปริญญาตรี ม.พะเยา มีประสบการณ์ในการทำงานนิดหน่อย','พะเยา','sommai@gmail.com',622412010),(2,-138066158,'วุตินิจ กิจลักษณะ','M','30-12-1997','ชอบกินซอยจุ๊แซบๆ ','เชียงราย','Vutinichh1@hotmail.com',822236144),(3,-192163746,'สมศรี ดีสมสุข','F','23-10-2001','จบม.3 โรงเรียนสามัคคีวิทยาคม มีประสบการณ์ทำงานที่โชกโชน','กรุงเทพ','Somsri23@gmail.com',933189967),(4,-1262704037,'นวลนุจ ใจผุดผ่อง','F','14-04-1999','มีประสบการณ์การทำงานเกี่ยวกับการซ่อมคอมพิวเตอร์ 4 ปี ที่บริษัทงานดี ไม่จำกัด','น่าน','Jaipoodpong_2@bing.com',952520308),(5,1785556812,'รจณา นาคนวล','F','01-02-2003','เป็นคนเฟรนลี่ ขยัน มีความอดทนต่อแรงกดดันสูง','','',882869294),(6,-133974597,'ธนูกิจ จงปัญญา','M','04-06-2000','','พะเยา','bowactivity2000@gmail.com',874211718);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` varchar(11) DEFAULT NULL,
  `seq` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('Job',3),('Users',6),('Resume',3),('Application',3),('Assignment',3);
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-18 10:46:26
