-- All travel is based on timers

CREATE TABLE IF NOT EXISTS `timerTravel` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `player` INT UNSIGNED NOT NULL,
  --
  -- origin
  -- destination
  -- started
  -- complete
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC)
)
ENGINE = InnoDB
COMMENT = 'Generic, non-authentication, information related to a user';
