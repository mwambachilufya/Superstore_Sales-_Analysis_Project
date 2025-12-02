SELECT
    COUNT(DISTINCT order_id) as total_orders,
    COUNT(DISTINCT customer_id) as unique_customers,
    ROUND(CAST(SUM(sales) AS numeric), 2) as total_revenue,
    ROUND(CAST(SUM(profit) AS numeric), 2) as total_profit,
    ROUND(CAST((SUM(profit) / SUM(sales)) * 100 AS numeric), 2) as overall_margin_pct,
    ROUND(CAST(AVG(sales) AS numeric), 2) as avg_order_value,
    ROUND(CAST(SUM(sales) / COUNT(DISTINCT customer_id) AS numeric), 2) as revenue_per_customer,
    COUNT(CASE WHEN profit < 0 THEN 1 END) as loss_making_orders,
    ROUND(CAST((COUNT(CASE WHEN profit < 0 THEN 1 END)::FLOAT / COUNT(*)) * 100 AS numeric), 2) as loss_rate_pct
FROM superstore_data;