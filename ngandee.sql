-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2023 at 12:20 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ngandee`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `ApID` tinyint(4) DEFAULT NULL,
  `UID` tinyint(4) DEFAULT NULL,
  `JID` tinyint(4) DEFAULT NULL,
  `ApDateTime` varchar(10) DEFAULT NULL,
  `ApStatus` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`ApID`, `UID`, `JID`, `ApDateTime`, `ApStatus`) VALUES
(1, 6, 1, '02-12-2023', 'pending'),
(2, 4, 2, '04-12-2023', 'accept'),
(3, 3, 3, '06-12-2023', 'reject');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `AsID` tinyint(4) DEFAULT NULL,
  `UID` tinyint(4) DEFAULT NULL,
  `RID` tinyint(4) DEFAULT NULL,
  `AsDateTime` varchar(10) DEFAULT NULL,
  `AsStatus` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`AsID`, `UID`, `RID`, `AsDateTime`, `AsStatus`) VALUES
(1, 1, 1, '12-12-2023', 'pending'),
(2, 2, 2, '13-12-2023', 'accept'),
(3, 5, 2, '14-12-2023', 'reject');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`JID`, `UID`, `JName`, `JShopname`, `Salary`, `Jobtype`, `JShopAddr`, `JTime`, `Qulification`, `JDetail`) VALUES
(1, 6, 'หาคนล้างจานร้านก๋วยเตี๋ยวข้างเซเว่น', 'ร้านก๋วยเตี๋ยวหมูตุ๋น สูตรคุณปู่', '200/วัน', 'พาร์ทไทม์', 'ข้างเซเว่นฝั่งเดียวกับม.พะเยา', '09:00 - 17:00 น.', 'มีมือมีตีน มาร้านเองได้ ', 'มีทิป ถ้าล้างจานสะอาดและเร็ว'),
(2, 4, 'ทำความสะอาดห้องน้ำ ราคาดี', 'ร้านลองสั่งอาหารตามสั่ง สั่งปุ๊บได้ปัํบ สั่งปั๊บได้ปุ๊บ อ่าวสั่งไปแล้วไม่ได้อย่างที่ต้องการ', '195/วัน', 'พาร์ทไทม์', 'ตรงข้ามม.พะเยา เลยไฟแดงมานิดนึง', '10:00 - 12:00 น.', 'มีมือมีตีน มาร้านเองได้ ล้างห้องน้ำเป็น', 'มาถึงตอนไหนล้างตอนนั้น ไม่มีกำหนดเวลา'),
(3, 3, 'เป็นพนักงานขายของชำ เฝ้าร้านกะดึก', 'ร้านขายของชำประจำพะเยา', '2500/เดือน', 'ฟูลไทม์', 'ร้านตรงนั้นแหละ', '19:00 - 03:00 น.', 'มีมือมีตีน มาร้านเองได้ ไม่ง่วงนอนง่าย ไม่กลัวผี', 'ระวังตอนตี 2 ครึ่ง จะมีสิ่งผิดปกติ จงจำกฏไว้ 10 ข้อที่เขียนไว้อยู่ใต้แคชเชียร์'),
(NULL, NULL, 'หาคนล้างจานร้านก๋วยเตี๋ยวข้างเซเว่น', 'ร้านก๋วยเตี๋ยวหมูตุ๋น สูตรคุณปู่', '200/วัน', 'พาร์ทไทม์', 'ข้างเซเว่นฝั่งเดียวกับม.พะเยา', '09:00 - 17:00 น.', 'มีมือมีตีน มาร้านเองได้ ', 'มีทิป ถ้าล้างจานสะอาดและเร็ว'),
(NULL, NULL, 'หาคนล้างจานร้านก๋วยเตี๋ยวข้างเซเว่น', 'ร้านก๋วยเตี๋ยวหมูตุ๋น สูตรคุณปู่ไหน', '200/วัน', 'พาร์ทไทม์', 'ข้างเซเว่นฝั่งเดียวกับม.พะเยา', '09:00 - 17:00 น.', 'มีมือมีตีน มาร้านเองได้ ', 'มีทิป ถ้าล้างจานสะอาดและเร็ว');

-- --------------------------------------------------------

--
-- Table structure for table `resume`
--

CREATE TABLE `resume` (
  `RID` tinyint(4) DEFAULT NULL,
  `UID` tinyint(4) DEFAULT NULL,
  `RReligion` varchar(4) DEFAULT NULL,
  `RSkill` varchar(41) DEFAULT NULL,
  `REducation` varchar(9) DEFAULT NULL,
  `RJobRequire` varchar(18) DEFAULT NULL,
  `RPostingDate` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resume`
