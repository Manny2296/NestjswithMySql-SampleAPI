import { InjectRepository } from '@nestjs/typeorm';
import { Injectable } from '@nestjs/common';
import { Payment } from './payment.entity';
import { Repository } from 'typeorm';
import { Prestamo } from 'src/prestamo/prestamo.entity';

@Injectable()
export class PaymentService {
    constructor(@InjectRepository(Payment) private paymentRepository : Repository<Payment>){}
    async getPayments():Promise<Payment[]>{
        return await this.paymentRepository.find({ relations: ["prestamo"] });
    }

    async createPayment(payment: Payment){
        
        this.paymentRepository.save(payment);
    }
}
