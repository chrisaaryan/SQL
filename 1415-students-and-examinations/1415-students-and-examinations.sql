# Write your MySQL query statement below
select s.student_id, s.student_name, e.subject_name, count(e.subject_name) as attended_exams
from students s
inner join examinations e on s.student_id = e.student_id
group by student_id, subject_name
union 
select student_id, student_name, subject_name, 0 as attended_exams
from students
cross join subjects
where (student_id,subject_name) not in (select student_id, subject_name from examinations)
order by student_id, subject_name