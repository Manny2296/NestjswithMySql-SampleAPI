import { PaymentService } from './payment.service';
import { Controller, Get, Post, Body } from '@nestjs/common';
import { Payment } from './payment.entity';

@Controller('payment')
export class PaymentController {
constructor(private paymentService : PaymentService){}
@Get()
getPayments(){
    return this.paymentService.getPayments();
}
@Post()
createPay(@Body() payment:Payment){
  console.log("Create pay", payment)
  this.paymentService.createPayment(payment);

}

}
