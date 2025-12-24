
 HR Retention Analysis & Dashboard

This project is an end-to-end data analytics solution designed to analyze employee attrition (churn). Instead of relying solely on visualization tools, this project simulates a real-world data pipeline:

1. Ingestion & Cleaning: Using Python (Pandas) to sanitize raw data.
2. Transformation & Logic: Using SQL (SQLite) to handle business logic and grouping via Views.
3. Visualization: Using Power BI to build an interactive corporate dashboard for strategic decision-making.

The dashboard helps HR managers understand who is leaving, why they are leaving, and the financial impact of that attrition.



images: Contains screenshots of the dashboard (Main Dashboard, SQL Logic).
data_cleaning.py: Python script for initial data cleaning.
database_logic.sql: SQL code for Views and Transformation.
HR_Retention_Dashboard.pbix: The Power BI Source File.
HR_Database.db: SQLite Database file.
dashboard_data.csv: Final processed data used in the dashboard.


Tech Stack & Workflow

Step 1: Data Cleaning (Python)
Library: Pandas
Process: Loaded raw CSV data containing 1,470 employee records. Performed whitespace removal and column header sanitization to ensure data consistency before database ingestion.


Step 2: Data Transformation (SQL)
Database:SQLite
Logic: Instead of creating calculated columns in Power BI, I utilized SQL Views to create a persistent logic layer.
Key Techniques:
Used CREATE VIEW to build a virtual table named "Final_Analysis" to protect raw data.
Used CASE Statements to segment employees into calculating buckets directly in the database (e.g., grouping ages into Young, Mid-Level, and Senior; grouping satisfaction into Happy vs. Unhappy).



Step 3: Data Visualization (Power BI)
Design System: Implemented a modern "Card UI" layout with grey backgrounds and white containers for better visual hierarchy.
Key Metrics (KPIs): Tracked Total Attrition, Financial Impact (Average Monthly Income of leavers), and Demographic Risk.
Interactivity: Added Slicers for Job Role to allow dynamic filtering of the entire report.



Key Business Insights
Based on the analysis of the dataset, the following trends were identified:

1.High Financial Risk: The organization is losing experienced personnel. The average monthly salary of employees leaving is approximately $4,800, indicating that attrition is not limited to entry-level roles.
2. Role-Specific Churn: "Sales Representatives" have the highest turnover count, but "Research Directors" represent a higher cost-per-departure.
3. The Mid-Career Crisis: The majority of leavers belong to the "Mid-Level" (30-50 years old) age group, suggesting a potential lack of growth opportunities for experienced staff.

How to Run This Project

1. Clone the Repository: Download the project files to your local machine.
2. View the Database: Open the "HR_Database.db" file using DB Browser for SQLite to inspect the Tables and Views.
3. Run the Dashboard: Open the "HR_Retention_Dashboard.pbix" file in Power BI Desktop. (Note: If data does not load, go to Transform Data > Data Source Settings and repoint the CSV source to your local path.)

