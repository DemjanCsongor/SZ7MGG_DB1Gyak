create database sz7mgg_7_7;

use sz7mgg_7_7;

create table termekek (
tkod int primary key,
nev varchar(50) not null,
ear int check (ear>0),
kategoria char(20)
);

alter table termekek add(szin char(30));
drop table termekek;
delete from termekek where kategoria is null;
