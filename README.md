# 📊 HR Retention Analysis & Dashboard

### End-to-End Data Analytics Pipeline
**Tools:**Python (Pandas) | SQL (SQLite) | Power BI


![image alt](https://github.com/nitinsinha29/HR-Analytics/blob/522b76745c8db144da9608f615a3208c91ee2cd0/Dashboard.jpg)



## 📖 Project Overview
This project is an end-to-end data analytics solution designed to analyze employee attrition (churn). 

Instead of relying solely on visualization tools, I simulated a **real-world data pipeline**:
1.  **Ingestion & Cleaning:** Python (Pandas) to sanitize raw data.
2.  **Transformation & Logic:** SQL (SQLite) to handle business logic and grouping via Views.
3.  **Visualization:** Power BI to build an interactive corporate dashboard for strategic decision-making.

The dashboard helps HR managers understand **who** is leaving, **why** they are leaving, and the **financial impact** of that attrition.

---

## 📂 Repository Structure
* `images/`: Contains screenshots of the dashboard.
* `data_cleaning.py`: Python script for initial data cleaning.
* `database_logic.sql`: SQL code for Views and Business Logic.
* `HR_Retention_Dashboard.pbix`: The Power BI Source File.
* `HR_Database.db`: SQLite Database file.
* `dashboard_data.csv`: Final processed data used in the dashboard.

---

## 🛠 Tech Stack & Workflow

### Step 1: Data Cleaning (Python) 🐍
* **Library:** Pandas
* **Process:** Loaded raw CSV data containing 1,470 employee records. Performed whitespace removal and column header sanitization to ensure data consistency before database ingestion.

### Step 2: Data Transformation (SQL) 🗄️
* **Database:** SQLite
* **Logic:** Instead of creating calculated columns in Power BI, I utilized **SQL Views** to create a persistent logic layer.
* **Key Techniques:**
    * Used `CREATE VIEW` to build a virtual table named `Final_Analysis` to protect raw data.
    * Used `CASE` Statements to segment employees into calculating buckets directly in the database (e.g., grouping ages into "Young", "Mid-Level", and "Senior").

### Step 3: Data Visualization (Power BI) 📊
* **Design System:** Implemented a modern "Card UI" layout with grey backgrounds and white containers for visual hierarchy.
* **Key Metrics (KPIs):** Tracked Total Attrition, Financial Impact (Average Monthly Income of leavers), and Demographic Risk.
* **Interactivity:** Added Slicers for Job Role to allow dynamic filtering.

---

## 💡 Key Business Insights
Based on the analysis, the following trends were identified:

1.  **High Financial Risk:** The organization is losing experienced personnel. The average monthly salary of employees leaving is approximately **4.8K**, indicating that attrition is not limited to entry-level roles.
2.  **Role-Specific Churn:** "Sales Representatives" have the highest turnover *count*, but "Research Directors" represent a higher *cost-per-departure*.
3.  **The Mid-Career Crisis:** The majority of leavers belong to the **"Mid-Level" (30-50 years old)** age group, suggesting a potential lack of growth opportunities for experienced staff.

---

## 🚀 How to Run This Project
1.  **Clone the Repository:**
    ```bash
    git clone [https://github.com/nitinsinha29/HR-Analytics.git](https://github.com/nitinsinha29/HR-Analytics.git)
    ```
2.  **View the Database:** Open the `HR_Database.db` file using **DB Browser for SQLite** to inspect the Tables and Views.
3.  **Run the Dashboard:** Open `HR_Retention_Dashboard.pbix` in Power BI Desktop.
    * *Note: If data does not load, go to `Transform Data > Data Source Settings` and change the CSV source path to your local machine.*

---

### 👤 Author
**Nitin Sinha**
* [LinkedIn](https://www.linkedin.com/in/nitinsinha29)
* [GitHub Profile](https://github.com/nitinsinha29)














