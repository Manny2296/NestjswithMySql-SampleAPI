import { Shop } from './shop.entity';
import { Controller, Get, Param, Post, Body, Put, Delete } from '@nestjs/common';
import { ShopService } from './shop.service';

@Controller('shops')
export class ShopController {
constructor(private shopService : ShopService){}
//{}
@Get()
getShops(){
    return this.shopService.getShops();
}

@Get(':id')
getShop(@Param() params){
console.log("get single shop" + params.id);
return this.shopService.getShop(params.id);

}
@Post()
createShop(@Body() shop: Shop){
    console.log("Create shop", shop)
    this.shopService.createShop(shop)
}
@Put()
updateShop(@Body() shop:Shop){
    console.log("Update shop", shop)
    this.shopService.updateShop(shop)
}
@Delete(':id')
deleteProduct(@Param() params){
    console.log("Delete shop", params.id)
    this.shopService.deleteProduct(params.id)
}
}