--

INSERT INTO `resume` (`RID`, `UID`, `RReligion`, `RSkill`, `REducation`, `RJobRequire`, `RPostingDate`) VALUES
(1, 1, 'Thai', 'เป็นคนชอบทำความสะอาดห้องน้ำเป็นการส่วนตัว', 'ปริญญาตรี', 'ทำความสะอาดห้องน้ำ', '12-12-2023'),
(2, 2, 'Thai', 'คุยกับคนเก่ง เคยเป็นเซลล์ขายรถ', 'ม.6', 'เด็กเสิร์ฟ', '13-12-2023'),
(3, 5, 'Thai', 'เคยถูพื้นดาวอังคารมา 5 รอบ', 'ปริญญาเอก', 'ถูพื้น', '15-12-2023');

-- --------------------------------------------------------

--
-- Table structure for table `sqlite_sequence`
--

CREATE TABLE `sqlite_sequence` (
  `name` varchar(11) DEFAULT NULL,
  `seq` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sqlite_sequence`
--

INSERT INTO `sqlite_sequence` (`name`, `seq`) VALUES
('Job', 3),
('Users', 6),
('Resume', 3),
('Application', 3),
('Assignment', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UID` tinyint(4) DEFAULT NULL,
  `SSN` varchar(50) DEFAULT NULL,
  `UName` varchar(17) DEFAULT NULL,
  `UGender` varchar(1) DEFAULT NULL,
  `UBirthDate` varchar(10) DEFAULT NULL,
  `UDetail` varchar(76) DEFAULT NULL,
  `UAddr` varchar(8) DEFAULT NULL,
  `UEmail` varchar(25) DEFAULT NULL,
  `UPhoneNo.` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UID`, `SSN`, `UName`, `UGender`, `UBirthDate`, `UDetail`, `UAddr`, `UEmail`, `UPhoneNo.`) VALUES
(1, '5790826385', 'สมหมาย สายใจ', 'M', '24-05-1995', 'จบปริญญาตรี ม.พะเยา มีประสบการณ์ในการทำงานนิดหน่อย', 'พะเยา', 'sommai@gmail.com', '0622412010'),
(2, '1380661582', 'วุตินิจ กิจลักษณะ', 'M', '30-12-1997', '', 'เชียงราย', 'Vutinichh1@hotmail.com', '0822236144'),
(3, '1921637464', 'สมศรี ดีสมสุข', 'F', '23-10-2001', 'จบม.3 โรงเรียนสามัคคีวิทยาคม มีประสบการณ์ทำงานที่โชกโชน', 'กรุงเทพ', 'Somsri23@gmail.com', '0933189967'),
(4, '1262704037', 'นวลนุจ ใจผุดผ่อง', 'F', '14-04-1999', 'มีประสบการณ์การทำงานเกี่ยวกับการซ่อมคอมพิวเตอร์ 4 ปี ที่บริษัทงานดี ไม่จำกัด', 'น่าน', 'Jaipoodpong_2@bing.com', '0952520308'),
(5, '1785556812', 'รจณา นาคนวล', 'F', '01-02-2003', 'เป็นคนเฟรนลี่ ขยัน มีความอดทนต่อแรงกดดันสูง', '', '', '0882869294'),
(6, '1339745973', 'ธนูกิจ จงปัญญา', 'M', '04-06-2000', '', 'พะเยา', 'bowactivity2000@gmail.com', '0874211718');

-- --------------------------------------------------------

--
-- Table structure for table `user_chat`
--

CREATE TABLE `user_chat` (
  `UID_Sender` tinyint(4) DEFAULT NULL,
  `UID_Receiver` tinyint(4) DEFAULT NULL,
  `DateTime` varchar(19) DEFAULT NULL,
  `File` varchar(18) DEFAULT NULL,
  `TextFile` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_chat`
--

INSERT INTO `user_chat` (`UID_Sender`, `UID_Receiver`, `DateTime`, `File`, `TextFile`) VALUES
(4, 1, '12-12-2023 18:24 น.', '', ''),
(5, 2, '13-12-2023', '', ''),
(2, 3, '14-12-2023', '', ''),
(1, 4, '15-12-2023', 'รายละเอียดงาน.jpg', ''),
(2, 5, '16-12-2023', '', ''),
(4, 1, '19-12-2023', 'CV.pdf', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
