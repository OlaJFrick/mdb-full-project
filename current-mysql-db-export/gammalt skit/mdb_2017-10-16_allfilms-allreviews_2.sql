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

-- Dumping structure for view mdb.allfilms
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `allfilms` (
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

-- Dumping structure for view mdb.allreviews
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `allreviews` (
	`id` INT(11) UNSIGNED NOT NULL,
	`versionId` INT(11) UNSIGNED NOT NULL,
	`changerId` INT(11) UNSIGNED NOT NULL,
	`filmId` INT(11) UNSIGNED NOT NULL,
	`source` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`author` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`link` VARCHAR(200) NULL COLLATE 'utf8_general_ci',
	`rating` ENUM('1','2','3','4','5','6','7','8','9','10') NOT NULL COLLATE 'utf8_general_ci',
	`comment` TEXT NULL COLLATE 'utf8_general_ci',
	`timeCreated` TIMESTAMP NOT NULL
) ENGINE=MyISAM;

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

-- Dumping structure for tabell mdb.films_actors
CREATE TABLE IF NOT EXISTS `films_actors` (
  `filmId` int(11) unsigned NOT NULL,
  `actorId` int(11) unsigned NOT NULL,
  PRIMARY KEY (`filmId`),
  KEY `actorId` (`actorId`),
  CONSTRAINT `FK_films_actors_films_id` FOREIGN KEY (`filmId`) REFERENCES `films` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_films_actors_persons_id` FOREIGN KEY (`actorId`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumpar data för tabell mdb.films_actors: ~0 rows (approximately)
/*!40000 ALTER TABLE `films_actors` DISABLE KEYS */;
REPLACE INTO `films_actors` (`filmId`, `actorId`) VALUES
	(2, 3);
/*!40000 ALTER TABLE `films_actors` ENABLE KEYS */;

-- Dumping structure for tabell mdb.films_directors
CREATE TABLE IF NOT EXISTS `films_directors` (
  `filmId` int(10) unsigned NOT NULL,
  `directorId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`filmId`,`directorId`),
  KEY `filmId` (`filmId`),
  KEY `FK_filmsDirectos_persons` (`directorId`),
  CONSTRAINT `FK_filmsDirectos_films` FOREIGN KEY (`filmId`) REFERENCES `films` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_filmsDirectos_persons` FOREIGN KEY (`directorId`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Relations between films and directors';

-- Dumpar data för tabell mdb.films_directors: ~0 rows (approximately)
/*!40000 ALTER TABLE `films_directors` DISABLE KEYS */;
REPLACE INTO `films_directors` (`filmId`, `directorId`) VALUES
	(2, 2);
/*!40000 ALTER TABLE `films_directors` ENABLE KEYS */;

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

-- Dumping structure for tabell mdb.persons
CREATE TABLE IF NOT EXISTS `persons` (
  `id` int(11) unsigned NOT NULL,
  `versionId` int(11) unsigned NOT NULL DEFAULT '1',
  `changerId` int(11) unsigned NOT NULL,
  `firstName` varchar(60) DEFAULT NULL,
  `lastName` varchar(60) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `death` date DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `nationality` varchar(60) DEFAULT NULL,
  `miniBio` varchar(1600) DEFAULT NULL,
  `imagePath` varchar(500) DEFAULT NULL,
  `timeCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`versionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumpar data för tabell mdb.persons: ~3 rows (approximately)
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
REPLACE INTO `persons` (`id`, `versionId`, `changerId`, `firstName`, `lastName`, `birth`, `death`, `gender`, `nationality`, `miniBio`, `imagePath`, `timeCreated`) VALUES
	(1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-16 14:34:16'),
	(2, 1, 1, 'Ridley', 'Scott', NULL, NULL, 'male', 'USA', NULL, NULL, '2017-10-16 13:35:16'),
	(3, 1, 1, 'Harrison', 'Ford', NULL, NULL, 'male', 'USA', NULL, NULL, '2017-10-16 13:47:49');
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;

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

-- Dumping structure for tabell mdb.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL,
  `versionId` int(11) unsigned NOT NULL DEFAULT '1',
  `changerId` int(11) DEFAULT NULL,
  `firstName` varchar(60) NOT NULL DEFAULT '',
  `lastName` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(11) DEFAULT NULL,
  `role` enum('user','admin','banned') DEFAULT NULL,
  `timeCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`versionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumpar data för tabell mdb.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `versionId`, `changerId`, `firstName`, `lastName`, `email`, `password`, `phone`, `role`, `timeCreated`) VALUES
	(1, 1, 1, 'Admin', 'Adminsson', 'admin@mdb.com', 'Bokeckty534352', '63454637362', 'admin', '2017-10-16 14:31:48');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for view mdb.allfilms
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `allfilms`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `allfilms` AS select `films`.`id` AS `id`,`films`.`versionId` AS `versionId`,`films`.`changerId` AS `changerId`,`films`.`title` AS `title`,`films`.`year` AS `year`,`films`.`genre` AS `genre`,`films`.`plot` AS `plot`,`films`.`imagePath` AS `imagePath`,`films`.`timeCreated` AS `timeCreated` from `films` order by `films`.`title` desc;

-- Dumping structure for view mdb.allreviews
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `allreviews`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `allreviews` AS select `reviews`.`id` AS `id`,`reviews`.`versionId` AS `versionId`,`reviews`.`changerId` AS `changerId`,`reviews`.`filmId` AS `filmId`,`reviews`.`source` AS `source`,`reviews`.`author` AS `author`,`reviews`.`link` AS `link`,`reviews`.`rating` AS `rating`,`reviews`.`comment` AS `comment`,`reviews`.`timeCreated` AS `timeCreated` from `reviews`;

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
