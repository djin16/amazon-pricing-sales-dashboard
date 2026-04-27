-- amazon_pricing_sales_analysis.sql

-- 1. Overall summary
SELECT
    COUNT(DISTINCT product_id) AS total_products,
    COUNT(DISTINCT category) AS total_categories,
    AVG(rating) AS avg_rating,
    AVG(discount_percentage) AS avg_discount,
    AVG(rating_count) AS avg_rating_count
FROM amazon_sale_correct1;

-- 2. Category-level summary
SELECT
    category,
    COUNT(DISTINCT product_id) AS product_count,
    AVG(rating) AS avg_rating,
    AVG(rating_count) AS avg_rating_count,
    AVG(discount_percentage) AS avg_discount,

    AVG(
    CAST(
    REPLACE(REPLACE(discounted_price, '₹', ''), ',','')
    AS DECIMAL(10, 2)
    )
    ) AS avg_discounted_price

FROM amazon_sale_correct1
GROUP BY category
ORDER BY product_count DESC;

-- 3. High-performing products
SELECT
    product_id,
    product_name,
    category,
    rating,
    rating_count,
    discount_percentage
FROM amazon_sale_correct1
WHERE rating >= 4.2
ORDER BY rating_count DESC;

-- 4. High-discount but low-rating products
SELECT
    product_id,
    product_name,
    category,
    discount_percentage,
    rating,
    rating_count
FROM amazon_sale_correct1
WHERE discount_percentage >= 0.5
  AND rating < 3.0
ORDER BY discount_percentage DESC, rating ASC;

-- 5. Discount efficiency by category
SELECT
    category,
    AVG(rating * LN(rating_count + 1) / (1 + discount_percentage)) AS discount_efficiency_score,
    AVG(rating) AS avg_rating,
    AVG(rating_count) AS avg_rating_count,
    AVG(discount_percentage) AS avg_discount
FROM amazon_sale_correct1
GROUP BY category
ORDER BY discount_efficiency_score DESC;

-- 6. Rough product score
SELECT
    product_id,
    product_name,
    category,
    rating,
    rating_count,
    discount_percentage,
    (rating * 0.5) + (LN(rating_count + 1) * 0.3) + (discount_percentage * 0.2) AS rough_score
FROM amazon_sale_correct1
ORDER BY rough_score DESC;
