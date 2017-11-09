import { Component, OnInit } from '@angular/core';
import { RestService } from '../../services/rest.service';
import { GlobalService } from '../../services/global.service';

@Component({
  selector: 'app-admin-all-activity',
  templateUrl: './admin-all-activity.component.html',
  styleUrls: ['./admin-all-activity.component.scss'],
  providers: [
    RestService
  ]
})

export class AdminAllActivityComponent implements OnInit {
  userData: any;
  userActivity: any;

  constructor(private restservice: RestService, private globalservice: GlobalService) { }

  ngOnInit() {
    this.loadUserActivity();
    this.loadUsers();
  }

  loadUsers() {
    this.restservice.get('users').then(res => {
      this.userData = res.json();
    }, err => {
      console.log('Error occured');
    });
  }

  loadUserActivity() {
    this.restservice.get('admin_all_activity').then(res => {
      this.userActivity = res.json();
    }, err => {
      console.log('loadUserActivity error!');
    });
  }

  warnUser(changerId: number) {
    let body = {};

    let user = this.userData.filter((res) => {
      return res.id === changerId;
    });

    let userId = user[0].id;
    body['warnings'] = user[0].warnings + 1;

    console.log(user);
    console.log(userId);

    this.restservice.put('users', body, userId).then(res => {

      this.loadUsers();

    }, err => {
      console.log('hey');
    });
  }

}
