-- AGREGAR A LA TABLA ALUMNOS LOS 3: PAIS, REGION Y CIUDAD
-- CREAR TABLA PAISES DE AMERICA ()
use generationg1;

create TABLE paises(
    id int NOT NULL AUTO_INCREMENT,
	nombre_pais varchar(100) NOT NULL,
	colores_bandera varchar(100) NOT NULL,
	nombre_moneda varchar(50),
    PRIMARY KEY (id)
);

create TABLE regiones_de_chile (
    id int NOT NULL AUTO_INCREMENT,
    nombre_region varchar(100),
    numero_region varchar(100),
    PRIMARY KEY (id)
);

CREATE TABLE ciudades_de_chile (
    id int NOT NULL AUTO_INCREMENT,
    nombre_ciudad varchar(50),
    PRIMARY KEY (id)
);

-- INSERCIONES

INSERT INTO PAISES (nombre_pais, colores_bandera, nombre_moneda) VALUES 
('Chile','rojo, azul, blanco','peso chileno'),
('Peru','rojo, blanco','sol'),
('Argentina','azul, blanco','peso argentino');

INSERT INTO regiones_de_chile (nombre_region, numero_region) VALUES 
('Tarapacá','I'),
('Antofagasta','II'),
('Atacama','III'), 
('Coquimbo','IV'),
('Valparaíso','V'),
('OHiggins','VI'),
('Maule','VII'),
('Bío Bío','VIII'),
('Araucanía','IX'),
('Los Lagos','X'),
('Aysén','XI'),
('Magallanes y Antartica Chilena','XII'),
('Metropolitana','XIII'),
('Los Ríos','XIV'),
('Arica y parinacota','XV'),
('Ñuble','XVI');

INSERT INTO ciudades_de_chile (nombre_ciudad) VALUES 
('Iquique'),
('Antofagasta'),
('Copiapo'),
('La Serena'),
('Valparaíso'),
('Rancagua'),
('Talca'),
('Concepcion'),
('Temuco'),
('Puerto Montt'),
('Coyahique'),
('Punta Arenas'),
('Santiago'),
('Valdivia'),
('Arica'),
('Chillan');
