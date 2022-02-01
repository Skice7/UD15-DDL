/*drop database DMLej1; */
create database DMLej1;
use DMLej1;



Create table Despachos(
numero int primary key,
capacidad int
);

Create table Directores(
DNI varchar(8) primary key,
NomApels nvarchar(255),
DNIJefe varchar(8),
despacho int,
constraint FK_despachos foreign key(DNIJefe) references Directores(DNI),
constraint FK_despachos2 foreign key(despacho) references Despachos(numero)
);

/*Inserciones de la tabla Despachos */
Insert into Despachos(numero,capacidad) values('1','1');
Insert into Despachos(numero,capacidad) values('2','2');
Insert into Despachos(numero,capacidad) values('3','3');
Insert into Despachos(numero,capacidad) values('4','4');
Insert into Despachos(numero,capacidad) values('5','5');
Insert into Despachos(numero,capacidad) values('6','6');
Insert into Despachos(numero,capacidad) values('7','7');
Insert into Despachos(numero,capacidad) values('8','8');
Insert into Despachos(numero,capacidad) values('9','9');
Insert into Despachos(numero,capacidad) values('10','10');

/*Inserciones de la tabla Directores */
Insert into Directores(DNI,NomApels,DNIJefe,despacho) values('1234567N','NomApels1',NULL,1);
Insert into Directores(DNI,NomApels,DNIJefe,despacho) values('1232347N','NomApels2','1234567N',2);
Insert into Directores(DNI,NomApels,DNIJefe,despacho) values('1123217N','NomApels3','1234567N',3);
Insert into Directores(DNI,NomApels,DNIJefe,despacho) values('4242447N','NomApels4','1234567N',4);
Insert into Directores(DNI,NomApels,DNIJefe,despacho) values('1242427N','NomApels5','1234567N',5);
Insert into Directores(DNI,NomApels,DNIJefe,despacho) values('1211127N','NomApels6','1234567N',6);
Insert into Directores(DNI,NomApels,DNIJefe,despacho) values('1234567K','NomApels7','1234567N',7);
Insert into Directores(DNI,NomApels,DNIJefe,despacho) values('1234567H','NomApels8','1234567N',8);
Insert into Directores(DNI,NomApels,DNIJefe,despacho) values('1234567M','NomApels9','1234567N',9);
Insert into Directores(DNI,NomApels,DNIJefe,despacho) values('1234567A','NomApels10','1234567N',10);

SELECT * FROM DMLej1.Despachos;
SELECT * FROM DMLej1.Directores;

