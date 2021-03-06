-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 01, 2020 at 08:08 PM
-- Server version: 10.3.18-MariaDB-0+deb10u1
-- PHP Version: 7.3.11-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `friendtime`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`kevin`@`localhost` PROCEDURE `GetDistinctTimeZonesByDiscordIds` (IN `IN_DiscordIds` MEDIUMTEXT)  SELECT DISTINCT `TimeZone`
FROM Member
WHERE FIND_IN_SET(`DiscordId`, IN_DiscordIds) > 0$$

CREATE DEFINER=`kevin`@`localhost` PROCEDURE `GetMemberTimeZone` (IN `IN_DiscordId` VARCHAR(20))  SELECT `TimeZone`
FROM Member
WHERE `DiscordId` = IN_DiscordId$$

CREATE DEFINER=`kevin`@`localhost` PROCEDURE `UpsertMember` (IN `IN_DiscordId` VARCHAR(20), IN `IN_TimeZone` VARCHAR(100))  BEGIN

INSERT INTO Member (`DiscordId`, `TimeZone`)
VALUES (IN_DiscordId, IN_TimeZone)
ON DUPLICATE KEY UPDATE `TimeZone` = IN_TimeZone, `ModifiedTime` = current_timestamp();

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `Member`
--

CREATE TABLE `Member` (
  `MemberId` int(11) NOT NULL,
  `DiscordId` varchar(20) NOT NULL,
  `TimeZone` varchar(100) DEFAULT NULL,
  `CreatedTime` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifiedTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Member`
--
ALTER TABLE `Member`
  ADD PRIMARY KEY (`MemberId`),
  ADD UNIQUE KEY `DiscordId` (`DiscordId`),
  ADD UNIQUE KEY `MemberId` (`MemberId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Member`
--
ALTER TABLE `Member`
  MODIFY `MemberId` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
