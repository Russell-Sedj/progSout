-- CreateTable
CREATE TABLE `student` (
    `id` VARCHAR(191) NOT NULL,
    `created_at` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` DATETIME(3) NULL,
    `lastname` VARCHAR(191) NOT NULL,
    `firstname` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `telephone` INTEGER NOT NULL,
    `address` VARCHAR(191) NOT NULL,
    `field` VARCHAR(191) NULL,
    `subject` VARCHAR(191) NULL,
    `presentation_date` DATETIME(3) NULL,
    `presentation_room` VARCHAR(191) NULL,
    `final_decision` VARCHAR(191) NULL,
    `school_fees` BOOLEAN NULL,
    `is_presentation_finished` BOOLEAN NULL,
    `is_subject_validated` BOOLEAN NULL,
    `is_UE_validated` BOOLEAN NULL,
    `is_connected` BOOLEAN NULL,
    `stay_connected` BOOLEAN NULL,
    `directionId` VARCHAR(191) NULL,
    `masterId` VARCHAR(191) NULL,
    `internMasterId` VARCHAR(191) NULL,

    UNIQUE INDEX `student_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `master` (
    `id` VARCHAR(191) NOT NULL,
    `created_at` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` DATETIME(3) NULL,
    `lasttname` VARCHAR(191) NOT NULL,
    `firstname` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `telephone` INTEGER NOT NULL,

    UNIQUE INDEX `master_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `internMaster` (
    `id` VARCHAR(191) NOT NULL,
    `created_at` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` DATETIME(3) NULL,
    `lastname` VARCHAR(191) NOT NULL,
    `firstname` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `telephone` INTEGER NOT NULL,
    `company_name` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `internMaster_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `direction` (
    `id` VARCHAR(191) NOT NULL,
    `created_at` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` DATETIME(3) NULL,
    `email` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `connected` VARCHAR(191) NULL,

    UNIQUE INDEX `direction_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `student` ADD CONSTRAINT `student_directionId_fkey` FOREIGN KEY (`directionId`) REFERENCES `direction`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `student` ADD CONSTRAINT `student_masterId_fkey` FOREIGN KEY (`masterId`) REFERENCES `master`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `student` ADD CONSTRAINT `student_internMasterId_fkey` FOREIGN KEY (`internMasterId`) REFERENCES `internMaster`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
