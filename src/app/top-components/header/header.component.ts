import { Component, OnInit } from '@angular/core';
import { RestService } from '../../services/rest.service';
import { GlobalService } from '../../services/global.service';
import { Router } from '@angular/router';
import { LoginComponent } from '../../main-components/login/login.component';

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
  header: LoginComponent;

  constructor(private restservice: RestService, private globalservice: GlobalService, private router: Router) {
    this.header = new LoginComponent(restservice, router, globalservice);
  }

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