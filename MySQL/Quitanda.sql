-- Criar banco de dados
create database db_quitanda;

-- antes de criar tabela, tem que ser dito qual banco de dados será utilizado
use db_quitanda;

-- criar tabela
create table tp_produtos(
-- aqui dentro vem as colunas
-- colunas = atributos
-- linhas são dados/registros
id bigint auto_increment,  -- auto increment faz com que o id seja gerado automaticamente
-- chave primaria artificial, voce tem certeza que ela nunca se repete
nome_produto varchar(255) not null, -- 255 tamanho padrão do varchar
preco decimal not null, -- decimal utilizado para questões monetária!
-- not null para dizer que não pode ser vazio!
primary key (id) -- toda tabela precisa de uma primary key!!


); 

-- Insere dados na tabela

insert into tp_produtos( nome_produto, preco) values("tomate", 50.00);
insert into tp_produtos( nome_produto, preco) values("maçã", 5.00);
-- todo dado que for varchar é necessário colocar aspas
-- Visualizar os dados

select * from tp_produtos; -- o asterisco indica que você está selecionando tudo
select nome_produto, preco from tp_produtos; -- aqui ele só vai mostrar o nome e o preco
select * from tp_produtos where id=1; -- aqui ele só vai mostrar quem tem o id = 1
select * from tp_produtos where preco>20; -- aqui ele pede produtos que o preco seja alto


-- Altera estrutura da tabela

alter table tp_produtos add descricao varchar(255); -- aqui estou adicionando
alter table tp_produtos drop preco; -- aqui estou removendo a coluna preco
alter table tp_produtos add preco decimal (20) not null;

-- Alterar  dados na tabela 

update tp_produtos set preco = 0 where id = 1;
-- Atualizar na tabela produto o campo preco para 0,
-- onde o id é igual a 1

-- Deletar dados da tabela!!! (CUIDADO)

delete from tp_produtos where id=2;


