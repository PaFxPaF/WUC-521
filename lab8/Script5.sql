--Ранжируйте адреса электронных почт персон в рамках каждого бизнес -подразделения. Таблица "Person"."EmailAddress". 
select 
    "BusinessEntityID",
    "EmailAddress",
    rank() over(partition by "BusinessEntityID" order by "EmailAddress") as "EmailRank"
from 
    "Person"."EmailAddress"
order by 
    "BusinessEntityID", "EmailRank";

