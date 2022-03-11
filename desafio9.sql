SELECT
CONCAT(FirstName, ' ', LastName) AS `Nome completo`,
COUNT(*) AS `Total de pedidos`
FROM w3schools.orders AS o
INNER JOIN w3schools.employees AS em ON o.EmployeeID = em.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
