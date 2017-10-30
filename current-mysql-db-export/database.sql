-- --------------------------------------------------------
-- Värd:                         127.0.0.1
-- Server version:               5.7.18-log - MySQL Community Server (GPL)
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
DROP TABLE IF EXISTS `films`;
CREATE TABLE IF NOT EXISTS `films` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `versionId` int(11) unsigned NOT NULL DEFAULT '1',
  `changerId` int(11) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `year` year(4) DEFAULT NULL,
  `genre` set('Action','Adventure','Animation','Comedy','Crime','Documentary','Drama','Horror','Musical','Romantic','Science Fiction','Thriller','War','Western') DEFAULT NULL,
  `plot` varchar(3000) DEFAULT NULL,
  `imagePath` varchar(500) DEFAULT NULL,
  `youtubeUrl` varchar(200) DEFAULT NULL,
  `timeCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`versionId`),
  KEY `FK_films_users` (`changerId`),
  CONSTRAINT `FK_films_users` FOREIGN KEY (`changerId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for tabell mdb.films_actors
DROP TABLE IF EXISTS `films_actors`;
CREATE TABLE IF NOT EXISTS `films_actors` (
  `filmId` int(11) unsigned NOT NULL,
  `actorId` int(11) unsigned NOT NULL,
  `changerId` int(11) unsigned NOT NULL,
  `character` varchar(60) DEFAULT NULL,
  `isMainCharacter` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `timeCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`actorId`,`filmId`,`changerId`),
  KEY `actorId` (`actorId`),
  KEY `FK_films_actors_films` (`filmId`),
  KEY `changerId` (`changerId`),
  CONSTRAINT `FK_films_actors_films` FOREIGN KEY (`filmId`) REFERENCES `films` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_films_actors_persons` FOREIGN KEY (`actorId`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_films_actors_users` FOREIGN KEY (`changerId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- Data exporting was unselected.
-- Dumping structure for tabell mdb.films_directors
DROP TABLE IF EXISTS `films_directors`;
CREATE TABLE IF NOT EXISTS `films_directors` (
  `filmId` int(11) unsigned NOT NULL,
  `directorId` int(11) unsigned NOT NULL,
  `changerId` int(11) unsigned NOT NULL,
  `timeCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`filmId`,`directorId`,`changerId`),
  KEY `FK_filmsDirectos_persons` (`directorId`),
  KEY `filmId` (`filmId`),
  KEY `changerId` (`changerId`),
  CONSTRAINT `FK_filmsDirectos_films` FOREIGN KEY (`filmId`) REFERENCES `films` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_filmsDirectos_persons` FOREIGN KEY (`directorId`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_films_directors_users` FOREIGN KEY (`changerId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Relations between films and directors';

-- Data exporting was unselected.
-- Dumping structure for tabell mdb.persons
DROP TABLE IF EXISTS `persons`;
CREATE TABLE IF NOT EXISTS `persons` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `versionId` int(11) unsigned NOT NULL DEFAULT '1',
  `changerId` int(11) unsigned NOT NULL,
  `firstName` varchar(60) DEFAULT NULL,
  `lastName` varchar(60) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `death` date DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `nationality` enum('Afghanistan','Albania','Algeria','Argentina','Armenia','Australia','Austria','Azerbaijan','Bahamas','Bahrain','Bangladesh','Barbados','Belarus','Belgium','Belize','Benin','Bermuda','Bhutan','Bolivia','Bosnia and Herzegovina','Botswana','Bouvet Island','Brazil','British Indian Ocean Territory','Brunei Darussalam','Bulgaria','Burkina Faso','Burundi','Cambodia','Cameroon','Canada','Cape Verde','Cayman Islands','Central African Republic','Chad','Chile','China','Christmas Island','Cocos (Keeling) Islands','Colombia','Comoros','Congo','Cook Islands','Costa Rica','Croatia (Hrvatska)','Cuba','Cyprus','Czech Republic','Denmark','Djibouti','Dominica','Dominican Republic','East Timor','Ecuador','Egypt','El Salvador','Equatorial Guinea','Eritrea','Estonia','Ethiopia','Falkland Islands (Malvinas)','Faroe Islands','Fiji','Finland','France','France, Metropolitan','French Guiana','French Polynesia','French Southern Territories','Gabon','Gambia','Georgia','Germany','Ghana','Gibraltar','Guernsey','Greece','Greenland','Grenada','Guadeloupe','Guam','Guatemala','Guinea','Guinea-Bissau','Guyana','Haiti','Heard and Mc Donald Islands','Honduras','Hong Kong','Hungary','Iceland','India','Isle of Man','Indonesia','Iran (Islamic Republic of)','Iraq','Ireland','Israel','Italy','Ivory Coast','Jersey','Jamaica','Japan','Jordan','Kazakhstan','Kenya','Kiribati','Korea, Democratic People''s Republic of','Korea, Republic of','Kosovo','Kuwait','Kyrgyzstan','Lao People''s Democratic Republic','Latvia','Lebanon','Lesotho','Liberia','Libyan Arab Jamahiriya','Liechtenstein','Lithuania','Luxembourg','Macau','Macedonia','Madagascar','Malawi','Malaysia','Maldives','Mali','Malta','Marshall Islands','Martinique','Mauritania','Mauritius','Mayotte','Mexico','Micronesia, Federated States of','Moldova, Republic of','Monaco','Mongolia','Montenegro','Montserrat','Morocco','Mozambique','Myanmar','Namibia','Nauru','Nepal','Netherlands','Netherlands Antilles','New Caledonia','New Zealand','Nicaragua','Niger','Nigeria','Niue','Norfolk Island','Northern Mariana Islands','Norway','Oman','Pakistan','Palau','Palestine','Panama','Papua New Guinea','Paraguay','Peru','Philippines','Pitcairn','Poland','Portugal','Puerto Rico','Qatar','Reunion','Romania','Russian Federation','Rwanda','Saint Kitts and Nevis','Saint Lucia','Saint Vincent and the Grenadines','Samoa','San Marino','Sao Tome and Principe','Saudi Arabia','Senegal','Serbia','Seychelles','Sierra Leone','Singapore','Slovakia','Slovenia','Solomon Islands','Somalia','South Africa','South Georgia South Sandwich Islands','Spain','Sri Lanka','St. Helena','St. Pierre and Miquelon','Sudan','Suriname','Svalbard and Jan Mayen Islands','Swaziland','Sweden','Switzerland','Syrian Arab Republic','Taiwan','Tajikistan','Tanzania, United Republic of','Thailand','Togo','Tokelau','Tonga','Trinidad and Tobago','Tunisia','Turkey','Turkmenistan','Turks and Caicos Islands','Tuvalu','Uganda','Ukraine','United Arab Emirates','United Kingdom','United States','United States minor outlying islands','Uruguay','Uzbekistan','Vanuatu','Vatican City State','Venezuela','Vietnam','Virgin Islands (British)','Virgin Islands (U.S.)','Wallis and Futuna Islands','Western Sahara','Yemen','Zaire','Zambia','Zimbabwe') DEFAULT NULL,
  `miniBio` varchar(1600) DEFAULT NULL,
  `imagePath` varchar(500) DEFAULT NULL,
  `timeCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`versionId`),
  KEY `FK_persons_users` (`changerId`),
  CONSTRAINT `FK_persons_users` FOREIGN KEY (`changerId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for tabell mdb.reviews
DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `changerId` int(11) unsigned NOT NULL,
  `filmId` int(11) unsigned NOT NULL,
  `rating` enum('1','2','3','4','5') NOT NULL,
  `textbody` text,
  `timeCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_changer_id` (`changerId`),
  KEY `FK_film_id` (`filmId`),
  CONSTRAINT `FK_changer_id` FOREIGN KEY (`changerId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_film_id` FOREIGN KEY (`filmId`) REFERENCES `films` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for tabell mdb.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `warnings` smallint(1) unsigned NOT NULL DEFAULT '0',
  `firstName` varchar(60) NOT NULL DEFAULT '',
  `lastName` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(11) DEFAULT NULL,
  `role` enum('user','admin','banned') NOT NULL DEFAULT 'user',
  `timeCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
