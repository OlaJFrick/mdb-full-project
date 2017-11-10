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
  state = false;
  constructor(private restservice: RestService) { }

  ngOnInit() {
   this.getListData('title');
  }

  getListData(order: string) {
    this.state = !this.state;
    this.state ? order : order += '&desc=1';
    this.restservice.get('all_films_list?order_by=' + order).then(data => {
         this.mySqlData = data.json();
       }, err => {
         console.log('Error occured.');
       });
  }
}
