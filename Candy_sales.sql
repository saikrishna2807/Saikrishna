use candy;
# Average sales per day 
Select Day, avg(Quantity) From purchasedata group by  Day;
# 2.How does brand affect the incidence of candy sales?
SELECT Brand, SUM(Quantity) as Total_Sales FROM purchasedata GROUP BY Brand;
# What is the relationship between purchase incidence and brand?
SELECT Brand, SUM(CASE WHEN Incidence = 1 THEN 1 ELSE 0 END) as Purchase_Count
FROM purchasedata
GROUP BY Brand Order by Brand ;
# With this information, you can see which brand has the highest purchase count, 
# which one is the least preferred, and if there's any relationship between the Incidence and the Brand.

SELECT Age, AVG(Quantity) as Average_Quantity
FROM purchasedata
GROUP BY Age  order by Age  ;
# How does the level of education of a customer affect their purchase behavior?
SELECT Education, AVG(Quantity) as Average_Quantity
FROM purchasedata
GROUP BY Education;
# 4.	Are there any differences in candy sales based on the occupation of the customer?
SELECT Occupation, AVG(Quantity) as Average_Quantity
FROM purchasedata
GROUP BY Occupation;
#7.	What is the effect of promotions on candy sales in terms of both quantity and brand?
SELECT Brand, Promotion_1, AVG(Quantity) as Average_Quantity
FROM purchasedata
GROUP BY Brand, Promotion_1;
SELECT Brand, Promotion_2, AVG(Quantity) as Average_Quantity
FROM purchasedata
GROUP BY Brand, Promotion_2;
SELECT Brand, Promotion_3, AVG(Quantity) as Average_Quantity
FROM purchasedata
GROUP BY Brand, Promotion_3;
SELECT Brand, Promotion_4, AVG(Quantity) as Average_Quantity
FROM purchasedata
GROUP BY Brand, Promotion_4;
SELECT Brand, Promotion_5, AVG(Quantity) as Average_Quantity
FROM purchasedata
GROUP BY Brand, Promotion_5;7io'

# How does the last incidence brand and quantity affect the current candy sale?
SELECT Last_Inc_Brand, Last_Inc_Quantity, AVG(Quantity) as Average_Quantity
FROM purchasedata
GROUP BY Last_Inc_Brand, Last_Inc_Quantity order by last_Inc_Brand;
#.	Are there any differences in candy sales based on the education status of customers?
SELECT Education, AVG(Quantity) as Average_Quantity
FROM purchasedata
GROUP BY Education order by Education ;



