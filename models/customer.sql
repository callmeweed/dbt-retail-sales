select 
    Customer_Id
    ,Customer_Fname
    ,Customer_Lname
    ,Customer_Password
    ,Customer_Email
    ,Customer_Country
    ,Customer_City
    ,Customer_Segment
    ,Customer_State
    ,Customer_Street
    ,Customer_Zipcode
from `RetailSales.RetailSales`
group by 
    Customer_Id
    ,Customer_Fname
    ,Customer_Lname
    ,Customer_Password
    ,Customer_Email
    ,Customer_Country
    ,Customer_City
    ,Customer_Segment
    ,Customer_State
    ,Customer_Street
    ,Customer_Zipcode
order by Customer_Id