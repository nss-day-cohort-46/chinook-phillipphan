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
