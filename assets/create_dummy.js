const express = require('express'),
      app = express(),
      bodyParser = require('body-parser'),
      Rest = require('../classes/rest.class')
      devPassword = require('../dev-password');

process.on('unhandledRejection', error=>console.log('unhandledRejection', error));

/* MIDDLEWARE */
app.use(bodyParser.json());

app.use(Rest.start({
  dbCredentials: {
    host: '127.0.0.1',
    user: 'root',
    password: devPassword.unique(), // edit to YOUR password in the file dev-password.js. Otherwise it will not work.
    database: 'mdb'
  },
  baseUrl: '/rest',
  runtimeErrors: true
}));

app.use(express.static('./www'));

app.listen('3000', () => console.log('MDB ACTIVE ON PORT 3000!'));

async function query(query, params) {
  const result = await Rest.db.query(query, params);
  return result.rows;
}

/* PERSONS DATA */
const persons = [
  {
    id: 1,
    versionId: 1,
    changerId: 1,
    firstName: 'Bill',
    lastName: 'Skarsgård',
    gender: 'Male',
    nationality: 'Sweden',
    miniBio: 'Bill Istvan Günther Skarsgård is a Swedish actor, known for his role in Simple Simon. Skarsgård is the son of actor Stellan Skarsgård, and My Skarsgård, and the brother of Alexander, Gustaf, Sam, Eija, Valter and half-brother to Ossian and Kolbjörn. In 2011, Skarsgård was nominated for a Guldbagge Award for his leading role as Simon in Simple Simon.',
    imagePath: 'http://thefw.com/files/2012/06/Nicolas-Cage-Cats5.jpg?w=630&h=491&q=75',
    birth: '19900809',
    death: null
  },{
    id: 2,
    versionId: 1,
    changerId: 1,
    firstName: 'Emma',
    lastName: 'Watson',
    gender: 'Female',
    nationality: 'United Kingdom',
    miniBio: 'Emma Watson (born 15 April 1990) is an English actress and snob who rose to prominence playing Hermione Granger, one of three starring roles in the Harry Potter film series. Watson was cast as Hermione at the age of nine, having previously acted only in school plays. From 2001 to 2011, she starred in eight Harry Potter films alongside Daniel Radcliffe and Rupert Grint. Watson\'s work on the Harry Potter series has earned her several awards and more than £10 million.',
    imagePath: 'http://thefw.com/files/2012/06/Nicolas-Cage-Cats5.jpg?w=630&h=491&q=75',
    birth: '19900415',
    death: null
  },{
    id: 3,
    versionId: 1,
    changerId: 1,
    firstName: 'Chris',
    lastName: 'Columbus',
    gender: 'Male',
    nationality: 'United States',
    miniBio: 'Christopher Joseph Columbus (born September 10, 1958) is an American film director, producer and screenwriter. Columbus had most success with the first film in the Harry Potter series, Harry Potter and the Sorcerer\'s Stone, along with Home Alone, winning a British Comedy Award for Best Comedy Film. Description above from the Wikipedia article Chris Columbus (filmmaker), licensed under CC-BY-SA, full list of contributors on Wikipedia.',
    imagePath: 'http://thefw.com/files/2012/06/Nicolas-Cage-Cats5.jpg?w=630&h=491&q=75',
    birth: '19580910',
    death: null
  },{
    id: 4,
    versionId: 1,
    changerId: 1,
    firstName: 'Andrés',
    lastName: 'Muschietti',
    gender: 'Male',
    nationality: 'Argentina',
    miniBio: 'Andrés Muschietti is a director, screenwriter and producer of film and television Argentina, graduated from the University of the cinema of Buenos Aires. Muschietti began working as a production assistant in 1996 in films shot in Buenos Aires "Moebius" and "Evita"; as well as also in the direction of trade.',
    imagePath: 'http://thefw.com/files/2012/06/Nicolas-Cage-Cats5.jpg?w=630&h=491&q=75',
    birth: '19730826',
    death: null
  },{
    id: 5,
    versionId: 1,
    changerId: 1,
    firstName: 'Russel',
    lastName: 'Crowe',
    gender: 'Male',
    nationality: 'United States',
    miniBio: 'Russell Ira Crowe was born in Wellington, New Zealand, to Jocelyn Yvonne (Wemyss) and John Alexander Crowe, both of whom catered movie sets. His maternal grandfather, Stanley Wemyss, was a cinematographer. Crowe´s recent ancestry includes Welsh (where his paternal grandfather was born, in Wrexham), English, Irish, Scottish, Norwegian, Swedish, and Maori (one of Crowe´s maternal great-grandmothers, Erana Putiputi Hayes Heihi, was Maori).',
    imagePath: 'http://thefw.com/files/2012/06/Nicolas-Cage-Cats5.jpg?w=630&h=491&q=75',
    birth: '19640407',
    death: null
  },{
    id: 6,
    versionId: 1,
    changerId: 1,
    firstName: 'Robert',
    lastName: 'De Niro',
    gender: 'Male',
    nationality: 'Italy',
    miniBio: 'One of the greatest actors of all time, Robert De Niro was born on August 17, 1943 in Manhattan, New York City, to artists Virginia (Admiral) and Robert De Niro Sr. His paternal grandfather was of Italian descent, and his other ancestry is English, Dutch, German, French and Irish. He was trained at the Stella Adler Conservatory and the American Workshop. De Niro first gained fame for his role in Bang the Drum Slowly (1973), but he gained his reputation as a volatile actor in Dödspolarna (1973), which was his first film with director Martin Scorsese. He received an Academy Award for Best Supporting Actor for his role in Gudfadern del II (1974) and received Academy Award nominations for best actor in Taxi Driver (1976), Deer Hunter (1978) and Cape Fear (1991). He received the Academy Award for Best Actor for his role as Jake LaMotta in Tjuren från Bronx (1980).',
    imagePath: 'http://thefw.com/files/2012/06/Nicolas-Cage-Cats5.jpg?w=630&h=491&q=75',
    birth: '19430817',
    death: null
  },{
    id: 7,
    versionId: 1,
    changerId: 1,
    firstName: 'Christopher',
    lastName: 'Lee',
    gender: 'Male',
    nationality: 'United Kingdom',
    miniBio: 'Sir Christopher Frank Carandini Lee was perhaps the only actor of his generation to have starred in so many films and cult saga. Although most notable for personifying bloodsucking vampire, Dracula, on screen, he portrayed other varied characters on screen, most of which were villains, whether it be Francisco Scaramanga in the James Bond film, Mannen med den gyllene pistolen (1974), or Count Dooku in Star Wars: Episod II - Klonerna anfaller (2002), or as the title monster in the Hammer Horror film, Mumiens hämnd (1959).',
    imagePath: 'http://thefw.com/files/2012/06/Nicolas-Cage-Cats5.jpg?w=630&h=491&q=75',
    birth: '19220427',
    death: '20150607'
  },{
    id: 8,
    versionId: 1,
    changerId: 1,
    firstName: 'Scarlett',
    lastName: 'Johansson',
    gender: 'Female',
    nationality: 'United States',
    miniBio: 'Scarlett Johansson was born in New York City. Her mother, Melanie Sloan, is from a Jewish family from the Bronx, and her father, Karsten Johansson, is a Danish-born architect, from Copenhagen. She has a sister, Vanessa Johansson, who is also an actress, a brother, Adrian, a twin brother, Hunter Johansson, born three minutes after her, and a paternal half-brother, Christian. Her grandfather was writer Ejner Johansson.',
    imagePath: 'http://thefw.com/files/2012/06/Nicolas-Cage-Cats5.jpg?w=630&h=491&q=75',
    birth: '19841122',
    death: null
  },{
    id: 9,
    versionId: 1,
    changerId: 1,
    firstName: 'Natalie',
    lastName: 'Portman',
    gender: 'Female',
    nationality: 'Israel',
    miniBio: 'Natalie was born Natalie Hershlag on June 9, 1981, in Jerusalem, Israel. She is the only child of Avner Hershlag, an Israeli-born doctor, and Shelley Stevens, an American-born artist (from Cincinnati, Ohio), who also acts as Natalie´s agent. She left Israel for Washington, D.C., when she was still very young. After a few more moves, her family finally settled in New York, where she still lives to this day. She graduated with honors, and her academic achievements allowed her to attend Harvard University. She was discovered by an agent in a pizza parlor at the age of 11. She was pushed towards a career in modeling but she decided that she would rather pursue a career in acting. She was featured in many live performances, but she made her powerful film debut in the movie Léon (1994) (aka "Léon"). Following this role Natalie won roles in such films as Heat (1995), Beautiful Girls (1996), and Mars Attacks! (1996).',
    imagePath: 'http://thefw.com/files/2012/06/Nicolas-Cage-Cats5.jpg?w=630&h=491&q=75',
    birth: '19810609',
    death: null
  },{
    id: 10,
    versionId: 1,
    changerId: 1,
    firstName: 'Nicolas',
    lastName: 'Cage',
    gender: 'Male',
    nationality: 'United States',
    miniBio: 'Nicolas Cage was born Nicolas Kim Coppola in Long Beach, California, the son of comparative literature professor August Coppola (whose brother is director Francis Ford Coppola) and dancer/choreographer Joy Vogelsang. He is of Italian (father) and Polish, German, and English (mother) descent. Cage changed his name early in his career to make his own reputation, succeeding brilliantly with a host of classic, quirky roles by the late 1980s.',
    imagePath: 'http://thefw.com/files/2012/06/Nicolas-Cage-Cats5.jpg?w=630&h=491&q=75',
    birth: '19640107',
    death: null
  },{
    id: 11,
    versionId: 1,
    changerId: 1,
    firstName: 'Lily',
    lastName: 'James',
    gender: 'Female',
    nationality: 'United Kingdom',
    miniBio: 'Lily James was born Lily Chloe Ninette Thomson in Esher, Surrey, to Ninette (Mantle), an actress, and Jamie Thomson, an actor and musician. Her grandmother, Helen Horton, was an American actress. She began her education at Arts Educational School in Tring and subsequently went on to study acting at the Guildhall School of Music and Drama in London, graduating in 2010.',
    imagePath: 'http://thefw.com/files/2012/06/Nicolas-Cage-Cats5.jpg?w=630&h=491&q=75',
    birth: '19890405',
    death: null
  }

  /*{
    firstName: '',
    lastName: '',
    gender: '',
    nationality: '',
    miniBio: '',
    imagePath: '',
    birth: '',
    death: '',
  },*/
];

