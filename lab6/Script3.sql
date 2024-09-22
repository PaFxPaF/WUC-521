--Вывести все активные скидки контрагентов с указанием периода действия
create view "Active_Discounts_View" as
select 
    d."ID" as "Discount_ID",
    d."Counterparty_ID" as "Counterparty_ID",
    d."Discount_amount" as "Discount_Amount",
    d."DateStart" as "Start_Date",
    d."DateEnd" as "End_Date"
from 
    "Discounts" d
where 
    d."DateEnd" >= CURRENT_DATE;
select *
from "Active_Discounts_View" 