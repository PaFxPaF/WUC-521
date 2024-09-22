--Отобразить количество товаров, указанных в каждом заказе
create view "Order_Products_Quantity_View" as
select 
    d."Order_ID" as "Order_ID",
    d."Product_ID" as "Product_ID",
    d."Quantity" as "Product_Quantity"
from 
    "Documents" d;
select *
from "Order_Products_Quantity_View" 