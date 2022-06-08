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

-- obtener todas las ordenes por cliente
select c.customerNumber , o.orderNumber, c.customerName 
from customers c, orders o
where c.customerNumber = o.customerNumber 
and c.customerNumber = 496
order by c.customerNumber desc;