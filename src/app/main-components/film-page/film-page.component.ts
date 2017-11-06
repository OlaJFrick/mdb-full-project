import { Component, OnInit } from '@angular/core';
import { RestService } from '../../services/rest.service';
import { Location, LocationStrategy, PathLocationStrategy } from '@angular/common';
import { StarRatingComponent } from '../../reusable-components/star-rating/star-rating.component';
import { DomSanitizer } from '@angular/platform-browser';

@Component({
  selector: 'app-film-page',
  templateUrl: './film-page.component.html',
  styleUrls: ['./film-page.component.scss'],
  providers: [
    RestService,
    Location, { provide: LocationStrategy, useClass: PathLocationStrategy }
  ]
})

export class FilmPageComponent implements OnInit {
  film: any = {};
  reviews: any;
  filmid: any;
  filmVersionId: any;
  reviewstatus = '';
  reviewForm = false;
  directorData: any;
  actorData: any;
  highlight = 'row align-items-center mb-3 bg-secondary py-3 rounded';

  constructor(private restservice: RestService, private location: Location) {
    this.film.imagePath = 'default.png';
  }

  ngOnInit() {
    this.filmid = Number (this.location.path().slice(11));

    this.restservice.get('all_films_list', this.filmid).then(data => {
      this.film = data.json();
      this.filmVersionId = this.film.versionId;
    }, err => {
      console.log('Error occured.');
    });

    this.restservice.get('film_directed', this.filmid).then(data => {
      this.directorData = data.json();
      // console.log(this.directorData);
    }, err => {
      console.log('director error');
    });

    this.restservice.get('film_roles').then(data => {
     this.actorData = data.json().filter((res) => {
           return res.filmId === this.filmid;
         });
    }, err => {
      console.log('actor error');
    });

    this.restservice.get('all_reviews_list?order_by=timeCreated&desc=1').then(data => {
        this.loadReviews(data);
    }, err => {
        console.log('Error occured.');
    });
  }

  loadReviews(data) {
    this.reviews = data.json().filter((res) => {
      return res.id === this.filmid;
    });

    if (this.reviews.length === 0) {
      this.reviewstatus = 'No reviews yet';
    }
  }

  onSubmit(form: any): void {

      // need to be added afte we have sessions working.
      form.changerId = 1;
      form.filmId = this.filmid;
      console.log('you submitted value:', form);

      this.restservice.put('reviews', form).then(res => {
        res.json();
        this.ngOnInit()
      }, err => {
        console.log('Error occured.');
      });
    }

  saveEditable(value, table, colName) {

    const body = this.film;
    body[colName] = value;

    // OPPPS Change after login is fixed.
    body['changerId'] = 3;

    delete body.id;
    delete body.avgRating;
    delete body.ratingCount;
    delete body.starring;
    delete body.directed;
    delete body.versionId;
    delete body.timeCreated;

    // console.log(body);
    // body['versionId'] = this.filmVersionId + 1;

    // call to http service
    console.log('films', body, 1);
    this.restservice.postVid(table, body, this.filmid).then(res => {
      res.json();
    }, err => {
      console.log('Error occured.');
    });
  }
}
