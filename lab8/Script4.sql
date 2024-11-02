-- Провести ранжирование (DENSE_RANK()) сотрудников по должности. Таблица "HumanResources"."Employee". 
select 
    "BusinessEntityID",
    "JobTitle",
    dense_rank() over(order by "JobTitle") as "JobTitleRank"
from 
    "HumanResources"."Employee"
order by 
    "JobTitleRank";

