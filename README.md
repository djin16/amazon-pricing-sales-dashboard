
# Amazon Pricing and Sales Dashboard
## Dataset Source

The dataset used in this project comes from Kaggle.

Dataset: Amazon Sales Dataset  
Source: Kaggle
Link: https://www.kaggle.com/datasets/karkavelrajaj/amazon-sales-dataset
This dataset contains Amazon product information, including product names, categories, prices, discounts, ratings, rating counts, and customer review text.

## Project Overview
This project analyzes Amazon product pricing, discounts, ratings, review volume, and product performance. The goal is to identify high-performing products, risky products, discount patterns, and category-level insights.

## Tools Used
- Python
- Pandas
- SQL
- Power BI
- GitHub

## Dataset
The dataset includes product-level information such as product name, category, rating, rating count, actual price, discounted price, and review text.

# Amazon Pricing and Sales Dashboard

## Project Overview

This project analyzes Amazon product data to understand pricing, discounts, ratings, review volume, customer sentiment, and overall product performance.

The goal of this project is to identify:

- Top-performing products
- High-discount but low-rating products
- Product category trends
- Product performance segments
- Review and sentiment patterns

This project uses Python for data cleaning and feature engineering, SQL for data analysis, and Power BI for dashboard visualization.

---

## Tools Used

- Python
- Pandas
- NumPy
- SQL
- Power BI
- Jupyter Notebook
- GitHub

---

## Project Structure

amazon-pricing-sales-dashboard/
│
├── data/
│   └── processed/
│       ├── amazon_cleaned.csv
│       ├── product_level.csv
│       ├── review_level.csv
│       ├── product_level_scored.csv
│       ├── category_summary.csv
│       ├── segment_summary.csv
│       ├── review_level_scored.csv
│       └── product_dashboard_dataset.csv
│
├── scripts/
│   └── amazon.py
│
├── notebooks/
│   ├── eda_feature_engineering.ipynb
│   └── review_analysis_scoring.ipynb
│
├── sql/
│   └── Query.sql
│
├── powerbi/
│   └── amazon_pricing_sales_dashboard.pbix
│
├── dashboard/
│   └── screenshots/
│       ├── executive_overview.png
│       ├── pricing_efficiency.png
│       ├── product_opportunity.png
│       └── review_insights.png
│
├── reports/
│   └── final_report.pdf

## Key Features
- Data cleaning and type conversion
- Price and discount analysis
- Product performance scoring
- Sentiment score analysis
- Category and segment summary tables
- Power BI dashboard

## Files
- `notebooks/`: Python notebooks for cleaning and analysis
- `data/`: cleaned and processed CSV files
- `dashboard/`: Power BI dashboard file
- `screenshots/`: dashboard preview images
- `scripts/`: Python scripts

## Dashboard Preview
screenshots

## Key Insights
- Products with higher ratings and high review counts tend to have stronger performance scores.
- Some products have high discounts but relatively low ratings, which may indicate potential product quality or customer satisfaction issues.
- Category-level analysis helps compare average rating, discount, and product count across different product groups.

## Conclusion 
This project successfully cleaned and analyzed Amazon product data using Python, SQL, and Power BI. The final dashboard provides useful insights into product performance, category trends, discount patterns, review strength, and customer sentiment.

The analysis shows that strong product performance is usually related to a combination of high ratings, high review activity, reasonable discounts, and positive customer sentiment. The project also identifies high-risk products and hidden gem products, which can help businesses make better pricing, marketing, and product improvement decisions.

Overall, this project demonstrates practical data analysis skills, including data cleaning, feature engineering, SQL querying, dashboard building, and business insight generation.
