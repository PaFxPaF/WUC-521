--Вычислить среднее количество адресов электронной почты для каждого человека в пределах двух строк до и после текущей строки.
-- Таблица "Person"."EmailAddress".
select 
    "BusinessEntityID",
    "EmailAddress",
    count("EmailAddress") over(
        partition by "BusinessEntityID" 
        rows between 2 preceding and 2 following
    ) as "AvgEmailCount"
from 
    "Person"."EmailAddress"
order by 
    "BusinessEntityID";

