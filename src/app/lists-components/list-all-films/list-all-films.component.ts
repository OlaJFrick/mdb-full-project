import { Component, OnInit } from '@angular/core';
import { RestService } from '../../services/rest.service';

@Component({
  selector: 'app-list-all-films',
  templateUrl: './list-all-films.component.html',
  styleUrls: ['./list-all-films.component.scss'],
  providers: [
    RestService
  ]
})

export class ListAllFilmsComponent implements OnInit {
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
