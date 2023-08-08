/*
  Warnings:

  - You are about to drop the column `lasttname` on the `master` table. All the data in the column will be lost.
  - Added the required column `lastname` to the `master` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `master` DROP COLUMN `lasttname`,
    ADD COLUMN `lastname` VARCHAR(191) NOT NULL;
