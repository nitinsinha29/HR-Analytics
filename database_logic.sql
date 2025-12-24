-- Database Logic for HR Dashboard
-- Created View to clean data and create buckets
CREATE VIEW Final_Analysis AS
SELECT 
    Department,
    JobRole,
    Attrition,
    MonthlyIncome,
    Age,
    
    -- Age Grouping Logic
    CASE 
        WHEN Age < 30 THEN 'Young'
        WHEN Age BETWEEN 30 AND 50 THEN 'Mid-Level'
        ELSE 'Senior' 
    END AS Age_Group,

    -- Satisfaction Logic
    CASE 
        WHEN JobSatisfaction <= 2 THEN 'Unhappy'
        ELSE 'Happy' 
    END AS Satisfaction_Status
    
FROM employees;