-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select Product.ProductName, Category.CategoryName
from Product
join Category
on Category.Id = Product.CategoryId;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select [Order].Id, [Order].OrderDate, Shipper.CompanyName
from Shipper
join [Order]
on Shipper.Id = [Order].ShipVia
where [Order].OrderDate < "2012-08-09";

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
Select Product.ProductName, OrderDetail.OrderId
from Product
join OrderDetail
on Product.Id = OrderDetail.ProductId
where OrderDetail.OrderId = 10251;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select Employee.LastName, Customer.CompanyName, [Order].Id
from [Order]
join Customer
on Customer.Id = [Order].CustomerId
join Employee
on Employee.Id = [Order].EmployeeId;