import { Component, OnInit, trigger, state, style, transition, animate } from '@angular/core';
import { RestService } from '../../services/rest.service';

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

	menuState:string = 'out';

  constructor(/*private restservice: RestService*/) { }

  ngOnInit() {
  	/*this.restservice.get('').then(data => {
      this.onDbLoad(data);
    }, err => {
        console.log('Error occured.');
    });*/
  }

  toggleMenu() {
  	console.log('in parent');
  	    // 1-line if statement that toggles the value:
    this.menuState = this.menuState === 'out' ? 'in' : 'out';
  }

  /*onDbLoad(data) {
    this.mySqlData = data.json();
     console.log(this.mySqlData, 'this.mySqlData');
  }*/

}


