CREATE DATABASE if not exists cientificos;
USE cientificos;
CREATE TABLE if not exists cientificos (
DNI varchar(8) primary key,
nombreApels nvarchar(255)
);

CREATE TABLE if not exists proyecto (
id char(4) primary key,
nombre nvarchar(255),
horas int
);

CREATE TABLE if not exists asignado_a (
dni varchar(8),
id char(4),
primary key(dni, id),
CONSTRAINT FK_cientificos FOREIGN KEY (dni) REFERENCES cientificos(dni),
CONSTRAINT FK_proyecto FOREIGN KEY (id) REFERENCES proyecto(id)
);

INSERT INTO cientificos (DNI, nombreApels) VALUES ("12345678", "eloy");
INSERT INTO cientificos (DNI, nombreApels) VALUES ("13345678", "victor");
INSERT INTO cientificos (DNI, nombreApels) VALUES ("14345678", "samuel");
INSERT INTO cientificos (DNI, nombreApels) VALUES ("15345678", "eloy");
INSERT INTO cientificos (DNI, nombreApels) VALUES ("16345678", "victor");
INSERT INTO cientificos (DNI, nombreApels) VALUES ("17345678", "samuel");
INSERT INTO cientificos (DNI, nombreApels) VALUES ("18345678", "a");
INSERT INTO cientificos (DNI, nombreApels) VALUES ("19345678", "a");
INSERT INTO cientificos (DNI, nombreApels) VALUES ("11145678", "a");
INSERT INTO cientificos (DNI, nombreApels) VALUES ("12245678", "a");

INSERT INTO proyecto (id, nombre, horas) VALUES ('1', 'as', '2');
INSERT INTO proyecto (id, nombre, horas) VALUES ('2', 'as2', '3');
INSERT INTO proyecto (id, nombre, horas) VALUES ('3', 'as3', '3');
INSERT INTO proyecto (id, nombre, horas) VALUES ('4', 'as4', '2');
INSERT INTO proyecto (id, nombre, horas) VALUES ('5', 'assa', '4');
INSERT INTO proyecto (id, nombre, horas) VALUES ('6', 'asas', '1');
INSERT INTO proyecto (id, nombre, horas) VALUES ('7', 'asasas', '2');
INSERT INTO proyecto (id, nombre, horas) VALUES ('8', 'asas', '5');
INSERT INTO proyecto (id, nombre, horas) VALUES ('9', 'asasas', '4');
INSERT INTO proyecto (id, nombre, horas) VALUES ('10', 'asasas', '6');

INSERT INTO asignado_a (DNI, id) VALUES ("12345678", "1");
INSERT INTO asignado_a (DNI, id) VALUES ("13345678", "2");
INSERT INTO asignado_a (DNI, id) VALUES ("14345678", "3");
INSERT INTO asignado_a (DNI, id) VALUES ("15345678", "4");
INSERT INTO asignado_a (DNI, id) VALUES ("16345678", "5");
INSERT INTO asignado_a (DNI, id) VALUES ("17345678", "6");
INSERT INTO asignado_a (DNI, id) VALUES ("18345678", "7");
INSERT INTO asignado_a (DNI, id) VALUES ("19345678", "8");
INSERT INTO asignado_a (DNI, id) VALUES ("11145678", "9");
INSERT INTO asignado_a (DNI, id) VALUES ("12245678", "10");
