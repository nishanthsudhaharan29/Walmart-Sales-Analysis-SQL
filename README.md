# Walmart Sales Data Analysis

## Project Description

This project aims to explore the Walmart Sales data to understand the top-performing branches and products, sales trends of different products, and customer behavior. The objective is to identify how sales strategies can be optimized and improved. The dataset was obtained from the Kaggle Walmart Sales Forecasting Competition.

### Background

In this recruiting competition, job-seekers are provided with historical sales data from 45 Walmart stores located in different regions. Each store consists of many departments, and participants are required to project the sales for each department in each store. Additionally, selected holiday markdown events are included in the dataset, affecting sales, making the task more challenging. The challenge is to predict which departments are impacted by the markdowns and to what extent.

---

## Purposes of the Project

The major aim of this project is to gain insight into Walmart's sales data and understand the different factors that affect sales across various branches. The goal is to identify key trends, understand the sales performance of different products, and determine strategies to improve sales and customer engagement.

---

## Data Overview

The dataset used in this project is obtained from the Kaggle Walmart Sales Forecasting Competition. It contains sales transactions from three different Walmart branches located in Mandalay, Yangon, and Naypyitaw. The dataset consists of 17 columns and 1000 rows.

### Column Descriptions

| Column                | Description                                                   | Data Type        |
|-----------------------|---------------------------------------------------------------|------------------|
| `invoice_id`          | Unique identifier for each sales transaction                  | VARCHAR(30)      |
| `branch`              | Branch where the sale was made                                 | VARCHAR(5)       |
| `city`                | Location of the branch                                        | VARCHAR(30)      |
| `customer_type`       | Type of the customer (e.g., Regular, New)                     | VARCHAR(30)      |
| `gender`              | Gender of the customer making the purchase                    | VARCHAR(10)      |
| `product_line`        | Product line category                                          | VARCHAR(100)     |
| `unit_price`          | Price of each product sold                                    | DECIMAL(10, 2)   |
| `quantity`            | Quantity of the product sold                                  | INT              |
| `VAT`                 | Value-added tax on the purchase                               | FLOAT(6, 4)      |
| `total`               | Total cost of the purchase (including tax)                    | DECIMAL(10, 2)   |
| `date`                | Date when the purchase was made                               | DATE             |
| `time`                | Time when the purchase was made                               | TIMESTAMP        |
| `payment_method`      | Payment method used for the transaction                       | DECIMAL(10, 2)   |
| `cogs`                | Cost of Goods Sold                                            | DECIMAL(10, 2)   |
| `gross_margin_percentage` | Gross margin percentage                                  | FLOAT(11, 9)     |
| `gross_income`        | Gross income (total revenue - cost of goods sold)             | DECIMAL(10, 2)   |
| `rating`              | Customer satisfaction rating                                  | FLOAT(2, 1)      |

---

## Analysis Objectives

1. **Product Analysis**
   - Conduct analysis on different product lines to understand the performance of each. Identify top-performing product lines and those that require improvement.

2. **Sales Analysis**
   - Analyze sales trends across various products to measure the effectiveness of sales strategies and identify modifications needed to increase sales.

3. **Customer Analysis**
   - Uncover customer segments, identify purchasing patterns, and assess the profitability of each customer segment to better understand the customer base.

---

## Usage

This analysis can be used to:

- **Improve Sales Strategy**: Understand the impact of product pricing, promotions, and holidays on sales.
- **Optimize Inventory**: Identify which products perform best and adjust inventory accordingly.
- **Customer Insights**: Identify key customer segments and tailor marketing strategies to maximize engagement and profitability.
- **Branch Performance**: Compare the performance of different branches and adjust operations for optimal results.

---

## Tools and Technologies

- **Data Analysis**: SQL
- **Dataset**: Walmart sales transaction dataset from Kaggle

---

## Future Enhancements

- **Predictive Modeling**: Develop machine learning models to forecast future sales based on historical data and events.
- **Market Basket Analysis**: Conduct association rule mining to identify frequently bought products together.
- **Customer Segmentation**: Use clustering techniques (e.g., K-means) to segment customers into groups with similar purchase behaviors.
- **Real-Time Analytics**: Implement real-time analysis using streaming data to improve operational decision-making.

---
