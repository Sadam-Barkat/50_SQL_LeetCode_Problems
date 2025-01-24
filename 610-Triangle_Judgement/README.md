# LeetCode 610. Triangle Judgement

## Problem Statement

Write an SQL query to report for every three line segments whether they can form a triangle.

A triangle is valid if the sum of any two sides is greater than the third side.

### Table: `Triangle`

| Column Name | Type  |
|-------------|-------|
| x           | int   |
| y           | int   |
| z           | int   |

(x, y, z) are the lengths of three line segments.

### Example Input:

| x  | y  | z  |
|----|----|----|
| 13 | 15 | 30 |
| 10 | 20 | 25 |
| 3  | 4  | 5  |

### Example Output:

| x  | y  | z  | triangle |
|----|----|----|----------|
| 13 | 15 | 30 | No       |
| 10 | 20 | 25 | Yes      |
| 3  | 4  | 5  | Yes      |


## Explanation

- The query checks the triangle condition using the `CASE` statement.
- It evaluates if the sum of any two sides is greater than the third side.
- If all conditions hold, the result is 'Yes', otherwise 'No'.

## Constraints

- The values of x, y, and z are positive integers.
- The table contains at least one row.

## Related Topics

- SQL
- Conditional Queries
