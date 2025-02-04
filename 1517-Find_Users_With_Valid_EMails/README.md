# 1517. Find Users With Valid E-Mails

## Table: Users

```sql
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100)
);
```

## Problem Statement

Write an SQL query to find users with a valid email address. A valid email has the following conditions:
- It contains the '@' symbol.
- It contains a period `.` after the '@'.
- The domain name (after `@`) should be at least one character long.
- The top-level domain (after `.`) should be at least two characters long.

Return the user IDs and names of users with valid emails.

## Example Input

```sql
INSERT INTO Users (user_id, name, email) VALUES 
(1, 'Alice', 'alice@example.com'),
(2, 'Bob', 'bob@com'),
(3, 'Charlie', 'charlie@email.net'),
(4, 'David', 'david@domain'),
(5, 'Eve', 'eve@site.org');
```

## Example Output

```sql
+---------+---------+
| user_id | name    |
+---------+---------+
| 1       | Alice   |
| 3       | Charlie |
| 5       | Eve     |
+---------+---------+
```

