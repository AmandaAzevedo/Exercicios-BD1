CREATE DATABASE loja_automoveis;

USE loja_automoveis;

CREATE table pessoa(
	cpf VARCHAR(11) PRIMARY KEY NOT NULL,
	nome VARCHAR(230) NOT NULL,
	sobrenome VARCHAR (230) NOT NULL, 
	numero_residencia VARCHAR(20) NOT NULL,
	lougradouro VARCHAR (20) NOT NULL,
	nome_endereco VARCHAR (50) NOT NULL,
	complemento_endereco VARCHAR (60) NOT NULL,
	telefone VARCHAR (15) NOT NULL,
	telefone_residencial VARCHAR(15),
	tipo_pessoa TINYINT NOT NULL,
);
CREATE table automovel(
	cod_automovel INT PRIMARY KEY NOT NULL,
	quantidade_portas SAMLLINT NOT NULL,
	ano TINYINT NOT NULL,
	chassi VARCHAR(17) NOT NULL,
	modelo VARCHAR(115) NOT NULL,
	marca VARCHAR(30) NOT NULL,
	cor VARCHAR(20) NOT NULL,
);
CREATE table combustivel(
	tipo_combustivel INT NOT NULL,
	id_automovel INT FOREIGN KEY REFERENCES automovel(cod_automovel) NOT NULL,
	PRIMARY KEY (tipo_combustivel, id_automovel),
);
CREATE table itens_opcionais(
	id_automovel INT FOREIGN KEY REFERENCES automovel(cod_automovel) NOT NULL,
	tipo_item TINYINT NOT NULL,
	PRIMARY KEY(id_automovel, tipo_item),
);
CREATE table compra( 
	id_automovel INT FOREIGN KEY REFERENCES automovel(cod_automovel) NOT NULL,
	id_pessoa VARCHAR(11) FOREIGN KEY REFERENCES pessoa(cpf) NOT NULL,
	id INT PRIMARY KEY,
	UNIQUE (id_automovel, id_pessoa),
	data DATE,
);
CREATE table forma_pagamento(
	id_compra INT FOREIGN KEY REFERENCES compra(id),
	forma_pagamento TINYINT,
	id INT PRIMARY KEY,
);



















