-- DROP DATABASE TestJoin;
CREATE DATABASE TestJoin;
GO

USE TestJoin;
GO

CREATE TABLE Grupos
(
    Id int primary key not null,
    Nombre varchar(20)
);

CREATE TABLE Alumnos
(
    Id int primary key not null auto_increment,
    Nombre varchar(20),
    grupo_id int
);

ALTER TABLE Alumnos
ADD CONSTRAINT FK_grupo_id
FOREIGN KEY (grupo_id) REFERENCES grupos(id);

INSERT INTO Grupos VALUES(1, 'Grupo1');
INSERT INTO Grupos VALUES(2, 'Grupo2');
INSERT INTO Grupos VALUES(3, 'Grupo3');
INSERT INTO Grupos VALUES(4, 'Grupo4');
INSERT INTO Grupos VALUES(5, 'Grupo5');
INSERT INTO Grupos VALUES(6, 'Grupo6');

INSERT INTO alumnos(nombre, grupo_id) VALUES('Pamela', NULL);
INSERT INTO alumnos(nombre, grupo_id) VALUES('Israel', NULL);

INSERT INTO alumnos(nombre, grupo_id) VALUES('Nicolas Neira', 2);
INSERT INTO alumnos(nombre, grupo_id) VALUES('Genesis Quezada', 2);
INSERT INTO alumnos(nombre, grupo_id) VALUES('Catalina Castillo', 2);
INSERT INTO alumnos(nombre, grupo_id) VALUES('Carlos Iturra', 2);
INSERT INTO alumnos(nombre, grupo_id) VALUES('Gabriel Guzman', 2)
,('Leonardo Utreras', 1)
,('Luis Mejias', 1)
,('Francisco Cid', 1)
,('Francisco Perez', 1)
,('Marysabel Aedo', 1)
,('Ignacio Romero', 1)
,('Alejandro', 3)
,('Luis', 3)
,('Cristobal', 3)
,('Joao', 3)
,('Cristian', 3)
,('Danko', 4)
,('Wladimir', 4)
,('Catalina', 4)
,('Esteban', 4)
,('Katherina', 4)
,('Nicole Olivares', 5)
,('Hector Gomez', 5)
,('Fernando Faundez',5)
,('Ignacio Galaz', 5)
,('Constanza Mardones', 5)
,('Alondra', 6)
,('Diana', 6)
,('Matias', 6)
,('Michael', 6)
,('Paulino', 6);




