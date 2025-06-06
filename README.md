**SQL Data Analysis on Chocolate Sales Dataset**

---

### 🗃️ Database Used:

**Database Name:** `chocolate_database`

---

### 📂 Tables and Their Description:

1. **geo**

   * Contains country and region information
   * Columns: `GeoID`, `Geo`, `Region`

2. **shipments**

   * Sales transactions with amounts and products sold
   * Columns: `Sales Person`, `Geo`, `Product`, `Date`, `Amount`, `Boxes`

3. **people**

   * Salesperson details
   * Columns: `Sales Person`, `SP ID`, `Team`, `Location`

4. **products**

   * Product catalog with categories and prices
   * Columns: `Product ID`, `Product`, `Category`, `Size`, `Cost per Box`

---

### 🧠 Objective:

To extract insights from structured data using SQL queries and demonstrate practical SQL skills such as joins, aggregations, subqueries, and views.

---

### 📑 Deliverables:

1. ✅ `task4_queries.sql` — Contains all SQL queries used for analysis
2. ✅ **Screenshots** — Output of each SQL query, taken from MySQL Workbench

---

### 🔍 SQL Operations Performed:

* Region-wise total sales
* Top 5 products by revenue
* Total boxes sold by each salesperson
* Monthly sales trends
* Most sold product categories
* Creation of a view for regional sales
