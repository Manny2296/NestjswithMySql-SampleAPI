import { Module } from '@nestjs/common';
import { ShopController } from './shop.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Shop } from './shop.entity';
import { ShopService } from './shop.service';

@Module({
  imports:[TypeOrmModule.forFeature([Shop])],
  providers:[ShopService],
  controllers: [ShopController]
})
export class ShopModule {}
