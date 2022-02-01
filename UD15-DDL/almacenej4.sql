CREATE DATABASE if not exists almacen;
use almacen;

create table if not exists Cajeros (
	idcajeros int primary key auto_increment,
    nomapels nvarchar(255)
);

create table if not exists Productos (
	idproductos int primary key auto_increment,
    nombre nvarchar(100),
    precio int
);

create table if not exists Maquinas_registradoras (
	idmaquina int primary key auto_increment,
    piso int
);

CREATE TABLE if not exists Venta (
	idcajero int,
	idproducto int,
    idmaquina int,
    primary key(idcajero, idproducto, idmaquina),
    constraint idcajero foreign key (idcajero) references Cajeros(idcajeros),
    constraint idproducto foreign key (idproducto) references Productos(idproductos),
    constraint idmaquina foreign key (idmaquina) references Maquinas_registradoras(idmaquina)
);

INSERT INTO Productos (nombre, precio) VALUES ('a', '200');
INSERT INTO Productos (nombre, precio) VALUES ('b', '111');
INSERT INTO Productos (nombre, precio) VALUES ('c', '222');
INSERT INTO Productos (nombre, precio) VALUES ('d', '333');
INSERT INTO Productos (nombre, precio) VALUES ('e', '444');
INSERT INTO Productos (nombre, precio) VALUES ('f', '111');
INSERT INTO Productos (nombre, precio) VALUES ('g', '222');
INSERT INTO Productos (nombre, precio) VALUES ('h', '333');
INSERT INTO Productos (nombre, precio) VALUES ('i', '555');
INSERT INTO Productos (nombre, precio) VALUES ('j', '555');

INSERT INTO Cajeros (nomApels) VALUES ('Eloy');
INSERT INTO Cajeros (nomApels) VALUES ('Samuel');
INSERT INTO Cajeros (nomApels) VALUES ('Victor');
INSERT INTO Cajeros (nomApels) VALUES ('as');
INSERT INTO Cajeros (nomApels) VALUES ('asd');
INSERT INTO Cajeros (nomApels) VALUES ('asdd');
INSERT INTO Cajeros (nomApels) VALUES ('aasd');
INSERT INTO Cajeros (nomApels) VALUES ('assssdd');
INSERT INTO Cajeros (nomApels) VALUES ('aaaaaaassssd');
INSERT INTO Cajeros (nomApels) VALUES ('si');


INSERT INTO Maquinas_registradoras (piso) VALUES ('4');
INSERT INTO Maquinas_registradoras (piso) VALUES ('6');
INSERT INTO Maquinas_registradoras (piso) VALUES ('5');
INSERT INTO Maquinas_registradoras (piso) VALUES ('3');
INSERT INTO Maquinas_registradoras (piso) VALUES ('3');
INSERT INTO Maquinas_registradoras (piso) VALUES ('2');
INSERT INTO Maquinas_registradoras (piso) VALUES ('1');
INSERT INTO Maquinas_registradoras (piso) VALUES ('1');
INSERT INTO Maquinas_registradoras (piso) VALUES ('2');
INSERT INTO Maquinas_registradoras (piso) VALUES ('7');

INSERT INTO Venta (idcajero, idproducto, idmaquina) VALUES ('1', '2', '3');
INSERT INTO Venta (idcajero, idproducto, idmaquina) VALUES ('7', '8', '9');
INSERT INTO Venta (idcajero, idproducto, idmaquina) VALUES ('10', '1', '2');
INSERT INTO Venta (idcajero, idproducto, idmaquina) VALUES ('3', '4', '5');
INSERT INTO Venta (idcajero, idproducto, idmaquina) VALUES ('6', '7', '8');
INSERT INTO Venta (idcajero, idproducto, idmaquina) VALUES ('9', '10', '1');
INSERT INTO Venta (idcajero, idproducto, idmaquina) VALUES ('2', '3', '4');
INSERT INTO Venta (idcajero, idproducto, idmaquina) VALUES ('5', '6', '7');
INSERT INTO Venta (idcajero, idproducto, idmaquina) VALUES ('8', '9', '10');