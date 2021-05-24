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
    e.FirstName,
    e.LastName,
    i.*
FROM Invoice as i
JOIN Customer as c ON i.CustomerId = c.CustomerId
JOIN Employee as e on c.SupportRepId = e.EmployeeId

SELECT 
    c.FirstName,
    c.LastName,
    c.Country,
    e.FirstName as AgentFirstName,
    e.LastName as AgentLastName,
    i.Total
FROM Customer as c
JOIN Employee as e ON c.SupportRepId = e.EmployeeId
JOIN Invoice as i ON c.CustomerId = i.CustomerId