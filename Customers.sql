SELECT 
    customerNumber, 
    TotalOrders
FROM (
    SELECT 
        customerNumber, 
        COUNT(orderNumber) AS TotalOrders
    FROM 
        orders
    GROUP BY 
        customerNumber
) AS OrderCounts
WHERE 
    TotalOrders = (
        SELECT 
            MAX(TotalOrders)
        FROM (
            SELECT 
                COUNT(orderNumber) AS TotalOrders
            FROM 
                orders
            GROUP BY 
                customerNumber
        ) AS MaxOrderCounts
    )
ORDER BY 
    customerNumber;
 