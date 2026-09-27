# 📊 Customer Data Analytics Project

## Overview

This project is an end-to-end **Data Analytics project** focused on analyzing customer behavior and purchasing patterns.

The project covers the complete analytics workflow, starting from loading and cleaning the dataset in Python, performing Exploratory Data Analysis (EDA), analyzing the data using SQL Server, and finally building an interactive Power BI dashboard.

### Project Workflow

**Data Loading → Data Cleaning → EDA → SQL Analysis → Power BI Dashboard → Results**

---

## Dataset

The project uses a customer dataset containing information related to customer purchases and behavior.

Some of the important columns include:

- Customer ID
- Age
- Gender
- Item Purchased
- Category
- Purchase Amount
- Previous Purchases
- Review Rating
- Discount Applied
- Other customer-related attributes

The dataset was initially loaded into Python for data exploration and cleaning.

---

## Steps Performed

### 1. Data Loading

The dataset was loaded into Python using **Pandas**.

```python
import pandas as pd

df = pd.read_csv("customer.csv")

df.head()
2. Data Cleaning

The data was cleaned and prepared for analysis.

The following tasks were performed:

Checked for missing values
Checked and removed duplicate records
Corrected data types
Handled inconsistent values
Prepared the dataset for further analysis
3. Exploratory Data Analysis (EDA)

EDA was performed using Python, Pandas, Matplotlib, and Seaborn.

The analysis focused on:

Customer purchasing behavior
Product and category performance
Customer ratings
Discount usage
Purchase frequency
Customer segmentation
Relationships between different variables

Different charts and visualizations were used to identify trends and patterns in the data.

4. SQL Server Analysis

The cleaned dataset was loaded into Microsoft SQL Server for further analysis.

SQL queries were written to answer business-related questions such as:

Which products are purchased most frequently?
Which categories perform better?
How many customers are New, Returning, and Loyal?
What is the discount rate?
Which categories have higher ratings?
What are the purchasing patterns of different customer segments?

SQL concepts used include:

SELECT
WHERE
GROUP BY
ORDER BY
CASE
COUNT()
SUM()
AVG()
ROUND()
TOP
CTE
5. Power BI Dashboard

The analyzed data was connected to Power BI to create an interactive dashboard.

The dashboard provides insights into:

Customer overview
Customer segmentation
Product and category analysis
Purchase behavior
Ratings
Discount analysis
Key performance indicators (KPIs)

Interactive filters and slicers were added to make the dashboard easier to explore.

6. Presentation

Gamma was used to create a simple presentation summarizing the project, methodology, analysis, dashboard, and key findings.

Dashboard

The Power BI dashboard provides an interactive view of the customer data and helps users quickly understand important trends and patterns.

Dashboard Highlights
Customer KPIs
Customer segmentation
Product analysis
Category performance
Purchase analysis
Rating analysis
Discount analysis
Interactive filters and slicers

Add your Power BI dashboard screenshot here.

Results

The analysis helped identify important patterns in customer behavior, including:

Distribution of different customer segments
Frequently purchased products and categories
Customer purchasing patterns
Discount usage
Rating trends
Differences in purchasing behavior across customer groups

The results can help businesses better understand their customers and support data-driven decision-making.

How to Run
1. Clone the Repository
git clone https://github.com/your-username/customer-data-analytics.git
2. Navigate to the Project
cd customer-data-analytics
3. Install Required Python Libraries
pip install pandas numpy matplotlib seaborn jupyter
4. Run the Jupyter Notebook
jupyter notebook

Open the following notebook:

Customer_Analysis.ipynb

Run the notebook cells to perform data cleaning and EDA.

5. Run SQL Analysis

Open:

SQLQuery1.sql

Load the dataset into SQL Server and execute the SQL queries.

6. Open Power BI Dashboard

Open:

Customer_Analytics.pbix

Update the SQL Server connection if required and refresh the data.

Tools & Technologies
Python
Pandas
NumPy
Matplotlib
Seaborn
SQL Server
Power BI
Gamma
Jupyter Notebook
Git & GitHub
Project Structure
Customer-Data-Analytics/
│
├── data/
│   └── customer.csv
│
├── notebook/
│   └── Customer_Analysis.ipynb
│
├── sql/
│   └── SQLQuery1.sql
│
├── powerbi/
│   └── Customer_Analytics.pbix
│
├── presentation/
│   └── Customer_Analytics.pdf
│
└── README.md
Author

Siddharth Pathak

Aspiring Data Analyst | Python | SQL | Power BI | Data Analytics
