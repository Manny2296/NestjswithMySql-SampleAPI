import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Shop } from './shop.entity';
import { Repository } from 'typeorm';

@Injectable()
export class ShopService {
 constructor(@InjectRepository(Shop) private shopRepository : Repository<Shop>) { }  
async getShops():Promise<Shop[]>{
    return await this.shopRepository.find();
}
async createShop(shop : Shop){
    this.shopRepository.save(shop)
 }
async getShop(_id:number):Promise<Shop[]>{
    return await this.shopRepository.find({
        select:["idshop","name_shop","email_shop","city","address","password"],
        where:[{"idshop": _id}]
        // interesting way to do requets into a BD
    })
    }
    async updateShop(shop: Shop){
        this.shopRepository.save(shop)
      }
      async deleteProduct(shop: Shop){
        this.shopRepository.delete(shop)
    }
}
