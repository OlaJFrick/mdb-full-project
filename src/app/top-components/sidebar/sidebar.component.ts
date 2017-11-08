import { Component, Output, EventEmitter  } from '@angular/core';

@Component({
  selector: 'app-sidebar',
  templateUrl: './sidebar.component.html',
  styleUrls: ['./sidebar.component.scss']
})

export class SidebarComponent {

  @Output()
  close: EventEmitter<string> = new EventEmitter<string>();

	menuState:string = 'out';

  constructor() { }

  toggleMenu() {
  	console.log('in child');
    this.close.emit('');

    // 1-line if statement that toggles the value:
    // this.menuState = this.menuState === 'out' ? 'in' : 'out';
  }

}
