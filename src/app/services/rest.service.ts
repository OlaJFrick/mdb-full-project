import { Http } from '@angular/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs/Observable';
import 'rxjs/add/operator/toPromise';

@Injectable()
export class RestService {

  private url = 'http://localhost:3000/';

  constructor(private http: Http) { }

  private buildUrl(tableName: string, id?: number){
    return this.url + 'rest/' + tableName + (id ? '/' + id : '');
  }

  get(tableName: string, id?: number) {
    return this.http.get(this.buildUrl(tableName, id)).toPromise();
  }

  post(tableName: string, body: object, id?: number) {
    return this.http.post(this.buildUrl(tableName, id), body).toPromise();
  }

  put(tableName: string, body: object, id?: number) {
    return this.http.put(this.buildUrl(tableName, id), body).toPromise();
  }

  delete(tableName: string, id: number) {
    return this.http.delete(this.buildUrl(tableName, id)).toPromise();
  }

}
