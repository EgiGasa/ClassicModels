SELECT 
    products.productCode, 
    products.productName, 
    MIN(orders.orderDate) AS orderDate, -- Aggregate orderDate
    SUM(orderdetails.quantityOrdered) AS totalQuantityOrdered
FROM 
    orders
INNER JOIN 
    orderdetails ON orders.orderNumber = orderdetails.orderNumber
INNER JOIN 
    products ON orderdetails.productCode = products.productCode
WHERE 
    orders.orderDate >= '2004-12-01' AND orders.orderDate < '2005-01-01'
GROUP BY 
    products.productCode, products.productName
ORDER BY 
    products.productCode;