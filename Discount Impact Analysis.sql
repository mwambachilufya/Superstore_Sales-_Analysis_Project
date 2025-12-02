-- QUERY 3: Discount Impact Analysis
SELECT 
    CASE 
        WHEN discount = 0 THEN 'No Discount'
        WHEN discount <= 0.15 THEN 'Low (1-15%)'
        WHEN discount <= 0.30 THEN 'Medium (16-30%)'
        ELSE 'High (31%+)'
    END as discount_range,
    COUNT(*) as order_count,
    ROUND(CAST(AVG(sales) AS numeric), 2) as avg_order_value,
    ROUND(CAST(SUM(profit) AS numeric), 2) as total_profit,
    ROUND(CAST((SUM(profit) / SUM(sales)) * 100 AS numeric), 2) as margin_pct,
    COUNT(CASE WHEN profit < 0 THEN 1 END) as loss_orders,
    ROUND(CAST((COUNT(CASE WHEN profit < 0 THEN 1 END)::FLOAT / COUNT(*)) * 100 AS numeric), 2) as loss_rate_pct
FROM superstore_data
GROUP BY 
    CASE 
        WHEN discount = 0 THEN 'No Discount'
        WHEN discount <= 0.15 THEN 'Low (1-15%)'
        WHEN discount <= 0.30 THEN 'Medium (16-30%)'
        ELSE 'High (31%+)'
    END
ORDER BY loss_rate_pct DESC;