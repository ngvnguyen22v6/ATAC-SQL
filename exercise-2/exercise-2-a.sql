-- exercise-2-a.Calculate total revenue of each customer based on Orders & Order Details
-- EXPLAIN:
-- 1.select customer ID & company name from Customers
-- 2.calculate the sum of unit price & quanity from Order Details, name it after TotalRevenue
-- 3.join Orders & Order Details with matching OrderID foreign key
-- 4.join Orders & Customers with matching CustomerID foreign key
-- 5.group by CustomerID & CompanyName from Customers to return accurate result
-- *SIDE NOTE: can group by CustomerID from Orders for simplicity, but using Customers can see Name & ID, which returns a more comprehensive result

SELECT 
    Customers.CustomerID,
    Customers.CompanyName,
    SUM(od.UnitPrice * od.Quantity) AS TotalRevenue
FROM Orders
JOIN "Order Details" AS od ON Orders.OrderID = od.OrderID
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP BY Customers.CustomerID, Customers.CompanyName