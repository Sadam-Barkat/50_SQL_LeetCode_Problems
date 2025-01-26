# Write your MySQL query statement below

(SELECT
      name AS results
      FROM Users 
      JOIN MovieRating 
      USING(User_id)
      GROUP BY name
      ORDER BY COUNT(User_id) DESC, name
      LIMIT 1)

UNION ALL

(SELECT  
      title AS results
      FROM Movies
      JOIN MovieRating 
      USING(movie_id)
      WHERE MONTH(created_at) = '02' AND YEAR(created_at) = '2020'
      GROUP BY title
      ORDER BY AVG(rating) DESC, title
      LIMIT 1)
