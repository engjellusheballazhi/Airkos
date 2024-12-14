-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 12, 2023 at 10:54 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kosair`
--

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `AirCode` int(11) NOT NULL,
  `Name` text NOT NULL,
  `City` text NOT NULL,
  `State` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`AirCode`, `Name`, `City`, `State`) VALUES
(112, 'Istanbul Airport', 'Istanbul', 'Turkey'),
(115, 'Munich Airport', 'Munich', 'Germany'),
(120, 'Milano Airport', 'Milano', 'Italy'),
(124, 'London Airport', 'London', 'Great Britain');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `FlightNo` int(11) NOT NULL,
  `Type` text NOT NULL,
  `Origin` text NOT NULL,
  `Destination` text NOT NULL,
  `DepartureTime` time NOT NULL,
  `ArrivalTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`FlightNo`, `Type`, `Origin`, `Destination`, `DepartureTime`, `ArrivalTime`) VALUES
(201, 'Boeing', 'Istanbul', 'Munich', '09:00:00', '11:00:00'),
(202, 'Boeing', 'Istanbul', 'Munich', '16:00:00', '18:00:00'),
(203, 'Boeing', 'Istanbul', 'Milano', '10:00:00', '12:00:00'),
(204, 'Boeing', 'Istanbul', 'Milano', '17:00:00', '19:00:00'),
(205, 'Boeing', 'Istanbul', 'London', '11:00:00', '14:00:00'),
(206, 'Boeing', 'Istanbul', 'London', '18:00:00', '22:00:00'),
(207, 'Boeing', 'Munich', 'Istanbul', '09:00:00', '11:00:00'),
(208, 'Boeing', 'Munich', 'Istanbul', '17:00:00', '19:00:00'),
(209, 'Boeing', 'Munich', 'London', '10:00:00', '12:00:00'),
(210, 'Boeing', 'Munich', 'Milano', '18:00:00', '21:00:00'),
(211, 'Boeing', 'Munich', 'Milano', '13:00:00', '15:00:00'),
(212, 'Boeing', 'Milano', 'Istanbul', '08:00:00', '11:00:00'),
(213, 'Boeing', 'Milano', 'Munich', '13:00:00', '15:00:00'),
(214, 'Boeing', 'Milano', 'London', '21:00:00', '23:00:00'),
(215, 'Boeing', 'London', 'Istanbul', '08:00:00', '10:00:00'),
(216, 'Boeing', 'London', 'Munich', '15:00:00', '17:00:00'),
(217, 'Boeing', 'London', 'Milano', '07:00:00', '09:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `PassengerID` text DEFAULT NULL,
  `Name` text DEFAULT NULL,
  `Gender` text DEFAULT NULL,
  `DOB` date NOT NULL,
  `MobileNo` int(11) NOT NULL,
  `emailID` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`PassengerID`, `Name`, `Gender`, `DOB`, `MobileNo`, `emailID`) VALUES
('50', 'en asd', 'male', '2002-01-01', 12345, 'test@gmail.com'),
('39', 'name name', 'male', '2004-01-01', 12312312, 'hello123123@gmail.com'),
('21', 'name name', 'male', '2004-01-01', 12312312, 'hello123123@gmail.com'),
('44', 'name name', 'male', '2004-01-01', 12312312, 'hello123123@gmail.com'),
('36', 'hello', 'female', '2005-01-01', 123123, 'gmail@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `terminal`
--

CREATE TABLE `terminal` (
  `TerminalId` int(11) NOT NULL,
  `TerminalName` text NOT NULL,
  `AirCode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `terminal`
--

INSERT INTO `terminal` (`TerminalId`, `TerminalName`, `AirCode`) VALUES
(1, 'T1', 112),
(2, 'T2', 112),
(3, 'T1', 115),
(4, 'T2', 115),
(5, 'T3', 115),
(6, 'T1', 120),
(7, 'T1', 124);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `TickNo` int(11) NOT NULL,
  `PassengerID` int(11) NOT NULL,
  `FlightID` int(11) NOT NULL,
  `Type` text NOT NULL,
  `Terminal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`TickNo`, `PassengerID`, `FlightID`, `Type`, `Terminal`) VALUES
(3945, 50, 217, 'Business', 1),
(3997, 39, 214, 'Business', 1),
(3809, 21, 214, 'Business', 1),
(3501, 44, 214, 'Business', 1),
(3898, 36, 211, 'Business', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `email`, `password`) VALUES
('test', 'test@gmail.com', '12345678');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
