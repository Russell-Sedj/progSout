/*
  Warnings:

  - You are about to drop the column `maitre_memoireId` on the `etudiant` table. All the data in the column will be lost.
  - You are about to drop the column `service_examenId` on the `etudiant` table. All the data in the column will be lost.
  - You are about to drop the `maitre_memoire` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `service_examen` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `etudiant` DROP FOREIGN KEY `etudiant_maitre_memoireId_fkey`;

-- DropForeignKey
ALTER TABLE `etudiant` DROP FOREIGN KEY `etudiant_service_examenId_fkey`;

-- AlterTable
ALTER TABLE `etudiant` DROP COLUMN `maitre_memoireId`,
    DROP COLUMN `service_examenId`,
    ADD COLUMN `maitreMemoireId` VARCHAR(191) NULL,
    ADD COLUMN `serviceExamenId` VARCHAR(191) NULL;

-- DropTable
DROP TABLE `maitre_memoire`;

-- DropTable
DROP TABLE `service_examen`;

-- CreateTable
CREATE TABLE `maitreMemoire` (
    `id` VARCHAR(191) NOT NULL,
    `created_at` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` DATETIME(3) NULL,
    `nom` VARCHAR(191) NOT NULL,
    `prenom` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `maitreMemoire_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `serviceExamen` (
    `id` VARCHAR(191) NOT NULL,
    `created_at` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` DATETIME(3) NULL,
    `email` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `serviceExamen_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `etudiant` ADD CONSTRAINT `etudiant_serviceExamenId_fkey` FOREIGN KEY (`serviceExamenId`) REFERENCES `serviceExamen`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `etudiant` ADD CONSTRAINT `etudiant_maitreMemoireId_fkey` FOREIGN KEY (`maitreMemoireId`) REFERENCES `maitreMemoire`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
