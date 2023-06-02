
SELECT * FROM person.Person;

SELECT Title 
FROM person.Person;

SELECT * FROM
person.EmailAddress;

SELECT firstname, lastname
FROM person.person;

SELECT DISTINCT firstname
FROM person.person;

SELECT DISTINCT firstname, lastname 
FROM person.person;

SELECT * FROM person.Person
WHERE lastname = 'Miller' and FirstName = 'Anna';


SELECT * FROM production.product
WHERE color = 'blue' or color = 'black';

SELECT * FROM production.product
WHERE ListPrice > 1500;

SELECT * FROM production.product
WHERE ListPrice > 1500 and ListPrice < 3000;

SELECT * FROM production.product
WHERE color <> 'red';

SELECT * FROM production.product
WHERE Weight > 500 and Weight <= 700;

SELECT * FROM HumanResources.Employee 
WHERE MaritalStatus = 'm' and SalariedFlag = 'true';

SELECT * FROM Person.Person
WHERE FirstName = 'Peter' and LastName = 'Krebs';

SELECT * FROM person.EmailAddress
WHERE BusinessEntityID = 26;

SELECT COUNT(distinct Title) FROM Person.Person

SELECT COUNT(*)
FROM production.product;

SELECT COUNT(SIZE)
FROM production.product;

SELECT COUNT(DISTINCT SIZE)
FROM production.product;