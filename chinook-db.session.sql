SELECT FirstName, LastName, CustomerId, Country
FROM Customer
WHERE Country IS NOT "USA"

SELECT FirstName, LastName, CustomerId, Country
FROM Customer
WHERE Country IS "Brazil"

SELECT 
    FirstName, 
    LastName, 
    InvoiceId,
    InvoiceDate,
    BillingCountry
FROM Customer
JOIN Invoice
WHERE Country IS "Brazil"

SELECT *
FROM Employee
WHERE Title IS "Sales Support Agent"

SELECT DISTINCT BillingCountry
FROM Invoice

SELECT
    i.*,
    c.FirstName,
    c.LastName
FROM Invoice as i
JOIN Customer as c ON i.CustomerId = c.CustomerId
JOIN Employee as e on c.SupportRepId = e.