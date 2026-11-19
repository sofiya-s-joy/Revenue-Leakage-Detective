**REVENUE LEAKAGE DETECTIVE**

*Nexora Solutions – Sales Operations \& CRM Performance Intelligence*



**Business Analysis Portfolio Project**



*Reporting Snapshot: 31 October 2026*  

*Dataset: Synthetic Nexora Sales Opportunity Dataset*  

*Project Tools: Microsoft Excel, MySQL, Python, Power BI and Salesforce*







**1. Executive Summary**



Revenue Leakage Detective is a sales operations and business intelligence project developed around a fictional company, Nexora Solutions.



The project analyses sales opportunity data to understand the organisation's opportunity portfolio, evaluate sales performance, identify potential pipeline risks and recommend actions to improve follow-up discipline.



A dataset containing 30 sales opportunities and 13 fields was analysed using Microsoft Excel, MySQL, Python and Power BI. The findings were subsequently extended into Salesforce through opportunity data import, custom field configuration, reporting and dashboard development.



The analysis identified 12 open opportunities with overdue follow-ups, representing ₹63,90,000 in associated pipeline value. Ten open opportunities were also classified as stale based on the project's activity-date rule. All ten stale opportunities were included in the overdue group.



The project demonstrates how multiple analytical tools and a CRM platform can be used to transform raw sales data into actionable business information.



Key Findings



| Metric | Validated Result |

|---|---:|

| Total Opportunities | 30 |

| Total Opportunity Value | ₹1,65,50,000 |

| Open Opportunities | 20 |

| Open Pipeline | ₹1,05,80,000 |

| Closed-Won Opportunities | 6 |

| Won Revenue | ₹43,70,000 |

| Closed-Lost Opportunities | 4 |

| Lost Opportunity Value | ₹16,00,000 |

| Closed-Won Rate | 60% |

| Overdue Follow-ups | 12 |

| Pipeline Value Associated with Overdue Follow-ups | ₹63,90,000 |

| Stale Open Opportunities | 10 |

| Unique Overdue-or-Stale Opportunities | 12 |

| Open Opportunities Past Expected Close Date | 9 |



**Main business takeaway**: Sales managers should prioritise overdue customer follow-ups, investigate inactive opportunities and validate expected closing dates before treating pipeline values as reliable forecasts.



**2. Business Background and Problem Statement**



Nexora Solutions is a fictional business scenario created to demonstrate sales operations analysis.



Sales teams depend on accurate opportunity records, regular customer engagement and realistic expected closing dates to manage their sales pipeline.



When follow-up activities are delayed or opportunities remain inactive, managers may have limited visibility into which deals require attention.



The project addresses the following business questions:



1\. What is the current value and status of the opportunity portfolio?

2\. How is the open pipeline distributed across sales representatives and sales stages?

3\. Which open opportunities have overdue follow-ups?

4\. Which opportunities show signs of inactivity?

5\. Which opportunities have passed their expected closing dates?

6\. How can the findings be presented in a CRM and dashboard environment to support sales decisions?



**Problem Statement**



The organisation needs a structured approach to monitor opportunity performance, identify potential pipeline risks and improve the visibility of follow-up activities.



The project uses data analysis and CRM reporting to identify opportunities requiring investigation and recommend practical sales-management actions.



**3. Project Objectives and Scope**



*Objectives*



\- Examine and validate the opportunity dataset.

\- Calculate sales performance and opportunity portfolio metrics.

\- Identify overdue follow-ups and stale opportunities.

\- Analyse sales representative and sales stage performance.

\- Compare results across multiple analytical tools.

\- Develop interactive Power BI dashboards.

\- Implement the opportunity dataset in Salesforce.

\- Create CRM reports and dashboards.

\- Conduct User Acceptance Testing.

\- Present evidence-based business recommendations.



**Project Scope**



Included:

\- Data preparation and validation.

\- Excel-based analysis.

\- SQL queries and data validation.

\- Python-based data analysis.

\- Power BI dashboard development.

\- Salesforce opportunity import and configuration.

\- Salesforce reporting and dashboard development.

\- UAT and project documentation.



Not included:

\- Live integration with an operational company CRM.

\- Automated customer communication.

\- Predictive sales forecasting.

\- Production deployment or live customer transactions.



**4. Dataset Description and Data Preparation**



The project uses a synthetic sales opportunity dataset containing 30 records and 13 columns.



*Dataset Fields*



| Field | Description |

|---|---|

| Opportunity\_ID | Unique opportunity identifier |

| Lead\_ID | Related lead identifier |

| Sales\_Representative | Opportunity owner |

| Opportunity\_Stage | Current sales stage |

| Opportunity\_Amount | Opportunity value in INR |

| Opportunity\_Status | Open, Won or Lost |

