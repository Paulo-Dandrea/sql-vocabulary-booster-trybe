SELECT
ProductName AS 'Produto',
Price as 'Preço'
FROM w3schools.order_details AS d,
w3schools.products as p
WHERE d.ProductID = p.ProductID
AND d.Quantity > 80
ORDER BY ProductName;
