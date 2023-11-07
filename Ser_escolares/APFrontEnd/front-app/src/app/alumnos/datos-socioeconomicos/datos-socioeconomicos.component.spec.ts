import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DatosSocioeconomicosComponent } from './datos-socioeconomicos.component';

describe('DatosSocioeconomicosComponent', () => {
  let component: DatosSocioeconomicosComponent;
  let fixture: ComponentFixture<DatosSocioeconomicosComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [DatosSocioeconomicosComponent]
    });
    fixture = TestBed.createComponent(DatosSocioeconomicosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
