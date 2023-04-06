create database db_rh;
use db_rh;
create table tb_servico(
id bigint auto_increment,
nome varchar(255),
cpf varchar(255),
salario float not null,
cargo varchar(255),
primary key (id)
);

select * from tb_servico;

insert into tb_servico(nome, cpf, salario, cargo)
values ("Carlos Alberto", "15232565236", 2.000, "operador");
insert into tb_servico(nome, cpf, salario, cargo)
values ("Tifany Dias", "15232585236", 3.000, "Treinador");
insert into tb_servico(nome, cpf, salario, cargo)
values ("Maiara Neves", "25832565236", 4.000, "Supervisor");
insert into tb_servico(nome, cpf, salario, cargo)
values ("Andre Felipe", "15225665236", 5.000, "Gerente");
insert into tb_servico(nome, cpf, salario, cargo)
values ("Leandro Alfredo", "15232565000", 6.000, "Supervisor II");

select * from tb_servico where salario > 2000;

select * from tb_servico where salario < 2000;

alter table tb_servico add email varchar (255);

update tb_servico set email = "teste@testeste.com" where id = 2;

update tb_servico set salario = 1.000 where id = 3;

alter table tb_servico modify salario decimal(1000,2);

update tb_servico set salario = (1.000,0) where id= 1;

set sql_safe_updates = 0;

alter table tb_servico drop salario;

alter table tb_servico add salario decimal;

update tb_servico set salario = (5000.00) where id= 5;
