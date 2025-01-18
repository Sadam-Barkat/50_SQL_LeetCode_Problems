# Write your MySQL query statement below
SELECT
      ROUND(COUNT(DISTINCT(Player_id)) / (SELECT COUNT(DISTINCT(Player_id)) FROM  Activity), 2) AS fraction
      FROM Activity
      WHERE (Player_id, DATE_SUB(event_date, INTERVAL 1 DAY)) IN 
      (SELECT Player_id, MIN(event_date) FROM Activity GROUP BY Player_id );
