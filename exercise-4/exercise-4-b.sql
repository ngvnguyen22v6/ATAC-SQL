-- exercise-4-b.up 10% Beverages unit price 
-- EXPLAIN:
-- 1.query check before & after updating
-- 2.insert a new product named 'Organic Coffee', category of 'Beverages', priced at 25, & 100 units in stock
-- 3.using ORDER BY RANDOM() LIMIT 1 to select 1 random supplier

-- BEFORE CHECK
SELECT * FROM Products WHERE ProductName = 'Organic Coffee';

INSERT INTO Products (ProductName, SupplierID, CategoryID, UnitPrice, UnitsInStock)
VALUES (
    'Organic Coffee',
    (SELECT SupplierID FROM Suppliers ORDER BY RANDOM() LIMIT 1),
    (SELECT CategoryID FROM Categories WHERE CategoryName = 'Beverages'),
    25.00,
    100
);

-- AFTER CHECK
SELECT * FROM Products WHERE ProductName = 'Organic Coffee';