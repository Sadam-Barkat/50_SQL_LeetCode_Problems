# SQL Query: Customer Who Visited but Did Not Make Any Transactions

## Problem Overview

The task is to identify customers who visited the store but did not make any transactions. The solution involves querying two tables:
- `CustomerVisits`: Contains records of customers who visited.
- `Transactions`: Contains records of customers who made transactions.

## Tables Description

### CustomerVisits Table
This table stores information about the customers who visited the store.

| Column      | Data Type | Description                          |
|-------------|-----------|--------------------------------------|
| CustomerID  | INT       | Unique identifier for the customer.  |
| VisitDate   | DATE      | The date the customer visited.       |

### Transactions Table
This table stores information about the transactions made by customers.

| Column      | Data Type | Description                            |
|-------------|-----------|----------------------------------------|
| CustomerID  | INT       | Unique identifier for the customer.    |
| TransactionDate | DATE  | The date when the transaction was made. |
| Amount      | DECIMAL   | The amount spent during the transaction.|

## SQL Query

The query below identifies customers who visited but did not make any transactions:

```sql
SELECT 
    v.CustomerID
FROM 
    CustomerVisits v
LEFT JOIN 
    Transactions t ON v.CustomerID = t.CustomerID
WHERE 
    t.CustomerID IS NULL
GROUP BY 
    v.CustomerID;
