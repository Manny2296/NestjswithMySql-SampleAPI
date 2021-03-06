import { ShopModule } from './shops/shop.module';
import { ShopService } from './shops/shop.service';
import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { ProductService } from './products/product.service';
import { ProductController } from './products/product.controller';

import { ProductModule } from './products/product.module';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserModule } from './users/user.module';
import { UserController } from './users/user.controller';
import { PrestamoService } from './prestamo/prestamo.service';
import { PrestamoController } from './prestamo/prestamo.controller';
import { PrestamoModule } from './prestamo/prestamo.module';
import { PaymentModule } from './payment/payment.module';
import { CompraModule } from './compra/compra.module';



@Module({
  imports: [TypeOrmModule.forRoot(),ProductModule, UserModule, ShopModule, PrestamoModule, PaymentModule, CompraModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
