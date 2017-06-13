CREATE TABLE IF NOT EXISTS `user` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `publicId` CHAR(36) NOT NULL DEFAULT 'uuid()',
  `email` CHAR(254) NOT NULL,
  `created` DATETIME NULL,
  `lastLogin` DATETIME NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `publicId_UNIQUE` (`publicId` ASC),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC)
)
ENGINE = InnoDB
COMMENT = 'Generic, non-authentication, information related to a user';
