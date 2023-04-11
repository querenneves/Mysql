create database db_curso_da_minha_vida;
use db_curso_da_minha_vida;

create table tb_categorias(
id bigint auto_increment,
nome varchar(255),
tipo varchar(255),
primary key (id)
);

select * from tb_categorias;

insert into tb_categorias(nome, tipo)
values ("Pedro Henrique", "Java");
insert into tb_categorias(nome, tipo)
values ("Barbara Nascimento", "Python");
insert into tb_categorias(nome, tipo)
values ("Daniel Hernandez", "HTML/CSS");
insert into tb_categorias(nome, tipo)
values ("Kelly Corliss", "Grafana");
insert into tb_categorias(nome, tipo)
values ("Thomas da Silva", "Elasticsearch");

create table tb_cursos(
id bigint auto_increment,
preco decimal(6,2) not null,
sala int,
ra int,
professor varchar(255),
categorias_id bigint,
primary key (id),
foreign KEY (categorias_id) references tb_categorias(id)
);

select * from tb_cursos;

insert into tb_cursos(preco, sala, ra, professor, categorias_id)
values (700, 2, 203210, "Rafael Queiroz", 1);
insert into tb_cursos(preco, sala, ra, professor, categorias_id)
values (600, 3, 203211, "Luis Guerreiro", 2);
insert into tb_cursos(preco, sala, ra, professor, categorias_id)
values (500, 4, 203212, "Rafael Queiroz", 3);
insert into tb_cursos(preco, sala, ra, professor, categorias_id)
values (1000, 1, 203213, "Elizabeth Hainna", 4);
insert into tb_cursos(preco, sala, ra, professor, categorias_id)
values (1000, 1, 203214, "Elizabeth Hainna", 5);
insert into tb_cursos(preco, sala, ra, professor, categorias_id)
values (700, 2, 203215, "Rafael Queiroz", 1);
insert into tb_cursos(preco, sala, ra, professor, categorias_id)
values (600, 3, 203216, "Luis Guerreiro", 2);
insert into tb_cursos(preco, sala, ra, professor, categorias_id)
values (600, 3, 203217, "Luis Guerreiro", 2);

select * from tb_cursos where preco > 500;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600 AND 1000;

SELECT * FROM tb_categorias WHERE tipo LIKE "J%";

Select * from tb_cursos INNER JOIN tb_categorias 
ON tb_cursos.categorias_id = tb_categorias.id;

SELECT tipo from tb_categorias
RIGHT JOIN tb_cursos ON tb_cursos.categorias_id = tb_categorias.id
where tipo like "J%";




