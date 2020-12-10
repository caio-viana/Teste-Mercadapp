CREATE DATABASE teste_mercadapp
CREATE TABLE PRODUTO
(ID INTEGER PRIMARY KEY AUTOINCREMENT,
 COD_BARRA CHAR(50),
 COD_INTERNO CHAR (50),
 PRECO DOUBLE,
 ESTOQUE INT
 );

CREATE TABLE ITEM
(ID INTEGER PRIMARY KEY AUTOINCREMENT,
 COD_BARRA CHAR(20),
 DESCRICAO CHAR(50)
);


insert into PRODUTO (cod_barra, cod_interno, preco, estoque) values (7895800151570,711, 4.5, 12), (7622300119621,16, 6.7, 59), 
(7896480621452,19, 1.2, 32), (7798018850566,22,9.5, 45), (7898409950018,24, 0.6, 34);
 
insert into ITEM (cod_barra, descricao) values (7895800151570,"PRODUTO 01"), (7622300119621,"PRODUTO 02"), (7896480621452,"PRODUTO 03"), 
(7798018850566,"PRODUTO 04"), (7898409950018,"PRODUTO 05");

select * from PRODUTO where estoque >= 50;

select AVG(preco) as "Preço Médio" from PRODUTO where estoque < 35;

SELECT p.cod_barra, i.descricao, p.preco, p.estoque from PRODUTO as p INNER JOIN ITEM as i where p.cod_barra = i.cod_barra
 