import { Component, OnInit } from '@angular/core';
import { RestService } from '../../services/rest.service';

@Component({
  selector: 'app-front-page',
  templateUrl: './front-page.component.html',
  styleUrls: ['./front-page.component.scss'],
  providers: [
    RestService
  ]
})
export class FrontPageComponent implements OnInit {
  topfilms: any;
  latestfilms: any;

  constructor(private restservice: RestService) { }

  ngOnInit() {
    this.restservice.get('top10_highest?limit=5').then(data => {
      this.topfilms = data.json();
    }, err => {
        console.log('Error occured.');
    });

    this.restservice.get('current_films?limit=5&order_by=timeCreated').then(data => {
      this.latestfilms = data.json();
    }, err => {
        console.log('Error occured.');
    });

  }

  // onDbLoad(data) {
  //   this.topfilms = data.json();
  //   // console.log(this.topfilms, 'this.mySqlData');
  // }

}
