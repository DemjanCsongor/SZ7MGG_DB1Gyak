create database sz7mgg_8_3_2;

use sz7mgg_8_3_2;

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

select count(tanfolyam.tipus) from tanfolyam where tanfolyam.tkod = befizetes.kurzus group by tanfolyam.tipus;
select count(tanfolyam.tkod) from tanfolyam group by tanfolyam.tkod;
select count(befizetes.befizetes) from befizetes group by tanfolyam.megnevezes;
select count(befizetes.befizetes='5000') from befizetes;
select count(befizetes.befizetes) from befizetes where tenfolyam.megnevezes='Eszterga' group by resztvevo.lakcim;
