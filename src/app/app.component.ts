import { Component, OnInit } from '@angular/core';
import { RestService } from './services/rest.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss'],
  providers: [
    RestService
  ]
})

export class AppComponent implements OnInit {

  constructor(private restservice: RestService) { }

  ngOnInit() {

  }

}
