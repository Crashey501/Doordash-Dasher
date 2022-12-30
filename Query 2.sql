--Query 2: What was the lowest tip for October?
SELECT TOP 1 MIN([ORDER_DATE]) as Order_Date,SUM([ TIP ]) as TIP 
FROM [Doordash Dasher].[dbo].[Dasher_Delivery_Info]
WHERE (MONTH([ORDER_DATE])) = '10'
GROUP BY [ORDER_DATE]
ORDER BY TIP ASC;
