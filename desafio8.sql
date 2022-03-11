SELECT
ContactName AS `Nome de contato`,
ShipperName AS 'Empresa que fez o envio',
OrderDate AS 'Data do pedido'
FROM w3schools.orders AS o
INNER JOIN w3schools.shippers AS s ON o.ShipperID = s.ShipperID
INNER JOIN w3schools.customers AS c ON o.CustomerID = c.CustomerID
WHERE ShipperName IN ("Speedy Express","United Package")
ORDER BY `Nome de contato`, ShipperName, OrderDate;
