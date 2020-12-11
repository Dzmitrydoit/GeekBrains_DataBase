-- MySQL Workbench Synchronization
-- Generated: 2020-12-11 18:59
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Дима Барташевич

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

ALTER TABLE `vk`.`profiles` 
DROP FOREIGN KEY `fk_profiles_media1`;

ALTER TABLE `vk`.`friend_requests` 
DROP FOREIGN KEY `fk_friend_requests_users1`,
DROP FOREIGN KEY `fk_friend_requests_users2`;

ALTER TABLE `vk`.`messages` 
DROP FOREIGN KEY `fk_messages_media1`,
DROP FOREIGN KEY `fk_messages_users_to`;

ALTER TABLE `vk`.`communites` 
DROP FOREIGN KEY `fk_communites_users1`;

ALTER TABLE `vk`.`users_communites` 
DROP FOREIGN KEY `fk_users_communites_communites1`,
DROP FOREIGN KEY `fk_users_communites_users1`;

ALTER TABLE `vk`.`posts` 
DROP FOREIGN KEY `fk_posts_communites1`,
DROP FOREIGN KEY `fk_posts_media1`;

ALTER TABLE `vk`.`users` 
CHANGE COLUMN `phone` `phone` BIGINT(12) NOT NULL ;

ALTER TABLE `vk`.`profiles` 
DROP COLUMN `foto_id`,
ADD COLUMN `foto_id` INT(10) UNSIGNED NULL DEFAULT NULL AFTER `created_at`,
ADD INDEX `fk_profiles_users_idx` (`users_id` ASC) VISIBLE,
ADD INDEX `fk_profiles_media1_idx` (`foto_id` ASC) VISIBLE,
DROP INDEX `fk_profiles_media1_idx` ,
DROP INDEX `fk_profiles_users_idx` ;
;

ALTER TABLE `vk`.`friend_requests` 
DROP COLUMN `to_users_id`,
DROP COLUMN `from_users_id`,
ADD COLUMN `from_users_id` INT(10) UNSIGNED NOT NULL FIRST,
ADD INDEX `fk_friend_requests_users1_idx` (`from_users_id` ASC) VISIBLE,
ADD INDEX `fk_friend_requests_users2_idx` (`to_users_id` ASC) VISIBLE,
DROP INDEX `fk_friend_requests_users2_idx` ,
DROP INDEX `fk_friend_requests_users1_idx` ;
ALTER TABLE `vk`.`friend_requests` ALTER INDEX `PRIMARY` VISIBLE;

ALTER TABLE `vk`.`messages` 
DROP COLUMN `to_users_id`,
ADD COLUMN `to_users_id` INT(10) UNSIGNED NOT NULL AFTER `from_users_id`,
ADD INDEX `fk_messages_users1_idx` (`to_users_id` ASC) VISIBLE,
ADD INDEX `fk_messages_media1_idx` (`media_id` ASC) VISIBLE,
DROP INDEX `fk_messages_media1_idx` ,
DROP INDEX `fk_messages_users1_idx` ;
ALTER TABLE `vk`.`friend_requests` ALTER INDEX `PRIMARY` VISIBLE;

ALTER TABLE `vk`.`communites` 
DROP COLUMN `admin_id`,
ADD COLUMN `admin_id` INT(10) UNSIGNED NOT NULL AFTER `desc`,
ADD INDEX `fk_communites_users1_idx` (`admin_id` ASC) VISIBLE,
DROP INDEX `fk_communites_users1_idx` ;
ALTER TABLE `vk`.`friend_requests` ALTER INDEX `PRIMARY` VISIBLE;

ALTER TABLE `vk`.`users_communites` 
ADD INDEX `fk_users_communites_communites1_idx` (`communites_id` ASC) VISIBLE,
ADD INDEX `fk_users_communites_users1_idx` (`users_id` ASC) VISIBLE,
DROP INDEX `fk_users_communites_users1_idx` ,
DROP INDEX `fk_users_communites_communites1_idx` ;
ALTER TABLE `vk`.`friend_requests` ALTER INDEX `PRIMARY` VISIBLE;

