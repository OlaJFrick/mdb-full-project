import { Component, OnInit } from '@angular/core';
import { RestService } from '../../services/rest.service';
import { Http } from '@angular/http';
import { trigger, state, style, transition, animate, keyframes } from '@angular/animations';

@Component({
  selector: 'app-front-page',
  templateUrl: './front-page.component.html',
  styleUrls: ['./front-page.component.scss'],
  animations: [
    trigger('fadeIn-1', [
      state('in', style({opacity: '1'})),
      transition('void => *', [
        style({opacity: '0'}),
        animate('400ms 10ms ease-in')
      ])
    ]),
    trigger('fadeIn-2', [
      state('in', style({opacity: '1'})),
      transition('void => *', [
        style({opacity: '0'}),
        animate('100ms 20ms ease-in')
      ])
    ])],
  providers: [
    RestService
  ]
})

export class FrontPageComponent implements OnInit {
  topfilms: object[];
  latestfilms: object[];
  news: object[];

  constructor(private http: Http,
    private restservice: RestService) {
  }

  ngOnInit() {

    this.restservice.get('top10_highest?limit=5').then(data => {
      this.topfilms = data.json();
    }, err => {
      console.log('Error occured.');
    });

    this.restservice.get('current_films?limit=4&order_by=timeCreated&desc=1').then(data => {
      this.latestfilms = data.json();
    }, err => {
      console.log('Error occured.');
    });

    this.loadNews();
  }

  loadNews() {
    this.http.get('http://localhost:3000/imdb-news').toPromise().then(data => {
      const arr = data.json();
      this.news = arr.slice(0, 2);
      console.log(this.news);

      // this.genreSelectOptions = [];
      // for (let i = 0; i < gs.length; i++) {
      //   this.genreSelectOptions.push({ value: i, text: gs[i] });
      // }
      // this.editableSelect = this.genreSelectOptions.findIndex((g) => {
      //   return g.text === this.film.genre
      // });

    }, err => {
      console.log('Error occured.');
    });
  }
}
