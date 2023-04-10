create database db_generation_game_online;
use db_generation_game_online;

create table tb_classes(
id bigint auto_increment,
nome varchar(255),
tipo varchar(255),
primary key (id)
);

insert into tb_classes(nome, tipo)
values ("Pedro Henrique", "Caçador");
insert into tb_classes(nome, tipo)
values ("Barbara Nascimento", "Submisso");
insert into tb_classes(nome, tipo)
values ("Daniel Hernandez", "Caçador");
insert into tb_classes(nome, tipo)
values ("Kelly Corliss", "Submisso");
insert into tb_classes(nome, tipo)
values ("Thomas da Silva", "Caçador");

select * from tb_classes;

create table tb_personagens(
id bigint auto_increment,
personagem varchar(255) not null,
pontos int,
campeonato varchar(255), 
sala int,
classes_id bigint,
primary key (id),
foreign KEY (classes_id) references tb_classes(id)
);
select * from tb_personagens;

insert into tb_personagens(personagem, pontos, campeonato, sala, classes_id)
values ("Camaleão", 1000, "amigável", 1, 1);
insert into tb_personagens(personagem, pontos, campeonato, sala, classes_id)
values ("Carneiro", 1500, "tecnico", 2, 2);
insert into tb_personagens(personagem, pontos, campeonato, sala, classes_id)
values ("Panda", 1000, "campionato", 3, 3);
insert into tb_personagens(personagem, pontos, campeonato, sala, classes_id)
values ("Garça", 2000, "amigável", 1, 4);
insert into tb_personagens(personagem, pontos, campeonato, sala, classes_id)
values ("Camaleão", 1100, "tecnico", 2, 5);
insert into tb_personagens(personagem, pontos, campeonato, sala, classes_id)
values ("Carneiro", 2200, "campionato", 3, 6);
insert into tb_personagens(personagem, pontos, campeonato, sala, classes_id)
values ("Panda", 2500, "amigável", 1, 7);
insert into tb_personagens(personagem, pontos, campeonato, sala, classes_id)
values ("Garça", 2700, "tecnico", 2, 8);

select * from tb_personagens;

select * from tb_personagens where pontos > 2000;

SELECT * FROM tb_personagens WHERE pontos BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE personagem LIKE "C%";

Select * from tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classes_id = tb_classes.id; 

SELECT tipo from tb_classes
RIGHT JOIN tb_personagens ON tb_personagens.classes_id = tb_classes.id;

