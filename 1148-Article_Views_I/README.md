# 1148. Article Views I

## Problem

You are given a table that contains information about views of articles. You need to return the list of articles that have been viewed at least once by someone other than their author.

### Table: `Views`

| Column Name  | Type    |
| ------------ | ------- |
| article_id   | int     |
| author_id    | int     |
| viewer_id    | int     |

- `article_id` is the ID of the article.
- `author_id` is the ID of the author of the article.
- `viewer_id` is the ID of the user who viewed the article.

### Constraints
- `1 <= article_id, author_id, viewer_id <= 500`
- Each row in the table indicates that `viewer_id` has viewed the article written by `author_id`.
- There may be duplicate rows in the table.

### Task
Write a SQL query to find the IDs of the articles that have been viewed at least once by someone other than their author. Return the result in ascending order by `article_id`.

### Example

#### Input

| article_id | author_id | viewer_id |
| ---------- | --------- | --------- |
| 1          | 3         | 5         |
| 1          | 3         | 3         |
| 2          | 7         | 7         |
| 2          | 7         | 9         |

#### Output

| article_id |
| ---------- |
| 1          |
| 2          |

### Explanation

- Article 1 is written by author 3 and viewed by viewer 5 (not the author) and viewer 3 (the author). Hence, it is included in the result.
- Article 2 is written by author 7 and viewed by viewer 9 (not the author) and viewer 7 (the author). Hence, it is included in the result.
