-- exercise-3-b.List all customers with company name contains 'Market'
-- EXPLAIN: using wildcard symbol '%' to find CompanyName that contains the word 'Market'

SELECT *
FROM Customers
WHERE CompanyName LIKE '%Market%'