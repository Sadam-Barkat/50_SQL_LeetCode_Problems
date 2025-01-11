# 619. Biggest Single Number

## Problem Statement

You are given a table `MyNumbers` with a column `num` that represents a list of numbers. Your task is to write a SQL query to find the biggest number that appears exactly once in the table.

If no such number exists, return `NULL`.

### Table: `MyNumbers`
| Column Name | Type    |
|-------------|---------|
| `num`       | INT     |

### Description:
- The table consists of a column `num` where each row contains an integer.
- You need to find the largest value from the column that appears exactly once.

### Output Format:
The output should contain a single column `num` that holds the largest number that appears exactly once.

---

## Example:

### Input:
`MyNumbers` table:
| num  |
|------|
| 1    |
| 2    |
| 3    |
| 3    |
| 4    |
| 5    |
| 5    |

### Output:
| num  |
|------|
| 4    |

---

## Constraints:
- The number of rows in the table is between 1 and 100.
- The value of `num` is between -1000 and 1000.
