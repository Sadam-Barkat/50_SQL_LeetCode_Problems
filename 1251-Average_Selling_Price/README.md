# 1251. Average Selling Price

## Problem Statement

Write an SQL query to calculate the average selling price for each product. The result should include the following columns:

1. **product_id**: The ID of the product.
2. **average_price**: The average selling price for the product, rounded to two decimal places.

If no transactions exist for a given product, the `average_price` should be reported as `0`.

---

## Schema

### Table: `Prices`

| Column Name | Type        |
|-------------|-------------|
| product_id  | INT         |
| start_date  | DATE        |
| end_date    | DATE        |
| price       | DECIMAL(10,2) |

- `product_id` is the primary key for this table.
- Each row contains information about the price of a product for a specific time period (`start_date` to `end_date`).

### Table: `UnitsSold`

| Column Name   | Type        |
|---------------|-------------|
| product_id    | INT         |
| purchase_date | DATE        |
| units         | INT         |

- There is no primary key for this table, and it may contain duplicate rows.
- Each row contains information about the number of units sold for a product on a specific `purchase_date`.

---

## Example Input

### `Prices` Table

| product_id | start_date | end_date   | price |
|------------|------------|------------|-------|
| 1          | 2023-01-01 | 2023-01-10 | 100.0 |
| 2          | 2023-01-05 | 2023-01-15 | 150.0 |

### `UnitsSold` Table

| product_id | purchase_date | units |
|------------|---------------|-------|
| 1          | 2023-01-02    | 5     |
| 1          | 2023-01-08    | 3     |
| 2          | 2023-01-06    | 4     |

---

## Output

| product_id | average_price |
|------------|---------------|
| 1          | **To Be Calculated** |
| 2          | **To Be Calculated** |

---

## Notes

1. The query should calculate the average selling price as `(price * units) / units` for each product.
2. Only consider transactions where the `purchase_date` falls within the range of `start_date` and `end_date`.
3. If no transactions match, return an `average_price` of `0`.

