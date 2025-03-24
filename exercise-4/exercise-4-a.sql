-- exercise-4-a.up 10% Beverages unit price 
-- EXPLAIN:
-- 1.query check before & after updating
-- 2.update increase 10% all products UnitPrice with CategoryName 'Beverages'
-- 3.using subquery to filter products that have category of Beverages

-- BEFORE CHECK
SELECT ProductName, UnitPrice FROM Products;

UPDATE Products
SET UnitPrice = UnitPrice * 1.1
WHERE CategoryID IN (
    SELECT CategoryID
    FROM Categories
    WHERE CategoryName = 'Beverages'
);

-- AFTER CHECK
SELECT ProductName, UnitPrice FROM Products;