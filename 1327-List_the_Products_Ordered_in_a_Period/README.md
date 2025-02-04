# 1327. List the Products Ordered in a Period

## Description
Write an SQL query to get the names of products that were ordered in a given period.

## Table Schema

### `Products` Table
| Column Name | Type     |
|------------|---------|
| product_id | int     |
| product_name | varchar |

`product_id` is the primary key for this table.

### `Orders` Table
| Column Name | Type     |
|------------|---------|
| order_id   | int     |
| product_id | int     |
| order_date | date    |

`order_id` is the primary key for this table.
`product_id` is a foreign key referencing `Products.product_id`.

## Query Requirements
Retrieve the names of products that have been ordered in a given period. The result should not contain duplicates.

## Example Input
### `Products` Table
| product_id | product_name |
|------------|--------------|
| 1          | Apple        |
| 2          | Banana       |
| 3          | Orange       |

### `Orders` Table
| order_id | product_id | order_date |
|----------|------------|------------|
| 101      | 1          | 2020-02-10 |
| 102      | 2          | 2020-02-12 |
| 103      | 1          | 2020-03-15 |

## Example Output
| product_name |
|--------------|
| Apple       |
| Banana      |

## Constraints
- The `order_date` should be within a specified period, e.g., '2020-02-01' to '2020-02-29'.
- Duplicate product names should be removed.
