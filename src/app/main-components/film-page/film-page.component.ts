import { Component, OnInit } from '@angular/core';
import { RestService } from '../../services/rest.service';
import { Location, LocationStrategy, PathLocationStrategy } from '@angular/common';

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
  location: Location;
  filmid: any;
  film: any;

  constructor(private restservice: RestService, location: Location) {
    this.location = location;
    this.filmdata.imagePath = 'default.png';
  }

  ngOnInit() {
    this.filmid = this.location.path().slice(11);

    this.restservice.get('current_films', this.filmid).then(data => {
      this.onDbLoad(data);
    }, err => {
      console.log('Error occured.');
    });

    this.manipulate();
  }

  onDbLoad(data) {
    const result: any = data.json();
    this.filmdata = result;
    console.log(this.filmdata, 'this.filmdata');
  }

  manipulate() {

  }

}
