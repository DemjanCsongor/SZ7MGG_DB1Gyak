create database sz7mgg_8_4;

use sz7mgg_8_4;

create table gyarto (
adoszam int primary key,
nev varchar(30),
telephely varchar(100)
);

create table termek (
tkod int primary key,
nev varchar(50),
ear int check(ear>0),
gyarto int references gyarto(adoszam)
);

insert into termek values(1,'kecske',50000,'A1');
insert into termek values(2,'liba',20000,'A2');
insert into termek values(3,'libatap',500,'E2');
insert into termek values(4,'tyúk',10000,'A2');
insert into termek values(5,'kacsa',15000,'A2');

insert into gyarto values(3211,'A', 'Miskolc, Nagy utca 18.');
insert into gyarto values(5437,'B', 'Budapest, Kiss utca 32.');
insert into gyarto values(4326,'C', 'Szeged, Valami utca 91.');
insert into gyarto values(7659,'D', 'Debrecen, Pesti utca 1.');
insert into gyarto values(1234,'E', 'Miskolc, Csirke utca 2.');


select * from termek where ear>1000;
select gyarto.nev, gyarto.adoszam from gyarto where telephely like 'Miskol%';
select count(termek.nev) from termek where ear>10000;
select termek.tkod from termek where termek.nev like '%liba%';
select gyarto.nev from gyarto where telephely is null;

select count(*) from termek where ear > (select avg(ear) from termek);
select nev from termek where ear = (select max(ear) from termek);
select nev from gyarto where adoszam in (select gyarto from termek where ear = (select max(ear) from termek));
create view gyatlag as select gy.nev, AVG(gy.ear) mear from gyarto t inner join termek t on t.gyarto = gy.adoszam group by gy.nev;
select nev from gyatlag where mear = (select max(mear) from gyatlag);
select gy.nev, avg (t.ear) aear from gyarto gy left outer join termek t ON gy.adoszam = t.gyarto group by gy,nev;

