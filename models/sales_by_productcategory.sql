with product as(
    select * from {{ ref('product')}}
),

order_detail as (
    select * from {{ ref('order_detail')}}
),
final as (
    select a.Product_Category_Id
        ,sum(b.Order_Item_Quantity) as Total_Quantity
        ,sum(b.Sales) as Total_Revenue
    from product a join  order_detail b on a.Product_Id = b.Product_Id
    group by a.Product_Category_Id
)

select * from final