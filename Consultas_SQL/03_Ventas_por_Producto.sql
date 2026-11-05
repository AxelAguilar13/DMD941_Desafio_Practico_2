USE AdventureWorksDW2022;
GO

SELECT TOP 10
    p.EnglishProductName AS Producto,
    SUM(f.OrderQuantity) AS UnidadesVendidas,
    ROUND(SUM(f.SalesAmount), 2) AS TotalVentas
FROM dbo.FactInternetSales f
INNER JOIN dbo.DimProduct p
    ON f.ProductKey = p.ProductKey
GROUP BY p.EnglishProductName
ORDER BY TotalVentas DESC;