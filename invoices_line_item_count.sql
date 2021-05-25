SELECT
    COUNT(*),
    Invoice.*
FROM InvoiceLine
JOIN Invoice ON Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY InvoiceLine.InvoiceId