SELECT
ProductName AS 'Produto',
MIN(Quantity) AS 'Mínima',
MAX(Quantity) AS 'Máxima',
ROUND(AVG(Quantity), 2) AS `Média`
FROM w3schools.order_details AS od, w3schools.orders AS o, w3schools.products AS p
WHERE od.OrderID = o.OrderID AND od.ProductID = p.ProductID
GROUP BY ProductName
HAVING `Média` > 20
ORDER BY `Média`, ProductName;
