# 626. Exchange Seats

## Problem Statement

Table: `Seat`

```sql
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| student    | varchar |
+-------------+---------+
id is the primary key column for this table.
Each row of this table indicates the name of a student and their seat id.
id is a continuous incrementing integer.
```

Write an SQL query to swap seats for every two consecutive students. If the number of students is odd, the last one should keep their seat.

Return the result table in **any order**.

## Example 1:

**Input:**

```sql
Seat table:
+----+---------+
| id | student |
+----+---------+
| 1  | Alice   |
| 2  | Bob     |
| 3  | Carol   |
| 4  | David   |
+----+---------+
```

**Output:**

```sql
+----+---------+
| id | student |
+----+---------+
| 1  | Bob     |
| 2  | Alice   |
| 3  | David   |
| 4  | Carol   |
+----+---------+
```

## Example 2:

**Input:**

```sql
Seat table:
+----+---------+
| id | student |
+----+---------+
| 1  | Alice   |
+----+---------+
```

**Output:**

```sql
+----+---------+
| id | student |
+----+---------+
| 1  | Alice   |
+----+---------+
```

## Constraints

- `1 <= n <= 1000` where `n` is the number of rows in the table.
- `student` is a string with length between `1` and `20`.
- `id` is a unique integer that starts from `1` and increments by `1` for each row.
