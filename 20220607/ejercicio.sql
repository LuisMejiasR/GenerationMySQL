use generationg1;

-- tablas sin FK
CREATE TABLE employees(
    emp_id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    birth_date date NOT NULL,
    first_name varchar(14) NOT NULL,
    last_name varchar(16) NOT NULL,
    hire_date date NOT NULL
);

create TABLE departments (
	dept_id char(4) not null auto_increment,
    dept_name varchar(40),
	PRIMARY KEY id
);

-- tablas con FK

-- Tabla de titulo
CREATE TABLE titles(
    id int PRIMARY KEY auto_increment,
    emp_id int(11) FOREIGN KEY,
    title varchar(50) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL
);


CREATE TABLE deptmanager (
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    emp_id int(11) FOREIGN KEY,
    dpt_id varchar(4) FOREIGN KEY,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL 
);

CREATE TABLE salaries(
    id int AUTO_INCREMENT,
    emp_id int,
    salary int,
    from_date DATE,
    to_date DATE,		
    PRIMARY KEY (id)
);