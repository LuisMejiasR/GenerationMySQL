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

