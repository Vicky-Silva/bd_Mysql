create database db_pizzaria_legall;
use db_pizzaria_legall;

create table tb_categoria(
	id bigint auto_increment,
	sabor varchar(20) not null,
    massa varchar(20) not null,
    primary key (id)
);

INSERT INTO tb_categoria (sabor, massa) VALUES ("Salgado", "Tradicional");
INSERT INTO tb_categoria (sabor, massa) VALUES ("Salgado", "Napolitana");
INSERT INTO tb_categoria (sabor, massa) VALUES ("Doce", "Tradicional");
INSERT INTO tb_categoria (sabor, massa) VALUES ("Doce", "Nova-iorquina");
INSERT INTO tb_categoria (sabor, massa) VALUES ("Salgado", "Siciliana");

create table tb_pizza(
	id bigint auto_increment,
	recheio varchar(30) not null,
    preco decimal (5,2) not null,
    tamanho varchar(15) not null,
    quantidade int not null,
    categoria_id bigint,
	primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

INSERT INTO tb_pizza (recheio, preco, tamanho, quantidade, categoria_id) VALUES ("Portuguesa", 36.00, "Grande", 1, 2);
INSERT INTO tb_pizza (recheio, preco, tamanho, quantidade, categoria_id) VALUES ("Marguerita", 25.00, "Média", 2, 3);
INSERT INTO tb_pizza (recheio, preco, tamanho, quantidade, categoria_id) VALUES ("Chocolate com morango", 25.50, "pequena", 2, 2);
INSERT INTO tb_pizza (recheio, preco, tamanho, quantidade, categoria_id) VALUES ("Brocolis", 46.00, "Grande", 3, 5);
INSERT INTO tb_pizza (recheio, preco, tamanho, quantidade, categoria_id) VALUES ("Beijinho", 25.50, "pequena", 1, 4);
INSERT INTO tb_pizza (recheio, preco, tamanho, quantidade, categoria_id) VALUES ("Strogonoff", 48.00, "Grande", 2, 1);

select * from tb_pizza;

-- SELECT PRODUTOS COM VALOR MAIOR QUE R$ 45.00
select * from tb_pizza where preco > 45.00;

-- SELECT PRODUTOS COM VALOR ENTRE 29 E 60 REAIS
select * from tb_pizza where preco between 29.00 and 60.00;

-- SELECT UTILIZANDO LIKE BUSCANDO PRODUTOS COM A LETRA cache index
select * from tb_pizza where recheio like "%c%";

-- FAÇA UM SELECT COM INNER JOIN ENTRE TABELA CATEGORIA E PIZZA
select tb_pizza.recheio, tb_pizza.preco, tb_pizza.tamanho, tb_categoria.sabor, tb_categoria.massa from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id; 

-- FAÇA UM SELECT ONDE TRAGA TODOS OS PRODUTOS DE UMA CATEGORIA ESPECIFICA
select tb_pizza.recheio, tb_pizza.preco, tb_pizza.tamanho, tb_categoria.sabor, tb_categoria.massa from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.id = 2;
