create database db_escolagen;

use db_escolagen;

create table tb_estudantes(
id BIGINT AUTO_INCREMENT,  
nome VARCHAR(255) NOT NULL,
idade INT (255) NOT NULL,
serie VARCHAR(255) NOT NULL,
nota DECIMAL(10,2)  NOT NULL,
PRIMARY KEY (id)
);

insert into tb_estudantes(nome, idade, serie, nota) values
("Everton Sales", 15 , "2° Ano do Ensino Médio", 10),
("Maria de Lurdes", 14 , "1° Ano do Ensino Médio", 7),
("Juliana da Silva", 18 , "3° Ano do Ensino Médio", 8),
("Pedro Batista", 15 , "1° Ano do Ensino Médio", 6),
("Inacio da Silva", 19 , "3° Ano do Ensino Médio", 4),
("Matheus Pereira", 17 , "2° Ano do Ensino Médio", 9),
("Helen Garcia",20 , "3° Ano do Ensino Médio", 2),
("Rubens Martins", 14 , "1° Ano do Ensino Médio", 5);

select * from tb_estudantes;

select * from tb_estudantes where nota > 7;
select * from tb_estudantes where nota < 7;
update tb_estudantes set nota = 10 where id = 2;

select * from tb_estudantes;