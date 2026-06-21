# Project 2 — Exploratory Data Analysis (EDA)

## Overview
Second project of my Data Analytics internship at DecodeLabs.
Using the cleaned dataset from Project 1, I performed a full 
Exploratory Data Analysis to uncover hidden patterns, trends, 
and outliers in 1,200 e-commerce orders.

## Dataset
- Records: 1,200 orders
- Columns: 14
- Date Range: January 2023 to June 2025
- Products: Laptop, Phone, Tablet, Monitor, Printer, Chair, Desk

## Workbook Structure

| Sheet | Contents |
|---|---|
| Orders (Clean Data) | 1,200 rows of cleaned raw data |
| EDA | Descriptive statistics and revenue analysis |
| Trends | Visual dashboard with 4 trend analyses |
| Outliers | IQR based outlier detection |
| Summary | Executive findings and recommendations |

## Key Findings

| # | Finding | Insight |
|---|---|---|
| 1 | Total Revenue = $1,264,762 | Generated across 1,200 orders |
| 2 | 61% orders failed | Cancelled, returned or stuck as pending |
| 3 | Chair = highest revenue at $195,620 | Despite Printer leading in order volume |
| 4 | TotalPrice is right skewed | Mean $1,053 vs Median $823 |
| 5 | Instagram = top channel (259 orders) | Most effective customer acquisition source |
| 6 | 8 high value outliers detected | Orders exceeding $3,330 threshold |
| 7 | Cart abandonment signal | Avg 5.5 items in cart but only 3 purchased |

## Outlier Analysis
- Method: IQR (Interquartile Range)
- Q1: $410.52 | Q3: $1,578.48 | IQR: $1,167.96
- Upper Fence: $3,330.41
- Outliers Found: 8 orders

## Tools Used
Microsoft Excel — Pivot Tables, Statistical Formulas, 
Bar Charts, Conditional Formatting

## Files
- EDA_Project2.xlsx — complete analysis workbook

## Status
✅ Completed | DecodeLabs Data Analytics Internship — Batch 2026