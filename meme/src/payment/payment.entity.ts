import { Entity, PrimaryGeneratedColumn, Column, ManyToOne, JoinColumn } from "typeorm";
import { Prestamo } from "src/prestamo/prestamo.entity";

@Entity()
export class Payment{


    @PrimaryGeneratedColumn()
    idpayment: number
    @Column('date')
    date_payment : string
    @Column('int')
    total_amount : number
  
    @ManyToOne(type=> Prestamo, prestamo => prestamo.payments)
    prestamo : Prestamo;

}
