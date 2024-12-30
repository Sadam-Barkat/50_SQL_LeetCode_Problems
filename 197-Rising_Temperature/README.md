# Rising Temperature Query

## Problem Statement

The task is to find all dates' `id` where the temperature is higher than the previous day's temperature (yesterday). The result should contain the `id` and `recordDate` for the days where the temperature is higher than the previous day. The result table can be returned in any order.

## Requirements

- **SQL Database**: MySQL, PostgreSQL, SQL Server, or any database that supports the SQL syntax provided.
- **Weather Table**: A table named `Weather` with the following columns:
  - `id`: Unique identifier for each record.
  - `recordDate`: Date of the temperature record.
  - `temperature`: The recorded temperature for that date.

## Approach

There are two main ways to solve this problem:

1. **Using Self-Join**: Compare each record's temperature with the previous day's temperature by joining the table with itself.
2. **Using Window Function**: Use window functions to retrieve the previous day's temperature in an efficient manner, and compare it with the current day's temperature.

## Conclusion

Both approaches will return the `id` and `recordDate` of days where the temperature is higher than the previous day. Choose the approach based on the capabilities of your SQL database.

