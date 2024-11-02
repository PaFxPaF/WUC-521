-- Функция (процедура), которая вставляет данные в таблицу
create or replace procedure "Insert_Product"(
    prod_id int,
    prod_article varchar,
    prod_name varchar,
    prod_cell_id int
) 
language plpgsql
as $$
begin
    insert into "Products" ("ID", "Article", "Name", "Cell_ID")
    values (prod_id, prod_article, prod_name, prod_cell_id);
end;
$$;

call "Insert_Product"(6, '1006', 'Свекла', 106);

select *
from "Products"
