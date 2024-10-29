# Write your MySQL query statement below
select id
from(
select w1.id as id, w1.temperature as t1, w2.temperature as t2
from weather w1
join weather w2 on datediff(w1.recordDate, w2.recordDate) = 1) as sq
where t1>t2