-- ----------------------------------------------------------------------------
-- MySQL Workbench Migration
-- Migrated Schemata: mydb
-- Source Schemata: 
-- Created: Thu Aug 01 01:53:16 2013
-- ----------------------------------------------------------------------------

SET FOREIGN_KEY_CHECKS = 0;;

-- ----------------------------------------------------------------------------
-- Schema mydb
-- ----------------------------------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;

-- ----------------------------------------------------------------------------
-- Table mydb.table1
-- ----------------------------------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`table1` (
  `id` INT NOT NULL ,
  `name` VARCHAR(45) NULL ,
  `created` DATETIME NULL ,
  `updated` DATETIME NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;
SET FOREIGN_KEY_CHECKS = 1;;
