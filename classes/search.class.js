module.exports = class Search {

  async search() {
    /* SEARCH THROUGH CURRENT_FILMS */
    let filmsKeyword = 'igh';

    let sqlCurrentFilms = 'SELECT id, title, year, genre FROM current_films WHERE ';
    sqlCurrentFilms += 'title LIKE "%' + filmsKeyword + '%"';
    sqlCurrentFilms += 'OR year LIKE "%' + filmsKeyword + '%"';
    sqlCurrentFilms += 'OR genre LIKE "%' + filmsKeyword + '%"';

    let filmsResult = await this.query(sqlCurrentFilms);

    /* SEARCH THROUGH CURRENT_ACTORS */
    let actorsKeyword = 'ska';

    let sqlCurrentActors = 'SELECT id, firstName, lastName FROM current_actors WHERE ';
    sqlCurrentActors += 'firstName LIKE "%' + actorsKeyword + '%"';
    sqlCurrentActors += 'lastName LIKE "%' + actorsKeyword + '%"';

    let actorsResult = await this.query(sqlCurrentActors);

    /* SEARCH THROUGH CURRENT_DIRECTORS */
    let directorsKeyword = 'ska';

    let sqlCurrentDirectors = 'SELECT id, firstName, lastName FROM current_directors WHERE ';
    sqlCurrentDirectors += 'firstName LIKE "%' + directorsKeyword + '%"';
    sqlCurrentDirectors += 'lastName LIKE "%' + directorsKeyword + '%"';

    let DirectorsResult = await this.query(sqlCurrentDirectors);

    // console.log({
    //   films: filmsResult,
    //   actors: actorsResult,
    //   directors: directorsResult
    // });

    /* OUTPUT RESULTS */
    this.res.json({
      films: filmsResult,
      actors: actorsResult,
      directors: directors
    });
  }

  /* QUERY HELPER FUNCTION */
  async query(query, params) {
    let result = await Rest.db.query(query, params);
    return result.rows;
  }

}
