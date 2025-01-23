SELECT *
FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderDetail]
WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderDetail] WHERE UnitPrice > 60)


