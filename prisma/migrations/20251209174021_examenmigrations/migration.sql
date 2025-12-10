/*
  Warnings:

  - You are about to drop the column `address` on the `Seller` table. All the data in the column will be lost.
  - You are about to drop the `order` table. If the table is not empty, all the data it contains will be lost.
  - Changed the type of `price` on the `Product` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Added the required column `adress` to the `Seller` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Product" DROP COLUMN "price",
ADD COLUMN     "price" DOUBLE PRECISION NOT NULL;

-- AlterTable
ALTER TABLE "Seller" DROP COLUMN "address",
ADD COLUMN     "adress" TEXT NOT NULL;

-- DropTable
DROP TABLE "order";

-- CreateTable
CREATE TABLE "Order" (
    "id" SERIAL NOT NULL,
    "owner" TEXT NOT NULL,
    "product" TEXT NOT NULL,
    "quantity_product" TEXT NOT NULL,
    "total" TEXT NOT NULL,
    "time_order" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "time_exit" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "createAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Order_pkey" PRIMARY KEY ("id")
);
