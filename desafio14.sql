SELECT Country AS País FROM
(select Country from w3schools.customers
UNION
select Country from w3schools.suppliers) AS País
ORDER BY Country LIMIT 5;
