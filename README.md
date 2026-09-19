# E-Commerce SQL Database Analysis

## Project Overview

This project focuses on designing and querying a relational e-commerce database using **MySQL**.

The database contains three main tables:

* **Employees** — employee details, salaries, departments, positions, hire dates, and manager hierarchy
* **Products** — product details, categories, prices, stock quantities, and supplier codes
* **Orders** — customer orders, products purchased, order dates, quantities, amounts, and responsible employees

The project includes **50 SQL analysis queries** covering business-oriented analysis of employees, products, customers, and sales.

## Database Structure

### Employees

Stores employee information and manager relationships.

Key fields:

* Employee_ID
* First_Name
* Last_Name
* Department
* Position
* Salary
* Hire_Date
* Manager_ID

### Products

Stores product and inventory information.

Key fields:

* Product_ID
* Product_Name
* Category
* Price
* Stock_Quantity
* Supplier_Code

### Orders

Stores customer order information.

Key fields:

* Order_ID
* Customer_ID
* Product_ID
* Order_Date
* Quantity
* Total_Amount
* Employee_ID

## SQL Concepts Covered

* SELECT, WHERE, ORDER BY
* GROUP BY and HAVING
* Aggregate functions
* INNER JOIN
* LEFT JOIN
* SELF JOIN
* Subqueries
* Correlated subqueries
* CTEs
* CASE expressions
* Date functions
* Window functions
* RANK()
* ROW_NUMBER()
* PERCENT_RANK()
* Running totals
* Cumulative sales
* Month-over-month growth
* Salary ranking
* Median and variance analysis

## Analysis Performed

The queries cover:

* Employee salary and department analysis
* Employee-manager hierarchy analysis
* Product and inventory analysis
* Top-priced and top-selling products
* Customer order analysis
* Top customers by order value
* Revenue by product and category
* Monthly sales trends
* Running and cumulative sales
* Month-over-month sales growth
* Products that have never been ordered
* Customer purchasing patterns
* Salary rankings within departments
* Category-level product analysis
* Customer segmentation using order value

## Repository Structure

```text
sql-ecommerce-analysis/
│
├── README.md
│
├── sql/
│   ├── 01_database_setup.sql
│   └── 02_analysis_queries.sql
│
└── screenshots/
    └── query_results.png
```

## Tools & Technologies

* MySQL
* SQL
* MySQL Workbench

## Project Objective

The objective of this project was to strengthen practical SQL skills by working with a relational dataset and solving business-oriented analytical questions using increasingly advanced SQL techniques.

