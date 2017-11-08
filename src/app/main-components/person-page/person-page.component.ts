import { Component, OnInit } from '@angular/core';
import { Http } from '@angular/http';
import { RestService } from '../../services/rest.service';
import { GlobalService } from '../../services/global.service';
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
  editableSelect: number;
  countrySelectOptions = [];

  constructor(private http: Http,
    private restservice: RestService,
    private location: Location,
    private globalservice: GlobalService) {
    this.personData.imagePath = 'default.png';
  }

  ngOnInit() {
    this.personId = this.location.path().slice(13);

    /* PERSON */
    this.restservice.getVid('persons', this.personId).then(data => {
      this.personData = data.json();
    }, err => {
      console.log('persons error');
    });

    /* DIRECTOR */
    this.restservice.get(`person_as_director?personId=${this.personId}`).then(data => {
      this.directorData = data.json();
      console.log('dir', this.directorData);
    }, err => {
      console.log('director error');
    });

    /* ACTOR */
    this.restservice.get(`person_as_actor?personId=${this.personId}`).then(data => {
      this.actorData = data.json();
      console.log('act', this.actorData);
    }, err => {
      console.log('actor error');
    });

    this.loadCountries();

  }

  loadCountries() {

    this.http.get('http://localhost:3000/countries/').toPromise().then(data => {
      const c = data.json();
      this.countrySelectOptions = [];
      for (let i = 0; i < c.length; i++) {
        this.countrySelectOptions.push({ value: i, text: c[i] });
      }

      this.editableSelect = this.countrySelectOptions.findIndex((g) => {
        return g.text === this.personData.nationality;
      });

    }, err => {
      console.log('Error occured.');
    });

    console.log(this.countrySelectOptions);
  }

  saveEditable(value: any, table: string, colName: string) {

    const body = this.personData;
    body[colName] = value;
    if (colName === 'nationality') {
      body['nationality'] = this.countrySelectOptions[value].text;
    }

    body['changerId'] = this.globalservice.user.id;

    delete body.id;
    delete body.birth;
    delete body.death;
    delete body.versionId;
    delete body.timeCreated;

    // // call to http service

    console.log(body);

    this.restservice.postVid(table, body, this.personId).then(res => {
    }, err => {
      console.log('Error occured.');
    });

  }

}
