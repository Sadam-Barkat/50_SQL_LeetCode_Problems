# Write your MySQL query statement below
SELECT
      v.customer_id, count(*) as count_no_trans
      FROM Visits v
      LEFT JOIN Transactions t
      ON v.visit_id = t.visit_id
      WHERE v.visit_id not in (SELECT visit_id FROM Transactions)
      GROUP BY v.customer_id;