# Write your MySQL query statement below
WITH cte AS(
    SELECT 
      class, COUNT(student) AS st_count
      FROM Courses
      GROUP BY class
)      
SELECT
      class
      FROM cte
      WHERE st_count >= 5;