/* FILMS DATA */
const films = [
  {
    id: 1,
    versionId: 1,
    changerId: 1,
    title: 'It',
    year: '2017',
    genre: 'Horror',
    plot: 'Suddenly, the small town of Derry, in the US state of Maine, is freaking out of terror when several children mysteriously begin to disappear. Some children face their biggest fears when they end up in the evil clown Pennywise Society, whose story as a killer extends far, far back in time. Bill Skarsgård plays the lead in the new horror movie It builds on Stephen Kings well-known novel with the same name.',
    imagePath: 'http://www.imdb.com/title/tt1396484/mediaviewer/rm1002251008',
    youtubeUrl: 'https://www.youtube.com/watch?v=xKJmEC5ieOk'
  },{
    id: 2,
    versionId: 1,
    changerId: 1,
    title: 'Harry Potter and the Chamber of Secrets',
    year: '2002',
    genre: 'Adventure',
    plot: 'The summer break is finally over! Harry Potter has longed back to his second year at Hogwarts School for Witchcraft and Witchcraft. But how will he stand out with the new, meticulous professor Lockman? What hides Hagrids past? And who\'s really unhappy myrtle? The real problems begin when someone, or something, glorifies one Hogwarteleven after another. Is it Harry\'s greatest enemy, Draco Malfoy, behind? Or is it that everyone at Hogwarts suspects - Harry Potter himself?',
    imagePath: 'http://www.imdb.com/title/tt0295297/mediaviewer/rm1029675264',
    youtubeUrl: 'https://www.youtube.com/watch?v=1bq0qff4iF8'
  },{
    id: 3,
    versionId: 1,
    changerId: 1,
    title: 'The Rock',
    year: '1996',
    genre: 'Action'/*,'Adventure','Thriller'*/,
    plot: 'A mStanley Goodspeed, who lives in Washington D.C., is a biochemist who works for the FBI. Soon after his fiancée Carla Pestalozzi announces that she is pregnant, Stanley gets a call from FBI director James Womack. Womack tells Stanley that San Francisco´s Alcatraz Island has been taken hostage, along with 81 tourists, by marine General Francis Xavier Hummel who, for years, has been protesting the government´s refusal to pay benefits to families of war veterans who died during covert military operations. The death of his wife Barbara Hummel on March 9, 1995 drove General Hummel over the edge, and now he´s holding hostages in order to get his point across. Stanley is needed because General Hummel has stolen some VX gas warheads and has announced that he will launch them onto San Francisco unless his demands are met. Stanley knows how to disarm the bombs, but Stanley needs someone who knows Alcatraz well enough to get him inside. That man is former British intelligence agent John Patrick.',
    imagePath: 'http://www.imdb.com/title/tt0117500/mediaviewer/rm2777683456',
    youtubeUrl: 'https://www.youtube.com/watch?v=6DWu_dT0Phc'
  },{
    id: 4,
    versionId: 1,
    changerId: 1,
    title: 'Con Air',
    year: '1997',
    genre: 'Action'/*,'Crime','Thriller'*/,
    plot: 'Cameron Poe, a highly decorated United States Army Ranger, came home to Alabama to his wife, Tricia, only to run into a few drunken regulars where Tricia works. Cameron unknowingly kills one of the drunks and is sent to a federal penitentiary for involuntary manslaughter for seven years. Cameron becomes eligible for parole and can now go home to his wife and daughter. Unfortunately, Cameron has to share a prison airplane with some of the country´s most dangerous criminals, who took control of the plane and are now planning to escape the country. Cameron has to find a way to stop them while playing along. Meanwhile, United States Marshal Vincent Larkin is trying to help Cameron get free and stop the criminals, including Cyrus "The Virus" Grissom.',
    imagePath: 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672',
    youtubeUrl: 'https://www.youtube.com/watch?v=EmTO6Z4_EvE'
  },{
    id: 5,
    versionId: 1,
    changerId: 1,
    title: 'Yes Man',
    year: '2008',
    genre: 'Comedy'/*,'Romance'*/,
    plot: 'Carl Allen is at a standstill. No future... Until the day he enrolls into a personal development program based on a very simple idea: say yes to everything! Carl discovers with amazement the magical power of "Yes", and sees his professional and romantic life turned upside down overnight: an unexpected promotion and a new girlfriend. But he´ll soon discover that better can be good´s enemy, and that all opportunities shouldn´t be taken.',
    imagePath: 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672',
    youtubeUrl: 'https://www.youtube.com/watch?v=yEYt-aP7klU'
  },{
    id: 6,
    versionId: 1,
    changerId: 1,
    title: 'Blade Runner 2049',
    year: '2017',
    genre: /*'Mystery','Science Fiction',*/'Thriller',
    plot: 'Thirty years after the events of the first film, a new blade runner, LAPD Officer K (Ryan Gosling), unearths a long-buried secret that has the potential to plunge what´s left of society into chaos. K´s discovery leads him on a quest to find Rick Deckard (Harrison Ford), a former LAPD blade runner who has been missing for 30 years.',
    imagePath: 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672',
    youtubeUrl: 'https://www.youtube.com/watch?v=6T2b0mp2hco'
  },{
    id: 7,
    versionId: 1,
    changerId: 1,
    title: 'Toy Story',
    year: '1995',
    genre: 'Animation'/*,'Adventure','Comedy'*/,
    plot: 'A little boy named Andy loves to be in his room, playing with his toys, especially his doll named "Woody". But, what do the toys do when Andy is not with them, they come to life. Woody believes that he has life (as a toy) good. However, he must worry about Andy´s family moving, and what Woody does not know is about Andy´s birthday party. Woody does not realize that Andy´s mother gave him an action figure known as Buzz Lightyear, who does not believe that he is a toy, and quickly becomes Andy´s new favorite toy. Woody, who is now consumed with jealousy, tries to get rid of Buzz. Then, both Woody and Buzz are now lost. They must find a way to get back to Andy before he moves without them, but they will have to pass through a ruthless toy killer, Sid Phillips.',
    imagePath: 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672',
    youtubeUrl: 'https://www.youtube.com/watch?v=4KPTXpQehio'
  },{
    id: 8,
    versionId: 1,
    changerId: 1,
    title: 'Chappie',
    year: '2015',
    genre: 'Action'/*,'Crime','Drama'*/,
    plot: 'In Johannesburg, the police department reduced the high rating of criminality using robots from the Tetravaal Company, designed by the engineer Deon Wilson. The former military Vincent Moore is envious of Deon, since he has developed another project called Moose, but neither Tetravaal nor the police department is interested. Deon has just developed an Artificial Intelligence but the Tetravaal´s CEO Michelle Bradley asks him to abort the project. Deon decides to bring the damaged Robot 22 that was sent to be crushed to test his A.I. However he is kidnapped by the criminals Ninja, Yo-Landi and Amerika that want him to stop the robot cops. When they see the damaged robot in the van, they force Deon to program it to heist banks with them and they call it Chappie. However, Chappie acts like a child and need to be trained to learn and grow. Meanwhile Vincent follows Deon and plots an evil scheme to activate his robot.',
    imagePath: 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672',
    youtubeUrl: 'https://www.youtube.com/watch?v=l6bmTNadhJE'
  },{
    id: 9,
    versionId: 1,
    changerId: 1,
    title: 'Her',
    year: '2013',
    genre: 'Drama'/*,'Romance','Science Fiction'*/,
    plot: 'Theodore is a lonely man in the final stages of his divorce. When he´s not working as a letter writer, his down time is spent playing video games and occasionally hanging out with friends. He decides to purchase the new OS1, which is advertised as the world´s first artificially intelligent operating system, "It´s not just an operating system, it´s a consciousness," the ad states. Theodore quickly finds himself drawn in with Samantha, the voice behind his OS1. As they start spending time together they grow closer and closer and eventually find themselves in love. Having fallen in love with his OS, Theodore finds himself dealing with feelings of both great joy and doubt. As an OS, Samantha has powerful intelligence that she uses to help Theodore in ways others hadn´t, but how does she help him deal with his inner conflict of being in love with an OS?',
    imagePath: 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672',
    youtubeUrl: 'https://www.youtube.com/watch?v=ne6p6MfLBxc'
  },{
    id: 10,
    versionId: 1,
    changerId: 1,
    title: 'Dredd',
    year: '2012',
    genre: 'Action'/*,'Crime','Science Fiction'*/,
    plot: 'The future America is an irradiated waste land. On its East Coast, running from Boston to Washington DC, lies Mega City One - a vast, violent metropolis where criminals rule the chaotic streets. The only force of order lies with the urban cops called "Judges" who possess the combined powers of judge, jury and instant executioner. Known and feared throughout the city, Dredd is the ultimate Judge, challenged with ridding the city of its latest scourge - a dangerous drug epidemic that has users of "Slo-Mo" experiencing reality at a fraction of its normal speed. During a routine day on the job, Dredd is assigned to train and evaluate Cassandra Anderson, a rookie with powerful psychic abilities thanks to a genetic mutation. A heinous crime calls them to a neighborhood where fellow Judges rarely dare to venture - a 200 storey vertical slum controlled by prostitute turned drug lord Ma-Ma and her ruthless clan. When they capture one of the clan´s inner circle, Ma-Ma overtakes the compound´s ...',
    imagePath: 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672',
    youtubeUrl: 'https://www.youtube.com/watch?v=qVIba2N6MTA'
  },{
    id: 11,
    versionId: 1,
    changerId: 1,
    title: 'Iron Man',
    year: '2008',
    genre: 'Action'/*,'Adventure','Science Fiction'*/,
    plot: 'Tony Stark. Genius, billionaire, playboy, philanthropist. Son of legendary inventor and weapons contractor Howard Stark. When Tony Stark is assigned to give a weapons presentation to an Iraqi unit led by Lt. Col. James Rhodes, he´s given a ride on enemy lines. That ride ends badly when Stark´s Humvee that he´s riding in is attacked by enemy combatants. He survives - barely - with a chest full of shrapnel and a car battery attached to his heart. In order to survive he comes up with a way to miniaturize the battery and figures out that the battery can power something else. Thus Iron Man is born. He uses the primitive device to escape from the cave in Iraq. Once back home, he then begins work on perfecting the Iron Man suit. But the man who was put in charge of Stark Industries has plans of his own to take over Tony´s technology for other matters.',
    imagePath: 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672',
    youtubeUrl: 'https://www.youtube.com/watch?v=8hYlB38asDY'
  },{
    id: 12,
    versionId: 1,
    changerId: 1,
    title: 'Man of Steel',
    year: '2013',
    genre: 'Action'/*,'Adventure','Fantasy'*/,
    plot: 'A young boy learns that he has extraordinary powers and is not of this Earth. As a young man, he journeys to discover where he came from and what he was sent here to do. But the hero in him must emerge if he is to save the world from annihilation and become the symbol of hope for all mankind.',
    imagePath: 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672',
    youtubeUrl: 'https://www.youtube.com/watch?v=T6DJcgm3wNY'
  },{
    id: 13,
    versionId: 1,
    changerId: 1,
    title: 'The Lord of the Rings: The Fellowship of the Ring',
    year: '2001',
    genre: 'Action'/*,'Drama','Fantasy'*/,
    plot: 'An ancient Ring thought lost for centuries has been found, and through a strange twist in fate has been given to a small Hobbit named Frodo. When Gandalf discovers the Ring is in fact the One Ring of the Dark Lord Sauron, Frodo must make an epic quest to the Cracks of Doom in order to destroy it! However he does not go alone. He is joined by Gandalf, Legolas the elf, Gimli the Dwarf, Aragorn, Boromir and his three Hobbit friends Merry, Pippin and Samwise. Through mountains, snow, darkness, forests, rivers and plains, facing evil and danger at every corner the Fellowship of the Ring must go. Their quest to destroy the One Ring is the only hope for the end of the Dark Lords reign!',
    imagePath: 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672',
    youtubeUrl: 'https://www.youtube.com/watch?v=Pki6jbSbXIY'
  },{
    id: 14,
    versionId: 1,
    changerId: 1,
    title: 'The Lord of the Rings: The Two Towers',
    year: '2002',
    genre: 'Action'/*,'Drama','Fantasy'*/,
    plot: 'The continuing quest of Frodo and the Fellowship to destroy the One Ring. Frodo and Sam discover they are being followed by the mysterious Gollum. Aragorn, the Elf archer Legolas and Gimli the Dwarf encounter the besieged Rohan kingdom, whose once great King Theoden has fallen under Saruman´s deadly spell.',
    imagePath: 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672',
    youtubeUrl: 'https://www.youtube.com/watch?v=2dlRvAjU_RI'
  },{
    id: 15,
    versionId: 1,
    changerId: 1,
    title: 'The Lord of the Rings: The Return of the King',
    year: '2003',
    genre: 'Action'/*,'Drama','Fantasy'*/,
    plot: 'The final confrontation between the forces of good and evil fighting for control of the future of Middle-earth. Hobbits: Frodo and Sam reach Mordor in their quest to destroy the "one ring", while Aragorn leads the forces of good against Sauron´s evil army at the stone city of Minas Tirith.',
    imagePath: 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672',
    youtubeUrl: 'https://www.youtube.com/watch?v=WIrRJ8bCZYQ'
  },{
    id: 16,
    versionId: 1,
    changerId: 1,
    title: 'Fight Club',
    year: '1999',
    genre: 'Drama',
    plot: 'A nameless first person narrator (Edward Norton) attends support groups in attempt to subdue his emotional state and relieve his insomniac state. When he meets Marla (Helena Bonham Carter), another fake attendee of support groups, his life seems to become a little more bearable. However when he associates himself with Tyler (Brad Pitt) he is dragged into an underground fight club and soap making scheme. Together the two men spiral out of control and engage in competitive rivalry for love and power. When the narrator is exposed to the hidden agenda of Tyler´s fight club, he must accept the awful truth that Tyler may not be who he says he is.',
    imagePath: 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672',
    youtubeUrl: 'https://www.youtube.com/watch?v=_XgQA9Ab0Gw'
  },{
    id: 17,
    versionId: 1,
    changerId: 1,
    title: 'The Shawshank Redemption',
    year: '1994',
    genre: 'Crime'/*,'Drama'*/,
    plot: 'Chronicles the experiences of a formerly successful banker as a prisoner in the gloomy jailhouse of Shawshank after being found guilty of a crime he did not commit. The film portrays the man´s unique way of dealing with his new, torturous life; along the way he befriends a number of fellow prisoners, most notably a wise long-term inmate named Red.',
    imagePath: 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672',
    youtubeUrl: 'https://www.youtube.com/watch?v=6hB3S9bIaco'
  },{
    id: 18,
    versionId: 1,
    changerId: 1,
    title: 'Leon',
    year: '1994',
    genre: 'Crime'/*,'Drama','Thriller'*/,
    plot: 'After her father, mother, older sister and little brother are killed by her father´s employers, the 12-year-old daughter of an abject drug dealer is forced to take refuge in the apartment of a professional hitman who at her request teaches her the methods of his job so she can take her revenge on the corrupt DEA agent who ruined her life by killing her beloved brother.',
    imagePath: 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672',
    youtubeUrl: 'https://www.youtube.com/watch?v=DcsirofJrlM'
  },{
    id: 19,
    versionId: 1,
    changerId: 1,
    title: 'Interstellar',
    year: '2014',
    genre: 'Adventure'/*,'Drama','Science Fiction'*/,
    plot: 'Earth´s future has been riddled by disasters, famines, and droughts. There is only one way to ensure mankind´s survival: Interstellar travel. A newly discovered wormhole in the far reaches of our solar system allows a team of astronauts to go where no man has gone before, a planet that may have the right environment to sustain human life.',
    imagePath: 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672',
    youtubeUrl: 'https://www.youtube.com/watch?v=zSWdZVtXT7E'
  },{
    id: 20,
    versionId: 1,
    changerId: 1,
    title: 'Gladiator',
    year: '2000',
    genre: 'Action'/*,'Adventure','Drama'*/,
    plot: 'Maximus is a powerful Roman general, loved by the people and the aging Emperor, Marcus Aurelius. Before his death, the Emperor chooses Maximus to be his heir over his own son, Commodus, and a power struggle leaves Maximus and his family condemned to death. The powerful general is unable to save his family, and his loss of will allows him to get captured and put into the Gladiator games until he dies. The only desire that fuels him now is the chance to rise to the top so that he will be able to look into the eyes of the man who will feel his revenge.',
    imagePath: 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672',
    youtubeUrl: 'https://www.youtube.com/watch?v=Q-b7B8tOAQU'
  },{
    id: 21,
    versionId: 1,
    changerId: 1,
    title: 'Forest Gump',
    year: '1994',
    genre: 'Comedy'/*,'Drama','Romance'*/,
    plot: 'Forrest Gump is a simple man with a low I.Q. but good intentions. He is running through childhood with his best and only friend Jenny. His "mama" teaches him the ways of life and leaves him to choose his destiny. Forrest joins the army for service in Vietnam, finding new friends called Dan and Bubba, he wins medals, creates a famous shrimp fishing fleet, inspires people to jog, starts a ping-pong craze, creates the smiley, writes bumper stickers and songs, donates to people and meets the president several times. However, this is all irrelevant to Forrest who can only think of his childhood sweetheart Jenny Curran, who has messed up her life. Although in the end all he wants to prove is that anyone can love anyone.',
    imagePath: 'http://www.imdb.com/title/tt0109830/mediaviewer/rm1954748672',
    youtubeUrl: 'https://www.youtube.com/watch?v=uPIEn0M8su0'
  }/*,{
    title: '',
    year: '',
    genre: '',
    plot: '',
    imagePath: ''
  },{
    title: '',
    year: '',
    genre: '',
    plot: '',
    imagePath: ''
  }*/

  /*{
    title: '',
    year: '',
    genre: '',
    plot: '',
    imagePath: '',
    timeCreated: ''
  }*/
];

