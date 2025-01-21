# 180. Consecutive Numbers

## Problem Statement

Write an SQL query to find all numbers that appear at least three times consecutively in the `Logs` table.

### Table: Logs

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| num         | int     |

`id` is the primary key column for this table.

### Example Input:

```sql
+----+-----+
| id | num |
+----+-----+
| 1  |  1  |
| 2  |  1  |
| 3  |  1  |
| 4  |  2  |
| 5  |  1  |
| 6  |  2  |
| 7  |  2  |
+----+-----+
Example Output:
sql
Copy
Edit
+-----+
| num |
+-----+
| 1   |
+-----+
Explanation:
The number 1 appears consecutively three times in the first three rows.

Constraints
The solution must ensure that consecutive numbers are identified based on increasing id values.
The result should not contain duplicate entries