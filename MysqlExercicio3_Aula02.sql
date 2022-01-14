create database db_Exercicio3;
use db_Exercicio3;

-- crie uma tabela com 5 atributos dos estudantes --

create table tb_estudantes(
       id bigint auto_increment,
	nome varchar(255) not null,
    periodo varchar(30) not null,
    turma int not null,
    nota decimal (3,2) not null,
    primary key (id)
);

-- popule esta tabela com até 8 dados --

INSERT INTO tb_estudantes (nome, periodo, turma, nota) VALUES ("Mariana","Matutino",3,5.8);
INSERT INTO tb_estudantes (nome, periodo, turma, nota) VALUES ("Lucia","Matutino",4,8.6);
INSERT INTO tb_estudantes (nome, periodo, turma, nota) VALUES ("Fernando","Matutino",5,7.5);

-- faça um select que retorne os estudantes com a nota > 7 --

select * from tb_estudantes where nota > 7;

-- faça um select que retorne os estudantes com a nota < 7 --

select * from tb_estudantes where nota < 7;

-- atualize um dado desta tabela através de uma query de atualização --

update tb_estudantes set nota = 9 where id = 3; 