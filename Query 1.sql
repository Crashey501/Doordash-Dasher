--Database Updates to Remove Nulls
UPDATE [dbo].[Dasher_Delivery_Info] SET [ BASE_PAY ]=0 WHERE [ BASE_PAY ] IS NULL
UPDATE [dbo].[Dasher_Delivery_Info] SET [ PEAK_PAY ]=0 WHERE [ PEAK_PAY ]IS NULL
UPDATE [dbo].[Dasher_Delivery_Info] SET [ TIP ]=0 WHERE [ TIP ]IS NULL

--Query 1: Which was the highest grossing store?
SELECT TOP 1 [STORE_NAME],SUM([ TOTAL_TAKE_HOME ]) as Total_Revenue
FROM [Doordash Dasher].[dbo].[Dasher_Delivery_Info]
GROUP BY [STORE_NAME]
ORDER BY Total_Revenue DESC
