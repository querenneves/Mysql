-- Criando banco de dados
create database joao_cabelereiro;
-- Deletando banco de dados
drop database joao_cabelereiro;

-- Utilizando banco de dados
use joao_cabelereiro;

-- Criar tabela e popular
create table joao_cabelereiro(
id bigint auto_increment,
cliente varchar(255) not null,
servico varchar (20) not null,
preco decimal not null,
primary key(id)
);

-- Visualizar a tabela
select * from joao_cabelereiro;

-- Popular tabela
insert into joao_cabelereiro(cliente,servico, preco)
values ("carlos","degrade", 28,9);
insert into joao_cabelereiro(cliente,servico, preco)
values ("kevin","degrade", 28,9);
insert into joao_cabelereiro(cliente,servico, preco)
values ("jonas","social",20);
insert into joao_cabelereiro(cliente,servico, preco)
values ("rian","degrade",28,9);
insert into joao_cabelereiro(cliente,servico, preco)
values ("andre","social",20);
insert into joao_cabelereiro(cliente,servico, preco)
values ("matheus","degrade", 28,9);

-- bascas especificas
select * from joao_cabelereiro where id = 3;

-- comando diferente o restando segue o mesmo padrão java | comando para busca e seleção
select * from joao_cabelereiro where preco > 20 and servico <> "social";

-- comando para alterar
update joao_cabelereiro set preco = (28.9) where id= 3;

-- comando para excluir
delete from joao_cabelereiro where id =2;

-- comando para atualizar 
alter table joao_cabelereiro modify preco decimal(28,1);

-- comando para adicionar coluna na tabela
alter table joao_cabelereiro add descricao varchar(300);

-- comando para excluir coluna na tabela
alter table joao_cabelereiro drop descricao;

-- comando para alterar nome coluna na tabela
alter table joao_cabelereiro change cliente nome varchar(255);