| Last\_Activity\_Date | Date of most recent recorded activity |

| Next\_Followup\_Date | Scheduled next follow-up |

| Expected\_Close\_Date | Expected closing date |

| Actual\_Close\_Date | Actual closing date, where applicable |

| Lead\_Source | Source channel |

| Lead\_Creation\_Date | Lead creation date |

| Lead\_Status | Lead conversion status |



*Data Preparation*



The dataset was reviewed for record completeness, field consistency, duplicate identifiers and date formatting.



The reporting snapshot was fixed at 31 October 2026 to ensure consistent calculations across the analytical tools.



The following business rules were used:



\- An overdue opportunity is an open opportunity with a next follow-up date before 31 October 2026.

\- A stale opportunity is an open opportunity with a last activity date before 1 October 2026.

\- A past expected close opportunity is an open opportunity with an expected close date before 31 October 2026.



These rules distinguish follow-up delays, inactivity and delayed expected closing dates as separate business signals.



**5. Microsoft Excel Analysis**



Microsoft Excel was used for initial data examination, formula-based calculations, sales representative analysis and dashboard preparation.



Analysis Performed



The workbook included:



\- Dataset validation.

\- Opportunity status analysis.

\- Total opportunity value calculations.

\- Open pipeline and closed revenue calculations.

\- Overdue follow-up analysis.

\- Stale opportunity analysis.

\- Expected close date analysis.

\- Sales representative performance.

\- Summary dashboard.



Functions used included:



\- COUNTA

\- COUNTIF

\- COUNTIFS

\- SUMIF

\- SUMIFS

\- DATE



*Key Excel Findings*



The analysis identified 30 opportunities, consisting of 20 Open, 6 Won and 4 Lost records.



The closed-won rate was calculated as:



6 Won ÷ (6 Won + 4 Lost) × 100 = 60%



The analysis also identified 12 overdue open opportunities and 10 stale open opportunities.



Representative-level analysis compared open opportunity counts, pipeline values, won revenue and overdue follow-up rates.



Excel provided the initial analytical foundation and helped establish the key metrics used in subsequent tools.



**6. SQL Analysis**



MySQL Workbench was used to independently query and validate the Nexora dataset.



*Database: nexora\_sales\_analysis* 

*Table: nexora\_sales*



SQL Activities



The SQL analysis included:



\- Database and table inspection.

\- Record count validation.

\- Data type verification.

\- Opportunity status aggregation.

\- Opportunity value calculations.

\- Overdue follow-up identification.

\- Stale opportunity identification.

\- Past expected close date analysis.

\- Sales representative comparisons.

\- Duplicate identifier checks.

\- Missing critical field checks.



SQL concepts used included SELECT, WHERE, GROUP BY, ORDER BY, COUNT, SUM, COUNT(DISTINCT), CASE WHEN, subqueries and conditional filtering.



*SQL Validation Results*



| Validation | Result |

|---|---:|

| Total Records | 30 |

| Unique Opportunity IDs | 30 |

| Duplicate Opportunity IDs | 0 |

| Missing Critical IDs | 0 |

| Missing Critical Representatives | 0 |

| Missing Critical Amounts | 0 |

| Missing Critical Statuses | 0 |



The analysis also verified that closed opportunities had actual close dates recorded.



SQL provided an independent method of checking the calculations and identifying records requiring attention.



**7. Python Analysis**



Python was used to perform structured data inspection, transformation, filtering and analytical calculations.



Environment



\- Python 3.14.10

\- JupyterLab 4.6.5

\- Pandas 3.1.1



Analysis Performed



The Python workflow included:



1\. Importing Pandas and loading the CSV dataset.

2\. Inspecting dataset dimensions and column types.

3\. Checking missing values and duplicate records.

4\. Converting date columns into datetime format.

5\. Applying the fixed reporting date.

6\. Calculating opportunity status and value summaries.

7\. Creating overdue and stale risk flags.

8\. Identifying overlapping risk categories.

9\. Comparing overdue rates by sales representative.

10\. Analysing open pipeline by opportunity stage.

11\. Identifying opportunities with past expected close dates.

12\. Calculating the closed-won rate.

13\. Investigating high-priority opportunities.

14\. Exporting the findings into a CSV summary.



Pandas and NumPy were used for filtering, grouping, aggregation and risk classification.



*Key Python Findings*



The analysis identified:



| Risk Category | Opportunities | Pipeline Value |

|---|---:|---:|

| Overdue and Stale | 10 | ₹50,80,000 |

| Overdue Only | 2 | ₹13,10,000 |

| Stale Only | 0 | ₹0 |

| No Risk Flag | 8 | ₹41,90,000 |

| \*\*Total Open Opportunities\*\* | \*\*20\*\* | \*\*₹1,05,80,000\*\* |



