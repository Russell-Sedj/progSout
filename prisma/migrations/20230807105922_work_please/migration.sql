/*
  Warnings:

  - Added the required column `limit_date` to the `direction` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `direction` ADD COLUMN `limit_date` DATETIME(3) NOT NULL;

-- AlterTable
ALTER TABLE `student` ADD COLUMN `is_profil_information_complete` BOOLEAN NULL;
