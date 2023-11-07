import { Component, OnInit } from '@angular/core';
import { MatTableDataSource } from '@angular/material/table';
import { ListadoDescuento } from 'src/app/modelos/listado-descuentos';

@Component({
  selector: 'app-listado-descuentos',
  templateUrl: './listado-descuentos.component.html',
  styleUrls: ['./listado-descuentos.component.css'],
})
export class ListadoDescuentosComponent implements OnInit {
  descuento: ListadoDescuento[] = [];
  dataSource!:MatTableDataSource<ListadoDescuento>
  constructor() {}
  ngOnInit(): void {}
}
