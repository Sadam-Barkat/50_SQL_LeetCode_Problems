# 1907. Count Salary Categories

## Problem Statement

You are given a table `Accounts` with the following structure:

| Column Name | Type    |
|-------------|---------|
| account_id  | int     |
| income      | int     |

The `account_id` column is the primary key for this table. Each row of this table contains the income of an account.

Write an SQL query to categorize incomes into three levels:

- `'Low Salary'` for incomes strictly less than `20000`.
- `'Average Salary'` for incomes between `20000` and `50000` (inclusive).
- `'High Salary'` for incomes strictly greater than `50000`.

Your query should return the count of each salary category with the following structure:

| category        | accounts_count |
|-----------------|----------------|
| Low Salary      | X              |
| Average Salary  | Y              |
| High Salary     | Z              |

## Example Input

### Input Table: `Accounts`
| account_id | income |
|------------|--------|
| 1          | 15000  |
| 2          | 25000  |
| 3          | 60000  |
| 4          | 8000   |
| 5          | 30000  |

### Expected Output:

| category       | accounts_count |
|----------------|----------------|
| Low Salary     | 2              |
| Average Salary | 2              |
| High Salary    | 1              |


