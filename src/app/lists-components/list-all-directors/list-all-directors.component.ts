import { Component, OnInit } from '@angular/core';
import { RestService } from '../../services/rest.service';

@Component({
  selector: 'app-list-all-directors',
  templateUrl: './list-all-directors.component.html',
  styleUrls: ['./list-all-directors.component.scss'],
  providers: [
    RestService
  ]
})

export class ListAllDirectorsComponent implements OnInit {
  mySqlData: any;

  constructor(private restservice: RestService) { }

  ngOnInit() {
    this.restservice.get('all_directors_list').then(data => {
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