drop database DMLej2;
create database DMLej2;
use DMLej2;

Create table piezas(
Codigo int primary key auto_increment,
nombre nvarchar(100)
);

Create table proveedores(
Id char(4) primary key,
nombre nvarchar(100)
);

Create table suministra(
CodigoPieza int,
Idproveedor char(4),
Precio int,
constraint FK_piezas foreign key(CodigoPieza) references piezas(Codigo),
constraint FK_proveedores foreign key(Idproveedor) references proveedores(Id)
);

/* Insercion de datos en tabla piezas*/
Insert into piezas(nombre) values('pieza1');
Insert into piezas(nombre) values('pieza2');
Insert into piezas(nombre) values('pieza3');
Insert into piezas(nombre) values('pieza4');
Insert into piezas(nombre) values('pieza5');
Insert into piezas(nombre) values('pieza6');
Insert into piezas(nombre) values('pieza7');
Insert into piezas(nombre) values('pieza8');
Insert into piezas(nombre) values('pieza9');
Insert into piezas(nombre) values('pieza10');

/* Insercion de datos en tabla proveedores*/
Insert into proveedores(Id,nombre) values('1','proveedor1');
Insert into proveedores(Id,nombre) values('2','proveedor2');
Insert into proveedores(Id,nombre) values('3','proveedor3');
Insert into proveedores(Id,nombre) values('4','proveedor4');
Insert into proveedores(Id,nombre) values('5','proveedor5');
Insert into proveedores(Id,nombre) values('6','proveedor6');
Insert into proveedores(Id,nombre) values('7','proveedor7');
Insert into proveedores(Id,nombre) values('8','proveedor8');
Insert into proveedores(Id,nombre) values('9','proveedor9');
Insert into proveedores(Id,nombre) values('10','proveedor10');

/* Insercion de datos en tabla suministra*/
Insert into suministra(CodigoPieza,Idproveedor,Precio) values('1','1','10');
Insert into suministra(CodigoPieza,Idproveedor,Precio) values('2','2','20');
Insert into suministra(CodigoPieza,Idproveedor,Precio) values('3','3','30');
Insert into suministra(CodigoPieza,Idproveedor,Precio) values('4','4','40');
Insert into suministra(CodigoPieza,Idproveedor,Precio) values('5','5','50');
Insert into suministra(CodigoPieza,Idproveedor,Precio) values('6','6','60');
Insert into suministra(CodigoPieza,Idproveedor,Precio) values('7','7','70');
Insert into suministra(CodigoPieza,Idproveedor,Precio) values('8','8','80');
Insert into suministra(CodigoPieza,Idproveedor,Precio) values('9','9','90');
Insert into suministra(CodigoPieza,Idproveedor,Precio) values('10','10','100');

Select * from DMLej2.piezas;
Select * from DMLej2.proveedores;
Select * from DMLej2.suministra;
