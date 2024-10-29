# Write your MySQL query statement below
select name, null as bonus
from employee
where empId not in (select empId from bonus)
union all
select e.name as name, b.bonus as bonus
from employee e
join bonus b on e.empId = b.empId
where b.bonus < 1000