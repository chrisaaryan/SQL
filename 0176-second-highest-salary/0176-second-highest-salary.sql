# Write your MySQL query statement below
select (select salary from (select *, dense_rank() over(order by salary desc) as rn
from employee) as sq 
where rn = 2
limit 1) as SecondHighestSalary