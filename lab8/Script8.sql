-- Вывести идентификатор клиента, его имя и фамилию,
-- а также фамилию следующего в алфавитном порядке клиента. Таблица "Person"."Person". 
select 
    "BusinessEntityID",
    "FirstName",
    "LastName",
    lead("LastName") over(order by "LastName") as "NextLastName"
from 
    "Person"."Person"
order by 
    "LastName";

