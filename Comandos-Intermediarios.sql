

----COMANDO GROUP BY: ELE DIVIDE O RESULTADO DA SUA PESQUISA EM GRUPOS


SELECT coluna01, SUM(coluna2) AS "SOMA"
FROM tabela01
GROUP BY coluna02;

SELECT SpecialOfferID, SUM(UnitPrice) AS "SOMA"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID;

--fazer a contagem de produtos vendidos
SELECT ProductID, COUNT(ProductID) AS "CONTAGEM"
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

--QUANTOS NOME DE CADA NOME TEMOS NO NOSSO BANCO DE DADOS
SELECT FirstName, COUNT(FirstName)
FROM person.person 
GROUP BY FirstName;

--QUAL A MEDIA DE PREÇO DOS PRODUTOS SILVER?

SELECT Color, AVG(ListPrice) AS "PREÇO"
FROM Production.Product
WHERE Color = 'Silver'
GROUP BY Color;

--QUANTAS PESSOAS TEM O MESMO MIDDLENAME
SELECT MiddleName, COUNT(MiddleName)
FROM person.person
GROUP BY MiddleName;

--QUAL A MEDIA EM QUE CADA PRODUTO É VENDIDO NA LOJA

