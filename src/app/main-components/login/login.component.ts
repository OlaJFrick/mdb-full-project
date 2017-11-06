import { Component } from '@angular/core';
import { Location, LocationStrategy, PathLocationStrategy } from '@angular/common';
import { Router } from '@angular/router';
import { RestService } from '../../services/rest.service';
import { GlobalService } from '../../services/global.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss'],
  providers: [
    RestService,
    Location, { provide: LocationStrategy, useClass: PathLocationStrategy }
  ]
})

export class LoginComponent {

  credentials = {
    email: '',
    password: ''
  }

  user = {};

  constructor(private restservice: RestService, private router: Router, private globalservice: GlobalService) { }

  login() {
    this.restservice.post('login', this.credentials).then(res => {
      res.json();

      if (res.json().status === 'logged in') {
        this.router.navigateByUrl('/');
      }

      this.globalservice.user = res.json().user;

      console.log('user:', this.user);
      console.log('you\'re in:', res.json());
    }, err => {
      console.log('you\'re out');
    });
  }

}
