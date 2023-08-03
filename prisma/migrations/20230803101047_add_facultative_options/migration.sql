-- DropForeignKey
ALTER TABLE `etudiant` DROP FOREIGN KEY `etudiant_maitre_memoireId_fkey`;

-- AlterTable
ALTER TABLE `etudiant` MODIFY `filiere` VARCHAR(191) NULL,
    MODIFY `theme` VARCHAR(191) NULL,
    MODIFY `maitre_memoireId` VARCHAR(191) NULL,
    MODIFY `salle_presentation` VARCHAR(191) NULL,
    MODIFY `verdict` VARCHAR(191) NULL,
    MODIFY `memoire_depose` BOOLEAN NULL,
    MODIFY `theme_accepte` BOOLEAN NULL,
    MODIFY `valide_UE` BOOLEAN NULL;

-- AddForeignKey
ALTER TABLE `etudiant` ADD CONSTRAINT `etudiant_maitre_memoireId_fkey` FOREIGN KEY (`maitre_memoireId`) REFERENCES `maitre_memoire`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
