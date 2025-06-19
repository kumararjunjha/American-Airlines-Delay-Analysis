
# American Airlines Flight Delay Analysis

## 🔧 How to Use This Project

This project analyzes flight delay data focused on American Airlines (including American Eagle). It involves extracting data from a CSV file, loading it into a MySQL database, and running SQL and Python-based analyses.

### Prerequisites

- MySQL Workbench or another MySQL-compatible database tool
- Python (with pandas and mysql-connector-python installed)
- CSV file: `clean_airline_delays.csv`

### Step-by-Step Guide

1. **Database Setup**
   - Open `02_sql/01_create_schema.sql` in MySQL Workbench and execute it to create your database and tables.

2. **Data Loading**
   - Run `03_python/load_to_mysql.py` to insert data into the database.

3. **Analysis**
   - Use `02_sql/02_delay_analysis.sql` to run predefined queries for insights.

4. **Output**
   - Generated visuals or summaries go into `04_outputs/charts/`.

### Project Structure

- `01_data/`: Original or cleaned dataset.
- `02_sql/`: SQL scripts for DB setup and queries.
- `03_python/`: Scripts for data ETL (Extract, Transform, Load).
- `04_outputs/`: Charts and visualizations.
- `05_docs/`: Documentation files.

---

© Your Name | American Airlines Delay Analysis | 2025
