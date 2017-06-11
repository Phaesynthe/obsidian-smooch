# obsidian-smooch [![CircleCI](https://circleci.com/gh/mwj8410/Plinth/tree/development.svg?style=svg)](https://circleci.com/gh/mwj8410/Plinth/tree/development) ![Dependencies](https://david-dm.org/mwj8410/Plinth.svg)

### Local Run
`npm install` or `yarn install`

Next, you need local services up and running:
```
docker run -p3306:3306 -e MYSQL_ROOT_PASSWORD=password mysql
```

Then, after that is complete:
```
npm run build
npm start
```

Then navigate a web browser to `http://localhost:24601/`.

The incomplete set of unit tests can be run with `npm test`.

### Database ###
```sql
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `publicId` CHAR(36) NOT NULL DEFAULT 'uuid()',
  `email` CHAR(254) NOT NULL,
  `created` DATETIME NULL,
  `lastLogin` DATETIME NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `publicId_UNIQUE` (`publicId` ASC),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC))
ENGINE = InnoDB
COMMENT = 'Generic, non-authentication, information related to a user';
```

```
DROP TABLE IF EXISTS `player`;
CREATE TABLE IF NOT EXISTS `player` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user` INT UNSIGNED NOT NULL,
  `name` CHAR(255) NOT NULL,
  `rank` ENUM('Skipper', 'Lieutenant', 'Commander', 'Captain', 'Commodore', 'Admiral', 'Marshal') NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB
COMMENT ='';
```

```

DROP TABLE IF EXISTS `stellarObject`;
CREATE TABLE IF NOT EXISTS `stellarObject` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` CHAR(128) NOT NULL,
  `type` CHAR(64) NOT NULL,
  `posX` FLOAT NOT NULL,
  `posY` FLOAT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC)
)
ENGINE = InnoDB
COMMENT ='';
```

```
DROP TABLE IF EXISTS `spaceObject`;
CREATE TABLE IF NOT EXISTS `spaceObject` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` CHAR(128) NOT NULL,
  `type` CHAR(64) NOT NULL,
  `posX` FLOAT NOT NULL,
  `posY` FLOAT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC)
)
ENGINE = InnoDB
COMMENT ='';
```
