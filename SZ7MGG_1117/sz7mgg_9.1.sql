create database sz7mgg_9_1;

use sz7mgg_9_1;

create table gyarto (
adoszam int primary key,
nev varchar(30),
irsz varchar(4),
varos varchar(40),
utca varchar(100)
);

create table termek (
tkod int primary key,
nev varchar(50),
ear int check(ear>0),
gyarto int references gyarto(adoszam)
);

create table Egysegek (
aru int references termek(tkod),
db int not null
);

create table alkatresz (
akod int primary key,
nev varchar(50)
);

create table komponens (
termek int references termek(nev),
alkatresz int references alkatresz(akod)
);

insert into termek values(1,'balta',50000,'A1');
insert into termek values(2,'holapat',20000,'A2');
insert into termek values(3,'lapat',500,'E2');
insert into termek values(4,'sepru',10000,'A2');
insert into termek values(5,'kapa',15000,'A2');

insert into gyarto values(3211,'A', 'Miskolc, Nagy utca 18.');
insert into gyarto values(5437,'B', 'Budapest, Kiss utca 32.');
insert into gyarto values(4326,'C', 'Szeged, Valami utca 91.');
insert into gyarto values(7659,'D', 'Debrecen, Pesti utca 1.');
insert into gyarto values(1234,'E', 'Miskolc, Csirke utca 2.');

insert into alkatresz values(1,'fa');
insert into alkatresz values(2,'acel');
insert into alkatresz values(3,'muanyag');

insert into komponens values('balta',1);
insert into komponens values('balta',2);
insert into komponens values('holapat',1);
insert into komponens values('holapat',3);
insert into komponens values('lapat',1);
insert into komponens values('lapat',2);
insert into komponens values('sepru',1);
insert into komponens values('sepru',3);
insert into komponens values('kapa',1);
insert into komponens values('kapa',2);

ALTER TABLE alkatresz ADD ( ar INT CHECK (ar > 0));
SELECT nev FROM gyarto WHERE adoszam NOT IN (SELECT gyarto FROM termek);
UPDATE termek SET ear = 1.1*ear WHERE tkod IN ( SELECT termek FROM komponens WHERE alkatresz = (SELECT akod FROM alkatresz WHERE nev = ‘fa’));
CREATE VIEW aa AS SELECT MAX(t.nev) nev, t.tkod, COUNT(*) db FROM termek t INNER JOIN egysegek e ON e.aru = t.tkod GROUP BY t.tkod;
SELECT nev FROM aa WHERE db = (SELECT MAX(db) FROM aa);
