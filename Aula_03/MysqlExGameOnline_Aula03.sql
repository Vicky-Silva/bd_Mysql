create database db_generation_game_onlin;
use db_generation_game_onlin;

create table tb_classe(
	id bigint auto_increment,
    classe varchar(30) not null,
    Vida int not null,
    primary key (id)
);

insert into tb_classe (classe, Vida) values ("sherek", 15);
insert into tb_classe (classe, Vida) values ("Burro", 10);
insert into tb_classe (classe, Vida) values ("Fiona", 15);
insert into tb_classe (classe, Vida) values ("Encantado", 8);
insert into tb_classe (classe, Vida) values ("Gato de botas", 5);

create table tb_personagem(
	id bigint auto_increment,
    nome varchar(255) not null,
    forca varchar(30) not null,
    poder int not null,
    Defesa int not null,
    classe_id bigint,
	primary key (id),
    foreign key (classe_id) references tb_classe (id)
);

insert into tb_personagem (nome, forca, poder, defesa, classe_id) values ("Fadinha", "magica", 1000, 0400, 1);
insert into tb_personagem (nome, forca, poder, defesa, classe_id) values ("Sherek", "ogro", 5000, 3000, 2);
insert into tb_personagem (nome, forca, poder, defesa, classe_id) values ("Fiona", "princesa", 4200, 2000, 5);
insert into tb_personagem (nome, forca, poder, defesa, classe_id) values ("Burro", "animal", 4000, 2200, 3);
insert into tb_personagem (nome, forca, poder, defesa, classe_id) values ("Encantado", "principe", 1900, 900, 4);
insert into tb_personagem (nome, forca, poder, defesa, classe_id) values ("Gato de botas", "animal", 1100, 1000, 1);
insert into tb_personagem (nome, forca, poder, defesa, classe_id) values ("Dragão", "animal", 6600, 3500, 2);
insert into tb_personagem (nome, forca, poder, defesa, classe_id) values ("Cachorro voador", "magico", 1000, 1800, 4);

select * from tb_personagem;

-- FAÇA UM SELECT QUE RETORNE OS PERSONAGENS COM O PODER DE ATAQUE MAIOR QUE 2000 --
select * from tb_personagem where poder > 2000;

-- FAÇA UM SELECT QUE RETORNE OS PERSONAGENS COM O PODER DE DEFESA ENTRE 1000 E 2000 --
select * from tb_personagem where defesa between 1000 and 2000;

-- FAÇA UM SELECT UTLIZANDO LIKE BUSCANDO OS PERSONAGENS COM A LETRA C -- 
select * from tb_personagem where nome like "%c%";

-- FAÇA UM INNER JOIN ENTRE A TABELA CLASSE E PERSONAGEM
select tb_personagem.nome, tb_personagem.forca, tb_personagem.poder, tb_personagem.defesa, tb_classe.classe, tb_classe.Vida from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

-- FAÇA UM SELECT ONDE TRAGA TODOS OS PERSONAGENS DE UMA CLASSE ESPECÍFICA
select tb_personagem.nome, tb_personagem.forca, tb_personagem.poder, tb_personagem.defesa, tb_classe.classe, tb_classe.Vida from tb_personagem right join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.id = 1;
