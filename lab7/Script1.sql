--Функция для подсчета количества товаров
create or replace function "Count_Products"() 
returns int as $$
declare 
    product_count int;
begin
    select count(*) into product_count
    from "Products";
    return product_count;
end;
$$ language plpgsql;
select * 
from "Count_Products"() ;

