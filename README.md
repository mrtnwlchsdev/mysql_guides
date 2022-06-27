# MySQL

- Base de datos relacional de codigo abierto.
- Uso de SQL para realizar consultas (Creacion de tablas, modificar campos en una tabla, etc).
- Usada con multiples lenguajes de programacion (PHP, Node, Python, etc.)
- Multiplataforma.

MySQL usa un formato de tablas para el almacenamiento de datos, siendo estas tablas conformadas por filas y columnas.

## Tablas y tipos de datos

   | id | first_name | last_name | email | password | 
   | -- | ---------- | --------- | ----- | -------- |
   | 1 | John | Doe | John@fakemail.com | hasdj32423k |
   | 2 | Sara | Watson | sara@fakemail.com | dha342h23 |

    - 1 / 2 :: filas
    - first_name / last_name :: columnas
    - Watson :: Campo

### Tipos de datos comunes 

- Numericos :: INT, TINYINT, BIGINT, FLOAT
- Cadenas de caracteres :: VARCHAR, TEXT, CHAR
- Fechas :: TIMESTAMP, DATETIME, DATE
- Otros :: BINARY, JSON

## Relacion de tablas

Una base de datos relacional puede relacionar datos entre si.

Cada tabla de una base de datos de MySQL tiene algo llamado primary_Key, la cual sera un identificador unico que no se repetira por el resto de la tabla.

## Instalacion

XAMPP es una suite de software en la cual se incluyen varias herramientas de desarrollo, entre ellas MySQL.

## Instalar e iniciar XAMPP desde la terminal

- Descargar XAMPP desde su web oficial.
- Hacer que el paquete descargado sea ejecutable

        $ chmod 755 <package_name>

- Comprobar que se pueda ejecutar el paquete con los permisos del usuario actual

        $ ls -l <package_name>
    
- Ejecutar el instalador desde la terminal

        $ sudo ./<package_name>

- Seguir los pasos de instalacion dictados por la interfaz grafica

- Instalar Net Tools

        $ sudo apt install net-Tools

- Iniciar XAMPP y todos sus servicios, incluido MySQL

        $ sudo /opt/lampp/lampp start

- Detener la ejecucion de XAMPP
    
        $ sudo /opt/lampp/lampp stop

## Comprobar la ultima version instalada de MySQL

    $ mysql --version

## Comandos iniciales

Iniciar sesion en MySQL desde la terminal

    $ mysql -u root -p

Crear un nuevo usuario

    mysql> CREATE USER 'USER_NAME'@'localhost' IDENTIFIED BY 'USER_PASSWORD';

Asignar permisos de administrador a un usuario

    mysql> GRANT ALL PRIVILEGES ON * . * TO 'USER_NAME'@'localhost'; 

    mysql> FLUSH PRIVILEGES;

    mysql> SHOW GRANTS FOR 'USER_NAME'@'localhost';

Iniciar sesion en MySQL con el nuevo usuario configurado

    $ sudo -u martin -p

## Configuracion de una base de datos a traves de la terminal

Crear una base de datos

    mysql> CREATE DATABASE <db_name>;

Listar las bases de datos

    mysql> SHOW DATABASES;

Usar una base de datos

    mysql> USE <db_name>;

Crear una tabla

    mysql> CREATE TABLE users(
        -> id INT AUTO_INCREMENT,
        -> first_name VARCHAR(100),
        -> password VARCHAR(255),
        -> is_admin TINYINT(1),
        -> register_date DATETIME,
        -> PRIMARY KEY(id)
        -> );

- En el ejemplo anterior se crea una tabla llamada users.
- Cada nueva columna creada se acompaña del tipo de dato que sera registrado.
- AUTO_INCREMENT de forma automatica incrementa el valor de los campos numericos asignados a la columna id.
- Al final de la asignacion de las columnas de la tabla, se especifica que la columna id sera la llave primaria de la tabla.

## Manipulacion de tablas

Eliminar una tabla

    mysql> DROP TABLE <table_name>

ELiminar una base de datos

    mysql> DROP DATABASE <db_name>

## Trabajando con MySQL Workbench

MySQL Workbench permite la manipulacion de una base de datos relacional mediante una interfaz grafica.

Seleccionar todos los registros almacenados en una tabla.

    USE <db_name>;
    SELECT * FROM <table_name>;

Agregar una fila a una tabla

    INSERT INTO <table_name> (column1,column2,...) values (value1,value2,value3);

Agregar multiples filas a una tabla

    INSERT INTO <table_name> (column1,column2,...), values(value1,value2,...),(value1,value2);

Seleccionar los elementos de una fila especifica de una base de datos

    SELECT <column1>, <column2>, ... FROM <table_name>;

## Clausula where

Seleccionar los elementos de una columna que cumplan con una condicion de campo especifica

    SELECT * FROM <table_name> where <column> = <value>;

Concatenar varias condiciones en una sola consulta, haciendo uso de operadores de compracion y logicos.

    SELECT * FROM <table_name> where <column> = value AND <column> > <value>;

## Eliminar y actualizar datos de una tabla

Cuando se eliminan o actualizan datos de una tabla, es importante añadir la clausula where, con el objetivo de evitar que todos ls registros de la tabla sen alterados.

Eliminar una fila de la tabla

    DELETE FROM <table_name> WHERE id = 2;

Actualizar un campo de la tabla

    UPDATE <table_name> SET first_name = 'Ada' where id = 1;

Agregar columnas a una tabla

    ALTER TABLE <table_name> ADD age INT(75);

## Ordenar registros de una tabla

Ordenar de forma ascendente

    SELECT * FROM <table_name> ORDER BY <column> ASC;

Ordenar de forma descendente

    SELECT * FROM <table_name> ORDER BY <column> DESC;

## Concatenar columnas

Concatenar registros de 2 o mas tablas

    SELECT CONCAT(<column1>, ' ', <column2>) AS <concat_result>, id FROM <table_name>;

## Consulta DISTINCT

Obtener cada valor unico registrado en una columna

    SELECT DISTINCT <column> FROM <table_name>;

## Consulta de rangos

Seleccionar los campos de una columna que se encuentren en un rango especifico

    SELECT * FROM <table_name> WHERE <column> BETWEEN low_num AND high_num;
