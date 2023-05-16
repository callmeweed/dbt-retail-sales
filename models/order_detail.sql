select Order_Id
    ,Customer_Id
    ,order_date__DateOrders_ as Order_Date
    ,Order_Item_Cardprod_Id as Product_Id
    ,Order_Item_Quantity
    ,Sales
from `RetailSales.RetailSales`
group by Order_Id
    ,Customer_Id
    ,order_date__DateOrders_
    ,Order_Item_Cardprod_Id
    ,Order_Item_Quantity
    ,Sales
order by Order_Id
    ,Order_Item_Cardprod_Id