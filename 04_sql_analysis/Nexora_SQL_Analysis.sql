CREATE DATABASE nexora_sales_analysis;
USE nexora_sales_analysis; 
SELECT DATABASE();
USE nexora_sales_analysis;

SELECT COUNT(*) AS Total_Records
FROM nexora_sales;

DESCRIBE nexora_sales;

SHOW COLUMNS FROM nexora_sales;

SELECT
    Opportunity_ID,
    Opportunity_Amount,
    Last_Activity_Date,
    Next_Followup_Date,
    Expected_Close_Date,
    Actual_Close_Date,
    Lead_Creation_Date
FROM nexora_sales
LIMIT 5;

ALTER TABLE nexora_sales
MODIFY Last_Activity_Date DATE,
MODIFY Next_Followup_Date DATE,
MODIFY Expected_Close_Date DATE,
MODIFY Actual_Close_Date DATE,
MODIFY Lead_Creation_Date DATE;

UPDATE nexora_sales
SET Actual_Close_Date = NULL
WHERE Actual_Close_Date = '';

SET SQL_SAFE_UPDATES = 0;

UPDATE nexora_sales
SET
    Last_Activity_Date = NULLIF(Last_Activity_Date, ''),
    Next_Followup_Date = NULLIF(Next_Followup_Date, ''),
    Expected_Close_Date = NULLIF(Expected_Close_Date, ''),
    Actual_Close_Date = NULLIF(Actual_Close_Date, ''),
    Lead_Creation_Date = NULLIF(Lead_Creation_Date, '');
    
    UPDATE nexora_sales
SET
    Last_Activity_Date = NULLIF(Last_Activity_Date, ''),
    Next_Followup_Date = NULLIF(Next_Followup_Date, ''),
    Expected_Close_Date = NULLIF(Expected_Close_Date, ''),
    Actual_Close_Date = NULLIF(Actual_Close_Date, ''),
    Lead_Creation_Date = NULLIF(Lead_Creation_Date, '');
    
    ALTER TABLE nexora_sales
MODIFY Opportunity_Amount DECIMAL(12,2);

DESCRIBE nexora_sales;

SHOW COLUMNS FROM nexora_sales;

SELECT
    COLUMN_NAME,
    DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'nexora_sales_analysis'
AND TABLE_NAME = 'nexora_sales';

ALTER TABLE nexora_sales
MODIFY COLUMN Last_Activity_Date DATE NULL;

SHOW COLUMNS FROM nexora_sales
LIKE 'Last_Activity_Date';

ALTER TABLE nexora_sales
MODIFY COLUMN Next_Followup_Date DATE NULL,
MODIFY COLUMN Expected_Close_Date DATE NULL,
MODIFY COLUMN Actual_Close_Date DATE NULL,
MODIFY COLUMN Lead_Creation_Date DATE NULL;

DESCRIBE nexora_sales;

SET SQL_SAFE_UPDATES = 1;

SELECT
    Opportunity_Status,
    COUNT(*) AS Total_Opportunities
FROM nexora_sales
GROUP BY Opportunity_Status;
SELECT
    Opportunity_Status,
    SUM(Opportunity_Amount) AS Total_Amount
FROM nexora_sales
GROUP BY Opportunity_Status;

SELECT
    Opportunity_ID,
    Sales_Representative,
    Opportunity_Amount,
    Next_Followup_Date,
    Opportunity_Status
FROM nexora_sales
WHERE Opportunity_Status = 'Open'
AND Next_Followup_Date < '2026-10-31'
ORDER BY Next_Followup_Date;

SELECT
    COUNT(*) AS Overdue_Opportunities,
    SUM(Opportunity_Amount) AS Overdue_Pipeline_Value
FROM nexora_sales
WHERE Opportunity_Status = 'Open'
AND Next_Followup_Date < '2026-10-31';

SELECT
    Opportunity_ID,
    Sales_Representative,
    Opportunity_Amount,
    Last_Activity_Date
