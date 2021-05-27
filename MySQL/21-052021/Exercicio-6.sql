-- Exercicio 6

create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
certificado boolean,
descricao varchar(255),
escola  varchar(255),
primary key (id)
);

insert into tb_categoria (descricao , certificado , escola) values ("lógica", true , "Ge né retchon" );
insert into tb_categoria (descricao , certificado , escola) values ("línguas", true , "FISKILL" );
insert into tb_categoria (descricao , certificado , escola) values ("artes", false , "Japan Sunsest");
insert into tb_categoria (descricao , certificado , escola) values ("música", false , "CifraVivaldi"); -- Bethoven
insert into tb_categoria (descricao , certificado , escola) values ("arte marcial", true , "FEBRAM"); 



create table tb_curso( 

id bigint auto_increment,
nomeCurso varchar(255),
preco decimal (10,2),
duracao int , -- meses
professor varchar(255),
lugar varchar (255),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_curso ( nomeCurso, preco , duracao , professor , lugar , categoria_id) values ("Soroban" , 250.0 , 120 , "Goenji-san" , "Vila Carrão" , 1); 
insert into tb_curso ( nomeCurso, preco , duracao , professor , lugar , categoria_id) values ("Programação" , 1000.99, 48 , "Jefferson Confia", "Vila Ema", 1);
insert into tb_curso ( nomeCurso, preco , duracao , professor , lugar , categoria_id) values ("Flauta doce" , 300.0 , 8 ,"Tais Petacular", "São Mateus" , 4); 
insert into tb_curso ( nomeCurso, preco , duracao , professor , lugar , categoria_id) values ("Krav Maga" , 1550.20, 12 , "Gal Gadot" , "Tatuapé" , 5);
insert into tb_curso ( nomeCurso, preco , duracao , professor , lugar , categoria_id) values ("Japonês" , 420.0 , 72 , "Akira Toriyama" ,"Penha" , 2);
insert into tb_curso ( nomeCurso, preco , duracao , professor , lugar , categoria_id) values ("Mangá" , 200.40, 24, "Fábio Xin" , "Patriarca" , 3);
insert into tb_curso ( nomeCurso, preco , duracao , professor , lugar , categoria_id) values ("Latim" , 500.50, 24, "Rizzi" , "Itaquera" , 2);

select * from tb_curso;
select * from tb_curso where preco > 500;
select * from tb_curso where preco between 30 and 600;
select * from tb_curso where nomeCurso like "%j%";
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;
select * from tb_curso where categoria_id=1;
select * from tb_produtos where categoria_id = 4;


