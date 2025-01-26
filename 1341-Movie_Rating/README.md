# 1341. Movie Rating

## Problem Statement

Tables: `Movies`, `Users`, `MovieRating`

```sql
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| movie_id    | int     |
| title       | varchar |
+-------------+---------+
movie_id is the primary key for this table.
This table contains the ID and the title of movies.
```

```sql
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| user_id     | int     |
| name        | varchar |
+-------------+---------+
user_id is the primary key for this table.
This table contains the ID and the name of users.
```

```sql
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| movie_id    | int     |
| user_id     | int     |
| rating      | int     |
| created_at  | date    |
+-------------+---------+
(movie_id, user_id) is the primary key for this table.
This table contains the rating of a movie by a user on a given date.
```

Write an SQL query to:
1. Find the highest-rated movie(s). If multiple movies have the same highest rating, return them all.
2. Find the user(s) who rated the most number of movies. If multiple users have rated the most movies, return them all.

## Example 1:

**Input:**

```sql
Movies table:
+----------+-------------+
| movie_id | title       |
+----------+-------------+
| 1        | Avengers    |
| 2        | Frozen 2    |
| 3        | Joker       |
+----------+-------------+

Users table:
+---------+-------+
| user_id | name  |
+---------+-------+
| 1       | Daniel|
| 2       | Monica|
| 3       | James |
+---------+-------+

MovieRating table:
+----------+---------+--------+------------+
| movie_id | user_id | rating | created_at |
+----------+---------+--------+------------+
| 1        | 1       | 9      | 2020-01-12  |
| 2        | 1       | 8      | 2020-02-15  |
| 3        | 1       | 9      | 2020-03-10  |
| 1        | 2       | 8      | 2020-01-20  |
| 3        | 2       | 7      | 2020-02-12  |
| 2        | 3       | 8      | 2020-02-16  |
+----------+---------+--------+------------+
```

**Output:**

```sql
+-------------+
| title       |
+-------------+
| Avengers    |
| Joker       |
+-------------+

+-------+
| name  |
+-------+
| Daniel|
+-------+
```

## Constraints

- Each `movie_id` is a unique integer that exists in the `Movies` table.
- Each `user_id` is a unique integer that exists in the `Users` table.
- `rating` is an integer between `1` and `10`.
- `created_at` is a valid date format.
