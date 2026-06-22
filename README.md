Customer Lifetime Value (CLV) & Cohort Analytics
Project Overview

This project analyzes customer purchasing behavior, lifetime value, and retention patterns using Customer Lifetime Value (CLV) and Cohort Analysis.

The objective is to understand how customers contribute to revenue over time, identify high-value customers, and evaluate retention behavior across different acquisition cohorts.

The project uses Python, SQL, and Power BI for end-to-end data analysis and business insight generation.

Business Problem

In e-commerce, most customers do not return after their first purchase, which reduces long-term revenue stability.

This project focuses on solving:

Which customers generate the highest lifetime revenue?
How does customer retention behave over time?
How do different customer cohorts perform long-term?
What percentage of customers become repeat buyers?
Dataset Overview

Source: Olist Brazilian E-Commerce Dataset

Dataset	Records
Customers	99,441
Orders	99,441
Payments	103,886

Analysis Period: Based on available order timestamps (2016–2018)

Tools & Technologies
Python (Pandas, NumPy)
SQL
Power BI
GitHub
Project Links
GitHub Repository: https://github.com/your-username/Customer-Lifetime-Value-Cohort-Analytics
Power BI Dashboard File: Ecommerce_performance_analysis.pbix
CLV Dashboard Image: clv_dashboard_overview.png
Cohort Dashboard Image: cohort_retention_analysis.png
Notebook: eda_customer_lifetime_value.ipynb
Project Files
eda_customer_lifetime_value.ipynb → Data cleaning, CLV analysis, cohort analysis
customer_analysis.sql → SQL queries for revenue, customer, and trend analysis
orders_final.csv → Final processed dataset
Ecommerce_performance_analysis.pbix → Power BI dashboard
clv_dashboard_overview.png → CLV visualization
cohort_retention_analysis.png → Cohort visualization
README.md → Project documentation
Data Preparation
Merged customer, order, and payment datasets using customer_id and order_id
Ensured proper relational mapping between datasets
Converted date fields into datetime format
Handled missing and invalid values
Aggregated revenue at customer level
Created cohort groups based on first purchase month
SQL Analysis (Business Queries)

This SQL analysis extracts business insights using joins and aggregations across customers, orders, and payments. It is used to measure revenue performance, customer contribution, and business trends over time.

Total Revenue
SELECT ROUND(SUM(payment_value),2) AS total_revenue
FROM orders_final;
Top Customers by Revenue
SELECT 
    customer_unique_id,
    SUM(payment_value) AS total_revenue
FROM orders_final
GROUP BY customer_unique_id
ORDER BY total_revenue DESC;
Monthly Revenue Trend
SELECT 
    DATE_FORMAT(order_purchase_timestamp,'%Y-%m') AS order_month,
    SUM(payment_value) AS revenue
FROM orders_final
GROUP BY order_month
ORDER BY order_month;
Customer Lifetime Value (CLV)

CLV is calculated as:

Total sum of payment_value per customer

This helps to identify:

High-value customers
Repeat buyers
Revenue concentration patterns
Long-term customer contribution
Cohort Analysis

Customers are grouped based on their first purchase month to analyze:

Customer retention over time
Repeat purchase behavior
Drop-off trends after first purchase
Long-term engagement patterns
Dashboard Preview
CLV Dashboard

Cohort Analysis Dashboard

Key Business Insights
Majority of customers make only one purchase, indicating low retention
Revenue is highly concentrated among a small group of high-value customers
Customer retention drops significantly after first purchase
Strong cohorts show better long-term revenue contribution
Repeat customers generate higher lifetime value
Business Recommendations
Improve customer retention strategies
Increase second purchase conversion rate
Focus on high-value customer segments
Track cohort performance as a core business KPI
Implement loyalty and engagement programs
Conclusion
This project demonstrates an end-to-end analytics workflow including data preparation, SQL analysis, customer lifetime value modeling, cohort analysis, and dashboard storytelling to generate actionable business insights for improving customer retention and revenue growth.

This project demonstrates an end-to-end analytics workflow including data preparation, SQL analysis, customer lifetime value modeling, cohort analysis, and dashboard storytelling to generate actionable business insights for improving customer retention and revenue growth.
