#creación de base de datos
create database 'nombre_baseDatos';
SHOW VARIABLES LIKE 'validate_password%';

---------creando un usuario local
CREATE USER 'luis'@'localhost' IDENTIFIED BY 'Admin1234';
GRANT ALL PRIVILEGES ON *.* TO 'luis'@'localhost' WITH GRANT OPTION;

---------creando un usuario remoto
CREATE USER 'luis'@'%' IDENTIFIED BY 'Admin1234';
GRANT ALL PRIVILEGES ON *.* TO 'luis'@'%' WITH GRANT OPTION;

---------PARA DECANTAR LOS PRIVILEGIOS
FLUSH PRIVILEGES;

---------salir de MySQL
exit

**********************************************************************

---------ingresar a mysql con el nuevo usuario
mysql -u luis -p


***********************************************************************
---------ver desde la terminal las bases de datos creadas
show databases;

---------USAR la base de datos
use nombre_baseDatos;

---------mostrar las tablas de la base de datos
show tables;

---------CREAR LA TABLA
create TABLE nombre_de_la_tabla(
	nombre_columna tipo_dato restricción,
	nombre_columna tipo_dato restricción,
	...
	PRIMARY KEY (nombre_columna)
);

create TABLE nombre_de_la_tabla(
	nombre_columna tipo_dato restricción,
	nombre_columna tipo_dato restricción,
	...
	A (nombre_columna)
);

---------AUTOINCREMENT: SI NO AGREGAMOS LA PK EN LA INSERCIÓN, CREA UNA SEGÚN LA SECUENCIA
create TABLE clientes(
	id int PRIMARY KEY AUTO_INCREMENT,
	nombre varchar(30) NOT NULL,
	correo varchar(50)
);

---------Describir la ESTRUCTURA de la tabla (no el contenido)
describe nombre_de_la_tabla;

---------Consultar la data en la tabla
select * from nombre_de_la_tabla; (el * significa "todos los registros")

---------Inserción de registros
INSERT INTO nombre_de_la_tabla (columna1, columna2... columnaN) VALUES (valor1, valor2... valorN);
INSERT INTO clientes (id, nombre, correo) VALUES (1, 'Zoe', 'a@a.cl');


---------VACIAR LA TABLA (OJO)
truncate table clientes;

---------ELIMINAR LA TABLA (OJO, PESTAÑA Y CEJA)
drop table clientes;

---------ELIMINAR LA BASE DE DATOS COMPLETA (OJO, PESTAÑA Y CEJA)
drop database ejemplo;

---------ACTUALIZAR BASE REGISTRO EN TABLA
UPDATE nombre_de_tabla
SET columna_a_modificar = valor_a_insertar, columna_a_modificar2 = valor_a_insertar2
WHERE condicion;

UPDATE clientes
SET nombre = 'Maria', correo = 'm@m.cl'
WHERE id = 7;

---------COMO BUSCAR ALGO EN ESPECIFICO
SELECT * FROM clientes
WHERE nombre LIKE '%a%'; 

LIKE: para buscar algo parecido, %: es como el resto de la palabra, and: &&, or: ||.

---------BUSCAR Y ORDENAR POR ORDEN ASCENDENTE
SELECT * FROM Products
WHERE price Between 10 and 30
order by price asc;

---------BUSCAR Y ORDENAR POR ORDEN DESCENDENTE
SELECT * FROM Products
WHERE price Between 10 and 30
order by price desc;

---------MODIFICAR TABLA
ALTER table nombre_tabla
add nombre_columna tipo_de_dato restriccion;

---------ELIMINAR COLUMNA
alter table nombre_tabla
drop column nombre_de_la_columna;

---------RELACIONAR TABLAS con una Foreign Key
ALTER TABLE clientes
add FOREIGN KEY (direccionId) references direcciones(id);

ALTER TABLE clientes
add constraint FK_direccionId 
FOREIGN KEY (direccionId) references direcciones(id);

---------VER LA CREACIÓN Y DATOS DE LA TABLA EN ESPECIFICO
show create table clientes;

---------EJECUTAR UN SCRIPT DE mysql

