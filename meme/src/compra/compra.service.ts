import { Compra } from './compra.entity';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';

@Injectable()
export class CompraService {
    constructor(@InjectRepository(Compra) private compraRepository : Repository<Compra>){}
    async getCompras(): Promise<Compra[]>{
        return await this.compraRepository.find({ relations: ["products"] });
    }
    async createCompra(compra: Compra){
        this.compraRepository.save(compra)
    } 
    async getCompra(_id:number) : Promise<Compra[]>{
        return await this.compraRepository.find({
            where:[{"id_compra" : _id}]
        })
    }
    async updateCompra(compra:Compra){
        this.compraRepository.save(compra)
      }
      async deleteCompra(compra: Compra){
          this.compraRepository.delete(compra)
      }
}
