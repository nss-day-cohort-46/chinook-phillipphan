SELECT 
    SUM(Total) AS "Sales",
    STRFTIME("%Y", InvoiceDate) AS "Year"
FROM Invoice
WHERE InvoiceDate LIKE "%2009%" OR InvoiceDate LIKE "%2011%"
GROUP BY "Year"