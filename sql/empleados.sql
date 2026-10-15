-- Base de datos para el último ejercicio (ejercicio 8 en 2006 / ejercicio 9 en 2026).
-- Funciona en MySQL 8.x y MariaDB. Ejecútalo desde MySQL Workbench, phpMyAdmin o la consola:  mysql -u root -p < empleados.sql
CREATE DATABASE IF NOT EXISTS empleados CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE empleados;

-- Mejora respecto a la guía original: id autoincremental y clave primaria
-- (en la guía era varchar(12) sin clave, por eso la columna Id salía vacía).
CREATE TABLE IF NOT EXISTS empleados (
  id         INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nombres    VARCHAR(50)  NOT NULL,
  apellido1  VARCHAR(50)  NOT NULL,
  apellido2  VARCHAR(50)  NULL,
  edad       TINYINT UNSIGNED NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO empleados (nombres, apellido1, apellido2, edad) VALUES
  ('Andrea', 'Hurtado', 'Vega', 19),
  ('Carlos', 'Cáceres', 'Castillo', 25);
