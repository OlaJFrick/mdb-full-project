import { Http } from '@angular/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs/Observable';
import 'rxjs/add/operator/map';
import 'rxjs/add/operator/catch';
import 'rxjs/add/observable/throw'

@Injectable()
export class RestService {

  private url = 'http://localhost:3000/';

  constructor(private http: Http) { }

  getView(tableName: string) {
    return this.http.get(this.url + 'rest/' + tableName);
  }

  // Add POST, PUT, DELETE below (Dennnis? :D)

}
