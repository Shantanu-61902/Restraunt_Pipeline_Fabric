# 🍕 Restaurant Data Pipeline

## Project Overview

This project demonstrates an end-to-end Data Engineering and Analytics solution built using **Microsoft Fabric**, implementing a complete **Medallion Architecture (Bronze → Silver → Gold)** for a multi-location restaurant chain.

The objective was to transform raw transactional restaurant data into business-ready analytics that help management answer three critical questions:

* Which stores are performing best?
* What are the peak operating hours?
* Which products drive the most revenue?

The solution uses Microsoft Fabric Lakehouse, PySpark, Delta Tables, OneLake, SQL Analytics Endpoint, and Power BI DirectLake to build a scalable analytics platform.

---

# Business Problem

The client operates multiple restaurant locations and collects large volumes of customer, sales, inventory, and order data.

However:

* Data is scattered across multiple systems.
* No centralized reporting exists.
* Business decisions are based on assumptions rather than data.
* Store performance is difficult to measure.
* Product and customer insights are unavailable.

This project solves these challenges by creating a centralized analytics platform using Microsoft Fabric.

---

# Architecture

```text
Microsoft Fabric Data Pipeline
            │
            ▼
      Data Generation
            │
            ▼
       Bronze Layer
      (Raw JSON Files)
            │
            ▼
       Silver Layer
   (PySpark + Delta Tables)
            │
            ▼
        Gold Layer
 (Business KPIs & Aggregates)
            │
            ▼
    Power BI DirectLake
```

---

# Technology Stack

| Category               | Technology             |
| ---------------------- | ---------------------- |
| Cloud Platform         | Microsoft Fabric       |
| Storage                | OneLake                |
| Processing Engine      | Apache Spark (PySpark) |
| Data Format            | JSON                   |
| Storage Format         | Delta Tables           |
| Data Architecture      | Medallion Architecture |
| ETL/ELT                | PySpark Notebooks      |
| Analytics              | SQL Analytics Endpoint |
| Reporting              | Power BI               |
| Pipeline Orchestration | Fabric Data Factory    |
| Data Generation        | Python Faker Library   |

---

# Project Structure

```text
Restaurant-Lakehouse-Analytics/
│
├── notebooks/
│   ├── S001_Seawoods.ipynb
│   ├── S002_Vashi.ipynb
│   ├── S003_Nerul.ipynb
│   ├── S004_Kharghar.ipynb
│   ├── S005_Belapur.ipynb
│   ├── S006_Ghansoli.ipynb
│   └── Silver_Layer_Transformation.ipynb
│
├── bronze/
│   ├── customers.json
│   ├── orders.json
│   ├── order_items.json
│   └── inventory.json
│
├── silver/
│   ├── silver_customers
│   ├── silver_orders
│   ├── silver_order_items
│   └── silver_fact_sales
│
├── gold/
│   ├── revenue_by_store
│   ├── revenue_by_hour
│   ├── revenue_by_product
│   └── customer_analytics
│
├── pipelines/
│   └── Fabric_Data_Pipeline
│
├── powerbi/
│   └── Restaurant_Dashboard.pbix
│
└── README.md
```

---

# Data Pipeline Workflow

## Step 1 – Data Generation

Created six Microsoft Fabric notebooks using Python and Faker Library.

Each notebook represents a restaurant store:

* S001 – Seawoods
* S002 – Vashi
* S003 – Nerul
* S004 – Kharghar
* S005 – Belapur
* S006 – Ghansoli

Generated datasets:

* Customers
* Orders
* Order Items
* Inventory

Output:

```text
JSON Files
```

Stored in:

```text
OneLake Files/Bronze
```

---

## Step 2 – Bronze Layer

Purpose:

Store raw source data without modifications.

Tables:

```text
bronze_customers
bronze_orders
bronze_order_items
bronze_inventory
```

Characteristics:

* Raw JSON files
* Immutable storage
* Historical tracking
* Source of truth

---

## Step 3 – Silver Layer

PySpark notebooks perform data cleansing and transformation.

Transformations Performed:

* Merge data from all stores
* Remove duplicate records
* Handle null values
* Standardize schemas
* Validate relationships
* Create business keys
* Enforce data quality rules
* Build sales fact table
* Recalculate inventory
* Separate rejected records

Silver Tables:

```text
silver_customers
silver_orders
silver_order_items
silver_fact_sales
```

Storage Format:

```text
Delta Tables
```

---

## Step 4 – Gold Layer

Business-ready datasets are created using PySpark aggregations and SQL Analytics Endpoint.

Gold Tables:

```text
Revenue By Store
Revenue By Hour
Revenue By Product
Customer Analytics
```