The 12 unique opportunities with at least one overdue or stale risk indicator represented ₹63,90,000 in pipeline value.



Python also identified OPP030 as the highest-value overdue opportunity, owned by Meera, in the Negotiation stage and valued at ₹9,00,000.



The Python findings were exported for reuse in subsequent project stages.



**8. Power BI Dashboard and Business Insights**



Power BI was used to present the analytical findings through two interactive dashboard pages.



**Page 1 – Sales Performance Overview**



This page provides a high-level view of the opportunity portfolio.



It includes:



\- Total Opportunity Value.

\- Open Pipeline.

\- Won Revenue.

\- Lost Revenue.

\- Closed-Won Rate.

\- Opportunity Status Distribution.

\- Opportunity Value by Sales Stage.

\- Open Pipeline by Sales Representative.

\- Past Expected Close Value by Sales Representative.



The dashboard helps managers understand the distribution of opportunity value, sales ownership and closed versus open performance.



**Page 2 – Pipeline Risk Analysis**



This page focuses on open opportunities that may require sales-team attention.



It includes:



\- Overdue Follow-ups.

\- Overdue Follow-up Value.

\- Stale Opportunities.

\- Stale Opportunity Value.

\- Opportunities classified by risk category.

\- At-Risk Opportunity Value by Sales Representative.

\- At-Risk Opportunities by Sales Stage.



*Key Power BI Insights*



1\. Overdue Follow-ups



Twelve open opportunities had follow-up dates before the reporting cutoff, representing ₹63,90,000 in associated pipeline value.



2\. Stale Opportunities



Ten open opportunities worth ₹50,80,000 met the project's stale-activity rule.



3\. Risk Overlap



All ten stale opportunities were also overdue. Therefore, the two risk values must not be added together.



The unique affected population consisted of 12 opportunities worth ₹63,90,000.



4\. Past Expected Close Dates



Nine open opportunities worth ₹46,10,000 had expected close dates before 31 October 2026.



This is a separate indicator from overdue follow-ups.



5\. Open Pipeline Distribution by Stage



| Stage | Share of Open Pipeline |

|---|---:|

| Negotiation | 42.53% |

| Proposal | 33.08% |

| Needs Analysis | 16.16% |

| Qualification | 8.22% |



Negotiation represented the largest share of the open pipeline.



6\. Sales Representative Follow-up Rates



| Representative | Overdue Follow-up Rate |

|---|---:|

| Rahul | 75% |

| Meera | 75% |

| Priya | 66.67% |

| Asha | 60% |

| Arjun | 25% |



These rates identify areas for management review. They should not be treated as proof of individual performance without considering workload, opportunity complexity and customer circumstances.



*Power BI Validation*



The dashboard's core totals and risk classifications were cross-checked against Excel, SQL and Python results.



The validated totals and risk breakdowns matched the underlying analysis.



**9. Salesforce CRM Implementation**



Salesforce was used to extend the project from analytical reporting into a CRM environment.



Data Import and Configuration



The Nexora opportunity dataset was prepared for Salesforce Data Loader.



The implementation included:



\- Preparing the opportunity import CSV.

\- Configuring custom Opportunity fields.

\- Mapping source data using Salesforce Data Loader.

\- Importing 30 opportunity records.

\- Reviewing the imported records.



Custom fields were configured to preserve source information:



\- Source Opportunity ID

\- Source Opportunity Status

\- Source Sales Representative

\- Source Next Follow-up Date



Record Validation



Two imported opportunities were selected for detailed validation.



OPP001



\- Amount: ₹2,50,000

\- Stage: Qualification

\- Status: Open

\- Sales Representative: Asha

\- Next Follow-up Date: 08/11/2026



OPP030



\- Amount: ₹9,00,000

\- Sales Representative: Meera

\- Status: Open

\- Next Follow-up Date: 25/07/2026



The selected fields matched the original Nexora dataset.



**Salesforce Report**



A report named **Nexora Opportunity Analysis** was created.



The report displayed all 30 opportunity records and grouped them by stage.



A donut chart titled **Nexora Opportunities by Stage** was added to visualise the stage distribution.



**Salesforce Dashboard**



A dashboard named **Nexora Sales Performance Dashboard** was created.



It contains:



1\. A donut chart displaying opportunities by stage.

2\. A table component displaying opportunity records from the Salesforce report.



The dashboard provides a consolidated view of opportunity information for sales monitoring.



**10. User Acceptance Testing (UAT)**



UAT was conducted to verify that the Salesforce implementation met the intended functional and business requirements.



&#x20;**UAT Results**



| Test Area | Expected Result | Actual Result | Status |

|---|---|---|---|

| Record Completeness | 30 records available | All 30 present | PASS |

