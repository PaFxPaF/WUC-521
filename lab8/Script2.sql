--Выведите номер строки каждого адреса электронной почты по значению адреса в рамках каждого "Person"."EmailAddress".
select 
    "EmailAddressID",
    "EmailAddress",
    row_number() over(partition by "EmailAddress" order by "EmailAddressID") as "RowNumber"
from 
    "Person"."EmailAddress"
order by 
    "EmailAddress";
