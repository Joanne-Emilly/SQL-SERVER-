
SELECT * FROM person.Person;

SELECT Title /*BUSCAR APENAS TITULOS*/
FROM person.Person;

SELECT * FROM 
person.EmailAddress;


SELECT firstname, lastname /**SELECIONAR NOME E SOBRENOME*/
FROM person.person;


SELECT DISTINCT firstname --COMO ELIMINAR OS DUPLICADOS
FROM person.person;

SELECT DISTINCT firstname, lastname --QUANTOS NOMES E SOBRENOMES UNICOS TEMOS EM NOSSA TABELA
FROM person.person;

--WHERE
SELECT * FROM person.Person
WHERE lastname = 'Miller' and FirstName = 'Anna';

SELECT * FROM production.product
WHERE color = 'blue' or color = 'black';


SELECT * FROM production.product
WHERE ListPrice > 1500 and ListPrice < 3000;

--DESAFIO 0: A EQUIPE DE PRODUCAO DE PRODUTOS PRECISA DE TODAS AS PEÇAS QUE PESAM MAIS 500KG MAS NÃO MAIS QUE 700KG
SELECT * FROM production.product
WHERE Weight > 500 and Weight <= 700;

--DESAFIO 1: O MARKETING PRECISA DE UMA LISTA DE TODOS OS EMPREGADOS(employees), que são casados (single=solteiro and married=casados) and assalariados(salaried)
SELECT * FROM HumanResources.Employee 
WHERE MaritalStatus = 'm' and SalariedFlag = 'true';

--DESAFIO 2: UM USUÁRIO CHAMADO Peter Krebs ESTÁ DEVENDO UM PAGAMENTO, PRECISO QUE ENCONTRE O E-MAIL DELE, PARA QUE POSSAMOS ENVIAR A COBRANÇA.
SELECT * FROM person.EmailAddress
WHERE BusinessEntityID = 26;

-- COUNT = CONTAGEM DO NUMERO DE TODAS AS COLUNAS DE DETERMINADA TABELA, CASO QUERIA UMA COLUNA ESPECIFICA ADIOCIONAR O NOME DENTRO DO PARENTESE
SELECT COUNT(distinct Title)
FROM Person.Person;

--DESAFIO 3: QUANTOS PRODUTOS TEMOS CADASTRADOS NA NOSSA TABELA DE PRODUTOS.(PRODUCTION.PRODUCT)
SELECT * FROM production.product;
SELECT COUNT(*)
FROM production.product;

--DESAFIO 4: QUANTOS TAMANHOS TEMOS CADASTRADOS EM NOSSSA TABELA
SELECT COUNT(SIZE)
FROM production.product;

-- DESAFIO 5; QUANTOS TAMANHOS UNICOS EU TENHO DENTRO DA TABELA.
SELECT COUNT(DISTINCT SIZE)
FROM production.product;

--COMANDO TOP (COMO SELECIONAR OS 10 PRIMEIROS PROTUDOS)
SELECT TOP (10) *
FROM production.product;

 --COMANDO ORDER BY(ordenar em ordem crescente e decrescente)
SELECT *  
FROM person.person
ORDER BY FirstName asc, MiddleName asc, LastName desc;

--DESAFIO 6: OBTER OS 10 PRODUTOS MAIS CAROS DO SISTEMA LISTANDO DO MAIS CARO PARA O MAIS BARATO;

SELECT TOP 10 ProductI
FROM Production.Product
ORDER BY ListPrice desc;

-- SQL BETWEEN É USADO PARA ENCONTRAR ENTRE UM VALOR MINIMO E UM VALOR MAXIMO
-- VALOR BETWEEN MININO  AND MAXIMO

SELECT * FROM Production.Product
WHERE Listprice BETWEEN  1000 and 1500;

SELECT *
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'
ORDER BY HireDate;

/* COMANDO IN: USADO JUNTO COM O WHERE, PARA VERIFICAR SE UM VALOR CORRESPONDE A QUALQUER OUTRO VALOR 
PASSADO NA LISTA**/

SELECT * FROM Person.Person
WHERE BusinessEntityID IN (2, 7, 3);


/** COMANDO LIKE: DIGAMOS QUE VOCê QUER ENCONTRAR UMA PESSOA NO BANCO DE DADOS QUE VOCÊ SABE O NOME DELA
É OVI.. ALGUMA COISA*/

SELECT * FROM person.person
WHERE FirstName LIKE 'ovi%'; --INICIO
SELECT * FROM person.person
WHERE FirstName LIKE '%ovi%'; --MEIO
SELECT * FROM person.person
WHERE FirstName LIKE '%ovi'; --FINAL

--DESAFIO 7: QUANTOS PRODUTOS TEMOS CADASTRADOS NO SISTEMA QUE CUSTA MAIS 1500 REAIS
SELECT COUNT(*)
FROM Production.Product
WHERE ListPrice > '1500';

--DESAFIO 08: QUANTAS PESSOAS TEMOS COM O SOBRENOME QUE INICIA COM A LETRA P?
SELECT COUNT(LastName)
FROM Person.Person
WHERE LastName LIKE '%P';

--DESAFIO 09: EM QUANTAS CIDADES UNICAS ESTAO CADASTROS NOSSOS CLIENTES?
SELECT COUNT (DISTINCT City)
FROM Person.Address;

--DESAFIO 09: QUAIS AS CIDADES UNICAS ESTAO CADASTROS NOSSOS SISTEMA?
SELECT DISTINCT (city)
FROM Person.Address;








