CREATE DATABASE bibliotecadb;

CREATE USER usubiblio WITH PASSWORD 'holamundo';

CREATE TABLE material (
	titulo VARCHAR(50) NOT NULL,
	autor VARCHAR(50) NOT NULL,
	genero VARCHAR(30) NOT NULL,
	editorial VARCHAR(30) NOT NULL,
	precio VARCHAR(10) NOT NULL,
	tmpentrega VARCHAR(30) NOT NULL,
	npag VARCHAR(30) NOT NULL,
	tipo VARCHAR(10) NOT NULL
);

INSERT INTO material VALUES (1,'La Niebla','Stephen King','Terror','Viking Press','138.00','Digital','10 Días','310','Libro');
INSERT INTO material VALUES (2,'Super-Man Muere','Clark Kent','Informativo','El Clarín','10.00','Físico','0 Días','2','Periódico');
INSERT INTO material VALUES (3,'M-I Junio 2019','Muy Interesante','Ciencia','México','48.00','Físico','2 Días','54','Revista');

SELECT * FROM material;