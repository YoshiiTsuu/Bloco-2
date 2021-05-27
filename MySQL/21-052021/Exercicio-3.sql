-- Exercício 3

create database db_farmaciaBem;
use db_farmaciaBem;

create table tb_categoria (
id bigint auto_increment,
recomendado varchar (255), -- recomendado para gripes, tosses, febre
efeito varchar(255), -- efeitos adversos que o remédio pode causar
estoque boolean, -- se tem no estoque ou nao 

primary key (id));

insert tb_categoria (recomendado , efeito , estoque  ) values ("gripe", " diarreia" , true );
insert tb_categoria (recomendado , efeito , estoque  ) values ("corisa" ,"nenhum" , true );
insert tb_categoria (recomendado , efeito , estoque  ) values ("diarreia" , "gripe" , false );
insert tb_categoria (recomendado , efeito , estoque ) values ( "febre" , "nenhum" , true );

create table tb_produto( 
id bigint auto_increment,
nome varchar(255),
peso int, -- peso em gramas
preco decimal (10,2),
qtdEstoque bigint,

categoria_id int ,

primary key (id));

insert tb_produto(nome, peso , preco , qtdEstoque , categoria_id) values ("Ivermectina" , 150 , 60.0 , 0 , 1);
insert tb_produto(nome, peso , preco , qtdEstoque , categoria_id) values (" Cloroquina " , 200 , 15.0 , 0 , 1); 
insert tb_produto(nome, peso , preco , qtdEstoque , categoria_id) values ("Cimegripe" , 300 , 15.0 , 150 , 4);
insert tb_produto(nome, peso , preco , qtdEstoque , categoria_id) values ("Aspirina", 500, 20.0 , 150 , 2);
insert tb_produto(nome, peso , preco , qtdEstoque , categoria_id) values ("Tylenol", 200, 35.00 , 25 , 3);
insert tb_produto(nome, peso , preco , qtdEstoque , categoria_id) values ("Amoxilina", 500, 150.00 , 15, 2);

select * from tb_produto;
select * from tb_produto where preco>50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%j%";
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
select * from tb_produto where categoria_id = 2;


