create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert tb_categoria (descricao, ativo) values ("Bovino",true);
insert tb_categoria (descricao, ativo) values ("Suino",true);
insert tb_categoria (descricao, ativo) values ("Aves",true);
insert tb_categoria (descricao, ativo) values ("pertence feijoada",true);
insert tb_categoria (descricao, ativo) values ("embutidos",true);
insert tb_categoria (descricao, ativo) values ("outros",true);

select * from tb_categoria;

create table tb_produtos (
id bigint(5) auto_increment,
nome varchar (255) not null,
preco decimal(5,2) not null,
qtProduto int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("ASA",40.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Picanha",20.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("coxa de frango",20.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Bacon",30.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("hamburguer",60.00,30,5);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Cupim",20.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Peito de frango",25.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Orelha de porco",20.00,30,4);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Salame",18.00,30,5);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("medalhao",50.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("mocoto",20.00,30,2);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("chuleta",20.00,30,1);
insert tb_produtos (nome, preco, qtProduto) values ("acendedor de churrasqueira",20.00,30);
insert tb_produtos (nome, preco, qtProduto) values ("soprador de churrasqueira",35.00,30);

select * from tb_produtos;
select * from tb_produtos order by preco and nome;
select * from tb_produtos order by nome desc;
-- order by pede para que ele ordene a tabela por ordem alfabetica
-- o desc tem a função de deixar em ordem decrescente

-- Operadores Lógicos, or and

select * from tb_produtos where preco>20.00 and categoria_id = 1;

select * from tb_produtos where preco>20 or categoria_id = 1;

select * from tb_produtos where nome like "%ha";
-- a função like faz com que o programa encontre todos produtos
-- do categoria nome que iniciam com pi sejam encontradas
-- a posição da % altera o que o programa completa e o que ele completa
select * from tb_produtos where nome like "ha%";

select * from tb_produtos where nome like "%ha%";


-- Utilizando in & between

select * from tb_produtos where preco in (20, 30, 40);
-- Ele só trará produtos com preço=20,30 ou 40;

select * from tb_produtos where preco between 20 and 40;
-- Traz produtos com o preço entre 20 e 40;

select * from tb_produtos where preco between 20 and 40 order by preco;
-- Nesse caso ele vai trazer todos os produtos entre 20 e 40 e vai ordenar por nome;

select * from tb_produtos where nome between "a" and "h";

select count(*) from tb_produtos;
-- Mostra quantas linhas há na sua tabela
select count(*) from tb_categoria;
-- Mostra quantas linhas há em outra tabela
select count(categoria_id) from tb_produtos;
-- Aqui ele não vai contar as informações nulas!

select avg(preco) from tb_produtos;
-- Mostra a média do preço de todos produtos;
-- somou tudo e dividiu pela quantidade totb_produtostal

select sum(preco) from tb_produtos;
-- Mostra a soma de todos os produtos


-- Inner Join, Right Join, Left Join


select tb_produtos.nome, tb_produtos.preco, tb_produtos.qtProduto, tb_categoria.descricao from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;
-- tb_categoria.descricao, voce está dizendo de onde vem a descricao e qual tabela
-- É de extrema importância você descrever utilizando . para que ele saiba de onde vem
-- a partir do "on" você descreve quais dados você quer cruzar nas duas tabelas.
-- Inner join sempre deve utilizar chave estrangeira e primária

select tb_produtos.nome, tb_produtos.preco, tb_produtos.qtProduto, tb_categoria.descricao from tb_produtos left join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;
-- Nesse caso aparece o acendedor de churrasco e o soprador, pois eles são da tabela 1!

select tb_produtos.nome, tb_produtos.preco, tb_produtos.qtProduto, tb_categoria.descricao from tb_produtos right join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;
-- Nesse aparecem os produtos da tabela 2!
















