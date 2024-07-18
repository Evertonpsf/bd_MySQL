create database db_generation_game_online;
use db_generation_game_online;

create table tb_classes(
id bigint auto_increment primary key,
nome varchar (255) not null,
descricao varchar (255) not null
);

insert into tb_classes (nome, descricao) values
("Kratos", "Protagonista de God of War, conhecido por sua força"),
("Geralt of Rivia", "Protagonista de The Witcher, um caçador de monstros"),
("Steve", "Personagem padrão de Minecraft, um explorador e construtor"),
("Jonesy", "Um dos personagens icônicos de Fortnite"),
("Ahri", "Personagem do jogo LoL, uma maga com habilidades de charme"),
("Tracer", "Personagem de Overwatch, conhecida por sua velocidade e pistolas duplas");

select * from tb_classes; 

create table tb_personagens(
id bigint auto_increment primary key,
nome varchar (255) not null,
modelo varchar (255) not null,
poder_ataque int not null,
poder_defesa int not null,
classesid bigint,
constraint fk_personagens_classes foreign key (classesid) references tb_personagens(id)
);

insert into tb_personagens (nome, modelo, poder_ataque, poder_defesa, classesid) values
("Archer", "Elfo", 1500, 1005,1),
("Mage", "Humano", 1000, 2000,2),
("Warrior", "Orc", 2100, 1000,3),
("Healer", "Humano", 2120, 1006,4),
("Rogue" ,"Elfo", 1140, 2000,5),
("Paladin", "Anão", 2180, 1000,6),
("Necromancer", "Humano", 1110, 1000,7),
("Druid", "Elfo", 3130, 2005,8);

select * from tb_personagens where poder_ataque > 2000;
select * from tb_personagens where poder_defesa BETWEEN 1000 AND 2000;
select * from tb_personagens where nome like "%c%";

select *
from tb_personagens  inner join tb_classes 
on tb_personagens.classesid = tb_classes.id;

select *
from tb_personagens  inner join tb_classes 
on tb_personagens.classesid = tb_classes.id where classesid in (1,2,3);

select * from tb_personagens; 
















