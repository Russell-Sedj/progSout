-- CreateTable
CREATE TABLE `etudiant` (
    `id` VARCHAR(191) NOT NULL,
    `created_at` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` DATETIME(3) NULL,
    `nom` VARCHAR(191) NOT NULL,
    `prenom` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `telephone` INTEGER NOT NULL,
    `service_examenId` VARCHAR(191) NOT NULL,
    `filiere` VARCHAR(191) NOT NULL,
    `theme` VARCHAR(191) NOT NULL,
    `maitre_memoireId` VARCHAR(191) NOT NULL,
    `date_presentation` DATETIME(3) NULL,
    `salle_presentation` VARCHAR(191) NOT NULL,
    `verdict` VARCHAR(191) NOT NULL,
    `memoire_depose` BOOLEAN NOT NULL,
    `theme_accepte` BOOLEAN NOT NULL,
    `valide_UE` BOOLEAN NOT NULL,

    UNIQUE INDEX `etudiant_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `maitre_memoire` (
    `id` VARCHAR(191) NOT NULL,
    `nom` VARCHAR(191) NOT NULL,
    `prenom` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `maitre_memoire_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `service_examen` (
    `id` VARCHAR(191) NOT NULL,
    `created_at` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` DATETIME(3) NULL,
    `email` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `service_examen_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `etudiant` ADD CONSTRAINT `etudiant_service_examenId_fkey` FOREIGN KEY (`service_examenId`) REFERENCES `service_examen`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `etudiant` ADD CONSTRAINT `etudiant_maitre_memoireId_fkey` FOREIGN KEY (`maitre_memoireId`) REFERENCES `maitre_memoire`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
