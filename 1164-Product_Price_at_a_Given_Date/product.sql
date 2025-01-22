WITH price_changes AS (
    SELECT 
        product_id, 
        new_price AS price, 
        change_date
    FROM Products
    WHERE change_date <= '2019-08-16'
),
latest_prices AS (
    SELECT 
        product_id, 
        price, 
        ROW_NUMBER() OVER (PARTITION BY product_id ORDER BY change_date DESC) AS rn
    FROM price_changes
)
SELECT 
    p.product_id, 
    COALESCE(lp.price, 10) AS price
FROM (SELECT DISTINCT product_id FROM Products) p
LEFT JOIN latest_prices lp 
ON p.product_id = lp.product_id AND lp.rn = 1

UNION

SELECT product_id, 10 AS price
FROM Products
WHERE product_id NOT IN (SELECT product_id FROM price_changes);