/* REVIEWS DATA */
const reviews = [
  {
    id: 1,
    changerId: 1,
    filmId: 2,
    rating: 3,
    textBody: 'Good! Pretty darn good'
  },{
    id: 2,
    changerId: 1,
    filmId: 4,
    rating: 1,
    textBody: null
  },{
    id: 3,
    changerId: 1,
    filmId: 4,
    rating: 5,
    textBody: null
  },{
    id: 4,
    changerId: 1,
    filmId: 7,
    rating: 3,
    textBody: null
  },{
    id: 5,
    changerId: 1,
    filmId: 7,
    rating: 4,
    textBody: null
  },{
    id: 6,
    changerId: 1,
    filmId: 18,
    rating: 2,
    textBody: null
  },{
    id: 7,
    changerId: 1,
    filmId: 16,
    rating: 5,
    textBody: 'Absolutely divine'
  },{
    id: 8,
    changerId: 1,
    filmId: 12,
    rating: 1,
    textBody: 'Never again'
  },{
    id: 9,
    changerId: 1,
    filmId: 12,
    rating: 3,
    textBody: 'alright, I guess'
  },{
    id: 10,
    changerId: 1,
    filmId: 12,
    rating: 2,
    textBody: null
  },{
    id: 11,
    changerId: 1,
    filmId: 9,
    rating: 3,
    textBody: null
  },{
    id: 12,
    changerId: 1,
    filmId: 9,
    rating: 5,
    textBody: 'Awesomesauce'
  },{
    id: 13,
    changerId: 1,
    filmId: 4,
    rating: 4,
    textBody: 'Great!'
  },{
    id: 14,
    changerId: 1,
    filmId: 4,
    rating: 4,
    textBody: null
  },{
    id: 15,
    changerId: 1,
    filmId: 4,
    rating: 5,
    textBody: null
  },{
    id: 16,
    changerId: 1,
    filmId: 1,
    rating: 4,
    textBody: 'I really liked it'
  },{
    id: 17,
    changerId: 1,
    filmId: 1,
    rating: 5,
    textBody: 'Gosh... Best movie, I ever done saw'
  },{
    id: 18,
    changerId: 1,
    filmId: 20,
    rating: 2,
    textBody: 'A torture to watch'
  },{
    id: 19,
    changerId: 1,
    filmId: 20,
    rating: 3,
    textBody: 'watchable'
  },{
    id: 20,
    changerId: 1,
    filmId: 20,
    rating: 2,
    textBody: 'Terribly boring'
  }
];

