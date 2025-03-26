-- exercise-2-b.List 5 highest price products from Products
-- EXPLAIN:
-- 1.select product ID & name from Products
-- 2.order by UnitPrice descendingly to return price from highest to lower
-- 3.limit top 5 products

SELECT ProductName, UnitPrice
FROM Products
ORDER BY UnitPrice DESC
LIMIT 5