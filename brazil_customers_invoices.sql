SELECT 
    FirstName, 
    LastName, 
    InvoiceId,
    InvoiceDate,
    BillingCountry
FROM Customer
JOIN Invoice
WHERE Country IS "Brazil"
