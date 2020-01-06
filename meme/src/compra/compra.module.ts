import { Module } from '@nestjs/common';
import { CompraService } from './compra.service';
import { CompraController } from './compra.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Compra } from './compra.entity';

@Module({
  imports:[TypeOrmModule.forFeature([Compra])],
  providers: [CompraService],
  controllers: [CompraController]
})
export class CompraModule {}
