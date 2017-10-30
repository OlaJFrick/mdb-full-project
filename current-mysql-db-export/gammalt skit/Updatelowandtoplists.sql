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

-- Dumping structure for tabell mdb.films
CREATE TABLE IF NOT EXISTS `films` (
  `id` int(11) unsigned NOT NULL,
  `versionId` int(11) unsigned NOT NULL DEFAULT '1',
  `changerId` int(11) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `year` year(4) DEFAULT NULL,
  `genre` set('Action','Adventure','Animation','Comedy','Crime','Documentary','Drama','Horror','Musical','Romantic','Science Fiction','Thriller','War','Western') DEFAULT NULL,
  `plot` varchar(1000) DEFAULT NULL,
  `imagePath` varchar(500) DEFAULT NULL,
  `timeCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`versionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumpar data för tabell mdb.films: ~5 rows (approximately)
/*!40000 ALTER TABLE `films` DISABLE KEYS */;
REPLACE INTO `films` (`id`, `versionId`, `changerId`, `title`, `year`, `genre`, `plot`, `imagePath`, `timeCreated`) VALUES
	(1, 1, 1, 'Test', NULL, NULL, NULL, NULL, '2017-10-16 14:10:18'),
	(2, 1, 1, 'Blade Runner', '1980', 'Science Fiction', NULL, NULL, '2017-10-16 14:10:15'),
	(3, 1, 1, 'Blade Runner 2', '1980', 'Science Fiction', NULL, NULL, '2017-10-16 14:10:15'),
	(4, 1, 1, 'Scream', '1980', 'Science Fiction', NULL, NULL, '2017-10-16 14:10:15'),
	(5, 1, 1, 'Scream 2', '1980', 'Science Fiction', NULL, NULL, '2017-10-16 14:10:15');
/*!40000 ALTER TABLE `films` ENABLE KEYS */;

-- Dumping structure for view mdb.lowfive
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `lowfive` (
	`id` INT(11) UNSIGNED NOT NULL,
	`title` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`topScore` DOUBLE(19,2) NULL,
	`numberOfReviews` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view mdb.lowten
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `lowten` (
	`id` INT(11) UNSIGNED NOT NULL,
	`title` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`topScore` DOUBLE(19,2) NULL,
	`numberOfReviews` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for tabell mdb.reviews
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(11) unsigned NOT NULL,
  `versionId` int(11) unsigned NOT NULL DEFAULT '1',
  `changerId` int(11) unsigned NOT NULL,
  `filmId` int(11) unsigned NOT NULL,
  `source` varchar(50) DEFAULT NULL,
  `author` varchar(100) NOT NULL,
  `link` varchar(200) DEFAULT NULL,
  `rating` enum('1','2','3','4','5','6','7','8','9','10') NOT NULL,
  `comment` text,
  `timeCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`versionId`),
  KEY `filmId` (`filmId`),
  CONSTRAINT `FK_reviews_films` FOREIGN KEY (`filmId`) REFERENCES `films` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumpar data för tabell mdb.reviews: ~4 rows (approximately)
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
REPLACE INTO `reviews` (`id`, `versionId`, `changerId`, `filmId`, `source`, `author`, `link`, `rating`, `comment`, `timeCreated`) VALUES
	(2, 1, 1, 5, NULL, 'Åsa Åsiktsdottir', NULL, '4', 'Bladerunner is the greatest...', '2017-10-16 14:49:59'),
	(3, 1, 1, 3, NULL, 'Björn Kritiksson', NULL, '2', 'Bladerunner is the greatest...', '2017-10-16 14:47:46'),
	(4, 1, 1, 4, NULL, 'Björn Kritiksson', NULL, '3', 'Bladerunner is the greatest...', '2017-10-16 14:47:21'),
	(5, 1, 1, 2, NULL, 'Arne Åsiktsmaskin', NULL, '10', 'Bladerunner is the greatest...', '2017-10-16 14:50:35');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;

-- Dumping structure for view mdb.topfive
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `topfive` (
	`id` INT(11) UNSIGNED NOT NULL,
	`title` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`topScore` DOUBLE(19,2) NULL,
	`numberOfReviews` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view mdb.topten
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `topten` (
	`id` INT(11) UNSIGNED NOT NULL,
	`title` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`topScore` DOUBLE(19,2) NULL,
	`numberOfReviews` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view mdb.lowfive
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `lowfive`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lowfive` AS select `f`.`id` AS `id`,`f`.`title` AS `title`,round(min(`r`.`rating`),2) AS `topScore`,count(`r`.`id`) AS `numberOfReviews` from (`films` `f` join `reviews` `r` on((`f`.`id` = `r`.`filmId`))) group by `f`.`id` order by `topScore` desc limit 5;

-- Dumping structure for view mdb.lowten
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `lowten`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lowten` AS select `f`.`id` AS `id`,`f`.`title` AS `title`,round(min(`r`.`rating`),2) AS `topScore`,count(`r`.`id`) AS `numberOfReviews` from (`films` `f` join `reviews` `r` on((`f`.`id` = `r`.`filmId`))) group by `f`.`id` order by `topScore` desc limit 10;

-- Dumping structure for view mdb.topfive
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `topfive`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `topfive` AS select `f`.`id` AS `id`,`f`.`title` AS `title`,round(max(`r`.`rating`),2) AS `topScore`,count(`r`.`id`) AS `numberOfReviews` from (`films` `f` join `reviews` `r` on((`f`.`id` = `r`.`filmId`))) group by `f`.`id` order by `topScore` desc limit 5;

-- Dumping structure for view mdb.topten
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `topten`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `topten` AS select `f`.`id` AS `id`,`f`.`title` AS `title`,round(max(`r`.`rating`),2) AS `topScore`,count(`r`.`id`) AS `numberOfReviews` from (`films` `f` join `reviews` `r` on((`f`.`id` = `r`.`filmId`))) group by `f`.`id` order by `topScore` desc limit 10;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
