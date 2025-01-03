# 620. Not Boring Movies

## Problem Description
Write an SQL query to find all movies with an odd ID and a description that is not "boring". The query should return the movies sorted by `rating` in descending order.

## Input Schema
The `cinema` table contains the following columns:
- `id` (int): Primary key, the ID of the movie.
- `movie` (varchar): The name of the movie.
- `description` (varchar): A description of the movie.
- `rating` (float): The rating of the movie.

## Example
### Sample Input
```plaintext
| id | movie         | description | rating |
|----|---------------|-------------|--------|
| 1  | Movie A       | boring      | 3.5    |
| 2  | Movie B       | not boring  | 4.7    |
| 3  | Movie C       | not boring  | 4.2    |
| 4  | Movie D       | boring      | 2.8    |
| 5  | Movie E       | not boring  | 5.0    |
