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

**Key Insight:** Orders with 30%+ discounts have a 67% probability of losing money. High discounts systematically destroy profitability.

### 3. 📦 Product-Specific Problems

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

## 🛠️ Technical Skills Demonstrated

### SQL (PostgreSQL)
- ✅ Aggregate functions (SUM, COUNT, AVG, ROUND)
- ✅ CASE statements for conditional logic and bucketing
- ✅ GROUP BY for categorical analysis
- ✅ Subqueries for percentage calculations
- ✅ Type casting (CAST AS numeric) for precision
- ✅ CTEs (Common Table Expressions) for complex queries
- ✅ Window functions (ROW_NUMBER, PERCENTILE)
- ✅ Date functions (EXTRACT, TO_CHAR)
- ✅ HAVING clauses for filtered aggregations

### Tableau
- ✅ Data source connections (Excel)
- ✅ Multiple chart types (bar, line, tables)
- ✅ Calculated fields and parameters
- ✅ Dashboard design and layout
- ✅ Color encoding for visual insights
- ✅ Formatting (currency, percentages)
- ✅ Interactive filters and tooltips
- ✅ Publishing to Tableau Public

### Business Analysis
- ✅ KPI identification and tracking
- ✅ Root cause analysis (drilling from 18.7% → 33.7% → discounting)
- ✅ Segmentation analysis (category, region, customer)
- ✅ Financial impact estimation
- ✅ Actionable recommendation development
- ✅ Executive communication and storytelling

---

## 📊 Dashboard Preview

