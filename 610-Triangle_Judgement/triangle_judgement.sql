# Write your MySQL query statement below
SELECT
      *,
      IF(ABS(x) + ABS(y) > ABS(z) AND ABS(y) + ABS(z) > ABS(x) AND ABS(x) + ABS(z) > ABS(y),
       "Yes", "No") AS triangle
      FROM Triangle;
