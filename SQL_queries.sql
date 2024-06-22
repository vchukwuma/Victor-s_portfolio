--- time_of_day column

ALTER TABLE sales ADD time_of_day VARCHAR(20);

UPDATE sales
SET time_of_day = 
    CASE 
        WHEN time BETWEEN '00:00:00' AND '11:59:59' THEN 'Morning'
        WHEN time BETWEEN '12:00:00' AND '15:59:59' THEN 'Afternoon'
        ELSE 'Evening'
    END;



--- day_name column
ALTER TABLE sales ADD day_name VARCHAR(10);

UPDATE sales
SET day_name = DATENAME(WEEKDAY, date);


--- month_name column
ALTER TABLE sales ADD month_name VARCHAR(10);

UPDATE sales
SET month_name = DATENAME(MONTH, date);


--------------------------- Questions Answered ----------------------------

--- How many unique cities does the data have?

SELECT DISTINCT city FROM sales;


--- In which city is each branch?

SELECT DISTINCT branch, city FROM sales;


--- How many unique product lines does the data have?

SELECT COUNT(DISTINCT product_line) AS unique_product_lines FROM sales;


--- What is the most selling product line (by quantity)?

SELECT product_line, SUM(quantity) AS qty
FROM sales
GROUP BY product_line
ORDER BY qty DESC;


--- What is the most selling product line based on the number of transactions?

SELECT product_line, COUNT(product_line) AS cnt
FROM sales
GROUP BY product_line
ORDER BY cnt DESC;


--- What is the total revenue by month?

SELECT month_name AS month, SUM(total) AS total_revenue
FROM sales
GROUP BY month_name
ORDER BY total_revenue DESC;


--- What product line had the largest revenue?

SELECT product_line, SUM(total) AS largest_revenue
FROM sales
GROUP BY product_line
ORDER BY largest_revenue DESC;


--- What month had the largest COGS?

SELECT month_name AS month, SUM(cogs) AS cogs
FROM sales
GROUP BY month_name
ORDER BY cogs DESC;


--- What is the city with the largest revenue?

SELECT branch, city, SUM(total) AS total_revenue
FROM sales
GROUP BY city, branch
ORDER BY total_revenue DESC;


--- What is the average rating of each product line?

SELECT product_line, ROUND(AVG(rating), 2) AS avg_rating
FROM sales
GROUP BY product_line
ORDER BY avg_rating DESC;


--- Number of sales made in each time of the day per weekday?

SELECT day_name, time_of_day, COUNT(*) AS total_sales
FROM sales
GROUP BY day_name, time_of_day
ORDER BY day_name, total_sales DESC;


--- Which customer types bring the most revenue?

SELECT customer_type, SUM(total) AS total_revenue
FROM sales
GROUP BY customer_type
ORDER BY total_revenue DESC;
