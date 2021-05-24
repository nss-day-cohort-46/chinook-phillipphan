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
