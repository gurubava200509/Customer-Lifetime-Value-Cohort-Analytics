# Customer Lifetime Value (CLV) & Cohort Analytics

## Project Overview

This project analyzes customer purchasing behavior, lifetime value, retention patterns, and customer segments using Customer Lifetime Value (CLV), Cohort Analysis, and RFM Segmentation.

The objective is to identify high-value customers, understand long-term customer retention, measure revenue contribution, and generate actionable business insights for customer growth and profitability.

The project was developed using Python, SQL, and Power BI to demonstrate an end-to-end analytics workflow from data preparation to business intelligence reporting.

---

## Business Problem

Customer acquisition is expensive, and long-term business growth depends on retaining valuable customers.

This project addresses the following business questions:

- Which customers generate the highest lifetime revenue?
- What percentage of customers become repeat buyers?
- How does customer retention change over time?
- Which customer segments contribute the most revenue?
- How do acquisition cohorts perform in the long run?

---

## Dataset Overview

**Source:** Olist Brazilian E-Commerce Dataset

| Dataset | Records |
|----------|---------:|
| Customers | 99,441 |
| Orders | 99,441 |
| Payments | 103,886 |

**Analysis Period:** September 2016 – October 2018

---

## Tools & Technologies

- Python (Pandas, NumPy)
- SQL
- Power BI
- GitHub

---

## Key Skills Applied

- Customer Lifetime Value (CLV) Analysis
- Cohort Analysis
- RFM Segmentation
- Customer Retention Analytics
- Revenue Analytics
- SQL Querying
- Data Cleaning & Transformation
- KPI Development
- Dashboard Design & Storytelling
- Business Insight Generation

---

## Data Preparation & EDA

The analysis began by integrating customer, order, and payment datasets into a unified analytical model.

Key preparation steps included:

- Merged customer, order, and payment datasets using customer_id and order_id
- Validated record consistency across all tables
- Removed invalid revenue transactions
- Converted timestamp fields into datetime format
- Aggregated revenue at customer level
- Calculated customer lifetime value metrics
- Created monthly customer cohorts based on first purchase date
- Generated RFM customer segments for behavioral analysis

The final analytical dataset was used for SQL analysis, cohort retention modeling, customer segmentation, and dashboard reporting.

---

## SQL Analysis (Business Queries)

SQL was used to validate business metrics, analyze customer purchasing behavior, measure revenue performance, and identify valuable customer segments.

### Total Revenue

```sql
SELECT ROUND(SUM(payment_value),2) AS total_revenue
FROM orders_final;
```

### Top Customers by Revenue

```sql
SELECT
    customer_unique_id,
    SUM(payment_value) AS total_revenue
FROM orders_final
GROUP BY customer_unique_id
ORDER BY total_revenue DESC;
```

### Monthly Revenue Trend

```sql
SELECT
    DATE_FORMAT(order_purchase_timestamp,'%Y-%m') AS order_month,
    SUM(payment_value) AS revenue
FROM orders_final
GROUP BY order_month
ORDER BY order_month;
```

Additional SQL analysis included customer lifetime value calculations, customer segmentation analysis, repeat purchase behavior analysis, and revenue contribution analysis.

---

## Dashboard Preview

### Customer Segmentation & Revenue Performance Overview

This dashboard provides an executive-level view of customer distribution, revenue contribution, segment performance, and monthly revenue trends.

Key KPIs reveal ₹15.42M total revenue generated from 93,357 customers, while At-Risk customers account for 38.8% of the customer base and Champions represent 1.3% of customers.

![Dashboard Overview](clv_dashboard_overview.png)

---

### Cohort Retention & Customer Insights

This dashboard focuses on customer retention behavior, inactivity patterns, purchase frequency, and customer value across segments.

The analysis highlights an average customer value of ₹165.20 and an average inactivity period of 238 days, helping identify opportunities for retention-focused business strategies.

![Cohort Analysis](cohort_retention_analysis.png)

---

## Key Business Insights

- Total revenue reached ₹15.42M across 93,357 customers.
- Most customers made only a single purchase, indicating low repeat purchase behavior.
- Customer retention declined significantly after the first purchase period across most cohorts.
- At-Risk customers represented 38.8% of the customer base, highlighting a major retention opportunity.
- Champion customers accounted for only 1.3% of customers but generated the highest customer value.
- Revenue was concentrated among a relatively small group of high-value customers.
- Stronger customer cohorts delivered greater long-term revenue contribution than weaker cohorts.
- Customer inactivity averaged 238 days, suggesting substantial potential for re-engagement campaigns.

---

## Business Recommendations

- Improve first-to-second purchase conversion through targeted retention campaigns.
- Develop loyalty programs for high-value customers.
- Implement re-engagement strategies for At-Risk customer segments.
- Monitor cohort retention as a core business KPI.
- Prioritize marketing investments toward customers with higher lifetime value potential.

---

## Project Files

- [clv_analysis.ipynb](clv_analysis.ipynb) — Data cleaning, CLV calculation, cohort analysis, and RFM segmentation.
- [customer_analysis.sql](customer_analysis.sql) — SQL business queries for customer value, retention, and revenue analysis.
- [orders_final.csv](orders_final.csv) — Final analytical dataset used for reporting.
- [rfm_customer_segments.csv](rfm_customer_segments.csv) — Customer segmentation output dataset.
- [customer_lifetime_value_dashboard.pbix](customer_lifetime_value_dashboard.pbix) — Interactive Power BI dashboard.
- [clv_dashboard_overview.png](clv_dashboard_overview.png) — Dashboard preview image.
- [cohort_retention_analysis.png](cohort_retention_analysis.png) — Cohort retention dashboard preview.

---

## Repository Structure

```text
Customer-Lifetime-Value-CLV-Cohort-Analytics/
│
├── README.md
├── clv_analysis.ipynb
├── clv_dashboard_overview.png
├── cohort_retention_analysis.png
├── customer_lifetime_value_dashboard.pbix
├── customer_analysis.sql
├── orders_final.csv
└── rfm_customer_segments.csv
```

---

## Project Link

GitHub Repository:

https://github.com/gurubava200509/Customer-Lifetime-Value-Cohort-Analytics

---

## Conclusion

This project demonstrates an end-to-end customer analytics workflow using Python, SQL, and Power BI. Through customer lifetime value modeling, RFM segmentation, cohort retention analysis, and interactive dashboard development, the project evaluates customer behavior, retention performance, and long-term revenue contribution.

The insights generated can support customer retention strategies, customer segmentation initiatives, and data-driven decisions aimed at improving customer lifetime value and business profitability.
