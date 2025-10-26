/*
  Warnings:

  - You are about to drop the column `createdAt` on the `records` table. All the data in the column will be lost.
  - You are about to drop the column `date` on the `records` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "records" DROP COLUMN "createdAt",
DROP COLUMN "date",
ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP;
