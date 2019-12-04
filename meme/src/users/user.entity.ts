import { Entity,Column,PrimaryGeneratedColumn } from "typeorm";
@Entity()
export class User
{
    @PrimaryGeneratedColumn()
    idusuario:number;
    @Column({length:45})
    name:string;
    @Column({length:45})
    surname:string;
    @Column({length:50})
    id_Document:string
    @Column({length:45})
    mail:string
    @Column({length:45})
    password:string
    @Column('int')
    telephone:number

}
