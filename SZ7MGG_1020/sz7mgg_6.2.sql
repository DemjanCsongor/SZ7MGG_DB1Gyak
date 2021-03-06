create database sz7mgg_2;

use sz7mgg_2;

Create table gyarto(
adoszam int primary key,
nev varchar(30) NOT null,
telephely varchar(50),
irsz varchar(4),
varos varchar(40),
utca varchar(100) );

Create table termek (
tkod int primary key,  
nev varchar(50) not null, 
ear int check (EAR > 0), 
gyarto int references GYARTO); 

Create table alaktresz(
akod  int primary key,  
nev  varchar(50) not null);
 
Create table egysegek(
aru int references termek, 
db int check (db > 0) ); 

Create table komponens(
termek int references termek, 
alkatresz int references alkatresz);