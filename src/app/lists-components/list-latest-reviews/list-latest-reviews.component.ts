import { Component, OnInit } from '@angular/core';
import { RestService } from '../../services/rest.service';

@Component({
  selector: 'app-list-latest-reviews',
  templateUrl: './list-latest-reviews.component.html',
  styleUrls: ['./list-latest-reviews.component.scss'],
  providers: [
    RestService
  ]
})

export class ListLatestReviewsComponent implements OnInit {
  mySqlData: any;

  constructor(private restservice: RestService) { }

  ngOnInit() {
    this.restservice.get('all_reviews_list?order_by=timeCreated&desc=1').then(data => {
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
