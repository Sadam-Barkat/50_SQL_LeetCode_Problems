# 584. Find Customer Referee

## Problem

A company has customers who can refer other customers. You need to find the customers who have been referred by others.

Write a SQL query to find the customers who have been referred by another customer. The result should include the `customer_id` and `referrer_id` of these customers.

### Table: `Customers`

| Column Name  | Type    |
| ------------ | ------- |
| customer_id  | int     |
| referrer_id  | int     |

- `customer_id` is the unique ID of the customer.
- `referrer_id` is the ID of the customer who referred this customer. It can be `NULL` if the customer was not referred by anyone.

### Constraints
- `1 <= customer_id <= 1000`
- `1 <= referrer_id <= 1000`
- `referrer_id` can be `NULL` indicating no referrer.

### Example

#### Input

| customer_id | referrer_id |
| ----------- | ----------- |
| 1           | NULL        |
| 2           | 1           |
| 3           | 1           |
| 4           | 2           |
| 5           | NULL        |
| 6           | 3           |

#### Output

| customer_id | referrer_id |
| ----------- | ----------- |
| 2           | 1           |
| 3           | 1           |
| 4           | 2           |
| 6           | 3           |

### Explanation

- Customer 2 and 3 were referred by customer 1.
- Customer 4 was referred by customer 2.
- Customer 6 was referred by customer 3.
- Customer 1 and 5 do not have a referrer.
