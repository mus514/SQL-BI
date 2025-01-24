USE AdventureWorks2019

SELECT TOP(5) *
FROM [Purchasing].[PurchaseOrderDetail]
WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM .[Purchasing].[PurchaseOrderDetail] WHERE UnitPrice > 60)


SELECT MAX(TotalDue) AS sum_total_due
FROM [Sales].[SalesOrderHeader]
WHERE DATEPART(YEAR, OrderDate) = 2013


SELECT COUNT(*)
FROM [Sales].[SalesPerson]



SELECT p.FirstName, p.LastName, s.SalesYTD
FROM [Sales].[SalesPerson] as s
INNER JOIN [Person].[Person] as p ON p.BusinessEntityID = s.BusinessEntityID
WHERE s.SalesYTD > (SELECT AVG(SalesYTD) FROM [Sales].[SalesPerson])