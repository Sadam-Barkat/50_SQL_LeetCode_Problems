# Write your MySQL query statement below
WITH cte AS
(SELECT 
      customer_id, COUNT(DISTINCT(product_key)) AS product_count
      FROM Customer
      GROUP BY customer_id
)      
SELECT 
      customer_id
      FROM cte 
      WHERE product_count = (SELECT COUNT(product_key) FROM product);
