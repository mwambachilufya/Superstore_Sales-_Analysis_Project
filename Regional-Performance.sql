-- QUERY 5: Regional Performance (SIMPLIFIED - no subquery)
SELECT 
    region,
    COUNT(*) as orders,
    ROUND(CAST(SUM(sales) AS numeric), 2) as total_sales,
    ROUND(CAST(SUM(profit) AS numeric), 2) as total_profit,
    ROUND(CAST((SUM(profit) / SUM(sales)) * 100 AS numeric), 2) as margin_pct,
    ROUND(CAST(AVG(sales) AS numeric), 2) as avg_order_value,
    COUNT(CASE WHEN profit < 0 THEN 1 END) as loss_orders,
    ROUND(CAST((COUNT(CASE WHEN profit < 0 THEN 1 END)::FLOAT / COUNT(*)) * 100 AS numeric), 2) as loss_rate_pct
FROM superstore_data
GROUP BY region
ORDER BY total_profit DESC;