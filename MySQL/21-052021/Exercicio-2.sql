-- Exercício 2

create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
estoque boolean not null,
qtdIngredientes int, -- Quantos ingredientes vão na pizza
primary key (id)
);

insert tb_categoria (descricao , estoque , qtdIngredientes) values ("molho de tomate + queijo e mozarela", true, 2);
insert tb_categoria (descricao , estoque , qtdIngredientes) values ("molho de tomate + queijo mozarela + Frango ao Requeijão" , true, 3);
insert tb_categoria (descricao , estoque , qtdIngredientes) values ("molho de tomate + queijo mozarela + alho torrado" , false, 3);
insert tb_categoria (descricao , estoque , qtdIngredientes) values ("molho de tomate + queijo mozarela + rodelas de linguiça calabresa", true, 3);
insert tb_categoria (descricao, estoque,  qtdIngredientes) values ("molho de tomate + queijo mozarela + provolone + ricota fresca + gorgonzola.", true ,5);

create table tb_produto(
id bigint auto_increment,
sabor varchar(255) not null,
preco decimal (5,2) not null,
produto_id bigint ,
bordaRecheada boolean, -- Borda recheada? sim ou não
tipoMassa varchar (255), -- massa fina, massa pan, massa integral
primary key (id),
FOREIGN key (produto_id) references tb_categoria(id)
);

alter table tb_produto modify preco decimal (10,2);
-- criei a tabela com valor decimal 5,2 não estava funcionando alterei para 10,2

insert tb_produto (sabor, preco , produto_id, bordaRecheada , tipoMassa) values ("Padrão", 28.00, 1 , false , "massa fina" );
insert tb_produto (sabor, preco, produto_id, bordaRecheada, tipoMassa) values ("Frango e Requeijão" , 52.00 , 2 , true , "pan" );
insert tb_produto (sabor, preco, produto_id, bordaRecheada, tipoMassa) values ("Pizza alho", 48.90 ,  5, true ,"integral");
insert tb_produto (sabor, preco, produto_id, bordaRecheada, tipoMassa) values ("Calabresa", 30.00 , 3 , false ,"massa fina");
insert tb_produto (sabor, preco, produto_id, bordaRecheada, tipoMassa) values ("Quatro queijos",35.00 , 4, true ,"pan");


select * from tb_categoria;
select * from tb_produto where preco >45;
select * from tb_produto where preco between 29 and 60;
select * from tb_produto where sabor like "c%";
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.produto_id;
select * from tb_produto where produto_id = 1;


