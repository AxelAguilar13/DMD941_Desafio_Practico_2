USE AdventureWorksDW2022;
GO

SELECT
    d.CalendarYear AS Anio,
    SUM(f.SalesAmount) AS TotalVentas,
    SUM(f.OrderQuantity) AS UnidadesVendidas
FROM dbo.FactInternetSales f
INNER JOIN dbo.DimDate d
    ON f.OrderDateKey = d.DateKey
GROUP BY d.CalendarYear
ORDER BY d.CalendarYear;