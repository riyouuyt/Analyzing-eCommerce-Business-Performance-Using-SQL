--calculating total revenue on each year
SELECT
    EXTRACT(YEAR FROM o.order_purchase_timestamp) AS year,
    SUM(i.price + i.freight_value) AS total_revenue
FROM orders o
JOIN order_items i ON o.order_id = i.order_id
WHERE o.order_status = 'delivered'
GROUP BY year
ORDER BY year;

--calculating total order cancellation on each year
SELECT 
	EXTRACT(YEAR FROM o.order_purchase_timestamp) AS year,
	COUNT(o.order_id) as total_cancellation
FROM orders o
WHERE o.order_status = 'canceled'
GROUP BY year
ORDER BY year;

-- top company revenue based on product category
SELECT
    year,
    product_category_name,
    total_revenue
FROM (
    SELECT
        EXTRACT(YEAR FROM o.order_purchase_timestamp) AS year,
        p.product_category_name,
        SUM(i.price + i.freight_value) AS total_revenue,
        ROW_NUMBER() OVER (PARTITION BY EXTRACT(YEAR FROM o.order_purchase_timestamp) 
						   ORDER BY SUM(i.price + i.freight_value) DESC) AS row_num
    FROM orders o
    JOIN order_items i ON o.order_id = i.order_id
    JOIN products p ON i.product_id = p.product_id
    WHERE o.order_status = 'delivered'
    GROUP BY year, p.product_category_name
) ranked
WHERE row_num = 1;

-- top canceled category product in each year
SELECT
    year,
    product_category_name,
    total_cancellation
FROM (
    SELECT
        EXTRACT(YEAR FROM o.order_purchase_timestamp) AS year,
        p.product_category_name,
        COUNT(o.order_id) AS total_cancellation,
        ROW_NUMBER() OVER (PARTITION BY EXTRACT(YEAR FROM o.order_purchase_timestamp) 
						   ORDER BY COUNT(o.order_id) DESC) AS row_num
    FROM orders o
    JOIN order_items i ON o.order_id = i.order_id
    JOIN products p ON i.product_id = p.product_id
    WHERE o.order_status = 'canceled'
    GROUP BY year, p.product_category_name
) ranked
WHERE row_num = 1;

-- combine all the query into one
WITH TopRevenue AS (
    SELECT
        EXTRACT(YEAR FROM o.order_purchase_timestamp) AS year,
        p.product_category_name,
        SUM(i.price + i.freight_value) AS total_revenue,
        ROW_NUMBER() OVER (PARTITION BY EXTRACT(YEAR FROM o.order_purchase_timestamp) ORDER BY SUM(i.price + i.freight_value) DESC) AS row_num
    FROM orders o
    JOIN order_items i ON o.order_id = i.order_id
    JOIN products p ON i.product_id = p.product_id
    WHERE o.order_status = 'delivered'
    GROUP BY year, p.product_category_name
),
TopCancellations AS (
    SELECT
        EXTRACT(YEAR FROM o.order_purchase_timestamp) AS year,
        p.product_category_name,
        COUNT(o.order_id) AS total_cancellations,
        ROW_NUMBER() OVER (PARTITION BY EXTRACT(YEAR FROM o.order_purchase_timestamp) ORDER BY COUNT(o.order_id) DESC) AS row_num
    FROM orders o
    JOIN order_items i ON o.order_id = i.order_id
    JOIN products p ON i.product_id = p.product_id
    WHERE o.order_status = 'canceled'
    GROUP BY year, p.product_category_name
)
SELECT
    r.year,
    r.product_category_name AS top_revenue_category_products,
    r.total_revenue,
    c.product_category_name AS top_cancellations_category_products,
    c.total_cancellations
FROM TopRevenue r
JOIN TopCancellations c ON r.year = c.year AND r.row_num = 1 AND c.row_num = 1;
