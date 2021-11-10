create database sz7mgg_8_1;

use sz7mgg_8_1;

create table gyartok (
adoszam int primary key,
nev varchar(30),
telephely varchar(100)
);

create table termek (
tkod int primary key,
nev varchar(50),
ear int check(ear>0),
gyartok int references gyarto(adoszam)
);

insert into termek values(1,'kecske',50000,'A1');
insert into termek values(2,'liba',20000,'A2');
insert into termek values(3,'libatap',500,'E2');
insert into termek values(4,'tyúk',10000,'A2');
insert into termek values(5,'kacsa',15000,'A2');