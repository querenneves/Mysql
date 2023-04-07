create database db_loja;
use db_loja;

create table tb_roupas(
id bigint auto_increment,
produto varchar(255),
cor varchar(255),
preco decimal not null,
estoque integer,
tamanho varchar(255),
primary key (id)
);

select * from tb_roupas;

insert into tb_roupas(produto, cor, preco, estoque, tamanho)
values ("Blusinha", "Rosa", 50, 100, "M" );
insert into tb_roupas(produto, cor, preco, estoque, tamanho)
values ("Blusinha", "Preta", 50, 100, "M" );
insert into tb_roupas(produto, cor, preco, estoque, tamanho)
values ("Blusinha", "Azul", 50, 100, "M" );
insert into tb_roupas(produto, cor, preco, estoque, tamanho)
values ("Calça", "Jeans", 100, 100, "M" );
insert into tb_roupas(produto, cor, preco, estoque, tamanho)
values ("Jaqueta Peluda", "Branca", 600, 100, "M" );
insert into tb_roupas(produto, cor, preco, estoque, tamanho)
values ("Tenis nike", "Preto", 800, 100, "37-38" );
insert into tb_roupas(produto, cor, preco, estoque, tamanho)
values ("Bone", "Preto", 110, 100, "M" );
insert into tb_roupas(produto, cor, preco, estoque, tamanho)
values ("Bolsa", "Rosa", 300, 100, "P" );

select * from tb_roupas where preco > 500;

select * from tb_roupas where preco < 500;