FROM nexora_sales
WHERE Opportunity_Status = 'Open'
AND Last_Activity_Date < '2026-10-01'
ORDER BY Last_Activity_Date;

SELECT
    COUNT(*) AS Stale_Opportunities,
    SUM(Opportunity_Amount) AS Stale_Pipeline_Value
FROM nexora_sales
WHERE Opportunity_Status = 'Open'
AND Last_Activity_Date < '2026-10-01';

SELECT
    Opportunity_ID,
    Sales_Representative,
    Opportunity_Amount,
    Expected_Close_Date
FROM nexora_sales
WHERE Opportunity_Status = 'Open'
AND Expected_Close_Date < '2026-10-31'
ORDER BY Expected_Close_Date;


SELECT
    COUNT(*) AS Past_Due_Opportunities,
    SUM(Opportunity_Amount) AS Past_Due_Pipeline_Value
FROM nexora_sales
WHERE Opportunity_Status = 'Open'
AND Expected_Close_Date < '2026-10-31';

SELECT
    Sales_Representative,
    Opportunity_Status,
    COUNT(*) AS Total_Opportunities,
    SUM(Opportunity_Amount) AS Total_Amount
FROM nexora_sales
GROUP BY
    Sales_Representative,
    Opportunity_Status
ORDER BY
    Sales_Representative,
    Opportunity_Status;
    
    SELECT
    Sales_Representative,
    COUNT(*) AS Total_Opportunities,
    SUM(CASE WHEN Opportunity_Status = 'Won' THEN 1 ELSE 0 END) AS Won,
    SUM(CASE WHEN Opportunity_Status = 'Lost' THEN 1 ELSE 0 END) AS Lost,
    SUM(CASE WHEN Opportunity_Status = 'Open' THEN 1 ELSE 0 END) AS Open,
    SUM(CASE WHEN Opportunity_Status = 'Won'
        THEN Opportunity_Amount ELSE 0 END) AS Won_Revenue,
    SUM(CASE WHEN Opportunity_Status = 'Open'
        THEN Opportunity_Amount ELSE 0 END) AS Open_Pipeline
FROM nexora_sales
GROUP BY Sales_Representative
ORDER BY Sales_Representative;

SELECT
    Sales_Representative,
    COUNT(*) AS Overdue_Opportunities,
    SUM(Opportunity_Amount) AS Overdue_Pipeline_Value
FROM nexora_sales
WHERE Opportunity_Status = 'Open'
AND Next_Followup_Date < '2026-10-31'
GROUP BY Sales_Representative
ORDER BY Overdue_Opportunities DESC;

SELECT
    Sales_Representative,
    COUNT(*) AS Open_Opportunities,
    SUM(CASE
        WHEN Next_Followup_Date < '2026-10-31'
        THEN 1 ELSE 0
    END) AS Overdue_Opportunities,
    ROUND(
        SUM(CASE
            WHEN Next_Followup_Date < '2026-10-31'
            THEN 1 ELSE 0
        END) * 100.0 / COUNT(*),
        2
    ) AS Overdue_Rate
FROM nexora_sales
WHERE Opportunity_Status = 'Open'
GROUP BY Sales_Representative
ORDER BY Overdue_Rate DESC;

