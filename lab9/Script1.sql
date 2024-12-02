--Создать триггер, который будет вызывать исключение при попытке выполнить операцию удаления товара из таблицы "Products".
-- Создание функции, блокирующей удаление
create or replace function "PreventProductDeletion"()
returns trigger as $$
begin
    raise exception 'Удаление товаров не допускается.';
    return null; -- Прерывает операцию удаления
end;
$$ language plpgsql;

-- Создание триггера, срабатывающего перед удалением
create trigger "BeforeProductDelete"
before delete on "Products"
for each row
execute function "PreventProductDeletion"();

delete from "Products" where "ID" = 7;
