USE AdventureWorksDW2022;
GO

SELECT TOP 10
    d.FullDateAlternateKey AS Fecha,
    p.EnglishProductName AS Producto,
    t.SalesTerritoryCountry AS Pais,
    f.OrderQuantity AS Cantidad,
    f.SalesAmount AS TotalVenta
FROM dbo.FactInternetSales f
INNER JOIN dbo.DimDate d
    ON f.OrderDateKey = d.DateKey
INNER JOIN dbo.DimProduct p
    ON f.ProductKey = p.ProductKey
INNER JOIN dbo.DimSalesTerritory t
    ON f.SalesTerritoryKey = t.SalesTerritoryKey;