use generationg1;

-- PRIMERO SE CREARON LAS TABLAS FORANEAS
CREATE TABLE direcciones (
    id Integer PRIMARY KEY not null auto_increment,
    nombre varchar(30),
    numero int,
    ciudad varchar(20),
    region int,
    pais varchar (15)
);

create table registros(
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    codigo_registro varchar(100) NOT NULL,
    rut varchar(100) NOT NULL
);

create table cursos(
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre varchar(100) NOT NULL,
    descripcion varchar(100) NOT NULL
);

-- LUEGO SE CREO LA TABLA PRINCIPAL
create TABLE alumnos(
	id Integer NOT NULL AUTO_INCREMENT,
	nombre varchar(100),
	apellido varchar(100),
	edad int,
	curso_id Integer,
	direcciones_id Integer,
	registro_id int,
	PRIMARY KEY (id)
);

-- RELACIONANDO LAS FK CON LA TABLA PRINCIPAL


ALTER TABLE alumnos
add FOREIGN KEY (curso_id) references cursos(id);

ALTER TABLE alumnos
add FOREIGN KEY (registro_id) references registros(id);

ALTER TABLE alumnos
add FOREIGN KEY (direcciones_id) references direcciones(id);

-- SE INSERTAN LOS DATOS EN LAS TABLAS
-- INSERT INTO nombre_de_la_tabla (columna1, columna2... columnaN) VALUES (valor1, valor2... valorN);