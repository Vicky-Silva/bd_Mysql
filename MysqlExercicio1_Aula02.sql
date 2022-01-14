create database db_Exercicio01;
use db_Exercicio01;

create table tb_funcionarios(
      id bigint auto_increment,
      nome varchar(255) not null,
      cargo varchar(255) not null,
      cargaHora decimal(3,2) not null,
      salario decimal(6,2) not null,
      primary key (id)
);

insert into tb_funcionarios (nome,cargo,cargaHora,salario) values ("Maria","Gerente",7.00,4000.00);
insert into tb_funcionarios (nome,cargo,cargaHora,salario) values ("Felipe","Cordenador",9.00,6000.00);
insert into tb_funcionarios (nome,cargo,cargaHora,salario) values ("Vitoria","Analista de Documentação",5.00,2000.00);
insert into tb_funcionarios (nome,cargo,cargaHora,salario) values ("Carlos","Assistente Administrativo",9.00,1000.00);
insert into tb_funcionarios (nome,cargo,cargaHora,salario) values ("Paulo","Estagiário",4.00,400.00);

select * from tb_funcionarios where salario > 3000.00;

select * from tb_funcionarios where salario < 3000.00;

update tb_funcionarios set salario = 2000.00 where id = 5;