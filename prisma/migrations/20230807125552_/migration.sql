/*
  Warnings:

  - Made the column `field` on table `student` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE `student` MODIFY `field` VARCHAR(191) NOT NULL;
