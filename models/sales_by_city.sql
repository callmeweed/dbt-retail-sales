with customer as(
    select * from {{ ref('customer')}}
),

orders as (
    select * from {{ ref('order')}}
),
final as (
    select a.Customer_City as City
        ,sum(b.Quantity) as Total_Quantity
        ,sum(b.Revenue) as Total_Revenue
    from customer a join  orders b on a.Customer_Id = b.Customer_Id
    group by a.Customer_City
)

select * from final