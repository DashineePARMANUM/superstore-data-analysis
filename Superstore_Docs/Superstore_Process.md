## IN THE WORKS

# Superstore Data Analysis Process

**Dashinee Parmanum**  
*Self-directed portfolio hybrid project in Statistics and Data Analysis - Fall 2025*

---
## 0. Original Data and Setup
In Excel:
- Formatting = changed to date/numbers for data type for some column
- Used Data Filter to check that there’s no empty cells & search for “n/a”

---
## 1. Which products, sub-categories, and categories generate the highest sales and profit? 
- In Excel:
 - Selecting the whole sheet to create a pivot table
 - Dragged Category, Sub-Category & Product Name to Rows, Sum of Sales & Sum of Profit to Values
 - sorted Sales and Profit columns to find the highest each time after moving the correct column name (Category/Sub-Category/Product Name) to the top in the Rows section

---
## 2. Which regions, states, and cities are the most profitable?  
- In Power BI:
 - Loaded dataset - from another source - Text/CSV file
 - Created 3 column charts to display profit by Region, State & City

---
## 3. How do sales and profit change over time (monthly, quarterly, yearly)?  
- In Power BI:
 - In Table View:
  - Created column year: year = year(superstore_US_raw[Order Date])
  - Created column quarter: quarter = QUARTER(superstore_US_raw[Order Date])
  - Created column QY: QY = "Q" & superstore_US_raw[quarter] & "Y" & superstore_US_raw[year]
  - Created column QY_sort: QYsort = (superstore_US_raw[year]*10) + superstore_US_raw[quarter]
  - Sort column QY by column QYsort
  - Created column month: month = month(superstore_US_raw[Order Date])
  - Created column MY: MY = "M" & superstore_US_raw[month] & "Y" & superstore_US_raw[year]
  - Created column MYsort: MYsort = (superstore_US_raw[year]*100) + superstore_US_raw[month]
  - Sort column MY by column MYsort
 - Plot a Line Chart with year in x-axis & Sum of Profit in y-axis
 - Plot a Line Chart with QY in x-axis & Sum of Profit in y-axis
 - Plot a Line Chart with MY in x-axis & Sum of Profit in y-axis

---
## 4. Which customer segments contribute most to revenue and profit?
- In Excel:
 - New pivot table using whole dataset
 - Segment in Rows
 - Sum of Profit & Sum of Sales in Values
 - Sort by Descending

---
 ## 5. How do discounts affect sales volume and profitability?
- In Power BI:
 - New sheet
 - 1st scatter plot: x-axis = Discount, y-axis = Sales
 - 2nd scatter plot: x-axis = Discount, y-axis = Profit

---
## 6. Which products or sub-categories are underperforming in sales or profit?
- In Excel:
 - New pivot table using whole dataset
 - Rows = Product Name & Sub-Category, Values = Sum of Profit
 - Sort by descending order to check which are underperforming

---
## 7. Are there seasonal trends in sales across months or quarters? 
- 

---
## 8. How does ship mode relate to sales, profit, or customer satisfaction?
-  

---
## 9. Which customers have the highest purchase frequency or total spend? 
- 
 
---
## 10. Are there geographic trends—states or regions that consistently perform well or poorly?
- 

---
## 11. Which products or categories have the highest profit margin relative to sales? 
- 

---
## 12. What actionable insights can inform marketing, inventory, or pricing strategies?  
- 

---
## 13. Key Insights
- 

---
## 14. Challenges and Solutions
- 

---
## 15. Final File
- 

---
*Contact: dashinee.parmanum@gmail.com*  
*LinkedIn: https://www.linkedin.com/in/dashinee-parmanum/*
