--Ранжируйте клиентов по количеству заказов. Таблица "Sales"."SalesOrderHeader". 
select 
    "CustomerID",
    count("SalesOrderID") as "OrderCount",
    rank() over(order by count("SalesOrderID") desc) as "CustomerRank"
from 
    "Sales"."SalesOrderHeader"
group by 
    "CustomerID"
order by 
    "CustomerRank";




