use Northwind
GO

--1.
CREATE VIEW view_product_order_Hanyang
AS
SELECT p.ProductName, p.ProductID, (od.Quantity) AS TotalOrderedQuantity
FROM Products p INNER JOIN [Order Details] od ON od.ProductID = p.ProductID
GROUP BY p.ProductName, p.ProductID, od.Quantity
GO


--2.
CREATE PROC sp_product_order_quantity_Hanyang
@ID int,
@TotalQuant int OUT
AS
BEGIN
SELECT @ID = view_product_order_Hanyang.ProductID, @TotalQuant = view_product_order_Hanyang.TotalOrderedQuantity
FROM view_product_order_Hanyang
WHERE view_product_order_Hanyang.ProductID= @ID
END
GO

BEGIN
DECLARE @name int, @TQ int
exec sp_product_order_quantity_Hanyang 2, @TQ out
PRINT @TQ
END
GO

--3. 
CREATE PROC sp_product_order_city_Hanyang
@ProductName varchar(20),
@Top5 varchar(20) out,
@TotalQuant int out
AS
BEGIN
SELECT TOP 5 @Top5 = o.ShipCity, @TotalQuant = SUM(od.Quantity)
FROM Orders o JOIN [Order Details] od ON o.OrderID = od.OrderID JOIN Products p ON od.ProductID = p.ProductID
WHERE @productname = p.ProductName
GROUP BY o.ShipCity
ORDER BY COUNT(od.ProductID)
END

--4.
CREATE TABLE people_Hanyang(ID int, Name varchar(20), CityID int)
CREATE TABLE city_Hanyang(CityID int, City varchar(20))
GO

insert into people_Hanyang VALUES(1, 'Aaron Rodgers', 2)
insert into people_Hanyang VALUES(2, 'Russell Wilson', 1)
insert into people_Hanyang VALUES(3, 'Jody Nelson', 2)
insert into city_Hanyang VALUES(1, 'Seattle')
insert into city_Hanyang VALUES(2, 'Green Bay')
GO

CREATE VIEW Packers_Hanyang 
AS
SELECT p.ID, p.Name 
FROM people_Hanyang p INNER JOIN city_Hanyang c ON p.CityID = c.CityID
WHERE c.City = 'Green Bay'
GO

--5.
CREATE PROC sp_birthday_employees_Hanyang
@Birthday datetime
AS
BEGIN
CREATE TABLE birthday_employees_Hanyang (Birthday datetime)
SELECT @Birthday = e.BirthDate
FROM Employees e
WHERE e.BirthDate = 'Feb'
INSERT INTO birthday_employees_Hanyang(Birthday) VALUES (@Birthday)
END

DROP TABLE birthday_employees_Hanyang

--6.
--Use 'UNION' for both two table and check if the number of results is same with the two table,
--if not same then they do not have same data.