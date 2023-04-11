create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categorias(
id bigint auto_increment,
nome varchar(255),
sabor varchar(255),
primary key (id)
);

select * from tb_categorias;

insert into tb_categorias(nome, sabor)
values ("Pedro Henrique", "Calabresa");
insert into tb_categorias(nome, sabor)
values ("Barbara Nascimento", "Portuguesa");
insert into tb_categorias(nome, sabor)
values ("Daniel Hernandez", "Catupiry");
insert into tb_categorias(nome, sabor)
values ("Kelly Corliss", "Mussarela");
insert into tb_categorias(nome, sabor)
values ("Thomas da Silva", "Napolitana");

create table tb_pizzas(
id bigint auto_increment,
preco decimal(6,2) not null,
quantidade int,
borda_recheada boolean, 
descricao varchar(255),
categorias_id bigint,
primary key (id),
foreign KEY (categorias_id) references tb_categorias(id)
);

select * from tb_pizzas;

insert into tb_pizzas(preco, quantidade, borda_recheada, descricao, categorias_id)
values (50, 2, true, "Mussarela, calabresa, orégano e base de molho de tomate", 1);
insert into tb_pizzas(preco, quantidade, borda_recheada, descricao, categorias_id)
values (45, 1, false, "Mussarela, calabresa, azeitonas verdes, ovo de codorna, cebola, orégano e base de molho de tomate.", 2);
insert into tb_pizzas(preco, quantidade, borda_recheada, descricao, categorias_id)
values (100, 1, true, "Mussarela, frango, Catupiry, sálvia e base de molho de tomate. (ESPECIAL FAMILIA)", 3);
insert into tb_pizzas(preco, quantidade, borda_recheada, descricao, categorias_id)
values (50, 5, true, "Mussarela de búfala, tomate cereja, manjericão, orégano, base de molho de tomate na massa integral.", 4);
insert into tb_pizzas(preco, quantidade, borda_recheada, descricao, categorias_id)
values (45, 1, false, "Presunto defumado, orégano salpicado, tomate fresco, azeitona sem caroço, queijo mussarela, etc", 5);
insert into tb_pizzas(preco, quantidade, borda_recheada, descricao, categorias_id)
values (50, 1, true, "Mussarela, calabresa, orégano e base de molho de tomate", 1);
insert into tb_pizzas(preco, quantidade, borda_recheada, descricao, categorias_id)
values (50, 2, true, "Mussarela, calabresa, azeitonas verdes, ovo de codorna, cebola, orégano e base de molho de tomate.", 2);
insert into tb_pizzas(preco, quantidade, borda_recheada, descricao, categorias_id)
values (50, 2, true, "Mussarela, frango, Catupiry, sálvia e base de molho de tomate.", 3);

select * from tb_pizzas where preco > 45;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_categorias WHERE sabor LIKE "M%";

Select * from tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categorias_id = tb_categorias.id;

-- Adicionando pizza doce ao cardapio
update tb_categorias set sabor = "Doce" where id = 5;
-- Adicionando descrição de pizza doce ao cardapio
update tb_pizzas set descricao = "Creme de leite, nutella com morango." where id = 5;

SELECT sabor from tb_categorias
RIGHT JOIN tb_pizzas ON tb_pizzas.categorias_id = tb_categorias.id
where sabor like "D%";



