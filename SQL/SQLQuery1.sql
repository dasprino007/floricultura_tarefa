create database floricultura
use floricultura

create table cliente(
cpf char(11) primary key, 
nome varchar(30) not null,
email varchar(50) not null,
senha varchar(20) not null,
CEP char(9) not null
)

CREATE PROCEDURE InserirCliente
@cpf char(11), 
@nome varchar(30),
@email varchar(50),
@senha varchar(20),
@CEP char(9)
as
insert into cliente(cpf,nome,email,senha,CEP)
values (@cpf,@nome,@email,@senha,@CEP)
select * from cliente
order by nome
exec 

create table produtos(
id int primary key identity(1,1),
nome varchar(30)  not null,
preco float,
descrição varchar(500),
)

