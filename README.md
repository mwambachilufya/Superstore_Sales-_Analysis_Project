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

### 2. 💸 Discount Strategy Failure
![KPIs and profit/loss rate](Dashboard%202.png)

**Key Insight:** High discounts correspond with high loss rate percentages and so we can see that the cause of the very high loss rates is due to the high discounts. So we must see which pcategories or products are discounted heavily.

### 3. 📦 Product-Specific Problems
![KPIs and profit/loss rate](Dashboard%205.png)

**Top 5 Loss-Making Products:**

1. **Chromcraft Conference Tables:** -$2,876 loss (80% loss rate, 28% avg discount)
2. **Bush Advantage Conference Table:** -$1,934 loss (86% loss rate, 35% avg discount)
3. **Balt Wood Round Tables:** -$1,201 loss (50% loss rate, 20% avg discount)
4. **BoxOffice Meeting Tables:** -$1,148 loss (100% loss rate, 48% avg discount)
5. **Riverside Coffee Tables:** -$1,147 loss (80% loss rate, 30% avg discount)

**Pattern:** Conference tables and bookcases are the primary culprits, typically sold at 28-48% discounts.

### 4. ✅ Healthy Performance Elsewhere

**Strong Categories:**
- **Technology:** 17.4% margin, $145K profit, 1,845 orders
- **Office Supplies:** 17.0% margin, $122K profit, 6,022 orders

**Customer Metrics:**
- 793 unique customers
- 6.3 orders per customer (strong retention)
- $2,897 revenue per customer (good lifetime value)

---

## 💡 Business Recommendations

### Immediate Actions (30-60 Days)

#### 1. **Cap Furniture Discounts at 15%** 
**Priority:** Critical  
**Effort:** Low  
**Impact:** High

- Current furniture discounts average 17.4% (28-48% for problem products)
- Discounts over 30% have 67% loss rate
- **Action:** Implement strict discount approval process for furniture
- **Estimated Savings:** $15-20K annually

#### 2. **Implement Minimum Order Values**
**Priority:** High  
**Effort:** Medium  
**Impact:** High

- Furniture has high fixed costs (shipping bulky items)
- Small orders with discounts guarantee losses
- **Action:** Set $500 minimum for free furniture shipping
- **Estimated Savings:** $10-15K annually

#### 3. **Discontinue or Reprice Loss-Making Products**
**Priority:** High  
**Effort:** Medium  
**Impact:** High

**Discontinue:**
- Conference tables with >30% loss rate
- BoxOffice Meeting Room Tables (100% loss rate)
- Specific bookcase models with consistent losses

**Reprice:**
- All remaining furniture +20-30%
- Negotiate better supplier costs
- Bundle furniture with high-margin accessories

**Estimated Savings:** $20-25K annually

#### 4. **Protect High-Performing Categories**
**Priority:** Medium  
**Effort:** Low  
**Impact:** Medium

- Technology and Office Supplies are performing well
- Maintain current pricing and discount strategies
- Consider slight price increases (1-2%) given healthy margins
- **Estimated Additional Profit:** $5-8K annually

### Strategic Actions (90+ Days)

#### 5. **Shipping Cost Analysis**
- Analyze actual shipping costs by product weight/dimensions
- Negotiate bulk shipping rates
- Consider regional distribution centers

#### 6. **Customer Segmentation Strategy**
- Identify which customers buy furniture at high discounts
- Develop tiered pricing for Corporate vs Consumer segments
- Create furniture "bundles" to increase average order value

#### 7. **Competitor Pricing Research**
- Benchmark furniture prices against competitors
- Understand if we're underpricing or if margins are too thin
- Consider exiting furniture if unable to compete profitably

---

## 🎯 Results & Impact

### Financial Impact Summary

| Initiative | Annual Savings | Implementation Time |
|-----------|---------------|---------------------|
| Cap furniture discounts at 15% | $15-20K | 30 days |
| Implement minimum order values | $10-15K | 45 days |
| Discontinue/reprice loss products | $20-25K | 60 days |
| Optimize other categories | $5-8K | 90 days |
| **TOTAL POTENTIAL IMPACT** | **$50-68K** | **90 days** |

### Success Metrics

**If implemented, we should see:**
- Furniture loss rate: 33.7% → **<15%** (within 6 months)
- Overall loss rate: 18.7% → **<12%** (within 6 months)
- Furniture margin: 2.5% → **>10%** (within 12 months)
- Total profit increase: **15-20%** (within 12 months)

---


