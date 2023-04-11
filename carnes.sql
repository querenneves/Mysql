create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categorias(
id bigint auto_increment,
nome varchar(255),
carnes varchar(255),
primary key (id)
);

select * from tb_categorias;

insert into tb_categorias(nome, carnes)
values ("Pedro Henrique", "Picanha");
insert into tb_categorias(nome, carnes)
values ("Barbara Nascimento", "Alcatra");
insert into tb_categorias(nome, carnes)
values ("Daniel Hernandez", "Filé Mignon");
insert into tb_categorias(nome, carnes)
values ("Kelly Corliss", "Lombo de Porco");
insert into tb_categorias(nome, carnes)
values ("Thomas da Silva", "Fraldinha");

create table tb_produtos(
id bigint auto_increment,
preco decimal(6,2) not null,
quantidade int,
codigo_barras int, 
marca varchar(255),
categorias_id bigint,
primary key (id),
foreign KEY (categorias_id) references tb_categorias(id)
);

select * from tb_produtos;

insert into tb_produtos(preco, quantidade, codigo_barras, marca, categorias_id)
values (50, 2, 5789365, "Maturatta", 1);
insert into tb_produtos(preco, quantidade, codigo_barras, marca, categorias_id)
values (150, 3, 5789366, "Subambeef", 2);
insert into tb_produtos(preco, quantidade, codigo_barras, marca, categorias_id)
values (170, 1, 5789367, "Subambeef", 3);
insert into tb_produtos(preco, quantidade, codigo_barras, marca, categorias_id)
values (40, 1, 5789368, "Seara", 4);
insert into tb_produtos(preco, quantidade, codigo_barras, marca, categorias_id)
values (30, 3, 5789369, "Swift", 5);
insert into tb_produtos(preco, quantidade, codigo_barras, marca, categorias_id)
values (50, 2, 5789365, "Maturatta", 1);
insert into tb_produtos(preco, quantidade, codigo_barras, marca, categorias_id)
values (170, 2, 5789367, "Subambeef", 3);
insert into tb_produtos(preco, quantidade, codigo_barras, marca, categorias_id)
values (50, 1, 5789365, "Maturatta", 1);

select * from tb_produtos where preco > 50;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50 AND 150;

-- Alterando nome dos tipos de carne
update tb_categorias set carnes = "Contrafilé" where id = 5;

SELECT * FROM tb_categorias WHERE carnes LIKE "C%";

Select * from tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categorias_id = tb_categorias.id;

SELECT carnes from tb_categorias
RIGHT JOIN tb_produtos ON tb_produtos.categorias_id = tb_categorias.id



