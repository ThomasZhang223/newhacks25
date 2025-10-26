/*
  Warnings:

  - The values [HEALTHCARE,EDUCATION,TRAVEL,SUBSCRIPTIONS,PERSONAL_CARE,RENT,INSURANCE,INCOME] on the enum `Category` will be removed. If these variants are still used in the database, this will fail.

*/
-- AlterEnum
BEGIN;
CREATE TYPE "Category_new" AS ENUM ('GROCERIES', 'DINING', 'TRANSPORTATION', 'ENTERTAINMENT', 'SHOPPING', 'UTILITIES', 'INVOICE', 'MISC');
ALTER TABLE "records" ALTER COLUMN "category" TYPE "Category_new" USING ("category"::text::"Category_new");
ALTER TYPE "Category" RENAME TO "Category_old";
ALTER TYPE "Category_new" RENAME TO "Category";
DROP TYPE "public"."Category_old";
COMMIT;

-- AlterTable
ALTER TABLE "records" ALTER COLUMN "purchase_date" DROP DEFAULT;