/* USERS DATA */
const users = [
  {
    id: 1,
    versionId: 1,
    warnings: 0,
    firstName: 'Amy',
    lastName: 'Bellinger',
    email: 'admin@mdb.com',
    password: 'amy123',
    phone: '555-223344',
    role: 'admin'
  },{
    id: 2,
    versionId: 1,
    warnings: 0,
    firstName: 'Jonathan',
    lastName: 'Carlisle',
    email: 'jonathan@carlisle.com',
    password: 'jonathan123',
    phone: '555-223344',
    role: 'user'
  },{
    id: 3,
    versionId: 1,
    warnings: 0,
    firstName: 'Bobby',
    lastName: 'Bobsson',
    email: 'bobby@bobsson.com',
    password: 'bobby123',
    phone: '555-223345',
    role: 'user'
  },{
    id: 4,
    versionId: 1,
    warnings: 1,
    firstName: 'Stan',
    lastName: 'Marsh',
    email: 'stan@marsh.com',
    password: 'stan123',
    phone: '555-223346',
    role: 'user'
  },{
    id: 5,
    versionId: 1,
    warnings: 2,
    firstName: 'Angelo',
    lastName: 'Magic',
    email: 'angelo@magic.com',
    password: 'angelo123',
    phone: '555-223347',
    role: 'user'
  },{
    id: 6,
    versionId: 1,
    warnings: 3,
    firstName: 'Robert',
    lastName: 'Baratheon',
    email: 'robert@baratheon.com',
    password: 'barry123',
    phone: '555-223348',
    role: 'banned'
  }
];

