CREATE DATABASE IF NOT EXISTS Mentalista;
USE Mentalista;

CREATE TABLE tbSuspeitos(
id_suspeito int primary key,
nome_suspeito varchar (100),
sexo varchar (20),
idade int,
altura decimal,
profissao varchar (50),
ficha_criminal boolean
);

CREATE TABLE tbAcessos(
id_acesso int primary key,
id_suspeito_FK int,
data_hora datetime,
local_acesso varchar (50),
entrada_saida boolean
);

CREATE TABLE tbDadosBancarios(
id_movimentacao int primary key,
id_suspeito_FK int,
data_movimentacao date,
saque_deposito boolean,
valor decimal(10,2),
descricao varchar (300)
);

CREATE TABLE tbOcorrencia(
id_ocorrencia int primary key,
id_suspeito_FK int,
data_hora_ocorrencia datetime,
tipo_ocorrencia varchar (100),
local_ocorrencia varchar (100)
);

CREATE TABLE tbEvidencia(
id_evidencia int primary key,
id_suspeito_Fk int,
tipo_evidencia varchar (100),
local_evidencia varchar (100),
descricao varchar (300),
data_hora_evidencia datetime
);