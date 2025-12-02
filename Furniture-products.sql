-- Deep dive into Furniture problems
SELECT 
    sub_category,
    COUNT(*) as order_count,
    ROUND(CAST(SUM(sales) AS numeric), 2) as total_sales,
    ROUND(CAST(SUM(profit) AS numeric), 2) as total_profit,
    ROUND(CAST((SUM(profit) / SUM(sales)) * 100 AS numeric), 2) as margin_pct,
    COUNT(CASE WHEN profit < 0 THEN 1 END) as loss_orders,
    ROUND(CAST((COUNT(CASE WHEN profit < 0 THEN 1 END)::FLOAT / COUNT(*)) * 100 AS numeric), 2) as loss_rate_pct,
    ROUND(CAST(AVG(discount) AS numeric), 4) as avg_discount
FROM superstore_data
WHERE category = 'Furniture'
GROUP BY sub_category
ORDER BY loss_rate_pct DESC;


-- Which specific furniture products are losing money?
SELECT 
    product_name,
    COUNT(*) as order_count,
    ROUND(CAST(SUM(sales) AS numeric), 2) as total_sales,
    ROUND(CAST(SUM(profit) AS numeric), 2) as total_profit,
    ROUND(CAST(AVG(discount) AS numeric), 4) as avg_discount,
    COUNT(CASE WHEN profit < 0 THEN 1 END) as loss_orders,
    ROUND(CAST((COUNT(CASE WHEN profit < 0 THEN 1 END)::FLOAT / COUNT(*)) * 100 AS numeric), 2) as loss_rate_pct
FROM superstore_data
WHERE category = 'Furniture'
GROUP BY product_name
HAVING COUNT(CASE WHEN profit < 0 THEN 1 END) > 0  -- Only products with losses
ORDER BY total_profit ASC  -- Worst performers first
LIMIT 20;