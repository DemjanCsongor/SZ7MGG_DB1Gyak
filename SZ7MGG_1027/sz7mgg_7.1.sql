create database sz7mgg_7_1;

USE sz7mgg_7_1;

CREATE TABLE termekek (
tkod INT PRIMARY KEY,
nev VARCHAR(50) NOT NULL,
ear INT CHECK (EAR>0),
kategoria CHAR(20) );

insert into termekek values(tkod = 1, nev = 'füzet', ear = '250', kategoria = 'K1');
insert into termekek values(tkod = 2, nev = 'könyv', ear = '2000', kategoria = 'K1');
insert into termekek values(tkod = 3, nev = 'toll', ear = '100', kategoria = 'K1');
insert into termekek values(tkod = 4, nev = 'víz', ear = '50', kategoria = 'K2');
insert into termekek values(tkod = 5, nev = 'kenyér', ear = '250', kategoria = 'K2');
