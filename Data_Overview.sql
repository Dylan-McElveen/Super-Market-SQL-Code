-- Data Overview
Select *
from [dbo].['supermarket_sales - Sheet1$']

-- 1. What Productline is most Profitable?
Select distinct [Product line], sum(Total) as TotalRevenue
from [dbo].['supermarket_sales - Sheet1$']
group by [Product line]

-- 2. What Time do most purchases occur?
Select distinct [Product line], max([Time]) as MostTimeOfPurchase
from [dbo].['supermarket_sales - Sheet1$']
group by [Product line]

-- 3. Male to Female ratio for each Product line
Select distinct [Product line], Count([Product line]) as Male_Total
from [dbo].['supermarket_sales - Sheet1$']
where Gender = 'Male'
group by [Product line], Gender

Select distinct [Product line], Count([Product line]) as Female_Total
from [dbo].['supermarket_sales - Sheet1$']
where Gender = 'Female'
group by [Product line]
-- 4. What City has the most Purchases?
Select distinct City, Count(City) as Total_Purchases  
from [dbo].['supermarket_sales - Sheet1$']
group by City
-- 4a Distribution of Productlines to Total Purchases for each city
Select distinct City, [Product line], Count(City) as Total_Purchases  
from [dbo].['supermarket_sales - Sheet1$']
group by City, [Product line]
order by City

-- 5. Average Rating for each Branch
Select distinct Branch, avg(Rating) As Overall_Rating
from [dbo].['supermarket_sales - Sheet1$']
group by Branch
