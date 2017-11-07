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

  directorData: any = [];
  actorData: any = [];

  constructor(private restservice: RestService, private location: Location) {
    this.personData.imagePath = 'default.png';
  }

  ngOnInit() {
    this.personId = this.location.path().slice(13);

    /* PERSON */
    this.restservice.get('persons', this.personId).then(data => {
      this.personData = data.json();
    }, err => {
      console.log('persons error');
    });

    /* DIRECTOR */
    this.restservice.get(`person_as_director?personId=${this.personId}`).then(data => {
      this.directorData = data.json();
    }, err => {
      console.log('director error');
    });

    /* ACTOR */
    this.restservice.get(`person_as_actor?personId=${this.personId}`).then(data => {
      this.actorData = data.json();
    }, err => {
      console.log('actor error');
    });

  }

  saveEditable(value) {
    // call to http service
    console.log('http.service: ' + value);
  }

}
