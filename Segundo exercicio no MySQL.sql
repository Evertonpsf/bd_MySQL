create database db_infoprodutos;

use db_infoprodutos;

create table tb_produtos(
id BIGINT AUTO_INCREMENT,  -- id inserido automaticamente 
nome VARCHAR(255) NOT NULL,
categoria VARCHAR(255) NOT NULL,
especificacao VARCHAR(255) NOT NULL,
preco DECIMAL(10,2)  NOT NULL,
PRIMARY KEY (id)
);

describe tb_produtos;

insert into tb_produtos(nome, categoria, especificacao, preco) values
("Notebook ASUS", "Informatica", "Vivobook 15, AMD Ryzen 5, 8GB, 256GB, Windows 11", 2700),
("Apple Iphone", "Eletrônicos", "15 Pro (128 GB) — Titânio Natural", 7000),
("Console PS5", "Eletrônicos", "Processador AMD, 8x núcleos 2 a 3.5GH", 3650),
("Cadeira Gamer", "Moveis", "Cadeira Ergonomica, 77P x 25L x 59A centímetros", 450),
("Cafeteria Elétrica", "Elétroportateis", "Digital Electrolux 38 Xícaras ECM30 220V", 300),
("Frigobar", "Elétroportateis", "Frigobar Philco PFG50P 45L 1400W 220V", 390),
("TV 32 ", "Eletrônicos", "Samsung Smart TV LED 32 HD Wifi, HDMI, USB", 700),
("Tablet", "Eletrônicos", "Tablet Samsung Galaxy Tab S6 Lite (2024),", 420);

select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;
update tb_produtos set preco = 490 where id = 1;

select * from tb_produtos; 


