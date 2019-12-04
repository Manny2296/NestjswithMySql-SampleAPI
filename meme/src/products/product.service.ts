import { Injectable, Inject } from '@nestjs/common';
import { Product } from './product.entity';
import { Repository } from 'typeorm';
import { InjectRepository } from '@nestjs/typeorm';
import { threadId } from 'worker_threads';
@Injectable()
export class ProductService {
   constructor(@InjectRepository(Product) private productRepository: Repository<Product>){}
   async getProducts():Promise<Product[]>{
        return await this.productRepository.find();
    }
    async createProduct(product : Product){
       this.productRepository.save(product)
    }
    async getProduct(_id:number):Promise<Product[]>{
    return await this.productRepository.find({
        select: ["name"],
        where:[{"id": _id}]
        // interesting way to do requets into a BD
    })
    }
    async updateProduct(product: Product){
      this.productRepository.save(product)
    }
    async deleteProduct(product: Product){
        this.productRepository.delete(product)
    }
}