Purpose:

* KPI reporting
* Trend analysis
* Business insights
* Executive dashboards

---

## Step 5 – Pipeline Orchestration

Microsoft Fabric Data Factory orchestrates the entire workflow.

Pipeline Activities:

1. Trigger Store Notebooks
2. Load Bronze Data
3. Execute Silver Transformations
4. Execute Gold Aggregations
5. Refresh Reporting Layer

Benefits:

* Automation
* Scheduling
* Dependency Management
* Monitoring

---

## Step 6 – Power BI Reporting

Power BI connects directly to Gold Layer Delta Tables using DirectLake Mode.

Benefits:

* No data import required
* Near real-time reporting
* Faster dashboard performance
* Reduced storage overhead

Dashboard Objectives:

### Objective 1 – Store Comparison

Analyze:

* Revenue by Store
* Orders by Store
* Customer Distribution

### Objective 2 – Operating Time Analysis

Analyze:

* Peak Sales Hours
* Sales Trends
* Demand Patterns

### Objective 3 – Product Performance

Analyze:

* Best Selling Products
* Product Revenue Contribution
* Product Category Performance

---

# Medallion Architecture

```text
Bronze Layer
    ↓
Silver Layer
    ↓
Gold Layer
```

### Bronze

Raw data ingestion.

### Silver

Cleaned and validated data.

### Gold

Business-ready analytics.

Benefits:

* Better data quality
* Scalability
* Faster analytics
* Easier maintenance
* Reusable datasets

---

# Challenges Faced

## 1. Historical Data Generation

### Issue

Initially all records were generated using the current date, making trend analysis impossible.

### Solution

Generated historical timestamps across multiple days and weeks using:

```python
pipeline_run_date = datetime.now() - timedelta(days=1)
```

Result:

* Sales trend analysis
* Customer behavior analysis
* Time-series KPIs

---

## 2. Duplicate Orders

### Issue

Duplicate Order IDs appeared across different timestamps.

### Solution

Created a composite business key:

```text
store_id + order_id
```

Used PySpark to identify and remove duplicate records before loading Silver tables.

Result:

* Accurate revenue calculations
* Consistent reporting
* Improved data quality

---

# Big Data Components Used

| Technology       | Purpose                     |
| ---------------- | --------------------------- |
| PySpark          | Distributed Data Processing |
| Delta Tables     | Reliable Storage Layer      |
| Lakehouse        | Unified Data Platform       |
| OneLake          | Centralized Storage         |
| Fabric Notebooks | ETL/ELT Processing          |
| SQL Endpoint     | Analytics Queries           |
| Power BI         | Visualization & Reporting   |

---

# Key Features

* End-to-End Data Pipeline
* Medallion Architecture
* Microsoft Fabric Lakehouse
* OneLake Storage
* PySpark Transformations
* Delta Lake Tables
* Automated Data Pipelines
* SQL Analytics Endpoint
* Power BI DirectLake Reporting
* Data Quality Validation
* Historical Analytics
* KPI Dashboarding

---

# Setup Instructions

## Prerequisites

* Microsoft Fabric Workspace
* Fabric Capacity Enabled
* Power BI Desktop
* Python 3.10+
* Microsoft Fabric Lakehouse

---

## Installation

### Clone Repository

```bash
git clone https://github.com/yourusername/restaurant-lakehouse-analytics.git
cd restaurant-lakehouse-analytics
```

### Upload Notebooks

Upload all notebooks into Microsoft Fabric Workspace.

### Create Lakehouse

```text
Workspace
   └── Lakehouse
```

### Create Bronze Folder

```text
Files/
   └── bronze/
```

### Run Store Notebooks

Execute:

```text
S001_Seawoods.ipynb
S002_Vashi.ipynb
S003_Nerul.ipynb
S004_Kharghar.ipynb
S005_Belapur.ipynb
S006_Ghansoli.ipynb
```

### Run Silver Transformation Notebook

```text
Silver_Layer_Transformation.ipynb
```

### Run Gold Aggregation Notebook

Creates:

```text
Revenue By Store
Revenue By Hour
Revenue By Product
Customer Analytics
```

### Execute Fabric Pipeline

Run:

```text
Restaurant Analytics Pipeline
```

### Connect Power BI

```text
Power BI
   → DirectLake
   → OneLake
   → Gold Layer Tables
```

---

# Future Enhancements

* Real-time Streaming Analytics
* Customer Churn Prediction
* Demand Forecasting
* Inventory Forecasting
* Recommendation Engine
* AI-Powered Insights
* Automated Alerting

---

Microsoft Fabric | Data Engineering | Lakehouse Architecture | PySpark | Power BI | SQL Analytics


