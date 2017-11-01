import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ListLatestReviewsComponent } from './list-latest-reviews.component';

describe('ListLatestReviewsComponent', () => {
  let component: ListLatestReviewsComponent;
  let fixture: ComponentFixture<ListLatestReviewsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ListLatestReviewsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ListLatestReviewsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
