SELECT * FROM
Person.Person;

SELECT title FROM
Person.Person;

SELECT * FROM
Person.EmailAddress;

SELECT DISTINCT LastName 
FROM person.person;


SELECT * FROM
Production.Product;

SELECT * FROM Production.Product
WHERE Weight > 500 and Weight <= 700;

SELECT * FROM HumanResources.Employee
WHERE MaritalStatus = 'Married' and SalariedFlag = 'True';