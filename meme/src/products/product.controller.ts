import { Product } from './product.entity';
import { ProductService } from './product.service';
import { Controller, Get, Param, Post, Body, Put, Delete } from '@nestjs/common';


@Controller('products')
export class ProductController {
constructor(private productsService : ProductService){}

@Get()
getProducts(){
    return this.productsService.getProducts()
}
@Get(':id')
getProduct(@Param() params){
    console.log("get single product:", params.id)
    return this.productsService.getProduct(params.id)
}
@Post()
createProduct(@Body() product: Product){
    console.log("Create product", product)
    this.productsService.createProduct(product)
}
@Put()
updateProduct(@Body() product:Product){
    console.log("Update product", product)
    this.productsService.updateProduct(product)
}
@Delete(':id')
deleteProduct(@Param() params){
    console.log("Delete product", params.id)
    this.productsService.deleteProduct(params.id)
}

}
