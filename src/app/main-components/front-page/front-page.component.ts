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
  mySqlData: any;

  constructor(private restservice: RestService) { }

  ngOnInit() {
    this.restservice.getView('top10_highest').subscribe(data => {
      this.onDbLoad(data);
    }, err => {
        console.log('Error occured.');
    });
  }

  onDbLoad(data) {
    this.mySqlData = data.json();
    console.log(this.mySqlData, 'this.mySqlData');
  }

}
