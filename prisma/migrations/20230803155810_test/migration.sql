-- DropForeignKey
ALTER TABLE `etudiant` DROP FOREIGN KEY `etudiant_service_examenId_fkey`;

-- AlterTable
ALTER TABLE `etudiant` MODIFY `service_examenId` VARCHAR(191) NULL;

-- AddForeignKey
ALTER TABLE `etudiant` ADD CONSTRAINT `etudiant_service_examenId_fkey` FOREIGN KEY (`service_examenId`) REFERENCES `service_examen`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
