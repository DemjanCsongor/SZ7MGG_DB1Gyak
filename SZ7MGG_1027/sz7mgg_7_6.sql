create database sz7mgg_7_6;

use sz7mgg_7_6;

create table termekek (
tkod int primary key,
nev varchar(50) not null,
ear int check (ear>0),
kategoria char(20)
);

insert into termekek values(1,'robot2.0', 399999, 'E1' );
delete from termekek where ear<X;
update termekek set ear = ear*0.9 where kategoria = Y;
