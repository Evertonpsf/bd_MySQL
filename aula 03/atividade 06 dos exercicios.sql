create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;

create table tb_categorias(
id bigint auto_increment primary key,
nome varchar (255) not null,
descricao varchar (255) not null
);

insert into tb_categorias(nome, descricao) values
("Java", "progamação"),
("C#", "Lógica"),
("HTML", "Estética"),
("Hardware", "Fisico"),
("Redes", "Roteadores e molden");

select * from tb_categorias;

create table tb_cursos(
id bigint auto_increment primary key,
turma varchar (255) not null,
aluno varchar (255) not null,
periodo varchar (255) not null,
valor decimal(8,2) not null,
classesid bigint,
constraint fk_cursos_classes foreign key (classesid) references tb_cursos(id)
);

insert into tb_cursos(turma, aluno, periodo, valor, classesid) values
("Introdução à Programação", "João Silva", "Matutino", 500,1),
("Banco de Dados Avançado", "Maria Oliveira", "Vespertino", 999,2),
("Desenvolvimento Web", "Pedro Santos", "Noturno", 1800,3),
("Engenharia de Software", "Ana Costa", "Matutino", 1200,4),
("Redes de Computadores" , "Lucas Pereira", "Vespertino", 1700,5),
("Inteligência Artificial", "Mariana Souza", "Noturno", 500,6),
("Segurança da Informação", "Carlos Lima", "Matutino", 3000,7),
("Gestão de Projetos", "Fernanda Alves", "Vespertino", 1100,8);

select * from tb_cursos;

select * from tb_cursos where valor > 500;
select * from tb_cursos where valor BETWEEN 600 AND 1000;
select * from tb_cursos where turma like "%j%";

select *
from tb_cursos  inner join tb_categorias 
on tb_cursos.classesid = tb_categorias.id;

select *
from tb_cursos  inner join tb_categorias 
on tb_cursos.classesid = tb_categorias.id where classesid in (1,2,3,4,5);
