SELECT FirstName, LastName, CustomerId, Country
FROM Customer
WHERE Country IS NOT "USA"

SELECT FirstName, LastName, CustomerId, Country
FROM Customer
WHERE Country IS "Brazil"