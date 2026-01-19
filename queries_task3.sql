--Task 3: SQL Basics
--Dataset: Chinook Database

-- 1. View sample customers
SELECT *
FROM Customers
LIMIT 10;

-- 2. Count total customers
SELECT COUNT(*) AS Total_Customers
FROM Customers;

-- 3. Filter customers from India
SELECT *
FROM Customers
WHERE Country = 'India';

-- 4. Sort customers by first name
SELECT FirstName, LastName, Country
FROM Customers
ORDER BY FirstName ASC;

-- 5. View sample invoices
SELECT *
FROM Invoices
LIMIT 10;

-- 6. Total sales (SUM)
SELECT SUM(Total) AS Total_Sales
FROM Invoices;

-- 7. Average invoice value (AVG)
SELECT AVG(Total) AS Average_Sales
FROM Invoices;

-- 8. Sales by billing country (GROUP BY)
SELECT BillingCountry, SUM(Total) AS Country_Sales
FROM Invoices
GROUP BY BillingCountry;

-- 9. Countries with sales greater than 100 (HAVING)
SELECT BillingCountry, SUM(Total) AS Country_Sales
FROM Invoices
GROUP BY BillingCountry
HAVING Country_Sales > 100;

-- 10. Invoices between date range (BETWEEN)
SELECT *
FROM Invoices
WHERE InvoiceDate BETWEEN '2012-01-01' AND '2012-12-31';

-- 11. Customers whose name starts with 'A' (LIKE)
SELECT *
FROM Customers
WHERE FirstName LIKE 'A%';