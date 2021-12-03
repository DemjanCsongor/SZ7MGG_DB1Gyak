create database sz7mgg_9_2;

use sz7mgg_9_2;

create table resztvevo (
tajszam varchar(12) primary key,
nev varchar(50),
lakcim varchar(100)
);

create table tanfolyam (
tkod int primary key,
ar int check(ar>0),
megnevezes varchar(50),
tipus varchar(1)
);

create table befizetes (
kurzus int,
diak boolean not null default 0,
befizetes int,
foreign key (kurzus) references tanfolyam(tkod),
foreign key (diak) references resztvevo(tajszam)
);

insert into resztvevo values('1','Nagy Bence', 87266327, 'Miskolc Nagy utva 18');
insert into resztvevo values('2','Kis Bence', 87321663, 'Miskolc Arva utva 1');
insert into resztvevo values('3','Tulipan József', 78231663,'Budapest Kis utva 20');
insert into resztvevo values('4','Kovács Ákos', 79321121,'Miskolc Elem utva 24');
insert into resztvevo values('5','Kiss Ákos', 85263121,'Pécs Tulipan utva 13');

insert into tanfolyam values(1,'3000', 'Eszterga','E1');
insert into tanfolyam values(2,'3000', 'Eszterga','E2');
insert into tanfolyam values(3,'5000', 'Komuves', 'K1');
insert into tanfolyam values(4,'5000', 'Komuves', 'K2');


insert into befizetes values(1, 87266327, '3000');
insert into befizetes values(1, 87321663, '3000');
insert into befizetes values(2, 78231663, '5000');
insert into befizetes values(3, 85263121, '2500');
insert into befizetes values(4, 87321663, '5000');
insert into befizetes values(3, 79321121, '5000');
insert into befizetes values(4, 79321121, '5000');

SELECT tipus, AVG(ar), MAX(ar) - MIN(ar) FROM tanfolyam GROUP BY tipus;
SELECT megnevezes, CASE WHEN ar > 100000 THEN ‘drága’ ELSE ‘olcsó’
END arkategoria FROM termek;
CREATE VIEW tdb AS SELECT MAX(t.megnevezes) nev, COUNT(*) db FROM tanfolyam t INNER JOIN befizetes b ON b.kurzus = t.tkod GROUP BY t.tkod;
SELECT nev, CASE WHEN db > 10 THEN ‘népszerű’ ELSE ‘nem népszerű’
END letszam FROM tdb;