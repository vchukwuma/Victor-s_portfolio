# **victor-s_portfolio**


## Walmart Sales Data Analysis

This project explores Walmart's sales data to understand top-performing branches and products, sales trends across different products, and customer behavior. The aim is to study how sales strategies can be improved and optimized. The dataset was obtained from the Kaggle Walmart Sales Forecasting Competition.

## Project Overview

This analysis covers the following aspects of Walmart's sales data:

1. **Sum of Each Product's Sales**
2. **Sales Trends by Time of Day and Month**
3. **Key Performance Indicators (KPIs)**
4. **Sales Analysis by Gender**
5. **Total Sales Sum**

## Data Preparation

To enhance the analysis, several columns were added to the dataset:

**Adding `time_of_day` Column:**
```sql
ALTER TABLE sales ADD time_of_day VARCHAR(20);

UPDATE sales
SET time_of_day = 
    CASE 
        WHEN time BETWEEN '00:00:00' AND '11:59:59' THEN 'Morning'
        WHEN time BETWEEN '12:00:00' AND '15:59:59' THEN 'Afternoon'
        ELSE 'Evening'
    END;

Adding day_name Column:

ALTER TABLE sales ADD day_name VARCHAR(10);

UPDATE sales
SET day_name = DATENAME(WEEKDAY, date);

Adding month_name Column:

ALTER TABLE sales ADD month_name VARCHAR(10);

UPDATE sales
SET month_name = DATENAME(MONTH, date);

