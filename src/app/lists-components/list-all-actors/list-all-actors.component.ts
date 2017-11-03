import { Component, OnInit } from '@angular/core';
import { RestService } from '../../services/rest.service';

@Component({
  selector: 'app-list-all-actors',
  templateUrl: './list-all-actors.component.html',
  styleUrls: ['./list-all-actors.component.scss'],
  providers: [
    RestService
  ]
})

export class ListAllActorsComponent implements OnInit {
  mySqlData: any;

  constructor(private restservice: RestService) { }

  ngOnInit() {
    this.restservice.get('all_actors_list').then(data => {
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
