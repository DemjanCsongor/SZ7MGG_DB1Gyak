create database sz7mgg_7_2;

use sz7mgg_7_2;

CREATE TABLE termekek (
tkod INT PRIMARY KEY,
nev VARCHAR(50) NOT NULL,
ear INT CHECK (EAR>0),
kategoria CHAR(20) );

insert into termekek values(1, 'füzet', 250, 'K1');
insert into termekek values(8, NULL, 2000, 'K1');
insert into termekek values(15, 'pohar A', 0, 'K1');
insert into termekek values(15, "pohar A", '50', 'K3');
insert into termekek values(15, 'pohar A', '250', 'K2');

