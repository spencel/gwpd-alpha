-- MySQL Script generated by MySQL Workbench
-- Mon May 21 19:54:55 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema gwpd_alpha
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `gwpd_alpha` ;

-- -----------------------------------------------------
-- Schema gwpd_alpha
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `gwpd_alpha` DEFAULT CHARACTER SET utf8 ;
USE `gwpd_alpha` ;

-- -----------------------------------------------------
-- Table `gwpd_alpha`.`artist`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gwpd_alpha`.`artist` ;

CREATE TABLE IF NOT EXISTS `gwpd_alpha`.`artist` (
  `id` INT NOT NULL,
  `name` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `gwpd_alpha`.`song`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gwpd_alpha`.`song` ;

CREATE TABLE IF NOT EXISTS `gwpd_alpha`.`song` (
  `id` INT NOT NULL,
  `name` VARCHAR(100) NULL,
  `artistId` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_song_artist_idx` (`artistId` ASC),
  CONSTRAINT `fk_song_artist`
    FOREIGN KEY (`artistId`)
    REFERENCES `gwpd_alpha`.`artist` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;