| OPP001 Validation | Source values match | All checked fields matched | PASS |

| OPP030 Validation | Source values match | All checked fields matched | PASS |

| Report Record Count | 30 records displayed | 30 records displayed | PASS |

| Report Stage Grouping | Correct grouping | Six groups, counts total 30 | PASS |

| Report Chart | All six stages visible | Confirmed | PASS |

| Dashboard Components | Both components visible | Confirmed | PASS |

| Dashboard Chart | All six stages visible | Confirmed | PASS |

| Dashboard Table | Opportunity information visible | Confirmed | PASS |

| Table Internal Scrolling | Convenient internal scrolling | Not working during testing | OBSERVATION |

| Business Usability | Identify priority opportunity | OPP030 located successfully | PASS |

| Follow-up Recommendation | Identify overdue follow-up | Immediate follow-up recommended | PASS |



The underlying Salesforce report remained accessible and displayed all 30 records, despite the dashboard table's internal scrolling limitation.



Detailed field-level validation was performed on two sample records. This was not a field-by-field audit of all 30 opportunities.



**UAT Conclusion**



The planned UAT checks passed for record completeness, selected record validation, report configuration, dashboard visibility and business usability.



One minor dashboard table scrolling observation was documented for future improvement.



**11. Business Recommendations**



Based on the combined analysis, the following actions are recommended.



1\. Prioritise Overdue Follow-ups



Sales managers should review the 12 overdue opportunities worth ₹63,90,000.



Each owner should confirm the latest customer interaction, outstanding requirements and next agreed action.



2\. Investigate Stale Opportunities



The ten stale opportunities worth ₹50,80,000 should receive an engagement review.



Sales representatives should establish whether the opportunity remains active and document meaningful customer interactions.



3\. Address Overlapping Risks First



The ten opportunities classified as both overdue and stale should receive priority because both follow-up timing and activity recency indicate a need for attention.



4\. Review Past Expected Close Dates



The nine open opportunities worth ₹46,10,000 with past expected close dates should be reviewed individually.



Close dates should be revised only when supported by updated customer or procurement information.



5\. Improve Sales Pipeline Forecasting



Open pipeline value should not be treated as guaranteed or committed revenue.



Forecasting should consider customer evidence, opportunity stage, procurement progress, close-date credibility and the next confirmed buying step.



6\. Strengthen CRM Discipline



Sales representatives should maintain accurate opportunity records, update follow-up dates and record customer interactions consistently.



Managers should use CRM reports and dashboards to monitor exceptions and follow-up priorities.



7\. Improve Dashboard Usability



The dashboard table's internal scrolling behaviour should be reviewed and improved so users can navigate opportunity records more conveniently.



**12. Assumptions and Limitations**



\- The Nexora dataset is fictional and contains only 30 opportunity records.

\- The findings are intended for demonstration and portfolio purposes.

\- All calculations use a fixed reporting snapshot of 31 October 2026.

\- Overdue and stale definitions are project-specific date rules.

\- Pipeline exposure does not represent confirmed lost revenue.

\- The overdue and stale categories overlap and must not be added together.

\- The 60% closed-won rate is based on six Won opportunities out of ten closed opportunities. It is not an industry benchmark.

\- All 30 associated leads have Converted status. Therefore, this opportunity dataset alone cannot establish a lead-to-opportunity conversion rate.

\- Salesforce validation included two detailed sample records rather than a complete field-level audit of every imported record.

\- The Salesforce dashboard table had an internal scrolling limitation during UAT.

\- The project does not include live CRM integration, automated customer communication or predictive forecasting.



**13. Conclusion**



Revenue Leakage Detective demonstrates how business analysis, data analytics and CRM reporting can be combined to improve visibility into sales operations.



Excel provided the initial calculations and summary analysis. SQL enabled structured querying and independent validation. Python supported data transformation, risk classification and detailed analysis. Power BI translated the findings into interactive dashboards, while Salesforce extended the work into a CRM environment through opportunity import, custom fields, reports and dashboards.



The project identified 12 open opportunities requiring follow-up attention, representing ₹63,90,000 in associated pipeline value. It also demonstrated why overdue follow-ups, stale activity and past expected close dates must be analysed separately.



The key outcome is not simply the identification of pipeline risk, but the translation of that risk into practical recommendations for sales representatives and managers.



The project demonstrates an end-to-end analytical approach to understanding sales data, validating findings, communicating insights and supporting evidence-based business decisions.





**Project: Revenue Leakage Detective**  

**Business Scenario: Nexora Solutions – Sales Operations \& CRM Performance Intelligence**  

**Reporting Snapshot: 31 October 2026**  

**Project Status: Analysis, dashboards, Salesforce implementation and planned UAT checks completed.**

