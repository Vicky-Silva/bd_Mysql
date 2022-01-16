create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

INSERT INTO tb_categoria (descricao, ativo) values ("Bovino",true);
INSERT INTO tb_categoria (descricao, ativo) values ("Suíno",true);
INSERT INTO tb_categoria (descricao, ativo) values ("Aves",true);
INSERT INTO tb_categoria (descricao, ativo) values ("Endustrializados",true);

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
quantidade int not null,
validade date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_produtos (nome, preco, quantidade, validade, categoria_id) VALUES ("Coxão mole", 45.00, 20, "25/03/2022", 3);
INSERT INTO tb_produtos (nome, preco, quantidade, validade, categoria_id) VALUES ("Picanha", 50.00, 30, "30/03/2022", 1);
INSERT INTO tb_produtos (nome, preco, quantidade, validade, categoria_id) VALUES ("Coxa de Frango", 20.00, 10, "15/02/2022", 3);
INSERT INTO tb_produtos (nome, preco, quantidade, validade, categoria_id) VALUES ("Contra filé", 40.00, 40, "20/04/2022", 1);
INSERT INTO tb_produtos (nome, preco, quantidade, validade, categoria_id) VALUES ("Salsicha",15.00, 30, "29/05/2022", 5);
INSERT INTO tb_produtos (nome, preco, quantidade, validade, categoria_id) VALUES ("Cupim", 30.00, 20, "10/03/2022", 1);
INSERT INTO tb_produtos (nome, preco, quantidade, validade, categoria_id) VALUES ("Peito de Frango", 25.00, 20, "12/02/2022", 3);
INSERT INTO tb_produtos (nome, preco, quantidade, validade, categoria_id) VALUES ("Naggtes", 20.00, 10, "21/04/2022", 4);
INSERT INTO tb_produtos (nome, preco, quantidade, validade, categoria_id) VALUES ("Linguica", 12.00, 25, "14/02/2022", 5);

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
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 5;
