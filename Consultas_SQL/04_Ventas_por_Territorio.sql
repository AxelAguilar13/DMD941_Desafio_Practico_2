USE AdventureWorksDW2022;
GO

SELECT
    t.SalesTerritoryCountry AS Pais,
    t.SalesTerritoryRegion AS Territorio,
    SUM(f.OrderQuantity) AS UnidadesVendidas,
    ROUND(SUM(f.SalesAmount), 2) AS TotalVentas
FROM dbo.FactInternetSales f
INNER JOIN dbo.DimSalesTerritory t
    ON f.SalesTerritoryKey = t.SalesTerritoryKey
GROUP BY
    t.SalesTerritoryCountry,
    t.SalesTerritoryRegion
ORDER BY TotalVentas DESC;