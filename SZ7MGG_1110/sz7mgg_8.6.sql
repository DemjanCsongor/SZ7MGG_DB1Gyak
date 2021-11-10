create database sz7mgg_8_6;

use sz7mgg_8_6;

create table Tulajdonos(
tkod int(3) primary key,
nev varchar(20) not null,
varos varchar(20)
);

create table Auto (
rendszam char(7) primary key,
tipus varchar(25) not null,
szin varchar(15),
kor int(2),
ar int(8),
tulaj int(3) references tulajdonos(tkod)
);

insert into Tulajdonos values(101,'Kis János','Miskolc');
insert into Tulajdonos values(102,'Kis Éva','Szerencs');
insert into Tulajdonos values(103,'Retek Ödön','Miskolc');
insert into Tulajdonos values(104,'Nagy Bence','Nyék');
insert into Tulajdonos values(105,'Virág Zoltán','Nyék');
insert into Tulajdonos values(106,'Kovács Bettina','Szerencs');
insert into Tulajdonos values(107,'Asztal Antal','Miskolc');

insert into Auto values('HUK-215','Opel Corsa','Kék',,,);
insert into Auto values('LOI-982','Opel Astra','Zöld',,,);
insert into Auto values('MIN-987','Skoda Fabia','Fekete',,,);
insert into Auto values('KOE-763','Opel Corsa','Piros',,,);
insert into Auto values('PPO-112','BMW 316','Barna',,,);
insert into Auto values('LLE-321','Toyota Yaris','Fehér',,,);
insert into Auto values('ZZU-322','Opel Astra','Fehér',,,);
insert into Auto values('AAQ-387','Renault Twingo','Fekete',,,);
insert into Auto values('KOL-091','Opel Corsa','Zöld',,,);
