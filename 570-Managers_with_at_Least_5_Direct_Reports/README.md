# 570. Managers with at Least 5 Direct Reports

## Problem Description

The problem is to identify managers in a company database who have at least 5 direct reports. This is a SQL-based problem that requires querying the database to extract relevant information about the managers.

### Schema

The database consists of the following table:

**Employee**

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |
| department  | varchar |
| managerId   | int     |

- **id** is the primary key for this table.
- Each row represents an employee. 
- `managerId` is a foreign key to the `id` column of the `Employee` table.
- Some employees do not have a manager (their `managerId` is `null`).

### Goal

Find the IDs of employees who manage at least 5 other employees.

---

## Approach

To solve this problem, you need to:
1. Understand the relationship between managers and employees in the `Employee` table.
2. Use SQL aggregate functions and grouping to count the number of direct reports for each manager.
3. Filter the results to include only those managers who have 5 or more direct reports.

---

## Example Input and Output

### Input

**Employee Table**

| id | name     | department  | managerId |
|----|----------|-------------|-----------|
| 1  | John     | HR          | NULL      |
| 2  | Jane     | Engineering | 1         |
| 3  | Alice    | Engineering | 1         |
| 4  | Bob      | Engineering | 1         |
| 5  | Charlie  | Engineering | 1         |
| 6  | Eve      | Engineering | 1         |
| 7  | Frank    | Marketing   | NULL      |

### Output

| managerId |
|-----------|
| 1         |

### Explanation

Manager with `id = 1` has 5 direct reports (employees with IDs 2, 3, 4, 5, and 6). Therefore, their ID is included in the result.

---

## Skills Tested

- SQL Joins and Self-Joins
- Grouping and Aggregation
- Filtering with `HAVING`

---

## Hints

- Use the `COUNT()` function to determine the number of employees reporting to a manager.
- The `HAVING` clause is useful for filtering groups after aggregation.
- Handle cases where `managerId` might be `NULL`.

---

## Notes

This problem is useful for practicing queries involving hierarchical data and understanding SQL aggregation concepts.
