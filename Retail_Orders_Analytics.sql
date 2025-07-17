-- Fetching all the datas
SELECT * FROM df_orders;


-- As the column names have spaces between them, let us rename the columns having this issue.
ALTER TABLE df_orders RENAME COLUMN "order id" TO order_id;
ALTER TABLE df_orders RENAME COLUMN "order date" TO order_date;
ALTER TABLE df_orders RENAME COLUMN "ship mode" TO ship_mode;
ALTER TABLE df_orders RENAME COLUMN "postal code" TO postal_code;
ALTER TABLE df_orders RENAME COLUMN "sub category" TO sub_category;
ALTER TABLE df_orders RENAME COLUMN "product id" TO product_id;
ALTER TABLE df_orders RENAME COLUMN "cost price" TO cost_price;
ALTER TABLE df_orders RENAME COLUMN "list price" TO list_price;
ALTER TABLE df_orders RENAME COLUMN "discount percent" TO discount_percent;


-- Fetching unique values in column 'ship_mode'
SELECT DISTINCT ship_mode
FROM df_orders;


-- Converting data type of order_id
ALTER TABLE df_orders
ADD PRIMARY KEY (order_id);


-- Converting data type of all other columns
ALTER TABLE df_orders
ALTER COLUMN order_date TYPE DATE,
ALTER COLUMN quantity TYPE INTEGER,
ALTER COLUMN ship_mode TYPE VARCHAR(50),
ALTER COLUMN segment TYPE VARCHAR(50),
ALTER COLUMN country TYPE VARCHAR(100),
ALTER COLUMN city TYPE VARCHAR(100),
ALTER COLUMN state TYPE VARCHAR(100),
ALTER COLUMN postal_code TYPE VARCHAR(10),
ALTER COLUMN region TYPE VARCHAR(50),
ALTER COLUMN category TYPE VARCHAR(50),
ALTER COLUMN sub_category TYPE VARCHAR(50),
ALTER COLUMN product_id TYPE VARCHAR(50),
ALTER COLUMN month TYPE VARCHAR(7),
ALTER COLUMN cost_price TYPE NUMERIC(10,2),
ALTER COLUMN list_price TYPE NUMERIC(10,2),
ALTER COLUMN discount_percent TYPE NUMERIC(5,2),
ALTER COLUMN total_amount TYPE NUMERIC(10,2),
ALTER COLUMN discounted_price TYPE NUMERIC(10,2),
ALTER COLUMN selling_price TYPE NUMERIC(10,2),
ALTER COLUMN profit TYPE NUMERIC(10,2);


-- Retrieving column names with their updated data types
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'df_orders';


-- Customer, Order, and Product Behaviour
-- How many unique products were sold in total?
SELECT COUNT(DISTINCT product_id) AS unique_products FROM df_orders;


-- Which product IDs were sold in the highest quantity?
SELECT product_id, SUM(quantity) AS total_quantity
FROM df_orders
GROUP BY product_id
ORDER BY total_quantity DESC
LIMIT 10;


-- Find the average quantity ordered per sub-category.
SELECT sub_category, AVG(quantity) AS avg_quantity
FROM df_orders
GROUP BY sub_category;


-- Which 5 product sub-categories gave the highest average profit per order?
SELECT sub_category, AVG(profit) AS avg_profit
FROM df_orders
GROUP BY sub_category
ORDER BY avg_profit DESC
LIMIT 5;


-- What is the total number of orders by postal code (top 10)?
SELECT postal_code, COUNT(order_id) AS Total_Orders
FROM df_orders
GROUP BY postal_code
ORDER BY Total_Orders DESC
LIMIT 10;


-- Profitability, Margin, and Pricing
-- Which products had a negative profit (loss-making products)?
SELECT *
FROM df_orders
WHERE profit < 0;


-- What is the average selling price per category?
SELECT category, AVG(selling_price) AS Average_selling_price
FROM df_orders
GROUP BY category
ORDER BY Average_selling_price DESC
LIMIT 10;


-- Which regions have the highest average profit margin?
SELECT region, AVG(profit) as Average_Profit
FROM df_orders
GROUP BY region
ORDER BY Average_Profit;


-- Calculate total profit by state and segment.
SELECT state, segment, SUM(profit) AS Total_Profit
FROM df_orders
GROUP BY state, segment
ORDER BY Total_Profit DESC;


-- Find products maximum discount and high profitability (₹1000+ profit).
SELECT product_id, discount_percent, SUM(profit) AS total_profit
FROM df_orders
WHERE discount_percent >=5
GROUP BY product_id, discount_percent
HAVING SUM(profit) > 1000
ORDER BY total_profit DESC;


-- Logistics, Discount, Delivery Insights
-- Find average discount percentage for each ship mode.
SELECT ship_mode, AVG(discount_percent) AS Average_discount
FROM df_orders
GROUP BY ship_mode;


-- Which product categories had the most orders with maximum discount?
SELECT category, COUNT(order_id) AS Total_Orders
FROM df_orders
WHERE discount_percent >=5
GROUP BY category
ORDER BY Total_Orders DESC;


-- How many orders had a total amount > ₹50,000?
SELECT COUNT(order_id)
FROM df_orders
WHERE total_amount > 50000;


-- Which ship mode had the highest average profit per order?
SELECT ship_mode, AVG(profit) AS Average_Profit
FROM df_orders
GROUP BY ship_mode
ORDER BY Average_Profit DESC;


-- Time-Based Analysis (not monthly)
-- Total profit by weekday (e.g., Monday to Sunday)
SELECT TO_CHAR(order_date, 'Day') AS weekday, SUM(profit) AS total_profit
FROM df_orders
GROUP BY weekday
ORDER BY total_profit DESC;


-- Which quarter (Q1–Q4) generated the most revenue?
SELECT EXTRACT(quarter FROM order_date) AS quarter, SUM(selling_price) AS total_revenue
FROM df_orders
GROUP BY quarter
ORDER BY total_revenue DESC;


-- How many orders were placed each weekend (Saturday + Sunday)?
SELECT COUNT(*) AS weekend_orders
FROM df_orders
WHERE EXTRACT(dow FROM order_date) IN (0, 6);


-- Geo-Level Insights
-- States with below-average profit and above-average discount.
SELECT 
    state,
    AVG(profit) AS state_profit,
    AVG(discount_percent) AS state_discount
FROM df_orders
GROUP BY state;


-- How many unique cities exist per region?
SELECT region, COUNT(DISTINCT city) AS unique_cities
FROM df_orders
GROUP BY region;


-- Which cities had the lowest average selling price? (Bottom 10)
SELECT city, AVG(selling_price) AS avg_price
FROM df_orders
GROUP BY city
ORDER BY avg_price ASC
LIMIT 10;


























