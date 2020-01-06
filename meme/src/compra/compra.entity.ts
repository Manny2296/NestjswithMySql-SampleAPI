import { Product } from './../products/product.entity';
import { Entity, PrimaryGeneratedColumn, Column, OneToMany, ManyToMany, JoinTable } from "typeorm";

@Entity()
export class Compra {
    @PrimaryGeneratedColumn()
    id_compra:number;
    @Column('bigint')
    valor_total:number
    @Column('bigint')
    valor_iva:number
    @Column('date')
    fecha:string

    @ManyToMany(type=>Product)
    @JoinTable()
    products: Product[]
}
