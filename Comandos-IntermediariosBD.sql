

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

SELECT * FROM Sales.SalesOrderDetail;

Select ProductID, AVG(OrderQty) AS "QUANTIDADE"
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

SELECT SpecialOfferID, SUM(UnitPrice) AS "SOMA" 
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID;

SELECT * FROM Production.workorder;

SELECT ProductID, COUNT(ProductID) AS "CONTAGEM", 
AVG(orderqty) AS "MEDIA"
FROM Production.workorder
GROUP BY ProductID;

--HAVING É USADO EM JUNÇAO COM O GROUP BY PARA FILTRAR AGRUPAMENTOS

select * from Person.Person;

SELECT FirstName, COUNT(FirstName) AS "CONTAGEM"
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FirstName) > 10
ORDER BY COUNT(FirstName) DESC;

--QUAIS PRODUTOS QUE NO TOTAL DE VENDAS	ESTÃO ENTRE 162K A 500K

SELECT * FROM Sales.SalesOrderDetail;

SELECT TOP "10 *"
FROM Sales.SalesOrderDetail;

SELECT ProductID, SUM(LineTotal)
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) BETWEEN 162000 and 500000;

--QUAIS NOME TEM UMA OCORRENCIA MAIOR QUE 10 VEZES

SELECT * FROM Person.Person;
SELECT FirstName, COUNT(FirstName) AS "SOMA"
FROM Person.Person
WHERE Title = 'Mr.'
GROUP BY FirstName
HAVING COUNT(FirstName) > 10;

--ESTAMOS QUERENDO IDENTIFICAR AS PROVINCIAS COM O MAIOR NUMERO DE CADASTRO REGISTRADO EM NOSSOS SISTEMAS
--ENTÃO É NECESSARIO IDENTIFICAR QUAIS PROVINCIAS ESTAO REGISTRADAS NO BD MAIS QUE 1000 VEZES

SELECT StateProvinceID, COUNT(StateProvinceID) AS "QUANTIDADE"
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000;


--QUAIS PRODUTOS NAO ESTAO TRAZENDO EM MEDIA UM MILHÃO EM TOTAL DE VENDAS

SELECT * FROM Sales.SalesOrderDetail;

SELECT ProductID, AVG(LineTotal) AS "MEDIA"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(LineTotal) < 100000;

SELECT TOP "10", AVG(ListPrice) AS "Media de Preço"
FROM Production.Product;

SELECT FirstName AS "NOME", LastName AS "SOBRENOME"
FROM Person.Person;

SELECT ProductNumber AS "CODIGO DO PRODUTO"
FROM Production.Product
ORDER BY ProductNumber DESC;

SELECT * FROM Sales.SalesOrderDetail;

SELECT SalesOrderDetailID AS "CODIGO DO PRODUTO", UnitPrice AS "PREÇO UNITARIO"
FROM Sales.SalesOrderDetail
ORDER BY SalesOrderDetailID ASC;

--AULA 16 JOINS
--EXITEM 3 TIPOS DE JOINS
--INNER JOIN, OUTER JOIN, SELF-JOIN
--BusinessEntityId, FirstName,  

 SELECT C.Cliente, C.Nome, E.Rua, E.Cidade
 FROM C.Cliente
 INNER JOIN Endereco E ON EnderecoID = C.EnderecoID,

 DOIS, JOANNE, RUA CEM, TIMON;

 --BusinessEntityId, FirstName, LastName, EmailAddress
SELECT p.BusinessEntityID,p.FirstName,p.LastName,pe.EmailAddress
FROM Person.Person as P
INNER JOIN Person.EmailAddress PE on P.BusinessEntityID = PE.BusinessEntityID;

SELECT TOP "10 *"
FROM Person.Person;

SELECT TOP "10 *" 
FROM Person.EmailAddress;

--EXEMPLO 2: NOMES DOS PRODUTOS E AS INFORMACOES DE SUAS SUBCATEGORIAS

SELECT TOP "10 *" 
FROM Production.Product;

SELECT TOP "10 *" 
FROM Production.ProductSubcategory;

SELECT pr.ListPrice, pr.Name
FROM Production.Product AS pr
INNER JOIN Production.ProductSubcategory pc 
on pr.ProductSubcategoryID = pc.ProductSubcategoryID;

--EXEMPLO 3: 
SELECT * FROM Sales.SalesOrderDetail;
SELECT * FROM Sales.SalesOrderHeader;

SELECT TOP "10 *"
FROM Sales.SalesOrderDetail as SA
INNER JOIN Sales.SalesOrderHeader as SS ON SA.SalesOrderID = SS.SalesOrderID;

--DESAFIO 01 JOIN
SELECT * FROM person.PhoneNumberType;
SELECT * FROM person.PersonPhone;

SELECT PA.BusinessEntityID, P.Name, PA.PhoneNumberTypeID, PA.PhoneNumber
FROM Person.PhoneNumberType AS P
INNER JOIN Person.PersonPhone PA ON PA.PhoneNumberTypeID = P.PhoneNumberTypeID;

--DESAFIO 02 JOINS
SELECT * FROM Person.StateProvince;
SELECT * FROM Person.Address;
--ADDRESSID, STATEPROVINCEID, CITY. NOME_DO_ESTADO
SELECT PA.AddressID, P.StateProvinceID,  P.Name, PA.City
FROM Person.StateProvince as P
INNER JOIN Person.Address PA ON P.StateProvinceID = PA.StateProvinceID;

--AULA 17 - INTERMEDIARIO  SQL JOINS 
--DESAFIO 02 JOINS


