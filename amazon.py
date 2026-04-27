import pandas as pd

# Read the cvs file
df = pd.read_csv(r"C:\Users\jindo\Amazon_sale_Correct1.csv")

# Get the basic information
print(df.head())
print(df.shape)
print(df.isna().sum())
print(df.duplicated().sum())

# Once we run it first, we get the missing value, and then we clean them
df = df.dropna(subset = ["rating", "rating_count"])

# Check the cleaning data
print("After cleaning:")
print(df.shape)
print(df.isna().sum())
print(df.duplicated().sum())

df.to_csv("Amazon_sale_cleaned.csv", index = False)


#____________________________________________________________________
# Product level table
df = pd.read_csv("Amazon_sale_cleaned.csv")

product_cols = [
    "product_id", "product_name", "category",
    "discounted_price", "actual_price", "discount_percentage",
    "rating", "rating_count", "about_product",
    "img_link", "product_link"
]

product_df = df[product_cols].drop_duplicates(subset = ["product_id"]).copy()

print(product_df.shape)
print(product_df.head())

product_df.to_csv("product_level_table.csv", index = False)


#____________________________________________________________________
# Product review table
review_cols = [
    "product_id", "user_id", "review_id",
    "user_name", "review_title", "review_content"
]

review_df = df[review_cols].copy()

review_df.to_csv("review_level_table.csv", index = False)

