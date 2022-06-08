-- INNER JOIN
select c.customerNumber, o.orderNumber ,c.customerName 
from customers c, orders o
where c.customerNumber = o.customerNumber 
and c.customerNumber = 496
order by c.customerNumber desc;

select c.customerNumber, o.orderNumber ,c.customerName 
from customers c -- tabla A
inner join orders o -- tabla B
on c.customerNumber = o.customerNumber;

select od.orderNumber, od.productCode
from orderdetails od
inner join orders o
on od.orderNumber = o.orderNumber;

select  p.productName, p.productCode, od.orderNumber
from orderdetails od
inner join products p
on od.productCode = p.productCode;