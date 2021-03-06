create database sz7mgg_9_3;

use sz7mgg_9_3;

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


alter table termek drop column gyarto;

create table gyartja (
termek int references termek(tkod),
gyarto int references gyarto(adoszam)
);

insert into gyartja values(1,3211);
insert into gyartja values(2,5437);
insert into gyartja values(3,4326);
insert into gyartja values(4,7659);
insert into gyartja values(5,1234);
