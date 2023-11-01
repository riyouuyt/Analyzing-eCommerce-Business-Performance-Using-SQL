-- 1. Average Monthly Active Customers for Each Year --
SELECT 
    year,
    ROUND(AVG(monthly_active_users)) AS avg_monthly_active_users
FROM (
    SELECT
        EXTRACT(YEAR FROM order_purchase_timestamp) AS year,
        EXTRACT(MONTH FROM order_purchase_timestamp) AS month,
        COUNT(DISTINCT customer_id) AS monthly_active_users
    FROM orders
    GROUP BY year, month
) AS monthly
GROUP BY year
ORDER BY year;

-- 2. Number of New Customers in Each Year --
SELECT 
    EXTRACT(YEAR FROM first_date_order) AS year,
    COUNT(*) AS new_customers
FROM (
    SELECT 
        c.customer_unique_id, 
        MIN(o.order_purchase_timestamp) AS first_date_order
    FROM 
        orders o 
    JOIN 
        customers c 
        ON o.customer_id = c.customer_id 
    GROUP BY 
        1
) AS first_order
GROUP BY 
    year
ORDER BY 
    year;


-- 3. Number of Repeat Customers in Each Year --
SELECT 
    year,
    COUNT(DISTINCT customer_unique_id) AS repeat_customers
FROM (
    SELECT 
        EXTRACT(YEAR FROM o.order_purchase_timestamp) AS year,
        c.customer_unique_id
    FROM orders o 
    JOIN customers c ON o.customer_id = c.customer_id
    GROUP BY year, c.customer_unique_id
    HAVING COUNT(o.order_id) > 1
) AS repeat_order
GROUP BY year
ORDER BY year;


-- 4. average number of orders placed by customers
SELECT
    EXTRACT(YEAR FROM o.order_purchase_timestamp) AS year,
    ROUND(AVG(order_count), 2) AS avg_num_orders
FROM orders o
INNER JOIN (
    SELECT
        customer_id,
        EXTRACT(YEAR FROM order_purchase_timestamp) AS year,
        COUNT(*) AS order_count
    FROM orders
    GROUP BY customer_id, EXTRACT(YEAR FROM order_purchase_timestamp)  -- Include the EXTRACT function in GROUP BY
) AS customer_orders
ON o.customer_id = customer_orders.customer_id
GROUP BY EXTRACT(YEAR FROM o.order_purchase_timestamp)  -- Include the EXTRACT function in GROUP BY
ORDER BY year;


-- combine all the result
WITH avg_cust AS (
		SELECT 
			year,
    		ROUND(AVG(monthly_active_users)) AS avg_monthly_active_users
		FROM (
			SELECT
			EXTRACT(YEAR FROM order_purchase_timestamp) AS year,
			EXTRACT(MONTH FROM order_purchase_timestamp) AS month,
			COUNT(DISTINCT customer_id) AS monthly_active_users
			FROM orders
			GROUP BY year, month
		) AS monthly
		GROUP BY year
		ORDER BY year
	),
--table 2
	new_cust AS (
		SELECT 
			EXTRACT(YEAR FROM first_date_order) AS year,
			COUNT(*) AS new_customers
		FROM (
			SELECT 
        		c.customer_unique_id, 
        		MIN(o.order_purchase_timestamp) AS first_date_order
    		FROM 
        		orders o 
    		JOIN 
        		customers c 
				ON o.customer_id = c.customer_id 
    		GROUP BY 
        		1
		) AS first_order
		GROUP BY 
			year
		ORDER BY 
			year
),
--table 3
	rep_cust AS (
		SELECT 
    year,
    COUNT(DISTINCT customer_unique_id) AS repeat_customers
FROM (
    SELECT 
        EXTRACT(YEAR FROM o.order_purchase_timestamp) AS year,
        c.customer_unique_id
    FROM orders o 
    JOIN customers c ON o.customer_id = c.customer_id
    GROUP BY year, c.customer_unique_id
    HAVING COUNT(o.order_id) > 1
) AS repeat_order
GROUP BY year
ORDER BY year
),
--table 4
	avg_order AS (
		SELECT
			EXTRACT(YEAR FROM o.order_purchase_timestamp) AS year,
			ROUND(AVG(order_count), 2) AS avg_num_orders
		FROM orders o
		INNER JOIN (
			SELECT
			customer_id,
			EXTRACT(YEAR FROM order_purchase_timestamp) AS year,
			COUNT(*) AS order_count
    	FROM orders
    	GROUP BY customer_id, EXTRACT(YEAR FROM order_purchase_timestamp)  
		) AS customer_orders
		ON o.customer_id = customer_orders.customer_id
		GROUP BY EXTRACT(YEAR FROM o.order_purchase_timestamp)  
		ORDER BY year
)
--combine all the table earlier
SELECT 
	tmau.year, 
	tmau.avg_monthly_active_users, 
	tn.new_customers, 
	tr.repeat_customers, 
	tao.avg_num_orders

FROM avg_cust tmau
JOIN new_cust tn
ON tm.year = tn.year 
JOIN rep_cust tr
ON tm.year = tr.year 
JOIN avg_order tao
ON tm.year = ta.year 
ORDER BY year;
