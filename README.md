<h1 align="center">📦 Retail Orders Analytics (Python + SQL + Power BI)</h1>

Welcome to the **Retail Orders Analytics Project** — an end-to-end business analytics solution built using **Python**, **PostgreSQL**, and **Power BI**.

This project is designed to uncover key business insights from a retail sales dataset by analyzing product performance, profit margins, discount strategies, shipping efficiency, and geographic trends using a modern analytics tech stack.

---

## 📘 About the Project

The dataset simulates retail order data across various product categories and regions in India. It contains fields like **order details**, **customer segments**, **product pricing**, **shipping modes**, and **profitability metrics**.

The project workflow involves:
- Cleaning and transforming the raw dataset
- Performing EDA in Python to uncover patterns
- Writing optimized SQL queries to answer business questions
- Designing a dashboard in Power BI for stakeholder storytelling

---

## 📂 Data Source

- 📄 **Retail_Orders.csv**  
  Contains ~8,000 rows with columns such as:
  - `order_id`, `order_date`, `ship_mode`, `segment`, `product_id`, `category`, `sub_category`
  - `state`, `city`, `region`, `postal_code`
  - `cost_price`, `list_price`, `discount_percent`, `selling_price`, `profit`, `total_amount`, `quantity`

---

## 📌 What You'll Find in the Project

### 🐍 Python EDA  
> File: `Retail_Orders_Analytics.ipynb`  
Libraries: `pandas`, `numpy`, `matplotlib`, `seaborn`

- Category-wise and state-wise order analysis
- Monthly revenue/profit trends
- Discount and segment behavior
- Profit distribution histogram
- Heatmap for correlation analysis
- City-wise avg. selling price bar chart

---

### 🧾 SQL Querying  
> File: `Retail_Orders_Analytics.sql`  
Engine: PostgreSQL

- Data cleaning with schema fixes
- Product sales patterns
- High/low-profit sub-categories
- State-segment level profitability
- Ship mode performance
- Region and quarter analysis
- City-level discount and selling price comparison

---

### 📈 Power BI Dashboard  
> File: `Retail_Orders_Analytics.pbix`

- Dynamic KPIs: Total Orders, Revenue, Profit
- Monthly line chart for revenue trends
- Region-wise profit heatmap
- State, category, and segment filters
- High-profit/low-profit products
- Category performance over time

---

## 🔍 Key Insights

### 📦 Product & Category Insights
1. **Chairs and Phones are top performers** in both quantity sold and profit generated.
2. **Clothing-related sub-categories** saw high order volumes but relatively low profit margins.
3. Products with a **≥5% discount still achieved ₹1000+ profit** in several cases — ideal for bundling promotions.

### 🧑‍🤝‍🧑 Customer Segment Insights
4. The **"Consumer" segment placed the highest number of orders** but had lower avg. profit than the "Corporate" segment.
5. The **"Home Office" segment showed high discount usage** with varying profit margins.

### 💸 Pricing & Profitability Insights
6. **High discounts don’t always reduce profitability** — discount thresholds vary by category.
7. **List Price and Cost Price** are strongly correlated, but Profit is not linearly tied to either — pointing to optimization opportunities.
8. Products with **cost price > ₹2000** contributed significantly to overall profit.

### 🚚 Shipping & Delivery Insights
9. **"Second Class" shipping mode delivered the highest average profit per order**.
10. **Ship mode directly impacts profit margins** — "Same Day" deliveries, while faster, often reduced net margins.

### 🌍 Geographic Insights
11. **Karnataka and Maharashtra are top-performing states** in terms of total revenue.
12. **Cities like Bangalore and Mumbai** dominate profit figures — ideal regions for campaign targeting.
13. **States with high discounts (e.g., Uttar Pradesh)** often had lower average profit — highlighting regions at loss risk.
14. **South region** has the highest number of unique cities engaged in purchasing activity.

### 📅 Time-Based Insights
15. **Quarter 3 (Q3)** showed the highest revenue across all regions, suggesting festive or seasonal demand peaks.
16. **Weekend orders made up a significant portion (~28%)** of total order count.
17. **Wednesdays and Thursdays** had the lowest overall profit — potentially off-peak days.

---

## 🛠 Tools & Technologies

| Category       | Tools & Libraries            |
|----------------|------------------------------|
| Programming    | Python, SQL (PostgreSQL)     |
| Data Analysis  | pandas, matplotlib, seaborn  |
| Dashboarding   | Power BI                     |
| IDE            | Jupyter Notebook, VS Code    |
| DB Tool        | pgAdmin             |

---

## 🧰 Repository Contents

| 📁 / 📄 Name                          | 📌 Description                               |
|--------------------------------------|----------------------------------------------|
| 📁 Python Charts Visuals            | Charts plotted in Jupyter Notebook               |
| `Retail_Orders.csv`                  | Dataset used for all analysis                |
| `Retail_Orders_Analytics.ipynb`      | Python EDA notebook                          |
| `Retail_Orders_Analytics.sql`        | SQL query script with KPIs                   |
| `Retail_Orders_Analytics.pbix`       | Power BI interactive dashboard               |
| `Retail_Orders_Analytics.pdf`       | Exported PDF of Power BI interactive dashboard|
| `README.md`                          | Project summary and documentation            |

---

## 🙋‍♂️ About Me

👤 **Satyam Kumar**  
📊 Aspiring Data Analyst | Python | SQL | Power BI  
🌐 [LinkedIn](https://www.linkedin.com/in/satyam-kumar-5a229222b)  
📬 **satyamkv123@gmail.com**

---

> ⭐ _If you're a recruiter, hiring manager, or peer interested in collaborating, feel free to connect or reach out._
