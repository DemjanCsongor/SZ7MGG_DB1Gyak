create database sz7mgg_4;

use sz7mgg_4;

CREATE TABLE termekek (
tkod INT PRIMARY KEY,
 nev VARCHAR(50) NOT NULL,
 ear INT CHECK (EAR > 0),
 kategoria VARCHAR(20)
 );
 
insert into termekek values(1,'lapát',2000, 'K1');
insert into termekek values(2,'seprű',4000, 'K1');
insert into termekek values(3,'mosogató gél',1500, 'K2');
insert into termekek values(4,'szappan',1000, 'K2');
insert into termekek values(5,'pohár',2400, 'K3');