# Write your MySQL query statement below
WITH cte AS
(SELECT
      (d.name) AS Department,
      (e.name) AS Employee, 
      e.salary,
      DENSE_RANK() OVER (PARTITION BY d.name ORDER BY e.salary DESC) AS Ran
      FROM Employee e
      LEFT JOIN Department d
      ON e.departmentId = d.id
)
SELECT 
      Department, 
      Employee, 
      Salary
      FROM cte
      WHERE ran BETWEEN 1 AND 3;