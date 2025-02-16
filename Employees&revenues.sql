SELECT 
    employees.firstName, 
    employees.lastName, 
    SUM(payments.amount) AS revenueAmount
FROM 
    employees
INNER JOIN 
    customers ON employees.employeeNumber = customers.salesRepEmployeeNumber
INNER JOIN 
    payments ON customers.customerNumber = payments.customerNumber
GROUP BY 
    employees.firstName, employees.lastName
ORDER BY 
    employees.firstName, employees.lastName;