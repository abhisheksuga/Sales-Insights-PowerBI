# eCommerce Sales Dashboard

This repository contains a Power BI project focused on analyzing eCommerce sales data. The interactive dashboard provides key insights into sales performance, customer behavior, and product profitability, helping businesses make informed decisions. 

## Key Features

- **Profit Analysis:** Track and analyze profit by month and product subcategory.
- **Customer Insights:** Understand customer behavior through visualizations of payment modes, purchase quantities, and top customers.
- **Sales Trends:** Monitor sales performance across different regions and time periods using state/province filters and quarterly comparisons.
- **Visualizations:** Includes various charts such as bar charts, donut charts, and line charts to present data in a clear and actionable format.

## Repository Contents

- **Data/**: Raw CSV files containing eCommerce orders and details.
- **PBIX/**: The Power BI dashboard file .
- **Exports/**: PDF and PowerPoint exports of the dashboard for quick viewing.
- **Scripts/**: Script used to clean and transform the data .

## Scripts

### data_cleaning.sql

This script contains the SQL commands used to clean and transform the eCommerce sales data. Key operations include:
- Removing records with missing values.
- Changing the data type of the `order_date` field to `DATE`.
- Adding a new column `AOV` (Average Order Value) to the `orders` table, calculated as the total sales divided by the total quantity.
- Creating indexes on key columns to improve query performance.

You can run this script in your SQL environment to prepare the data for analysis.


Explore the dashboard, manipulate the data, and gain insights into eCommerce sales trends and customer behavior.
