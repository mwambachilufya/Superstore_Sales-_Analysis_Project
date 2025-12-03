# Superstore_Sales-_Analysis_Project
Data Analytics project that investigates the areas of  retail underperformance and make data driven recommendations to deal with this phenomenon 

## Project Overview

This project analyzes retail operations data from a superstore dataset obtained from kaggle. The goal is to identify profitability issues and provide recommendations. 

###  Summary of findings.
- **Total Revenue:** $2.3M
- **Total Profit:** $286K
- **Overall Margin:** 12.5%
- **Critical Issue:** 18.73% of orders are unprofitable
- **Root Cause:** Furniture category with 33.65% loss rate
- **Primary Driver:** Excessive discounting (30%+ discounts = 67% loss rate)
---

Through this analysis a business team could understand:

 **Which product categories are driving losses?**
 **What factors contribute to negative margins?**
 **How can we optimize pricing and discount strategies?**

### Scenario.
This was the scenario context for the whole project. Despite good revenue and margins, the business was having some significant losses on some individual orders. So the Management needed data-driven insights to:
- Identify the problem areas
- Understand root causes of the problems
- consider actions or recommedations to solve the problems.
---


## Analysis
The analysis involved the following approach:

### 1. Data cleaning.
This was done in python on the jupyter notebook platform.This involved checking if all the data types are correct. Checking for any null values. Finding the summary statistics. Then the cleaned document was exported as a csv to be used in postgreSQL.

### 2. PostgreSQL.
Here i carried out 8 queries in order to uncover insights about the data that can be used to solve the business problem. the results of these queries were then put in an excel file which was used for visualization in Tableau. 

### 3: Data Visualization (Tableau)

Created dashboards that showed:
- **KPI Cards:** Revenue, Profit, Margin, Loss Rate
- **Category Comparison:** Bar charts highlighting problem areas
- **Discount Analysis:** Correlation between discounts and losses
- **Regional Performance:** Geographic profit distribution
- **Trend Analysis:** Monthly sales and profit patterns
- **Product Tables:** Top performing products

---

## Findings

### 1. KPIs AND PROFIT/LOSS RATE.
![KPIs and profit/loss rate](Dashboard%201.png)


**Key Insight:** Furniture generated the least amount of profit only $18K and this is due to due to a bad 33.7% loss rate. Therefore we must look into what exactly about the furniture is causing the loss rate.

### 2. Discount impact analysis.
![KPIs and profit/loss rate](Dashboard%202.png)

**Key Insight:** High discounts correspond with high loss rate percentages and so we can see that the cause of the very high loss rates is due to the high discounts. So we must see which categories or products are discounted heavily.

### 3. Product-Specific Problems.
![KPIs and profit/loss rate](Dashboard%205.png)


**Key Insight:** Conference tables and bookcases are the primary culprits, typically sold at 28-48% discounts. it is mostly furniture that has a high loss rate and consequently is the more heavily discounted.

### 4. Trends.
![KPIs and profit/loss rate](Dashboard%203.png)


**Key Insight:** This shows the trends in monthly sales and profits and can give an accurate view of the performance of this retail store. The company is making great progress on sales as the months go by but there is little corresponding growth in profit. This can undoubtedly be traced in part due to the impact of the discounts.

### 5. Best performing products.
![KPIs and profit/loss rate](Dashboard%204.png)

**Key Insight:**  Here we see a table that shows the best performing products and most profitable and furniture unsurprisingly is not there because it does not yield much profit.

##  Recommendations

The best thing for this retail store would be to look into revising their discount policy across all their products. While they do make a lot of sales the corresponding profits for those sales do not match hence they end up not making as much profit when the sales may be astronomically good in a particular month. Second thing would be to look into investing more into technology and office suplies as they give the most profit so they can vary their kind of products in these categories and look to bring in more. Thn, finally doing away with the selling of furniture would be good as it does not bring any profit to the company but accumulates many losses. 



