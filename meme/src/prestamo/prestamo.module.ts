import { PrestamoService } from './prestamo.service';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Module } from '@nestjs/common';
import { Prestamo } from './prestamo.entity';
import { PrestamoController } from './prestamo.controller';

@Module({
imports:[TypeOrmModule.forFeature([Prestamo])],
controllers: [PrestamoController],
providers:[PrestamoService]

})
export class PrestamoModule {}
