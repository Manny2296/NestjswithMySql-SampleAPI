import { ProductService } from './product.service';
import { Product } from './product.entity';
import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ProductController } from './product.controller';

@Module({
    imports:[TypeOrmModule.forFeature([Product])],
    providers:[ProductService],
    controllers:[ProductController]
})
export class ProductModule {}
