SELECT
A.ContactName AS 'Nome',
A.Country AS `País`,
(SELECT COUNT(*) - 1 FROM w3schools.customers AS B WHERE B.Country = A.Country) AS `Número de compatriotas`
FROM w3schools.customers AS A
HAVING `Número de compatriotas` > 0
ORDER BY A.ContactName;
