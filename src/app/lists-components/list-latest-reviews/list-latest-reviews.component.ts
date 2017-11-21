import { Component, OnInit, OnDestroy } from '@angular/core';
import { RestService } from '../../services/rest.service';

declare var jquery: any;
declare var $: any;

@Component({
  selector: 'app-list-latest-reviews',
  templateUrl: './list-latest-reviews.component.html',
  styleUrls: ['./list-latest-reviews.component.scss'],
  providers: [
    RestService
  ]
})

export class ListLatestReviewsComponent implements OnInit, OnDestroy {
  mySqlData = [];
  desc = true;
  order = '';
  limit = 10;
  offset = 0;
  interval;

  constructor(private restservice: RestService) { }

  ngOnInit() {
   this.setOrder('timeCreated');

   this.interval = setInterval(this.onScroll.bind(this), 500);
  }

  ngOnDestroy() {
    clearInterval(this.interval);
  }

  onScroll() {
    let doc = $(document);

    let docHeight = doc.height();
    let scroll = Math.round(doc.scrollTop());
    let winHeight = $(window).height();

    if (docHeight - scroll <= winHeight * 1.5) {
      this.offset += this.limit;
      this.getListData();
    }
  }

  getListData() {
    let order = this.order;
    if (this.desc) {
      order += '&desc=1';
    }

    this.restservice.get('all_reviews_list?limit=' + this.limit + '&offset=' + this.offset + '&order_by=' + order).then(data => {
      this.mySqlData = this.mySqlData.concat(data.json().filter((res) => {
        return res.textbody;
      }));
    }, err => {
      console.log('Error occured.');
    });
  }

  // onListLoad(data) {
  //   const datafilter = data.json();
  //   // Only display the films with 'textbody' reviews, not rating only.
  //   this.mySqlData = datafilter.filter((res) => {
  //     return res = res.textbody;
  //   });
  // }

  setOrder(order: string) {
    if (this.order == order) {
      this.desc = !this.desc;
    }
    this.order = order;
    this.offset = 0;
    this.mySqlData = [];
    console.log('setting order:', this.order, 'is desc:', this.desc)
    this.getListData();
  }

  // ngOnInit() {
  //   this.restservice.get('all_reviews_list?order_by=timeCreated&desc=1').then(data => {
  //     this.onDbLoad(data);
  //   }, err => {
  //       console.log('Error occured.');
  //   });
  // }

  // onDbLoad(data) {
  //   const datafilter = data.json();
  //   // Only display the films with 'textbody' reviews, not rating only.
  //   this.mySqlData = datafilter.filter((res) => {
  //     return res = res.textbody;
  //   });
  // }

}
