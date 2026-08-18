# Data Catalog

## Overview

The Gold Layer is the business-level data representation, structured to support analytical and reporting use cases. it consists of **dimension tables** and **fact tables**
________________________________________________________________________________________________________________________

## 1. gold.dim_customers

**Purpose:** Stores customer details enriched with demographic and geographic data.
## Columns:

| Column Name | Data Type | Description |
|---|---|---|
| customer_key | INT | Surrogate key uniquely identifying each customer record in the dimension table. |
| customer_id | INT | Unique numerical identifier assigned to each customer. |
| customer_number | NVARCHAR(50) | Alphanumeric identifier representing the customer, used for tracking and refrencing. |
| first_name | NVARCHAR(50) | The customer's first name as recorded in the system. |
| last_name | NVARCHAR(50) | The customer's last name or family name. |
| country | NVARCHAR(50) | The country of residence of the customer (e.g., 'Australia'). |
| marital_status | NVARCHAR(50) | The marital status of the customer (e.g. 'Married', 'Single'). |
| gender | NVARCHAR(50) | The gender of the customer (e.g., 'Male', 'Female', 'n/a'). |
| birth_date | DATE | The date of birth of the customer, formatted as YYYY-MM-DD (e.g., 1971-10-06). |
| create_date | DATE | The date and time when the customer record was created in the system. |

________________________________________________________________________________________________________________________

## 2. gold.dim_products

**Purpose:** Provides information about the products and their attributes.

### Columns:

| Column Name | Data Type | Description |
|---|---|---|
| product_key | INT | Surrogate  |
| product_id | INT | Un |
| product_number | NVARCHAR(50) |  |
| product_name | NVARCHAR(50) |  |
| category_id | NVARCHAR(50) |  |
| category | NVARCHAR(50) |  |
| subcategory | NVARCHAR(50) |  |
| maintenance | NVARCHAR(50) |  |
| cost | NVARCHAR(50) |  |
| product_line | NVARCHAR(50) |  |
| product_start_date | NVARCHAR(50) |  |

________________________________________________________________________________________________________________________

## 3. gold.fact_sales

**Purpose:**

### Columns

| Column Name | Data Type | Description |
|---|---|---|
| order_number | NVARCHAR(50) |  |
| product_key | INT |  |
| customer_key | INT |  |
| order_date | DATE |  |
| shipping_date | DATE |  |
| due_date | DATE |  |
| sales_amount | INT |  |
| quantity | INT |  |
| price | INT |  |
