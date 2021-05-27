-- Exercício 1
-- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos funcionaries desta empresa.

use db_rh;
-- Avisando em qual banco de dados eu vou utilizar

create database db_RH;
-- criando banco de dados

create table tb_funcionarios(
-- criando tabela funcionarios
id bigint auto_increment, -- criando um id para funcionarios
nome varchar(255) not null,
cargo varchar(255) not null,
salario decimal(10,2) not null,
primary key (id)
);

-- Inserindo novos atributos na tabela
alter table tb_funcionarios add idade int not null;
alter table tb_funcionarios add qualidade varchar(255) not null;

-- Inserindo dados na tabela

insert into tb_funcionarios (nome, cargo, salario, idade, qualidade) value ("Adalto", "CTO", 4000.00, 25, "Pontual");
insert into tb_funcionarios (nome, cargo, salario, idade, qualidade) value ("Mitsuki", "Analista Java Jr.", 3500.00, 18, "Trabalho em equipe");
insert into tb_funcionarios (nome, cargo, salario, idade, qualidade) value ("Kenji", "Trainee", 2500.00, 22, "Carismático");
insert into tb_funcionarios (nome, cargo, salario, idade, qualidade) value ("Juliana", "Faxineira", 1800.00, 42, "Flexível");
insert into tb_funcionarios (nome, cargo, salario, idade, qualidade) value ("Beatriz", "Analista Java Jr.", 3500.00, 20, "Proativa" );


-- Mostrando todos dados da tabela
select * from tb_funcionarios;
select * from tb_funcionarios where salario>2000;
select * from tb_funcionarios where salario<2000;

-- Atualizando dados na tabela

update tb_funcionarios set cargo = "Demitido" where id = 4;
update tb_funcionarios set salario = 0 where id = 4;


 





