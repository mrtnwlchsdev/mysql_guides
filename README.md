# MySQL

- Base de datos relacional de codigo abierto.
- Uso de SQL para realizar consultas (Creacion de tablas, modificar campos en una tabla, etc).
- Usada con multiples lenguajes de programacion (PHP, Node, Python, etc.)
- Multiplataforma.

MySQL usa un formato de tablas para el almacenamiento de datos, siendo estas tablas conformadas por filas y columnas.

## Tablas y tipos de datos

    | id | first_name | last_name | email | password | 
    | -- | ---------- | --------- | ----- | -------- |
    | 1 | John | Doe | John@gmail.com | hasdj32423k |
    | 2 | Sara | Watson | sara@gmail.com | dha342h23 |

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
- El codigo entre parentesis () especifica los nombres de las columnas en la tabla y su tipo de dato.
- AUTO_INCREMENT de forma automatica incrementa el valor de los campos numericos asignados a la columna id.
- Al final de la asignacion de las columnas de la tabla, se especifica que la columna id sera la llave primaria de la tabla.

Eliminar una tabla

    mysql> DROP TABLE <table_name>

ELiminar una base de datos

    mysql> DROP DATABASE <db_name>

