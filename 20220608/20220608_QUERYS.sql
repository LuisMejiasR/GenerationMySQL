use generationg1;

select * from customers c;

select * from customers c
where c.customerName like '%toy%';

select c.customerNumber, c.customerName
from customers c
where c.customerName like '%toy%';

select c.customerNumber, c.customerName, c.city
from customers c
where c.city = 'Madrid';

-- obteniendo TODOS los registros de ambas tablas (malo)
select * from customers c, orders o
order by c.customerNumber desc;


select * from customers c, orders o
where c.customerNumber = o.customerNumber 
order by c.customerNumber desc;

-- obtener todas las ordenes por cliente
select c.customerNumber , o.orderNumber 
from customers c, orders o
where c.customerNumber = o.customerNumber 
order by c.customerNumber desc;

-- obtener todas las ordenes por cliente y obtener nombre de cliente por el numero
select c.customerNumber , o.orderNumber, c.customerName 
from customers c, orders o
where c.customerNumber = o.customerNumber -- filtrar especificamente por los datos que están en una tabla y en otra
and c.customerNumber = 496
order by c.customerNumber desc;

-- hacer una query donde quiero traer un producto especifico:
-- consultamos las tablas primero
select * from products p; 

select * from productlines pl;

select p.productName , pl.productline, pl.textDescription
from products p , productlines pl
where p.productline = pl.productline
and pl.productline = 'Motorcycles';

-- listado de productos motorcycles con el inventario de mayor a menor
select * from products p;

select * from productlines pl;

-- se hace la seleccion desde las 3 columnas que nos interesan
select p.productName, p.quantityInStock, pl.productline
-- se dice desde que tablas se hará la consulta y se crea un alias
from products p, productlines pl
-- se dice que las tablas tienen que tener el mismo nombre, Motorcycles
where p.productLine = pl.productLine 
and p.productline = 'Motorcycles'
-- se arregla por cantidad en stock
order by p.quantityInStock desc;

-- listado de productos Ford, por linea de producto y ordenados alfabeticamente por linea de producto
SELECT p.productName, pl.productLine, p.quantityInStock
FROM products p , productlines pl
WHERE p.productName LIKE '%Ford%'
ORDER BY pl.productLine ASC;
