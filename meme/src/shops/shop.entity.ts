import { Entity,Column,PrimaryGeneratedColumn } from "typeorm";
@Entity()
export class Shop {
@PrimaryGeneratedColumn()
idshop:number

@Column({length:45})
name_shop:string


@Column({length:45})
email_shop:string


@Column({length:45})
address:string

@Column({length:45})
city:string

@Column({length:45})
password:string
}
