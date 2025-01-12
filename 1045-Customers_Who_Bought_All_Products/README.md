# 1045. Customers Who Bought All Products

## Problem Description

You are given two tables:

### `Products`
| Column Name  | Type    |
|--------------|---------|
| product_id   | int     |

- `product_id` is the primary key for this table.
- Each row represents the ID of a product available in the store.

### `Customers`
| Column Name  | Type    |
|--------------|---------|
| customer_id  | int     |
| product_id   | int     |

- The combined columns `customer_id` and `product_id` form the primary key for this table.
- Each row indicates that a customer with `customer_id` bought a product with `product_id`.

Write an SQL query to find the IDs of all customers who bought **all the products** listed in the `Products` table.

Return the result table in **any order**.

### Example
#### Input:
**Products**:
| product_id |
|------------|
| 1          |
| 2          |

**Customers**:
| customer_id | product_id |
|-------------|------------|
| 1           | 1          |
| 1           | 2          |
| 2           | 1          |
| 2           | 2          |
| 3           | 1          |

#### Output:
| customer_id |
|-------------|
| 1           |
| 2           |

#### Explanation:
- Customer 1 bought products 1 and 2.
- Customer 2 bought products 1 and 2.
- Customer 3 only bought product 1.
- Only customers 1 and 2 bought all products.

---

## Approach

To solve this problem, follow these steps:

1. Count the total number of products in the `Products` table.
2. For each customer, count the distinct products they have bought from the `Customers` table.
3. Compare the two counts — if they match, the customer has bought all products.


