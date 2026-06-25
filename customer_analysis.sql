-- BASIC KPIs

SELECT
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(payment_value), 2) AS total_revenue,
    ROUND(AVG(payment_value), 2) AS avg_order_value
FROM orders;

-- MONTHLY REVENUE TREND

SELECT
    DATE_FORMAT(order_purchase_timestamp, '%Y-%m') AS month,
    COUNT(DISTINCT order_id) AS orders,
    ROUND(SUM(payment_value), 2) AS revenue
FROM orders
GROUP BY month
ORDER BY month;

-- TOP CUSTOMERS

SELECT
    customer_unique_id,
    COUNT(order_id) AS total_orders,
    ROUND(SUM(payment_value), 2) AS total_spent
FROM orders
GROUP BY customer_unique_id
ORDER BY total_spent DESC
LIMIT 10;

-- REVENUE BY STATE

SELECT
    customer_state,
    COUNT(order_id) AS total_orders,
    ROUND(SUM(payment_value), 2) AS revenue
FROM orders
GROUP BY customer_state
ORDER BY revenue DESC;

-- TOP CITIES

SELECT
    customer_city,
    COUNT(order_id) AS total_orders,
    ROUND(SUM(payment_value), 2) AS revenue
FROM orders
GROUP BY customer_city
ORDER BY revenue DESC
LIMIT 10;

-- REPEAT CUSTOMERS

SELECT
    customer_unique_id,
    COUNT(order_id) AS frequency
FROM orders
GROUP BY customer_unique_id
HAVING COUNT(order_id) > 1
ORDER BY frequency DESC;

-- ORDER STATUS DISTRIBUTION

SELECT
    order_status,
    COUNT(*) AS total_orders
FROM orders
GROUP BY order_status
ORDER BY total_orders DESC;

-- REVENUE BY STATUS

SELECT
    order_status,
    COUNT(order_id) AS orders,
    ROUND(SUM(payment_value), 2) AS revenue
FROM orders
GROUP BY order_status
ORDER BY revenue DESC;

-- DELIVERY TIME ANALYSIS

SELECT
    AVG(DATEDIFF(order_delivered_customer_date, order_purchase_timestamp)) AS avg_delivery_days
FROM orders
WHERE order_delivered_customer_date IS NOT NULL;

-- DELAYED ORDERS

SELECT
    COUNT(*) AS delayed_orders
FROM orders
WHERE order_delivered_customer_date > order_estimated_delivery_date;

-- CUSTOMER LIFETIME VALUE (CLV)

SELECT
    customer_unique_id,
    COUNT(order_id) AS frequency,
    ROUND(SUM(payment_value), 2) AS lifetime_value
FROM orders
GROUP BY customer_unique_id
ORDER BY lifetime_value DESC;

-- HIGH VALUE CUSTOMERS

SELECT
    customer_unique_id,
    SUM(payment_value) AS total_spent
FROM orders
GROUP BY customer_unique_id
ORDER BY total_spent DESC
LIMIT 20;

-- MONTHLY CUSTOMER GROWTH

SELECT
    DATE_FORMAT(order_purchase_timestamp, '%Y-%m') AS month,
    COUNT(DISTINCT customer_unique_id) AS customers
FROM orders
GROUP BY month
ORDER BY month;

-- AVERAGE ORDER VALUE BY STATUS

SELECT
    order_status,
    ROUND(AVG(payment_value), 2) AS avg_order_value
FROM orders
GROUP BY order_status;

-- RFM BASE DATA

SELECT
    customer_unique_id,
    COUNT(order_id) AS frequency,
    SUM(payment_value) AS monetary
FROM orders
GROUP BY customer_unique_id;
