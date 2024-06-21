/*Creacion de tablas para la base de datos de Escuela*/

CREATE TABLE `tipos_identificacion` (
  `id` INT auto_increment,
  `nombre_identificacion` VARCHAR(45),
  `abreviatura` VARCHAR(10),
  PRIMARY KEY (`id`)
);

CREATE TABLE `oficinas` (
  `id` INT auto_increment,
  `nombre_oficina` VARCHAR(45),
  PRIMARY KEY (`id`)
);

CREATE TABLE `docentes` (
  `id` INT auto_increment,
  `nombre` VARCHAR(45),
  `apellido` VARCHAR(45),
  `fecha_nacimiento` DATE,
  `numero_identificacion` VARCHAR(45),
  `tipos_identificacion_id` INT,
  `oficinas_id` INT,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`tipos_identificacion_id`) REFERENCES `tipos_identificacion`(`id`),
  FOREIGN KEY (`oficinas_id`) REFERENCES `oficinas`(`id`)
);

CREATE TABLE `jornadas` (
  `id` INT auto_increment,
  `nombre_jornada` ENUM("diurna","nocturna"),
  PRIMARY KEY (`id`)
);

CREATE TABLE `grados` (
  `id` INT auto_increment,
  `nombre_grado` VARCHAR(45),
  PRIMARY KEY (`id`)
);

CREATE TABLE `aulas` (
  `id` INT auto_increment,
  `nombre_aula` VARCHAR(45),
  PRIMARY KEY (`id`)
);

CREATE TABLE `grupos` (
  `id` INT auto_increment,
  `nombre_grupo` VARCHAR(45),
  `jornadas_id` INT,
  `grados_id` INT,
  `aulas_id` INT,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`jornadas_id`) REFERENCES `jornadas`(`id`),
  FOREIGN KEY (`grados_id`) REFERENCES `grados`(`id`),
  FOREIGN KEY (`aulas_id`) REFERENCES `aulas`(`id`)
);

CREATE TABLE `asignaturas` (
  `id` INT auto_increment,
  `nombre_asignatura` VARCHAR(45),
  `intensidad` INT,
  PRIMARY KEY (`id`)
);

CREATE TABLE `horarios` (
  `id` INT auto_increment,
  `asignaturas_id` INT,
  `grupos_id` INT,
  `docentes_id` INT,
  `dia` ENUM("lun","mar","mie","jue","vie"),
  `hora` TIME,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`asignaturas_id`) REFERENCES `asignaturas`(`id`),
  FOREIGN KEY (`grupos_id`) REFERENCES `grupos`(`id`),
  FOREIGN KEY (`docentes_id`) REFERENCES `docentes`(`id`)
);

CREATE TABLE `estudiantes` (
  `id` INT auto_increment,
  `nombre` VARCHAR(45),
  `apellido` VARCHAR(45),
  `fecha_nacimiento` DATE,
  `numero_identificacion` VARCHAR(45),
  `tipos_identificacion_id` INT,
  `grupos_id` INT,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`tipos_identificacion_id`) REFERENCES `tipos_identificacion`(`id`),
  FOREIGN KEY (`grupos_id`) REFERENCES `grupos`(`id`)
);

