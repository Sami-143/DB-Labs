--Q1
SELECT TOP (1000)
    [OrderID],
    [CustomerID],
    [EmployeeID],
    [OrderDate],
    [RequiredDate],
    [ShippedDate],
    [ShipVia],
    [Freight],
    [ShipName],
    [ShipAddress],
    [ShipCity],
    [ShipRegion],
    [ShipPostalCode],
    [ShipCountry]
FROM [Northwind].[dbo].[Orders]
WHERE [ShippedDate] > [RequiredDate];
--***--



--Q2
SELECT DISTINCT
    [Country],
    [LastName],
    [FirstName]
FROM [Northwind].[dbo].[Employees];
--***--



--Q3
SELECT
    [EmployeeID],
    [LastName],
    [FirstName]
FROM
    [Northwind].[dbo].[Employees]
WHERE
    [ReportsTo] IS NULL;
--***--



--Q4
SELECT TOP (1000)
    [ProductID],
    [ProductName]
FROM [Northwind].[dbo].[Products]
WHERE [Discontinued] = 1;
--***--



--Q5
SELECT TOP (1000)
    [OrderID],
    [ProductID],
    [UnitPrice],
    [Quantity],
    [Discount]
FROM [Northwind].[dbo].[Order Details]
WHERE [Discount] = 0;
--***--



--Q6
SELECT TOP (1000)
    [CustomerID],
    [CompanyName],
    [ContactName],
    [ContactTitle],
    [Address],
    [City],
    [Region],
    [PostalCode],
    [Country],
    [Phone],
    [Fax]
FROM [Northwind].[dbo].[Customers]
WHERE [Region] IS NULL;
--***--



--Q7
SELECT TOP (1000)
    [CustomerID],
    [CompanyName],
    [ContactName],
    [ContactTitle],
    [Address],
    [City],
    [Region],
    [PostalCode],
    [Country],
    [Phone],
    [Fax]
FROM [Northwind].[dbo].[Customers]
WHERE [Country] IN ('UK', 'US');
--***--



--Q8
SELECT TOP (1000)
    [SupplierID],
    [CompanyName],
    [ContactName],
    [ContactTitle],
    [Address],
    [City],
    [Region],
    [PostalCode],
    [Country],
    [Phone],
    [Fax],
    [HomePage]
FROM [Northwind].[dbo].[Suppliers]
WHERE [HomePage] IS NOT NULL;
--***--



--Q9
SELECT DISTINCT
    O.[ShipCountry]
FROM
    [Northwind].[dbo].[Orders] O
JOIN
    [Northwind].[dbo].[Order Details] OD ON O.[OrderID] = OD.[OrderID]
WHERE
    YEAR(O.[OrderDate]) = 1997;

--***--



--Q10
SELECT DISTINCT
    [CustomerID]
FROM [Northwind].[dbo].[Orders]
WHERE [ShippedDate] IS NULL;

--***--



--Q11
SELECT TOP (1000)
    [SupplierID],
    [CompanyName],
    [City]
FROM [Northwind].[dbo].[Suppliers];
--***--



--Q12
SELECT DISTINCT
    [EmployeeID],
    [LastName],
    [FirstName],
    [City],
    [Country]
FROM [Northwind].[dbo].[Employees]
WHERE [City] = 'London';
--***--



--Q13
SELECT TOP (1000)
    [ProductID],
    [ProductName]
FROM [Northwind].[dbo].[Products]
WHERE [Discontinued] = 0;
--***--



--Q14
SELECT TOP (1000)
    [OrderID],
    [ProductID],
    [UnitPrice],
    [Quantity],
    [Discount]
FROM [Northwind].[dbo].[Order Details]
WHERE [Discount] <= 0.1;
--***--



--Q15
SELECT TOP (1000)
    [EmployeeID],
    [LastName],
    [FirstName],
    [HomePhone],
    [Extension]
FROM [Northwind].[dbo].[Employees]
WHERE [Region] IS NULL;
---***---
