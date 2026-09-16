-- Sales Data Analysis Project
-- Junior Data Analyst Portfolio Project

-- 1. View all sales data
SELECT *
FROM sales_data;

-- 2. Total sales
SELECT SUM(sales) AS total_sales
FROM sales_data;

-- 3. Sales by product
SELECT product,
       SUM(sales) AS total_sales
FROM sales_data
GROUP BY product
ORDER BY total_sales DESC;

-- 4. Sales by region
SELECT region,
       SUM(sales) AS total_sales
FROM sales_data
GROUP BY region
ORDER BY total_sales DESC;

-- 5. Top 5 products by sales
SELECT product,
       SUM(sales) AS total_sales
FROM sales_data
GROUP BY product
ORDER BY total_sales DESC
LIMIT 5;
