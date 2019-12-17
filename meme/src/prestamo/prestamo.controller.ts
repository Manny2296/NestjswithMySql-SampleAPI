import { PrestamoService } from './prestamo.service';
import { Controller, Get, Param } from '@nestjs/common';

@Controller('prestamos')
export class PrestamoController {
    constructor(private prestamoService : PrestamoService){ }
  
    @Get()
    getPrestamos(){
        return this.prestamoService.getPrestamos();
    }

    @Get(':id')
    getPrestamo(@Param() params){
        console.log("get single prestamo:", params.id)
        return this.prestamoService.getPrestamo(params.id)
    }
}
