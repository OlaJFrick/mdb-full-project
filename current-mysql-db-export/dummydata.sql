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

-- Dumpar data för tabell mdb.films: ~21 rows (approximately)
/*!40000 ALTER TABLE `films` DISABLE KEYS */;
REPLACE INTO `films` (`id`, `versionId`, `changerId`, `title`, `year`, `genre`, `plot`, `imagePath`, `youtubeUrl`, `timeCreated`) VALUES
	(1, 1, 1, 'It', '2017', 'Horror', 'Suddenly, the small town of Derry, in the US state of Maine, is freaking out of terror when several children mysteriously begin to disappear. Some children face their biggest fears when they end up in the evil clown Pennywise Society, whose story as a killer extends far, far back in time. Bill Skarsgård plays the lead in the new horror movie It builds on Stephen Kings well-known novel with the same name.', 'http://www.imdb.com/title/tt1396484/mediaviewer/rm1002251008', 'https://www.youtube.com/watch?v=xKJmEC5ieOk', '2017-10-20 14:04:18'),
	(1, 2, 6, 'Not It', '2017', 'Horror', 'Suddenly, the small town of Derry, in the US state of Maine, is freaking out of terror when several children mysteriously begin to disappear. Some children face their biggest fears when they end up in the evil clown Pennywise Society, whose story as a killer extends far, far back in time. Bill Skarsgård plays the lead in the new horror movie It builds on Stephen Kings well-known novel with the same name.', 'http://www.imdb.com/title/tt1396484/mediaviewer/rm1002251008', 'https://www.youtube.com/watch?v=xKJmEC5ieOk', '2017-10-20 14:04:18'),
	(2, 1, 1, 'Harry Potter and the Chamber of Secrets', '2002', 'Adventure', 'The summer break is finally over! Harry Potter has longed back to his second year at Hogwarts School for Witchcraft and Witchcraft. But how will he stand out with the new, meticulous professor Lockman? What hides Hagrids past? And who\'s really unhappy myrtle? The real problems begin when someone, or something, glorifies one Hogwarteleven after another. Is it Harry\'s greatest enemy, Draco Malfoy, behind? Or is it that everyone at Hogwarts suspects - Harry Potter himself?', 'http://www.imdb.com/title/tt0295297/mediaviewer/rm1029675264', 'https://www.youtube.com/watch?v=1bq0qff4iF8', '2017-10-12 14:04:18'),
	(2, 2, 6, 'Furry Potter and the Chamber of Secrets', '2002', 'Adventure', 'The summer break is finally over! Harry Potter has longed back to his second year at Hogwarts School for Witchcraft and Witchcraft. But how will he stand out with the new, meticulous professor Lockman? What hides Hagrids past? And who\'s really unhappy myrtle? The real problems begin when someone, or something, glorifies one Hogwarteleven after another. Is it Harry\'s greatest enemy, Draco Malfoy, behind? Or is it that everyone at Hogwarts suspects - Harry Potter himself?', 'http://www.imdb.com/title/tt0295297/mediaviewer/rm1029675264', 'https://www.youtube.com/watch?v=1bq0qff4iF8', '2017-10-10 14:04:18'),
	(3, 1, 1, 'The Rock', '1996', 'Action', 'A mStanley Goodspeed, who lives in Washington D.C., is a biochemist who works for the FBI. Soon after his fiancée Carla Pestalozzi announces that she is pregnant, Stanley gets a call from FBI director James Womack. Womack tells Stanley that San Francisco´s Alcatraz Island has been taken hostage, along with 81 tourists, by marine General Francis Xavier Hummel who, for years, has been protesting the government´s refusal to pay benefits to families of war veterans who died during covert military operations. The death of his wife Barbara Hummel on March 9, 1995 drove General Hummel over the edge, and now he´s holding hostages in order to get his point across. Stanley is needed because General Hummel has stolen some VX gas warheads and has announced that he will launch them onto San Francisco unless his demands are met. Stanley knows how to disarm the bombs, but Stanley needs someone who knows Alcatraz well enough to get him inside. That man is former British intelligence agent John Patrick.', 'http://www.imdb.com/title/tt0117500/mediaviewer/rm2777683456', 'https://www.youtube.com/watch?v=6DWu_dT0Phc', '2017-10-01 14:04:18'),
	(4, 1, 1, 'Con Air', '1997', 'Action', 'Cameron Poe, a highly decorated United States Army Ranger, came home to Alabama to his wife, Tricia, only to run into a few drunken regulars where Tricia works. Cameron unknowingly kills one of the drunks and is sent to a federal penitentiary for involuntary manslaughter for seven years. Cameron becomes eligible for parole and can now go home to his wife and daughter. Unfortunately, Cameron has to share a prison airplane with some of the country´s most dangerous criminals, who took control of the plane and are now planning to escape the country. Cameron has to find a way to stop them while playing along. Meanwhile, United States Marshal Vincent Larkin is trying to help Cameron get free and stop the criminals, including Cyrus "The Virus" Grissom.', 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672', 'https://www.youtube.com/watch?v=EmTO6Z4_EvE', '2017-10-20 14:04:18'),
	(5, 1, 1, 'Yes Man', '2008', 'Comedy', 'Carl Allen is at a standstill. No future... Until the day he enrolls into a personal development program based on a very simple idea: say yes to everything! Carl discovers with amazement the magical power of "Yes", and sees his professional and romantic life turned upside down overnight: an unexpected promotion and a new girlfriend. But he´ll soon discover that better can be good´s enemy, and that all opportunities shouldn´t be taken.', 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672', 'https://www.youtube.com/watch?v=yEYt-aP7klU', '2017-10-20 14:04:18'),
	(6, 1, 1, 'Blade Runner 2049', '2017', 'Thriller', 'Thirty years after the events of the first film, a new blade runner, LAPD Officer K (Ryan Gosling), unearths a long-buried secret that has the potential to plunge what´s left of society into chaos. K´s discovery leads him on a quest to find Rick Deckard (Harrison Ford), a former LAPD blade runner who has been missing for 30 years.', 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672', 'https://www.youtube.com/watch?v=6T2b0mp2hco', '2017-10-20 14:04:18'),
	(7, 1, 1, 'Toy Story', '1995', 'Animation', 'A little boy named Andy loves to be in his room, playing with his toys, especially his doll named "Woody". But, what do the toys do when Andy is not with them, they come to life. Woody believes that he has life (as a toy) good. However, he must worry about Andy´s family moving, and what Woody does not know is about Andy´s birthday party. Woody does not realize that Andy´s mother gave him an action figure known as Buzz Lightyear, who does not believe that he is a toy, and quickly becomes Andy´s new favorite toy. Woody, who is now consumed with jealousy, tries to get rid of Buzz. Then, both Woody and Buzz are now lost. They must find a way to get back to Andy before he moves without them, but they will have to pass through a ruthless toy killer, Sid Phillips.', 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672', 'https://www.youtube.com/watch?v=4KPTXpQehio', '2017-10-20 14:04:18'),
	(8, 1, 1, 'Chappie', '2015', 'Action', 'In Johannesburg, the police department reduced the high rating of criminality using robots from the Tetravaal Company, designed by the engineer Deon Wilson. The former military Vincent Moore is envious of Deon, since he has developed another project called Moose, but neither Tetravaal nor the police department is interested. Deon has just developed an Artificial Intelligence but the Tetravaal´s CEO Michelle Bradley asks him to abort the project. Deon decides to bring the damaged Robot 22 that was sent to be crushed to test his A.I. However he is kidnapped by the criminals Ninja, Yo-Landi and Amerika that want him to stop the robot cops. When they see the damaged robot in the van, they force Deon to program it to heist banks with them and they call it Chappie. However, Chappie acts like a child and need to be trained to learn and grow. Meanwhile Vincent follows Deon and plots an evil scheme to activate his robot.', 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672', 'https://www.youtube.com/watch?v=l6bmTNadhJE', '2017-10-07 14:04:18'),
	(9, 1, 1, 'Her', '2013', 'Drama', 'Theodore is a lonely man in the final stages of his divorce. When he´s not working as a letter writer, his down time is spent playing video games and occasionally hanging out with friends. He decides to purchase the new OS1, which is advertised as the world´s first artificially intelligent operating system, "It´s not just an operating system, it´s a consciousness," the ad states. Theodore quickly finds himself drawn in with Samantha, the voice behind his OS1. As they start spending time together they grow closer and closer and eventually find themselves in love. Having fallen in love with his OS, Theodore finds himself dealing with feelings of both great joy and doubt. As an OS, Samantha has powerful intelligence that she uses to help Theodore in ways others hadn´t, but how does she help him deal with his inner conflict of being in love with an OS?', 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672', 'https://www.youtube.com/watch?v=ne6p6MfLBxc', '2017-10-20 14:04:18'),
	(10, 1, 1, 'Dredd', '2012', 'Action', 'The future America is an irradiated waste land. On its East Coast, running from Boston to Washington DC, lies Mega City One - a vast, violent metropolis where criminals rule the chaotic streets. The only force of order lies with the urban cops called "Judges" who possess the combined powers of judge, jury and instant executioner. Known and feared throughout the city, Dredd is the ultimate Judge, challenged with ridding the city of its latest scourge - a dangerous drug epidemic that has users of "Slo-Mo" experiencing reality at a fraction of its normal speed. During a routine day on the job, Dredd is assigned to train and evaluate Cassandra Anderson, a rookie with powerful psychic abilities thanks to a genetic mutation. A heinous crime calls them to a neighborhood where fellow Judges rarely dare to venture - a 200 storey vertical slum controlled by prostitute turned drug lord Ma-Ma and her ruthless clan. When they capture one of the clan´s inner circle, Ma-Ma overtakes the compound´s ...', 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672', 'https://www.youtube.com/watch?v=qVIba2N6MTA', '2017-10-09 14:04:18'),
	(11, 1, 1, 'Iron Man', '2008', 'Action', 'Tony Stark. Genius, billionaire, playboy, philanthropist. Son of legendary inventor and weapons contractor Howard Stark. When Tony Stark is assigned to give a weapons presentation to an Iraqi unit led by Lt. Col. James Rhodes, he´s given a ride on enemy lines. That ride ends badly when Stark´s Humvee that he´s riding in is attacked by enemy combatants. He survives - barely - with a chest full of shrapnel and a car battery attached to his heart. In order to survive he comes up with a way to miniaturize the battery and figures out that the battery can power something else. Thus Iron Man is born. He uses the primitive device to escape from the cave in Iraq. Once back home, he then begins work on perfecting the Iron Man suit. But the man who was put in charge of Stark Industries has plans of his own to take over Tony´s technology for other matters.', 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672', 'https://www.youtube.com/watch?v=8hYlB38asDY', '2017-10-20 14:04:18'),
	(12, 1, 1, 'Man of Steel', '2013', 'Action', 'A young boy learns that he has extraordinary powers and is not of this Earth. As a young man, he journeys to discover where he came from and what he was sent here to do. But the hero in him must emerge if he is to save the world from annihilation and become the symbol of hope for all mankind.', 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672', 'https://www.youtube.com/watch?v=T6DJcgm3wNY', '2017-10-20 14:04:18'),
	(13, 1, 1, 'The Lord of the Rings: The Fellowship of the Ring', '2001', 'Action', 'An ancient Ring thought lost for centuries has been found, and through a strange twist in fate has been given to a small Hobbit named Frodo. When Gandalf discovers the Ring is in fact the One Ring of the Dark Lord Sauron, Frodo must make an epic quest to the Cracks of Doom in order to destroy it! However he does not go alone. He is joined by Gandalf, Legolas the elf, Gimli the Dwarf, Aragorn, Boromir and his three Hobbit friends Merry, Pippin and Samwise. Through mountains, snow, darkness, forests, rivers and plains, facing evil and danger at every corner the Fellowship of the Ring must go. Their quest to destroy the One Ring is the only hope for the end of the Dark Lords reign!', 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672', 'https://www.youtube.com/watch?v=Pki6jbSbXIY', '2017-10-20 14:04:18'),
	(14, 1, 1, 'The Lord of the Rings: The Two Towers', '2002', 'Action', 'The continuing quest of Frodo and the Fellowship to destroy the One Ring. Frodo and Sam discover they are being followed by the mysterious Gollum. Aragorn, the Elf archer Legolas and Gimli the Dwarf encounter the besieged Rohan kingdom, whose once great King Theoden has fallen under Saruman´s deadly spell.', 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672', 'https://www.youtube.com/watch?v=2dlRvAjU_RI', '2017-10-20 14:04:18'),
	(15, 1, 1, 'The Lord of the Rings: The Return of the King', '2003', 'Action', 'The final confrontation between the forces of good and evil fighting for control of the future of Middle-earth. Hobbits: Frodo and Sam reach Mordor in their quest to destroy the "one ring", while Aragorn leads the forces of good against Sauron´s evil army at the stone city of Minas Tirith.', 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672', 'https://www.youtube.com/watch?v=WIrRJ8bCZYQ', '2017-10-20 14:04:18'),
	(16, 1, 1, 'Fight Club', '1999', 'Drama', 'A nameless first person narrator (Edward Norton) attends support groups in attempt to subdue his emotional state and relieve his insomniac state. When he meets Marla (Helena Bonham Carter), another fake attendee of support groups, his life seems to become a little more bearable. However when he associates himself with Tyler (Brad Pitt) he is dragged into an underground fight club and soap making scheme. Together the two men spiral out of control and engage in competitive rivalry for love and power. When the narrator is exposed to the hidden agenda of Tyler´s fight club, he must accept the awful truth that Tyler may not be who he says he is.', 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672', 'https://www.youtube.com/watch?v=_XgQA9Ab0Gw', '2017-10-20 14:04:18'),
	(17, 1, 1, 'The Shawshank Redemption', '1994', 'Crime', 'Chronicles the experiences of a formerly successful banker as a prisoner in the gloomy jailhouse of Shawshank after being found guilty of a crime he did not commit. The film portrays the man´s unique way of dealing with his new, torturous life; along the way he befriends a number of fellow prisoners, most notably a wise long-term inmate named Red.', 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672', 'https://www.youtube.com/watch?v=6hB3S9bIaco', '2017-10-20 14:04:18'),
	(18, 1, 1, 'Leon', '1994', 'Crime', 'After her father, mother, older sister and little brother are killed by her father´s employers, the 12-year-old daughter of an abject drug dealer is forced to take refuge in the apartment of a professional hitman who at her request teaches her the methods of his job so she can take her revenge on the corrupt DEA agent who ruined her life by killing her beloved brother.', 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672', 'https://www.youtube.com/watch?v=DcsirofJrlM', '2017-10-20 14:04:18'),
	(19, 1, 1, 'Interstellar', '2014', 'Adventure', 'Earth´s future has been riddled by disasters, famines, and droughts. There is only one way to ensure mankind´s survival: Interstellar travel. A newly discovered wormhole in the far reaches of our solar system allows a team of astronauts to go where no man has gone before, a planet that may have the right environment to sustain human life.', 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672', 'https://www.youtube.com/watch?v=zSWdZVtXT7E', '2017-10-20 14:04:18'),
	(20, 1, 1, 'Gladiator', '2000', 'Action', 'Maximus is a powerful Roman general, loved by the people and the aging Emperor, Marcus Aurelius. Before his death, the Emperor chooses Maximus to be his heir over his own son, Commodus, and a power struggle leaves Maximus and his family condemned to death. The powerful general is unable to save his family, and his loss of will allows him to get captured and put into the Gladiator games until he dies. The only desire that fuels him now is the chance to rise to the top so that he will be able to look into the eyes of the man who will feel his revenge.', 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672', 'https://www.youtube.com/watch?v=Q-b7B8tOAQU', '2017-10-20 14:04:18'),
	(21, 1, 1, 'Forest Gump', '1994', 'Comedy', 'Forrest Gump is a simple man with a low I.Q. but good intentions. He is running through childhood with his best and only friend Jenny. His "mama" teaches him the ways of life and leaves him to choose his destiny. Forrest joins the army for service in Vietnam, finding new friends called Dan and Bubba, he wins medals, creates a famous shrimp fishing fleet, inspires people to jog, starts a ping-pong craze, creates the smiley, writes bumper stickers and songs, donates to people and meets the president several times. However, this is all irrelevant to Forrest who can only think of his childhood sweetheart Jenny Curran, who has messed up her life. Although in the end all he wants to prove is that anyone can love anyone.', 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672', 'https://www.youtube.com/watch?v=uPIEn0M8su0', '2017-10-20 14:04:18'),
	(22, 1, 1, 'Notorious!', '1946','Thriller', '', '', '', '2017-10-22 14:04:18'),
	(23, 1, 1, 'Vertigo','1958','Thriller', '', '', '', '2017-10-22 14:04:18'),
	(24, 1, 1, 'The Big Lebowski','1998','Comedy', '', '', '', '2017-10-22 14:04:18'),
	(25, 1, 1, 'The Day of the Locust','1975','Drama', '', '', '', '2017-10-22 14:04:18'),
	(26, 1, 1, 'Midnight Cowboy','1969','Drama', '', '', '', '2017-10-22 14:04:18'),
	(27, 1, 1, 'The Wrestler','2008','Drama', '', '', '', '2017-07-22 14:04:18'),
	(28, 1, 1, 'What Ever Happened to Baby Jane?','1962','Drama', '', '', '', '2017-10-22 14:04:18'),
	(29, 1, 1, 'Seance on a Wet Afternoon','1964','Crime', '', '', '', '2017-10-22 14:04:18'),
	(30, 1, 1, 'Paper Moon','1973','Drama', '', '', '', '2017-10-22 14:04:18'),
	(31, 1, 4, 'North by Northwest','1959','Thriller', '', '', '', '2017-09-22 14:04:18');
/*!40000 ALTER TABLE `films` ENABLE KEYS */;

-- Dumpar data för tabell mdb.films_actors: ~23 rows (approximately)
/*!40000 ALTER TABLE `films_actors` DISABLE KEYS */;
REPLACE INTO `films_actors` (`filmId`, `actorId`, `changerId`, `character`, `isMainCharacter`, `timeCreated`) VALUES
(1,1,1,'Pennywise',1, '2017-10-22 14:04:18'),
(22,13,1,'Devlin',1, '2017-10-22 14:04:18'),
(22,14,1,'Alicia Huberman',1, '2017-10-22 14:04:18'),
(23,16,1,'John Ferguson',1, '2017-10-22 14:04:18'),
(24,17,4,'The Dude',1, '2017-10-22 14:04:18'),
(24,18,1,'Maude Lebowski',1, '2017-10-22 14:04:18'),
(23,21,1,'Madeleine Elster',0, '2017-10-22 14:04:18'),
(25,23,1,'Homer Simpson',1, '2017-10-22 14:04:18'),
(25,24,1,NULL,0, '2017-10-22 14:04:18'),
(26,32,1,'Ratso',1, '2017-10-22 14:04:18'),
(27,31,1,'Randy The Ram Robinson',1, '2017-10-22 14:04:18'),
(28,28,1,'Baby Jane Hudson',1, '2017-10-22 14:04:18'),
(29,27,1,NULL,1, '2017-10-22 14:04:18'),
(30,33,1,NULL,1, '2017-10-22 14:04:18'),
(31,16,1,'Roger O. Thornhill',1, '2017-10-22 14:04:18'),
(2,35,1,'Harry Potter',1, '2017-10-22 14:04:18'),
(2,2,1,'Hermione Granger', 1, '2017-10-22 14:04:18'),
(2,36,1,'Hagrid The Giant',0, '2017-10-27 14:04:18'),
(3,37,1,'John Patrick Mason',1, '2017-10-22 14:04:18'),
(3,10,1,'Stanley Goodspeed',1, '2017-10-22 14:04:18'),
(4,39,1,'Johnny-23',0, '2017-10-22 14:04:18'),
(5,41,1,'Carl',1, '2017-10-22 14:04:18'),
(5,42,1,'Peter',0, '2017-10-22 14:04:18'),
(6,43,1,'K',1, '2017-10-22 14:04:18'),
(6,44,1,'Niander Wallace',0, '2017-10-28 14:04:18'),
(6,45,1,'Joi',0, '2017-10-22 14:04:18'),
(7,48,1,'Woody',1, '2017-10-22 14:04:18'),
(7,49,1,'Mrs. Davis',0, '2017-10-22 14:04:18'),
(8,50,1,'Chappie',1, '2017-10-22 14:04:18'),
(8,51,1,'Ninja',0, '2017-10-22 14:04:18'),
(9,53,1,'Theodore',1, '2017-10-22 14:04:18'),
(9,54,1,'Letter Writer #1',0, '2017-10-22 14:04:18'),
(10,56,1,'Judge Dredd',1, '2017-10-22 14:04:18'),
(10,57,1,'Anderson',0, '2017-10-22 14:04:18'),
(11,59,1,'Tony Stark / Iron Man',1, '2017-10-22 14:04:18'),
(11,60,1,'JARVIS',0, '2017-10-22 14:04:18'),
(12,62,1,'Clark Kent / Kal-El',1, '2017-10-22 14:04:18'),
(12,63,1,'Lois Lane',0, '2017-10-22 14:04:18'),
(13,65,1,'Frodo Baggins',1, '2017-10-22 14:04:18'),
(13,66,1,'Sam',0, '2017-10-22 14:04:18'),
(14,65,1,'Frodo Baggins',1, '2017-10-22 14:04:18');


/*!40000 ALTER TABLE `films_actors` ENABLE KEYS */;

-- Dumpar data för tabell mdb.films_directors: ~24 rows (approximately)
/*!40000 ALTER TABLE `films_directors` DISABLE KEYS */;
REPLACE INTO `films_directors` (`filmId`, `directorId`, `changerId`, `timeCreated`) VALUES
	(1,12,1, '2017-10-22 14:04:18'),
	(22,15,1, '2017-10-22 14:04:18'),
	(23,15,1, '2017-10-27 14:04:18'),
	(31,15,1, '2017-10-27 14:04:18'),
	(24,19,1, '2017-10-22 14:04:18'),
	(24,20,1, '2017-10-22 14:04:18'),
	(25,22,1, '2017-10-22 14:04:18'),
	(30,25,1, '2017-10-22 14:04:18'),
	(29,26,1, '2017-10-22 14:04:18'),
	(3,34,1, '2017-10-22 14:04:18'),
	(2,3,1, '2017-10-12 14:04:18'),
	(4,38,1, '2017-10-10 14:04:18'),
	(5,40,1, '2017-10-22 14:04:18'),
	(27,30,1, '2017-10-22 14:04:18'),
	(6,46,1, '2017-10-22 14:04:18'),
	(7,47,1, '2017-10-22 14:04:18'),
	(8,50,1, '2017-10-22 14:04:18'),
	(9,52,2, '2017-10-22 14:04:18'),
	(10,55,1, '2017-10-22 14:04:18'),
	(11,58,1, '2017-10-22 14:04:18'),
	(12,61,3, '2017-10-28 14:04:18'),
	(13,64,1, '2017-10-22 14:04:18'),
	(14,64,1, '2017-10-22 14:04:18'),
	(15,64,1, '2017-10-22 14:04:18'),
	(1,1,6, '2017-10-28 18:04:18');
/*!40000 ALTER TABLE `films_directors` ENABLE KEYS */;

-- Dumpar data för tabell mdb.persons: ~11 rows (approximately)
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
REPLACE INTO `persons` (`id`, `versionId`, `changerId`, `firstName`, `lastName`, `birth`, `death`, `gender`, `nationality`, `miniBio`, `imagePath`, `timeCreated`) VALUES
	(1, 1, 1, 'Bill', 'Skarsgård', '1990-08-09', NULL, 'male', 'Sweden', 'Bill Istvan Günther Skarsgård is a Swedish actor, known for his role in Simple Simon. Skarsgård is the son of actor Stellan Skarsgård, and My Skarsgård, and the brother of Alexander, Gustaf, Sam, Eija, Valter and half-brother to Ossian and Kolbjörn. In 2011, Skarsgård was nominated for a Guldbagge Award for his leading role as Simon in Simple Simon.', 'http://thefw.com/files/2012/06/Nicolas-Cage-Cats5.jpg?w=630&h=491&q=75', '2017-10-01 14:04:18'),
	(1, 2, 6, 'Boring', 'Skarsgård', '1990-08-09', NULL, 'male', 'Sweden', 'Bill Istvan Günther Skarsgård is a Swedish actor, known for his role in Simple Simon. Skarsgård is the son of actor Stellan Skarsgård, and My Skarsgård, and the brother of Alexander, Gustaf, Sam, Eija, Valter and half-brother to Ossian and Kolbjörn. In 2011, Skarsgård was nominated for a Guldbagge Award for his leading role as Simon in Simple Simon.', 'http://thefw.com/files/2012/06/Nicolas-Cage-Cats5.jpg?w=630&h=491&q=75', '2017-10-06 14:04:18'),
	(2, 1, 1, 'Emma', 'Watson', '1990-04-15', NULL, 'female', 'United Kingdom', 'Emma Watson (born 15 April 1990) is an English actress and snob who rose to prominence playing Hermione Granger, one of three starring roles in the Harry Potter film series. Watson was cast as Hermione at the age of nine, having previously acted only in school plays. From 2001 to 2011, she starred in eight Harry Potter films alongside Daniel Radcliffe and Rupert Grint. Watson\'s work on the Harry Potter series has earned her several awards and more than £10 million.', 'http://thefw.com/files/2012/06/Nicolas-Cage-Cats5.jpg?w=630&h=491&q=75', '2017-02-20 14:04:18'),
	(3, 1, 1, 'Chris', 'Columbus', '1958-09-10', NULL, 'male', 'United States', 'Christopher Joseph Columbus (born September 10, 1958) is an American film director, producer and screenwriter. Columbus had most success with the first film in the Harry Potter series, Harry Potter and the Sorcerer\'s Stone, along with Home Alone, winning a British Comedy Award for Best Comedy Film. Description above from the Wikipedia article Chris Columbus (filmmaker), licensed under CC-BY-SA, full list of contributors on Wikipedia.', 'http://thefw.com/files/2012/06/Nicolas-Cage-Cats5.jpg?w=630&h=491&q=75', '2017-09-20 14:04:18'),
	(4, 1, 1, 'Andrés', 'Muschietti', '1973-08-26', NULL, 'male', 'Argentina', 'Andrés Muschietti is a director, screenwriter and producer of film and television Argentina, graduated from the University of the cinema of Buenos Aires. Muschietti began working as a production assistant in 1996 in films shot in Buenos Aires "Moebius" and "Evita"; as well as also in the direction of trade.', 'http://thefw.com/files/2012/06/Nicolas-Cage-Cats5.jpg?w=630&h=491&q=75', '2017-10-20 14:04:18'),
	(5, 1, 1, 'Russel', 'Crowe', '1964-04-07', NULL, 'male', 'United States', 'Russell Ira Crowe was born in Wellington, New Zealand, to Jocelyn Yvonne (Wemyss) and John Alexander Crowe, both of whom catered movie sets. His maternal grandfather, Stanley Wemyss, was a cinematographer. Crowe´s recent ancestry includes Welsh (where his paternal grandfather was born, in Wrexham), English, Irish, Scottish, Norwegian, Swedish, and Maori (one of Crowe´s maternal great-grandmothers, Erana Putiputi Hayes Heihi, was Maori).', 'http://thefw.com/files/2012/06/Nicolas-Cage-Cats5.jpg?w=630&h=491&q=75', '2017-10-02 14:04:18'),
	(6, 1, 1, 'Robert', 'De Niro', '1943-08-17', NULL, 'male', 'Italy', 'One of the greatest actors of all time, Robert De Niro was born on August 17, 1943 in Manhattan, New York City, to artists Virginia (Admiral) and Robert De Niro Sr. His paternal grandfather was of Italian descent, and his other ancestry is English, Dutch, German, French and Irish. He was trained at the Stella Adler Conservatory and the American Workshop. De Niro first gained fame for his role in Bang the Drum Slowly (1973), but he gained his reputation as a volatile actor in Dödspolarna (1973), which was his first film with director Martin Scorsese. He received an Academy Award for Best Supporting Actor for his role in Gudfadern del II (1974) and received Academy Award nominations for best actor in Taxi Driver (1976), Deer Hunter (1978) and Cape Fear (1991). He received the Academy Award for Best Actor for his role as Jake LaMotta in Tjuren från Bronx (1980).', 'http://thefw.com/files/2012/06/Nicolas-Cage-Cats5.jpg?w=630&h=491&q=75', '2017-10-20 14:04:18'),
	(7, 1, 1, 'Christopher', 'Lee', '1922-04-27', '2015-06-07', 'male', 'United Kingdom', 'Sir Christopher Frank Carandini Lee was perhaps the only actor of his generation to have starred in so many films and cult saga. Although most notable for personifying bloodsucking vampire, Dracula, on screen, he portrayed other varied characters on screen, most of which were villains, whether it be Francisco Scaramanga in the James Bond film, Mannen med den gyllene pistolen (1974), or Count Dooku in Star Wars: Episod II - Klonerna anfaller (2002), or as the title monster in the Hammer Horror film, Mumiens hämnd (1959).', 'http://thefw.com/files/2012/06/Nicolas-Cage-Cats5.jpg?w=630&h=491&q=75', '2017-10-20 14:04:18'),
	(8, 1, 1, 'Scarlett', 'Johansson', '1984-11-22', NULL, 'female', 'United States', 'Scarlett Johansson was born in New York City. Her mother, Melanie Sloan, is from a Jewish family from the Bronx, and her father, Karsten Johansson, is a Danish-born architect, from Copenhagen. She has a sister, Vanessa Johansson, who is also an actress, a brother, Adrian, a twin brother, Hunter Johansson, born three minutes after her, and a paternal half-brother, Christian. Her grandfather was writer Ejner Johansson.', 'http://thefw.com/files/2012/06/Nicolas-Cage-Cats5.jpg?w=630&h=491&q=75', '2017-10-11 14:04:18'),
	(9, 1, 4, 'Natalie', 'Portman', '1981-06-09', NULL, 'female', 'Israel', 'Natalie was born Natalie Hershlag on June 9, 1981, in Jerusalem, Israel. She is the only child of Avner Hershlag, an Israeli-born doctor, and Shelley Stevens, an American-born artist (from Cincinnati, Ohio), who also acts as Natalie´s agent. She left Israel for Washington, D.C., when she was still very young. After a few more moves, her family finally settled in New York, where she still lives to this day. She graduated with honors, and her academic achievements allowed her to attend Harvard University. She was discovered by an agent in a pizza parlor at the age of 11. She was pushed towards a career in modeling but she decided that she would rather pursue a career in acting. She was featured in many live performances, but she made her powerful film debut in the movie Léon (1994) (aka "Léon"). Following this role Natalie won roles in such films as Heat (1995), Beautiful Girls (1996), and Mars Attacks! (1996).', 'http://thefw.com/files/2012/06/Nicolas-Cage-Cats5.jpg?w=630&h=491&q=75', '2017-10-20 14:04:18'),
	(10, 1, 1, 'Nicolas', 'Cage', '1964-01-07', NULL, 'male', 'United States', 'Nicolas Cage was born Nicolas Kim Coppola in Long Beach, California, the son of comparative literature professor August Coppola (whose brother is director Francis Ford Coppola) and dancer/choreographer Joy Vogelsang. He is of Italian (father) and Polish, German, and English (mother) descent. Cage changed his name early in his career to make his own reputation, succeeding brilliantly with a host of classic, quirky roles by the late 1980s.', 'http://thefw.com/files/2012/06/Nicolas-Cage-Cats5.jpg?w=630&h=491&q=75', '2017-09-20 14:04:18'),
	(11, 1, 1, 'Lily', 'James', '1989-04-05', NULL, 'female', 'United Kingdom', 'Lily James was born Lily Chloe Ninette Thomson in Esher, Surrey, to Ninette (Mantle), an actress, and Jamie Thomson, an actor and musician. Her grandmother, Helen Horton, was an American actress. She began her education at Arts Educational School in Tring and subsequently went on to study acting at the Guildhall School of Music and Drama in London, graduating in 2010.', 'http://thefw.com/files/2012/06/Nicolas-Cage-Cats5.jpg?w=630&h=491&q=75', '2017-10-20 14:04:18'),
	(12, 1, 1, 'Andy', 'Muschietti', '1976-04-05', NULL, 'male', 'United Kingdom', '', '', '2017-10-20 14:04:19'),
	(13, 1, 1, 'Cary','Grant','1904-01-18','1986-11-29', 'male', 'United Kingdom', '', '', '2017-10-20 14:04:19'),
	(14, 1, 1, 'Ingrid','Bergman','1915-08-29','1982-08-29', 'female', 'Sweden', '', '', '2017-10-20 14:04:19'),
	(15, 1, 1, 'Alfred','Hitchcock','1899-08-13','1980-04-29','male','United Kingdom','','https://www.biography.com/.image/t_share/MTE1ODA0OTcxNjYwNDQ1MTk3/alfred-hitchcock-9340006-1-402.jpg','2017-10-22 23:25:26'),
	(16, 1, 1, 'James','Stewart','1908-04-20','1997-07-02','male','United States','','https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/James_Stewart_-_1959.jpg/220px-James_Stewart_-_1959.jpg','2017-10-22 23:25:48'),
	(17, 1, 1, 'Jeff','Bridges','1949-12-04',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(18, 1, 1, 'Julianne','Moore','1960-12-03',NULL, 'female', 'United States', '', '', '2017-10-20 14:04:19'),
	(19, 1, 1, 'Ethan','Coen','1957-09-21',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(20, 1, 1, 'Joel','Coen','1954-11-29',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(21, 1, 1, 'Kim','Novak','1933-03-20',NULL, 'female', 'United States', '', '', '2017-10-20 14:04:19'),
	(22, 1, 1, 'John','Schlesinger','1926-02-16','2003-06-25', 'male', 'United Kingdom', '', '', '2017-10-20 14:04:19'),
	(23, 1, 1, 'Donald','Sutherland','1935-06-17',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(24, 1, 1, 'Karen','Black','1939-07-01','2013-08-08', 'female', 'United States', '', '', '2017-10-20 14:04:19'),
	(25, 1, 1, 'Peter','Bogdanovich','1939-06-30',NULL, 'male', 'United States', '', '', '2017-01-20 14:04:19'),
	(26, 1, 1, 'Bryan','Forbes','1926-06-22','2013-05-08', 'male', 'United Kingdom', '', '', '2017-10-20 14:04:19'),
	(27, 1, 1, 'Kim','Stanley','1925-02-11','2001-08-20', 'female', 'United Kingdom', '', '', '2017-10-20 14:04:19'),
	(28, 1, 1, 'Bette','Davis','1908-04-05','1989-10-06', 'female', 'United States', '', '', '2017-10-20 14:04:19'),
	(29, 1, 1, 'Robert','Aldrich','1918-08-09','1983-12-05', 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(30, 1, 1, 'Darren','Aronofsky','1969-02-12',NULL, 'male', 'United States', '', '', '2017-02-20 14:04:19'),
	(31, 1, 1, 'Mickey','Rourke','1952-09-16',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(32, 1, 4, 'Dustin','Hoffman','1937-08-08',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(33, 1, 1, 'Tatum','O\'Neal','1963-11-05',NULL, 'female', 'United States', '', '', '2017-10-20 14:04:19'),
	(34, 1, 1, 'Michael','Bay','1963-11-05',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(35, 1, 1, 'Daniel','Radcliffe','1963-11-05',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(36, 1, 1, 'Robbie','Coltrane','1963-11-05',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(37, 1, 1, 'Sean','Connery','1963-11-05',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(38, 1, 1, 'Simon','West','1963-11-05',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(39, 1, 1, 'Danny','Trejo','1963-11-05',NULL, 'male', 'United States', '', '', '2017-03-20 14:04:19'),
	(40, 1, 1, 'Peyton','Reed','1963-11-05',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(41, 1, 1, 'Jim','Carrey','1963-11-05',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(42, 1, 1, 'Bradley','Cooper','1963-11-05',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(43, 1, 1, 'Ryan','Gosling','1963-11-05',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(44, 1, 4, 'Jared','Leto','1963-11-05',NULL, 'male', 'United States', '', '', '2017-06-20 14:04:19'),
	(45, 1, 1, 'Ana','de Armas','1963-11-05',NULL, 'female', 'United States', '', '', '2017-10-20 14:04:19'),
	(46, 1, 1, 'Denis','Villeneuve','1963-11-05',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(47, 1, 1, 'John','Lasseter','1963-11-05',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(48, 1, 1, 'Tom','Hanks','1963-11-05',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(49, 1, 1, 'Laurie','Metcalf','1963-11-05',NULL, 'female', 'United States', '', '', '2017-10-20 14:04:19'),
	(50, 1, 1, 'Neill','Blomkamp','1963-11-05',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(51, 1, 1, 'Sharlto','Copley','1963-11-05',NULL, 'male', 'United States', '', '', '2017-08-20 14:04:19'),
	(51, 1, 1, 'Ninja','','1963-11-05',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(52, 1, 1, 'Spike','Jonze','1963-11-05',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(53, 1, 1, 'Joaquin','Phoenix','1963-11-05',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(54, 1, 1, 'Lynn','Adriana','1963-11-05',NULL, 'female', 'United States', '', '', '2017-10-20 14:04:19'),
	(55, 1, 1, 'Pete','Travis','1963-11-05',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(56, 1, 1, 'Karl','Urban','1963-11-05',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(57, 1, 1, 'Olivia','Thirlby','1963-11-05',NULL, 'female', 'United States', '', '', '2017-10-20 14:04:19'),
	(58, 1, 1, 'Jon','Favreau','1963-11-05',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(59, 1, 1, 'Robert','Downey Jr.','1963-11-05',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(60, 1, 1, 'Paul','Bettany','1963-11-05',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(61, 1, 1, 'Zack','Snyder','1963-11-05',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(62, 1, 1, 'Henry','Cavill','1963-11-05',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(63, 1, 1, 'Amy','Adams','1963-11-05',NULL, 'female', 'United States', '', '', '2017-10-20 14:04:19'),
	(64, 1, 1, 'Peter','Jackson','1963-11-05',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(65, 1, 1, 'Elijah','Wood','1963-11-05',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19'),
	(65, 1, 6, 'Elle','Wood','1963-11-05',NULL, 'female', 'United States', '', '', '2017-10-28 14:04:19'),
	(66, 1, 1, 'Sean','Astin','1963-11-05',NULL, 'male', 'United States', '', '', '2017-10-20 14:04:19');
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;


-- Dumpar data för tabell mdb.reviews: ~20 rows (approximately)
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
REPLACE INTO `reviews` (`id`, `changerId`, `filmId`, `rating`, `textbody`, `timeCreated`) VALUES
  (1, 1, 2, '3', 'Good! Pretty darn good', '2017-09-20 14:04:18'),
  (2, 2, 4, '1', NULL, '2017-10-11 14:04:18'),
  (3, 3, 4, '5', NULL, '2017-08-20 14:04:18'),
  (4, 3, 7, '3', NULL, '2017-10-20 14:04:18'),
  (5, 5, 7, '4', NULL, '2017-10-02 14:04:18'),
  (6, 2, 18, '2', NULL, '2017-10-20 14:04:18'),
  (7, 1, 16, '5', 'Absolutely divine', '2017-01-03 14:04:18'),
  (8, 2, 12, '1', 'Never again', '2017-10-20 14:04:18'),
  (9, 5, 12, '3', 'alright, I guess', '2017-10-20 14:04:18'),
  (10, 6, 12, '2', NULL, '2017-10-20 14:04:18'),
  (11, 5, 9, '3', NULL, '2017-10-20 14:04:18'),
  (12, 4, 9, '5', 'Awesomesauce', '2017-02-20 14:04:18'),
  (13, 3, 4, '4', 'Great!', '2017-10-20 14:04:18'),
  (14, 2, 4, '4', NULL, '2017-10-20 14:04:18'),
  (15, 2, 4, '5', NULL, '2017-09-20 14:04:18'),
  (16, 4, 1, '4', 'I really liked it', '2017-10-20 14:04:18'),
  (17, 5, 1, '5', 'Gosh... Best movie, I ever done saw', '2017-10-20 14:04:18'),
  (18, 6, 20, '2', 'A torture to watch', '2017-10-20 14:04:18'),
  (19, 3, 20, '3', 'watchable', '2017-10-20 14:04:18'),
  (20, 2, 20, '2', 'Terribly boring', '2017-10-20 14:04:18'),
  (21, 3, 23, '5', 'Alfred Hitchcock\'s \"Vertigo\" is an artistic triumph for the master of mystery.', '2017-10-20 17:04:18');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;

-- Dumpar data för tabell mdb.users: ~6 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `warnings`, `firstName`, `lastName`, `email`, `password`, `phone`, `role`, `timeCreated`) VALUES
	(1, 0, 'Amy', 'Bellinger', 'admin@mdb.com', '$2a$12$uskXH/4aoq5yZo5qu2Nt8O2yjdydligSAG5Fr9g3dgoLg16Btm/G6', '555-223344', 'admin', '2017-10-01 14:04:18'),
	(2, 0, 'Jonathan', 'Carlisle', 'jonathan@carlisle.com', '$2a$12$YZupP2z42bo4DY85iffIj.hoUC.V6cMQbetSjNad8eDk6Absys4qu', '555-223344', 'user', '2017-10-03 14:04:18'),
	(3, 3, 'Bobby', 'Bobsson', 'bobby@bobsson.com', '$2a$12$Twt4KznAn7OENvDcETXwk.CXusC2JVgKb7dfk/KHqRlr4KXkVh8jq', '555-223345', 'banned', '2017-10-06 14:04:18'),
	(4, 1, 'Stan', 'Marsh', 'stan@marsh.com', '$2a$12$kFA6bf2mMLn1fkv7QyIi0.OW3w2YcsTdpRNH.pIAUyVwQ54EgyqSu', '555-223346', 'user', '2017-10-02 14:04:10'),
	(5, 2, 'Angelo', 'Magic', 'angelo@magic.com', '$2a$12$RB23ZfmQjfrWqArzUHmu2eRp1Zcw0EwdlbrQFzmxG.fVPb.DH34EG', '555-223347', 'user', '2017-10-26 14:04:18'),
	(6, 2, 'Trolle', 'Baratheon', 'robert@baratheon.com', '$2a$12$DJqS9SQsmkkpH6iDNK7RxOKG2F6CHa1NyMzw/VzebY3Etxuq3SH4W', '555-223348', 'user', '2017-10-19 14:04:18');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
