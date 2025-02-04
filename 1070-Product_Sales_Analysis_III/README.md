# 1070. Product Sales Analysis III

## Problem Description

You are given a table `Sales` with the following columns:
- `product_id` (int): The ID of the product.
- `product_name` (varchar): The name of the product.
- `quantity` (int): The quantity of the product sold.
- `price` (decimal): The price per unit of the product.
- `order_date` (date): The date the order was placed.

You need to write a SQL query to retrieve the total quantity sold for each product, along with the product name, and the total revenue generated by each product (i.e., `quantity * price`). The results should be ordered by `total_revenue` in descending order. If two products have the same total revenue, order by `product_id` in ascending order.

The query should return the following columns:
- `product_id` (int): The ID of the product.
- `product_name` (varchar): The name of the product.
- `total_quantity` (int): The total quantity sold for the product.
- `total_revenue` (decimal): The total revenue generated by the product.

## Example

### Input:

| product_id | product_name | quantity | price | order_date |
|------------|--------------|----------|-------|------------|
| 1          | Product A    | 100      | 10.00 | 2022-01-01 |
| 2          | Product B    | 50       | 20.00 | 2022-01-02 |
| 1          | Product A    | 200      | 10.00 | 2022-01-03 |
| 3          | Product C    | 150      | 15.00 | 2022-01-04 |
| 2          | Product B    | 100      | 20.00 | 2022-01-05 |

### Output:

| product_id | product_name | total_quantity | total_revenue |
|------------|--------------|----------------|---------------|
| 1          | Product A    | 300            | 3000.00       |
| 2          | Product B    | 150            | 3000.00       |
| 3          | Product C    | 150            | 2250.00       |

### Explanation:
- Product A has a total quantity of 300 and a total revenue of `300 * 10.00 = 3000.00`.
- Product B has a total quantity of 150 and a total revenue of `150 * 20.00 = 3000.00`.
- Product C has a total quantity of 150 and a total revenue of `150 * 15.00 = 2250.00`.

The results are ordered by `total_revenue` in descending order and `product_id` in ascending order for ties.


