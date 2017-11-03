# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.20)
# Database: mdb
# Generation Time: 2017-11-03 13:00:46 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table persons
# ------------------------------------------------------------

DROP TABLE IF EXISTS `persons`;

CREATE TABLE `persons` (
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
  `imagePath` varchar(500) DEFAULT 'default.png',
  `timeCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`versionId`),
  KEY `FK_persons_users` (`changerId`),
  CONSTRAINT `FK_persons_users` FOREIGN KEY (`changerId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;

INSERT INTO `persons` (`id`, `versionId`, `changerId`, `firstName`, `lastName`, `birth`, `death`, `gender`, `nationality`, `miniBio`, `imagePath`, `timeCreated`)
VALUES
	(1,1,1,'Bill','Skarsgård','1990-08-09',NULL,'male','Sweden','Bill Istvan Günther Skarsgård is a Swedish actor, known for his role in Simple Simon. Skarsgård is the son of actor Stellan Skarsgård, and My Skarsgård, and the brother of Alexander, Gustaf, Sam, Eija, Valter and half-brother to Ossian and Kolbjörn. In 2011, Skarsgård was nominated for a Guldbagge Award for his leading role as Simon in Simple Simon.','bill_skarsgard.jpg','2017-11-03 13:00:46'),
	(1,2,6,'Boring','Skarsgård','1990-08-09',NULL,'male','Sweden','Bill Istvan Günther Skarsgård is a Swedish actor, known for his role in Simple Simon. Skarsgård is the son of actor Stellan Skarsgård, and My Skarsgård, and the brother of Alexander, Gustaf, Sam, Eija, Valter and half-brother to Ossian and Kolbjörn. In 2011, Skarsgård was nominated for a Guldbagge Award for his leading role as Simon in Simple Simon.','bill_skarsgard.jpg','2017-11-03 13:00:49'),
	(2,1,1,'Emma','Watson','1990-04-15',NULL,'female','United Kingdom','Emma Watson (born 15 April 1990) is an English actress and snob who rose to prominence playing Hermione Granger, one of three starring roles in the Harry Potter film series. Watson was cast as Hermione at the age of nine, having previously acted only in school plays. From 2001 to 2011, she starred in eight Harry Potter films alongside Daniel Radcliffe and Rupert Grint. Watson\'s work on the Harry Potter series has earned her several awards and more than £10 million.','emma_watson.jpg','2017-11-03 13:00:56'),
	(3,1,1,'Chris','Columbus','1958-09-10',NULL,'male','United States','Christopher Joseph Columbus (born September 10, 1958) is an American film director, producer and screenwriter. Columbus had most success with the first film in the Harry Potter series, Harry Potter and the Sorcerer\'s Stone, along with Home Alone, winning a British Comedy Award for Best Comedy Film. Description above from the Wikipedia article Chris Columbus (filmmaker), licensed under CC-BY-SA, full list of contributors on Wikipedia.','chris_columbus.jpg','2017-11-03 13:01:41'),
	(4,1,1,'Andrés','Muschietti','1973-08-26',NULL,'male','Argentina','Andrés Muschietti is a director, screenwriter and producer of film and television Argentina, graduated from the University of the cinema of Buenos Aires. Muschietti began working as a production assistant in 1996 in films shot in Buenos Aires \"Moebius\" and \"Evita\"; as well as also in the direction of trade.','andy_muschietti.jpg','2017-11-03 13:05:11'),
	(5,1,1,'Russel','Crowe','1964-04-07',NULL,'male','United States','Russell Ira Crowe was born in Wellington, New Zealand, to Jocelyn Yvonne (Wemyss) and John Alexander Crowe, both of whom catered movie sets. His maternal grandfather, Stanley Wemyss, was a cinematographer. Crowe´s recent ancestry includes Welsh (where his paternal grandfather was born, in Wrexham), English, Irish, Scottish, Norwegian, Swedish, and Maori (one of Crowe´s maternal great-grandmothers, Erana Putiputi Hayes Heihi, was Maori).','russell_crowe.jpg','2017-11-03 13:22:35'),
	(6,1,1,'Robert','De Niro','1943-08-17',NULL,'male','Italy','One of the greatest actors of all time, Robert De Niro was born on August 17, 1943 in Manhattan, New York City, to artists Virginia (Admiral) and Robert De Niro Sr. His paternal grandfather was of Italian descent, and his other ancestry is English, Dutch, German, French and Irish. He was trained at the Stella Adler Conservatory and the American Workshop. De Niro first gained fame for his role in Bang the Drum Slowly (1973), but he gained his reputation as a volatile actor in Dödspolarna (1973), which was his first film with director Martin Scorsese. He received an Academy Award for Best Supporting Actor for his role in Gudfadern del II (1974) and received Academy Award nominations for best actor in Taxi Driver (1976), Deer Hunter (1978) and Cape Fear (1991). He received the Academy Award for Best Actor for his role as Jake LaMotta in Tjuren från Bronx (1980).','robert_de_niro.jpg','2017-11-03 13:03:01'),
	(7,1,1,'Christopher','Lee','1922-04-27','2015-06-07','male','United Kingdom','Sir Christopher Frank Carandini Lee was perhaps the only actor of his generation to have starred in so many films and cult saga. Although most notable for personifying bloodsucking vampire, Dracula, on screen, he portrayed other varied characters on screen, most of which were villains, whether it be Francisco Scaramanga in the James Bond film, Mannen med den gyllene pistolen (1974), or Count Dooku in Star Wars: Episod II - Klonerna anfaller (2002), or as the title monster in the Hammer Horror film, Mumiens hämnd (1959).','christopher_lee.jpg','2017-11-03 13:03:17'),
	(8,1,1,'Scarlett','Johansson','1984-11-22',NULL,'female','United States','Scarlett Johansson was born in New York City. Her mother, Melanie Sloan, is from a Jewish family from the Bronx, and her father, Karsten Johansson, is a Danish-born architect, from Copenhagen. She has a sister, Vanessa Johansson, who is also an actress, a brother, Adrian, a twin brother, Hunter Johansson, born three minutes after her, and a paternal half-brother, Christian. Her grandfather was writer Ejner Johansson.','scarlett_johansson.jpg','2017-11-03 13:03:33'),
	(9,1,4,'Natalie','Portman','1981-06-09',NULL,'female','Israel','Natalie was born Natalie Hershlag on June 9, 1981, in Jerusalem, Israel. She is the only child of Avner Hershlag, an Israeli-born doctor, and Shelley Stevens, an American-born artist (from Cincinnati, Ohio), who also acts as Natalie´s agent. She left Israel for Washington, D.C., when she was still very young. After a few more moves, her family finally settled in New York, where she still lives to this day. She graduated with honors, and her academic achievements allowed her to attend Harvard University. She was discovered by an agent in a pizza parlor at the age of 11. She was pushed towards a career in modeling but she decided that she would rather pursue a career in acting. She was featured in many live performances, but she made her powerful film debut in the movie Léon (1994) (aka \"Léon\"). Following this role Natalie won roles in such films as Heat (1995), Beautiful Girls (1996), and Mars Attacks! (1996).','nathalie_portman.jpg','2017-11-03 13:03:47'),
	(10,1,1,'Nicolas','Cage','1964-01-07',NULL,'male','United States','Nicolas Cage was born Nicolas Kim Coppola in Long Beach, California, the son of comparative literature professor August Coppola (whose brother is director Francis Ford Coppola) and dancer/choreographer Joy Vogelsang. He is of Italian (father) and Polish, German, and English (mother) descent. Cage changed his name early in his career to make his own reputation, succeeding brilliantly with a host of classic, quirky roles by the late 1980s.','nicolas_cage.jpg','2017-11-03 13:04:00'),
	(11,1,1,'Lily','James','1989-04-05',NULL,'female','United Kingdom','Lily James was born Lily Chloe Ninette Thomson in Esher, Surrey, to Ninette (Mantle), an actress, and Jamie Thomson, an actor and musician. Her grandmother, Helen Horton, was an American actress. She began her education at Arts Educational School in Tring and subsequently went on to study acting at the Guildhall School of Music and Drama in London, graduating in 2010.','lily_james.jpg','2017-11-03 13:04:09'),
	(12,1,1,'Andy','Muschietti','1976-04-05',NULL,'male','United Kingdom','','andy_muschietti.jpg','2017-11-03 13:04:34'),
	(13,1,1,'Cary','Grant','1904-01-18','1986-11-29','male','United Kingdom','','cary_grant.jpg','2017-11-03 13:05:22'),
	(14,1,1,'Ingrid','Bergman','1915-08-29','1982-08-29','female','Sweden','','ingrid_bergman.jpg','2017-11-03 13:05:33'),
	(15,1,1,'Alfred','Hitchcock','1899-08-13','1980-04-29','male','United Kingdom','','alfred_hitchcock.jpg','2017-11-03 13:05:48'),
	(16,1,1,'James','Stewart','1908-04-20','1997-07-02','male','United States','','james_stewart.jpg','2017-11-03 13:06:00'),
	(17,1,1,'Jeff','Bridges','1949-12-04',NULL,'male','United States','','jeff_bridges.jpg','2017-11-03 13:06:11'),
	(18,1,1,'Julianne','Moore','1960-12-03',NULL,'female','United States','','julianne_moore.jpg','2017-11-03 13:06:31'),
	(19,1,1,'Ethan','Coen','1957-09-21',NULL,'male','United States','','ethan_coen.jpg','2017-11-03 13:06:47'),
	(20,1,1,'Joel','Coen','1954-11-29',NULL,'male','United States','','joel_coen.jpg','2017-11-03 13:06:58'),
	(21,1,1,'Kim','Novak','1933-03-20',NULL,'female','United States','','kim_novak.jpg','2017-11-03 13:07:10'),
	(22,1,1,'John','Schlesinger','1926-02-16','2003-06-25','male','United Kingdom','','john_schlesinger.jpg','2017-11-03 13:08:03'),
	(23,1,1,'Donald','Sutherland','1935-06-17',NULL,'male','United States','','donald_shutterland.jpg','2017-11-03 13:08:15'),
	(24,1,1,'Karen','Black','1939-07-01','2013-08-08','female','United States','','karen_black.jpg','2017-11-03 13:08:28'),
	(25,1,1,'Peter','Bogdanovich','1939-06-30',NULL,'male','United States','','peter_bogdanovich.jpg','2017-11-03 13:08:44'),
	(26,1,1,'Bryan','Forbes','1926-06-22','2013-05-08','male','United Kingdom','','bryan_forbes.jpg','2017-11-03 13:08:56'),
	(27,1,1,'Kim','Stanley','1925-02-11','2001-08-20','female','United Kingdom','','kim_stanley.jpg','2017-11-03 13:09:16'),
	(28,1,1,'Bette','Davis','1908-04-05','1989-10-06','female','United States','','bette_davis.jpg','2017-11-03 13:09:23'),
	(29,1,1,'Robert','Aldrich','1918-08-09','1983-12-05','male','United States','','robert_aldrish.jpg','2017-11-03 13:09:36'),
	(30,1,1,'Darren','Aronofsky','1969-02-12',NULL,'male','United States','','darre_aronofsky.jpg','2017-11-03 13:09:53'),
	(31,1,1,'Mickey','Rourke','1952-09-16',NULL,'male','United States','','mickey_rourke.jpg','2017-11-03 13:10:23'),
	(32,1,4,'Dustin','Hoffman','1937-08-08',NULL,'male','United States','','dustin_hoffman.jpg','2017-11-03 13:10:31'),
	(33,1,1,'Tatum','O\'Neal','1963-11-05',NULL,'female','United States','','tatum_oneal.jpg','2017-11-03 13:10:48'),
	(34,1,1,'Michael','Bay','1963-11-05',NULL,'male','United States','','michael_bay.jpg','2017-11-03 13:11:01'),
	(35,1,1,'Daniel','Radcliffe','1963-11-05',NULL,'male','United States','','daniel_radcliff.jpg','2017-11-03 13:11:10'),
	(36,1,1,'Robbie','Coltrane','1963-11-05',NULL,'male','United States','','robbie_coltrane.jpg','2017-11-03 13:11:23'),
	(37,1,1,'Sean','Connery','1963-11-05',NULL,'male','United States','','sean_connery.jpg','2017-11-03 13:11:30'),
	(38,1,1,'Simon','West','1963-11-05',NULL,'male','United States','','simon_west.jpg','2017-11-03 13:11:38'),
	(39,1,1,'Danny','Trejo','1963-11-05',NULL,'male','United States','','danny_trejo.jpg','2017-11-03 13:11:59'),
	(40,1,1,'Peyton','Reed','1963-11-05',NULL,'male','United States','','peyton_reed.jpg','2017-11-03 13:11:56'),
	(41,1,1,'Jim','Carrey','1963-11-05',NULL,'male','United States','','jim_carrey.jpg','2017-11-03 13:12:08'),
	(42,1,1,'Bradley','Cooper','1963-11-05',NULL,'male','United States','','bradly_cooper.jpg','2017-11-03 13:12:16'),
	(43,1,1,'Ryan','Gosling','1963-11-05',NULL,'male','United States','','ryan_gosling.jpg','2017-11-03 13:12:24'),
	(44,1,4,'Jared','Leto','1963-11-05',NULL,'male','United States','','jared_leto.jpg','2017-11-03 13:12:38'),
	(45,1,1,'Ana','de Armas','1963-11-05',NULL,'female','United States','','ana_de_armas.jpg','2017-11-03 13:12:48'),
	(46,1,1,'Denis','Villeneuve','1963-11-05',NULL,'male','United States','','denis_villeneuve.jpg','2017-11-03 13:13:01'),
	(47,1,1,'John','Lasseter','1963-11-05',NULL,'male','United States','','john_lasseter.jpg','2017-11-03 13:13:11'),
	(48,1,1,'Tom','Hanks','1963-11-05',NULL,'male','United States','','tom_hanks.jpg','2017-11-03 13:13:21'),
	(49,1,1,'Laurie','Metcalf','1963-11-05',NULL,'female','United States','','laurie_metcalf.jpg','2017-11-03 13:13:47'),
	(50,1,1,'Neill','Blomkamp','1963-11-05',NULL,'male','United States','','niell_blomkamp.jpg','2017-11-03 13:13:44'),
	(51,1,1,'Ninja','','1963-11-05',NULL,'male','United States','','default.png','2017-11-03 13:14:03'),
	(52,1,1,'Spike','Jonze','1963-11-05',NULL,'male','United States','','spike_jonze.jpg','2017-11-03 13:14:13'),
	(53,1,1,'Joaquin','Phoenix','1963-11-05',NULL,'male','United States','','joaquin_phoenix.jpg','2017-11-03 13:14:28'),
	(54,1,1,'Lynn','Adriana','1963-11-05',NULL,'female','United States','','default.png','2017-11-03 13:45:10'),
	(55,1,1,'Pete','Travis','1963-11-05',NULL,'male','United States','','pete_travis.jpg','2017-11-03 13:14:44'),
	(56,1,1,'Karl','Urban','1963-11-05',NULL,'male','United States','','karl_urban.jpg','2017-11-03 13:14:57'),
	(57,1,1,'Olivia','Thirlby','1963-11-05',NULL,'female','United States','','olivia_thirlby.jpg','2017-11-03 13:15:14'),
	(58,1,1,'Jon','Favreau','1963-11-05',NULL,'male','United States','','jon_favreau.jpg','2017-11-03 13:15:34'),
	(59,1,1,'Robert','Downey Jr.','1963-11-05',NULL,'male','United States','','robert_downey_jr.jpg','2017-11-03 13:15:46'),
	(60,1,1,'Paul','Bettany','1963-11-05',NULL,'male','United States','','paul_bettany.jpg','2017-11-03 13:15:54'),
	(61,1,1,'Zack','Snyder','1963-11-05',NULL,'male','United States','','zack_snyder.jpg','2017-11-03 13:16:03'),
	(62,1,1,'Henry','Cavill','1963-11-05',NULL,'male','United States','','henry_cavill.jpg','2017-11-03 13:48:27'),
	(63,1,1,'Amy','Adams','1963-11-05',NULL,'female','United States','','amy_adams.jpg','2017-11-03 12:58:22'),
	(64,1,1,'Peter','Jackson','1963-11-05',NULL,'male','United States','','peter_jackson.jpg','2017-11-03 13:16:18'),
	(65,1,6,'Elle','Wood','1963-11-05',NULL,'female','United States','','default.png','2017-11-03 13:50:43'),
	(66,1,1,'Sean','Astin','1963-11-05',NULL,'male','United States','','sean_astin.jpg','2017-11-03 13:16:37'),
	(67,1,1,'David','Fincher','1963-11-05',NULL,'male','United States','','david_fincher.jpg','2017-11-03 13:16:45'),
	(68,1,6,'Bred','Pitt','1963-11-05',NULL,'male','United States','','brad_pitt.jpg','2017-11-03 13:16:59'),
	(69,1,1,'Edward','Norton','1963-11-05',NULL,'male','United States','','edward_norton.jpg','2017-11-03 13:17:08'),
	(70,1,1,'Frank','Darabont','1963-11-05',NULL,'male','United States','','frank_darabont.jpg','2017-11-03 13:17:20'),
	(71,1,1,'Tim','Robbins','1963-11-05',NULL,'male','United States','','tim_robbins.jpg','2017-11-03 13:17:27'),
	(72,1,1,'Morgan','Freeman','1963-11-05',NULL,'male','United States','','morgan_freeman.jpg','2017-11-03 13:17:33'),
	(73,1,1,'Luc','Besson','1963-11-05',NULL,'male','United States','','luc_besson.jpg','2017-11-03 13:17:39'),
	(74,1,1,'Jean','Reno','1963-11-05',NULL,'male','United States','','jean_reno.jpg','2017-11-03 13:17:47'),
	(75,1,1,'Christopher','Nolan','1963-11-05',NULL,'male','United States','','christopher_nolan.jpg','2017-11-03 13:17:56'),
	(76,1,1,'Matthew','McConaughey','1963-11-05',NULL,'male','United States','','mattew_mcconaughey.jpg','2017-11-03 13:18:17'),
	(77,1,1,'Mackenzie','Foy','1963-11-05',NULL,'female','United States','','mackenzie_foy.jpg','2017-11-03 13:18:27'),
	(78,1,1,'Ridley','Scott','1963-11-05',NULL,'male','United States','','ridley_scott.jpg','2017-11-03 13:18:35'),
	(79,1,1,'Robert','Zemeckis','1963-11-05',NULL,'male','United States','','robert_zemeckis.jpg','2017-11-03 13:18:52'),
	(80,1,1,'Sally','Field','1963-11-05',NULL,'female','United States','','sally_field.jpg','2017-11-03 13:19:06');

/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
