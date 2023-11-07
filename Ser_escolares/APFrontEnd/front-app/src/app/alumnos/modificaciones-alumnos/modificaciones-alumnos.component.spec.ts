import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ModificacionesAlumnosComponent } from './modificaciones-alumnos.component';

describe('ModificacionesAlumnosComponent', () => {
  let component: ModificacionesAlumnosComponent;
  let fixture: ComponentFixture<ModificacionesAlumnosComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ModificacionesAlumnosComponent]
    }).compileComponents();
    fixture = TestBed.createComponent(ModificacionesAlumnosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
