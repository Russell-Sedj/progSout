/*
  Warnings:

  - Added the required column `taille` to the `maitre_memoire` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `maitre_memoire` ADD COLUMN `taille` INTEGER NOT NULL;