ALTER TABLE `vk`.`posts` 
ADD INDEX `fk_posts_users1_idx` (`users_id` ASC) VISIBLE,
ADD INDEX `fk_posts_communites1_idx` (`communites_id` ASC) VISIBLE,
ADD INDEX `fk_posts_media1_idx` (`media_id` ASC) VISIBLE,
DROP INDEX `fk_posts_media1_idx` ,
DROP INDEX `fk_posts_communites1_idx` ,
DROP INDEX `fk_posts_users1_idx` ;
ALTER TABLE `vk`.`friend_requests` ALTER INDEX `PRIMARY` VISIBLE;

CREATE TABLE IF NOT EXISTS `vk`.`likes` (
  `media_id` INT(10) UNSIGNED NOT NULL,
  `posts_id` INT(10) UNSIGNED NOT NULL,
  `users_id` INT(10) UNSIGNED NOT NULL,
  `likes_type` INT(11) NOT NULL COMMENT '0 - likes, 1 dislikes',
  `created_at` DATETIME NOT NULL DEFAULT NOW(),
  INDEX `fk_likes_media1_idx` (`media_id` ASC) VISIBLE,
  INDEX `fk_likes_posts1_idx` (`posts_id` ASC) VISIBLE,
  INDEX `fk_likes_users1_idx` (`users_id` ASC) VISIBLE,
  CONSTRAINT `fk_likes_media1`
    FOREIGN KEY (`media_id`)
    REFERENCES `vk`.`media` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_likes_posts1`
    FOREIGN KEY (`posts_id`)
    REFERENCES `vk`.`posts` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_likes_users1`
    FOREIGN KEY (`users_id`)
    REFERENCES `vk`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

ALTER TABLE `vk`.`profiles` 
DROP FOREIGN KEY `fk_profiles_users`;

ALTER TABLE `vk`.`profiles` ADD CONSTRAINT `fk_profiles_users`
  FOREIGN KEY (`users_id`)
  REFERENCES `vk`.`users` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_profiles_media1`
  FOREIGN KEY (`foto_id`)
  REFERENCES `vk`.`media` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `vk`.`friend_requests` 
ADD CONSTRAINT `fk_friend_requests_users1`
  FOREIGN KEY (`from_users_id`)
  REFERENCES `vk`.`users` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_friend_requests_users2`
  FOREIGN KEY (`to_users_id`)
  REFERENCES `vk`.`users` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `vk`.`messages` 
DROP FOREIGN KEY `fk_messages_users_from`;

ALTER TABLE `vk`.`messages` ADD CONSTRAINT `fk_messages_users_from`
  FOREIGN KEY (`from_users_id`)
  REFERENCES `vk`.`users` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_messages_users_to`
  FOREIGN KEY (`to_users_id`)
  REFERENCES `vk`.`users` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_messages_media1`
  FOREIGN KEY (`media_id`)
  REFERENCES `vk`.`media` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `vk`.`communites` 
ADD CONSTRAINT `fk_communites_users1`
  FOREIGN KEY (`admin_id`)
  REFERENCES `vk`.`users` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `vk`.`users_communites` 
ADD CONSTRAINT `fk_users_communites_communites1`
  FOREIGN KEY (`communites_id`)
  REFERENCES `vk`.`communites` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_users_communites_users1`
  FOREIGN KEY (`users_id`)
  REFERENCES `vk`.`users` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `vk`.`posts` 
DROP FOREIGN KEY `fk_posts_users1`;

ALTER TABLE `vk`.`posts` ADD CONSTRAINT `fk_posts_users1`
  FOREIGN KEY (`users_id`)
  REFERENCES `vk`.`users` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_posts_communites1`
  FOREIGN KEY (`communites_id`)
  REFERENCES `vk`.`communites` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_posts_media1`
  FOREIGN KEY (`media_id`)
  REFERENCES `vk`.`media` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
