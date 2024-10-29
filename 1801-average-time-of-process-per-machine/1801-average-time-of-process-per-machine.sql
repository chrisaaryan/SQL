# Write your MySQL query statement below
select machine_id, round(avg(t), 3) as processing_time
from(
select machine_id, process_id, activity_type, timestamp, timestamp - lag(timestamp) over(partition by machine_id, process_id order by activity_type) as t
from activity
) as sq
group by machine_id