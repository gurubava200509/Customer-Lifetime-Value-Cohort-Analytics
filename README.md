📊 Customer Lifetime Value (CLV) & Cohort Analytics
🚀 Project Overview

This project analyzes customer purchasing behavior to understand lifetime value, retention patterns, and revenue concentration in an e-commerce platform.

The objective is not just analysis, but to identify which customers drive long-term revenue and how retention behavior impacts business growth.

Using Python, SQL, and Power BI, raw transactional data is transformed into actionable business insights for customer strategy and retention planning.

🎯 Business Problem

Most e-commerce platforms lose revenue potential due to low repeat purchases.

This analysis focuses on:

Identifying high-value customers contributing to long-term revenue
Understanding customer retention behavior over time
Evaluating cohort-wise engagement performance
Measuring dependency on repeat vs one-time buyers
📌 Key Business Impact
Revealed high revenue concentration among a small customer segment
Identified low repeat purchase behavior across majority customers
Highlighted sharp retention drop after first purchase cycle
Enabled segmentation strategy for high-LTV customer targeting
📁 Dataset Overview

Source: Olist Brazilian E-Commerce Dataset

Entity	Volume
Customers	99,441
Orders	99,441
Payments	103,886

Analysis Period: 2016 – 2018 (based on transaction timestamps)

🛠 Tools & Technologies
Python (Pandas, NumPy) → Data processing & CLV modeling
SQL → Business querying & aggregation
Power BI → Dashboard & visualization
GitHub → Version control & project documentation
📂 Project Files
📘 EDA Notebook → Data cleaning, transformation, CLV & cohort analysis
🧮 SQL Analysis → Revenue, customer, and trend-based queries
📊 Final Dataset → Processed analytical dataset
📈 Power BI Dashboard → Business intelligence dashboard
🖼️ CLV Dashboard →
🖼️ Cohort Dashboard →
⚙️ Data Engineering & Preparation
Merged customer, order, and payment datasets using relational keys (customer_id, order_id)
Standardized datetime fields for time-based analysis
Handled missing and inconsistent transaction values
Aggregated revenue at customer-level granularity
Created cohort groups based on first purchase month
🧮 SQL Business Analysis
💰 Total Revenue Analysis
SELECT ROUND(SUM(payment_value),2) AS total_revenue
FROM orders_final;

Business Value: Measures overall platform revenue performance.

🧑‍💼 High-Value Customer Identification
SELECT 
    customer_unique_id,
    SUM(payment_value) AS total_revenue
FROM orders_final
GROUP BY customer_unique_id
ORDER BY total_revenue DESC;

Business Value: Identifies top revenue-contributing customers for retention strategy.

📈 Monthly Revenue Trend
SELECT 
    DATE_FORMAT(order_purchase_timestamp,'%Y-%m') AS order_month,
    SUM(payment_value) AS revenue
FROM orders_final
GROUP BY order_month
ORDER BY order_month;

Business Value: Tracks revenue growth pattern over time.

💰 Customer Lifetime Value (CLV)

CLV is calculated as:

Total revenue generated per customer across all purchases

Key Outcomes:
Identified high-LTV customer segment
Measured revenue dependency on repeat customers
Detected skewed revenue distribution across customer base
📊 Cohort Analysis

Customers are grouped based on first purchase month to analyze long-term behavior.

Key Outcomes:
Retention drops significantly after first purchase cycle
Majority cohorts show weak long-term engagement
Strong cohorts contribute disproportionately to revenue
📌 Key Business Insights
Revenue is heavily concentrated among a small percentage of customers
Most customers do not return after first purchase
Retention is the strongest driver of lifetime value
Cohort performance varies significantly by acquisition period
📈 Business Recommendations
Focus marketing on high-LTV customer segments
Improve first-to-second purchase conversion rate
Build targeted retention campaigns for weak cohorts
Track cohort retention as a core business KPI
📊 Dashboard Preview
CLV Performance Dashboard

Cohort Retention Dashboard

🧾 Final Outcome

This project demonstrates an end-to-end customer analytics workflow covering:

Data engineering
SQL-driven business analysis
Customer lifetime value modeling
Cohort-based retention analysis
Executive-level dashboard storytelling

The outcome is a business-ready customer strategy view, not just technical analysis
