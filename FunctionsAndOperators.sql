--- Victor Ricardo Alvarez Saravia. SMIS937420

USE Northwind

--- EXERCISE 1
--- Utilice la función DATEDIFF para obtener la diferencia en días entre OrderData y RequiredDate de la tabla orders.SELECT CustomerID,OrderID,DATEDIFF(DAY, OrderDate,RequiredDate)
FROM Orders;

--- EXERCISE 2
--- Muestra el número de clientes, la primera fecha y la fecha más reciente de la tablaorders.

SELECT COUNT(CustomerID)TotalDeCliente,MIN(OrderDate)PrimerFecha,MAX(ShippedDate)FechaMasReciente
FROM Orders

--- EXERCISE 3
--- Mostrar companyName de la tabla customers, en donde City sea diferente de Country y country no sea Mexico.

SELECT CompanyName,City,Country
FROM Customers
WHERE City!=Country AND NOT Country='Mexico'

--- EXERCISE 4
/*
Mostrar la cantidad de pedidos realizados por un cliente de la tabla orders en donde
los pedidos sean mayores a 5 y menores a 10 (Muestre 3 resultados, el primero
utilizando >=,<=; el segundo utilizando BETWEEN y el tercero utilizando IN).
*/

SELECT CustomerID,EmployeeID
FROM Orders
WHERE EmployeeID>=5 OR EmployeeID<=10 ORDER BY EmployeeID; 

SELECT CustomerID,EmployeeID
FROM Orders
WHERE EmployeeID BETWEEN 5 AND 10; 

SELECT CustomerID,EmployeeID
FROM Orders
WHERE EmployeeID IN(5,10); 

--- EXERCISE 5
--- Mostrar el código del cliente y la fecha que realizo la orden de la tabla orders, deberá mostrar solo las del año 1998, utilice el operador LIKE y la función YEAR.

SELECT CustomerID,EmployeeID,YEAR(OrderDate)
FROM Orders
WHERE YEAR (OrderDate) LIKE '1998%'
ORDER BY CustomerID;

