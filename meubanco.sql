-- Criando um Banco de Dados

CREATE DATABASE nomedobanco;

-- Usando o banco de dados criado

USE nomedobanco;

-- Criando tabelas no banco de dados selecionado, usando como exemplo uma tabela chamada cliente. Usamos aqui apenas 3 campos, mas poderia existir quantos fosse necessários para sua tabela.

CREATE TABLE cliente (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30),
    nascimento DATE,
    email VARCHAR(70),
);

-- Nesta tabela cliente usamos um id, que é o identificar de um campo, é um campo muito importante para podermos trabalhar com tabelas seja atualizando dados ou mesmo deletando dados. Após o nome do campo temos o tipo, no caso do id ele é do tipo INT, número inteiro, além desse tipo podemos ter o VARCHAR() entre parenteses a qtde de caracteres desse campo tipo string, DATE para datas que usam o padrão americano (aaaa-mm-dd)

-- Inserindo dados em uma tabela, usando como exemplo a tabela cliente

INSERT INTO cliente (nome, nascimento, email) VALUES ('Geraldo Alves', '1990-07-16' 'jgalvesb@gmail.com');

-- Usamos o nome da tabela que queremos inserir os dados, os campos que queremos inserir e os valores que serão inseridos nesses campos.


-- Selecionando dados de uma tabela

SELECT * FROM cliente;

-- Podemos escolher o campo que queremos selecionar os dados. Ex:

SELECT nome FROM cliente;

-- Podemos organizar os dados na ordem que queremos com o ORDER BY. Ex:

SELECT * FROM cliente ORDER BY nome; Ordem Crescente
SELECT * FROM cliente ORDER BY nome; Ordem Decrescente

-- Atualizando dados na tabela

UPDATE cliente SET nome='José Geraldo Alves' WHERE id=1;

-- Aqui o id único vai ser muito importante para realizarmos a alteração no campo especifico, sem ele as alterações poderiam sobrescrever todos os dados do capo nome com a informação inserida.

-- Deletando dados de uma tabela

DELETE FROM cliente WHERE id=1;

-- Aqui o id também é importante, com base nele podemos deletar um dado específico.

