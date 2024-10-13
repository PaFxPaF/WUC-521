--Отобразить список всех товаров, находящихся на складах, с указанием их ячеек и складов
create view "Warehouse_Products_View" as
select 
    p."ID" as "Product_ID",
    p."Article" as "Product_Article",
    p."Name" as "Product_Name",
    c."Warehouse_ID" as "Warehouse_ID",
    c."Cell_number" as "Cell_Number"
from 
    "Products" p 
join 
    "Cells" c on p."Cell_ID" = c."ID";
select *
from "Warehouse_Products_View" 
