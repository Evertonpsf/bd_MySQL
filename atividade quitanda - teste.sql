-- select @@version
-- Create database -- DDL

CREATE DATABASE db_quitanda;
use db_quitanda;

-- drop database db_quitandas; (comando drop apaga)
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,  -- id inserido automaticamente 
nome VARCHAR(255) NOT NULL,
quantidade INT,
datavalidade DATE,
preco DECIMAL  NOT NULL,
PRIMARY KEY (id)
);

describe tb_produtos;

insert into tb_produtos (nome, quantidade, datavalidade, preco) values
("tomate", 100, "2023-12-15", 8.00);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("tomate",100, "2023-12-15", 8.00);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("maçã",20, "2023-12-15", 5.00);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("laranja",50, "2023-12-15", 10.00);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("banana",200, "2023-12-15", 12.00);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("uva",1200, "2023-12-15", 30.00);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("pêra",500, "2023-12-15", 2.99);

-- selecionar dados na tabela

select * from tb_produtos; -- selecionando a tabela produtos para visualizacao da mesma completa

select nome, preco from tb_produtos;

select * from tb_produtos where id in (2,4) ; -- estamos buscando para mostrar algo especifico (temos que trocar o = por in quando quisermos pesquisar mais de um item especifico)

select * from tb_produtos where preco = 5.00; -- selecionando dados com os operadores logicos, estamos buscando produtos com o preco maior que 5.00, se quiser buscar menor é so mudar o sinal 

select * from tb_produtos where preco > 5 and quantidade <100; -- selecionando dados com os operadores logicos, o and que é o ou


-- -------------------------------------------------------------
describe tb_produtos;

alter table tb_produtos add descricao varchar (255); -- adicionando produtos na tabela

alter table tb_produtos drop descricao; -- removendo produto da tabela

alter table tb_produtos change nome nomeproduto varchar (255); -- aqui estamos mudadno o nome da estrutura de uma tabela, de nome para nomeproduto

-- --------------------------------------------------------------
select * from tb_produtos; 

update tb_produtos set preco = 5.99 where id = 1; -- essa parte atualiza um dado escolhido

delete from tb_produtos where id in (10,11,12,13,14,15,16,17,18,19); -- aqui a parte que apagamos e selecionamos o que quisermos apagar, o in seleciona varios e o  = somente um

-- ---------------------------

alter table tb_produtos modify preco decimal(6,2); -- estamos alterando o decimal para 6,2 e assim na hora de aparecer vai aparecer 4 numeros antes da virgula e dois apos.

-- ---------------

insert into tb_produtos (nome_produto, quantidade, datavalidade, preco) values
("ts5t", 100, "2023-12-15", 8.256); -- isso foi so testes.











