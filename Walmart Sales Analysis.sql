
-- Walmart Sales Data Analysis

-- Create new columns
-- Time of Day
SELECT
Time,
CASE
WHEN time BETWEEN '00:00:00' AND '11:59:00'  THEN 'Morning'
when time BETWEEN '12:00:00' AND '16:59:00' THEN 'Afternoon'
ELSE 'Evening'
END as time_of_day
FROM
Project.dbo.Walmart

ALTER TABLE Project.dbo.Walmart
ADD time_of_day VARCHAR(20)

UPDATE Walmart
SET time_of_day = (
CASE
WHEN time BETWEEN '00:00:00' AND '11:59:00'  THEN 'Morning'
when time BETWEEN '12:00:00' AND '16:59:00' THEN 'Afternoon'
ELSE 'Evening'
END 
)

SELECT * FROM Walmart

-- Day of Week
SELECT 
DATENAME(dw, Date)
FROM
Walmart

ALTER TABLE Walmart
ADD day_of_week varchar(20)

UPDATE Walmart
SET day_of_week = DATENAME(dw, Date)

-- Finding the month

SELECT DATENAME(month, Date)
FROM
Walmart

ALTER TABLE Walmart
ADD month varchar(20)

UPDATE Walmart
SET month = DATENAME(month, Date)


-- Location based analysis

-- How many unique cities does the data have?

SELECT 
City, 
COUNT(*) AS NumberofOrders
FROM Walmart
GROUP BY City
ORDER BY NumberofOrders DESC

-- In which city is each branch and how many orders are placed from each branch?

SELECT
City, 
Branch,
COUNT(*) orders
FROM
Walmart
GROUP BY City, Branch
ORDER BY Orders desc

-- Product based analysis

-- How many products were sold in each department?
SELECT 
Product_line,
COUNT(*) AS Orders,
SUM(Quantity) as QuantitySold
FROM Walmart
GROUP BY Product_line
ORDER BY Orders DESC, QuantitySold desc

-- What is the most common payment method?
SELECT 
Payment,
COUNT(*) AS Count
FROM Walmart
GROUP BY Payment
ORDER BY Count desc

-- What is the total revenue by month?
SELECT 
month,
ROUND(SUM(Total),2) as Revenue
FROM Walmart
GROUP BY month
ORDER BY Revenue desc

-- What month had the highest COGS (revenue before tax) ?
SELECT 
month,
ROUND(SUM(cogs),2) as RevenueBeforeTax
FROM Walmart
GROUP BY month
ORDER BY RevenueBeforeTax desc

-- What product line had the largest revenue?
SELECT 
Product_line,
ROUND(SUM(Total),2) as Revenue
FROM Walmart
GROUP BY Product_line
ORDER BY Revenue desc

-- What is the city with the largest revenue?
SELECT 
City,
ROUND(SUM(Total),2) as Revenue
FROM Walmart
GROUP BY City
ORDER BY Revenue desc

-- Which branch sold more products than average product sold?
SELECT
Branch as 'Branch with more sales than the average sales'
FROM Walmart 
GROUP BY Branch
HAVING SUM(Quantity) > (SELECT SUM(Quantity) / COUNT(DISTINCT Branch) FROM Walmart)

-- What is the most common product line by gender?
SELECT 
Gender,
Product_line,
COUNT(*) AS Orders
FROM Walmart
GROUP BY Gender, Product_line
ORDER BY Gender, Orders desc

-- What is the average rating of each product line?
SELECT 
Product_line,
ROUND(AVG(Rating), 1) AS AverageRating
FROM Walmart
GROUP BY Product_line 
ORDER BY AverageRating desc


-- Sales related analysis

-- Number of sales made in each time of the day per weekday
SELECT 
day_of_week ,
time_of_day ,
COUNT(*) as Orders
FROM Walmart
GROUP BY day_of_week, time_of_day
ORDER BY Orders desc

-- Which of the customer types brings the most revenue?
SELECT 
Customer_type as 'Type of Customer',
ROUND(SUM(Total),2) as Revenue
FROM Walmart
GROUP BY Customer_type
ORDER BY 2 desc

-- Which city has the largest tax percent/ VAT (Value Added Tax)?
SELECT
City,
ROUND(AVG(((Total - cogs) / Total) * 100),2) as VAT
FROM Walmart
GROUP BY City
ORDER BY VAT desc

-- Which customer type pays the most in VAT?
SELECT
Customer_type as 'Type of Customer',
ROUND(AVG(((Total - cogs) / Total) * 100),2) as VAT
FROM Walmart
GROUP BY Customer_type
ORDER BY VAT desc

-- Customer related analysis

-- What is the most common customer type?
SELECT 
Customer_type as Type,
COUNT(*) AS Orders
FROM Walmart
GROUP BY Customer_type
Order by Orders desc

-- What is the gender distribution per branch?
SELECT 
Gender,
Branch,
COUNT(*) AS Orders
FROM Walmart
GROUP BY Gender, Branch
Order by Orders desc

-- Which time of the day do customers give most ratings?
SELECT
time_of_day,
ROUND(AVG(Rating),2) as AverageRating
FROM Walmart
GROUP BY time_of_day
ORDER BY AverageRating desc

-- Which day of the week has the best average ratings per branch?
SELECT
branch,
day_of_week,
ROUND(AVG(Rating),2) as AverageRating
FROM Walmart
GROUP BY branch, day_of_week
ORDER BY Branch, AverageRating desc


