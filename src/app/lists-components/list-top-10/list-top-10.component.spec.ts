import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ListTop10Component } from './list-top-10.component';

describe('ListTop10Component', () => {
  let component: ListTop10Component;
  let fixture: ComponentFixture<ListTop10Component>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ListTop10Component ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ListTop10Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
