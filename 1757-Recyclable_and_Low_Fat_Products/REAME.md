# 1757. Recyclable and Low Fat Products

## Problem Statement

You are given a DataFrame `products` with the following columns:

| Column Name | Type   |
|-------------|--------|
| product_id  | int    |
| product_name| object |
| recyclable  | bool   |
| low_fat     | bool   |

You need to filter the products that are both recyclable and low fat, and return a DataFrame containing only these products. The result should be sorted by `product_name` in ascending order.

### Example 1:

**Input:**

| product_id | product_name | recyclable | low_fat |
|------------|--------------|------------|---------|
| 1          | Apple        | True       | True    |
| 2          | Banana       | False      | True    |
| 3          | Carrot       | True       | False   |
| 4          | Yogurt       | True       | True    |
| 5          | Lettuce      | True       | True    |

**Output:**

| product_id | product_name | recyclable | low_fat |
|------------|--------------|------------|---------|
| 1          | Apple        | True       | True    |
| 4          | Yogurt       | True       | True    |
| 5          | Lettuce      | True       | True    |

**Explanation:**

- We filter products that are both recyclable and low fat.
- The products "Apple", "Yogurt", and "Lettuce" are both recyclable and low fat, so they are included in the result.
- The result is sorted by `product_name` in ascending order.

### Constraints:
- The DataFrame has at least one row.
- The `recyclable` and `low_fat` columns contain boolean values.

### Notes:
- Method chaining can be used to filter and sort the DataFrame efficiently in one line of code.
