 -- create database ajudasus;


CREATE SCHEMA IF NOT EXISTS `ajudasus` DEFAULT CHARACTER SET utf8mb4 ;
 USE `ajudasus` ;

-- -----------------------------------------------------
-- Table `mydb`.`medico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `medico` (
  `idmedico` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `CRM` INT(6) NOT NULL,
  `UF_CRM` VARCHAR(2),
  `EMAIL` VARCHAR(255) NULL,
  PRIMARY KEY (`idmedico`));

-- -----------------------------------------------------
-- Table `mydb`.`especialidades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `especialidade` (
  `idespeci` INT NOT NULL AUTO_INCREMENT,
  `especi` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idespeci`)
  );

-- -----------------------------------------------------
-- Table `mydb`.`posto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `posto` (
  `idposto` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255),
  `cep` VARCHAR(8),
  `cidade` VARCHAR(255) NOT NULL,
  `UF` VARCHAR(2) NOT NULL,
  `bairro` VARCHAR(255) NOT NULL,
  `rua` VARCHAR(255) NOT NULL,
  `numero` VARCHAR(10) NULL,
  `coordenadas` VARCHAR(255),
  `telefone` VARCHAR(11) NULL,
  `h_abre`  TIME  NULL,
  `h_fecha` TIME  NULL,
  PRIMARY KEY (`idposto`)
  );

CREATE TABLE IF NOT EXISTS `publicacao` (
  `idpublicacao` INT AUTO_INCREMENT,
  `titulo` VARCHAR(255) NULL,
  `conteudo` TEXT NULL,
   `data` DATE NULL,
  `autor` VARCHAR(45) NULL,
  `FK_idposto` INT NOT NULL,
  PRIMARY KEY (`idpublicacao`),
    FOREIGN KEY (`FK_idposto`)
    REFERENCES `posto` (`idposto`)
);


-- -----------------------------------------------------
-- Table `mydb`.`medico_has_posto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `medico_has_posto` (
  `FK_idmedico` INT NOT NULL,
  `FK_idposto` INT NOT NULL,
  PRIMARY KEY (`FK_idmedico`, `FK_idposto`),
    FOREIGN KEY (`FK_idmedico`)
    REFERENCES `medico` (`idmedico`),
    FOREIGN KEY (`FK_idposto`)
    REFERENCES `posto` (`idposto`)
);

-- -----------------------------------------------------
-- Table `mydb`.`agenda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `agenda` (
  `idagenda` INT AUTO_INCREMENT ,
  `dia` VARCHAR(45) NULL,
  `hora` TIME NULL,
  `FK_idespeci` INT NOT NULL,
  `FK_idposto` INT NOT NULL,
  PRIMARY KEY (`idagenda`),
  FOREIGN KEY (`FK_idespeci`)
  REFERENCES `especialidade` (`idespeci`),
  FOREIGN KEY (`FK_idposto`)
  REFERENCES `posto` (`idposto`)
);

-- -----------------------------------------------------
-- Table `mydb`.`medico_has_especialidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `medico_has_especialidade` (
  `FK_idmedico` INT NOT NULL,
  `FK_idespeci` INT NOT NULL,
  PRIMARY KEY (`FK_idmedico`, `FK_idespeci`),
    FOREIGN KEY (`FK_idmedico`)
    REFERENCES `medico` (`idmedico`),
    FOREIGN KEY (`FK_idespeci`)
    REFERENCES `especialidade` (`idespeci`)
);