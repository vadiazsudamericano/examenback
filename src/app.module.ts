import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';

// Importaciones de módulos funcionales
import { ProductModule } from './product/product.module';
import { OrderModule } from './order/order.module';
import { ClientModule } from './client/client.module'; 
import { SellerModule } from './seller/seller.module';
import { UserModule } from './user/user.module'; // ← Faltaba este
import { PrismaModule } from './prisma/prisma.module';

@Module({
  imports: [
    PrismaModule,
    ClientModule,
    ProductModule, 
    OrderModule,
    SellerModule,
    UserModule, // ← Agrégalo aquí
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
