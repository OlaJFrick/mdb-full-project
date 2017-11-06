import { Component } from '@angular/core';
import { Location, LocationStrategy, PathLocationStrategy } from '@angular/common';
import { Router } from '@angular/router';
import { RestService } from '../../services/rest.service';

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

  constructor(private restservice: RestService, private router: Router) {
  }

  login() {
    this.restservice.post('login', this.credentials).then(res => {
      res.json();

      if (res.json().status === 'logged in') {
        this.router.navigateByUrl('/');
      }

      console.log('you\'re in:', res.json());
    }, err => {
      console.log('you\'re out:');
    });
  }

}
