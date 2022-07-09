-- Comentarios SQL

-- SQL no distinque entre mayusculas y minusculas en sus palabras claves
-- Aunque la convencion es escribir los comandos de consulta SQL en mayuscula

-- ***
-- Consultas SQL basicas
-- ***

-- Crear una base de datos
CREATE DATABASE db_name;

-- Eliminar una base de datos
DROP DATABASE db_name;

-- Listar todas las bases de datos
SHOW DATABASES;

-- Usar una base de datos existente
USE db_name;

-- Tipos de datos
-- INT :: Numero entero
-- FLOAT :: Numeros decimales
-- VARCHAR :: Cadena de caracteres

-- Crear una tabla a partir de la base de datos en uso
CREATE TABLE users (
	id INT auto_increment,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    password VARCHAR(255),
    nationality VARCHAR(100),
    age INT(75),
    PRIMARY KEY(id)
);

-- Insertar un registro en una tabla especifica
INSERT INTO users (first_name,last_name,password,nationality,age) values ('Martin','Wilches','abc123','Colombian',27);

-- Modificar una columna de la tabla
ALTER TABLE users MODIFY COLUMN id INT AUTO_INCREMENT;

-- Seleccionar todas las filas y columnas de una tabla
SELECT * FROM users;

-- Seleccionar los registros especificos de una tabla
SELECT * FROM users WHERE id = 1;

-- Seleccionar registros de una tabla a partir de condiciones booleanas y operadores de comparacion
SELECT * FROM users WHERE id = 1 OR edad >= 15;
SELECT * FROM users WHERE id = 1 AND edad = 20;
SELECT * FROM users WHERE id != 2;

-- Seleccionar columnas especificas de una tabla
SELECT first_name, last_name FROM users;

-- Limitar la cantidad de recursos retornados por la consulta
SELECT * FROM users LIMIT 5;

-- Retornar los registros de una tabla a partir de un rango especificado
SELECT * FROM users WHERE edad BETWEEN 50 AND 100;

-- Obtener los campos de una columna cuando dichos campos contienen un substring especifico
-- En este ejemplo se seleccionan todos los registros de la columna first_name que contengan el substring 'en'
SELECT * FROM users WHERE first_name LIKE '%en%';

-- Seleccionar todos los campos de una columna que inician con el substring 'en'
SELECT * FROM users WHERE first_name LIKE 'en%';

-- Ordenar los campos de una columna especifica
SELECT * FROM users ORDER BY edad ASC;  -- Orden ascendente
SELECT * FROM users ORDER BY edad DESC; -- Orden descendente

-- Retornar el numero mayor o menor contenido en una columna
SELECT max(edad) as mayor FROM users;
SELECT min(edad) as menor FROM users;

-- Seleccionar los campos unicos de una columna
SELECT DISTINCT nationality FROM users;

-- Retornar el numero de registros de una columna
SELECT COUNT(*) FROM users ORDER BY first_name;

-- Retornar el numero de filas de una columna que contengan el substring 'en'
SELECT ORDER(*) FROM users WHERE first_name LIKE '%en%';

-- Actualizar un campo de la tabla
UPDATE users SET fname = 'Eduardo' WHERE id = 1;

-- Borrar un registro de la tabla
DELETE FROM users WHERE id = 1;

-- Borrar todos los registros de una tabla
DELETE * FROM users;

-- Eliminar una tabla de la base de datos en uso
DROP TABLE users;