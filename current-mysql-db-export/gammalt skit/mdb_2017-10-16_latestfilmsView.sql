-- --------------------------------------------------------
-- Värd:                         127.0.0.1
-- Server version:               5.7.19-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for mdb
CREATE DATABASE IF NOT EXISTS `mdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mdb`;

-- Dumping structure for view mdb.latestfilms
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `latestfilms` (
	`id` INT(11) UNSIGNED NOT NULL,
	`versionId` INT(11) UNSIGNED NOT NULL,
	`changerId` INT(11) UNSIGNED NOT NULL,
	`title` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`year` YEAR NULL,
	`genre` SET('Action','Adventure','Animation','Comedy','Crime','Documentary','Drama','Horror','Musical','Romantic','Science Fiction','Thriller','War','Western') NULL COLLATE 'utf8_general_ci',
	`plot` VARCHAR(1000) NULL COLLATE 'utf8_general_ci',
	`imagePath` VARCHAR(500) NULL COLLATE 'utf8_general_ci',
	`timeCreated` TIMESTAMP NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view mdb.latestfilms
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `latestfilms`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `latestfilms` AS select `films`.`id` AS `id`,`films`.`versionId` AS `versionId`,`films`.`changerId` AS `changerId`,`films`.`title` AS `title`,`films`.`year` AS `year`,`films`.`genre` AS `genre`,`films`.`plot` AS `plot`,`films`.`imagePath` AS `imagePath`,`films`.`timeCreated` AS `timeCreated` from `films` order by `films`.`year` desc limit 5;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
