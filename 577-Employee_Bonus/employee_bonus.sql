# Write your MySQL query statement below
SELECT
      name, bonus
      FROM Employee e
      LEFT JOIN Bonus b
      ON e.empid = b.empid
      WHERE b.bonus < 1000 OR b.bonus is null;
