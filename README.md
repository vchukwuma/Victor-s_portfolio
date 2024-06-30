#  Project 1: Tableau User Story | Sales Performance Dashboard Analysis

## Overview

The purpose of the sales dashboard is to present to stakeholders and sales managers an overview of sales metrics and trends to analyze year-over-year sales performance and understand sales trends.

## Key Requirements:

###  KPI Overview

- [x] Display a summary of total sales, profits, and quantity for the current year and the previous year.

### Sales Trends

- [x] Present the data for each KPI monthly for both the current year and the previous year.
- [x] Identify months with the highest and lowest sales and make them easy to recognize.
- [x] Product Subcategory Comparison

- [x] Compare sales performance by different product subcategories for the current year and the previous year.
- [x] Include a comparison of sales with profit.

### Weekly Trends for Sales & Profit

- [x] Present weekly sales and profit data for the current year.
- [x] Display the average weekly values.
- [x] Highlight weeks that are above and below the average to draw attention to sales & profit performance.

More about the project can be found on my [GitHub Repository](https://github.com/vchukwuma/Project-1-Tableau-User-Story-Sales-Performance-Dashboard-Analysis)


### Overview Of The Dashboard Design

![image](https://github.com/vchukwuma/Victor-s_portfolio/blob/main/Sales%20Dashboard%20.png?raw=true)


# Project 2: SQL | Walmart Sales Data Analysis

This project explores Walmart's sales data with SQL to understand top-performing branches and products, sales trends across different products, and customer behavior. The aim is to study how sales strategies can be improved and optimized. The dataset was obtained from the Kaggle Walmart Sales Forecasting Competition. [source](https://www.kaggle.com/c/walmart-recruiting-store-sales-forecasting/overview)

### Project Overview

This analysis covers the following aspects of Walmart's sales data:

1. **Sum of Each Product's Sales**
2. **Sales Trends by Time of Day and Month**
3. **Key Performance Indicators (KPIs)**
4. **Sales Analysis by Gender**
5. **Total Sales Sum**

To enhance the analysis, several columns were added to the dataset:

More about the project and SQL code can be found on my [GitHub Repository](https://github.com/vchukwuma/salesWalmartData/tree/main)

### Add time of day

```sql
--- time_of_day column

ALTER TABLE sales ADD time_of_day VARCHAR(20);

UPDATE sales
SET time_of_day = 
    CASE 
        WHEN time BETWEEN '00:00:00' AND '11:59:59' THEN 'Morning'
        WHEN time BETWEEN '12:00:00' AND '15:59:59' THEN 'Afternoon'
        ELSE 'Evening'
    END;
```

### Add day name

```sql

--- day_name column

ALTER TABLE sales ADD day_name VARCHAR(10);

UPDATE sales
SET day_name = DATENAME(WEEKDAY, date);

```

### Add month name

```sql

--- month_name column

ALTER TABLE sales ADD month_name VARCHAR(10);

UPDATE sales
SET month_name = DATENAME(MONTH, date);

```

Tables:

|Column|Description|Data Type|
|---|---|---|
|invoice_id  |Invoice of the sales made  |NVARCHAR(50)   |
|branch |Branch at which sales were made |NVARCHAR(50)   |
|city |The location of the branch  |NVARCHAR(50)   |
|customer_type |The type of the customer  |NVARCHAR(50)   |
|gender  |Gender of the customer making purchase  |NVARCHAR(50)   |
|product_line |Product line of the product sold  |NVARCHAR(50)   |
|unit_price |The price of each product |FLOAT   |
|quantity |The amount of the product sold  |TINYINT  |
|VAT |The amount of tax on the purchase |FLOAT  |
|total |The total cost of the purchase |FLOAT   |
|date  |	The date on which the purchase was made |DATE   |
|time |The time at which the purchase was made |TIME   |
|payment_method  |The total amount paid  |NVARCHAR(50)  |
|cogs  |Cost Of Goods sold  |FLOAT    |
|gross_margin_percentage  |Gross margin percentage |FLOAT    |
|gross_income |Gross Income  |FLOAT    |
|rating  |Rating |FLOAT    |
|time_of_day |Time of day |NVARCHAR(50)    |
|day_name |Day name|NVARCHAR(50)   |
|month_name |Month name|NVARCHAR(50)   |



```



