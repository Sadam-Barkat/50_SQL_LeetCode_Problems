# Second Highest Salary (LeetCode 176)

## Problem Statement
Given the `Employee` table, write a SQL query to find the **second highest distinct salary**.  
If no second highest salary exists, return `NULL`.

### **Table Schema**
| Column Name | Type |
|-------------|------|
| id          | int  |
| salary      | int  |

- `id` is the **primary key**.
- Each row contains an employee's salary.

### **Example 1**
#### **Input**
```sql
+----+--------+
| id | salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+
