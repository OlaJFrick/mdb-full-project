import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ListAllFilmsComponent } from './list-all-films.component';

describe('ListAllFilmsComponent', () => {
  let component: ListAllFilmsComponent;
  let fixture: ComponentFixture<ListAllFilmsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ListAllFilmsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ListAllFilmsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
