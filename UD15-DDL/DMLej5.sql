CREATE DATABASE IF NOT EXISTS DMLej5;
use DMLej5;

create table if not exists Facultad (
	idfacultad int primary key auto_increment,
    nombre nvarchar(100)
);

CREATE TABLE if not exists Investigadores (
	DNI varchar(8) primary key,
	nomApels nvarchar(255),
    facultad int,
    constraint FK_facultad_investigadores foreign key (facultad) references Facultad(idfacultad)
);

CREATE TABLE if not exists Equipos (
	numserie char(4) primary key,
	nombre nvarchar(100),
    facultad int,
    constraint FK_facultad_equipos foreign key (facultad) references Facultad(idfacultad)
);

CREATE TABLE if not exists Reserva (
	DNI varchar(8),
    numserie char(4),
    comienzo datetime,
    fin datetime,
    primary key(DNI, numserie),
	constraint FK_DNI foreign key (DNI) references Investigadores(DNI),
    constraint FK_numserie foreign key (numserie) references Equipos(numserie)

)