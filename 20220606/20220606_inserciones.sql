-- INSERT INTO nombre_de_la_tabla (columna1, columna2... columnaN) VALUES (valor1, valor2... valorN);
use generationg1;

INSERT INTO cursos (nombre, descripcion) VALUES ('Alfa','aplicados'), ('Beta','inteligentes'),('Gamma','Astutos');

INSERT INTO direcciones (nombre, numero, ciudad) VALUES 
('Prat','123','Arica'),
('Bulnes','444','Punta arenas'),
('Arana','765','Concepcion');

INSERT INTO registros (codigo_registro, rut) VALUES ('ZP01','3456-6'), ('ZP02','2345-5'),('ZP03','1234-4');

INSERT INTO alumnos (nombre, apellido, edad, curso_id, direcciones_id, registro_id) VALUES
('Zoe', 'Palma', 3, 1, 3, 1),
('Ayun', 'Palma', 3, 1, 3, 2),
('Tom', 'Loren', 5, 3, 1, 3);