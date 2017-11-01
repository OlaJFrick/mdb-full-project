import { Component, OnInit } from '@angular/core';
import { RestService } from './services/rest.service';

@Component({
  selector: 'app-test',
  templateUrl: './test.component.html',
  providers: [
    RestService
  ]
})

export class TestComponent implements OnInit {
  mySqlData: any;

  constructor(private restservice: RestService) { }

  ngOnInit() {
    this.restservice.getView('all_films_list').subscribe(data => {
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
