/*
  Warnings:

  - You are about to drop the column `belogsToId` on the `Product` table. All the data in the column will be lost.
  - You are about to drop the column `title` on the `UpdatePoint` table. All the data in the column will be lost.
  - Added the required column `belongsToId` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `UpdatePoint` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Product" DROP CONSTRAINT "Product_belogsToId_fkey";

-- AlterTable
ALTER TABLE "Product" DROP COLUMN "belogsToId",
ADD COLUMN     "belongsToId" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "UpdatePoint" DROP COLUMN "title",
ADD COLUMN     "name" VARCHAR(255) NOT NULL;

-- AddForeignKey
ALTER TABLE "Product" ADD CONSTRAINT "Product_belongsToId_fkey" FOREIGN KEY ("belongsToId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
