# 577. Employee Bonus

## Problem Description

Write a SQL query to report the bonus of each employee. For some employees, the bonus may be null. 

The table `Employee` contains the following data:

| Column Name | Type    |
|-------------|---------|
| empId       | int     |
| name        | varchar |
| supervisor  | int     |
| salary      | int     |

`empId` is the primary key for this table. Each row of this table indicates the name, the ID of their supervisor, and their salary.

The table `Bonus` contains the following data:

| Column Name | Type    |
|-------------|---------|
| empId       | int     |
| bonus       | int     |

`empId` is the primary key for this table. Each row of this table contains the ID of an employee and their bonus. The bonus amount can be null.

## Output

The query should output the following:

| Column Name | Type    |
|-------------|---------|
| empId       | int     |
| bonus       | int     |

The output should include all employees in the `Employee` table and their corresponding bonuses. If an employee does not have a bonus, the bonus should appear as `null`.

## Example Input

### Employee Table

| empId | name  | supervisor | salary |
|-------|-------|------------|--------|
| 1     | John  | 3          | 1000   |
| 2     | Alice | 3          | 2000   |
| 3     | Bob   | null       | 5000   |
| 4     | Eve   | 2          | 3000   |

### Bonus Table

| empId | bonus |
|-------|-------|
| 2     | 500   |
| 4     | 1000  |

## Example Output

| empId | bonus |
|-------|-------|
| 1     | null  |
| 2     | 500   |
| 3     | null  |
| 4     | 1000  |

## Constraints

- Each `empId` in the `Employee` table is unique.
- Each `empId` in the `Bonus` table is unique.

