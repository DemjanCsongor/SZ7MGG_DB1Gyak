create database sz7mgg_10;

use sz7mgg_10;

create table targy(
	kod INT NOT NULL PRIMARY KEY,
	kredit INT(1),
	megnevezes VARCHAR(20)
);

create table oktato(
	neptunkod VARCHAR(6) PRIMARY KEY,
	nev VARCHAR(30),
	tanszek VARCHAR(20),
    kod INT references targy(kod)
);

create table hallgato(
	neptunkod VARCHAR(6) PRIMARY KEY,
	nev VARCHAR(20),
	tankor VARCHAR(20),
	szul_d VARCHAR(20),
	eletkor INT(2),
	irszam INT(4),
	varos VARCHAR(20),
	utca VARCHAR(20),
	hsz INT(3)
);

create table hallgat(
	kod INT NOT NULL,
	neptunkod VARCHAR(6),
	felev INT(1),
	vizsgajegy INT(1),
	FOREIGN KEY(kod) references targy(kod),
	FOREIGN KEY(neptunkod) references hallgato(neptunkod)
);

insert into oktato values('KSIERT', 'János', 'Matematika',765);
insert into oktato values('H43KSD', 'Bence', 'Matematika',544);
insert into oktato values('LKAORE', 'Lajos', 'Informatika',132);
insert into oktato values('KDJ3DA', 'Sára', 'Informatika',111);
insert into oktato values('KSJ87E', 'István', 'Matematika',123);

insert into targy values(123,4,'Valszam');
insert into targy values(111,3,'DB1');
insert into targy values(132,2,'Progelm');
insert into targy values(544,6,'Tex');
insert into targy values(765,5,'Szoftech');

insert into hallgato values('32KLPE','Vencel','GEIK','1998',22,3232,'Miskolc','Bencesek',23);
insert into hallgato values('L32SDF','Mark','GTK','2000',20,3435,'Miskolc','Petofi',3);
insert into hallgato values('PO34E2','Daniel','AJK','2001',21,3215,'Miskolc','Ibolya',7);
insert into hallgato values('POD982','Bence','AJK','1999',21,3432,'Miskolc','Tulipan',4);
insert into hallgato values('LJK4IO','Balint','GEIK','1999',22,3520,'Miskolc','Rozsa',11);

insert into hallgat values(765,'32KLPE',1, 5);
insert into hallgat values(765,'L32SDF',2, 5);
insert into hallgat values(544,'PO34E2',3, 5);
insert into hallgat values(544,'L32SDF',4, 4);
insert into hallgat values(132,'32KLPE',1, 3);
insert into hallgat values(132,'POD982',2, 5);
insert into hallgat values(111,'PO34E2',2, 5);
insert into hallgat values(111,'LJK4IO',1, 3);
insert into hallgat values(123,'LJK4IO',2, 4);
insert into hallgat values(123,'POD982',1, 4);