/* USERS DATA */
const films_actors = [
  {
    filmId: 1,
    actorId: 1,
    changerId: 4,
    character: 'Chap',
    isMainCharacter: 1
  },{
    filmId: 3,
    actorId: 2,
    changerId: 5,
    character: 'The Wizard',
    isMainCharacter: 1
  },{
    filmId: 5,
    actorId: 3,
    changerId: 1,
    character: 'Conan',
    isMainCharacter: 1
  },{
    filmId: 20,
    actorId: 4,
    changerId: 3,
    character: 'Hodor',
    isMainCharacter: 1
  },{
    filmId: 19,
    actorId: 5,
    changerId: 2,
    character: 'Mario',
    isMainCharacter: 1
  },{
    filmId: 10,
    actorId: 6,
    changerId: 1,
    character: 'The orc boss',
    isMainCharacter: 0
  },{
    filmId: 13,
    actorId: 7,
    changerId: 4,
    character: 'Jackie Lee',
    isMainCharacter: 1
  },{
    filmId: 17,
    actorId: 8,
    changerId: 4,
    character: 'Amy Long',
    isMainCharacter: 1
  },{
    filmId: 18,
    actorId: 9,
    changerId: 4,
    character: 'Fara',
    isMainCharacter: 1
  },{
    filmId: 5,
    actorId: 11,
    changerId: 4,
    character: 'Morgan',
    isMainCharacter: 0
  },{
    filmId: 4,
    actorId: 11,
    changerId: 4,
    character: 'Sauron',
    isMainCharacter: 0
  },{
    filmId: 3,
    actorId: 11,
    changerId: 1,
    character: 'Bael Long',
    isMainCharacter: 0
  },{
    filmId: 2,
    actorId: 10,
    changerId: 4,
    character: 'Mr Andersson',
    isMainCharacter: 0
  },{
    filmId: 15,
    actorId: 11,
    changerId: 4,
    character: 'Eric Freeman',
    isMainCharacter: 0
  },{
    filmId: 20,
    actorId: 1,
    changerId: 4,
    character: 'Stan Marsh',
    isMainCharacter: 1
  },{
    filmId: 20,
    actorId: 10,
    changerId: 4,
    character: 'Frodo Toiletseat',
    isMainCharacter: 0
  },{
    filmId: 19,
    actorId: 11,
    changerId: 4,
    character: 'Joe Gorilla',
    isMainCharacter: 0
  },{
    filmId: 21,
    actorId: 1,
    changerId: 4,
    character: 'The Person',
    isMainCharacter: 0
  },{
    filmId: 21,
    actorId: 2,
    changerId: 4,
    character: 'Bobby Ray',
    isMainCharacter: 0
  },{
    filmId: 21,
    actorId: 3,
    changerId: 4,
    character: 'Stan Silver',
    isMainCharacter: 0
  },{
    filmId: 21,
    actorId: 4,
    changerId: 4,
    character: 'Garry Goldman',
    isMainCharacter: 1
  },{
    filmId: 21,
    actorId: 5,
    changerId: 4,
    character: 'Joe Average',
    isMainCharacter: 1
  },{
    filmId: 21,
    actorId: 6,
    changerId: 4,
    character: 'Pip Persson',
    isMainCharacter: 0
  }
];

