----COMANDO GROUP BY: ELE DIVIDE O RESULTADO DA SUA PESQUISA EM GRUPOS

SELECT SpecialOfferID, SUM(UnitPrice) AS "SOMA"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID;

