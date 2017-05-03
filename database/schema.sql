DROP TABLE IF EXISTS `User`;
		
CREATE TABLE `User` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `username` VARCHAR(20) NOT NULL DEFAULT 'NULL',
  `currentCurrency` INTEGER NULL DEFAULT NULL,
  `totalCurrency` INTEGER NULL DEFAULT NULL,
  `noviceRating` INTEGER NULL DEFAULT NULL,
  `expertRating` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `questions`;
		
CREATE TABLE `questions` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `question` VARCHAR(255) NOT NULL DEFAULT 'NULL',
  `answer` VARCHAR(255) NULL DEFAULT NULL,
  `Qid_User` VARCHAR(20) NOT NULL DEFAULT 'NULL',
  `Aid_User` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

ALTER TABLE `questions` ADD FOREIGN KEY (Qid_User) REFERENCES `User` (`id`);
ALTER TABLE `questions` ADD FOREIGN KEY (Aid_User) REFERENCES `User` (`id`);