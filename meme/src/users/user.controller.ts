import { diskStorage } from 'multer';
import { Controller, Get, Param, Post, Body, Put, Delete, UseInterceptors, UploadedFile, Res } from '@nestjs/common';
import { UserService } from './user.service';
import { User } from './user.entity';
import { FileInterceptor } from "@nestjs/platform-express";
import { extname } from 'path';
@Controller('users')
export class UserController {
    SERVER_URL: string = "https://localhost:8080/";
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
@Post(':userid/avatar')
@UseInterceptors(FileInterceptor('file', {
    storage: diskStorage({
      destination: './avatars',

      filename: (req, file, cb) => {
        const randomName = Array(32).fill(null).map(() => (Math.round(Math.random() * 16)).toString(16)).join('')
        return cb(null, `${randomName}${extname(file.originalname)}`)
      }
    })
  }))
uploadAvatar(@Param('userid') userId, @UploadedFile() file){
  //console.log("Create user", user)
  this.userService.setAvatar(userId,`${file.path}`);

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

@Get('avatars/:fileId')
async serveAvatar(@Param('fileId') fileId, @Res() res): Promise<any> {
  res.sendFile(fileId, { root: 'avatars' });
}

}
