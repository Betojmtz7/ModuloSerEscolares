import { NgModule } from '@angular/core';
import { ReactiveFormsModule } from '@angular/forms';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule } from '@angular/forms';

import { HttpClientModule } from '@angular/common/http';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HeaderComponent } from './header/header.component';
import { HomeComponent } from './home/home.component';
import { SidebarComponent } from './sidebar/sidebar.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

// Importaciones de Materiales
import { MatToolbarModule } from '@angular/material/toolbar';
import { MatIconModule } from '@angular/material/icon';
import { MatButtonModule } from '@angular/material/button';
import { MatDialogModule } from '@angular/material/dialog';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { MatLineModule } from '@angular/material/core';
import { MatSelectModule } from '@angular/material/select';
import { MatTableModule } from '@angular/material/table';
import { MatPaginatorModule } from '@angular/material/paginator';
import { MatSortModule } from '@angular/material/sort';
import { MatSnackBarModule } from '@angular/material/snack-bar';
import { MatCheckboxModule } from '@angular/material/checkbox';

import { AlumnosComponent } from './alumnos/alumnos.component';
import { AltaAlumnosComponent } from './alumnos/alta-alumnos/alta-alumnos.component';
import { ModificacionesAlumnosComponent } from './alumnos/modificaciones-alumnos/modificaciones-alumnos.component';
import { DatosSocioeconomicosComponent } from './alumnos/datos-socioeconomicos/datos-socioeconomicos.component';
import { RegistratComponent } from './alumnos/adeudos/registrat/registrat.component';
import { ConsultarComponent } from './alumnos/adeudos/consultar/consultar.component';
import { DescuentosComponent } from './alumnos/descuentos/descuentos.component';
import { ListadoDescuentosComponent } from './alumnos/listado-descuentos/listado-descuentos.component';
import { HistoriaAcademicaComponent } from './historia-academica/historia-academica.component';

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    HomeComponent,
    SidebarComponent,
    AlumnosComponent,
    AltaAlumnosComponent,
    ModificacionesAlumnosComponent,
    DatosSocioeconomicosComponent,
    RegistratComponent,
    ConsultarComponent,
    DescuentosComponent,
    ListadoDescuentosComponent,
    HistoriaAcademicaComponent,
  ],
  imports: [
    AppRoutingModule,
    ReactiveFormsModule,
    BrowserAnimationsModule,
    BrowserModule,
    FormsModule,
    HttpClientModule,
    MatToolbarModule,
    MatIconModule,
    MatButtonModule,
    MatDialogModule,
    MatFormFieldModule,
    MatInputModule,
    MatLineModule,
    MatSelectModule,
    MatTableModule,
    MatPaginatorModule,
    MatSortModule,
    MatSnackBarModule,
    MatCheckboxModule,
  ],
  providers: [],
  bootstrap: [AppComponent],
})
export class AppModule {}
