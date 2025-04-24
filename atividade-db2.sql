CREATE DATABASE pw2atividade;

USE pw2atividade;

CREATE TABLE usuario(
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100),
dataNasc INT,
CPF VARCHAR(100),
CNPJ VARCHAR(100),
razaoSocial VARCHAR(255),
email VARCHAR(100),
senha VARCHAR(100)
);

CREATE TABLE login(
idLogin INT PRIMARY KEY AUTO_INCREMENT,
email VARCHAR(100),
hash_senha VARCHAR(100),
CONSTRAINT fk_usuario_login FOREIGN KEY (idLogin) REFERENCES usuario(idUsuario)
);

SELECT * FROM usuario;

SELECT * FROM login;