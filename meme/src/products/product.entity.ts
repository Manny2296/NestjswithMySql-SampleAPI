import { Compra } from './../compra/compra.entity';
import { Entity,Column,PrimaryGeneratedColumn, ManyToOne } from "typeorm";
@Entity()
export class Product {

    @PrimaryGeneratedColumn()
    id:number;

    @Column({length:45})
    name:string
    @Column({length:4000})
    description:string
    @Column('bigint')
    cod_product: number
    @Column('int')
    quantity: number
    @Column('bigint')
    price_unity: number
    @Column('bigint')
    total_price: number
    //@ManyToOne(type=> Compra, compra => compra.products)
   // compra : Compra;
}
