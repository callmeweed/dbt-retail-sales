with order_detail as (

    select * from {{ ref('order_detail')}}
),
orders as (
    select Order_Id
        ,Customer_Id
        ,Order_Date
        ,sum(Order_Item_Quantity) as Quantity
        ,sum(Sales) as Revenue
    from order_detail
    group by Order_Id
        ,Customer_Id
        ,Order_Date
)
select * from orders
