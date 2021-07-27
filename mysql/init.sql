DROP TABLE IF EXISTS `Users`;

CREATE TABLE `Users` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(50),
	PRIMARY KEY (`id`)
);

INSERT INTO `Users` (`id`, `name`)
VALUES (1, "Thijs Wouters");