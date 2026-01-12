# Customer Segmentation Analysis using SQL and Python

## Overview
This project performs customer segmentation analysis using **MySQL** and **Python** to understand how customer income and age relate to spending behavior. The objective is to identify key customer groups, uncover under-monetized segments, and derive actionable business insights.

The project follows a **SQL-first approach**, where all data preparation and segmentation logic is handled in SQL, and Python is used only for post-query aggregation and interpretation.

---

## Dataset
- **Source:** Kaggle – Mall Customers Dataset  
- **Records:** 200 customers  
- **Features:**
  - Customer ID
  - Gender
  - Age
  - Annual Income
  - Spending Score

The dataset was cleaned prior to database import to ensure correct data types and eliminate null or inconsistent values.

---

## Tools & Technologies
- **Excel:**
  - Basic Data Cleaning
- **SQL:** MySQL  
  - CASE statements  
  - GROUP BY & aggregation  
  - Window functions  
- **Python:**  
  - mysql-connector-python  
  - pandas  
- **Database Tool:** MySQL Workbench  
- **Version Control:** GitHub  

---

## Project Workflow
1. Cleaned the CSV dataset and validated data types
2. Created database schema using a dedicated SQL script
3. Imported cleaned data into MySQL
4. Performed customer segmentation using SQL queries
5. Used Python to:
   - Execute analytical SQL queries
   - Convert query outputs into dictionaries
   - Calculate segment-wise percentages
   - Rank customer segments by importance

---

## SQL Design
SQL scripts are intentionally separated to reflect real-world workflows:

- **`table_creation.sql`**
  - Creates the database and table schema
  - Run once during initial setup

- **`analysis_queries.sql`**
  - Contains only analytical SELECT queries
  - Used repeatedly for analysis and validation

This separation prevents accidental schema changes and keeps analysis reproducible.

---

## Key Analyses Performed
- Income-based customer segmentation
- Spending behavior classification
- Age group analysis
- Identification of high-opportunity and under-monetized segments
- Ranking of customer segments by contribution

---

## Key Insights
- Mid-income, medium-spending customers form the largest and most stable segment, providing consistent baseline revenue.
- A significant portion of high-income customers exhibit low spending, indicating untapped revenue potential rather than lack of purchasing power.
- Certain low-income customers demonstrate disproportionately high spending behavior, suggesting strong responsiveness to targeted promotions.

---

## How to Run
1. Execute `table_creation.sql` to create the database and table
2. Import the cleaned CSV file into the table using MySQL Workbench
3. Run analytical queries from `analysis_queries.sql`
4. Update database credentials in the Python script
5. Execute the Python script to generate segment distributions and percentages

---

## Learning Outcomes
- Practical experience designing and querying relational databases
- Stronger understanding of SQL-based data analysis
- Hands-on integration of SQL with Python
- Improved ability to translate query results into business insights


