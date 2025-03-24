-- exercise-5-b.Show top spending company name & their spending
-- EXPLAIN:
-- 1.select CompanyName from Customers, the calculate total spending of that company named after TotalRevenue
-- 2.join 3 tables Customer, Orders & Order Details with matching ID foreign keys
-- 3.group by CompanyName for accurate total spending of each company
-- 4.order descendingly by TotalRevenue, & limit 1 to get the TOP spending company

SELECT 
    Customers.CompanyName,
    SUM(od.UnitPrice * od.Quantity) TotalRevenue
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
JOIN "Order Details" od ON Orders.OrderID = od.OrderID
GROUP BY Customers.CompanyName
ORDER BY TotalRevenue DESC
LIMIT 1