import { Component, OnInit } from '@angular/core';
import { RestService } from './services/rest.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss'],
  providers: [
    RestService
  ]
})

export class AppComponent implements OnInit {
  mySqlData: any;

  constructor(private restservice: RestService) { }

  ngOnInit() {
    this.restservice.getView('films').subscribe(data => {
      this.onDbLoad(data);
    }, err => {
        console.log('Error occured.');
    });
  }

  onDbLoad(data) {
    this.mySqlData = data.json();
    // console.log(this.mySqlData, 'this.mySqlData');
  }
}
