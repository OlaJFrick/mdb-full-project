import { Component, OnInit } from '@angular/core';
import { RestService } from '../../services/rest.service';
import { Location, LocationStrategy, PathLocationStrategy } from '@angular/common';
import { StarRatingComponent } from '../../reusable-components/star-rating/star-rating.component';

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
  // film: any;

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
      this.reviewstatus = 'No reviews';
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
