# 1204. Last Person to Fit in the Bus

## Problem Statement
You are given a table `Persons` with the following schema:

```sql
CREATE TABLE Persons (
    id INT PRIMARY KEY,
    weight INT
);
```

The bus has a maximum weight capacity. People board the bus in ascending order of `id`. Your task is to write an SQL query to find the last person who can fully fit on the bus without exceeding the maximum weight capacity.

### Example 1:
#### Input:
```sql
INSERT INTO Persons (id, weight) VALUES (1, 100), (2, 200), (3, 150), (4, 80);
SET @capacity = 300;
```
#### Output:
```sql
+------+
| id   |
+------+
| 2    |
+------+
```
#### Explanation:
- Person 1 (100) boards the bus. Total weight = 100.
- Person 2 (200) boards the bus. Total weight = 300.
- Person 3 (150) cannot board, as the total would exceed the capacity.
- The last person who could fit is person 2 with `id = 2`.

### Example 2:
#### Input:
```sql
INSERT INTO Persons (id, weight) VALUES (1, 50), (2, 50), (3, 50), (4, 50);
SET @capacity = 200;
```
#### Output:
```sql
+------+
| id   |
+------+
| 4    |
+------+
```

## Solution

### Approach
1. Use a running total to keep track of the current total weight.
2. Select the last `id` where the cumulative weight does not exceed the given capacity.

### SQL Query
```sql
WITH CumulativeWeights AS (
    SELECT id, weight, 
           SUM(weight) OVER (ORDER BY id) AS running_total
    FROM Persons
)
SELECT MAX(id) AS id
FROM CumulativeWeights
WHERE running_total <= @capacity;
```

### Explanation
- The `SUM() OVER (ORDER BY id)` calculates the cumulative sum of weights in order of `id`.
- The `WHERE` clause filters out rows exceeding the capacity.
- `MAX(id)` gets the last person who fits within the limit.

### Complexity Analysis
- **Time Complexity:** `O(n)` where `n` is the number of people.
- **Space Complexity:** `O(1)` since only a few variables are used.

### Example Usage
```sql
-- Example 1
SELECT MAX(id) FROM (
    SELECT id, SUM(weight) OVER (ORDER BY id) AS running_total
    FROM Persons
) temp WHERE running_total <= 300;

-- Example 2
SELECT MAX(id) FROM (
    SELECT id, SUM(weight) OVER (ORDER BY id) AS running_total
    FROM Persons
) temp WHERE running_total <= 200;
```
