import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ListAllDirectorsComponent } from './list-all-directors.component';

describe('ListAllDirectorsComponent', () => {
  let component: ListAllDirectorsComponent;
  let fixture: ComponentFixture<ListAllDirectorsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ListAllDirectorsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ListAllDirectorsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
