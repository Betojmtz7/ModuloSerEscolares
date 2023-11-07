import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { AltaAlumnosComponent } from './alumnos/alta-alumnos/alta-alumnos.component';
import { ModificacionesAlumnosComponent } from './alumnos/modificaciones-alumnos/modificaciones-alumnos.component';
import { DatosSocioeconomicosComponent } from './alumnos/datos-socioeconomicos/datos-socioeconomicos.component';
import { RegistratComponent } from './alumnos/adeudos/registrat/registrat.component';
import { DescuentosComponent } from './alumnos/descuentos/descuentos.component';
import { ListadoDescuentosComponent } from './alumnos/listado-descuentos/listado-descuentos.component';
import { HistoriaAcademicaComponent } from './historia-academica/historia-academica.component';

const routes: Routes = [
  {
    path:'',
    redirectTo: '/home',
    pathMatch: 'full'
  },
  {
    path:'home',
    component: HomeComponent,
    children: [
      {
        path: 'alta-alumnos',
        component: AltaAlumnosComponent,
      },
      {
        path: 'modificaciones-alumnos',
        component: ModificacionesAlumnosComponent,
      },
      {
        path: 'datos-socioeconomicos',
        component: DatosSocioeconomicosComponent,
      },
      {
        path: 'adeudos',
        component: RegistratComponent,
      },
      {
        path: 'descuentos',
        component: DescuentosComponent,
      },
      {
        path: 'listado-descuentos',
        component: ListadoDescuentosComponent,
      },
      {
        path: 'historia-academica',
        component: HistoriaAcademicaComponent,
      } 
    ]
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
