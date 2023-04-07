create database db_escola;
use db_escola;

create table tb_alunos(
id bigint auto_increment,
nome varchar(255),
turma varchar(255),
ra varchar(255),
professor varchar(255),
nota decimal not null,
primary key (id)
);

select * from tb_alunos;

insert into tb_alunos(nome, turma, ra, professor, nota)
values ("Pedro Henrique", "60", "25025", "Rafael Queiroz", 7.0);
insert into tb_alunos(nome, turma, ra, professor, nota)
values ("Andressa Camargo", "61", "25026", "Luis Guerreiro", 5.0);
insert into tb_alunos(nome, turma, ra, professor, nota)
values ("Andre Felipe", "62", "25027", "Elizabeth Hainna", 6.0);
insert into tb_alunos(nome, turma, ra, professor, nota)
values ("Henrique Oliveira", "62", "25028", "Rafael Queiroz", 4.0);
insert into tb_alunos(nome, turma, ra, professor, nota)
values ("David Jorge", "63", "25030", "Luis Guerreiro", 9.0);
insert into tb_alunos(nome, turma, ra, professor, nota)
values ("Vitoria de Lara", "61", "25031", "Elizabeth Hainna", 8.0);
insert into tb_alunos(nome, turma, ra, professor, nota)
values ("Flavio Neves", "61", "25032", "Rafael Queiroz", 10.0);
insert into tb_alunos(nome, turma, ra, professor, nota)
values ("Felipe dos Santos", "63", "25033", "Elizabeth Hainna", 10.0);

select * from tb_alunos where nota > 7;

select * from tb_alunos where nota < 7;