--Query 3: Which day were the most orders delievered?
SELECT TOP 1 [ORDER_DATE],DATENAME(DW,GETDATE()) as Day_of_the_Week,COUNT([ORDER_DATE]) as Total_Orders_Per_Day
FROM [Doordash Dasher].[dbo].[Dasher_Delivery_Info]
GROUP BY [ORDER_DATE]
ORDER BY Total_Orders_Per_Day DESC