-- table creation
DROP TABLE IF EXISTS superstore_US;
CREATE TABLE superstore_US ("Row ID" INT, "Order ID" VARCHAR(15), "Order Date" DATE, "Ship Date" DATE, 
							"Ship Mode" VARCHAR(20), "Customer ID" VARCHAR(10), "Customer Name" VARCHAR(100),
							Segment VARCHAR(15), Country VARCHAR(100), City VARCHAR(100), State VARCHAR(100),
							"Postal Code" VARCHAR(10), Region VARCHAR(10), "Product ID" VARCHAR(15),
							Category VARCHAR(100), "Sub-Category" VARCHAR(100), "Product Name" VARCHAR(255), 
							Sales FLOAT, Quantity INT, Discount FLOAT, Profit FLOAT);

-- since default for SQL is different
SET datestyle = 'MDY';

-- "import" data
COPY superstore_US("Row ID", "Order ID", "Order Date", "Ship Date", "Ship Mode", "Customer ID", "Customer Name",
				   Segment, Country, City, State,"Postal Code", Region, "Product ID", Category, "Sub-Category",
				   "Product Name", Sales, Quantity, Discount, Profit) 
				   FROM 'C:\temp\superstore_US.csv' DELIMITER ',' CSV HEADER;

-- show top 10 customer with highest money spent
SELECT "Customer ID", "Customer Name", COUNT("Order ID") AS Order_Count, SUM(Sales) AS Total_Spend
FROM superstore_US
GROUP BY "Customer ID", "Customer Name"
ORDER BY Total_Spend DESC
LIMIT 10;
