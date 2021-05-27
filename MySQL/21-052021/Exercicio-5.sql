-- Atividade 3


create database db_okinalar;

use db_okinalar;


create table tb_categoria(
id bigint auto_increment,
pCasa varchar (255), -- direcionado a quais partes da casa , eletrica, hjidraulica, tijolo
materialProduto varchar(255),
estoque boolean, 
primary key(id)
);

insert into tb_categoria(pCasa , materialProduto , estoque ) values ("hidraulica" , "plastico" , true );
insert into tb_categoria(pCasa , materialProduto , estoque ) values ("eletrica" , "plastico" ,  true );
insert into tb_categoria(pCasa , materialProduto , estoque ) values ("ferramenta" , "ferro" , true );
insert into tb_categoria(pCasa , materialProduto , estoque ) values ("decoração" , "papel" , true );
insert into tb_categoria(pCasa , materialProduto , estoque ) values ("cozinha" , "marmore" , true );


create table tb_produto(
id bigint auto_increment,
nome varchar(255),
marca varchar(255),
peso decimal(10,2), -- em gramas
preco decimal(10,2),
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (nome, marca , peso , preco ,categoria_id) values ("pia " , "Mamorex" , "30000.0" , 5000.0 , 5);
insert into tb_produto (nome, marca , peso , preco ,categoria_id) values ("cotovelo 3/4" , "Tigre" , 200.0 , 2.50 , 1);
insert into tb_produto (nome, marca , peso , preco ,categoria_id) values ("cotovelo 3/4" , "Amanco" , 150.0 , 3.5 , 1);
insert into tb_produto (nome , peso , preco ,categoria_id) values ("conduíte" , 300.0 , 25.0 , 2);
insert into tb_produto (nome, marca , peso , preco ,categoria_id) values   ("Abajour RGB" , "AlyExpress" , 350.0 , 75.0 , 4);
insert into tb_produto (nome, marca , peso , preco ,categoria_id) values ("Pilha AAA" , "Panasonic" , 500.0 , 7.5 , 2);
insert into tb_produto (nome, marca , peso , preco ,categoria_id) values ("Alicate" , "Tramontina" , 4000.0, 35.99, 3);
insert into tb_produto (nome, peso , preco ,categoria_id) values ( "Placa (proibido estacionar) ", 30.2 , 25.00, 4);


select * from tb_produto;
select * from tb_produto where preco>50;
select * from tb_produto where preco between 3 and 660;
select * from tb_produto where nome like "%c%";
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id;
select * from tb_produtos where categoria_id = 5;
























