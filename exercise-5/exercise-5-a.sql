-- exercise-5-a.List customer(s) that has/have not placed any order
-- EXPLAIN:
-- 1.using LEFT JOIN to base on CustomerID, this includes all customers, even those who haven't placed any order
-- 2.using IS NULL to return non-ordered customer(s)

SELECT Customers.*
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderID IS NULL