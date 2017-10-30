# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Värd: 127.0.0.1 (MySQL 5.7.19)
# Databas: mdb
# Genereringstid: 2017-10-16 12:36:18 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Tabelldump films
# ------------------------------------------------------------

DROP TABLE IF EXISTS `films`;

CREATE TABLE `films` (
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

LOCK TABLES `films` WRITE;
/*!40000 ALTER TABLE `films` DISABLE KEYS */;

INSERT INTO `films` (`id`, `versionId`, `changerId`, `title`, `year`, `genre`, `plot`, `imagePath`, `timeCreated`)
VALUES
	(1,1,1,'Test',NULL,NULL,NULL,NULL,'2017-10-16 14:10:18'),
	(2,1,1,'Blade Runner','1980','Science Fiction',NULL,NULL,'2017-10-16 14:10:15');

/*!40000 ALTER TABLE `films` ENABLE KEYS */;
UNLOCK TABLES;


# Tabelldump films_actors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `films_actors`;

CREATE TABLE `films_actors` (
  `filmId` int(11) unsigned NOT NULL,
  `actorId` int(11) unsigned NOT NULL,
  PRIMARY KEY (`filmId`),
  KEY `actorId` (`actorId`),
  CONSTRAINT `FK_films_actors_films_id` FOREIGN KEY (`filmId`) REFERENCES `films` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_films_actors_persons_id` FOREIGN KEY (`actorId`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `films_actors` WRITE;
/*!40000 ALTER TABLE `films_actors` DISABLE KEYS */;

INSERT INTO `films_actors` (`filmId`, `actorId`)
VALUES
	(2,3);

/*!40000 ALTER TABLE `films_actors` ENABLE KEYS */;
UNLOCK TABLES;


# Tabelldump films_directors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `films_directors`;

CREATE TABLE `films_directors` (
  `filmId` int(10) unsigned NOT NULL,
  `directorId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`filmId`,`directorId`),
  KEY `filmId` (`filmId`),
  KEY `FK_filmsDirectos_persons` (`directorId`),
  CONSTRAINT `FK_filmsDirectos_films` FOREIGN KEY (`filmId`) REFERENCES `films` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_filmsDirectos_persons` FOREIGN KEY (`directorId`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Relations between films and directors';

LOCK TABLES `films_directors` WRITE;
/*!40000 ALTER TABLE `films_directors` DISABLE KEYS */;

INSERT INTO `films_directors` (`filmId`, `directorId`)
VALUES
	(2,2);

/*!40000 ALTER TABLE `films_directors` ENABLE KEYS */;
UNLOCK TABLES;


# Tabelldump persons
# ------------------------------------------------------------

DROP TABLE IF EXISTS `persons`;

CREATE TABLE `persons` (
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

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;

INSERT INTO `persons` (`id`, `versionId`, `changerId`, `firstName`, `lastName`, `birth`, `death`, `gender`, `nationality`, `miniBio`, `imagePath`, `timeCreated`)
VALUES
	(1,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-10-16 14:34:16'),
	(2,1,1,'Ridley','Scott',NULL,NULL,'male','USA',NULL,NULL,'2017-10-16 13:35:16'),
	(3,1,1,'Harrison','Ford',NULL,NULL,'male','USA',NULL,NULL,'2017-10-16 13:47:49');

/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
UNLOCK TABLES;


# Tabelldump reviews
# ------------------------------------------------------------

DROP TABLE IF EXISTS `reviews`;

CREATE TABLE `reviews` (
  `id` int(11) unsigned NOT NULL,
  `versionId` int(11) unsigned NOT NULL DEFAULT '1',
  `changerId` int(11) unsigned NOT NULL,
  `movieId` int(11) unsigned NOT NULL,
  `source` varchar(50) DEFAULT NULL,
  `author` varchar(100) NOT NULL,
  `link` varchar(200) DEFAULT NULL,
  `rating` enum('1','2','3','4','5','6','7','8','9','10') NOT NULL,
  `comment` text,
  `timeCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;

INSERT INTO `reviews` (`id`, `versionId`, `changerId`, `movieId`, `source`, `author`, `link`, `rating`, `comment`, `timeCreated`)
VALUES
	(2,1,1,1,NULL,'',NULL,'4','Bladerunner is the greatest...','2017-10-16 14:11:06');

/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;


# Tabelldump users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
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

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `versionId`, `changerId`, `firstName`, `lastName`, `email`, `password`, `phone`, `role`, `timeCreated`)
VALUES
	(1,1,1,'Admin','Adminsson','admin@mdb.com','Bokeckty534352','63454637362','admin','2017-10-16 14:31:48');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
