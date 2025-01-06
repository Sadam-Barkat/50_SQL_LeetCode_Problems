# 1633. Percentage of Users Attended a Contest

## Problem Statement
Given a database table containing information about users and the contests they attended, calculate the percentage of users who attended at least one contest.

### Tables:
1. **Users**
   - `user_id` (int): Unique identifier for each user.
   - `name` (varchar): Name of the user.

2. **Contests**
   - `contest_id` (int): Unique identifier for each contest.
   - `contest_name` (varchar): Name of the contest.

3. **Attendance**
   - `user_id` (int): ID of the user attending the contest.
   - `contest_id` (int): ID of the contest attended.

### Task:
Write a query to compute the percentage of users who attended at least one contest.

## Example

### Input:
**Users Table:**
| user_id | name       |
|---------|------------|
| 1       | Alice      |
| 2       | Bob        |
| 3       | Charlie    |

**Contests Table:**
| contest_id | contest_name |
|------------|--------------|
| 101        | Math Contest |
| 102        | Coding Jam   |

**Attendance Table:**
| user_id | contest_id |
|---------|------------|
| 1       | 101        |
| 2       | 102        |

### Output:
| percentage |
|------------|
| 66.67      |

### Explanation:
- Total users: 3
- Users who attended a contest: 2 (Alice and Bob)
- Percentage: \( \frac{2}{3} \times 100 = 66.67 \)

