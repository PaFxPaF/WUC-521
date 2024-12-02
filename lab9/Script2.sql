--Создать триггер для автоматической проверки заполнения обязательных полей перед добавлением контрагента в таблицу "Counterparties".
-- Создание функции для проверки заполнения полей
create or replace function "CheckCounterpartyFields"()
returns trigger as $$
begin
    if new."ID" is null then
        raise exception 'Поле "ID" обязательно.';
    end if;
    if new."Name" is null or trim(new."Name") = '' then
        raise exception 'Поле «Имя» обязательно.';
    end if;
    if new."Address" is null or trim(new."Address") = '' then
        raise exception 'Поле "Адрес" обязательно.';
    end if;
    return new;
end;
$$ language plpgsql;

-- Создание триггера
create trigger "BeforeCounterpartyInsert"
before insert on "Counterparties"
for each row
execute function "CheckCounterpartyFields"();

insert into "Counterparties" ("ID", "Name", "Address")
values (2, '', 'Москва, ул. Пушкина, д. 5');
