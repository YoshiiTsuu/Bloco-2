-- Exercício 3
create database db_school;

create table tb_alunos(

id bigint auto_increment,
nome varchar (255) not null,
idade int not null,
sala int not null,
nota double not null,
mensalidade boolean not null, -- caso tiver pago a mensalidade boolean = true, caso não  boolean  =false
primary key (id)
);

insert tb_alunos(nome, idade, sala, nota, mensalidade) value ("Tiago", 12, 05, 10, true);
insert tb_alunos(nome, idade, sala, nota, mensalidade) value ("Ana", 13, 01, 07, false);
insert tb_alunos (nome, idade, sala, nota, mensalidade) value ("Ariane", 11, 05, 10, true);
insert tb_alunos(nome, idade, sala, nota, mensalidade) value ("Pedro", 8, 01, 02, false);
insert tb_alunos(nome, idade, sala, nota, mensalidade) value ("Ariadne", 10, 03, 4.5, true);

select * from tb_alunos;
select * from tb_alunos where nota>7;
select * from tb_alunos where nota<7;

update tb_alunos set mensalidade = true where id = 2;
