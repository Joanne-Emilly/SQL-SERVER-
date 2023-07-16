SELECT *
FROM Sales.SalesOrderDetail;

SELECT SpecialOfferID, SUM(UnitPrice) AS "SOMA"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID;

-- QUANTOS PRODUTOS FORAM VEDIDOS ATE HOJE?

SELECT ProductID, COUNT(ProductID) AS "CONTAGEM"
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

-- QUANTOS NOMES DE CADA NOME TEMOS CADASTRADOS EM NOSSO BD?

SELECT MiddleName, COUNT(MiddleName) AS "QUANTIDADE"
FROM person.person 
GROUP BY MiddleName;


--QUANTIDADE DE CADA PRODUTO VENDIDO

SELECT * FROM Sales.SalesOrderDetail

Select ProductID, AVG(OrderQty) AS "QUANTIDADE"
FROM Sales.SalesOrderDetail
GROUP BY ProductID

SELECT SpecialOfferID, SUM(UnitPrice) AS "SOMA" 
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID

SELECT * FROM Production.workorder

SELECT ProductID, COUNT(ProductID) AS "CONTAGEM", 
AVG(orderqty) AS "MEDIA"
FROM Production.workorder
GROUP BY ProductID

--HAVING É USADO EM JUNÇAO COM O GROUP BY PARA FILTRAR AGRUPAMENTOS

select * from Person.Person

SELECT FirstName, COUNT(FirstName) AS "CONTAGEM"
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FirstName) > 10
ORDER BY COUNT(FirstName) DESC 

