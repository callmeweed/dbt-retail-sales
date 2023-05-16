select Product_Card_Id as Product_Id
      ,Product_Description
      ,Product_Image
      ,Product_Name
      ,Product_Price
      ,Product_Status
      ,Product_Category_Id
from `RetailSales.RetailSales`
group by Product_Card_Id
      ,Product_Description
      ,Product_Image
      ,Product_Name
      ,Product_Price
      ,Product_Status
      ,Product_Category_Id
order by Product_Card_Id