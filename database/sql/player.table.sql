CREATE TABLE IF NOT EXISTS `player` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user` INT UNSIGNED NOT NULL,
  `name` CHAR(255) NOT NULL,
  `rank` ENUM('Skipper', 'Lieutenant', 'Commander', 'Captain', 'Commodore', 'Admiral', 'Marshal') NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC)
)
ENGINE = InnoDB
COMMENT = 'Generic, non-authentication, information related to a user';
