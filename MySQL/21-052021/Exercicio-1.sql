

create database db_game_online;

use db_game_online;

create table tb_classe(
id bigint auto_increment,
nome varchar(100) not null,
habilidade varchar(150),
peso int, -- em quilos
primary key (id)
);

insert into tb_classe (nome , habilidade, peso ) values ("Mago do gelo" , "Magia de gelo" , 55);
insert into tb_classe (nome, habilidade , peso ) values ("Mago do fogo" , "Magia de fogo" , 57 );
insert into tb_classe (nome , habilidade , peso) values ("Fada" , "Pó de pirlimpimpim" , 1);
insert into tb_classe (nome, habilidade , peso) values ( "Suporte " , " Cura " , 60 );
insert into tb_classe (nome, habilidade , peso) values ( "Pokémon " , " Cabeçada " , 30);

create table tb_personagem (
id bigint auto_increment,
nome varchar (255) not null,
stats varchar (255) not null, -- vivo ou fora de combate
ataque bigint,
defesa bigint,
inteligencia bigint,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe(id)
);

insert into tb_personagem ( nome , stats , ataque , defesa , inteligencia , classe_id ) values ("Arthur 3" , "vivo" , 600 , 200 , 200 , 2);
insert into tb_personagem ( nome , stats , ataque , defesa , inteligencia , classe_id) values ("Conan " , "fora de combate", 1200 , 500, 5000, 4);
insert into tb_personagem ( nome , stats , ataque , defesa , inteligencia , classe_id ) values ("Pinky" , " vivo", 2600  ,1500 ,3600 , 3 );
insert into tb_personagem ( nome , stats , ataque , defesa , inteligencia , classe_id ) values ("Snorlax" , "fora de combate", 1000 , 5000 , 2 ,5);
insert into tb_personagem ( nome , stats , ataque , defesa , inteligencia , classe_id ) values ("Goku" , "vivo e morto" , 9000 , 5000, 5 ,1); -- poder de ataque do goku é mais de 8000!!!!


select * from tb_personagem;
select * from tb_personagem where ataque>2000;
select * from tb_personagem where ataque between 1000 and 2000;
select * from tb_personagem where nome like "c%";
select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;
select * from tb_personagem where class_id = 2;

select * from tb_personagens;
select * from tb_classe;