--Создать триггер для автоматической установки даты начала (DateStart) на текущую дату и даты завершения (DateEnd) через шесть месяцев при добавлении скидки в таблицу "Discounts". 
-- Создание функции для автоматической установки дат
create or replace function "SetDiscountDates"()
returns trigger as $$
begin
    -- Установка текущей даты в "DateStart", если она не указана
    if new."DateStart" is null then
        new."DateStart" = current_date;
    end if;
    -- Установка даты завершения через 6 месяцев, если она не указана
    if new."DateEnd" is null then
        new."DateEnd" = new."DateStart" + interval '6 months';
    end if;
    return new;
end;
$$ language plpgsql;

-- Создание триггера
create trigger "BeforeDiscountInsert"
before insert on "Discounts"
for each row
execute function "SetDiscountDates"();

insert into "Counterparties" values	
(306, 'Петров Антон Денисович', 'Московская 6'); 
insert into "Discounts" ("ID", "Counterparty_ID", "Discount_amount")
values (6, 306, 15);

select *
from "Discounts"



