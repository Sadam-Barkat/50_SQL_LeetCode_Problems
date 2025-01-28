# 585. Investments in 2016

## Problem Description

Table: `Investments`

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |
| amount      | int     |
| year        | int     |

`id` is the primary key for this table.
`name` is the name of the investor.
`amount` is the amount invested by the investor.
`year` is the year of the investment.

Write a SQL query to find the names of investors who invested more than $1000 in 2016.

Return the result in any order.

## Example

### Input

| id | name   | amount | year |
|----|--------|--------|------|
| 1  | Alice  | 1200   | 2016 |
| 2  | Bob    | 800    | 2016 |
| 3  | Charlie| 1500   | 2016 |
| 4  | David  | 2000   | 2015 |
| 5  | Eve    | 500    | 2016 |

### Output

| name   |
|--------|
| Alice  |
| Charlie|

## SQL Query

```sql
SELECT name
FROM Investments
WHERE year = 2016 AND amount > 1000;