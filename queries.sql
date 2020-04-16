-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

select ProductName , CategoryName from product
join Category
on product.categoryid=category.id


-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

select Shipper.CompanyName , [Order].Id , [order].OrderDate from Shipper
join [Order]
where OrderDate <"2012-08-09"
group by [Order].Id

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select p.ProductName , OrderDetail.Quantity , OrderDetail.OrderId from OrderDetail
join Product as p on OrderDetail.ProductId=p.Id
where OrderDetail.OrderId=10251



-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
Select [Order].Id , c.CompanyName , e.LastName from [Order]
join Customer as c on [Order].CustomerId=c.id
join Employee as e on [Order].EmployeeId=e.id