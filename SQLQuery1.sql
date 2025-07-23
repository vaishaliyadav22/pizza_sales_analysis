select * from [pizza_sales]

select SUM(total_price) as Total_Revenue from [pizza_sales.csv.xlsx]

select SUM(total_price)/COUNT(distinct order_id) as Avg_Order_Value from [pizza_sales.csv.xlsx]

select SUM(quantity) as Total_Pizza_Sold from [pizza_sales.csv.xlsx]

select COUNT(distinct order_id) as Total_orders from [pizza_sales.csv.xlsx]

select CAST(CAST(SUM(quantity) as DECIMAL(10,2))/CAST(COUNT(distinct order_id) as DECIMAL(10,2)) as DECIMAL(10,2)) as Avg_pizza_per_order from [pizza_sales.csv.xlsx]

SELECT DATENAME(DW, order_date) AS order_day, COUNT(DISTINCT order_id) AS total_orders 
FROM [pizza_sales.csv.xlsx]
GROUP BY DATENAME(DW,order_date)

select DATENAME(MONTH, order_date) as Month_Name, COUNT(DISTINCT order_id) as Total_Orders
from [pizza_sales.csv.xlsx]
GROUP BY DATENAME(MONTH, order_date)

SELECT pizza_category, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from [pizza_sales.csv.xlsx]) AS DECIMAL(10,2)) AS PCT
FROM [pizza_sales.csv.xlsx]
GROUP BY pizza_category

SELECT pizza_size, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from [pizza_sales.csv.xlsx]) AS DECIMAL(10,2)) AS PCT
FROM [pizza_sales.csv.xlsx]
GROUP BY pizza_size
ORDER BY pizza_size

SELECT pizza_category, SUM(quantity) as Total_Quantity_Sold
FROM [pizza_sales.csv.xlsx]
WHERE MONTH(order_date) = 2
GROUP BY pizza_category
ORDER BY Total_Quantity_Sold DESC

SELECT Top 5 pizza_name, SUM(total_price) AS Total_Revenue
FROM [pizza_sales.csv.xlsx]
GROUP BY pizza_name
ORDER BY Total_Revenue DESC

SELECT Top 5 pizza_name, SUM(total_price) AS Total_Revenue
FROM [pizza_sales.csv.xlsx]
GROUP BY pizza_name
ORDER BY Total_Revenue ASC

SELECT Top 5 pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM [pizza_sales.csv.xlsx]
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold DESC

SELECT TOP 5 pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM [pizza_sales.csv.xlsx]
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold ASC

SELECT Top 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM [pizza_sales.csv.xlsx]
GROUP BY pizza_name
ORDER BY Total_Orders DESC

SELECT Top 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM [pizza_sales.csv.xlsx]
GROUP BY pizza_name
ORDER BY Total_Orders ASC








