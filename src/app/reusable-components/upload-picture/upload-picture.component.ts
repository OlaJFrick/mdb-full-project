import { Component, Input, ElementRef, ViewChild } from '@angular/core';
import { Http } from '@angular/http';
import { RestService } from '../../services/rest.service';
import { GlobalService } from '../../services/global.service';

@Component({
  selector: 'app-upload-picture',
  templateUrl: './upload-picture.component.html',
  styleUrls: ['./upload-picture.component.scss'],
  providers: [
    RestService
  ]
})

export class UploadPictureComponent {
  private filename: string;
  private _film: any;
  private _person: any;

  @ViewChild('uploadFile') fileInput: ElementRef;

  @Input() set film(v: any) {
    if (v !== undefined) {
      this.setFilm(v);
    }
  }

  @Input() set person(v: any) {
    if (v !== undefined) {
      this.setPerson(v);
    }
  }

  constructor(private http: Http, private restService: RestService, private globalService: GlobalService) { }

  showImageBrowseDlg() {
    const ev = new MouseEvent('click', {bubbles: true});
    this.fileInput.nativeElement.dispatchEvent(ev);
  }

  setFilm(film: any) {
    this._film = film;
    console.log('setting film', film)
  }

  setPerson(person: any) {
  }

  loadSelectedFile(fileUpload) {
    this.filename = fileUpload.files[0].name;

    const fr  = new FileReader();
    fr.onload = (e) => { this.sendToServer(e); };
    fr.readAsDataURL(fileUpload.files[0]);
  }

  async sendToServer(ev) {
    const imgData = ev.target.result;
    const fileExtension = this.filename.substr(this.filename.lastIndexOf('.') + 1);
    let table = 'persons';
    let id = 0;
    let vId = 1;
    let postBody: any = {};

    if (this._film) {
      id = this._film.id;
      vId += this._film.versionId;
      table = 'films';
      postBody = Object.assign({}, this._film);
      delete postBody.id;
      delete postBody.avgRating;
      delete postBody.ratingCount;
      delete postBody.starring;
      delete postBody.directed;
      delete postBody.versionId;
      delete postBody.timeCreated;
    } else if (this._person) {
      id = this._person.id;
      vId += this._person.versionId;
    } else {
      console.log('error: no film or person given to upload-picture');
    }

    postBody.changerId = this.globalService.user.id;


    console.log('POST film', postBody);
    let postResult: any = await this.restService.postVid(table, postBody, id)
      .catch(e => console.log(e));

    postResult = postResult.json();
    console.log(postResult);


    // const msgBody = {
    //   id: id,
    //   versionId: vId,
    //   changerId: this.globalService.user.id,
    //   folder: table,
    //   imgExtension: fileExtension,
    //   imgData: imgData
    // };

    // this.http.post('http://localhost:3000/upload-picture', msgBody).toPromise().then(data => {
    //   console.log('upload DONE', data.json());
    // }, err => {
    //     console.log('Error occured.', err);
    // });
  }
}
