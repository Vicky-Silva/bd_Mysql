create database db_Exercicio2;
use db_Exercicio2;

-- crie uma tabela com 5 atributos dos produtos --
create table tb_produtos(
      id bigint auto_increment,
   nome varchar(30) not null,
   condicao varchar(30) not null,
   quantidade int not null,
   preco decimal (6,2) not null,
   primary key (id)
);

-- popule esta tabela com até 8 dados --
insert into tb_produtos (nome, condicao, quantidade, preco) values ("Playstation 5","Novo",5,000.00);
INSERT INTO tb_produtos (nome, condicao, quantidade, preco) VALUES ("Iphone 13","Novo",13,500.00);
INSERT INTO tb_produtos (nome, condicao, quantidade, preco) VALUES ("Notebook","Novo",2,000.00);
INSERT INTO tb_produtos (nome, condicao, quantidade, preco) VALUES ("Tv Samsunng","Novo",8,200.00);

-- faça um select que retorne os produtos com o valor maior que 500 --

select * from tb_produtos where preco > 500.00;

-- faça um select que retorne os produtos com o valor menor que 500 --

select * from tb_produtos where preco < 500.00;

-- atualize um dado desta tabela através de uma query de atualização --

update tb_produtos set preco = 80.00 where id = 4;
