export class ListadoDescuento {
    numero: number = -1;
    no_control: number = -1;
    estatus: string="";
    fecha:string="";
    importe: number = -1;
}

export class GetListadoDescuento {
 result:string="";
 data:ListadoDescuento[]=[];
 detail:string = "";
}