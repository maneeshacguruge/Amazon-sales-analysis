-- Find the total sales
SELECT COUNT(*) AS total_sales FROM [Copy of sales data];

-- Find the total revenue of sales
SELECT SUM(discounted_price) AS total_revenue FROM [Copy of sales data];

-- Find the average discount of products
SELECT AVG(discounted_price) AS avg_discount FROM [Copy of sales data];

-- Top 10 best selling products
SELECT product_name, COUNT(*) AS sales_count
FROM [Copy of sales data]
GROUP BY product_name
ORDER BY sales_count DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;

-- Top categories by sales and revenue
SELECT category, COUNT(*) AS total_sales, SUM(discounted_price) AS total_revenue
FROM [Copy of sales data]
GROUP BY category
ORDER BY total_revenue DESC;

-- Count satisfied customers
SELECT COUNT(review_title) AS satisfied_people
FROM [Copy of sales data]
WHERE review_title LIKE 'satisfy';

-- Top 10 highest discount percentage products
SELECT product_name, discount_percentage
FROM [Copy of sales data]
ORDER BY discount_percentage DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;

-- Total earns and units sold by product
SELECT product_name, COUNT(sales_id) AS times_sold, SUM(discounted_price) AS total_earned
FROM [Copy of sales data]
GROUP BY product_name
ORDER BY total_earned DESC;

-- Top 10 products with rating count ≥ 100
SELECT product_name, rating, rating_count
FROM [Copy of sales data]
WHERE rating_count >= 100
ORDER BY rating DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;