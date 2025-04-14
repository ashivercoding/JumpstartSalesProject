-- Data cleaning
-- ---------------------------------------------------------------------------------------------

-- Rename table headers
ALTER TABLE saas_sales
RENAME COLUMN `ï»¿Row ID` TO row_id,
RENAME COLUMN `Order ID` TO order_ID,
RENAME COLUMN `Order Date` TO order_date;
RENAME COLUMN `Date Key` TO date_key,
RENAME COLUMN `Contact Name` TO contact_name,
RENAME COLUMN `Country` TO country,
RENAME COLUMN `City` TO city,
RENAME COLUMN `Region` TO region,
RENAME COLUMN `Subregion` TO subregion,
RENAME COLUMN `Customer` TO customer,
RENAME COLUMN `Customer ID` TO customer_id,
RENAME COLUMN `Industry` TO industry,
RENAME COLUMN `Segment` TO segment,
RENAME COLUMN `Product` TO product,
RENAME COLUMN `License` TO license,
RENAME COLUMN `Sales` TO sales,
RENAME COLUMN `Quantity` TO quantity,
RENAME COLUMN `Discount` TO discount,
RENAME COLUMN `Profit` TO profit;

-- Convert order_date column from string to date format
UPDATE saas_sales
SET order_date = str_to_date(order_date, '%m/%d/%Y');

-- Exploratory Data Analysis
-- ---------------------------------------------------------------------------------------------

-- Total revenue per year
SELECT YEAR(order_date) AS order_year, 
	ROUND(SUM(sales),2) AS revenue_per_year
FROM saas_sales
GROUP BY order_year
ORDER BY order_year ASC;

-- Use CTE to calculate YoY Growth for revenue, orders placed, and average order value
WITH yearly_totals AS (
    SELECT
        YEAR(order_date) AS order_year,
        ROUND(SUM(sales),2) AS total_revenue,
        ROUND(COUNT(sales),2) AS total_orders,
        ROUND(AVG(sales),2) AS avg_revenue_per_order
    FROM
        saas_sales	
    GROUP BY
        order_year
),
yoy_growth AS (
    SELECT
        order_year,
        total_revenue,
        LAG(total_revenue) OVER (ORDER BY order_year) AS previous_year_revenue,
        total_orders,
        LAG(total_orders) OVER (ORDER BY order_year) AS previous_year_orders,
        avg_revenue_per_order,
        LAG(avg_revenue_per_order) OVER (ORDER BY order_year) AS previous_avg
    FROM
        yearly_totals
)
SELECT
    order_year,
    total_revenue,
    CASE
        WHEN previous_year_orders IS NULL THEN NULL
        ELSE ROUND((total_revenue - previous_year_revenue) / previous_year_revenue * 100,2)
    END AS yoy_growth_percentage,
    total_orders,
    CASE
        WHEN previous_year_revenue IS NULL THEN NULL
        ELSE ROUND((total_orders - previous_year_orders) / previous_year_orders * 100,2)
    END AS yoy_order_percentage,
    avg_revenue_per_order,
    CASE
        WHEN previous_avg IS NULL THEN NULL
        ELSE ROUND((avg_revenue_per_order - previous_avg) / previous_avg * 100,2)
    END AS yoy_order_value
FROM
    yoy_growth;

-- Total orders placed per year
SELECT YEAR(order_date) AS order_year, 
	COUNT(order_ID) AS orders_per_year
FROM saas_sales
GROUP BY order_year
ORDER BY order_year ASC;

-- Average order value per year
SELECT YEAR(order_date) AS order_year, 
	ROUND(AVG(sales),2)AS yearly_avg_per_order
FROM saas_sales
GROUP BY order_year
ORDER BY order_year ASC;

-- Sales per month
SELECT MONTHNAME(order_date) AS order_month, 
	ROUND(SUM(sales),2) AS sales_per_month
FROM saas_sales
GROUP BY order_month
ORDER BY sales_per_month DESC;

 -- Which products are purchased most frequently?
 SELECT product, 
	COUNT(product) AS number_products_sold
 FROM saas_sales
 GROUP BY product
 ORDER BY number_products_sold DESC;
 
 
 -- Which products are more profitable overall? 
 SELECT product, 
	SUM(profit) AS total_profit
FROM saas_sales
GROUP BY product
ORDER BY total_profit DESC;

-- What is the yearly profit margin of each product?
SELECT YEAR(order_date) AS order_year,
	product,
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit,
    ROUND(SUM(profit)/SUM(sales) * 100,2) AS profit_margin_percentage
FROM saas_sales
GROUP BY product, order_year
ORDER BY order_year, profit_margin_percentage DESC
;
	

-- Which customer industries drive the most sales?
SELECT industry,
	SUM(sales) AS total_sales
FROM saas_sales
GROUP BY industry 
ORDER BY total_sales DESC;

-- Which customer industries drive the most profit?
SELECT industry,
	SUM(profit) AS total_profit
FROM saas_sales
GROUP BY industry 
ORDER BY total_profit DESC;

-- What is the yearly profit margin of each industry?
SELECT YEAR(order_date) AS order_year,
	industry,
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit,
    ROUND(SUM(profit)/SUM(sales) * 100,2) AS profit_margin_percentage
FROM saas_sales
GROUP BY industry, order_year
ORDER BY order_year, profit_margin_percentage DESC
;

-- Percentage of sales by region
SELECT region, (SUM(sales) / (SELECT SUM(sales) FROM saas_sales)) * 100 AS na_sales_percentage
FROM saas_sales
GROUP BY region;



SELECT *
FROM saas_sales
;