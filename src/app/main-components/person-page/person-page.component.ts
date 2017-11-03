import { Component, OnInit } from '@angular/core';
import { RestService } from '../../services/rest.service';
import { Location, LocationStrategy, PathLocationStrategy } from '@angular/common';

@Component({
  selector: 'app-person-page',
  templateUrl: './person-page.component.html',
  styleUrls: ['./person-page.component.scss'],
  providers: [
    RestService,
    Location, { provide: LocationStrategy, useClass: PathLocationStrategy }
  ]
})

export class PersonPageComponent implements OnInit {
  personData: any = {};
  personId: any;

  directorData: any = {};

  constructor(private restservice: RestService, private location: Location) {
    this.personData.imagePath = 'default.png';
  }

  ngOnInit() {

    /* PERSON */
    this.personId = this.location.path().slice(13);
    // console.log(this.personId);

    this.restservice.get('persons', this.personId).then(data => {
      this.personData = data.json();
      // console.log('persons', this.personData);
    }, err => {
      console.log('persons error');
    });

    /* DIRECTOR */
    this.restservice.get('person_as_director', this.personId).then(data => {
      this.directorData = data.json();
      console.log(this.directorData);
    }, err => {
      console.log('director error');
    });

  }

}
