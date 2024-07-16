create database db_empresarh;

use db_empresarh;

create table tb_colaboradores(
id BIGINT AUTO_INCREMENT,  -- id inserido automaticamente 
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(255) NOT NULL,
salario DECIMAL  NOT NULL,
contratacao DATE,
PRIMARY KEY (id)
);

insert into tb_colaboradores (nome, cargo, salario, contratacao) values
("Everton Sales", "Gerente de RH", 5.500, "2024-01-02"),
("Ricardo Pereira", "Analista de RH", 3.500, "2024-01-10"),
("Ana Lucia", "Auxiliar de RH", 1.200, "2024-03-05"),
("Estevao Ribeiro", "Jovem Aprendiz", 1, "2024-10-06"),
("Marilia Santos", "Jovem Aprendiz", 1, "2024-09-12");


select * from tb_colaboradores where salario > 2.000;
select * from tb_colaboradores where salario < 2.000;

alter table tb_colaboradores change nome nome_funcionario varchar (255);
alter table tb_colaboradores modify salario decimal(6,3);
update tb_colaboradores set nomefuncionario = "Maria Claudia" where id = 30;

select * from tb_colaboradores;
