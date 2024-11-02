# Write your MySQL query statement below
select email as Email from (select email, count(email) as cnt from person group by email) as sq where cnt > 1