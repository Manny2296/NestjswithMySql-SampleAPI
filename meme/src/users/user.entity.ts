import { Entity,Column,PrimaryGeneratedColumn, ManyToMany, JoinTable } from "typeorm";
import { Prestamo } from "src/prestamo/prestamo.entity";
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
    id_Document:string;
    @Column({length:45})
    mail:string;
    @Column({length:45})
    password:string;
    @Column('int')
    telephone:number;
    @Column()
    image_user: string;

    @ManyToMany(type => Prestamo, {eager:true})
    @JoinTable({
        name: "user_prestam", // table name for the junction table of this relation
        joinColumn: {
            name: "user",
            referencedColumnName: "idusuario"
        },
        inverseJoinColumn: {
            name: "prestamo",
            referencedColumnName: "idprestamo"
        }
    })
    prestamos: Prestamo[];

}
