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
  state = false;
  constructor(private restservice: RestService) { }

  ngOnInit() {
    this.getListData('name');
  }

  getListData(order: string) {
    this.state = !this.state;
    this.state ? order : order += '&desc=1';
    this.restservice.get('all_directors_list?order_by=' + order).then(data => {
         this.mySqlData = data.json();
       }, err => {
         console.log('Error occured.');
       });
  }

}
