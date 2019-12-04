import { Entity,Column,PrimaryGeneratedColumn } from "typeorm";
@Entity()
export class Product {

    @PrimaryGeneratedColumn()
    id:number;

    @Column({length:45})
    name:string
}
