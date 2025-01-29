# 185. Department Top Three Salaries

## Problem Description
Given two tables: `Employee` and `Department`, write a SQL query to find the top three unique salaries for each department. If there are fewer than three unique salaries in a department, return all of them.

### Tables Schema

#### `Employee` Table:
| Column Name  | Type    |
|--------------|---------|
| id           | int     |
| name         | varchar |
| salary       | int     |
| departmentId | int     |

#### `Department` Table:
| Column Name  | Type    |
|--------------|---------|
| id           | int     |
| name         | varchar |

### Example

#### Input:
**Employee** table:
| id  | name  | salary | departmentId |
|-----|-------|--------|--------------|
| 1   | Joe   | 85000  | 1            |
| 2   | Henry | 80000  | 2            |
| 3   | Sam   | 60000  | 2            |
| 4   | Max   | 90000  | 1            |
| 5   | Janet | 69000  | 1            |
| 6   | Randy | 85000  | 1            |
| 7   | Will  | 70000  | 1            |

**Department** table:
| id  | name  |
|-----|-------|
| 1   | IT    |
| 2   | Sales |

#### Output:
| Department | Employee | Salary |
|------------|----------|--------|
| IT         | Max      | 90000  |
| IT         | Joe      | 85000  |
| IT         | Randy    | 85000  |
| IT         | Will     | 70000  |
| Sales      | Henry    | 80000  |
| Sales      | Sam      | 60000  |

---

## Solution Approach
To solve this problem, we can use the `DENSE_RANK()` window function in SQL. Here's the step-by-step approach:

1. **Join the Tables**: Combine the `Employee` and `Department` tables to get the department names.
2. **Rank Salaries**: Use `DENSE_RANK()` to rank salaries within each department in descending order.
3. **Filter Top 3 Salaries**: Select only the rows where the rank is less than or equal to 3.

---

## SQL Query

```sql
SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary
FROM (
    SELECT 
        departmentId, 
        name, 
        salary,
        DENSE_RANK() OVER (PARTITION BY departmentId