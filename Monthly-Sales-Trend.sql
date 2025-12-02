-- QUERY 7: Monthly Sales Trend (SIMPLIFIED)
SELECT 
    TO_CHAR(order_date, 'YYYY-MM') as year_month,
    COUNT(*) as orders,
    ROUND(CAST(SUM(sales) AS numeric), 2) as monthly_sales,
    ROUND(CAST(SUM(profit) AS numeric), 2) as monthly_profit,
    ROUND(CAST((SUM(profit) / SUM(sales)) * 100 AS numeric), 2) as margin_pct
FROM superstore_data
GROUP BY TO_CHAR(order_date, 'YYYY-MM')
ORDER BY year_month;