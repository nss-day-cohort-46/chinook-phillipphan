-- non_usa_customers.sql
SELECT FirstName, LastName, CustomerId, Country
FROM Customer
WHERE Country IS NOT "USA"

-- brazil_customers.sql
SELECT FirstName, LastName, CustomerId, Country
FROM Customer
WHERE Country IS "Brazil"

-- brazil_customers_invoices.sql
SELECT 
    FirstName, 
    LastName, 
    InvoiceId,
    InvoiceDate,
    BillingCountry
FROM Customer
JOIN Invoice
WHERE Country IS "Brazil"

-- sales_agents.sql
SELECT *
FROM Employee
WHERE Title IS "Sales Support Agent"

-- unique_invoice_countries.sql
SELECT DISTINCT BillingCountry
FROM Invoice

-- sales_agent_invoices.sql
SELECT
    e.FirstName,
    e.LastName,
    i.*
FROM Invoice as i
JOIN Customer as c ON i.CustomerId = c.CustomerId
JOIN Employee as e on c.SupportRepId = e.EmployeeId

-- invoice_totals.sql
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

-- total_invoices_{year}.sql
SELECT COUNT(InvoiceId)
FROM Invoice
WHERE InvoiceDate LIKE "2009%" OR InvoiceDate LIKE "2011%"