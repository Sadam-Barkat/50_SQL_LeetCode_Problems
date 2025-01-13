# 1731. The Number of Employees Which Report to Each Employee

## Problem Description
Given a table `Employees` with the following structure:

| Column Name | Type    |
|-------------|---------|
| employee_id | int     |
| name        | varchar |
| reports_to  | int     |

- `employee_id` is the primary key for this table.
- Each row of this table indicates the ID of an employee, their name, and the ID of their manager (i.e., the `employee_id` of their manager).
- If an employee does not report to anyone, the `reports_to` column will be null.

Write an SQL query to find the number of employees who directly report to each employee.

Return the result table in **any order**.

## Example

**Input:**

`Employees` table:

| employee_id | name  | reports_to |
|-------------|-------|------------|
| 1           | John  | null       |
| 2           | Mike  | 1          |
| 3           | Sophie| 1          |
| 4           | Ben   | 2          |

**Output:**

| employee_id | employee_name | reports_count |
|-------------|---------------|---------------|
| 1           | John          | 2             |
| 2           | Mike          | 1             |
| 3           | Sophie        | 0             |
| 4           | Ben           | 0             |

**Explanation:**
- John has two direct reports: Mike and Sophie.
- Mike has one direct report: Ben.
- Sophie and Ben have no direct reports.