/* USERS DATA */
const films_directors = [
  {
    filmId: 1,
    directorId: 1,
    changerId: 1
  },{
    filmId: 1,
    directorId: 2,
    changerId: 1
  },{
    filmId: 1,
    directorId: 3,
    changerId: 1
  },{
    filmId: 2,
    directorId: 1,
    changerId: 1
  },{
    filmId: 3,
    directorId: 4,
    changerId: 1
  },{
    filmId: 4,
    directorId: 5,
    changerId: 1
  },{
    filmId: 5,
    directorId: 3,
    changerId: 1
  },{
    filmId: 6,
    directorId: 7,
    changerId: 1
  },{
    filmId: 7,
    directorId: 1,
    changerId: 1
  },{
    filmId: 8,
    directorId: 2,
    changerId: 1
  },{
    filmId: 8,
    directorId: 3,
    changerId: 1
  },{
    filmId: 8,
    directorId: 4,
    changerId: 1
  },{
    filmId: 9,
    directorId: 7,
    changerId: 1
  },{
    filmId: 10,
    directorId: 1,
    changerId: 1
  },{
    filmId: 11,
    directorId: 2,
    changerId: 1
  },{
    filmId: 11,
    directorId: 3,
    changerId: 1
  },{
    filmId: 11,
    directorId: 4,
    changerId: 1
  },{
    filmId: 12,
    directorId: 5,
    changerId: 1
  },{
    filmId: 13,
    directorId: 6,
    changerId: 1
  },{
    filmId: 14,
    directorId: 1,
    changerId: 1
  },{
    filmId: 15,
    directorId: 1,
    changerId: 1
  },{
    filmId: 16,
    directorId: 2,
    changerId: 1
  },{
    filmId: 17,
    directorId: 3,
    changerId: 1
  },{
    filmId: 17,
    directorId: 4,
    changerId: 1
  }
];

