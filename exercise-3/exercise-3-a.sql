-- exercise-3-a.List Products, Categories & Suppliers
-- EXPLAIN:
-- 1.select ProductName from Products, CategoryName from Categories & SupplierName named after CompanyName from Suppliers
-- 2.join 3 tables Products, Categories & Suppliers with matching ID foreign keys

SELECT 
    Products.ProductName,
    Categories.CategoryName,
    Suppliers.CompanyName SupplierName
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID