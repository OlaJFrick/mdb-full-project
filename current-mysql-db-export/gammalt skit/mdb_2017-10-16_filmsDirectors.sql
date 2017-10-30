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

-- Dumping structure for tabell mdb.filmsdirectors
CREATE TABLE IF NOT EXISTS `filmsdirectors` (
  `filmId` int(10) unsigned NOT NULL,
  `directorId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`filmId`,`directorId`),
  KEY `filmId` (`filmId`),
  KEY `FK_filmsDirectos_persons` (`directorId`),
  CONSTRAINT `FK_filmsDirectos_films` FOREIGN KEY (`filmId`) REFERENCES `films` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_filmsDirectos_persons` FOREIGN KEY (`directorId`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Relations between films and directors';

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
