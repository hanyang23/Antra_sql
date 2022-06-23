use AdventureWorks2019
GO

--1.
SELECT c.Name AS Country, s.Name AS Province
FROM Person.CountryRegion AS c INNER JOIN Person.StateProvince AS s ON c.CountryRegionCode = s.CountryRegionCode

--2.
SELECT c.Name AS Country, s.Name AS Province
FROM Person.CountryRegion AS c INNER JOIN Person.StateProvince AS s ON c.CountryRegionCode = s.CountryRegionCode
WHERE c.Name IN ('Germany', 'Canada')

--3.
use Northwind
GO

declare @today datetime
select @today = GETDATE()

SELECT DISTINCT od.OrderID, COUNT(od.Quantity) AS CountOfOrders
FROM [Order Details] od JOIN Orders o ON o.OrderId = od.OrderID
WHERE @today - o.OrderDate > 25
GROUP BY od.OrderID
HAVING COUNT(od.Quantity) IS NOT NULL

--4.
declare @today datetime
select @today = GETDATE()

SELECT TOP 5 od.OrderID, COUNT(od.Quantity) AS CountOfOrders
FROM [Order Details] od JOIN Orders o ON o.OrderId = od.OrderID
WHERE @today - o.OrderDate > 25
GROUP BY od.OrderID
ORDER BY COUNT(od.Quantity) DESC

--5.
SELECT c.City, COUNT(c.CustomerID) AS NumOfCustomers
FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.City

--6.
SELECT c.City, COUNT(c.CustomerID) AS NumOfCustomers
FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.City
HAVING COUNT(c.CustomerID) > 2

--7.
SELECT c.CustomerID, COUNT(od.Quantity) AS CountOfProducts
FROM [Order Details] od JOIN Orders o ON od.OrderID = o.OrderID JOIN Customers c ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID

--8.
SELECT c.CustomerID, COUNT(od.Quantity) AS CountOfProducts
FROM [Order Details] od JOIN Orders o ON od.OrderID = o.OrderID JOIN Customers c ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID
HAVING COUNT(od.Quantity) > 100

--9.
SELECT su.CompanyName AS [Supplier Company Name], sh.CompanyName AS[Shipping Company Name]
FROM Shippers sh, Suppliers su
ORDER BY su.CompanyName, sh.CompanyName

--10.
SELECT o.OrderDate, p.ProductName
FROM [Order Details] od JOIN Orders o ON od.OrderID = o.OrderID JOIN Products p ON p.ProductID = od.ProductID
GROUP BY o.OrderDate, p.ProductName

--11.
SELECT e.FirstName + ' ' + e.LastName AS Employee, e.Title AS Title
FROM Employees e 
GROUP BY e.Title, e.FirstName + ' ' + e.LastName

--12.
SELECT ISNULL(m.FirstName + ' ' + m.LastName,'N/A') AS Manager, COUNT(e.EmployeeID) AS CountOfEmployees
FROM Employees e LEFT JOIN Employees m ON e.ReportsTo = m.EmployeeID
GROUP BY ISNULL(m.FirstName + ' ' + m.LastName,'N/A')
HAVING COUNT(e.EmployeeID) > 2
ORDER BY COUNT(e.EmployeeID)

--13.
SELECT City, CustomerID AS Name, ContactName, 'Customer' AS [Type (Customer or Supplier)]
FROM Customers
UNION ALL
SELECT City, CompanyName AS Name, ContactName, 'Supplier' AS [Type (Customer or Supplier)]
FROM Suppliers
ORDER BY City

--14.
SELECT DISTINCT c.City
FROM Customers c JOIN Employees e ON c.City = e.City
WHERE c.CustomerID IS NOT NULL and e.EmployeeID IS NOT NULL
ORDER BY c.City

--15.
--a. Use sub-query/?
SELECT City
(SELECT City FROM Customers c WHERE c.CustomerID IS NOT NULL) AS City, 
(SELECT City FROM Employees e WHERE e.EmployeeID ISNULL) AS LastName

--b. Do not use sub-query
SELECT City
FROM Customers
WHERE CustomerID IS NOT NULL
UNION
SELECT City
FROM Employees
WHERE EmployeeID IS NULL
ORDER BY City

--16.
SELECT p.ProductName, COUNT(od.Quantity) AS TotalOrderQuantities
FROM [Order Details] od JOIN Products p ON od.ProductID = p.ProductID
GROUP BY p.ProductName

--17.
--a. Use union
SELECT City, COUNT(c.CustomerID) as NumOfCustomers
FROM Customers c
GROUP BY c.City
HAVING COUNT(c.CustomerID) >= 2
UNION
SELECT City, COUNT(c.CustomerID) as NumOfCustomers
FROM Customers c
GROUP BY c.City
HAVING COUNT(c.CustomerID) >= 2
 
--Use sub-query/? and no union
SELECT City, COUNT(c.CustomerID) as NumOfCustomers
FROM Customers c
GROUP BY City
HAVING COUNT(c.CustomerID) >= 2

--18.

--19.
SELECT TOP 5 p.ProductName, AVG(od.UnitPrice) AS AvgPrice, o.ShipCity, od.Quantity
FROM [Order Details] od JOIN Orders o ON od.OrderID = o.OrderID JOIN Products p ON P.ProductID = od.ProductID
GROUP BY p.ProductName, o.ShipCity, od.Quantity
ORDER BY od.Quantity DESC

--20.


--21.
--1.Use 'SELECT DISTINCT'
--2.Use 'UNION'