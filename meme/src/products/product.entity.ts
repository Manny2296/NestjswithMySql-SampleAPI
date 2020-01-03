import { Entity,Column,PrimaryGeneratedColumn } from "typeorm";
@Entity()
export class Product {

    @PrimaryGeneratedColumn()
    id:number;

    @Column({length:45})
    name:string
    @Column({length:4000})
    description:string
    @Column('int')
    quantity: number
    @Column('bigint')
    price_unity: number
    @Column('bigint')
    total_price: number
  
}
