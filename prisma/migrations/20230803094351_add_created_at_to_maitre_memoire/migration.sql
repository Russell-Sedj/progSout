-- AlterTable
ALTER TABLE `maitre_memoire` ADD COLUMN `created_at` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    ADD COLUMN `updated_at` DATETIME(3) NULL;
