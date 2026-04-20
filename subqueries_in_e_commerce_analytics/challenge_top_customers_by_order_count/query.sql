SELECT
    c.customer_id,
    c.name,
    agg.order_count
FROM customers c
JOIN (
    SELECT
        customer_id,
        COUNT(*) AS order_count
    FROM orders
    GROUP BY customer_id
) AS agg
    ON c.customer_id = agg.customer_id
ORDER BY
    agg.order_count DESC,
    c.customer_id ASC
LIMIT 3;