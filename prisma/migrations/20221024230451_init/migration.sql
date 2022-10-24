-- CreateTable
CREATE TABLE `Motherboard` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `LGA` VARCHAR(191) NOT NULL,
    `DDR4` BOOLEAN NULL,
    `memorySlots` INTEGER NOT NULL,
    `memoryCapacity` INTEGER NOT NULL,
    `bestPrice` DOUBLE NOT NULL,
    `originalPrice` DOUBLE NOT NULL,
    `link` LONGTEXT NOT NULL,
    `factorId` INTEGER NOT NULL,

    UNIQUE INDEX `Motherboard_factorId_key`(`factorId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `MotherboardFactor` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Processor` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `bestPrice` DOUBLE NOT NULL,
    `originalPrice` DOUBLE NOT NULL,
    `link` LONGTEXT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `GraphicsCard` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `bestPrice` DOUBLE NOT NULL,
    `originalPrice` DOUBLE NOT NULL,
    `link` LONGTEXT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `PowerFont` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `bestPrice` DOUBLE NOT NULL,
    `originalPrice` DOUBLE NOT NULL,
    `link` LONGTEXT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Memory` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `CL` INTEGER NOT NULL,
    `speed` INTEGER NOT NULL,
    `size` INTEGER NOT NULL,
    `quantity` INTEGER NOT NULL,
    `bestPrice` DOUBLE NOT NULL,
    `worstPrice` DOUBLE NOT NULL,
    `link` LONGTEXT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Cooler` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `dba` DOUBLE NOT NULL,
    `cfm` INTEGER NOT NULL,
    `rpm` INTEGER NOT NULL,
    `bestPrice` DOUBLE NOT NULL,
    `worstPrice` DOUBLE NOT NULL,
    `link` LONGTEXT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `HDD` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `interface` VARCHAR(191) NOT NULL,
    `size` INTEGER NOT NULL,
    `bestPrice` DOUBLE NOT NULL,
    `originalPrice` DOUBLE NOT NULL,
    `link` LONGTEXT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `SSD` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `interface` VARCHAR(191) NOT NULL,
    `size` INTEGER NOT NULL,
    `bestPrice` DOUBLE NOT NULL,
    `originalPrice` DOUBLE NOT NULL,
    `link` LONGTEXT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Cabinet` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `fansIncluded` INTEGER NOT NULL,
    `USBPorts` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Motherboard` ADD CONSTRAINT `Motherboard_factorId_fkey` FOREIGN KEY (`factorId`) REFERENCES `MotherboardFactor`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
