-- query for checking the most favorite payment type that customer use
SELECT
    payment_type,
    COUNT(payment_type) AS total_favorite_payment
FROM order_payments
GROUP BY payment_type
ORDER BY total_favorite_payment DESC;

-- display total payment type for each year
SELECT  
	EXTRACT(YEAR FROM o.order_purchase_timestamp) as year,
	payment_type,
    COUNT(payment_type) AS total_favorite_payment_by_year
FROM order_payments op
JOIN orders o ON op.order_id = o.order_id
GROUP BY year, op.payment_type
ORDER BY year, total_favorite_payment_by_year DESC, op.payment_type;
