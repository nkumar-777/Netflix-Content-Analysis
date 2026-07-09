# Data Cleaning Process

## Project
**Netflix Content Analysis**

## Objective
The raw Netflix dataset contained missing values and inconsistent data types that needed to be cleaned before performing exploratory data analysis (EDA) and building the Power BI dashboard.

---

# Data Cleaning Steps

## 1. Checked for Missing Values

Identified null or missing values in the following columns:

- director
- cast
- country
- date_added
- rating

---

## 2. Handled Missing Values

Missing values were replaced with **"UNKNOWN"** in the following columns:

- Director
- Cast
- Country
- Rating

This ensured consistency during analysis and prevented blank values from appearing in visualizations.

---

## 3. Verified Duplicate Records

Checked the dataset for duplicate records.

**Result:**
- No duplicate records were retained.

---

## 4. Standardized Date Format

Converted the `date_added` column into a consistent date format to enable proper filtering and analysis.

Example:

Before:
```
September 9, 2019
```

After:
```
09-09-2019
```

---

## 5. Corrected Data Types

Verified and assigned appropriate data types.

| Column | Data Type |
|---------|-----------|
| show_id | Text |
| type | Text |
| title | Text |
| director | Text |
| cast | Text |
| country | Text |
| date_added | Date |
| release_year | Whole Number |
| rating | Text |
| duration | Text |
| listed_in | Text |
| description | Text |

---


## 6. Verified Data Consistency

Performed validation checks to ensure:

- No incorrect data types
- No broken relationships
- No formatting inconsistencies
- Dashboard visuals displayed accurate values

---

# Dataset Summary

- Total Records: **8,807**
- Movies: **6,131**
- TV Shows: **2,676**
- Countries Represented: **749**

---

# Tools Used

- Microsoft Excel
- Power Query
- Power BI
- SQL Workbench 8.0 CE
---

# Outcome

The cleaned dataset was used to perform Exploratory Data Analysis (EDA) and develop an interactive Netflix Content Analysis Dashboard. The cleaning process improved data quality, ensured consistent formatting, and enabled accurate reporting and visualization.