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

1. How many unique cities does the data have?

SELECT DISTINCT city FROM sales;





