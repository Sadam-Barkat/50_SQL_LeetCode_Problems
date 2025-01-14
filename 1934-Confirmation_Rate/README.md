# LeetCode Problem: 1934. Confirmation Rate

## Problem Description

A website tracks the confirmation rate for its users. The confirmation rate for a user is calculated as the ratio of confirmed orders to total orders. 

Write an SQL query to calculate the confirmation rate for each user. The result should include the user ID and the confirmation rate rounded to 2 decimal places. Sort the result by `user_id` in ascending order.

The table structure is as follows:

### `Users`
| Column Name | Type    |
|-------------|---------|
| user_id     | INT     |
| order_id    | INT     |
| status      | ENUM    |

- `user_id` is the ID of the user.
- `order_id` is the ID of the order placed by the user.
- `status` is the order status, which can be either `confirmed` or `cancelled`.

### Example Input
```plaintext
Users table:
+---------+----------+------------+
| user_id | order_id | status     |
+---------+----------+------------+
| 1       | 1        | confirmed  |
| 2       | 2        | cancelled  |
| 1       | 3        | confirmed  |
| 1       | 4        | cancelled  |
| 2       | 5        | confirmed  |
+---------+----------+------------+
