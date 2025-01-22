# 1164. Product Price at a Given Date

## Problem Statement

Table: `Products`

| Column Name  | Type |
|--------------|------|
| product_id   | int  |
| new_price    | int  |
| change_date  | date |

The combination of `(product_id, change_date)` is the primary key of this table.

Each row in the table represents a price change for a product on a specific date.

### Task
Write an SQL query to find the prices of all products on `2019-08-16`.  
Assume the initial price of all products before any change is `10`.

### Example

#### Input:

| product_id | new_price | change_date |
|------------|-----------|-------------|
| 1          | 20        | 2019-08-14   |
| 2          | 50        | 2019-08-14   |
| 1          | 30        | 2019-08-15   |
| 1          | 35        | 2019-08-16   |
| 2          | 65        | 2019-08-17   |
| 3          | 20        | 2019-08-18   |

#### Output:

| product_id | price |
|------------|-------|
| 1          | 35    |
| 2          | 50    |
| 3          | 10    |


