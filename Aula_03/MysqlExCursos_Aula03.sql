create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(20) not null,
vagas int not null,
primary key (id)
);

INSERT INTO tb_categoria (tipo, vagas) VALUES ("EAD",49);
INSERT INTO tb_categoria (tipo, vagas) VALUES ("Presencial", 50);

select * from tb_categoria;

create table tb_curso (
id bigint auto_increment,
nome varchar (255) not null,
inicio date,
termino date,
preco decimal(6,2) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_curso (nome, inicio, termino, preco, categoria_id) VALUES ("Curso Ruby iniciante", "20/02/2022", "20/05/2022", 55.00,1);
INSERT INTO tb_curso (nome, inicio, termino, preco, categoria_id) VALUES ("Curso java avacado", "12/03/2022", "15/06/2022", 40.00,3);
INSERT INTO tb_curso (nome, inicio, termino, preco, categoria_id) VALUES ("Curso Phayton Intermediario", "13/03/2022", "18/07/2022", 60.00,2);
INSERT INTO tb_curso (nome, inicio, termino, preco, categoria_id) VALUES ("Curso Eclipse iniciante", "10/02/2022", "18/06/2022", 35.00,2);

select * from tb_curso;

-- SELECT PRODUTOS COM VALOR MAIOR QUE R$ 50.00
select * from tb_curso where preco > 50;

-- SELECT PRODUTOS COM VALOR ENTRE 3 E 60 REAIS
select * from tb_curso where preco between 3 and 60;

-- SELECT UTILIZANDO LIKE BUSCANDO PRODUTOS COM A LETRA J
select * from tb_curso where nome like "%j%";

-- FAÇA UM SELECT COM INNER JOIN ENTRE CATEGORIA E PRODUTO
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

-- FAÇA UM SELECT ONDE TRAGA TODOS OS PRODUTOS DE UMA CATEGORIA ESPECIFICA
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_categoria.id = 1;
