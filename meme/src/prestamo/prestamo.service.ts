import { Prestamo } from './prestamo.entity';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';

@Injectable()
export class PrestamoService {
constructor(@InjectRepository(Prestamo) private prestamoRepository: Repository<Prestamo>){}
async getPrestamos(): Promise<Prestamo[]>{
    return await this.prestamoRepository.find({ relations: ["payments"] });
}
async createPrestamo(prestamo: Prestamo){
    this.prestamoRepository.save(prestamo)
} 
async getPrestamo(_id:number) : Promise<Prestamo[]>{
    return await this.prestamoRepository.find({
        where:[{"idprestamo" : _id}]
    })
}


}
