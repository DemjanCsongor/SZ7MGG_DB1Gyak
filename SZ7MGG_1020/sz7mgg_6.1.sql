CREATE DATABASE sz7mgg_1;

USE sz7mgg_1;

CREATE TABLE gyarto (
adoszam INT PRIMARY KEY,
nev VARCHAR(30) NOT NULL,
telephely varchar(100) );
 
CREATE TABLE termek (
tkod INT PRIMARY KEY,
nev VARCHAR(30) NOT NULL,
ear INT CHECK (EAR>0),
gyarto INT REFERENCES GYARTO );