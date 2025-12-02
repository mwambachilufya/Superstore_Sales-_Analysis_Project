-- QUERY 6: Top 20 Most Profitable Products
SELECT 
    product_name,
    category,
    COUNT(*) as times_sold,
    ROUND(CAST(SUM(sales) AS numeric), 2) as total_sales,
    ROUND(CAST(SUM(profit) AS numeric), 2) as total_profit,
    ROUND(CAST((SUM(profit) / SUM(sales)) * 100 AS numeric), 2) as margin_pct,
    ROUND(CAST(AVG(discount) AS numeric), 4) as avg_discount
FROM superstore_data
GROUP BY product_name, category
ORDER BY total_profit DESC
LIMIT 20;
