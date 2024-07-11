-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2024 at 08:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '28-02-2024 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(3, 'oncology', 4, 3, 500, '2024-03-11', '12:00 PM', '2024-03-12 18:52:31', 1, 1, NULL),
(4, 'ENT', 5, 3, 500, '2024-03-18', '11:15 AM', '2024-03-15 08:13:28', 1, 1, NULL),
(5, 'ENT', 5, 4, 500, '2024-03-15', '11:15 AM', '2024-03-15 08:18:18', 1, 0, '2024-03-15 08:20:06'),
(6, 'ENT', 5, 5, 500, '2024-03-15', '2:30 PM', '2024-03-15 08:24:30', 1, 1, NULL),
(7, 'ENT', 5, 3, 500, '2024-03-18', '4:30 PM', '2024-03-18 22:18:26', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(4, 'oncology', 'Hiram', '!22 Kenyatta ', '500', 71123, 'doc@test.com', '12a718df7ed9b692cb398d9ce17d73fb', '2024-03-11 22:05:47', NULL),
(5, 'ENT', 'Mugambi', '212 Kahawa West', '500', 23412345, 'mgi@gmail.com', 'cd80d9b614d526abf1bdbaeefae72530', '2024-03-15 17:47:57', '2024-03-15 17:56:01');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(30, 4, 'doc@test.com', 0x3132372e302e302e3100000000000000, '2024-03-11 22:06:14', NULL, 1),
(31, NULL, 'Hiram', 0x3132372e302e302e3100000000000000, '2024-03-12 18:47:12', NULL, 0),
(32, NULL, 'Hiram', 0x3132372e302e302e3100000000000000, '2024-03-12 18:47:25', NULL, 0),
(33, NULL, 'Hiram', 0x3132372e302e302e3100000000000000, '2024-03-12 18:47:53', NULL, 0),
(34, 4, 'doc@test.com', 0x3132372e302e302e3100000000000000, '2024-03-12 18:48:12', NULL, 1),
(35, 4, 'doc@test.com', 0x3132372e302e302e3100000000000000, '2024-03-15 17:07:35', '15-03-2024 11:19:24 AM', 1),
(36, 5, 'mgi@gmail.com', 0x3132372e302e302e3100000000000000, '2024-03-15 17:55:46', NULL, 1),
(37, 5, 'mgi@gmail.com', 0x3132372e302e302e3100000000000000, '2024-03-15 08:19:53', NULL, 1),
(38, 5, 'mgi@gmail.com', 0x3132372e302e302e3100000000000000, '2024-03-15 08:25:04', NULL, 1),
(39, NULL, 'mgi@gmail.com', 0x3132372e302e302e3100000000000000, '2024-03-18 22:19:57', NULL, 0),
(40, 5, 'mgi@gmail.com', 0x3132372e302e302e3100000000000000, '2024-03-18 22:20:33', NULL, 1),
(41, 5, 'mgi@gmail.com', 0x3132372e302e302e3100000000000000, '2024-03-18 22:27:30', NULL, 1),
(42, 4, 'doc@test.com', 0x3132372e302e302e3100000000000000, '2024-04-05 18:46:55', '05-04-2024 09:47:44 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Orthopedics', '2024-03-13 18:09:46', NULL),
(2, 'Internal Medicine', '2024-03-13 18:09:57', NULL),
(3, 'Obstetrics and Gynecology', '2024-03-13 18:10:18', NULL),
(4, 'Dermatology', '2024-03-13 18:10:28', NULL),
(5, 'Pediatrics', '2024-03-13 18:10:37', NULL),
(6, 'Radiology', '2024-03-13 18:10:46', NULL),
(7, 'General Surgery', '2024-03-13 18:10:56', NULL),
(8, 'Ophthalmology', '2024-03-13 18:11:03', NULL),
(9, 'Anesthesia', '2024-03-13 18:11:15', NULL),
(10, 'Pathology', '2024-03-13 18:11:22', NULL),
(11, 'ENT', '2024-03-13 18:11:30', NULL),
(12, 'Dental Care', '2024-03-13 18:11:39', NULL),
(13, 'Dermatologists', '2024-03-13 18:12:02', NULL),
(14, 'Endocrinologists', '2024-03-13 18:12:10', NULL),
(15, 'Neurologists', '2024-03-13 18:12:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'Hiram', 'hiram@test.com', 1425362514, 'This is for testing purposes.', '2024-03-12 07:52:03', NULL, NULL, NULL),
(2, 'Mugambi', 'mh@gmail.com', 1111122233, 'This is for testing', '2024-03-12 07:59:41', 'Contact the patient', '2024-03-15 17:39:17', 1),
(3, 'Ian', 'ian@yahoo.com', 9865734, 'Do you do insomnia therapy?', '2024-03-15 08:31:39', 'Yes', '2024-03-15 08:32:29', 1),
(4, 'Bahati', 'baha@test.com', 789567, 'Do you do therapy?', '2024-03-18 22:31:20', 'replied', '2024-03-18 22:32:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(1, 2, '80/120', '120', '85', '98', 'Test', '2024-03-12 07:46:41'),
(2, 3, '80', '90', '78', '37', 'Testing', '2024-03-15 08:27:44'),
(3, 4, '121', '65', '72', '37', 'Tested', '2024-03-18 22:26:01');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp(),
  `OpenningTime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `OpenningTime`) VALUES
(1, 'aboutus', 'About Us', '<ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.313em; margin-left: 1.655em;\" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;=\"\" background-color:=\"\" rgb(255,=\"\" 246,=\"\" 246);\"=\"\"><li style=\"text-align: left;\"><font color=\"#000000\">Carlex clinic was founded in the latter part of 2020 by Dr. Mary Garvey, who had a passion to deliver reliable healthcare services to the major population of Nairobi city. With a variety of services offered, Carlex clinic is your healthcare provider of choice.</font><br></li></ul>', NULL, NULL, '2024-03-12 07:21:52', NULL),
(2, 'contactus', 'Contact Details', 'PR8H+WF8, Duruma Rd, Nairobi', 'info@gmail.com', 1122334455, '2024-03-12 07:24:07', '9 am To 8 Pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(2, 3, 'HIram', 790477084, 'hiram@test.com', 'male', '1220 Nairobi', 23, 'No priors', '2024-03-12 18:55:37', NULL),
(3, 5, 'Brian', 1123432, 'brian@test.com', 'male', '101 Ruaraka', 45, 'No priors', '2024-03-15 08:26:38', NULL),
(4, 5, 'Hiram', 790477084, 'hiram1@test.com', 'male', '1220 Nairobi', 23, 'No priors', '2024-03-18 22:24:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(7, 3, 'hiram@test.com', 0x3132372e302e302e3100000000000000, '2024-03-12 18:51:27', NULL, 1),
(8, 3, 'hiram@test.com', 0x3132372e302e302e3100000000000000, '2024-03-15 17:06:32', NULL, 1),
(9, 3, 'hiram@test.com', 0x3132372e302e302e3100000000000000, '2024-03-15 08:11:29', '15-03-2024 11:15:41 AM', 1),
(10, 4, 'muga@gmail.com', 0x3132372e302e302e3100000000000000, '2024-03-15 08:17:48', NULL, 1),
(11, 4, 'muga@gmail.com', 0x3132372e302e302e3100000000000000, '2024-03-15 08:20:53', NULL, 1),
(12, 5, 'brian@test.com', 0x3132372e302e302e3100000000000000, '2024-03-15 08:23:34', '19-03-2024 01:26:24 AM', 1),
(13, 3, 'hiram@test.com', 0x3132372e302e302e3100000000000000, '2024-03-18 22:17:11', NULL, 1),
(14, 5, 'brian@test.com', 0x3132372e302e302e3100000000000000, '2024-04-05 18:48:20', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(3, 'Hiram', '1220 Kasarani ', 'Nairobi', 'male', 'hiram@test.com', 'c29d1f9b5ac66eae6ac8c6a459d3e64b', '2024-03-12 18:50:51', '2024-03-18 22:16:38'),
(4, 'Muga', '354 Parklands', 'Nairobi', 'male', 'muga@gmail.com', 'ad6be761c18868f6b3e111881ac3020b', '2024-03-15 08:17:05', NULL),
(5, 'Brian', '101 Ruaraka', 'Nairobi', 'male', 'brian@test.com', '1d70166035e035a89be194de0f78843c', '2024-03-15 08:23:15', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
