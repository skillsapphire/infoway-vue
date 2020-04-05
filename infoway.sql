-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2020 at 05:51 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `infoway`
--

-- --------------------------------------------------------

--
-- Table structure for table `listing`
--

CREATE TABLE `listing` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `category` varchar(100) NOT NULL,
  `profession` varchar(30) DEFAULT NULL,
  `specialisation` varchar(100) DEFAULT NULL,
  `phone1` varchar(15) NOT NULL,
  `phone2` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(350) DEFAULT NULL,
  `city` varchar(50) NOT NULL DEFAULT 'Sambalpur',
  `state` varchar(50) NOT NULL DEFAULT 'Odisha',
  `pincode` varchar(15) NOT NULL DEFAULT '768001',
  `title` varchar(200) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `image1` varchar(100) DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `listing`
--

INSERT INTO `listing` (`id`, `first_name`, `middle_name`, `last_name`, `category`, `profession`, `specialisation`, `phone1`, `phone2`, `email`, `address`, `city`, `state`, `pincode`, `title`, `description`, `image1`, `image2`) VALUES
(1, 'Soubhagya', 'Ranjan', 'Tripathy', 'Dermatologist', 'Doctor', 'MD, Skin & VD', '9438060583', NULL, NULL, 'Jagannath Phamaceuticals, Govt. H.Q. Hospital Road, Sambalpur', 'Sambalpur', 'Odisha', '768001', NULL, NULL, NULL, NULL),
(2, 'Soumendu', '', 'Debata', 'Homeopathy', 'Doctor', 'B.H.M.S (S.U)', '9438122275', '7008345501', NULL, 'Shiva Shakti Homeopathy, Govt. H.Q. Hospital Road, Sambalpur', 'Sambalpur', 'Odisha', '768001', 'Senior homeopathic consultant for chronic diseases', 'Senior homeopathic consultant for chronic diseases', NULL, NULL),
(3, 'Sidhartha', '', 'Pradhan', 'Neurology', 'Doctor', 'Neurologist', '8763343883', '9178795587', NULL, 'Balaji Diagnostic, Opposite to district hospital', 'Sambalpur', 'Odisha', '768001', NULL, NULL, NULL, NULL),
(4, 'Varun', '', 'Tamarkar', 'Urology', 'Doctor', 'Urologist', '8763343883', '9178795587', NULL, 'Balaji Diagnostic, Opposite to district hospital', 'Sambalpur', 'Odisha', '768001', NULL, NULL, NULL, NULL),
(5, 'Byasa', 'Dev', 'Hota', 'Gynecology', 'Doctor', 'Gynecologist', '8763343883', '9178795587', NULL, 'Balaji Diagnostic, Opposite to district hospital', 'Sambalpur', 'Odisha', '768001', NULL, NULL, NULL, NULL),
(6, 'Bhabani', 'Shankar', 'Behera', 'Medicine', 'Doctor', 'Medicine', '8763343883', '9178795587', NULL, 'Balaji Diagnostic, Opposite to district hospital', 'Sambalpur', 'Odisha', '768001', NULL, NULL, NULL, NULL),
(7, 'R.C', '', 'Naik', 'Dermatology', 'Doctor', 'Dermatologist', '8763343883', '9178795587', NULL, 'Balaji Diagnostic, Opposite to district hospital', 'Sambalpur', 'Odisha', '768001', NULL, NULL, NULL, NULL),
(8, 'R.C', '', 'Naik', 'Sex', 'Doctor', 'Sex', '8763343883', '9178795587', NULL, 'Balaji Diagnostic, Opposite to district hospital', 'Sambalpur', 'Odisha', '768001', NULL, NULL, NULL, NULL),
(9, 'Padmalaya', '', 'Mishra', 'Gynecology', 'Doctor', 'Gynecologist', '8763343883', '9178795587', NULL, 'Balaji Diagnostic, Opposite to district hospital', 'Sambalpur', 'Odisha', '768001', NULL, NULL, NULL, NULL),
(10, 'Amrut', 'Kumar', 'Mohanty', 'Orthopaedics', 'Doctor', 'M.S(Orthopaedics)', '9658654319', '', NULL, 'Samlai Medical Store, Opposite to district hospital', 'Sambalpur', 'Odisha', '768001', 'Senior Orthopaedics Surgeon', 'Senior Orthopaedics Surgeon (Burla)', NULL, NULL),
(11, 'Susmita', '', 'Mishra', 'Gynaecology', 'Doctor', 'M.D (Obstetrics and Gynaecology)', '9658654319', '', NULL, 'Samlai Medical Store, Opposite to district hospital', 'Sambalpur', 'Odisha', '768001', '', '', NULL, NULL),
(12, 'B.B', '', 'Bohidar', 'Paediatric', 'Doctor', 'M.D(Paediatric)', '9658654319', '', NULL, 'Samlai Medical Store, Opposite to district hospital', 'Sambalpur', 'Odisha', '768001', '', '', NULL, NULL),
(13, 'Chaubark', '', 'Naik', 'Dentist', 'Doctor', 'M.D.S(Dentist)', '9658654319', '', NULL, 'Samlai Medical Store, Opposite to district hospital', 'Sambalpur', 'Odisha', '768001', '', '', NULL, NULL),
(14, 'Alok', '', 'Sharma', 'Physiotherapy', 'Doctor', 'P.T(B.P.T) - Physiotherapy', '9437056495', '9776056495', 'aloksharmasbp@gmail.com', 'Care & Cure Physiotherapy Clinic, A.N Guha Lane, G.M College road', 'Sambalpur', 'Odisha', '768001', 'Specialisation from Dr. M.G.R University Madras', 'Specialisation from Dr. M.G.R University Madras', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `listing`
--
ALTER TABLE `listing`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `listing`
--
ALTER TABLE `listing`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
