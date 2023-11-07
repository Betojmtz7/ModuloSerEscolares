import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ListadoDescuentosComponent } from './listado-descuentos.component';

describe('ListadoDescuentosComponent', () => {
  let component: ListadoDescuentosComponent;
  let fixture: ComponentFixture<ListadoDescuentosComponent>;

  beforeEach(async() => {
    await TestBed.configureTestingModule({
      declarations: [ListadoDescuentosComponent]
    }).compileComponents();
    fixture = TestBed.createComponent(ListadoDescuentosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
