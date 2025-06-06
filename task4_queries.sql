
1. Total Sales by Region
SELECT g.Region, SUM(s.Amount) AS Total_Sales
FROM sales_data s
JOIN geo g ON s.Geo = g.GeoID
GROUP BY g.Region;

 2. Top 5 Products by Revenue
SELECT p.Product, SUM(s.Amount) AS Total_Revenue
FROM sales_data s
JOIN products p ON s.Product = p.`Product ID`
GROUP BY p.Product
ORDER BY Total_Revenue DESC
LIMIT 5;

3. Total Boxes Sold by Each Salesperson
SELECT pt.`Sales Person`, SUM(s.Boxes) AS Total_Boxes
FROM sales_data s
JOIN people_tel pt ON s.`Sales Person` = pt.`SP ID`
GROUP BY pt.`Sales Person`
ORDER BY Total_Boxes DESC;

4. Monthly Sales Summary
SELECT DATE_FORMAT(Date, '%Y-%m') AS Month, SUM(Amount) AS Monthly_Sales
FROM sales_data
GROUP BY Month
ORDER BY Month;

5. Most Sold Product Categories
SELECT pr.Category, SUM(s.Boxes) AS Total_Boxes
FROM sales_data s
JOIN products pr ON s.Product = pr.`Product ID`
GROUP BY pr.Category
ORDER BY Total_Boxes DESC;

6. Create View for Sales by Region
CREATE VIEW regional_sales AS
SELECT g.Region, SUM(s.Amount) AS Total_Sales
FROM sales_data s
JOIN geo g ON s.Geo = g.GeoID
GROUP BY g.Region;
