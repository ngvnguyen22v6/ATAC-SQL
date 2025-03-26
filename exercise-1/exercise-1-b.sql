-- exercise-1-b.List all orders from Orders with OrderDate in 1997
-- EXPLAIN: a query to select all orders in 1997 from Orders
-- using strftime function to Extract the Year from column OrderDate & return Year as a String

SELECT *
FROM Orders
WHERE strftime('%Y', OrderDate) = '1997'