/* CREATE PERSONS */
function createPerson() {
  var changerId = 1;
  var versionId = 1;
  const result = persons.map(person => ({
    id: person.id,
    versionId: versionId,
    changerId: changerId,
    firstName: person.firstName,
    lastName: person.lastName,
    gender: person.gender,
    nationality: person.nationality,
    miniBio: person.miniBio,
    imagePath: person.imagePath,
    birth: person.birth,
    death: person.death,
    timeCreated: person.timeCreated
  }));
  // console.log(result);
  return result;
}

/* CREATE FILMS */
function createFilm() {
  var changerId = 1;
  var versionId = 1;
  const result = films.map(film => ({
    id: film.id,
    versionId: versionId,
    changerId: changerId,
    title: film.title,
    year: film.year,
    genre: film.genre,
    plot: film.plot,
    imagePath: film.imagePath,
    youtubeUrl: film.youtubeUrl
    /*,
    timeCreated: film.timeCreated*/
  }));
  // console.log(result);
  return result;
}

/* CREATE USERS */
function createUser() {
  var versionId = 1;
  const result = users.map(user => ({
    id: user.id,
    versionId: versionId,
    warnings: user.warnings,
    firstName: user.firstName,
    lastName: user.lastName,
    email: user.email,
    password: user.password,
    phone: user.phone,
    role: user.role/*,
    timeCreated: user.timeCreated*/
  }));
  return result;
}

