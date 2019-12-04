import { Controller, Get, Param, Post, Body, Put, Delete } from '@nestjs/common';
import { UserService } from './user.service';
import { User } from './user.entity';

@Controller('users')
export class UserController {

constructor(private userService : UserService){}
@Get()
getUsers(){
    return this.userService.getUsers()
}
@Get(':id')
getUser(@Param() params){
    console.log("get single user:", params.id)
    return this.userService.getUser(params.id)
}
@Post()
createUser(@Body() user:User){
  console.log("Create user", user)
  this.userService.createUser(user);

}
@Put()
updateProduct(@Body() user:User){
    console.log("Update user", user)
    this.userService.updateUser(user)
}
@Delete(':id')
deleteProduct(@Param() params){
    console.log("Delete product", params.id)
    this.userService.deleteUser(params.id)
}

}
