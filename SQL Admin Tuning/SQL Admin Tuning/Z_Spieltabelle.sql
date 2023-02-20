									   
SELECT        Customers.CustomerID, Customers.CompanyName, Customers.ContactTitle, Customers.ContactName, Customers.City, Customers.Country, Orders.OrderDate, Orders.Freight, Orders.ShipCity, Orders.ShipCountry, 
                         [Order Details].ProductID, [Order Details].OrderID, [Order Details].UnitPrice, [Order Details].Quantity, Employees.LastName, Employees.FirstName, Products.ProductName, Products.UnitsInStock
INTO KU
FROM            Customers INNER JOIN
                         Orders ON Customers.CustomerID = Orders.CustomerID INNER JOIN
                         Employees ON Orders.EmployeeID = Employees.EmployeeID INNER JOIN
                         [Order Details] ON Orders.OrderID = [Order Details].OrderID INNER JOIN
                         Products ON [Order Details].ProductID = Products.ProductID



insert into ku
select * from ku
go 9