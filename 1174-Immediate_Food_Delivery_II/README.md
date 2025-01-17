# Immediate Food Delivery II (LeetCode 1174)

## Problem Description
The `Delivery` table contains information about food delivery orders, including the delivery ID, customer ID, order date, and the customer's preferred delivery date. An order can either be **immediate** (if the preferred delivery date matches the order date) or **scheduled** (if the preferred delivery date is after the order date).

The task is to find the percentage of **immediate orders** among the **first orders** of all customers, rounded to 2 decimal places.

### Table Schema

| Column Name                 | Type    | Description                          |
|-----------------------------|---------|--------------------------------------|
| delivery_id                 | int     | Unique identifier for each delivery. |
| customer_id                 | int     | Unique identifier for each customer. |
| order_date                  | date    | The date the order was placed.       |
| customer_pref_delivery_date | date    | The preferred delivery date.         |

- Each customer has exactly one first order (the earliest `order_date`).
- If the `customer_pref_delivery_date` matches the `order_date`, the order is immediate; otherwise, it is scheduled.

---

## Example

### Input
**Delivery Table**:
| delivery_id | customer_id | order_date | customer_pref_delivery_date |
|-------------|-------------|------------|-----------------------------|
| 1           | 1           | 2019-08-01 | 2019-08-02                  |
| 2           | 2           | 2019-08-02 | 2019-08-02                  |
| 3           | 1           | 2019-08-11 | 2019-08-12                  |
| 4           | 3           | 2019-08-24 | 2019-08-24                  |
| 5           | 3           | 2019-08-21 | 2019-08-22                  |
| 6           | 2           | 2019-08-11 | 2019-08-13                  |
| 7           | 4           | 2019-08-09 | 2019-08-09                  |

### Output
| immediate_percentage |
|-----------------------|
| 50.00                |

### Explanation
1. **Customer 1**: First order (delivery ID 1) is scheduled.
2. **Customer 2**: First order (delivery ID 2) is immediate.
3. **Customer 3**: First order (delivery ID 5) is scheduled.
4. **Customer 4**: First order (delivery ID 7) is immediate.




