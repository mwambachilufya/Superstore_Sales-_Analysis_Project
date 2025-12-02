-- QUERY: Customer Segment Comparison
SELECT 
    segment,
    COUNT(*) as orders,
    COUNT(DISTINCT customer_id) as customers,
    ROUND(CAST(SUM(sales) AS numeric), 2) as total_sales,
    ROUND(CAST(SUM(profit) AS numeric), 2) as total_profit,
    ROUND(CAST((SUM(profit) / SUM(sales)) * 100 AS numeric), 2) as margin_pct,
    ROUND(CAST(AVG(sales) AS numeric), 2) as avg_order_value,
    COUNT(CASE WHEN profit < 0 THEN 1 END) as loss_orders
FROM superstore_data
GROUP BY segment
ORDER BY total_profit DESC;