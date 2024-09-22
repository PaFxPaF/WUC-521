--Показать список всех заказов с информацией о контрагентах (название и адрес)
create view "Order_Details_View" as
select 
    o."ID" as "Order_ID",
    o."Number" as "Order_Number",
    o."Status" as "Order_Status",
    c."Name" as "Counterparty_Name",
    c."Address" as "Counterparty_Address"
from 
    "Orders" o
join 
    "Counterparties" c on o."Counterparty_ID" = c."ID";
select *
from "Order_Details_View" 