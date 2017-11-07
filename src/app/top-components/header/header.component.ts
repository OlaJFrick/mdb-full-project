import { Component, OnInit, trigger, state, style, transition, animate } from '@angular/core';
import { RestService } from '../../services/rest.service';
import { GlobalService } from '../../services/global.service';
import { Router } from '@angular/router';
import { LoginComponent } from '../../main-components/login/login.component';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss'],
   animations: [
    trigger('slideInOut', [
      state('in', style({
        transform: 'translate3d(0, 0, 0)'
      })),
      state('out', style({
        transform: 'translate3d(-100%, 0, 0)'
      })),
      transition('in => out', animate('300ms ease-in-out')),
      transition('out => in', animate('300ms ease-in-out'))
    ]),
  ],
  providers: [
    RestService
  ]
})
export class HeaderComponent implements OnInit {
	mySqlData: any;

	isNavbarCollapsed = true;
  menuState:string = 'out';

  header: LoginComponent;

  constructor(private restservice: RestService, private globalservice: GlobalService, private router: Router) {
    this.header = new LoginComponent(restservice, router, globalservice);

    // 22b5cebec7427dfa0b179af0641190e17693c1a2
  }

  ngOnInit() {
  	/*this.restservice.get('').then(data => {
      this.onDbLoad(data);
    }, err => {
        console.log('Error occured.');
    });*/
  }

  toggleMenu() {
    // 1-line if statement that toggles the value:
    this.menuState = this.menuState === 'out' ? 'in' : 'out';
  }

  /*onDbLoad(data) {
    this.mySqlData = data.json();
     console.log(this.mySqlData, 'this.mySqlData');
  }*/

}


