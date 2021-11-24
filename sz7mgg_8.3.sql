create database sz7mgg_8_1;

use sz7mgg_8_1;

create table resztvevo (
tajszam varchar(12) primary key,
nev varchar(50),
lakcim varchar(100)
);

create table tanfolyam (
tkod int primary key,
ar int check(ear>0),
megnevezes varchar(50),
tipus varchar(1);
);

create table befizetes (
kurzus int,
diak boolean not null default 0,
befizetes int,
foreign key (kurzus) references tanfolyam(tkod),
foreign key (diak) references tanfolyam(tajszam)
);

insert into resztvevo values('1','Nagy Bence', 87266327, 'Miskolc Nagy utva 18');
insert into resztvevo values('2','Kis Bence', 87321663, 'Miskolc Arva utva 1');
insert into resztvevo values('3','Tulipan József', 78231663,'Budapest Kis utva 20');
insert into resztvevo values('4','Kovács Ákos', 79321121,'Miskolc Elem utva 24');

insert into tanfolyam values(1,'3000', 'Eszterga','E1');
insert into tanfolyam values(2,'3000', 'Eszterga','E2');
insert into tanfolyam values(3,'5000', 'Komuves', 'K1');
insert into tanfolyam values(4,'5000', 'Komuves', 'K2');


insert into befizetes (1, , '87266327');
insert into befizetes (1, , '87321663');
insert into befizetes (2, , '78231663');
insert into befizetes (3, , '87266327');
insert into befizetes (4, , '87321663');
insert into befizetes (3, , '79321121');
insert into befizetes (4, , '79321121');

select 




