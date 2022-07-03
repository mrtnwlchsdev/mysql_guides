-- Comentarios SQL

-- SQL no distinque entre mayusculas y minusculas en sus palabras claves
-- Aunque la convencion es escribir los comandos de consulta SQL en mayuscula

-- Crear una base de datos
CREATE DATABASE db_name;

-- Eliminar una base de datos
DROP DATABASE db_name;

-- Listar todas las bases de datos
SHOW DATABASES;

-- Usar una base de datos existente
USE db_name;

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

-- Insertar una fila en una tabla especifica
INSERT INTO users (first_name,last_name,password,nationality,age) values ('Martin','Wilches','abc123','Colombian',27);

-- Seleccionar todas las filas y columnas de una tabla
SELECT * FROM users;

-- Seleccionar columnas especificas de una tabla
SELECT first_name, last_name FROM users;

-- Obtener las 5 primeras filas de una tabla
SELECT * FROM users LIMIT 5;

-- Obtener los campos de una columna cuando dichos campos contienen el substring 'en'
SELECT * FROM users WHERE first_name LIKE = '%en%';

-- Seleccionar los campos unicos de una columna
SELECT DISTINCT nationality FROM users;

-- Retornar el numero de filas de una columna
SELECT COUNT(*) FROM users ORDER BY first_name;

-- Retornar el numero de filas de una columna que contengan el substring 'en'
SELECT ORDER(*) FROM users WHERE first_name LIKE = '%en%';

-- Actualizar un campo de la tabla
UPDATE users SET fname = 'Eduardo' WHERE id = 1;

-- Borrar una fila de la tabla
DELETE FROM users WHERE id = 1;

-- Borrar todos los registros de una tabla
DELETE * FROM users;

-- Eliminar una tabla de la base de datos en uso
DROP TABLE users;