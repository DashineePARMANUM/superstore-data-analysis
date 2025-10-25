# Superstore Data Analysis Report

**Dashinee Parmanum**  
*Self-directed portfolio hybrid project in Statistics and Data Analysis - Fall 2025*

---
## 1. Introduction
Superstore is a multi-regional retailer selling office supplies, furniture, and technology products.
This report analyzes sales data from a Superstore dataset to identify trends, top-performing products, customer segments, and geographic patterns.  
The purpose is to provide insights and recommendations for improving profitability and operational efficiency.

---
## 2. Data Description
The dataset contains transactional records with the following columns:  
Row ID, Order ID, Order Date, Ship Date, Ship Mode, Customer ID, Customer Name, Segment, Country, City, State, Postal Code, Region, Product ID, Category, Sub-Category, Product Name, Sales, Quantity, Discount, Profit.   

The dataset captures sales transactions across multiple regions, product categories, and customer segments and spans multiple years.  
  
*Note:* ProfitMargin is not included in the original dataset and was calculated separately. 

---
## 3. Methodology
**Excel:**
- Pivot table for top products, sub-categories, and categories.
- Pivot table for top segment.
- Pivot table for underperforming products and sub-categories.
- Pivot table for ship mode.
- Pivot table for products and categories with the highest profit margin (ProfitMargin column was created: ProfitMargin = Profit/Sale).
  
**Power BI:**
- Column chart = sum of Profit by Region, State, and City.
- Line chart =  sum of Profit by year, month, and quarter.
- Scatter chart = Discount vs Profit and Discount vs Sales.
- Line chart = sum of Sales by month and quarter.
- Map = Average Profit by Region and State.
    
**SQL (PgAdmin):**
- Found top (10) customers with the highest purchase frequency and total spend.

---
## 4. Insights
**1. Which products, sub-categories, and categories generate the highest sales and profit?**
- Technology Category has the highest Sales and Profit.  
- Canon imageCLASS 2200 Advanced Copier Product has the highest Sales and Profit.  
- Phones Sub-Category has the highest Sales & Copiers Sub-Category has the highest Profit.  

**2. Which regions, states, and cities are the most profitable?**
- West Region, California State & New York City had the highest Profit.  

**3. How does profit change over time (monthly, quarterly, yearly)?**
- Yearly: general increase.  
- Quarterly: general increase with ups and downs;  
    - Q4Y2015-Q1Y2016 = significant increase.
    - Q3Y2016-Q4Y2016-Q1Y2017 = significant increase.
    - Q1Y2017-Q2Y2017 = significant decrease Q2Y2017-Q3Y2017 =  significant decrease (biggest change) (significant = changes of at least 10K). 
- Monthly: general homogeneity with ups and downs, M3Y2017-M4Y2017 = significant decrease (biggest change).  
  
**4. Which segment contributes most to revenue and profit?**
- Consumer Segment contributes the most revenue & profit.  

**5. How do discounts affect sales volume and profitability?**
- Seems like there’s no real impact - more or less homogenous distribution.  

**6. Which products or sub-categories are underperforming in sales or profit?**
- Tables, Bookcases & Supplies are the bottom 3 for Sum of Profit (negative values).  
- Cubify CubeX 3D Printer Double Head Print, Lexmark MX611dhe Monochrome Laser Printer, Cubify CubeX 3D Printer Triple Head Print are the bottom 3 for Sum of Profit ( < -3000). 

**7. Are there seasonal trends in sales across months or quarters?**
- Line graph 1 - quarters : General increase, with M11 highest and M2 lowest, M2-M3 = biggest change (~88K increase).  
- Line graph 2 - months : Q1-Q2 = decrease, Q2-Q3 = increase , Q3-Q4 = increase.  
  
**8. How does ship mode relate to sales or profit?**
- Standard Class has the highest Sum of Profit & Sum of Sales.  
  
**9. Which customers have the highest purchase frequency or total spend?**
| Customer ID | Customer Name       | COUNT (Order ID) | SUM (Sales)  |
|--------------|--------------------|------------------|--------------:|
| SM-20320     | Sean Miller        | 30               | 50,086.10     |
| TC-20980     | Tamara Chand       | 24               | 38,104.44     |
| RB-19360     | Raymond Buch       | 36               | 30,234.68     |
| TA-21385     | Tom Ashbrook       | 20               | 29,191.24     |
| AB-10105     | Adrian Barton      | 40               | 28,947.14     |
| KL-16645     | Ken Lonsdale       | 58               | 28,350.46     |
| SC-20095     | Sanjit Chand       | 44               | 28,284.67     |
| HL-15040     | Hunter Lopez       | 22               | 25,746.60     |
| SE-20110     | Sanjit Engle       | 38               | 24,418.88     |
| CC-12370     | Christopher Conant | 22               | 24,258.14     |
 
**10. Are there geographic trends: states or regions that consistently perform well or poorly?**
- West region = highest state is Montana with 122, lowest state is Colorado with -36.
- Central region = highest state is Indiana with 123, lowest state is Texas with -26.
- East region = highest state is Vermont with 203, lowest state is Ohio with -36.
- South region = highest state is Alabama with 93, lowest state is North Carolina with -30.
- Lowest state overall is Ohio with -36 (East).
- Highest state overall is Vermont with 203 (East).
- High variance for the East region.
- Lowest region overall is South.
- Highest region overall is between East and Central.

  
**11. Which products or categories have the highest profit margin relative to sales?**
- Category = Office Supplies - Technology - Furniture.  
- Product (Top 6, all with average of 0.5) = Xerox 1890 - Southworth Structures Collection - Tops Green Bar Computer Printout Paper - Canon imageCLASS MF7460 Monochrome Digital Laser Multifunction Copier - Avery 475 - Adams Telephone Message Book w/Frequently-Called Numbers Space, 400 Messages per Book.  

---
## 5. Reflection and Learning Outcomes
- Learned to clean and organize large datasets in Excel, Power BI, and SQL.
- Practiced creating pivot tables, charts, and SQL queries for business insights.
- Gained experience interpreting sales trends, customer behavior, and geographic patterns.

---
## 6. Recommendations
- Focus marketing and inventory on high-performing categories: Technology and Phones.
- Investigate underperforming products/sub-categories (Tables, Bookcases, Supplies) to reduce losses or discontinue.
- Promote Standard Class shipping or optimize shipping strategies to maximize profitability.
- Target high-value customer segments (Consumers) with loyalty programs or promotions.
- Consider seasonal trends for inventory planning and marketing campaigns, especially Q4 spikes.

---
*Contact: dashinee.parmanum@gmail.com*  
*LinkedIn: https://www.linkedin.com/in/dashinee-parmanum/*  
