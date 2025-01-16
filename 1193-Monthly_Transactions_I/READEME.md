# LeetCode Problem 1193: Monthly Transactions I

## Problem Description

You are given a database table `Transactions`, which contains the following fields:

| Column Name      | Type    |
|------------------|---------|
| id               | int     |
| country          | varchar |
| state            | enum    |
| amount           | int     |
| trans_date       | date    |

- **id**: The ID of the transaction.
- **country**: The country where the transaction occurred.
- **state**: The state of the transaction, which can be either `"approved"` or `"declined"`.
- **amount**: The amount of the transaction.
- **trans_date**: The date of the transaction.

Write an SQL query to find the **total number of transactions**, the **total amount** of approved transactions, and the **total amount** of declined transactions for each country and each month. The result should include all countries and months, even if there are no transactions in that month for that country. The result should be ordered by `country` in ascending order and `month` in descending order.

### Example Input:

Table: `Transactions`

| id  | country  | state      | amount | trans_date |
|-----|----------|------------|--------|------------|
| 1   | US       | approved   | 100    | 2023-01-01 |
| 2   | US       | declined   | 50     | 2023-01-02 |
| 3   | Canada   | approved   | 200    | 2023-01-03 |
| 4   | US       | approved   | 150    | 2023-02-01 |
| 5   | Canada   | declined   | 300    | 2023-02-15 |

### Example Output:

| country  | month     | approved_transactions | approved_amount | declined_amount |
|----------|-----------|------------------------|-----------------|-----------------|
| US       | 2023-02   | 1                      | 150             | 0               |
| US       | 2023-01   | 1                      | 100             | 50              |
| Canada   | 2023-02   | 0                      | 0               | 300             |
| Canada   | 2023-01   | 1                      | 200             | 0               |

### Explanation:
1. For the US:
   - In January 2023: 1 approved transaction with $100, 1 declined transaction with $50.
   - In February 2023: 1 approved transaction with $150, no declined transactions.

2. For Canada:
   - In January 2023: 1 approved transaction with $200, no declined transactions.
   - In February 2023: no approved transactions, 1 declined transaction with $300.

## Approach
To solve this problem, you need to:

1. Extract the year and month from the `trans_date` column.
2. Group transactions by `country` and the extracted month.
3. Use conditional aggregation to calculate the following for each group:
   - The count of approved transactions.
   - The sum of amounts for approved transactions.
   - The sum of amounts for declined transactions.
4. Ensure all months and countries appear in the result, even if there are no transactions.

### SQL Query
```sql
WITH Months AS (
    SELECT DISTINCT 
        DATE_FORMAT(trans_date, '%Y-%m') AS month
    FROM Transactions
),
CountryMonth AS (
    SELECT 
        c.country, 
        m.month
    FROM (SELECT DISTINCT country FROM Transactions) c
    CROSS JOIN Months m
),
AggregatedData AS (
    SELECT 
        country,
        DATE_FORMAT(trans_date, '%Y-%m') AS month,
        SUM(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) AS approved_transactions,
        SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) AS approved_amount,
        SUM(CASE WHEN state = 'declined' THEN amount ELSE 0 END) AS declined_amount
    FROM Transactions
    GROUP BY country, month
)
SELECT 
    cm.country,
    cm.month,
    COALESCE(ad.approved_transactions, 0) AS approved_transactions,
    COALESCE(ad.approved_amount, 0) AS approved_amount,
    COALESCE(ad.declined_amount, 0) AS declined_amount
FROM CountryMonth cm
LEFT JOIN AggregatedData ad
ON cm.country = ad.country AND cm.month = ad.month
ORDER BY cm.country ASC, cm.month DESC;
```

## Notes
- Use the `WITH` clause to create intermediate tables for better readability and modularity.
- The `COALESCE` function ensures that countries and months without transactions have `0` values.
- The result is ordered as per the requirements: by country (ascending) and month (descending).
