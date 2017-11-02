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
  filmdata: any = {};
  filmid: any;
  film: any;

  constructor(private restservice: RestService, private location: Location) {
    this.filmdata.imagePath = 'default.png';
  }

  ngOnInit() {
    this.filmid = this.location.path().slice(11);

    this.restservice.get('current_films', this.filmid).then(data => {
      this.filmdata = data.json();
      console.log(data.json());
    }, err => {
      console.log('Error occured.');
    });
  }

}