/* CREATE REVIEWS */
function createReview() {
  var changerId = 1;
  const result = reviews.map(review => ({
    id: review.id,
    filmId: review.filmId,
    changerId: changerId,
    filmId: review.filmId,
    rating: review.rating,
    textBody: review.textBody/*,
    timeCreated: review.timeCreated*/
  }));
  // console.log(result);
  return result;
}

/* CREATE films_actors  */
function createActorInFilm() {
  var changerId = 1;
  const result = films_actors.map(actorInFilm => ({
    filmId: actorInFilm.filmId,
    actorId: actorInFilm.actorId,
    changerId: changerId,
    character: actorInFilm.character,
    isMainCharacter: actorInFilm.isMainCharacter
  }));
  return result;
}

/* CREATE films_directors */
function createDirectorFilm() {
  var changerId = 1;
  const result = films_directors.map(directorFilm => ({
    filmId: directorFilm.filmId,
    directorId: directorFilm.directorId,
    changerId: changerId
  }));
  return result;
}

/* DELETE DUMMY DATA */
async function deleteDummyData() {
  await query('DELETE FROM films');
  await query('DELETE FROM persons');
  await query('DELETE FROM reviews');
  await query('DELETE FROM users');
  await query('DELETE FROM films_actors');
  await query('DELETE FROM films_directors');
}

/* CREATE DUMMY DATA */
async function createDummyData() {
  /* DELETE PREVIOUSLY USED DUMMY DATA */
  await deleteDummyData();

  /* INSERT PERSONS INTO TABLE */
  for (let person of createPerson()) {
    await query('INSERT INTO persons SET ?', person);
  }

  /* INSERT FILMS INTO TABLE */
  for (let film of createFilm()) {
    await query('INSERT INTO films SET ?', film);
  }

    /* INSERT USERS INTO TABLE */
  for (let user of createUser()) {
    await query('INSERT INTO users SET ?', user);
  }

  /* INSERT REVIEWS INTO TABLE */
  for (let review of createReview()) {
    await query('INSERT INTO reviews SET ?', review);
  }

  /* INSERT ACTORS IN FILMS INTO TABLE */
  for (let actorInFilm of createActorInFilm()) {
    await query('INSERT INTO films_actors SET ?', actorInFilm);
  }
  /* INSERT ACTORS IN FILMS INTO TABLE */
  for (let directorFilm of createDirectorFilm()) {
    await query('INSERT INTO films_directors SET ?', directorFilm);
  }

  process.exit();
}

createDummyData();