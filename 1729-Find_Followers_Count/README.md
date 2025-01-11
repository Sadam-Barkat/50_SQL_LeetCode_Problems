# 1729. Find Followers Count

## Problem Statement

Write an SQL query to find the follower count for each user.

The table structure is as follows:

### Table: `Followers`
| Column Name  | Type    |
|--------------|---------|
| `user_id`    | INT     |
| `follower_id`| INT     |

`user_id` and `follower_id` form the primary key of this table.

### Description:
- Each row of this table indicates that `follower_id` is following `user_id`.
- Your task is to return the `user_id` and the number of followers for each `user_id`.

### Output Format:
The output table should be in the following format:

| Column Name  | Type    |
|--------------|---------|
| `user_id`    | INT     |
| `followers_count` | INT |

The result should be sorted by `user_id` in ascending order.

---

## Example:

### Input:
`Followers` table:
| user_id | follower_id |
|---------|-------------|
| 1       | 3           |
| 2       | 3           |
| 3       | 4           |
| 3       | 5           |

### Output:
| user_id | followers_count |
|---------|------------------|
| 1       | 1               |
| 2       | 1               |
| 3       | 2               |

---

## Constraints:
- There will be no duplicate rows in the `Followers` table.
