\# SQL Queries Explanation



\## Project

\*\*Netflix Content Analysis\*\*



This document explains the purpose and business value of each SQL query used in this project.



\---



### \# SECTION 1 – KPI Analysis



###### \## Query 1 – Total Titles



\### Objective

Calculate the total number of titles available on Netflix.



\### SQL Concept

COUNT()



\### Business Value

Used to populate the \*\*Total Titles\*\* KPI card in the Power BI dashboard.



\---



###### \## Query 2 – Total Movies



\### Objective

Count the total number of movies.



\### SQL Concept

COUNT(), WHERE



\### Business Value

Used for the \*\*Total Movies\*\* KPI card.



\---



###### \## Query 3 – Total TV Shows



\### Objective

Count the total number of TV Shows.



\### SQL Concept

COUNT(), WHERE



\### Business Value

Used for the \*\*Total TV Shows\*\* KPI card.



\---



###### \## Query 4 – Total Countries



\### Objective

Find the number of unique countries represented in the dataset.



\### SQL Concept

COUNT(DISTINCT)



\### Business Value

Shows Netflix's global content coverage.



\---



###### \# SECTION 2 – Dashboard Analysis



\## Query 5 – Movies vs TV Shows



\### Objective

Compare the distribution of Movies and TV Shows.



\### SQL Concept

GROUP BY



\### Business Value

Used in the Donut Chart.



\---



###### \## Query 6 – Top 10 Countries



\### Objective

Identify the countries contributing the highest number of titles.



\### SQL Concept

GROUP BY, ORDER BY, LIMIT



\### Business Value

Used in the Top 10 Countries chart.



\---



###### \## Query 7 – Release Trend



\### Objective

Analyze how Netflix content has changed over the years.



\### SQL Concept

GROUP BY



\### Business Value

Used in the Release Year Line Chart.



\---



###### \## Query 8 – Rating Distribution



\### Objective

Find the most common content ratings.



\### SQL Concept

GROUP BY



\### Business Value

Used in the Rating Distribution chart.



\---



###### \## Query 9 – Genre Analysis



\### Objective

Identify the most common genre combinations.



\### SQL Concept

GROUP BY



\### Business Value

Supports genre analysis in the dashboard.



\---



###### \## Query 10 – Top Release Years



\### Objective

Identify the years with the highest number of releases.



\### SQL Concept

GROUP BY, ORDER BY



\### Business Value

Highlights periods of rapid content growth.



\---



### \# SECTION 3 – Advanced SQL



###### \## Query 11 – Top Directors



\### SQL Concepts

GROUP BY

ORDER BY

LIMIT



\---



###### \## Query 12 – Top Actors



\### SQL Concepts

GROUP BY

ORDER BY

LIMIT



\---



###### \## Query 13 – Longest Movies



\### SQL Concepts

CAST()

ORDER BY



\---



###### \## Query 14 – Movies Released After 2015



\### SQL Concepts

WHERE

ORDER BY



\---



###### \## Query 15 – Percentage of Movies vs TV Shows



\### SQL Concepts

Subquery

ROUND()



\---



###### \## Query 16 – Country Ranking



\### SQL Concepts

Window Function

RANK()



\---



###### \## Query 17 – Dense Ranking of Release Years



\### SQL Concepts

DENSE\_RANK()



\---



###### \## Query 18 – Running Total



\### SQL Concepts

SUM() OVER()



\---



###### \## Query 19 – Year-over-Year Growth



\### SQL Concepts

CTE

LAG()



\---



###### \## Query 20 – Top Performing Countries



\### SQL Concepts

CTE

ORDER BY

LIMIT



\---



###### \# SQL Skills Demonstrated



\- SELECT

\- WHERE

\- GROUP BY

\- ORDER BY

\- LIMIT

\- DISTINCT

\- Aggregate Functions

\- Window Functions

\- Common Table Expressions (CTE)

\- RANK()

\- DENSE\_RANK()

\- LAG()

\- SUM() OVER()

\- Subqueries

\- Data Type Conversion

