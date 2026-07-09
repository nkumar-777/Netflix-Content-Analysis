# Exploratory Data Analysis (EDA)

## Project
**Netflix Content Analysis**

## Objective

The objective of the Exploratory Data Analysis (EDA) phase was to understand the structure of the Netflix dataset, identify patterns, detect data quality issues, and generate insights before building the interactive Power BI dashboard.

---

# Dataset Overview

- Dataset Name: Netflix Movies and TV Shows
- Total Records: **8,807**
- Total Features: **12**

## Dataset Columns

| Column Name | Description |
|-------------|-------------|
| show_id | Unique identifier for each title |
| type | Movie or TV Show |
| title | Name of the content |
| director | Director of the content |
| cast | Cast members |
| country | Country of production |
| date_added | Date added to Netflix |
| release_year | Year of release |
| rating | Content rating |
| duration | Duration of the content |
| listed_in | Genre/category |
| description | Brief description |

---

# Data Quality Assessment

The dataset was explored to identify:

- Missing values
- Duplicate records
- Incorrect data types
- Blank fields
- Data consistency

### Findings

- Missing values existed in:
  - Director
  - Cast
  - Country
  - Rating
  - Date Added

- Duplicate records were checked and removed where necessary.

- Data types were validated before analysis.

---

# Exploratory Analysis Performed

## 1. Content Distribution

Objective:

Determine the number of Movies and TV Shows available on Netflix.

Observation:

Movies represent the majority of Netflix's catalog.

---

## 2. Release Year Analysis

Objective:

Analyze how Netflix's content library has grown over time.

Observation:

A significant increase in content releases occurred after 2015.

---

## 3. Country Analysis

Objective:

Identify the countries contributing the highest number of titles.

Observation:

The United States contributes the largest number of titles, followed by India and the United Kingdom.

---

## 4. Genre Analysis

Objective:

Identify the most common genres available on Netflix.

Observation:

Drama and International content are among the most frequently occurring categories.

---

## 5. Rating Analysis

Objective:

Analyze the distribution of content ratings.

Observation:

TV-MA and TV-14 are the most common ratings, indicating a strong focus on mature and teenage audiences.

---

# KPI Analysis

The following Key Performance Indicators (KPIs) were calculated:

- Total Titles
- Total Movies
- Total TV Shows
- Total Countries

These KPIs provide a quick summary of Netflix's content library.

---

# Dashboard Visualizations

The following visualizations were developed based on the EDA findings:

- KPI Cards
- Line Chart (Release Year Trend)
- Donut Chart (Movies vs TV Shows)
- Bar Chart (Top 10 Countries)
- Bar Chart (Top 10 Genres)
- Bar Chart (Rating Distribution)
- Interactive Slicers

---

# Key Findings

- Netflix contains **8,807** titles.
- Movies account for approximately **70%** of the total content.
- The United States is the leading content-producing country.
- Content releases increased rapidly after 2015.
- TV-MA is the most common content rating.
- Drama and International genres dominate the platform.

---

# Business Value

The EDA process helped transform raw data into meaningful business information by:

- Understanding content distribution
- Identifying global production trends
- Recognizing audience preferences
- Supporting dashboard design
- Enabling data-driven decision making

---

# Conclusion

Exploratory Data Analysis provided the foundation for the dashboard by identifying key trends, validating data quality, and uncovering actionable insights. These findings guided the selection of KPIs, visualizations, and business recommendations presented in the final Power BI dashboard.