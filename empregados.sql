/*CREATE DATABASE Empregados;
USE Empregados;*/

CREATE TABLE Funcionarios (
    idFuncionario integer PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(15),
    sobrenome VARCHAR(15),
    cargo VARCHAR(40),
    idade INT,
    tempoServico INT,
    salario DECIMAL(5, 2)
);

INSERT INTO Funcionarios (idFuncionario, nome, sobrenome, cargo, idade, tempoServico, salario) VALUES
(1, 'Ragnar', 'Bjornsson', 'Programador Full Stack Pleno', 30, 5, 5000.00),
(2, 'Bjorn', 'Ragnarsson', 'Engenheiro de Software Pleno', 35, 8, 10085.00),
(3, 'Thor', 'Aarseth', 'Programador Front-end Júnior', 28, 4, 2310.00),
(4, 'Olaf', 'Olafsson', 'Analista de Sistemas Pleno', 32, 6, 7100.00),
(5, 'Erik', 'Thorsson', 'Programador Mobile Júnior', 29, 2, 3500.00),
(6, 'Leif', 'Gunnarsson', 'Programador Full Stack Sênior', 40, 10, 80000.00),
(7, 'Jökull', 'Haraldsson', 'Recursos Humanos Pleno', 38, 7, 3290.00),
(8, 'Harald', 'Svennson', 'Engenheiro de Software Sênior', 29, 12, 75000.00),
(9, 'Sven', 'Njalsson', 'Assistente Administrativo Júnior', 25, 2, 2205.00),
(10, 'Jörg', 'Leifsson', 'Atendente Júnior', 27, 2, 3500.00);

--a)

SELECT nome, sobrenome
FROM Funcionarios
WHERE cargo LIKE '%Programador%';

/*Ragnar|Bjornsson
Thor|Aarseth
Erik|Thorsson
Leif|Gunnarsson*/

--b)

SELECT nome, sobrenome
FROM Funcionarios
WHERE tempoServico < 3;

/*Erik|Thorsson
Sven|Njalsson
Jörg|Leifsson*/

--c)

SELECT nome, sobrenome
FROM Funcionarios
WHERE nome LIKE 'J%';

/*Jökull|Haraldsson
Jörg|Leifsson*/

--d)

SELECT nome, sobrenome
FROM Funcionarios
WHERE cargo LIKE '%Sênior%';

/*Leif|Gunnarsson
Harald|Svennson*/

--e)

SELECT nome, sobrenome
FROM Funcionarios
WHERE salario BETWEEN 70000 AND 90000;

/*Leif|Gunnarsson
Harald|Svennson*/

--f)

SELECT nome, sobrenome, idade
FROM Funcionarios
WHERE (sobrenome LIKE 'A%' OR sobrenome LIKE 'S%') AND idade < 30;

/*Thor|Aarseth|28
Harald|Svennson|29*/

--g)

SELECT nome, sobrenome, cargo
FROM Funcionarios
WHERE cargo NOT LIKE '%Programador%';

/*Bjorn|Ragnarsson|Engenheiro de Software Pleno
Olaf|Olafsson|Analista de Sistemas Pleno
Jökull|Haraldsson|Recursos Humanos Pleno
Harald|Svennson|Engenheiro de Software Sênior
Sven|Njalsson|Assistente Administrativo Júnior
Jörg|Leifsson|Atendente Júnior*/

--h)

SELECT nome, sobrenome, idade
FROM Funcionarios
ORDER BY idade DESC
LIMIT 4;

/*Leif|Gunnarsson|40
Jökull|Haraldsson|38
Bjorn|Ragnarsson|35
Olaf|Olafsson|32*/