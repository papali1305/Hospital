-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2025 at 06:24 PM
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
(1, 'admin', '123456', '04-03-2025 11:42:05 AM');

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
(1, 'ENT', 1, 1, 500, '2025-03-13', '9:15 AM', '2025-03-13 03:42:11', 1, 1, NULL),
(2, 'Endocrinologists', 2, 2, 800, '2025-03-13', '2:45 PM', '2025-03-13 09:08:54', 1, 1, NULL),
(3, 'Endocrinologists', 2, 3, 800, '2025-03-17', '5:00 PM', '2025-03-15 11:27:53', 1, 1, NULL),
(4, 'Obstetrics and Gynecology', 7, 4, 400, '2025-03-23', '10:00 AM', '2025-03-19 16:22:36', 1, 1, NULL);

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
(1, 'ENT', 'Dr.Anuradha  Ray', 'Manisahu Chhak\r\nBuxibazar\r\nCuttack', '500', 9853274178, 'anu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2025-03-10 18:16:52', '2025-03-19 17:02:00'),
(2, 'Endocrinologists', 'Dr. Anvi Anwesha Ray', 'Mangalabag,  Cuttack', '800', 9853274178, 'anvi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2025-03-11 01:06:41', '2025-03-15 12:02:02'),
(3, 'Pediatrics', 'Dr. Soudamini Ray', 'Ray Aparmtnent, Kendupalli, Cuttack-753001', '400', 9853274177, 'soudamini@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2025-03-15 09:12:23', '2025-03-15 12:17:36'),
(4, 'Orthopedics', 'Dr. Manoj Kumar Ray', 'Care Hospital Kendupalli Cuttack', '250', 9853274176, 'manoj@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2025-03-15 09:13:11', NULL),
(6, 'Medicine', 'Dr. Bimal Kumar Ray', 'Ballav Care  Hospital \r\nMission Road\r\nCuttack', '300', 7008441603, 'bimal@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2025-03-15 09:14:11', NULL),
(7, 'Obstetrics and Gynecology', 'Dr. Rashmita Ray', 'Mangalabag Cuttack', '700', 9853274176, 'rashmi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2025-03-15 09:15:18', '2025-03-19 16:42:44'),
(8, 'General Surgery', 'Dr. Nirmal Ray', 'cda, sec-12, cuttack', '350', 9853274175, 'nirmal@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2025-03-15 12:17:01', NULL);

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
(4, 1, 'anu@gmail.com', 0x3a3a3100000000000000000000000000, '2025-03-15 11:57:24', '15-03-2025 05:30:43 PM', 1),
(5, NULL, 'manoj@gmail.com', 0x3a3a3100000000000000000000000000, '2025-03-15 12:01:10', NULL, 0),
(6, 3, 'soudamini@gmail.com', 0x3a3a3100000000000000000000000000, '2025-03-15 12:03:59', '15-03-2025 05:39:12 PM', 1),
(7, 7, 'rashmi@gmail.com', 0x3a3a3100000000000000000000000000, '2025-03-19 16:26:30', '19-03-2025 10:13:35 PM', 1);

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
(1, 'Orthopedics', '2025-03-09 18:09:46', '2025-03-09 09:26:47'),
(2, 'Medicine', '2025-03-09 18:10:49', '2025-03-09 09:27:59'),
(3, 'Obstetrics and Gynecology', '2025-03-09 18:10:09', '0000-00-00 00:00:00'),
(4, 'Dermatology', '2025-03-09 18:10:11', '0000-00-00 00:00:00'),
(5, 'Pediatrics', '2025-03-09 18:10:13', '0000-00-00 00:00:00'),
(6, 'Radiology', '2025-03-09 18:10:16', '0000-00-00 00:00:00'),
(7, 'General Surgery', '2025-03-09 18:10:19', '0000-00-00 00:00:00'),
(8, 'Ophthalmology', '2025-03-09 18:10:23', '0000-00-00 00:00:00'),
(9, 'Anesthesia', '2025-03-09 18:10:29', '0000-00-00 00:00:00'),
(10, 'Pathology', '2025-03-09 18:10:35', '0000-00-00 00:00:00'),
(11, 'ENT', '2025-03-09 18:10:40', '0000-00-00 00:00:00'),
(12, 'Dental Care', '2025-03-09 18:10:55', '0000-00-00 00:00:00'),
(13, 'Dermatologists', '2025-03-19 18:11:35', '0000-00-00 00:00:00'),
(14, 'Endocrinologists', '2025-03-19 18:11:43', '0000-00-00 00:00:00'),
(15, 'Neurologists', '2025-03-19 18:12:59', '0000-00-00 00:00:00');

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
(3, 'BIMALKUMAR RAY', 'bimal@hotmail.com', 9853274179, 'sample testing', '2025-03-15 11:55:30', 'Thank you for your valuable comment ', '2025-03-19 17:20:27', 1);

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
(1, 2, '80/120', '110', '85', '97', 'Dolo,\r\nLevocit 5mg', '2025-03-15 09:07:16'),
(2, 3, '120/80', '230', '65', '95', 'nacold\r\nmentformine 50mg\r\nvilagripitine', '2025-03-15 11:34:25'),
(3, 2, '143/87', '122', '76', '94', 'Rx\r\n\r\nTab-1\r\nTab-2\r\nTab-3\r\n', '2025-03-15 12:00:15'),
(4, 4, '120/79', '96/110', '45', '94', 'Rx.\r\n1. Paracetamol\r\n2. Nimesulide\r\n3. Diclofenac\r\n4. Disprin', '2025-03-19 16:38:46');

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
(1, 'aboutus', 'About Us', '<ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.313em; margin-left: 1.655em;\" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;=\"\" background-color:=\"\" rgb(255,=\"\" 246,=\"\" 246);\"=\"\"><li style=\"text-align: left;\"><b><font color=\"#000000\"></font></b><p align=\"justify\"><font color=\"#000000\"><b>\r\n\r\nWelcome to Smart Clinic Automation System is a sophisticated technological solution designed to streamline healthcare operations, enhance patient experiences, and optimize clinical workflows. Leveraging advanced technologies like Artificial Intelligence (AI), the Internet of Things (IoT), cloud computing, and data analytics, this system offers seamless automation of various administrative and medical processes.</b></font></p></li><li style=\"text-align: left;\"><p align=\"justify\"><font color=\"#000000\">The future of healthcare management. We are a cutting-edge technology-driven solution designed to revolutionize how clinics, hospitals, and healthcare facilities operate. Our goal is to bring automation, efficiency, and digital transformation to medical practices, ensuring better patient care and smoother workflows.\r\n\r\nAt Smart Clinic Automation, we believe that technology can bridge the gap between healthcare providers and patients, creating a seamless, efficient, and patient-friendly experience. Our system integrates Artificial Intelligence (AI), Machine Learning (ML), the Internet of Things (IoT), Cloud Computing, and Big Data Analytics to streamline clinic operations, enhance diagnostics, and improve decision-making.\r\n\r\nOur Vision\r\n\r\nOur vision is to transform traditional healthcare systems into smart, digital, and automated environments where doctors, nurses, and administrative staff can focus more on patient care rather than being burdened by manual processes.\r\n\r\nOur Mission\r\n\r\n- Improve clinic efficiency by automating repetitive tasks.\r\n\r\n- Enhance patient experience through seamless digital interactions.\r\n\r\n- Ensure secure and accessible patient records via cloud-based solutions.\r\n\r\n- Support medical professionals with AI-driven insights and predictive analytics.\r\n\r\n- Reduce administrative burden while maintaining compliance with healthcare regulations.\r\n\r\n\r\n\r\n\r\n&nbsp;</font></p></li></ul>', NULL, NULL, '2025-03-10 07:21:52', NULL),
(2, 'contactus', 'Contact Details', 'Mission Road Buxibazar Cuttack-753001', 'care@gmail.com', 9853274179, '2025-03-17 07:24:07', '8-Am to 12-Pm and 3pm to 5pm');

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
(1, 1, 'Rahul ', 9876543218, 'rahul@gmail.com', 'male', 'NA', 32, 'Fever, Cold', '2025-03-14 05:23:35', NULL),
(2, 1, 'Amit', 9999999999, 'amitk@gmail.com', 'male', 'NA', 45, 'Fever', '2025-03-14 09:01:26', NULL),
(3, 2, 'bimal ray', 23456789, 'bimal@gmail.com', 'Male', 'Chintamani Building\r\nDhobi Lane,Near Salapua Mandir', 34, 'old medicine continue...', '2025-03-15 11:30:54', '2025-03-19 17:15:34'),
(4, 7, 'Arpita  ', 7978403417, 'arpita@gmail.com', 'female', 'Mission Road, Cuttack', 20, 'Normal fever', '2025-03-19 16:33:13', NULL);

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
(3, 3, 'bimal@gmail.com', 0x3a3a3100000000000000000000000000, '2025-03-15 11:25:44', '15-03-2025 04:58:15 PM', 1),
(4, NULL, 'bimal@gmail.com', 0x3a3a3100000000000000000000000000, '2025-03-15 12:09:30', NULL, 0),
(5, 3, 'bimal@gmail.com', 0x3a3a3100000000000000000000000000, '2025-03-15 12:09:40', '15-03-2025 05:41:02 PM', 1),
(6, 4, 'mamono@gmail.com', 0x3a3a3100000000000000000000000000, '2025-03-19 16:17:32', '19-03-2025 09:54:07 PM', 1);

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
(3, 'Bimal Kumar Ray', 'Chintamani Building', 'cuttack', 'male', 'bimal@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2025-03-15 11:25:16', NULL),
(4, 'Mamono', 'Buxibaza', 'Cuttack', 'female', 'mamono@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2025-03-19 16:15:44', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
