SELECT 
    customers.customerName, 
    orders.orderNumber, 
    orderdetails.productCode, 
    orderdetails.quantityOrdered, 
    orderdetails.priceEach,
    orderdetails.orderLineNumber
FROM 
    customers
JOIN 
    orders ON customers.customerNumber = orders.customerNumber
JOIN 
    orderdetails ON orders.orderNumber = orderdetails.orderNumber
WHERE 
    customers.country = 'Germany';