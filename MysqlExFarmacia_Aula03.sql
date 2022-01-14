create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
       id bigint not null auto_increment,
       descricao varchar(255) not null,
	ativo boolean,
    primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("antibiótico", true);
insert into tb_categoria (descricao, ativo) values ("antihistamínico", true);
insert into tb_categoria (descricao, ativo) values ("higiene pessoal", true);
insert into tb_categoria (descricao, ativo) values ("beleza", true);
insert into tb_categoria (descricao, ativo) values ("energético", true);

create table tb_produtos(
       id bigint not null auto_increment,
	nome varchar(255) not null,
    dataCadastro date,
    quantidade int,
    preco decimal(7,2) not null,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

INSERT INTO tb_produtos (nome, dataCadastro, quantidade, preco, categoria_id) VALUES ("Amoxilina", current_date(), 100, 19.90, 1);
INSERT INTO tb_produtos (nome, dataCadastro, quantidade, preco, categoria_id) VALUES ("Shampoo", current_date(), 150, 26.50, 3);
INSERT INTO tb_produtos (nome, dataCadastro, quantidade, preco, categoria_id) VALUES ("Allegra", current_date(), 200, 22.00, 2);
INSERT INTO tb_produtos (nome, dataCadastro, quantidade, preco, categoria_id) VALUES ("Esponja de Banho", current_date(), 200, 59.90, 3);
INSERT INTO tb_produtos (nome, dataCadastro, quantidade, preco, categoria_id) VALUES ("Red Bull", current_date(), 40, 8.90, 5);

select * from tb_produtos;

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where nome like "%b%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 3;
