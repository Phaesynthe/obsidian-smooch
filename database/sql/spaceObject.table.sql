-- Planets and other landable objects are going to go here
-- We need to collect together all of the information that
-- is going to be needed by that.

-- need atmosphere type
-- need surface size
-- gravity
-- atmosphereType
-- temperature -- scale
-- lifeMagnitudePlant
-- lifeMagnitudeAnimal
-- lifeTypePlant
-- lifeTypeAnimal

-- type of plant life
-- plant life magnitude
-- type of animal life
--

CREATE TABLE IF NOT EXISTS `spaceObject` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` CHAR(128) NOT NULL,
  `type` CHAR(64) NOT NULL,
  `posX` FLOAT NOT NULL,
  `posY` FLOAT NOT NULL,
  `landable` TINYINT(1) NOT NULL DEFAULT 0, -- This indicates that some craft could land, not all craft
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC)
)
ENGINE = InnoDB
COMMENT ='';
