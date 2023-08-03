/*
  Warnings:

  - Made the column `prenom` on table `etudiant` required. This step will fail if there are existing NULL values in that column.
  - Made the column `email` on table `etudiant` required. This step will fail if there are existing NULL values in that column.
  - Made the column `password` on table `etudiant` required. This step will fail if there are existing NULL values in that column.
  - Made the column `telephone` on table `etudiant` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE `etudiant` MODIFY `prenom` VARCHAR(191) NOT NULL,
    MODIFY `email` VARCHAR(191) NOT NULL,
    MODIFY `password` VARCHAR(191) NOT NULL,
    MODIFY `telephone` INTEGER NOT NULL;
