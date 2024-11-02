--Выведите номер строки для каждого из клиентов в порядке убывания количества заказов. Таблица "Sales"."SalesOrderHeader".
select 
    "CustomerID",
    row_number() over(order by count("SalesOrderID") desc) as "RowNumber",
    count("SalesOrderID") as "OrderCount"
from 
    "Sales"."SalesOrderHeader"
group by 
    "CustomerID"
order by 
    "OrderCount" desc;

