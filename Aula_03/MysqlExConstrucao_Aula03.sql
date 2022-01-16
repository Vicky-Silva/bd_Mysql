create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
ativo boolean not null,
primary key (id)
);

INSERT INTO tb_categoria (tipo, ativo) VALUES ("Hidráulico", true);
INSERT INTO tb_categoria (tipo, ativo) VALUES ("Elétrico", true);
INSERT INTO tb_categoria (tipo, ativo) VALUES ("Pneumático", true);

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
modelo int not null,
preco decimal(6,2) not null,
quantidade int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_produtos (nome, modelo, preco, quantidade, categoria_id) VALUES ("Parafusadeira", 155, 150.00, 1, 3);
INSERT INTO tb_produtos (nome, modelo, preco, quantidade, categoria_id) VALUES ("Transformador", 345, 95.50, 2, 1);
INSERT INTO tb_produtos (nome, modelo, preco, quantidade, categoria_id) VALUES ("Cimento", 876, 6900, 1, 1);
INSERT INTO tb_produtos (nome, modelo, preco, quantidade, categoria_id) VALUES ("Tijolo", 223, 2.000, 4, 2);
INSERT INTO tb_produtos (nome, modelo, preco, quantidade, categoria_id) VALUES ("Martelo", 454, 35.00, 2, 3);

select * from tb_produtos;

-- SELECT PRODUTOS COM VALOR MAIOR QUE R$ 50.00
select * from tb_produtos where preco > 50;

-- SELECT PRODUTOS COM VALOR ENTRE 3 E 60 REAIS
select * from tb_produtos where preco between 3 and 60;

-- SELECT UTILIZANDO LIKE BUSCANDO PRODUTOS COM A LETRA C
select * from tb_produtos where nome like "%c%";

-- FAÇA UM SELECT COM INNER JOIN ENTRE CATEGORIA E PRODUTO
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

-- FAÇA UM SELECT ONDE TRAGA TODOS OS PRODUTOS DE UMA CATEGORIA ESPECIFICA
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 3;
