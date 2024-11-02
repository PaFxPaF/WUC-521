--Функция для подсчета средней скидки для контрагента
create or replace function "Get_Average_Discount"(counterparty_id int) 
returns numeric as $$
declare 
    avg_discount numeric;
begin
    select avg("Discount_amount") into avg_discount
    from "Discounts"
    where "Counterparty_ID" = counterparty_id;
    return avg_discount;
end;
$$ language plpgsql;
select * 
from "Get_Average_Discount"(304);
