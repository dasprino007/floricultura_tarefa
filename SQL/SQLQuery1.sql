create database floricultura
use floricultura

create table cliente(
cpf char(11) primary key, 
nome varchar(30) not null,
email varchar(50) not null,
senha varchar(20) not null,
estado char(2) not null,
CEP char(9) not null
)


create table produtos(
id int primary key identity(1,1),
nome varchar(30)  not null,
preco float not null,
descricao varchar(500),
qnt int
)

create table vendas(
    id int primary key identity(1,1),
    clientes_vendas char(11),
    produtos_vendas int,
    NF_vendas int,
    CONSTRAINT FK_ClientesVendas FOREIGN KEY vendas(clientes_vendas)
    REFERENCES cliente(cpf),
    CONSTRAINT FK_ProdutosVendas FOREIGN KEY vendas(produtos_vendas)
    REFERENCES produtos(id),
    CONSTRAINT FK_ClientesVendas FOREIGN KEY vendas(NF_vendas)
    REFERENCES NF(NF_vendas)
)



74360493053,'Ricardo Leite','ricardo12@gmail.com','taretes123','09169206','SP'

60086278061,'Manuel da Silva','manuel@yahoo.com','trarsiom','57043030','AL'

69542998473,'Diego Quaresma','DIego009@gmail.com','534478356','57602315','AL'

05788625491,'jose diogo','josediogo@gmail.com','hgsgdsgfkljf123','05788625491','AL'

97183801241,'Renan da Silva','renan1678@gmail.com','52652363786','69960970','AC'

INSERT INTO produtos(nome,preco,descricao,qnt)
VALUES('Buquê de Rosas Vermelhas',5.90,'Um clássico da floricultura, o buquê de rosas vermelhas é uma escolha romântica e elegante para presentear alguém especial. Composta por 12 rosas frescas e bem cuidadas, esta opção é perfeita para aniversários, Dia dos Namorados, ou simplesmente para expressar amor e carinho.',50)


INSERT INTO produtos(nome,preco,descricao,qnt)
VALUES('Cesta de Flores do Campo',10.90,'Uma mistura vibrante de flores do campo, esta cesta é uma excelente opção para quem busca um presente alegre e descontraído. Com flores coloridas e diversas, como margaridas, girassóis e astromélias, esta cesta é uma ótima escolha para presentear amigos, familiares ou colegas de trabalho.',66)

INSERT INTO produtos(nome,preco,descricao,qnt)
VALUES('Arranjo de Orquídeas',15.90,'As orquídeas são flores elegantes e sofisticadas, e um arranjo composto por elas é uma opção refinada e memorável. Este arranjo contém três orquídeas phalaenopsis em um vaso de vidro transparente, que pode ser usado como decoração em qualquer ambiente.',600)

INSERT INTO produtos(nome,preco,descricao,qnt)
VALUES('Coroa Fúnebre de Lírios',35.90,'Uma coroa fúnebre é uma forma de homenagear e expressar condolências a alguém que perdeu um ente querido. Esta coroa é composta por lírios brancos e verdes, que simbolizam paz, pureza e esperança. É uma forma respeitosa e delicada de demonstrar apoio em momentos difíceis.',900)

INSERT INTO produtos(nome,preco,descricao,qnt)
VALUES('Suculenta em Vaso Decorativo',65.90,' Para aqueles que procuram uma opção de presente duradouro e de baixa manutenção, uma suculenta em um vaso decorativo é uma escolha inteligente. As suculentas são plantas resistentes e fáceis de cuidar, e o vaso decorativo adiciona um toque de estilo e elegância a qualquer ambiente.',1000)
