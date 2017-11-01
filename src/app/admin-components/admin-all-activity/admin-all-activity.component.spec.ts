import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminAllActivityComponent } from './admin-all-activity.component';

describe('AdminAllActivityComponent', () => {
  let component: AdminAllActivityComponent;
  let fixture: ComponentFixture<AdminAllActivityComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminAllActivityComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminAllActivityComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
