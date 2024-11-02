--Функция для получения названия товара по его ID
create or replace function "Get_Product_Name_By_ID"(product_id int) 
returns varchar as $$
declare 
    product_name varchar;
begin
    select "Name" into product_name
    from "Products"
    where "ID" = product_id;
    return product_name;
end;
$$ language plpgsql;
select * 
from "Get_Product_Name_By_ID"(1) ;




