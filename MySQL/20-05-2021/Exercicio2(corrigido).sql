use db_commerce;


create database db_commerce;

create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
peso double, -- em gramas
tipo varchar (255) not null,
preco decimal(7,2) not null,
nome_fabrica varchar(255) not null,
primary key (id)
);

insert into tb_produto (nome, tipo, peso, preco, nome_fabrica) value ( "Celular Galaxy J5","eletroeletrônico"  ,146.0, 649.99, "Samsung");
insert into tb_produto (nome, tipo, peso, preco, nome_fabrica) value ("fogão", "eletrodoméstico", 39000, 899.00, "Brastemp");
insert into tb_produto (nome, tipo, peso, preco, nome_fabrica) value ( "mesa", "móvel", 8000, 400.00, "Tramontina");
insert into tb_produto (nome, tipo, peso, preco, nome_fabrica) value ("mesa digitalizadora", "eletroeletrônico", 1297.274, 469.90, "Waccom");
insert into tb_produto (nome, tipo, peso, preco, nome_fabrica) value ("Playstation 4", "eletroeletrônico", 2800, 2696.07, "Sony");
insert into tb_produto (nome, tipo, peso, preco, nome_fabrica) value ("Playstation 5", "eletroeletrônico", 4500, 6938.00, "Sony");
insert into tb_produto (nome, tipo, peso, preco, nome_fabrica) value ("Nitendo Switch", "eletroeletrônico", 326, 2420.99, "Nintendo");
insert into tb_produto (nome, tipo, peso, preco, nome_fabrica) value ("Xbox One", "eletroeletrônico", 3500, 2799.00, "Microsoft");
insert into tb_produto (nome, tipo, peso, preco, nome_fabrica) value ("Xobx OneX", "eletroeletrônico", 3800, 2998.00, "Microsoft");

select * from tb_produto;
select * from tb_produto where preco>500;
select * from tb_produto where preco<500;

update tb_produto set nome = "esgotado" where id = 1;
update tb_produto set tipo = "esgotado" where id = 1;
update tb_produto set peso = "esgotado" where id = 1;
update tb_produto set preco = "esgotado" where id = 1;
update tb_produto set nome_fabrica = "esgotado" where id = 1;