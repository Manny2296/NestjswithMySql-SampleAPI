import { Compra } from './compra.entity';
import { CompraService } from './compra.service';
import { Controller, Get, Post, Body, Put } from '@nestjs/common';

@Controller('compras')
export class CompraController {
    constructor(private compraService : CompraService){}
 @Get()
getCompras(){
    return this.compraService.getCompras()
}
@Post()
createProduct(@Body() compra: Compra){
    console.log("Create compra", compra)
    this.compraService.createCompra(compra)
}
@Put()
updateProduct(@Body() compra:Compra){
    console.log("Update compra", compra)
    this.compraService.updateCompra(compra)
}
}
