--Получить предыдущий номер телефона для каждого номера телефона, 
--ранжированного по BusinessEntityID. Таблица "Person"."PersonPhone". 
select 
    "BusinessEntityID",
    "PhoneNumber",
    lag("PhoneNumber") over(partition by "BusinessEntityID" order by "PhoneNumber") as "PreviousPhoneNumber"
from 
    "Person"."PersonPhone"
order by 
    "BusinessEntityID", "PhoneNumber";





