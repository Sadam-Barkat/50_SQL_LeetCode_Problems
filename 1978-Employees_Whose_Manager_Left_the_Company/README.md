# Problem: 1978. Employees Whose Manager Left the Company

## Description

A company has a hierarchy of employees. The employees are represented as a table called `Employee` with the following columns:

- `id`: The unique ID of the employee.
- `name`: The name of the employee.
- `managerId`: The ID of the employee’s manager. If the employee has no manager, the `managerId` is NULL.

Write a query to find the `id` and `name` of employees whose managers have left the company.

You need to return the result ordered by `id`.

## Example

### Input
```sql
Employee table:
+----+-------+-----------+
| id | name  | managerId |
+----+-------+-----------+
| 1  | John  | 3         |
| 2  | Alice | 3         |
| 3  | Bob   | NULL      |
| 4  | David | 5         |
| 5  | Emma  | NULL      |
+----+-------+-----------+
Output
sql
Copy
Edit
+----+-------+
| id | name  |
+----+-------+
| 1  | John  |
| 2  | Alice |
+----+-------+