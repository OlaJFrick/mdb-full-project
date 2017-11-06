import { Component, OnInit } from '@angular/core';
import { RestService } from '../../services/rest.service';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss'],
  providers: [
    RestService
  ]
})
export class HeaderComponent implements OnInit {
	mySqlData: any;
	isNavbarCollapsed = true;

  constructor(/*private restservice: RestService*/) { }

  ngOnInit() {
  	/*this.restservice.get('').then(data => {
      this.onDbLoad(data);
    }, err => {
        console.log('Error occured.');
    });*/
  }

  /*onDbLoad(data) {
    this.mySqlData = data.json();
     console.log(this.mySqlData, 'this.mySqlData');
  }*/

}