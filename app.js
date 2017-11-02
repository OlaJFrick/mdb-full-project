const express = require('express'),
  	  app = express(),
      bodyParser = require('body-parser'),
      cookieParser = require('cookie-parser'),
      Rest = require('./classes/rest.class'),
      Cookiesession = require('./classes/cookie-session.class'),
      Login = require('./classes/login.class'),
      Search = require('./classes/search.class'),
      devPassword = require('./dev-password');

process.on('unhandledRejection', error=>console.log('unhandledRejection', error));

const cookieSession = new Cookiesession();

// Added CORS to read further: https://enable-cors.org/server_expressjs.html
app.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  next();
});

/* MIDDLEWARE */
app.use(bodyParser.json());
app.use(cookieParser());
app.use(new Cookiesession().middleware());


/* NOT MIDDLEWARE */
new Login(app);
new Search(app);

app.use(Rest.start({
  dbCredentials: {
    host: '127.0.0.1',
    user: 'root',
    password: devPassword.unique(), // edit to YOUR password in the file dev-password.js. Otherwise it will not work.
    database: 'mdb'
  },
  baseUrl: '/rest',
  baseUrlForVidTables: '/vid',
  idMap: {
    films_actors: 'filmId',
    films_directors: 'filmId',
    film_roles: 'filmId',
    person_as_actor: 'filmId',
    person_as_director: 'filmId'
  },
  runtimeErrors: false
}));

global.dbQuery = Rest.query;

app.use(express.static('./src'));

app.listen('3000', () => console.log('MDB ACTIVE ON PORT 3000!'));