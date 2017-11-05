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

    this.restservice.get('all_reviews_list').then(data => {
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
      console.log('you submitted value:', form);
    }

  saveEditable(value) {
    // call to http service
    console.log('http.service: ' + value);
  }
}
