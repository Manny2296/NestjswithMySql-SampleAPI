import { Entity,Column,PrimaryGeneratedColumn, OneToMany } from "typeorm";
import { Payment } from "src/payment/payment.entity";
@Entity()
export class Prestamo {
    @PrimaryGeneratedColumn()
    idprestamo:number;
    @Column('bigint')
    prestamo_valor:number;
    @Column('int')
    prestamo_cuotas:number;
    @Column('double')
    prestamo_tax:number
    @Column('date')
    fecha_prestamo:string
    @OneToMany(type=>Payment, payment => payment.prestamo, {eager:true})
    payments: Payment[]
}