SELECT
    COUNT(*) AS Closed_Opportunities,
    SUM(CASE WHEN Opportunity_Status = 'Won'
        THEN 1 ELSE 0 END) AS Won_Opportunities,
    ROUND(
        SUM(CASE WHEN Opportunity_Status = 'Won'
            THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Win_Rate
FROM nexora_sales
WHERE Opportunity_Status IN ('Won', 'Lost');

SELECT
    Opportunity_Stage,
    COUNT(*) AS Total_Opportunities,
    SUM(Opportunity_Amount) AS Total_Pipeline_Value
FROM nexora_sales
WHERE Opportunity_Status = 'Open'
GROUP BY Opportunity_Stage
ORDER BY Total_Pipeline_Value DESC;

SELECT
    Opportunity_Stage,
    SUM(Opportunity_Amount) AS Stage_Value,
    ROUND(
        SUM(Opportunity_Amount) * 100.0 /
        (SELECT SUM(Opportunity_Amount)
         FROM nexora_sales
         WHERE Opportunity_Status = 'Open'),
        2
    ) AS Pipeline_Share_Percent
FROM nexora_sales
WHERE Opportunity_Status = 'Open'
GROUP BY Opportunity_Stage
ORDER BY Pipeline_Share_Percent DESC;

SELECT
    COUNT(*) AS Total_Open,
    SUM(CASE
        WHEN Next_Followup_Date < '2026-10-31'
        THEN 1 ELSE 0
    END) AS Overdue,
    SUM(CASE
        WHEN Last_Activity_Date < '2026-10-01'
        THEN 1 ELSE 0
    END) AS Stale,
    SUM(CASE
        WHEN Next_Followup_Date < '2026-10-31'
        AND Last_Activity_Date < '2026-10-01'
        THEN 1 ELSE 0
    END) AS Both_Overdue_And_Stale,
    SUM(CASE
        WHEN Next_Followup_Date < '2026-10-31'
        OR Last_Activity_Date < '2026-10-01'
        THEN 1 ELSE 0
    END) AS Unique_Risk_Opportunities
FROM nexora_sales
WHERE Opportunity_Status = 'Open';

SELECT
    CASE
        WHEN Next_Followup_Date < '2026-10-31'
        AND Last_Activity_Date < '2026-10-01'
        THEN 'Overdue and Stale'

        WHEN Next_Followup_Date < '2026-10-31'
        THEN 'Overdue Only'

        WHEN Last_Activity_Date < '2026-10-01'
        THEN 'Stale Only'

        ELSE 'No Risk Flag'
    END AS Risk_Category,

    COUNT(*) AS Total_Opportunities,
    SUM(Opportunity_Amount) AS Pipeline_Value

FROM nexora_sales
WHERE Opportunity_Status = 'Open'
GROUP BY Risk_Category
ORDER BY Total_Opportunities DESC; 	

SELECT
    Opportunity_ID,
    Sales_Representative,
    Opportunity_Amount,
    Last_Activity_Date,
    Next_Followup_Date
FROM nexora_sales
WHERE Opportunity_Status = 'Open'
AND Next_Followup_Date < '2026-10-31'
ORDER BY Opportunity_Amount DESC;

SELECT *
FROM nexora_sales
WHERE Opportunity_ID = 'OPP030';

SELECT
    COUNT(*) AS Both_Overdue_And_Past_Close,
    SUM(Opportunity_Amount) AS Total_Pipeline_Value
FROM nexora_sales
WHERE Opportunity_Status = 'Open'
AND Next_Followup_Date < '2026-10-31'
AND Expected_Close_Date < '2026-10-31';

SELECT
    COUNT(*) AS Total_Records,
    COUNT(DISTINCT Opportunity_ID) AS Unique_Opportunity_IDs,
    COUNT(*) - COUNT(DISTINCT Opportunity_ID) AS Duplicate_IDs
FROM nexora_sales;

SELECT
    SUM(CASE WHEN Opportunity_ID IS NULL OR Opportunity_ID = '' THEN 1 ELSE 0 END) AS Missing_IDs,
    SUM(CASE WHEN Sales_Representative IS NULL OR Sales_Representative = '' THEN 1 ELSE 0 END) AS Missing_Representatives,
    SUM(CASE WHEN Opportunity_Amount IS NULL THEN 1 ELSE 0 END) AS Missing_Amounts,
    SUM(CASE WHEN Opportunity_Status IS NULL OR Opportunity_Status = '' THEN 1 ELSE 0 END) AS Missing_Status
FROM nexora_sales;

SELECT
    Opportunity_Status,
    COUNT(*) AS Total_Opportunities,
    SUM(
        CASE
            WHEN Opportunity_Status IN ('Won', 'Lost')
            AND Actual_Close_Date IS NULL
            THEN 1 ELSE 0
        END
    ) AS Missing_Actual_Close_Date
FROM nexora_sales
GROUP BY Opportunity_Status;