### Live Dashboard
🔗 **[View Interactive Dashboard on Tableau Public](#)** *(Add your link after publishing)*

### Dashboard Structure
```
┌─────────────────────────────────────────────────────────┐
│         SUPERSTORE PROFITABILITY ANALYSIS               │
│              Data-Driven Insights for Growth            │
├─────────────────────────────────────────────────────────┤
│                                                          │
│  📊 KEY METRICS                                         │
│  ┌──────────┬──────────┬──────────┬──────────┐         │
│  │ Revenue  │  Profit  │  Margin  │ Loss Rate│         │
│  │ $2.3M    │  $286K   │  12.5%   │  18.7%   │         │
│  │   📈     │   💰     │   ✅     │   🔴     │         │
│  └──────────┴──────────┴──────────┴──────────┘         │
│                                                          │
│  🎯 THE PROBLEM: FURNITURE IS BLEEDING MONEY           │
│  ┌───────────────────────┬──────────────────────┐      │
│  │ Profit by Category    │ Loss Rate by Category│      │
│  │                       │                      │      │
│  │ Technology    $145K   │ Furniture     33.7% 🔴│     │
│  │ Office Supp   $122K   │ Office Supp   14.7%  │      │
│  │ Furniture      $18K   │ Technology    14.7%  │      │
│  └───────────────────────┴──────────────────────┘      │
│                                                          │
│  💸 ROOT CAUSE: EXCESSIVE DISCOUNTING                  │
│  ┌──────────────────────────────────────────────┐      │
│  │ Loss Rate by Discount Level                  │      │
│  │                                               │      │
│  │ High (31%+)      ████████████████ 67.2% 🔴  │      │
│  │ Medium (16-30%)  ████████ 28.4%            │      │
│  │ Low (1-15%)      ████ 15.3%                │      │
│  │ No Discount      ██ 8.2% ✅                │      │
│  └──────────────────────────────────────────────┘      │
│                                                          │
│  📍 REGIONAL & TIME ANALYSIS                           │
│  ┌───────────────────────┬──────────────────────┐      │
│  │ Regional Performance  │ Monthly Sales Trend  │      │
│  │                       │                      │      │
│  │ (Map or Bar Chart)    │ (Line Chart)         │      │
│  └───────────────────────┴──────────────────────┘      │
│                                                          │
│  🏆 TOP PERFORMERS                                     │
│  ┌──────────────────────────────────────────────┐      │
│  │ Product Name          Cat      Profit  Margin│      │
│  │ Canon imageCLASS      Tech     $25K    45%   │      │
│  │ Cisco TelePresence    Tech     $22K    42%   │      │
│  │ ...                                           │      │
│  └──────────────────────────────────────────────┘      │
└─────────────────────────────────────────────────────────┘
```

### Screenshots

*(Add screenshots of your actual dashboard here after creation)*

---

## 🚀 Installation & Usage

### Prerequisites
- PostgreSQL 12+ or any SQL database
- Tableau Desktop (or Tableau Public - free)
- Microsoft Excel (for data export)
- Git (optional, for cloning)

### Setup Instructions

1. **Clone the repository**
```bash
git clone https://github.com/yourusername/superstore-analysis.git
cd superstore-analysis
```

2. **Set up the database**
```sql
-- Create database
CREATE DATABASE superstore_analysis;

-- Import data (adjust path to your CSV location)
\copy superstore_data FROM '/path/to/superstore.csv' DELIMITER ',' CSV HEADER;
```

3. **Run SQL queries**
```bash
# Navigate to sql folder
cd sql/

# Run queries in order
psql -d superstore_analysis -f 01_business_overview.sql
psql -d superstore_analysis -f 02_category_analysis.sql
# ... continue with remaining queries
```

4. **Export results to Excel**
```sql
-- Export query results
\copy (SELECT * FROM your_query) TO '/path/to/output.csv' CSV HEADER;
```

5. **Open in Tableau**
- Launch Tableau Desktop/Public
- Connect to Excel file: `data/Superstore_Queries.xlsx`
- Open workbook: `tableau/Superstore_Dashboard.twbx`

---

## 📂 Project Structure
```
superstore-analysis/
│
├── README.md                              # This file
├── LICENSE                                # MIT License
│
├── sql/                                   # SQL analysis queries
│   ├── 01_business_overview.sql          # Overall KPIs and metrics
│   ├── 02_category_analysis.sql          # Category performance breakdown
│   ├── 03_discount_analysis.sql          # Discount impact on profitability
│   ├── 04_regional_performance.sql       # Regional comparison
│   ├── 05_customer_segments.sql          # Customer segmentation
│   ├── 06_top_products.sql               # Best and worst performers
│   └── 07_monthly_trends.sql             # Time series analysis
│
├── data/                                  # Data files
│   ├── superstore.csv                    # Raw dataset (if shareable)
│   └── Superstore_Queries.xlsx           # Query results (exported for Tableau)
│
├── tableau/                               # Tableau files
│   ├── Superstore_Dashboard.twbx         # Tableau packaged workbook
│   └── screenshots/                      # Dashboard screenshots
│       ├── full_dashboard.png
│       ├── category_analysis.png
│       └── discount_impact.png
│
├── docs/                                  # Documentation
│   ├── analysis_summary.md               # Detailed analysis writeup
│   ├── business_recommendations.md       # Full recommendation document
│   └── presentation.pdf                  # Slide deck (optional)
│
└── notebooks/                             # Jupyter notebooks (optional)
    └── exploratory_analysis.ipynb        # Python EDA (if applicable)
```

---

## 🎓 Learning Outcomes

### What I Learned

**Technical Skills:**
- Writing efficient SQL queries for business analysis
- Designing intuitive Tableau dashboards
- Data cleaning and transformation techniques
- Statistical analysis (correlation, distributions)

**Analytical Skills:**
- Root cause analysis methodology
- Breaking down complex problems systematically
- Connecting data insights to business impact
- Prioritizing recommendations by impact vs. effort

**Business Skills:**
- Understanding retail operations and margins
- Identifying actionable vs. interesting insights
- Estimating financial impact of recommendations
- Communicating technical findings to non-technical audiences

### Key Takeaways

> "Good analysis isn't just about finding problems — it's about finding *solvable* problems with measurable impact. Identifying that furniture discounts over 30% have a 67% loss rate gave the business a clear, actionable lever to pull immediately."

**If presenting to executives:**
> "We're losing $40K+ annually on furniture because we're discounting conference tables and bookcases by 30-50%. Cap discounts at 15%, implement a $500 minimum order, and discontinue the 20 worst-performing items. This requires zero capital investment and can be implemented in 30 days with projected ROI of 200% in year one."

---

## 🔄 Future Enhancements

### Phase 2: Deeper Analysis

- [ ] **Customer Lifetime Value (CLV) Modeling**
  - Calculate true CLV by customer segment
  - Identify high-value customers for retention programs
  - Optimize customer acquisition cost (CAC)

- [ ] **Product Bundling Optimization**
  - Analyze which products are frequently purchased together
  - Create profitable furniture bundles with high-margin accessories
  - Test cross-sell opportunities

- [ ] **Shipping Cost Deep Dive**
  - Match shipping costs to specific orders
  - Calculate true profit after all costs
  - Optimize shipping mode selection

- [ ] **Predictive Modeling**
  - Build model to predict order profitability before fulfillment
  - Flag high-risk orders for review
  - Automate discount approval workflows

### Phase 3: Advanced Analytics

- [ ] **Customer Segmentation (RFM Analysis)**
  - Recency, Frequency, Monetary segmentation
  - Targeted marketing strategies by segment
  - Churn prediction modeling

- [ ] **Time Series Forecasting**
  - Predict future sales and profit trends
  - Identify seasonal patterns more rigorously
  - Optimize inventory planning

- [ ] **A/B Testing Framework**
  - Test new discount policies
  - Measure impact of minimum order values
  - Validate pricing changes statistically

---

## 🤝 Contributing

While this is a personal portfolio project, I welcome feedback and suggestions!

- 🐛 **Found a bug?** [Open an issue](https://github.com/yourusername/superstore-analysis/issues)
- 💡 **Have an idea?** [Start a discussion](https://github.com/yourusername/superstore-analysis/discussions)
- 🔧 **Want to contribute?** Fork the repo and submit a pull request

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
```
MIT License

Copyright (c) 2024 [Your Name]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction...
```

---

## 📞 Contact

**[Your Name]**

- 📧 **Email:** your.email@example.com
- 💼 **LinkedIn:** [linkedin.com/in/yourprofile](https://linkedin.com/in/yourprofile)
- 🐱 **GitHub:** [github.com/yourusername](https://github.com/yourusername)
- 📊 **Tableau Public:** [public.tableau.com/profile/yourprofile](https://public.tableau.com/profile/yourprofile)
- 🌐 **Portfolio:** [yourwebsite.com](https://yourwebsite.com)

---

## 🙏 Acknowledgments

- **Dataset:** Sample Superstore dataset (Tableau Public)
- **Tools:** PostgreSQL, Microsoft Excel, Tableau Public
- **Inspiration:** Real-world retail operations analysis case studies
- **Learning Resources:**
  - [Mode Analytics SQL Tutorial](https://mode.com/sql-tutorial/)
  - [Tableau Public Gallery](https://public.tableau.com/app/discover)
  - [DataCamp Business Analytics Track](https://www.datacamp.com/)

---

## ⭐ Star This Repository

If you found this project helpful or interesting, please consider giving it a ⭐! It helps others discover this work.

---

## 📊 Project Stats

![GitHub last commit](https://img.shields.io/github/last-commit/yourusername/superstore-analysis)
![GitHub repo size](https://img.shields.io/github/repo-size/yourusername/superstore-analysis)
![GitHub stars](https://img.shields.io/github/stars/yourusername/superstore-analysis?style=social)

---

**Built with:** 💻 SQL | 📊 Tableau | 🧠 Analytical Thinking | ❤️ Passion for Data

*Last Updated: December 2024*

---

<div align="center">

### 🎯 "Turning Data into Decisions, One Query at a Time"

[View Live Dashboard](#) | [Read Full Analysis](docs/analysis_summary.md) | [See My Other Projects](https://github.com/yourusername)

</div>
