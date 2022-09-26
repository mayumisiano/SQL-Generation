CREATE DATABASE DB_EMPRESA_RH;

USE DB_EMPRESA_RH; 

CREATE TABLE TB_FUNCIONARIOS(
	ID BIGINT AUTO_INCREMENT,
    NOME VARCHAR(1000),
    IDADE INT,
    FUNCAO CHAR(255),
    SALARIO float8,
    DEPARTAMENTO VARCHAR(1000),
    PRIMARY KEY (ID)
);

REPLACE INTO TB_FUNCIONARIOS (NOME,IDADE,FUNCAO,SALARIO, DEPARTAMENTO)
VALUES ("Isabella", 20,"Deva", 1800,"TI");
REPLACE INTO TB_FUNCIONARIOS (NOME,IDADE,FUNCAO,SALARIO, DEPARTAMENTO)
VALUES ("Nayara", 30,"Deva",1600, "TI");
INSERT INTO TB_FUNCIONARIOS (NOME,IDADE,FUNCAO,SALARIO, DEPARTAMENTO)
VALUES ("Ricardo", 45,"Gestor",17000, "RH");
INSERT INTO TB_FUNCIONARIOS (NOME,IDADE,FUNCAO,SALARIO, DEPARTAMENTO)
VALUES ("Juliana", 26,"Scrum master",55000, "TI");
REPLACE INTO TB_FUNCIONARIOS(NOME,IDADE,FUNCAO,SALARIO, DEPARTAMENTO)
VALUES ("Adriana", 41,"Diretora",20000, "RH");

#Atualizando alguns salários
UPDATE TB_FUNCIONARIOS SET SALARIO = 1800 WHERE ID = 1; 
UPDATE TB_FUNCIONARIOS SET SALARIO = 1600 WHERE ID = 2; 
UPDATE TB_FUNCIONARIOS SET SALARIO = 20000 WHERE ID = 5; 

SELECT * FROM TB_FUNCIONARIOS
	WHERE SALARIO >= 2000;

SELECT * FROM TB_FUNCIONARIOS
	WHERE SALARIO <= 2000;
    
#Atualizando outros registros da tabela
UPDATE TB_FUNCIONARIOS SET funcao = "CEO" WHERE ID = 5;

#Verificando se o registro foi atualizado
SELECT * FROM TB_FUNCIONARIOS
	WHERE ID = 5;
	