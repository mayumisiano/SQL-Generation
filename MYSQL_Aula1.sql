CREATE DATABASE db_servico_rh;

USE db_servico_rh; 

CREATE TABLE tb_funcionarios(
	ID BIGINT AUTO_INCREMENT,
    NOME VARCHAR(1000),
    IDADE INT,
    FUNCAO CHAR(255),
    PRIMARY KEY (ID)
);

INSERT INTO tb_funcionarios (NOME,IDADE,FUNCAO)
VALUES ("Isabella", 20,"Deva");
INSERT INTO tb_funcionarios (NOME,IDADE,FUNCAO)
VALUES ("Nayara", 30,"Deva");

SELECT * FROM tb_funcionarios;
