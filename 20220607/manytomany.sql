use manytomany;

create TABLE usuarios (
	id int not null auto_increment,
	nick varchar(100),
	email varchar(100),
    password varchar(120),
	PRIMARY KEY (id)
);

create TABLE grupos (
	id int not null auto_increment,
	nombre varchar(100),
	PRIMARY KEY (id)
);

INSERT INTO usuarios (nick, email, password) VALUES 
('bacan','b@b.cl','admin1234'),
('pulento','a@a.cl','qwerty'),
('rasta','c@c.cl','adminadmin'),
('neo','d@d.cl','morpheo');

INSERT INTO grupos (nombre) VALUES 
('matrix'),
('bacanes'),
('pulentos');