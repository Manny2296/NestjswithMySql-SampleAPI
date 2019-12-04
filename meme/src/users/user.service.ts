import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { User } from './user.entity';
import { Repository } from 'typeorm';

@Injectable()
export class UserService {
constructor(@InjectRepository(User) private userRepository: Repository<User>){}
async getUsers():Promise<User[]>{
    return await this.userRepository.find();
}
async createUser(user:User){
    this.userRepository.save(user);
}
async getUser(_id:number): Promise<User[]>{
    return await this.userRepository.find({
        select:["name","surname","id_Document","mail","password","telephone"],
        where:[{"id_Document": _id}]
    })

}
async updateUser(user:User){
    this.userRepository.save(user);
}
async deleteUser(user: User){
    this.userRepository.delete(user);
}


}
